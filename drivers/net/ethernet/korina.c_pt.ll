; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/korina.c_pt.bc'
source_filename = "../drivers/net/ethernet/korina.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.dma_desc = type { i32, i32, i32, i32 }
%struct.korina_private = type { ptr, ptr, ptr, ptr, ptr, i32, i32, [64 x ptr], [64 x ptr], [64 x i32], [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.spinlock, i32, i32, %struct.napi_struct, %struct.timer_list, %struct.mii_if_info, %struct.work_struct, ptr, ptr, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
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
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.dma_reg = type { i32, i32, i32, i32, i32 }
%struct.eth_regs = type { i32, i32, i32, i32, i32, [4 x i32], i32, i32, [10 x i32], i32, [42 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [50 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.ifreq = type { %union.anon.104, %union.anon.105 }
%union.anon.104 = type { [16 x i8] }
%union.anon.105 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }

@__initcall__kmod_korina__349_1411_korina_driver_init6 = internal global ptr @korina_driver_init, section ".initcall6.init", align 4
@korina_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @korina_probe, ptr @korina_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @korina_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_korina_driver_exit = internal global ptr @korina_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author350 = internal constant [48 x i8] c"korina.author=Philip Rischel <rischelp@idt.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author351 = internal constant [46 x i8] c"korina.author=Felix Fietkau <nbd@openwrt.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author352 = internal constant [53 x i8] c"korina.author=Florian Fainelli <florian@openwrt.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author353 = internal constant [46 x i8] c"korina.author=Roman Yeryomin <roman@advem.lv>\00", section ".modinfo", align 1
@__UNIQUE_ID_description354 = internal constant [56 x i8] c"korina.description=IDT RC32434 (Korina) Ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file355 = internal constant [40 x i8] c"korina.file=drivers/net/ethernet/korina\00", section ".modinfo", align 1
@__UNIQUE_ID_license356 = internal constant [19 x i8] c"korina.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"korina\00", [25 x i8] zeroinitializer }, align 32
@korina_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,3243x-emac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mdioclk\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"emac\00", [27 x i8] zeroinitializer }, align 32
@korina_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 1319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013korina: cannot remap registers\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"korina_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/net/ethernet/korina.c\00", [34 x i8] zeroinitializer }, align 32
@korina_probe._entry_ptr = internal global ptr @korina_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dma_rx\00", [25 x i8] zeroinitializer }, align 32
@korina_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.6, ptr @.str.7, i32 1326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013korina: cannot remap Rx DMA registers\0A\00", [55 x i8] zeroinitializer }, align 32
@korina_probe._entry_ptr.11 = internal global ptr @korina_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dma_tx\00", [25 x i8] zeroinitializer }, align 32
@korina_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.7, i32 1333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013korina: cannot remap Tx DMA registers\0A\00", [55 x i8] zeroinitializer }, align 32
@korina_probe._entry_ptr.15 = internal global ptr @korina_probe._entry.13, section ".printk_index", align 4
@korina_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&lp->lock\00", [22 x i8] zeroinitializer }, align 32
@korina_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @korina_open, ptr @korina_close, ptr @korina_send_packet, ptr null, ptr null, ptr null, ptr @korina_multicast_list, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @korina_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @korina_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @korina_poll_controller, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@netdev_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @netdev_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @netdev_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @netdev_get_link_ksettings, ptr @netdev_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@korina_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.6, ptr @.str.7, i32 1371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013korina: cannot register net device: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@korina_probe._entry_ptr.19 = internal global ptr @korina_probe._entry.17, section ".printk_index", align 4
@korina_probe.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"(&lp->media_check_timer)\00", [39 x i8] zeroinitializer }, align 32
@korina_probe.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&lp->restart_task)\00", [59 x i8] zeroinitializer }, align 32
@korina_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.6, ptr @.str.7, i32 1379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: korina-0.20 15Sep2017\0A\00", [35 x i8] zeroinitializer }, align 32
@korina_probe._entry_ptr.26 = internal global ptr @korina_probe._entry.24, section ".printk_index", align 4
@korina_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.7, i32 1204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: cannot open device\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"korina_open\00", [20 x i8] zeroinitializer }, align 32
@korina_open._entry_ptr = internal global ptr @korina_open._entry, section ".printk_index", align 4
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Korina ethernet Rx\00", [45 x i8] zeroinitializer }, align 32
@korina_open._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.28, ptr @.str.7, i32 1214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: unable to get Rx DMA IRQ %d\0A\00", [61 x i8] zeroinitializer }, align 32
@korina_open._entry_ptr.32 = internal global ptr @korina_open._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Korina ethernet Tx\00", [45 x i8] zeroinitializer }, align 32
@korina_open._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.28, ptr @.str.7, i32 1221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: unable to get Tx DMA IRQ %d\0A\00", [61 x i8] zeroinitializer }, align 32
@korina_open._entry_ptr.36 = internal global ptr @korina_open._entry.34, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@korina_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.7, i32 1082, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: descriptor allocation failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"korina_init\00", [20 x i8] zeroinitializer }, align 32
@korina_init._entry_ptr = internal global ptr @korina_init._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@korina_rx_dma_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.7, i32 586, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013%s: DMA error\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"korina_rx_dma_interrupt\00", [40 x i8] zeroinitializer }, align 32
@korina_rx_dma_interrupt._entry_ptr = internal global ptr @korina_rx_dma_interrupt._entry, section ".printk_index", align 4
@korina_tx_dma_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.43, ptr @.str.7, i32 876, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"korina_tx_dma_interrupt\00", [40 x i8] zeroinitializer }, align 32
@korina_tx_dma_interrupt._entry_ptr = internal global ptr @korina_tx_dma_interrupt._entry, section ".printk_index", align 4
@korina_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.7, i32 787, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: split tx ignored\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"korina_tx\00", [22 x i8] zeroinitializer }, align 32
@korina_tx._entry_ptr = internal global ptr @korina_tx._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0.20\00", [27 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@korina_restart_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.7, i32 1171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: cannot restart device\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"korina_restart_task\00", [44 x i8] zeroinitializer }, align 32
@korina_restart_task._entry_ptr = internal global ptr @korina_restart_task._entry, section ".printk_index", align 4
@___asan_gen_.49 = private unnamed_addr constant [14 x i8] c"korina_driver\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1402, i32 31 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1404, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant [13 x i8] c"korina_match\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1393, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1304, i32 42 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1314, i32 45 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1315, i32 45 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1317, i32 50 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1319, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1324, i32 50 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1326, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1331, i32 50 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1333, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1348, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [18 x i8] c"korina_netdev_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1269, i32 36 }
@___asan_gen_.109 = private unnamed_addr constant [19 x i8] c"netdev_ethtool_ops\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 979, i32 33 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1370, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1374, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1376, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1378, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1204, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1211, i32 7 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1213, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1218, i32 7 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1220, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1082, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 326, i32 6 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 586, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 876, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 786, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 942, i32 25 }
@___asan_gen_.205 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.212 = private constant [33 x i8] c"../drivers/net/ethernet/korina.c\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1171, i32 3 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @__UNIQUE_ID_author350, ptr @__UNIQUE_ID_author351, ptr @__UNIQUE_ID_author352, ptr @__UNIQUE_ID_author353, ptr @__UNIQUE_ID_description354, ptr @__UNIQUE_ID_file355, ptr @__UNIQUE_ID_license356, ptr @__exitcall_korina_driver_exit, ptr @__initcall__kmod_korina__349_1411_korina_driver_init6, ptr @korina_driver_exit, ptr @korina_init._entry, ptr @korina_init._entry_ptr, ptr @korina_open._entry, ptr @korina_open._entry.30, ptr @korina_open._entry.34, ptr @korina_open._entry_ptr, ptr @korina_open._entry_ptr.32, ptr @korina_open._entry_ptr.36, ptr @korina_probe._entry, ptr @korina_probe._entry.13, ptr @korina_probe._entry.17, ptr @korina_probe._entry.24, ptr @korina_probe._entry.9, ptr @korina_probe._entry_ptr, ptr @korina_probe._entry_ptr.11, ptr @korina_probe._entry_ptr.15, ptr @korina_probe._entry_ptr.19, ptr @korina_probe._entry_ptr.26, ptr @korina_restart_task._entry, ptr @korina_restart_task._entry_ptr, ptr @korina_rx_dma_interrupt._entry, ptr @korina_rx_dma_interrupt._entry_ptr, ptr @korina_tx._entry, ptr @korina_tx._entry_ptr, ptr @korina_tx_dma_interrupt._entry, ptr @korina_tx_dma_interrupt._entry_ptr, ptr @korina_driver, ptr @.str, ptr @korina_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @korina_probe.__key, ptr @.str.16, ptr @korina_netdev_ops, ptr @netdev_ethtool_ops, ptr @.str.18, ptr @korina_probe.__key.20, ptr @.str.21, ptr @korina_probe.__key.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @korina_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @korina_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @korina_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @korina_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @korina_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @korina_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @korina_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @korina_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @korina_probe.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @korina_probe.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @korina_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @korina_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @korina_open._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @korina_open._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @korina_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @korina_rx_dma_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @korina_tx_dma_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @korina_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @korina_restart_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @korina_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @korina_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @korina_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @korina_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @korina_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call3 = tail call ptr @devm_alloc_etherdev_mqs(ptr noundef %dev, i32 noundef 1512, i32 noundef 1, i32 noundef 1) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 133, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call3, i32 2304
  %tobool7.not = icmp eq ptr %1, null
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dev_addr_mod(ptr noundef nonnull %call3, i32 noundef 0, ptr noundef nonnull %1, i32 noundef 6) #9
  br label %if.end13

if.else:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call10 = tail call i32 @of_get_ethdev_address(ptr noundef %4, ptr noundef nonnull %call3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.then11, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #9
  %5 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #9
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %addr.i, align 1
  %8 = and i8 %7, -4
  %9 = or i8 %8, 2
  store i8 %9, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef nonnull %call3, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #9
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 55
  %10 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.else.if.end13_crit_edge, %if.then8
  %call15 = call ptr @devm_clk_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %tobool20.not = icmp eq ptr %call15, null
  br i1 %tobool20.not, label %if.end19.if.end26_crit_edge, label %if.then21

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then21:                                        ; preds = %if.end19
  %call.i = call i32 @clk_prepare(ptr noundef nonnull %call15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then21.clk_prepare_enable.exit_crit_edge

if.then21.clk_prepare_enable.exit_crit_edge:      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.then21
  %call1.i = call i32 @clk_enable(ptr noundef nonnull %call15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @clk_unprepare(ptr noundef nonnull %call15) #9
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.then21.clk_prepare_enable.exit_crit_edge
  %call23 = call i32 @clk_get_rate(ptr noundef nonnull %call15) #9
  br label %if.end26

if.end26:                                         ; preds = %clk_prepare_enable.exit, %if.end19.if.end26_crit_edge
  %.sink = phi i32 [ %call23, %clk_prepare_enable.exit ], [ 200000000, %if.end19.if.end26_crit_edge ]
  %mii_clock_freq25 = getelementptr i8, ptr %call3, i32 3812
  %12 = ptrtoint ptr %mii_clock_freq25 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %mii_clock_freq25, align 4
  %call27 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.2) #9
  %rx_irq = getelementptr i8, ptr %call3, i32 3396
  %13 = ptrtoint ptr %rx_irq to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call27, ptr %rx_irq, align 4
  %call28 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.3) #9
  %tx_irq = getelementptr i8, ptr %call3, i32 3400
  %14 = ptrtoint ptr %tx_irq to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call28, ptr %tx_irq, align 8
  %call29 = call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.4) #9
  %cmp.i183 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i183, label %do.end, label %if.end34

do.end:                                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  %15 = ptrtoint ptr %call29 to i32
  br label %cleanup

if.end34:                                         ; preds = %if.end26
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call29, ptr %add.ptr.i, align 8
  %call35 = call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.8) #9
  %cmp.i184 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i184, label %do.end40, label %if.end44

do.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #12
  %17 = ptrtoint ptr %call35 to i32
  br label %cleanup

if.end44:                                         ; preds = %if.end34
  %rx_dma_regs = getelementptr i8, ptr %call3, i32 2308
  %18 = ptrtoint ptr %rx_dma_regs to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call35, ptr %rx_dma_regs, align 4
  %call45 = call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.12) #9
  %cmp.i185 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i185, label %do.end50, label %if.end54

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #12
  %19 = ptrtoint ptr %call45 to i32
  br label %cleanup

if.end54:                                         ; preds = %if.end44
  %tx_dma_regs = getelementptr i8, ptr %call3, i32 2312
  %20 = ptrtoint ptr %tx_dma_regs to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call45, ptr %tx_dma_regs, align 8
  %td_dma = getelementptr i8, ptr %call3, i32 2324
  %call.i186 = call ptr @dmam_alloc_attrs(ptr noundef %dev, i32 noundef 1024, ptr noundef %td_dma, i32 noundef 3264, i32 noundef 0) #9
  %td_ring = getelementptr i8, ptr %call3, i32 2316
  %21 = ptrtoint ptr %td_ring to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i186, ptr %td_ring, align 4
  %tobool58.not = icmp eq ptr %call.i186, null
  br i1 %tobool58.not, label %if.end54.cleanup_crit_edge, label %if.end60

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end60:                                         ; preds = %if.end54
  %rd_dma = getelementptr i8, ptr %call3, i32 2328
  %call.i187 = call ptr @dmam_alloc_attrs(ptr noundef %dev, i32 noundef 1024, ptr noundef %rd_dma, i32 noundef 3264, i32 noundef 0) #9
  %rd_ring = getelementptr i8, ptr %call3, i32 2320
  %22 = ptrtoint ptr %rd_ring to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i187, ptr %rd_ring, align 8
  %tobool64.not = icmp eq ptr %call.i187, null
  br i1 %tobool64.not, label %if.end60.cleanup_crit_edge, label %do.body67

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body67:                                        ; preds = %if.end60
  %lock = getelementptr i8, ptr %call3, i32 3404
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @korina_probe.__key, i16 noundef signext 3) #9
  %23 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_irq, align 4
  %irq = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 64
  %25 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %irq, align 4
  %dev72 = getelementptr i8, ptr %call3, i32 3804
  %26 = ptrtoint ptr %dev72 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call3, ptr %dev72, align 4
  %dmadev = getelementptr i8, ptr %call3, i32 3808
  %27 = ptrtoint ptr %dmadev to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dev, ptr %dmadev, align 8
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 16
  %28 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @korina_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 44
  %29 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @netdev_ethtool_ops, ptr %ethtool_ops, align 16
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 115
  %30 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 600, ptr %watchdog_timeo, align 4
  %napi = getelementptr i8, ptr %call3, i32 3456
  call void @netif_napi_add(ptr noundef nonnull %call3, ptr noundef %napi, ptr noundef nonnull @korina_poll, i32 noundef 64) #9
  %mii_if = getelementptr i8, ptr %call3, i32 3728
  %dev74 = getelementptr i8, ptr %call3, i32 3748
  %31 = ptrtoint ptr %dev74 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call3, ptr %dev74, align 4
  %mdio_read = getelementptr i8, ptr %call3, i32 3752
  %32 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @korina_mdio_read, ptr %mdio_read, align 8
  %mdio_write = getelementptr i8, ptr %call3, i32 3756
  %33 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @korina_mdio_write, ptr %mdio_write, align 4
  %34 = ptrtoint ptr %mii_if to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %mii_if, align 8
  %phy_id_mask = getelementptr i8, ptr %call3, i32 3736
  %35 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 31, ptr %phy_id_mask, align 8
  %reg_num_mask = getelementptr i8, ptr %call3, i32 3740
  %36 = ptrtoint ptr %reg_num_mask to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 31, ptr %reg_num_mask, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %37 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call3, ptr %driver_data.i.i, align 4
  %call80 = call i32 @register_netdev(ptr noundef nonnull %call3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %do.end85, label %do.body89

do.end85:                                         ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #11
  %call87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %call80) #12
  br label %cleanup

do.body89:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #11
  %media_check_timer = getelementptr i8, ptr %call3, i32 3680
  call void @init_timer_key(ptr noundef %media_check_timer, ptr noundef nonnull @korina_poll_media, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @korina_probe.__key.20) #9
  %restart_task = getelementptr i8, ptr %call3, i32 3760
  call void @__init_work(ptr noundef %restart_task, i32 noundef 0) #9
  %38 = ptrtoint ptr %restart_task to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -64, ptr %restart_task, align 8
  %lockdep_map = getelementptr i8, ptr %call3, i32 3776
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.23, ptr noundef nonnull @korina_probe.__key.22, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry96 = getelementptr i8, ptr %call3, i32 3764
  %39 = ptrtoint ptr %entry96 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %entry96, ptr %entry96, align 4
  %prev.i = getelementptr i8, ptr %call3, i32 3768
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %entry96, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call3, i32 3772
  %41 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @korina_restart_task, ptr %func, align 4
  %call104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull %call3) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body89, %do.end85, %if.end60.cleanup_crit_edge, %if.end54.cleanup_crit_edge, %do.end50, %do.end40, %do.end, %if.then17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.then17 ], [ %15, %do.end ], [ %17, %do.end40 ], [ %19, %do.end50 ], [ %call80, %do.end85 ], [ %call80, %do.body89 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end54.cleanup_crit_edge ], [ -12, %if.end60.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @korina_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_netdev(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_alloc_etherdev_mqs(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @korina_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %napi, i32 348
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %rd_ring.i = getelementptr i8, ptr %1, i32 2320
  %2 = ptrtoint ptr %rd_ring.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rd_ring.i, align 8
  %rx_next_done.i = getelementptr i8, ptr %1, i32 3356
  %4 = ptrtoint ptr %rx_next_done.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_next_done.i, align 4
  %arrayidx.i = getelementptr %struct.dma_desc, ptr %3, i32 %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp214.i = icmp sgt i32 %budget, 0
  br i1 %cmp214.i, label %for.body.lr.ph.i, label %entry.for.end.i_crit_edge

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %dmadev.i = getelementptr i8, ptr %1, i32 3808
  %napi.i = getelementptr i8, ptr %1, i32 3456
  %stats63.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %multicast.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 8
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  %rx_crc_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 12
  %rx_length_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 10
  %rx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 14
  %rx_frame_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 13
  %rx_dma_regs.i = getelementptr i8, ptr %1, i32 2308
  br label %for.body.i

for.body.i:                                       ; preds = %next.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %rd.0217.i = phi ptr [ %arrayidx.i, %for.body.lr.ph.i ], [ %arrayidx97.i, %next.i.for.body.i_crit_edge ]
  %count.0215.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc99.i, %next.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %rx_next_done.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_next_done.i, align 4
  %arrayidx2.i = getelementptr %struct.korina_private, ptr %add.ptr.i.i, i32 0, i32 8, i32 %7
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2.i, align 4
  %devcs3.i = getelementptr inbounds %struct.dma_desc, ptr %rd.0217.i, i32 0, i32 2
  %10 = ptrtoint ptr %devcs3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %devcs3.i, align 4
  %12 = ptrtoint ptr %rd.0217.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rd.0217.i, align 4
  %and.i = and i32 %13, 262143
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %and.i)
  %cmp4.i = icmp eq i32 %and.i, 1536
  br i1 %cmp4.i, label %for.body.i.for.end.i_crit_edge, label %if.end.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end.i:                                         ; preds = %for.body.i
  %and5.i = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool.not.i, label %if.end.i.next.i_crit_edge, label %if.end7.i

if.end.i.next.i_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %next.i

if.end7.i:                                        ; preds = %if.end.i
  %and8.i = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %if.end44.i

if.then10.i:                                      ; preds = %if.end7.i
  %14 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_errors.i, align 8
  %inc.i = add i32 %15, 1
  store i32 %inc.i, ptr %rx_errors.i, align 8
  %16 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_dropped.i, align 8
  %inc12.i = add i32 %17, 1
  store i32 %inc12.i, ptr %rx_dropped.i, align 8
  %and13.i = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.then10.i.if.end18.i_crit_edge, label %if.then15.i

if.then10.i.if.end18.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

if.then15.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %rx_crc_errors.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_crc_errors.i, align 8
  %inc17.i = add i32 %19, 1
  store i32 %inc17.i, ptr %rx_crc_errors.i, align 8
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then15.i, %if.then10.i.if.end18.i_crit_edge
  %and19.i = and i32 %11, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.end18.i.if.end24.i_crit_edge, label %if.then21.i

if.end18.i.if.end24.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %rx_length_errors.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_length_errors.i, align 8
  %inc23.i = add i32 %21, 1
  store i32 %inc23.i, ptr %rx_length_errors.i, align 8
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then21.i, %if.end18.i.if.end24.i_crit_edge
  %and25.i = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.end24.i.if.end30.i_crit_edge, label %if.then27.i

if.end24.i.if.end30.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.i

if.then27.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %rx_fifo_errors.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_fifo_errors.i, align 8
  %inc29.i = add i32 %23, 1
  store i32 %inc29.i, ptr %rx_fifo_errors.i, align 8
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then27.i, %if.end24.i.if.end30.i_crit_edge
  %and31.i = and i32 %11, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %if.end30.i.if.end36.i_crit_edge, label %if.then33.i

if.end30.i.if.end36.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i

if.then33.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %rx_frame_errors.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_frame_errors.i, align 4
  %inc35.i = add i32 %25, 1
  store i32 %inc35.i, ptr %rx_frame_errors.i, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then33.i, %if.end30.i.if.end36.i_crit_edge
  %and37.i = and i32 %11, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  br i1 %tobool38.not.i, label %if.end36.i.next.i_crit_edge, label %if.then39.i

if.end36.i.next.i_crit_edge:                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %next.i

if.then39.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %rx_frame_errors.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_frame_errors.i, align 4
  %inc42.i = add i32 %27, 1
  store i32 %inc42.i, ptr %rx_frame_errors.i, align 4
  br label %next.i

if.end44.i:                                       ; preds = %if.end7.i
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef 1538, i32 noundef 2592) #9
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end44.i.for.end.i_crit_edge, label %if.end48.i

if.end44.i.for.end.i_crit_edge:                   ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end48.i:                                       ; preds = %if.end44.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %28 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %29, i32 2
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %30 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %31, i32 2
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %32 = ptrtoint ptr %dmadev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dmadev.i, align 8
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i.i.i.i) #9
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.end48.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !125

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %33) #9
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i193.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i193.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %33, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %37, %if.end.i.i.i ], [ %35, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.40, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #9
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  %38 = ptrtoint ptr %dmadev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dmadev.i, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %39, i32 noundef -1) #9
  br label %if.then53.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end48.i
  tail call void @debug_dma_map_single(ptr noundef %33, ptr noundef %add.ptr.i.i.i.i, i32 noundef 1536) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %40 = load ptr, ptr @mem_map, align 4
  %41 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.i.i = add i32 %41, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i194.i = getelementptr %struct.page, ptr %40, i32 %shr.i.i
  %and.i.i = and i32 %41, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %33, ptr noundef %add.ptr.i194.i, i32 noundef %and.i.i, i32 noundef 1536, i32 noundef 2, i32 noundef 0) #9
  %42 = ptrtoint ptr %dmadev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dmadev.i, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %43, i32 noundef %call41.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.if.then53.i_crit_edge, label %if.end54.i

dma_map_single_attrs.exit.i.if.then53.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53.i

if.then53.i:                                      ; preds = %dma_map_single_attrs.exit.i.if.then53.i_crit_edge, %dma_map_single_attrs.exit.thread.i
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i.i, i32 noundef 1) #9
  br label %for.end.i

if.end54.i:                                       ; preds = %dma_map_single_attrs.exit.i
  %shr.i = lshr i32 %11, 16
  %44 = ptrtoint ptr %dmadev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dmadev.i, align 8
  %46 = ptrtoint ptr %rx_next_done.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx_next_done.i, align 4
  %arrayidx58.i = getelementptr %struct.korina_private, ptr %add.ptr.i.i, i32 0, i32 9, i32 %47
  %48 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx58.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %45, i32 noundef %49, i32 noundef %shr.i, i32 noundef 2, i32 noundef 0) #9
  %sub59.i = add nsw i32 %shr.i, -4
  %call60.i = tail call ptr @skb_put(ptr noundef %9, i32 noundef %sub59.i) #9
  %call61.i = tail call zeroext i16 @eth_type_trans(ptr noundef %9, ptr noundef %1) #9
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 15, i32 0, i32 18
  %50 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %call61.i, ptr %protocol.i, align 8
  %call62.i = tail call i32 @napi_gro_receive(ptr noundef %napi.i, ptr noundef %9) #9
  %51 = ptrtoint ptr %stats63.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %stats63.i, align 8
  %inc64.i = add i32 %52, 1
  store i32 %inc64.i, ptr %stats63.i, align 8
  %53 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_bytes.i, align 8
  %add.i = add i32 %54, %shr.i
  store i32 %add.i, ptr %rx_bytes.i, align 8
  %and66.i = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.i)
  %tobool67.not.i = icmp eq i32 %and66.i, 0
  br i1 %tobool67.not.i, label %if.end54.i.if.end71.i_crit_edge, label %if.then68.i

if.end54.i.if.end71.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71.i

if.then68.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %multicast.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %multicast.i, align 8
  %inc70.i = add i32 %56, 1
  store i32 %inc70.i, ptr %multicast.i, align 8
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.then68.i, %if.end54.i.if.end71.i_crit_edge
  %57 = ptrtoint ptr %rx_next_done.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rx_next_done.i, align 4
  %arrayidx74.i = getelementptr %struct.korina_private, ptr %add.ptr.i.i, i32 0, i32 8, i32 %58
  %59 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i.i.i, ptr %arrayidx74.i, align 4
  %60 = load i32, ptr %rx_next_done.i, align 4
  %arrayidx77.i = getelementptr %struct.korina_private, ptr %add.ptr.i.i, i32 0, i32 9, i32 %60
  %61 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %call41.i.i, ptr %arrayidx77.i, align 4
  br label %next.i

next.i:                                           ; preds = %if.end71.i, %if.then39.i, %if.end36.i.next.i_crit_edge, %if.end.i.next.i_crit_edge
  %62 = ptrtoint ptr %devcs3.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %devcs3.i, align 4
  %63 = ptrtoint ptr %rx_next_done.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rx_next_done.i, align 4
  %arrayidx81.i = getelementptr %struct.korina_private, ptr %add.ptr.i.i, i32 0, i32 9, i32 %64
  %65 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx81.i, align 4
  %ca82.i = getelementptr inbounds %struct.dma_desc, ptr %rd.0217.i, i32 0, i32 1
  %67 = ptrtoint ptr %ca82.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %ca82.i, align 4
  %68 = ptrtoint ptr %rd.0217.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 335545856, ptr %rd.0217.i, align 4
  %69 = ptrtoint ptr %rd_ring.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rd_ring.i, align 8
  %71 = load i32, ptr %rx_next_done.i, align 4
  %sub86.i = add i32 %71, 63
  %and87.i = and i32 %sub86.i, 63
  %arrayidx88.i = getelementptr %struct.dma_desc, ptr %70, i32 %and87.i
  %72 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx88.i, align 4
  %and90.i = and i32 %73, -67108865
  store i32 %and90.i, ptr %arrayidx88.i, align 4
  %74 = load i32, ptr %rx_next_done.i, align 4
  %add92.i = add i32 %74, 1
  %and93.i = and i32 %add92.i, 63
  store i32 %and93.i, ptr %rx_next_done.i, align 4
  %75 = load ptr, ptr %rd_ring.i, align 8
  %arrayidx97.i = getelementptr %struct.dma_desc, ptr %75, i32 %and93.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !126
  tail call void @arm_heavy_mb() #9
  %76 = ptrtoint ptr %rx_dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rx_dma_regs.i, align 4
  %dmas98.i = getelementptr inbounds %struct.dma_reg, ptr %77, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmas98.i, i32 -33554433) #9, !srcloc !127
  %inc99.i = add nuw nsw i32 %count.0215.i, 1
  %exitcond.not.i = icmp eq i32 %inc99.i, %budget
  br i1 %exitcond.not.i, label %next.i.for.end.i_crit_edge, label %next.i.for.body.i_crit_edge

next.i.for.body.i_crit_edge:                      ; preds = %next.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

next.i.for.end.i_crit_edge:                       ; preds = %next.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %next.i.for.end.i_crit_edge, %if.then53.i, %if.end44.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %count.0208.i = phi i32 [ %count.0215.i, %if.then53.i ], [ 0, %entry.for.end.i_crit_edge ], [ %count.0215.i, %if.end44.i.for.end.i_crit_edge ], [ %count.0215.i, %for.body.i.for.end.i_crit_edge ], [ %budget, %next.i.for.end.i_crit_edge ]
  %rd.0204.i = phi ptr [ %rd.0217.i, %if.then53.i ], [ %arrayidx.i, %entry.for.end.i_crit_edge ], [ %rd.0217.i, %if.end44.i.for.end.i_crit_edge ], [ %rd.0217.i, %for.body.i.for.end.i_crit_edge ], [ %arrayidx97.i, %next.i.for.end.i_crit_edge ]
  %rx_dma_regs100.i = getelementptr i8, ptr %1, i32 2308
  %78 = ptrtoint ptr %rx_dma_regs100.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rx_dma_regs100.i, align 4
  %dmas101.i = getelementptr inbounds %struct.dma_reg, ptr %79, i32 0, i32 1
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmas101.i) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !129
  %81 = and i32 %80, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool105.not.i = icmp eq i32 %81, 0
  br i1 %tobool105.not.i, label %for.end.i.korina_rx.exit_crit_edge, label %do.body107.i

for.end.i.korina_rx.exit_crit_edge:               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %korina_rx.exit

do.body107.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !130
  tail call void @arm_heavy_mb() #9
  %82 = ptrtoint ptr %rx_dma_regs100.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rx_dma_regs100.i, align 4
  %dmas111.i = getelementptr inbounds %struct.dma_reg, ptr %83, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmas111.i, i32 -402653185) #9, !srcloc !127
  %dma_halt_cnt.i = getelementptr i8, ptr %1, i32 3448
  %84 = ptrtoint ptr %dma_halt_cnt.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dma_halt_cnt.i, align 8
  %inc112.i = add i32 %85, 1
  store i32 %inc112.i, ptr %dma_halt_cnt.i, align 8
  %devcs113.i = getelementptr inbounds %struct.dma_desc, ptr %rd.0204.i, i32 0, i32 2
  %86 = ptrtoint ptr %devcs113.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %devcs113.i, align 4
  %87 = ptrtoint ptr %rx_next_done.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %rx_next_done.i, align 4
  %arrayidx116.i = getelementptr %struct.korina_private, ptr %add.ptr.i.i, i32 0, i32 9, i32 %88
  %89 = ptrtoint ptr %arrayidx116.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx116.i, align 4
  %ca117.i = getelementptr inbounds %struct.dma_desc, ptr %rd.0204.i, i32 0, i32 1
  %91 = ptrtoint ptr %ca117.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %ca117.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !131
  tail call void @arm_heavy_mb() #9
  %92 = ptrtoint ptr %rd_ring.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rd_ring.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %rd.0204.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %93 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %rd_dma.i.i = getelementptr i8, ptr %1, i32 2328
  %94 = ptrtoint ptr %rd_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rd_dma.i.i, align 8
  %add.i.i = add i32 %sub.ptr.sub.i, %95
  %96 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #9
  %97 = ptrtoint ptr %rx_dma_regs100.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rx_dma_regs100.i, align 4
  %dmandptr.i = getelementptr inbounds %struct.dma_reg, ptr %98, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmandptr.i, i32 %96) #9, !srcloc !127
  br label %korina_rx.exit

korina_rx.exit:                                   ; preds = %do.body107.i, %for.end.i.korina_rx.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0208.i, i32 %budget)
  %cmp = icmp slt i32 %count.0208.i, %budget
  br i1 %cmp, label %if.then, label %korina_rx.exit.if.end_crit_edge

korina_rx.exit.if.end_crit_edge:                  ; preds = %korina_rx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %korina_rx.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %count.0208.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !132
  tail call void @arm_heavy_mb() #9
  %rx_dma_regs = getelementptr i8, ptr %napi, i32 -1148
  %99 = ptrtoint ptr %rx_dma_regs to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rx_dma_regs, align 4
  %dmasm = getelementptr inbounds %struct.dma_reg, ptr %100, i32 0, i32 2
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmasm) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  %102 = and i32 %101, -436207617
  %103 = ptrtoint ptr %rx_dma_regs to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rx_dma_regs, align 4
  %dmasm7 = getelementptr inbounds %struct.dma_reg, ptr %104, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmasm7, i32 %102) #9, !srcloc !127
  br label %if.end

if.end:                                           ; preds = %if.then, %korina_rx.exit.if.end_crit_edge
  ret i32 %count.0208.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @korina_mdio_read(ptr nocapture noundef readonly %dev, i32 noundef %phy, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call.i = tail call i64 @ktime_get() #9
  %add.i.i = add i64 %call.i, 1000000
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %miimind34.i = getelementptr inbounds %struct.eth_regs, ptr %1, i32 0, i32 39
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %miimind34.i) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not36.i = icmp eq i32 %3, 0
  br i1 %tobool.not36.i, label %entry.land.lhs.true.i_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call5.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call5.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call5.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %cond.false.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #9
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  %miimind.i = getelementptr inbounds %struct.eth_regs, ptr %6, i32 0, i32 39
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %miimind.i) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  %8 = and i32 %7, 16777216
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %cond.false.i.land.lhs.true.i_crit_edge, label %cond.false.i.do.body_crit_edge

cond.false.i.do.body_crit_edge:                   ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %miimind11.i = getelementptr inbounds %struct.eth_regs, ptr %10, i32 0, i32 39
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %miimind11.i) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !135
  %12 = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool25.not.i = icmp eq i32 %12, 0
  br i1 %tobool25.not.i, label %for.end.i.cleanup_crit_edge, label %for.end.i.do.body_crit_edge

for.end.i.do.body_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %for.end.i.do.body_crit_edge, %cond.false.i.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !136
  tail call void @arm_heavy_mb() #9
  %shl = shl i32 %phy, 8
  %or = or i32 %shl, %reg
  %13 = tail call i32 @llvm.bswap.i32(i32 %or)
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 8
  %miimaddr = getelementptr inbounds %struct.eth_regs, ptr %15, i32 0, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %miimaddr, i32 %13) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !137
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 8
  %miimcmd = getelementptr inbounds %struct.eth_regs, ptr %17, i32 0, i32 35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %miimcmd, i32 16777216) #9, !srcloc !127
  %call.i37 = tail call i64 @ktime_get() #9
  %add.i.i38 = add i64 %call.i37, 1000000
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 8
  %miimind34.i39 = getelementptr inbounds %struct.eth_regs, ptr %19, i32 0, i32 39
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %miimind34.i39) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  %21 = and i32 %20, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not36.i40 = icmp eq i32 %21, 0
  br i1 %tobool.not36.i40, label %do.body.land.lhs.true.i43_crit_edge, label %do.body.if.end9_crit_edge

do.body.if.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

do.body.land.lhs.true.i43_crit_edge:              ; preds = %do.body
  br label %land.lhs.true.i43

land.lhs.true.i43:                                ; preds = %cond.false.i46.land.lhs.true.i43_crit_edge, %do.body.land.lhs.true.i43_crit_edge
  %call5.i41 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call5.i41, i64 %add.i.i38)
  %cmp3.i.i42 = icmp sgt i64 %call5.i41, %add.i.i38
  br i1 %cmp3.i.i42, label %for.end.i50, label %cond.false.i46

cond.false.i46:                                   ; preds = %land.lhs.true.i43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748) #9
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 8
  %miimind.i44 = getelementptr inbounds %struct.eth_regs, ptr %24, i32 0, i32 39
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %miimind.i44) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  %26 = and i32 %25, 16777216
  %tobool.not.i45 = icmp eq i32 %26, 0
  br i1 %tobool.not.i45, label %cond.false.i46.land.lhs.true.i43_crit_edge, label %cond.false.i46.if.end9_crit_edge

cond.false.i46.if.end9_crit_edge:                 ; preds = %cond.false.i46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

cond.false.i46.land.lhs.true.i43_crit_edge:       ; preds = %cond.false.i46
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i43

for.end.i50:                                      ; preds = %land.lhs.true.i43
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 8
  %miimind11.i47 = getelementptr inbounds %struct.eth_regs, ptr %28, i32 0, i32 39
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %miimind11.i47) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !135
  %30 = and i32 %29, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool25.not.i48 = icmp eq i32 %30, 0
  br i1 %tobool25.not.i48, label %for.end.i50.cleanup_crit_edge, label %for.end.i50.if.end9_crit_edge

for.end.i50.if.end9_crit_edge:                    ; preds = %for.end.i50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

for.end.i50.cleanup_crit_edge:                    ; preds = %for.end.i50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %for.end.i50.if.end9_crit_edge, %cond.false.i46.if.end9_crit_edge, %do.body.if.end9_crit_edge
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr.i, align 8
  %miimind = getelementptr inbounds %struct.eth_regs, ptr %32, i32 0, i32 39
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %miimind) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !138
  %34 = and i32 %33, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not = icmp eq i32 %34, 0
  br i1 %tobool.not, label %if.end14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr.i, align 8
  %miimrdd = getelementptr inbounds %struct.eth_regs, ptr %36, i32 0, i32 38
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %miimrdd) #9, !srcloc !128
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !140
  tail call void @arm_heavy_mb() #9
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr.i, align 8
  %miimcmd25 = getelementptr inbounds %struct.eth_regs, ptr %40, i32 0, i32 35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %miimcmd25, i32 0) #9, !srcloc !127
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end9.cleanup_crit_edge, %for.end.i50.cleanup_crit_edge, %for.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %38, %if.end14 ], [ -22, %if.end9.cleanup_crit_edge ], [ -110, %for.end.i.cleanup_crit_edge ], [ -110, %for.end.i50.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @korina_mdio_write(ptr nocapture noundef readonly %dev, i32 noundef %phy, i32 noundef %reg, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call.i = tail call i64 @ktime_get() #9
  %add.i.i = add i64 %call.i, 1000000
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %miimind34.i = getelementptr inbounds %struct.eth_regs, ptr %1, i32 0, i32 39
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %miimind34.i) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not36.i = icmp eq i32 %3, 0
  br i1 %tobool.not36.i, label %entry.land.lhs.true.i_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call5.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call5.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call5.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %cond.false.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #9
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  %miimind.i = getelementptr inbounds %struct.eth_regs, ptr %6, i32 0, i32 39
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %miimind.i) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  %8 = and i32 %7, 16777216
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %cond.false.i.land.lhs.true.i_crit_edge, label %cond.false.i.do.body_crit_edge

cond.false.i.do.body_crit_edge:                   ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %miimind11.i = getelementptr inbounds %struct.eth_regs, ptr %10, i32 0, i32 39
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %miimind11.i) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !135
  %12 = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool25.not.i = icmp eq i32 %12, 0
  br i1 %tobool25.not.i, label %for.end.i.cleanup_crit_edge, label %for.end.i.do.body_crit_edge

for.end.i.do.body_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %for.end.i.do.body_crit_edge, %cond.false.i.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !141
  tail call void @arm_heavy_mb() #9
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 8
  %miimcmd = getelementptr inbounds %struct.eth_regs, ptr %14, i32 0, i32 35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %miimcmd, i32 0) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !142
  tail call void @arm_heavy_mb() #9
  %shl = shl i32 %phy, 8
  %or = or i32 %shl, %reg
  %15 = tail call i32 @llvm.bswap.i32(i32 %or)
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 8
  %miimaddr = getelementptr inbounds %struct.eth_regs, ptr %17, i32 0, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %miimaddr, i32 %15) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !143
  tail call void @arm_heavy_mb() #9
  %18 = tail call i32 @llvm.bswap.i32(i32 %val)
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 8
  %miimwtd = getelementptr inbounds %struct.eth_regs, ptr %20, i32 0, i32 37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %miimwtd, i32 %18) #9, !srcloc !127
  br label %cleanup

cleanup:                                          ; preds = %do.body, %for.end.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @korina_poll_media(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %t, i32 124
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %mii_if.i = getelementptr i8, ptr %1, i32 3728
  %call1.i = tail call i32 @mii_check_media(ptr noundef %mii_if.i, i32 noundef 1, i32 noundef 0) #9
  %full_duplex.i = getelementptr i8, ptr %1, i32 3744
  %2 = ptrtoint ptr %full_duplex.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %full_duplex.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 8
  %ethmac213.i = getelementptr inbounds %struct.eth_regs, ptr %4, i32 0, i32 27
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ethmac213.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  br i1 %tobool.not.i, label %do.body7.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = or i32 %5, 16777216
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i.i, align 8
  %ethmac26.i = getelementptr inbounds %struct.eth_regs, ptr %8, i32 0, i32 27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ethmac26.i, i32 %6) #9, !srcloc !127
  br label %korina_check_media.exit

do.body7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %9 = and i32 %5, -16777217
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i.i, align 8
  %ethmac218.i = getelementptr inbounds %struct.eth_regs, ptr %11, i32 0, i32 27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ethmac218.i, i32 %9) #9, !srcloc !127
  br label %korina_check_media.exit

korina_check_media.exit:                          ; preds = %do.body7.i, %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %12, 100
  %call = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @korina_restart_task(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %rx_irq = getelementptr i8, ptr %work, i32 -364
  %2 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_irq, align 4
  tail call void @disable_irq(i32 noundef %3) #9
  %tx_irq = getelementptr i8, ptr %work, i32 -360
  %4 = ptrtoint ptr %tx_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_irq, align 8
  tail call void @disable_irq(i32 noundef %5) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %tx_dma_regs = getelementptr i8, ptr %work, i32 -1448
  %6 = ptrtoint ptr %tx_dma_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_dma_regs, align 8
  %dmasm = getelementptr inbounds %struct.dma_reg, ptr %7, i32 0, i32 2
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmasm) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !145
  %9 = or i32 %8, 150994944
  %10 = ptrtoint ptr %tx_dma_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_dma_regs, align 8
  %dmasm6 = getelementptr inbounds %struct.dma_reg, ptr %11, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmasm6, i32 %9) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  tail call void @arm_heavy_mb() #9
  %rx_dma_regs = getelementptr i8, ptr %work, i32 -1452
  %12 = ptrtoint ptr %rx_dma_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_dma_regs, align 4
  %dmasm12 = getelementptr inbounds %struct.dma_reg, ptr %13, i32 0, i32 2
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmasm12) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  %15 = or i32 %14, 436207616
  %16 = ptrtoint ptr %rx_dma_regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_dma_regs, align 4
  %dmasm20 = getelementptr inbounds %struct.dma_reg, ptr %17, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmasm20, i32 %15) #9, !srcloc !127
  %napi = getelementptr i8, ptr %work, i32 -304
  tail call void @napi_disable(ptr noundef %napi) #9
  tail call fastcc void @korina_free_ring(ptr noundef %1)
  %call21 = tail call fastcc i32 @korina_init(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %do.end24, label %if.end

do.end24:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @korina_multicast_list(ptr noundef %1)
  %18 = ptrtoint ptr %tx_irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_irq, align 8
  tail call void @enable_irq(i32 noundef %19) #9
  %20 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_irq, align 4
  tail call void @enable_irq(i32 noundef %21) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end24
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @korina_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call fastcc i32 @korina_init(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %dev) #12
  br label %out

if.end:                                           ; preds = %entry
  %rx_irq = getelementptr i8, ptr %dev, i32 3396
  %0 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %1, ptr noundef nonnull @korina_rx_dma_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.29, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4 = icmp slt i32 %call.i, 0
  br i1 %cmp4, label %do.end8, label %if.end14

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_irq, align 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %dev, i32 noundef %3) #12
  br label %err_release

if.end14:                                         ; preds = %if.end
  %tx_irq = getelementptr i8, ptr %dev, i32 3400
  %4 = ptrtoint ptr %tx_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_irq, align 8
  %call.i46 = tail call i32 @request_threaded_irq(i32 noundef %5, ptr noundef nonnull @korina_tx_dma_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.33, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %cmp16 = icmp slt i32 %call.i46, 0
  br i1 %cmp16, label %do.end20, label %if.end26

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %tx_irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_irq, align 8
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %dev, i32 noundef %7) #12
  %8 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_irq, align 4
  %call29 = tail call ptr @free_irq(i32 noundef %9, ptr noundef %dev) #9
  br label %err_release

if.end26:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %media_check_timer = getelementptr i8, ptr %dev, i32 3680
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %10, 1
  %call27 = tail call i32 @mod_timer(ptr noundef %media_check_timer, i32 noundef %add) #9
  br label %out

out:                                              ; preds = %err_release, %if.end26, %do.end
  %ret.0 = phi i32 [ %call1, %do.end ], [ %ret.1, %err_release ], [ %call.i46, %if.end26 ]
  ret i32 %ret.0

err_release:                                      ; preds = %do.end20, %do.end8
  %ret.1 = phi i32 [ %call.i, %do.end8 ], [ %call.i46, %do.end20 ]
  tail call fastcc void @korina_free_ring(ptr noundef %dev)
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @korina_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %media_check_timer = getelementptr i8, ptr %dev, i32 3680
  %call1 = tail call i32 @del_timer(ptr noundef %media_check_timer) #9
  %rx_irq = getelementptr i8, ptr %dev, i32 3396
  %0 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_irq, align 4
  tail call void @disable_irq(i32 noundef %1) #9
  %tx_irq = getelementptr i8, ptr %dev, i32 3400
  %2 = ptrtoint ptr %tx_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_irq, align 8
  tail call void @disable_irq(i32 noundef %3) #9
  tail call fastcc void @korina_abort_tx(ptr noundef %dev)
  %tx_dma_regs = getelementptr i8, ptr %dev, i32 2312
  %4 = ptrtoint ptr %tx_dma_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_dma_regs, align 8
  %dmasm = getelementptr inbounds %struct.dma_reg, ptr %5, i32 0, i32 2
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmasm) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !148
  %7 = or i32 %6, 150994944
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !149
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %tx_dma_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_dma_regs, align 8
  %dmasm7 = getelementptr inbounds %struct.dma_reg, ptr %9, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmasm7, i32 %7) #9, !srcloc !127
  tail call fastcc void @korina_abort_rx(ptr noundef %dev)
  %rx_dma_regs = getelementptr i8, ptr %dev, i32 2308
  %10 = ptrtoint ptr %rx_dma_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_dma_regs, align 4
  %dmasm10 = getelementptr inbounds %struct.dma_reg, ptr %11, i32 0, i32 2
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmasm10) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  %13 = or i32 %12, 436207616
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !151
  tail call void @arm_heavy_mb() #9
  %14 = ptrtoint ptr %rx_dma_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_dma_regs, align 4
  %dmasm21 = getelementptr inbounds %struct.dma_reg, ptr %15, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmasm21, i32 %13) #9, !srcloc !127
  %napi = getelementptr i8, ptr %dev, i32 3456
  tail call void @napi_disable(ptr noundef %napi) #9
  %restart_task = getelementptr i8, ptr %dev, i32 3760
  %call22 = tail call zeroext i1 @cancel_work_sync(ptr noundef %restart_task) #9
  tail call fastcc void @korina_free_ring(ptr noundef %dev)
  %16 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_irq, align 4
  %call24 = tail call ptr @free_irq(i32 noundef %17, ptr noundef %dev) #9
  %18 = ptrtoint ptr %tx_irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_irq, align 8
  %call26 = tail call ptr @free_irq(i32 noundef %19, ptr noundef %dev) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @korina_send_packet(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %lock = getelementptr i8, ptr %dev, i32 3404
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %tx_chain_tail = getelementptr i8, ptr %dev, i32 3380
  %0 = ptrtoint ptr %tx_chain_tail to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_chain_tail, align 4
  %td_ring = getelementptr i8, ptr %dev, i32 2316
  %2 = ptrtoint ptr %td_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %td_ring, align 4
  %arrayidx = getelementptr %struct.dma_desc, ptr %3, i32 %1
  %tx_count = getelementptr i8, ptr %dev, i32 3388
  %4 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %5)
  %cmp6 = icmp sgt i32 %5, 61
  br i1 %cmp6, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then:                                          ; preds = %entry
  %tx_full = getelementptr i8, ptr %dev, i32 3392
  %6 = ptrtoint ptr %tx_full to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %tx_full, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %5)
  %cmp9 = icmp eq i32 %5, 62
  br i1 %cmp9, label %if.then11, label %if.then.drop_packet_crit_edge

if.then.drop_packet_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop_packet

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %7 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %8, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %entry.if.end12_crit_edge
  %9 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_count, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %tx_count, align 4
  %arrayidx14 = getelementptr %struct.korina_private, ptr %add.ptr.i, i32 0, i32 7, i32 %1
  %11 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %skb, ptr %arrayidx14, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %dmadev = getelementptr i8, ptr %dev, i32 3808
  %14 = ptrtoint ptr %dmadev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dmadev, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %17) #9
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end12
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !125

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %15) #9
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 3
  %18 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %15, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %21, %if.end.i.i ], [ %19, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.40, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %22 = ptrtoint ptr %dmadev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dmadev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %23, i32 noundef -1) #9
  br label %drop_packet

dma_map_single_attrs.exit:                        ; preds = %if.end12
  tail call void @debug_dma_map_single(ptr noundef %15, ptr noundef %17, i32 noundef %13) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %24 = load ptr, ptr @mem_map, align 4
  %25 = ptrtoint ptr %17 to i32
  %sub.i = add i32 %25, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i170 = getelementptr %struct.page, ptr %24, i32 %shr.i
  %and.i = and i32 %25, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %15, ptr noundef %add.ptr.i170, i32 noundef %and.i, i32 noundef %13, i32 noundef 1, i32 noundef 0) #9
  %26 = ptrtoint ptr %dmadev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dmadev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %27, i32 noundef %call41.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.drop_packet_crit_edge, label %if.end19

dma_map_single_attrs.exit.drop_packet_crit_edge:  ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop_packet

if.end19:                                         ; preds = %dma_map_single_attrs.exit
  %arrayidx20 = getelementptr %struct.korina_private, ptr %add.ptr.i, i32 0, i32 10, i32 %1
  %28 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call41.i, ptr %arrayidx20, align 4
  %ca21 = getelementptr %struct.dma_desc, ptr %3, i32 %1, i32 1
  %29 = ptrtoint ptr %ca21 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call41.i, ptr %ca21, align 4
  %sub = add i32 %1, 63
  %and = and i32 %sub, 63
  %add = add i32 %1, 1
  %and22 = and i32 %add, 63
  %tx_dma_regs = getelementptr i8, ptr %dev, i32 2312
  %30 = ptrtoint ptr %tx_dma_regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tx_dma_regs, align 8
  %dmandptr = getelementptr inbounds %struct.dma_reg, ptr %31, i32 0, i32 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmandptr) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp26 = icmp eq i32 %32, 0
  %tx_chain_status = getelementptr i8, ptr %dev, i32 3384
  %33 = ptrtoint ptr %tx_chain_status to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tx_chain_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp29 = icmp eq i32 %34, 1
  %and32 = and i32 %13, 262143
  %or33 = or i32 %and32, 167772160
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or33, ptr %arrayidx, align 4
  br i1 %cmp26, label %if.then28, label %if.else67

if.then28:                                        ; preds = %if.end19
  br i1 %cmp29, label %if.then31, label %if.else43

if.then31:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %tx_chain_tail to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and22, ptr %tx_chain_tail, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  tail call void @arm_heavy_mb() #9
  %tx_chain_head = getelementptr i8, ptr %dev, i32 3376
  %37 = ptrtoint ptr %tx_chain_head to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx_chain_head, align 8
  %td_dma.i = getelementptr i8, ptr %dev, i32 2324
  %39 = ptrtoint ptr %td_dma.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %td_dma.i, align 4
  %mul.i = shl i32 %38, 4
  %add.i = add i32 %40, %mul.i
  %41 = tail call i32 @llvm.bswap.i32(i32 %add.i)
  %42 = ptrtoint ptr %tx_dma_regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tx_dma_regs, align 8
  %dmandptr40 = getelementptr inbounds %struct.dma_reg, ptr %43, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmandptr40, i32 %41) #9, !srcloc !127
  %44 = ptrtoint ptr %tx_chain_tail to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_chain_tail, align 4
  %46 = ptrtoint ptr %tx_chain_head to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %tx_chain_head, align 8
  br label %if.end93

if.else43:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %td_ring to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %td_ring, align 4
  %arrayidx49 = getelementptr %struct.dma_desc, ptr %48, i32 %and
  %49 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx49, align 4
  %and51 = and i32 %50, -33554433
  store i32 %and51, ptr %arrayidx49, align 4
  %td_dma.i171 = getelementptr i8, ptr %dev, i32 2324
  %51 = ptrtoint ptr %td_dma.i171 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %td_dma.i171, align 4
  %mul.i172 = shl i32 %1, 4
  %add.i173 = add i32 %52, %mul.i172
  %53 = load ptr, ptr %td_ring, align 4
  %link = getelementptr %struct.dma_desc, ptr %53, i32 %and, i32 3
  %54 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add.i173, ptr %link, align 4
  %55 = ptrtoint ptr %tx_chain_tail to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %and22, ptr %tx_chain_tail, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @arm_heavy_mb() #9
  %tx_chain_head59 = getelementptr i8, ptr %dev, i32 3376
  %56 = ptrtoint ptr %tx_chain_head59 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tx_chain_head59, align 8
  %58 = ptrtoint ptr %td_dma.i171 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %td_dma.i171, align 4
  %mul.i175 = shl i32 %57, 4
  %add.i176 = add i32 %59, %mul.i175
  %60 = tail call i32 @llvm.bswap.i32(i32 %add.i176)
  %61 = ptrtoint ptr %tx_dma_regs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tx_dma_regs, align 8
  %dmandptr62 = getelementptr inbounds %struct.dma_reg, ptr %62, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmandptr62, i32 %60) #9, !srcloc !127
  %63 = ptrtoint ptr %tx_chain_tail to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tx_chain_tail, align 4
  %65 = ptrtoint ptr %tx_chain_head59 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %tx_chain_head59, align 8
  %66 = ptrtoint ptr %tx_chain_status to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %tx_chain_status, align 8
  br label %if.end93

if.else67:                                        ; preds = %if.end19
  br i1 %cmp29, label %if.then71, label %if.else78

if.then71:                                        ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %tx_chain_tail to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %and22, ptr %tx_chain_tail, align 4
  %68 = ptrtoint ptr %tx_chain_status to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %tx_chain_status, align 8
  br label %if.end93

if.else78:                                        ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %td_ring to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %td_ring, align 4
  %arrayidx84 = getelementptr %struct.dma_desc, ptr %70, i32 %and
  %71 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx84, align 4
  %and86 = and i32 %72, -33554433
  store i32 %and86, ptr %arrayidx84, align 4
  %td_dma.i177 = getelementptr i8, ptr %dev, i32 2324
  %73 = ptrtoint ptr %td_dma.i177 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %td_dma.i177, align 4
  %mul.i178 = shl i32 %1, 4
  %add.i179 = add i32 %74, %mul.i178
  %75 = load ptr, ptr %td_ring, align 4
  %link90 = getelementptr %struct.dma_desc, ptr %75, i32 %and, i32 3
  %76 = ptrtoint ptr %link90 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %add.i179, ptr %link90, align 4
  %77 = ptrtoint ptr %tx_chain_tail to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %and22, ptr %tx_chain_tail, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.else78, %if.then71, %if.else43, %if.then31
  %_tx.i.i180 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %78 = ptrtoint ptr %_tx.i.i180 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %_tx.i.i180, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %80 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %79, i32 0, i32 12
  %81 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %80)
  %cmp.not.i.i = icmp eq i32 %82, %80
  br i1 %cmp.not.i.i, label %if.end93.cleanup_crit_edge, label %do.body5.i.i

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body5.i.i:                                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile i32 %80, ptr %trans_start.i.i, align 16
  br label %cleanup

drop_packet:                                      ; preds = %dma_map_single_attrs.exit.drop_packet_crit_edge, %dma_map_single_attrs.exit.thread, %if.then.drop_packet_crit_edge
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %84 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %tx_dropped, align 4
  %inc95 = add i32 %85, 1
  store i32 %inc95, ptr %tx_dropped, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %drop_packet, %do.body5.i.i, %if.end93.cleanup_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @korina_multicast_list(ptr noundef %dev) #2 align 64 {
entry:
  %hash_table = alloca [4 x i16], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %flags1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 8
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.else:                                          ; preds = %entry
  %and3 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %if.else.if.then5_crit_edge

if.else.if.then5_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

lor.lhs.false:                                    ; preds = %if.else
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp sgt i32 %3, 4
  br i1 %cmp, label %lor.lhs.false.if.then5_crit_edge, label %lor.lhs.false.if.end7_crit_edge

lor.lhs.false.if.end7_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

lor.lhs.false.if.then5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

if.then5:                                         ; preds = %lor.lhs.false.if.then5_crit_edge, %if.else.if.then5_crit_edge
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %lor.lhs.false.if.end7_crit_edge, %entry.if.end7_crit_edge
  %recognise.0 = phi i32 [ 10, %if.then5 ], [ 8, %lor.lhs.false.if.end7_crit_edge ], [ 9, %entry.if.end7_crit_edge ]
  %mc8 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count9 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %4 = ptrtoint ptr %count9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp10 = icmp sgt i32 %5, 4
  br i1 %cmp10, label %if.then11, label %if.end7.do.body46_crit_edge

if.end7.do.body46_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body46

if.then11:                                        ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hash_table) #9
  %6 = ptrtoint ptr %hash_table to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %hash_table, align 8
  %7 = ptrtoint ptr %mc8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %ha.078 = load ptr, ptr %mc8, align 4
  %cmp16.not79 = icmp eq ptr %ha.078, %mc8
  br i1 %cmp16.not79, label %if.then11.for.end_crit_edge, label %if.then11.for.body_crit_edge

if.then11.for.body_crit_edge:                     ; preds = %if.then11
  br label %for.body

if.then11.for.end_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then11.for.body_crit_edge
  %ha.080 = phi ptr [ %ha.0, %for.body.for.body_crit_edge ], [ %ha.078, %if.then11.for.body_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.080, i32 0, i32 2
  %call17 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #13
  %shr = lshr i32 %call17, 26
  %and18 = and i32 %shr, 15
  %sub = xor i32 %and18, 15
  %shl = shl nuw i32 1, %sub
  %shr19 = lshr i32 %call17, 30
  %arrayidx = getelementptr [4 x i16], ptr %hash_table, i32 0, i32 %shr19
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  %10 = trunc i32 %shl to i16
  %conv21 = or i16 %9, %10
  store i16 %conv21, ptr %arrayidx, align 2
  %11 = ptrtoint ptr %ha.080 to i32
  call void @__asan_load4_noabort(i32 %11)
  %ha.0 = load ptr, ptr %ha.080, align 4
  %cmp16.not = icmp eq ptr %ha.0, %mc8
  br i1 %cmp16.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then11.for.end_crit_edge
  %or27 = or i32 %recognise.0, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !155
  tail call void @arm_heavy_mb() #9
  %arrayidx28 = getelementptr inbounds [4 x i16], ptr %hash_table, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx28, align 2
  %conv29 = zext i16 %13 to i32
  %shl30 = shl nuw i32 %conv29, 16
  %14 = ptrtoint ptr %hash_table to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %hash_table, align 8
  %conv32 = zext i16 %15 to i32
  %or33 = or i32 %shl30, %conv32
  %16 = tail call i32 @llvm.bswap.i32(i32 %or33)
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 8
  %ethhash0 = getelementptr inbounds %struct.eth_regs, ptr %18, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ethhash0, i32 %16) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !156
  tail call void @arm_heavy_mb() #9
  %arrayidx37 = getelementptr inbounds [4 x i16], ptr %hash_table, i32 0, i32 3
  %19 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx37, align 2
  %conv38 = zext i16 %20 to i32
  %shl39 = shl nuw i32 %conv38, 16
  %arrayidx40 = getelementptr inbounds [4 x i16], ptr %hash_table, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx40, align 4
  %conv41 = zext i16 %22 to i32
  %or42 = or i32 %shl39, %conv41
  %23 = tail call i32 @llvm.bswap.i32(i32 %or42)
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 8
  %ethhash1 = getelementptr inbounds %struct.eth_regs, ptr %25, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ethhash1, i32 %23) #9, !srcloc !127
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hash_table) #9
  br label %do.body46

do.body46:                                        ; preds = %for.end, %if.end7.do.body46_crit_edge
  %recognise.1 = phi i32 [ %or27, %for.end ], [ %recognise.0, %if.end7.do.body46_crit_edge ]
  %lock = getelementptr i8, ptr %dev, i32 3404
  %call51 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  tail call void @arm_heavy_mb() #9
  %26 = tail call i32 @llvm.bswap.i32(i32 %recognise.1)
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 8
  %etharc = getelementptr inbounds %struct.eth_regs, ptr %28, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %etharc, i32 %26) #9, !srcloc !127
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call51) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @korina_ioctl(ptr noundef %dev, ptr noundef %rq, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1
  %lock = getelementptr i8, ptr %dev, i32 3404
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #9
  %mii_if = getelementptr i8, ptr %dev, i32 3728
  %call3 = tail call i32 @generic_mii_ioctl(ptr noundef %mii_if, ptr noundef %ifr_ifru.i, i32 noundef %cmd, ptr noundef null) #9
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #9
  %force_media.i = getelementptr i8, ptr %dev, i32 3744
  %2 = ptrtoint ptr %force_media.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %force_media.i, align 4
  %3 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  %dev3.i = getelementptr i8, ptr %dev, i32 3748
  %4 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev3.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i.i, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %if.then.i.cleanup_crit_edge, label %if.then1.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netif_carrier_on(ptr noundef %5) #9
  br label %cleanup

if.else.i:                                        ; preds = %if.end
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 2304
  %mii_if.i.i = getelementptr i8, ptr %5, i32 3728
  %call1.i.i = tail call i32 @mii_check_media(ptr noundef %mii_if.i.i, i32 noundef 1, i32 noundef 0) #9
  %full_duplex.i.i = getelementptr i8, ptr %5, i32 3744
  %9 = ptrtoint ptr %full_duplex.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i.i = load i8, ptr %full_duplex.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i8.i = icmp sgt i8 %bf.load.i.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %10 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i.i.i, align 8
  %ethmac213.i.i = getelementptr inbounds %struct.eth_regs, ptr %11, i32 0, i32 27
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ethmac213.i.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  br i1 %tobool.not.i8.i, label %do.body7.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = or i32 %12, 16777216
  %14 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i.i.i, align 8
  %ethmac26.i.i = getelementptr inbounds %struct.eth_regs, ptr %15, i32 0, i32 27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ethmac26.i.i, i32 %13) #9, !srcloc !127
  br label %cleanup

do.body7.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = and i32 %12, -16777217
  %17 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i.i.i, align 8
  %ethmac218.i.i = getelementptr inbounds %struct.eth_regs, ptr %18, i32 0, i32 27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ethmac218.i.i, i32 %16) #9, !srcloc !127
  br label %cleanup

cleanup:                                          ; preds = %do.body7.i.i, %do.body.i.i, %if.then1.i, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call3, %if.then.i.cleanup_crit_edge ], [ %call3, %if.then1.i ], [ %call3, %do.body.i.i ], [ %call3, %do.body7.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @korina_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %restart_task = getelementptr i8, ptr %dev, i32 3760
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %restart_task) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @korina_poll_controller(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %1) #9
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call = tail call i32 @korina_tx_dma_interrupt(i32 noundef %3, ptr noundef %dev)
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @korina_init(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call fastcc void @korina_abort_tx(ptr noundef %dev)
  tail call fastcc void @korina_abort_rx(ptr noundef %dev)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #9, !srcloc !127
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %5 = and i32 %4, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not283 = icmp eq i32 %5, 0
  br i1 %tobool.not283, label %entry.do.body5_crit_edge, label %while.body.lr.ph

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5

while.body.lr.ph:                                 ; preds = %entry
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  br label %while.body

while.body:                                       ; preds = %netif_trans_update.exit.while.body_crit_edge, %while.body.lr.ph
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %7, i32 0, i32 12
  %9 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp.not.i.i = icmp eq i32 %10, %8
  br i1 %cmp.not.i.i, label %while.body.netif_trans_update.exit_crit_edge, label %do.body5.i.i

while.body.netif_trans_update.exit_crit_edge:     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 %8, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %while.body.netif_trans_update.exit_crit_edge
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %15 = and i32 %14, 67108864
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %netif_trans_update.exit.do.body5_crit_edge, label %netif_trans_update.exit.while.body_crit_edge

netif_trans_update.exit.while.body_crit_edge:     ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

netif_trans_update.exit.do.body5_crit_edge:       ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5

do.body5:                                         ; preds = %netif_trans_update.exit.do.body5_crit_edge, %entry.do.body5_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 16777216) #9, !srcloc !127
  %td_ring.i = getelementptr i8, ptr %dev, i32 2316
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.body5
  %i.0102.i = phi i32 [ 0, %do.body5 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %td_ring.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %td_ring.i, align 4
  %arrayidx.i = getelementptr %struct.dma_desc, ptr %19, i32 %i.0102.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 134217728, ptr %arrayidx.i, align 4
  %21 = load ptr, ptr %td_ring.i, align 4
  %devcs.i = getelementptr %struct.dma_desc, ptr %21, i32 %i.0102.i, i32 2
  %22 = ptrtoint ptr %devcs.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3, ptr %devcs.i, align 4
  %23 = load ptr, ptr %td_ring.i, align 4
  %ca5.i = getelementptr %struct.dma_desc, ptr %23, i32 %i.0102.i, i32 1
  %24 = ptrtoint ptr %ca5.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %ca5.i, align 4
  %25 = load ptr, ptr %td_ring.i, align 4
  %link.i = getelementptr %struct.dma_desc, ptr %25, i32 %i.0102.i, i32 3
  %26 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %link.i, align 4
  %inc.i = add nuw nsw i32 %i.0102.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %tx_count.i = getelementptr i8, ptr %dev, i32 3388
  %27 = ptrtoint ptr %tx_count.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %tx_count.i, align 4
  %tx_full.i = getelementptr i8, ptr %dev, i32 3392
  %28 = ptrtoint ptr %tx_full.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %tx_full.i, align 8
  %tx_chain_tail.i = getelementptr i8, ptr %dev, i32 3380
  %29 = ptrtoint ptr %tx_chain_tail.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %tx_chain_tail.i, align 4
  %tx_chain_head.i = getelementptr i8, ptr %dev, i32 3376
  %30 = ptrtoint ptr %tx_chain_head.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %tx_chain_head.i, align 8
  %tx_next_done.i = getelementptr i8, ptr %dev, i32 3372
  %31 = ptrtoint ptr %tx_next_done.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %tx_next_done.i, align 4
  %tx_chain_status.i = getelementptr i8, ptr %dev, i32 3384
  %32 = ptrtoint ptr %tx_chain_status.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %tx_chain_status.i, align 8
  %rd_ring.i = getelementptr i8, ptr %dev, i32 2320
  %dmadev.i = getelementptr i8, ptr %dev, i32 3808
  %rd_dma.i.i = getelementptr i8, ptr %dev, i32 2328
  br label %for.body10.i

for.body10.i:                                     ; preds = %if.end23.i.for.body10.i_crit_edge, %for.end.i
  %i.1103.i = phi i32 [ 0, %for.end.i ], [ %add.i, %if.end23.i.for.body10.i_crit_edge ]
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef 1538, i32 noundef 2592) #9
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %for.body10.i.do.end14_crit_edge, label %if.end.i

for.body10.i.do.end14_crit_edge:                  ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14

if.end.i:                                         ; preds = %for.body10.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %33 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %34, i32 2
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %35 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %36, i32 2
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %arrayidx12.i = getelementptr %struct.korina_private, ptr %add.ptr.i, i32 0, i32 8, i32 %i.1103.i
  %37 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i.i.i, ptr %arrayidx12.i, align 4
  %38 = ptrtoint ptr %rd_ring.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rd_ring.i, align 8
  %arrayidx13.i = getelementptr %struct.dma_desc, ptr %39, i32 %i.1103.i
  %40 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 268436992, ptr %arrayidx13.i, align 4
  %41 = load ptr, ptr %rd_ring.i, align 8
  %devcs17.i = getelementptr %struct.dma_desc, ptr %41, i32 %i.1103.i, i32 2
  %42 = ptrtoint ptr %devcs17.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %devcs17.i, align 4
  %43 = ptrtoint ptr %dmadev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dmadev.i, align 8
  %45 = load ptr, ptr %data.i.i.i.i, align 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %45) #9
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.end.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !125

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %44) #9
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %44, i32 0, i32 3
  %46 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i91.i = icmp eq ptr %47, null
  br i1 %tobool.not.i.i91.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %44, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %49, %if.end.i.i.i ], [ %47, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.40, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #9
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  %50 = ptrtoint ptr %dmadev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dmadev.i, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %51, i32 noundef -1) #9
  br label %do.end14

dma_map_single_attrs.exit.i:                      ; preds = %if.end.i
  tail call void @debug_dma_map_single(ptr noundef %44, ptr noundef %45, i32 noundef 1536) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %52 = load ptr, ptr @mem_map, align 4
  %53 = ptrtoint ptr %45 to i32
  %sub.i.i = add i32 %53, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i92.i = getelementptr %struct.page, ptr %52, i32 %shr.i.i
  %and.i.i = and i32 %53, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %44, ptr noundef %add.ptr.i92.i, i32 noundef %and.i.i, i32 noundef 1536, i32 noundef 2, i32 noundef 0) #9
  %54 = ptrtoint ptr %dmadev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dmadev.i, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %55, i32 noundef %call41.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.do.end14_crit_edge, label %if.end23.i

dma_map_single_attrs.exit.i.do.end14_crit_edge:   ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14

if.end23.i:                                       ; preds = %dma_map_single_attrs.exit.i
  %56 = ptrtoint ptr %rd_ring.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rd_ring.i, align 8
  %ca26.i = getelementptr %struct.dma_desc, ptr %57, i32 %i.1103.i, i32 1
  %58 = ptrtoint ptr %ca26.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call41.i.i, ptr %ca26.i, align 4
  %arrayidx27.i = getelementptr %struct.korina_private, ptr %add.ptr.i, i32 0, i32 9, i32 %i.1103.i
  %59 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call41.i.i, ptr %arrayidx27.i, align 4
  %add.i = add nuw nsw i32 %i.1103.i, 1
  %60 = ptrtoint ptr %rd_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rd_dma.i.i, align 8
  %mul.i.i = shl i32 %add.i, 4
  %add.i.i = add i32 %61, %mul.i.i
  %62 = load ptr, ptr %rd_ring.i, align 8
  %link31.i = getelementptr %struct.dma_desc, ptr %62, i32 %i.1103.i, i32 3
  %63 = ptrtoint ptr %link31.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %add.i.i, ptr %link31.i, align 4
  %exitcond107.not.i = icmp eq i32 %add.i, 64
  br i1 %exitcond107.not.i, label %do.body17, label %if.end23.i.for.body10.i_crit_edge

if.end23.i.for.body10.i_crit_edge:                ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body10.i

do.end14:                                         ; preds = %dma_map_single_attrs.exit.i.do.end14_crit_edge, %dma_map_single_attrs.exit.thread.i, %for.body10.i.do.end14_crit_edge
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %dev) #12
  tail call fastcc void @korina_free_ring(ptr noundef %dev)
  br label %cleanup

do.body17:                                        ; preds = %if.end23.i
  %64 = ptrtoint ptr %rd_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rd_dma.i.i, align 8
  %66 = ptrtoint ptr %rd_ring.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rd_ring.i, align 8
  %link37.i = getelementptr %struct.dma_desc, ptr %67, i32 63, i32 3
  %68 = ptrtoint ptr %link37.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %65, ptr %link37.i, align 4
  %69 = load ptr, ptr %rd_ring.i, align 8
  %arrayidx40.i = getelementptr %struct.dma_desc, ptr %69, i32 63
  %70 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx40.i, align 4
  %or.i = or i32 %71, 67108864
  store i32 %or.i, ptr %arrayidx40.i, align 4
  %rx_next_done.i = getelementptr i8, ptr %dev, i32 3356
  %72 = ptrtoint ptr %rx_next_done.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %rx_next_done.i, align 4
  %rx_chain_head.i = getelementptr i8, ptr %dev, i32 3360
  %73 = ptrtoint ptr %rx_chain_head.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %rx_chain_head.i, align 8
  %rx_chain_tail.i = getelementptr i8, ptr %dev, i32 3364
  %74 = ptrtoint ptr %rx_chain_tail.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %rx_chain_tail.i, align 4
  %rx_chain_status.i = getelementptr i8, ptr %dev, i32 3368
  %75 = ptrtoint ptr %rx_chain_status.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1, ptr %rx_chain_status.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !161
  tail call void @arm_heavy_mb() #9
  %rx_dma_regs = getelementptr i8, ptr %dev, i32 2308
  %76 = ptrtoint ptr %rx_dma_regs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rx_dma_regs, align 4
  %dmas = getelementptr inbounds %struct.dma_reg, ptr %77, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmas, i32 0) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !162
  tail call void @arm_heavy_mb() #9
  %78 = ptrtoint ptr %rx_dma_regs to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rx_dma_regs, align 4
  %dmandptr = getelementptr inbounds %struct.dma_reg, ptr %79, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmandptr, i32 0) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void @arm_heavy_mb() #9
  %80 = ptrtoint ptr %rd_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rd_dma.i.i, align 8
  %82 = tail call i32 @llvm.bswap.i32(i32 %81)
  %83 = ptrtoint ptr %rx_dma_regs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %rx_dma_regs, align 4
  %dmadptr = getelementptr inbounds %struct.dma_reg, ptr %84, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmadptr, i32 %82) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  tail call void @arm_heavy_mb() #9
  %tx_dma_regs = getelementptr i8, ptr %dev, i32 2312
  %85 = ptrtoint ptr %tx_dma_regs to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %tx_dma_regs, align 8
  %dmasm = getelementptr inbounds %struct.dma_reg, ptr %86, i32 0, i32 2
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmasm) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  %88 = and i32 %87, -150994945
  %89 = ptrtoint ptr %tx_dma_regs to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %tx_dma_regs, align 8
  %dmasm39 = getelementptr inbounds %struct.dma_reg, ptr %90, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmasm39, i32 %88) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  tail call void @arm_heavy_mb() #9
  %91 = ptrtoint ptr %rx_dma_regs to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rx_dma_regs, align 4
  %dmasm46 = getelementptr inbounds %struct.dma_reg, ptr %92, i32 0, i32 2
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmasm46) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  %94 = and i32 %93, -436207617
  %95 = ptrtoint ptr %rx_dma_regs to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %rx_dma_regs, align 4
  %dmasm52 = getelementptr inbounds %struct.dma_reg, ptr %96, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmasm52, i32 %94) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !168
  tail call void @arm_heavy_mb() #9
  %97 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %add.ptr.i, align 8
  %etharc = getelementptr inbounds %struct.eth_regs, ptr %98, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %etharc, i32 134217728) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %99 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev_addr, align 64
  %arrayidx = getelementptr i8, ptr %100, i32 2
  %101 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %102 to i32
  %shl = shl nuw i32 %conv, 24
  %arrayidx61 = getelementptr i8, ptr %100, i32 3
  %103 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx61, align 1
  %conv62 = zext i8 %104 to i32
  %shl63 = shl nuw nsw i32 %conv62, 16
  %or = or i32 %shl63, %shl
  %arrayidx65 = getelementptr i8, ptr %100, i32 4
  %105 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx65, align 1
  %conv66 = zext i8 %106 to i32
  %shl67 = shl nuw nsw i32 %conv66, 8
  %or68 = or i32 %or, %shl67
  %arrayidx70 = getelementptr i8, ptr %100, i32 5
  %107 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %108 to i32
  %or72 = or i32 %or68, %conv71
  %109 = tail call i32 @llvm.bswap.i32(i32 %or72)
  %110 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %add.ptr.i, align 8
  %ethsal0 = getelementptr inbounds %struct.eth_regs, ptr %111, i32 0, i32 11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ethsal0, i32 %109) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %112 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev_addr, align 64
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %113, align 1
  %conv79 = zext i8 %115 to i32
  %shl80 = shl nuw nsw i32 %conv79, 8
  %arrayidx82 = getelementptr i8, ptr %113, i32 1
  %116 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %117 to i32
  %or84 = or i32 %shl80, %conv83
  %118 = tail call i32 @llvm.bswap.i32(i32 %or84)
  %119 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %add.ptr.i, align 8
  %ethsah0 = getelementptr inbounds %struct.eth_regs, ptr %120, i32 0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ethsah0, i32 %118) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !171
  tail call void @arm_heavy_mb() #9
  %121 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev_addr, align 64
  %arrayidx90 = getelementptr i8, ptr %122, i32 2
  %123 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx90, align 1
  %conv91 = zext i8 %124 to i32
  %shl92 = shl nuw i32 %conv91, 24
  %arrayidx94 = getelementptr i8, ptr %122, i32 3
  %125 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx94, align 1
  %conv95 = zext i8 %126 to i32
  %shl96 = shl nuw nsw i32 %conv95, 16
  %or97 = or i32 %shl96, %shl92
  %arrayidx99 = getelementptr i8, ptr %122, i32 4
  %127 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx99, align 1
  %conv100 = zext i8 %128 to i32
  %shl101 = shl nuw nsw i32 %conv100, 8
  %or102 = or i32 %or97, %shl101
  %arrayidx104 = getelementptr i8, ptr %122, i32 5
  %129 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx104, align 1
  %conv105 = zext i8 %130 to i32
  %or106 = or i32 %or102, %conv105
  %131 = tail call i32 @llvm.bswap.i32(i32 %or106)
  %132 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %add.ptr.i, align 8
  %ethsal1 = getelementptr inbounds %struct.eth_regs, ptr %133, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ethsal1, i32 %131) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  tail call void @arm_heavy_mb() #9
  %134 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev_addr, align 64
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %135, align 1
  %conv113 = zext i8 %137 to i32
  %shl114 = shl nuw nsw i32 %conv113, 8
  %arrayidx116 = getelementptr i8, ptr %135, i32 1
  %138 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx116, align 1
  %conv117 = zext i8 %139 to i32
  %or118 = or i32 %shl114, %conv117
  %140 = tail call i32 @llvm.bswap.i32(i32 %or118)
  %141 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %add.ptr.i, align 8
  %ethsah1 = getelementptr inbounds %struct.eth_regs, ptr %142, i32 0, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ethsah1, i32 %140) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  tail call void @arm_heavy_mb() #9
  %143 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dev_addr, align 64
  %arrayidx124 = getelementptr i8, ptr %144, i32 2
  %145 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx124, align 1
  %conv125 = zext i8 %146 to i32
  %shl126 = shl nuw i32 %conv125, 24
  %arrayidx128 = getelementptr i8, ptr %144, i32 3
  %147 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx128, align 1
  %conv129 = zext i8 %148 to i32
  %shl130 = shl nuw nsw i32 %conv129, 16
  %or131 = or i32 %shl130, %shl126
  %arrayidx133 = getelementptr i8, ptr %144, i32 4
  %149 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx133, align 1
  %conv134 = zext i8 %150 to i32
  %shl135 = shl nuw nsw i32 %conv134, 8
  %or136 = or i32 %or131, %shl135
  %arrayidx138 = getelementptr i8, ptr %144, i32 5
  %151 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx138, align 1
  %conv139 = zext i8 %152 to i32
  %or140 = or i32 %or136, %conv139
  %153 = tail call i32 @llvm.bswap.i32(i32 %or140)
  %154 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %add.ptr.i, align 8
  %ethsal2 = getelementptr inbounds %struct.eth_regs, ptr %155, i32 0, i32 15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ethsal2, i32 %153) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !174
  tail call void @arm_heavy_mb() #9
  %156 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dev_addr, align 64
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %157, align 1
  %conv147 = zext i8 %159 to i32
  %shl148 = shl nuw nsw i32 %conv147, 8
  %arrayidx150 = getelementptr i8, ptr %157, i32 1
  %160 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx150, align 1
  %conv151 = zext i8 %161 to i32
  %or152 = or i32 %shl148, %conv151
  %162 = tail call i32 @llvm.bswap.i32(i32 %or152)
  %163 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %add.ptr.i, align 8
  %ethsah2 = getelementptr inbounds %struct.eth_regs, ptr %164, i32 0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ethsah2, i32 %162) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !175
  tail call void @arm_heavy_mb() #9
  %165 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev_addr, align 64
  %arrayidx158 = getelementptr i8, ptr %166, i32 2
  %167 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %arrayidx158, align 1
  %conv159 = zext i8 %168 to i32
  %shl160 = shl nuw i32 %conv159, 24
  %arrayidx162 = getelementptr i8, ptr %166, i32 3
  %169 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx162, align 1
  %conv163 = zext i8 %170 to i32
  %shl164 = shl nuw nsw i32 %conv163, 16
  %or165 = or i32 %shl164, %shl160
  %arrayidx167 = getelementptr i8, ptr %166, i32 4
  %171 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx167, align 1
  %conv168 = zext i8 %172 to i32
  %shl169 = shl nuw nsw i32 %conv168, 8
  %or170 = or i32 %or165, %shl169
  %arrayidx172 = getelementptr i8, ptr %166, i32 5
  %173 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx172, align 1
  %conv173 = zext i8 %174 to i32
  %or174 = or i32 %or170, %conv173
  %175 = tail call i32 @llvm.bswap.i32(i32 %or174)
  %176 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %add.ptr.i, align 8
  %ethsal3 = getelementptr inbounds %struct.eth_regs, ptr %177, i32 0, i32 17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ethsal3, i32 %175) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !176
  tail call void @arm_heavy_mb() #9
  %178 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %dev_addr, align 64
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %179, align 1
  %conv181 = zext i8 %181 to i32
  %shl182 = shl nuw nsw i32 %conv181, 8
  %arrayidx184 = getelementptr i8, ptr %179, i32 1
  %182 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx184, align 1
  %conv185 = zext i8 %183 to i32
  %or186 = or i32 %shl182, %conv185
  %184 = tail call i32 @llvm.bswap.i32(i32 %or186)
  %185 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %add.ptr.i, align 8
  %ethsah3 = getelementptr inbounds %struct.eth_regs, ptr %186, i32 0, i32 18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ethsah3, i32 %184) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !177
  tail call void @arm_heavy_mb() #9
  %187 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %add.ptr.i, align 8
  %ethmac2 = getelementptr inbounds %struct.eth_regs, ptr %188, i32 0, i32 27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ethmac2, i32 822083584) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !178
  tail call void @arm_heavy_mb() #9
  %189 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %add.ptr.i, align 8
  %ethipgt = getelementptr inbounds %struct.eth_regs, ptr %190, i32 0, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ethipgt, i32 352321536) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !179
  tail call void @arm_heavy_mb() #9
  %191 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %add.ptr.i, align 8
  %ethipgr = getelementptr inbounds %struct.eth_regs, ptr %192, i32 0, i32 29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ethipgr, i32 301989888) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !180
  tail call void @arm_heavy_mb() #9
  %mii_clock_freq = getelementptr i8, ptr %dev, i32 3812
  %193 = ptrtoint ptr %mii_clock_freq to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %mii_clock_freq, align 4
  %div = sdiv i32 %194, 1250000
  %add = add nsw i32 %div, 1
  %and203 = and i32 %add, -2
  %195 = tail call i32 @llvm.bswap.i32(i32 %and203)
  %196 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %add.ptr.i, align 8
  %ethmcp = getelementptr inbounds %struct.eth_regs, ptr %197, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ethmcp, i32 %195) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  tail call void @arm_heavy_mb() #9
  %198 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %add.ptr.i, align 8
  %miimcfg = getelementptr inbounds %struct.eth_regs, ptr %199, i32 0, i32 34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %miimcfg, i32 0) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !182
  tail call void @arm_heavy_mb() #9
  %200 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %add.ptr.i, align 8
  %ethfifott = getelementptr inbounds %struct.eth_regs, ptr %201, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ethfifott, i32 805306368) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  tail call void @arm_heavy_mb() #9
  %202 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %add.ptr.i, align 8
  %ethmac1 = getelementptr inbounds %struct.eth_regs, ptr %203, i32 0, i32 26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ethmac1, i32 16777216) #9, !srcloc !127
  %mii_if.i = getelementptr i8, ptr %dev, i32 3728
  %call1.i = tail call i32 @mii_check_media(ptr noundef %mii_if.i, i32 noundef 1, i32 noundef 1) #9
  %full_duplex.i = getelementptr i8, ptr %dev, i32 3744
  %204 = ptrtoint ptr %full_duplex.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %bf.load.i = load i8, ptr %full_duplex.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %205 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %add.ptr.i, align 8
  %ethmac213.i = getelementptr inbounds %struct.eth_regs, ptr %206, i32 0, i32 27
  %207 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ethmac213.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  br i1 %tobool.not.i, label %do.body7.i, label %do.body.i

do.body.i:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #11
  %208 = or i32 %207, 16777216
  %209 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %add.ptr.i, align 8
  %ethmac26.i = getelementptr inbounds %struct.eth_regs, ptr %210, i32 0, i32 27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ethmac26.i, i32 %208) #9, !srcloc !127
  br label %korina_check_media.exit

do.body7.i:                                       ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #11
  %211 = and i32 %207, -16777217
  %212 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %add.ptr.i, align 8
  %ethmac218.i = getelementptr inbounds %struct.eth_regs, ptr %213, i32 0, i32 27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ethmac218.i, i32 %211) #9, !srcloc !127
  br label %korina_check_media.exit

korina_check_media.exit:                          ; preds = %do.body7.i, %do.body.i
  %napi = getelementptr i8, ptr %dev, i32 3456
  tail call void @napi_enable(ptr noundef %napi) #9
  %_tx.i.i279 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %214 = ptrtoint ptr %_tx.i.i279 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %_tx.i.i279, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %215, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %korina_check_media.exit, %do.end14
  %retval.0 = phi i32 [ -12, %do.end14 ], [ 0, %korina_check_media.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @korina_rx_dma_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_dma_regs = getelementptr i8, ptr %dev_id, i32 2308
  %0 = ptrtoint ptr %rx_dma_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_dma_regs, align 4
  %dmas2 = getelementptr inbounds %struct.dma_reg, ptr %1, i32 0, i32 1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmas2) #9, !srcloc !128
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  %and = and i32 %3, 26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end22_crit_edge, label %if.then

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %rx_dma_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_dma_regs, align 4
  %dmasm8 = getelementptr inbounds %struct.dma_reg, ptr %5, i32 0, i32 2
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmasm8) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %7 = or i32 %6, 436207616
  %8 = ptrtoint ptr %rx_dma_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_dma_regs, align 4
  %dmasm13 = getelementptr inbounds %struct.dma_reg, ptr %9, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmasm13, i32 %7) #9, !srcloc !127
  %napi = getelementptr i8, ptr %dev_id, i32 3456
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #9
  br i1 %call.i, label %if.then.i, label %if.then.napi_schedule.exit_crit_edge

if.then.napi_schedule.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %napi_schedule.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__napi_schedule(ptr noundef %napi) #9
  br label %napi_schedule.exit

napi_schedule.exit:                               ; preds = %if.then.i, %if.then.napi_schedule.exit_crit_edge
  %and14 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %napi_schedule.exit.if.end22_crit_edge, label %do.end19

napi_schedule.exit.if.end22_crit_edge:            ; preds = %napi_schedule.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

do.end19:                                         ; preds = %napi_schedule.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %dev_id) #12
  br label %if.end22

if.end22:                                         ; preds = %do.end19, %napi_schedule.exit.if.end22_crit_edge, %entry.if.end22_crit_edge
  %retval1.0 = phi i32 [ 1, %do.end19 ], [ 1, %napi_schedule.exit.if.end22_crit_edge ], [ 0, %entry.if.end22_crit_edge ]
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @korina_tx_dma_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 2304
  %tx_dma_regs = getelementptr i8, ptr %dev_id, i32 2312
  %0 = ptrtoint ptr %tx_dma_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_dma_regs, align 8
  %dmas2 = getelementptr inbounds %struct.dma_reg, ptr %1, i32 0, i32 1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmas2) #9, !srcloc !128
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !187
  %and = and i32 %3, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end39_crit_edge, label %if.then

entry.if.end39_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %tx_dma_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_dma_regs, align 8
  %dmasm8 = getelementptr inbounds %struct.dma_reg, ptr %5, i32 0, i32 2
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmasm8) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !189
  tail call void @arm_heavy_mb() #9
  %7 = or i32 %6, 150994944
  %8 = ptrtoint ptr %tx_dma_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_dma_regs, align 8
  %dmasm13 = getelementptr inbounds %struct.dma_reg, ptr %9, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmasm13, i32 %7) #9, !srcloc !127
  %td_ring.i = getelementptr i8, ptr %dev_id, i32 2316
  %10 = ptrtoint ptr %td_ring.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %td_ring.i, align 4
  %tx_next_done.i = getelementptr i8, ptr %dev_id, i32 3372
  %12 = ptrtoint ptr %tx_next_done.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_next_done.i, align 4
  %arrayidx.i = getelementptr %struct.dma_desc, ptr %11, i32 %13
  %lock.i = getelementptr i8, ptr %dev_id, i32 3404
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #9
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.not176.i = icmp sgt i32 %15, -1
  br i1 %cmp.not176.i, label %if.then.korina_tx.exit_crit_edge, label %while.body.lr.ph.i

if.then.korina_tx.exit_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %korina_tx.exit

while.body.lr.ph.i:                               ; preds = %if.then
  %tx_full.i = getelementptr i8, ptr %dev_id, i32 3392
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 103
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 5
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 7
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 1
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 3
  %tx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 18
  %tx_aborted_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 16
  %tx_carrier_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 17
  %collisions.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 9
  %tx_window_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 20
  %dmadev.i = getelementptr i8, ptr %dev_id, i32 3808
  %tx_count.i = getelementptr i8, ptr %dev_id, i32 3388
  br label %while.body.i

while.body.i:                                     ; preds = %if.end76.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %16 = ptrtoint ptr %tx_full.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_full.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp1.i = icmp eq i32 %17, 1
  br i1 %cmp1.i, label %if.then.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %19) #9
  %20 = ptrtoint ptr %tx_full.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %tx_full.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i.if.end.i_crit_edge
  %21 = ptrtoint ptr %td_ring.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %td_ring.i, align 4
  %23 = ptrtoint ptr %tx_next_done.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_next_done.i, align 4
  %devcs6.i = getelementptr %struct.dma_desc, ptr %22, i32 %24, i32 2
  %25 = ptrtoint ptr %devcs6.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %devcs6.i, align 4
  %and7.i = and i32 %26, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and7.i)
  %cmp8.not.i = icmp eq i32 %and7.i, 3
  br i1 %cmp8.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_errors.i, align 4
  %inc.i = add i32 %28, 1
  store i32 %inc.i, ptr %tx_errors.i, align 4
  %29 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_dropped.i, align 4
  %inc11.i = add i32 %30, 1
  store i32 %inc11.i, ptr %tx_dropped.i, align 4
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %dev_id) #12
  br label %if.end58.i

if.else.i:                                        ; preds = %if.end.i
  %and13.i = and i32 %26, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool.not.i, label %if.else20.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_packets.i, align 4
  %inc16.i = add i32 %32, 1
  store i32 %inc16.i, ptr %tx_packets.i, align 4
  %arrayidx18.i = getelementptr %struct.korina_private, ptr %add.ptr.i, i32 0, i32 7, i32 %24
  %33 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx18.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len.i, align 4
  %37 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx_bytes.i, align 4
  %add.i = add i32 %38, %36
  store i32 %add.i, ptr %tx_bytes.i, align 4
  br label %if.end58.i

if.else20.i:                                      ; preds = %if.else.i
  %39 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tx_errors.i, align 4
  %inc23.i = add i32 %40, 1
  store i32 %inc23.i, ptr %tx_errors.i, align 4
  %41 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx_dropped.i, align 4
  %inc26.i = add i32 %42, 1
  store i32 %inc26.i, ptr %tx_dropped.i, align 4
  %and27.i = and i32 %26, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.else20.i.if.end32.i_crit_edge, label %if.then29.i

if.else20.i.if.end32.i_crit_edge:                 ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i

if.then29.i:                                      ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %tx_fifo_errors.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tx_fifo_errors.i, align 8
  %inc31.i = add i32 %44, 1
  store i32 %inc31.i, ptr %tx_fifo_errors.i, align 8
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then29.i, %if.else20.i.if.end32.i_crit_edge
  %and33.i = and i32 %26, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %if.end32.i.if.end38.i_crit_edge, label %if.then35.i

if.end32.i.if.end38.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i

if.then35.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %tx_aborted_errors.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_aborted_errors.i, align 8
  %inc37.i = add i32 %46, 1
  store i32 %inc37.i, ptr %tx_aborted_errors.i, align 8
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then35.i, %if.end32.i.if.end38.i_crit_edge
  %and39.i = and i32 %26, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %if.end38.i.if.end44.i_crit_edge, label %if.then41.i

if.end38.i.if.end44.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44.i

if.then41.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %tx_carrier_errors.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tx_carrier_errors.i, align 4
  %inc43.i = add i32 %48, 1
  store i32 %inc43.i, ptr %tx_carrier_errors.i, align 4
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then41.i, %if.end38.i.if.end44.i_crit_edge
  %and45.i = and i32 %26, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %if.end44.i.if.end50.i_crit_edge, label %if.then47.i

if.end44.i.if.end50.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50.i

if.then47.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %collisions.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %collisions.i, align 4
  %inc49.i = add i32 %50, 1
  store i32 %inc49.i, ptr %collisions.i, align 4
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then47.i, %if.end44.i.if.end50.i_crit_edge
  %and51.i = and i32 %26, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %tobool52.not.i = icmp eq i32 %and51.i, 0
  br i1 %tobool52.not.i, label %if.end50.i.if.end58.i_crit_edge, label %if.then53.i

if.end50.i.if.end58.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.i

if.then53.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %tx_window_errors.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tx_window_errors.i, align 8
  %inc55.i = add i32 %52, 1
  store i32 %inc55.i, ptr %tx_window_errors.i, align 8
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then53.i, %if.end50.i.if.end58.i_crit_edge, %if.then14.i, %if.then9.i
  %53 = ptrtoint ptr %tx_next_done.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tx_next_done.i, align 4
  %arrayidx61.i = getelementptr %struct.korina_private, ptr %add.ptr.i, i32 0, i32 7, i32 %54
  %55 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx61.i, align 4
  %tobool62.not.i = icmp eq ptr %56, null
  br i1 %tobool62.not.i, label %if.end58.i.if.end76.i_crit_edge, label %if.then63.i

if.end58.i.if.end76.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76.i

if.then63.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %dmadev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dmadev.i, align 8
  %arrayidx65.i = getelementptr %struct.korina_private, ptr %add.ptr.i, i32 0, i32 10, i32 %54
  %59 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx65.i, align 4
  %len69.i = getelementptr inbounds %struct.sk_buff, ptr %56, i32 0, i32 6
  %61 = ptrtoint ptr %len69.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %len69.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %58, i32 noundef %60, i32 noundef %62, i32 noundef 1, i32 noundef 0) #9
  %63 = ptrtoint ptr %tx_next_done.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tx_next_done.i, align 4
  %arrayidx72.i = getelementptr %struct.korina_private, ptr %add.ptr.i, i32 0, i32 7, i32 %64
  %65 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx72.i, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %66, i32 noundef 1) #9
  %67 = ptrtoint ptr %tx_next_done.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tx_next_done.i, align 4
  %arrayidx75.i = getelementptr %struct.korina_private, ptr %add.ptr.i, i32 0, i32 7, i32 %68
  %69 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %arrayidx75.i, align 4
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.then63.i, %if.end58.i.if.end76.i_crit_edge
  %70 = ptrtoint ptr %td_ring.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %td_ring.i, align 4
  %72 = ptrtoint ptr %tx_next_done.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tx_next_done.i, align 4
  %arrayidx79.i = getelementptr %struct.dma_desc, ptr %71, i32 %73
  %74 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 134217728, ptr %arrayidx79.i, align 4
  %75 = load ptr, ptr %td_ring.i, align 4
  %76 = load i32, ptr %tx_next_done.i, align 4
  %devcs84.i = getelementptr %struct.dma_desc, ptr %75, i32 %76, i32 2
  %77 = ptrtoint ptr %devcs84.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 3, ptr %devcs84.i, align 4
  %78 = load ptr, ptr %td_ring.i, align 4
  %79 = load i32, ptr %tx_next_done.i, align 4
  %link.i = getelementptr %struct.dma_desc, ptr %78, i32 %79, i32 3
  %80 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %link.i, align 4
  %81 = load ptr, ptr %td_ring.i, align 4
  %82 = load i32, ptr %tx_next_done.i, align 4
  %ca.i = getelementptr %struct.dma_desc, ptr %81, i32 %82, i32 1
  %83 = ptrtoint ptr %ca.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %ca.i, align 4
  %84 = ptrtoint ptr %tx_count.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %tx_count.i, align 4
  %dec.i = add i32 %85, -1
  store i32 %dec.i, ptr %tx_count.i, align 4
  %86 = load i32, ptr %tx_next_done.i, align 4
  %add92.i = add i32 %86, 1
  %and93.i = and i32 %add92.i, 63
  store i32 %and93.i, ptr %tx_next_done.i, align 4
  %87 = load ptr, ptr %td_ring.i, align 4
  %arrayidx97.i = getelementptr %struct.dma_desc, ptr %87, i32 %and93.i
  %88 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx97.i, align 4
  %cmp.not.i = icmp sgt i32 %89, -1
  br i1 %cmp.not.i, label %if.end76.i.korina_tx.exit_crit_edge, label %if.end76.i.while.body.i_crit_edge

if.end76.i.while.body.i_crit_edge:                ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end76.i.korina_tx.exit_crit_edge:              ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %korina_tx.exit

korina_tx.exit:                                   ; preds = %if.end76.i.korina_tx.exit_crit_edge, %if.then.korina_tx.exit_crit_edge
  %90 = ptrtoint ptr %tx_dma_regs to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %tx_dma_regs, align 8
  %dmas98.i = getelementptr inbounds %struct.dma_reg, ptr %91, i32 0, i32 1
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmas98.i) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !191
  tail call void @arm_heavy_mb() #9
  %93 = xor i32 %92, -1
  %94 = ptrtoint ptr %tx_dma_regs to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %tx_dma_regs, align 8
  %dmas106.i = getelementptr inbounds %struct.dma_reg, ptr %95, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmas106.i, i32 %93) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !192
  tail call void @arm_heavy_mb() #9
  %96 = ptrtoint ptr %tx_dma_regs to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %tx_dma_regs, align 8
  %dmasm.i = getelementptr inbounds %struct.dma_reg, ptr %97, i32 0, i32 2
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmasm.i) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !193
  %99 = and i32 %98, -150994945
  %100 = ptrtoint ptr %tx_dma_regs to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %tx_dma_regs, align 8
  %dmasm118.i = getelementptr inbounds %struct.dma_reg, ptr %101, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmasm118.i, i32 %99) #9, !srcloc !127
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  %tx_chain_status = getelementptr i8, ptr %dev_id, i32 3384
  %102 = ptrtoint ptr %tx_chain_status to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %tx_chain_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp = icmp eq i32 %103, 0
  br i1 %cmp, label %land.lhs.true, label %korina_tx.exit.if.end_crit_edge

korina_tx.exit.if.end_crit_edge:                  ; preds = %korina_tx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %korina_tx.exit
  %104 = ptrtoint ptr %tx_dma_regs to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %tx_dma_regs, align 8
  %dmandptr = getelementptr inbounds %struct.dma_reg, ptr %105, i32 0, i32 4
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmandptr) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp20 = icmp eq i32 %106, 0
  br i1 %cmp20, label %do.body22, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body22:                                        ; preds = %land.lhs.true
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  %tx_chain_head = getelementptr i8, ptr %dev_id, i32 3376
  %107 = ptrtoint ptr %tx_chain_head to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %tx_chain_head, align 8
  %td_dma.i = getelementptr i8, ptr %dev_id, i32 2324
  %109 = ptrtoint ptr %td_dma.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %td_dma.i, align 4
  %mul.i = shl i32 %108, 4
  %add.i54 = add i32 %110, %mul.i
  %111 = tail call i32 @llvm.bswap.i32(i32 %add.i54)
  %112 = ptrtoint ptr %tx_dma_regs to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %tx_dma_regs, align 8
  %dmandptr27 = getelementptr inbounds %struct.dma_reg, ptr %113, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmandptr27, i32 %111) #9, !srcloc !127
  %114 = ptrtoint ptr %tx_chain_status to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 1, ptr %tx_chain_status, align 8
  %tx_chain_tail = getelementptr i8, ptr %dev_id, i32 3380
  %115 = ptrtoint ptr %tx_chain_tail to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %tx_chain_tail, align 4
  %117 = ptrtoint ptr %tx_chain_head to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %tx_chain_head, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 103
  %118 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %120 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %119, i32 0, i32 12
  %121 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %122, i32 %120)
  %cmp.not.i.i = icmp eq i32 %122, %120
  br i1 %cmp.not.i.i, label %do.body22.if.end_crit_edge, label %do.body5.i.i

do.body22.if.end_crit_edge:                       ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body5.i.i:                                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  %123 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile i32 %120, ptr %trans_start.i.i, align 16
  br label %if.end

if.end:                                           ; preds = %do.body5.i.i, %do.body22.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %korina_tx.exit.if.end_crit_edge
  %and30 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end.if.end39_crit_edge, label %do.end35

if.end.if.end39_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

do.end35:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %dev_id) #12
  br label %if.end39

if.end39:                                         ; preds = %do.end35, %if.end.if.end39_crit_edge, %entry.if.end39_crit_edge
  %retval1.0 = phi i32 [ 1, %do.end35 ], [ 1, %if.end.if.end39_crit_edge ], [ 0, %entry.if.end39_crit_edge ]
  ret i32 %retval1.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @korina_free_ring(ptr nocapture noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %rd_ring = getelementptr i8, ptr %dev, i32 2320
  %dmadev = getelementptr i8, ptr %dev, i32 3808
  br label %for.body

for.cond7.preheader:                              ; preds = %for.inc
  %td_ring = getelementptr i8, ptr %dev, i32 2316
  br label %for.body9

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.053 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %rd_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rd_ring, align 8
  %arrayidx = getelementptr %struct.dma_desc, ptr %1, i32 %i.053
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr %struct.korina_private, ptr %add.ptr.i, i32 0, i32 8, i32 %i.053
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx1, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %dmadev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dmadev, align 8
  %arrayidx2 = getelementptr %struct.korina_private, ptr %add.ptr.i, i32 0, i32 9, i32 %i.053
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx2, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %6, i32 noundef %8, i32 noundef 1536, i32 noundef 2, i32 noundef 0) #9
  %9 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx1, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %10, i32 noundef 1) #9
  %11 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx1, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.053, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.cond7.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body9:                                        ; preds = %for.inc24.for.body9_crit_edge, %for.cond7.preheader
  %i.155 = phi i32 [ 0, %for.cond7.preheader ], [ %inc25, %for.inc24.for.body9_crit_edge ]
  %12 = ptrtoint ptr %td_ring to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %td_ring, align 4
  %arrayidx10 = getelementptr %struct.dma_desc, ptr %13, i32 %i.155
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %arrayidx10, align 4
  %arrayidx12 = getelementptr %struct.korina_private, ptr %add.ptr.i, i32 0, i32 7, i32 %i.155
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx12, align 4
  %tobool13.not = icmp eq ptr %16, null
  br i1 %tobool13.not, label %for.body9.for.inc24_crit_edge, label %if.then14

for.body9.for.inc24_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc24

if.then14:                                        ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %dmadev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dmadev, align 8
  %arrayidx16 = getelementptr %struct.korina_private, ptr %add.ptr.i, i32 0, i32 10, i32 %i.155
  %19 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx16, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 6
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef 1, i32 noundef 0) #9
  %23 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx12, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %24, i32 noundef 1) #9
  %25 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %arrayidx12, align 4
  br label %for.inc24

for.inc24:                                        ; preds = %if.then14, %for.body9.for.inc24_crit_edge
  %inc25 = add nuw nsw i32 %i.155, 1
  %exitcond57.not = icmp eq i32 %inc25, 64
  br i1 %exitcond57.not, label %for.end26, label %for.inc24.for.body9_crit_edge

for.inc24.for.body9_crit_edge:                    ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body9

for.end26:                                        ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @korina_abort_tx(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_dma_regs = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %tx_dma_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_dma_regs, align 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !196
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.korina_abort_dma.exit_crit_edge, label %do.body.i

entry.korina_abort_dma.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %korina_abort_dma.exit

do.body.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 268435456) #9, !srcloc !127
  %dmas.i = getelementptr inbounds %struct.dma_reg, ptr %1, i32 0, i32 1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmas.i) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !198
  %5 = and i32 %4, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool9.not22.i = icmp eq i32 %5, 0
  br i1 %tobool9.not22.i, label %while.body.lr.ph.i, label %do.body.i.do.body10.i_crit_edge

do.body.i.do.body10.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body10.i

while.body.lr.ph.i:                               ; preds = %do.body.i
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  br label %while.body.i

while.body.i:                                     ; preds = %netif_trans_update.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %6 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %7, i32 0, i32 12
  %9 = ptrtoint ptr %trans_start.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %trans_start.i.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp.not.i.i.i = icmp eq i32 %10, %8
  br i1 %cmp.not.i.i.i, label %while.body.i.netif_trans_update.exit.i_crit_edge, label %do.body5.i.i.i

while.body.i.netif_trans_update.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %netif_trans_update.exit.i

do.body5.i.i.i:                                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %trans_start.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 %8, ptr %trans_start.i.i.i, align 16
  br label %netif_trans_update.exit.i

netif_trans_update.exit.i:                        ; preds = %do.body5.i.i.i, %while.body.i.netif_trans_update.exit.i_crit_edge
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmas.i) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !198
  %13 = and i32 %12, 268435456
  %tobool9.not.i = icmp eq i32 %13, 0
  br i1 %tobool9.not.i, label %netif_trans_update.exit.i.while.body.i_crit_edge, label %netif_trans_update.exit.i.do.body10.i_crit_edge

netif_trans_update.exit.i.do.body10.i_crit_edge:  ; preds = %netif_trans_update.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body10.i

netif_trans_update.exit.i.while.body.i_crit_edge: ; preds = %netif_trans_update.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

do.body10.i:                                      ; preds = %netif_trans_update.exit.i.do.body10.i_crit_edge, %do.body.i.do.body10.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !199
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmas.i, i32 0) #9, !srcloc !127
  br label %korina_abort_dma.exit

korina_abort_dma.exit:                            ; preds = %do.body10.i, %entry.korina_abort_dma.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  tail call void @arm_heavy_mb() #9
  %dmadptr.i = getelementptr inbounds %struct.dma_reg, ptr %1, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmadptr.i, i32 0) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !201
  tail call void @arm_heavy_mb() #9
  %dmandptr.i = getelementptr inbounds %struct.dma_reg, ptr %1, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmandptr.i, i32 0) #9, !srcloc !127
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @korina_abort_rx(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_dma_regs = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %rx_dma_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_dma_regs, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !196
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.korina_abort_dma.exit_crit_edge, label %do.body.i

entry.korina_abort_dma.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %korina_abort_dma.exit

do.body.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 268435456) #9, !srcloc !127
  %dmas.i = getelementptr inbounds %struct.dma_reg, ptr %1, i32 0, i32 1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmas.i) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !198
  %5 = and i32 %4, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool9.not22.i = icmp eq i32 %5, 0
  br i1 %tobool9.not22.i, label %while.body.lr.ph.i, label %do.body.i.do.body10.i_crit_edge

do.body.i.do.body10.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body10.i

while.body.lr.ph.i:                               ; preds = %do.body.i
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  br label %while.body.i

while.body.i:                                     ; preds = %netif_trans_update.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %6 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %7, i32 0, i32 12
  %9 = ptrtoint ptr %trans_start.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %trans_start.i.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp.not.i.i.i = icmp eq i32 %10, %8
  br i1 %cmp.not.i.i.i, label %while.body.i.netif_trans_update.exit.i_crit_edge, label %do.body5.i.i.i

while.body.i.netif_trans_update.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %netif_trans_update.exit.i

do.body5.i.i.i:                                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %trans_start.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 %8, ptr %trans_start.i.i.i, align 16
  br label %netif_trans_update.exit.i

netif_trans_update.exit.i:                        ; preds = %do.body5.i.i.i, %while.body.i.netif_trans_update.exit.i_crit_edge
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmas.i) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !198
  %13 = and i32 %12, 268435456
  %tobool9.not.i = icmp eq i32 %13, 0
  br i1 %tobool9.not.i, label %netif_trans_update.exit.i.while.body.i_crit_edge, label %netif_trans_update.exit.i.do.body10.i_crit_edge

netif_trans_update.exit.i.do.body10.i_crit_edge:  ; preds = %netif_trans_update.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body10.i

netif_trans_update.exit.i.while.body.i_crit_edge: ; preds = %netif_trans_update.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

do.body10.i:                                      ; preds = %netif_trans_update.exit.i.do.body10.i_crit_edge, %do.body.i.do.body10.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !199
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmas.i, i32 0) #9, !srcloc !127
  br label %korina_abort_dma.exit

korina_abort_dma.exit:                            ; preds = %do.body10.i, %entry.korina_abort_dma.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  tail call void @arm_heavy_mb() #9
  %dmadptr.i = getelementptr inbounds %struct.dma_reg, ptr %1, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmadptr.i, i32 0) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !201
  tail call void @arm_heavy_mb() #9
  %dmandptr.i = getelementptr inbounds %struct.dma_reg, ptr %1, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmandptr.i, i32 0) #9, !srcloc !127
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

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
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_check_media(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_mii_ioctl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netdev_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #9
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call3 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.46, i32 noundef 32) #9
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %dev5 = getelementptr i8, ptr %dev, i32 3804
  %0 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev5, align 4
  %call7 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %1, i32 noundef 32) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_get_link(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mii_if = getelementptr i8, ptr %dev, i32 3728
  %call1 = tail call i32 @mii_link_ok(ptr noundef %mii_if) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_get_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 3404
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #9
  %mii_if = getelementptr i8, ptr %dev, i32 3728
  tail call void @mii_ethtool_get_link_ksettings(ptr noundef %mii_if, ptr noundef %cmd) #9
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_set_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 3404
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #9
  %mii_if = getelementptr i8, ptr %dev, i32 3728
  %call1 = tail call i32 @mii_ethtool_set_link_ksettings(ptr noundef %mii_if, ptr noundef %cmd) #9
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #9
  %force_media.i = getelementptr i8, ptr %dev, i32 3744
  %0 = ptrtoint ptr %force_media.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %force_media.i, align 4
  %1 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  %dev3.i = getelementptr i8, ptr %dev, i32 3748
  %2 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev3.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i.i, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i, label %if.then.i.korina_set_carrier.exit_crit_edge, label %if.then1.i

if.then.i.korina_set_carrier.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %korina_set_carrier.exit

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netif_carrier_on(ptr noundef %3) #9
  br label %korina_set_carrier.exit

if.else.i:                                        ; preds = %entry
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 2304
  %mii_if.i.i = getelementptr i8, ptr %3, i32 3728
  %call1.i.i = tail call i32 @mii_check_media(ptr noundef %mii_if.i.i, i32 noundef 1, i32 noundef 0) #9
  %full_duplex.i.i = getelementptr i8, ptr %3, i32 3744
  %7 = ptrtoint ptr %full_duplex.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i.i = load i8, ptr %full_duplex.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i8.i = icmp sgt i8 %bf.load.i.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i.i.i, align 8
  %ethmac213.i.i = getelementptr inbounds %struct.eth_regs, ptr %9, i32 0, i32 27
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ethmac213.i.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  br i1 %tobool.not.i8.i, label %do.body7.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = or i32 %10, 16777216
  %12 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i.i.i, align 8
  %ethmac26.i.i = getelementptr inbounds %struct.eth_regs, ptr %13, i32 0, i32 27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ethmac26.i.i, i32 %11) #9, !srcloc !127
  br label %korina_set_carrier.exit

do.body7.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = and i32 %10, -16777217
  %15 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i.i.i, align 8
  %ethmac218.i.i = getelementptr inbounds %struct.eth_regs, ptr %16, i32 0, i32 27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ethmac218.i.i, i32 %14) #9, !srcloc !127
  br label %korina_set_carrier.exit

korina_set_carrier.exit:                          ; preds = %do.body7.i.i, %do.body.i.i, %if.then1.i, %if.then.i.korina_set_carrier.exit_crit_edge
  ret i32 %call1
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_link_ok(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_ethtool_set_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !36, !38, !39, !40, !42, !44, !45, !46, !48, !49, !51, !52, !53, !55, !56, !58, !59, !61, !62, !63, !65, !67, !68, !69, !70, !72, !74, !75, !76, !78, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !102, !103, !104, !105, !107, !109, !111, !112, !113, !114}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @__initcall__kmod_korina__349_1411_korina_driver_init6, !1, !"__initcall__kmod_korina__349_1411_korina_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/korina.c", i32 1411, i32 1}
!2 = !{ptr @__exitcall_korina_driver_exit, !1, !"__exitcall_korina_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author350, !4, !"__UNIQUE_ID_author350", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/korina.c", i32 1413, i32 1}
!5 = !{ptr @__UNIQUE_ID_author351, !6, !"__UNIQUE_ID_author351", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/korina.c", i32 1414, i32 1}
!7 = !{ptr @__UNIQUE_ID_author352, !8, !"__UNIQUE_ID_author352", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/korina.c", i32 1415, i32 1}
!9 = !{ptr @__UNIQUE_ID_author353, !10, !"__UNIQUE_ID_author353", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/korina.c", i32 1416, i32 1}
!11 = !{ptr @__UNIQUE_ID_description354, !12, !"__UNIQUE_ID_description354", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/korina.c", i32 1417, i32 1}
!13 = !{ptr @__UNIQUE_ID_file355, !14, !"__UNIQUE_ID_file355", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/korina.c", i32 1418, i32 1}
!15 = !{ptr @__UNIQUE_ID_license356, !14, !"__UNIQUE_ID_license356", i1 false, i1 false}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/korina.c", i32 1404, i32 11}
!18 = !{ptr @korina_driver, !19, !"korina_driver", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/korina.c", i32 1402, i32 31}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/korina.c", i32 1304, i32 42}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/korina.c", i32 1314, i32 45}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/korina.c", i32 1315, i32 45}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/korina.c", i32 1317, i32 50}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/korina.c", i32 1319, i32 3}
!30 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @korina_probe._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @korina_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/korina.c", i32 1324, i32 50}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/korina.c", i32 1326, i32 3}
!38 = !{ptr @korina_probe._entry.9, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @korina_probe._entry_ptr.11, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/korina.c", i32 1331, i32 50}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/korina.c", i32 1333, i32 3}
!44 = !{ptr @korina_probe._entry.13, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @korina_probe._entry_ptr.15, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @korina_probe.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/korina.c", i32 1348, i32 2}
!48 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/korina.c", i32 1370, i32 3}
!51 = !{ptr @korina_probe._entry.17, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @korina_probe._entry_ptr.19, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @korina_probe.__key.20, !54, !"__key", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/korina.c", i32 1374, i32 2}
!55 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @korina_probe.__key.22, !57, !"__key", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/korina.c", i32 1376, i32 2}
!58 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/korina.c", i32 1378, i32 2}
!61 = !{ptr @korina_probe._entry.24, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @korina_probe._entry_ptr.26, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @korina_netdev_ops, !64, !"korina_netdev_ops", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/korina.c", i32 1269, i32 36}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/korina.c", i32 1204, i32 3}
!67 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @korina_open._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @korina_open._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/korina.c", i32 1211, i32 7}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/korina.c", i32 1213, i32 3}
!74 = !{ptr @korina_open._entry.30, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @korina_open._entry_ptr.32, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/korina.c", i32 1218, i32 7}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/korina.c", i32 1220, i32 3}
!80 = !{ptr @korina_open._entry.34, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @korina_open._entry_ptr.36, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/korina.c", i32 1082, i32 3}
!84 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @korina_init._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @korina_init._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = distinct !{null, !88, !"__already_done", i1 false, i1 false}
!88 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!89 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/korina.c", i32 586, i32 4}
!93 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @korina_rx_dma_interrupt._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @korina_rx_dma_interrupt._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/korina.c", i32 876, i32 4}
!98 = !{ptr @korina_tx_dma_interrupt._entry, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @korina_tx_dma_interrupt._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/korina.c", i32 786, i32 4}
!102 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @korina_tx._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @korina_tx._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @netdev_ethtool_ops, !106, !"netdev_ethtool_ops", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/korina.c", i32 979, i32 33}
!107 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/korina.c", i32 942, i32 25}
!109 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/korina.c", i32 1171, i32 3}
!111 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @korina_restart_task._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @korina_restart_task._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @korina_match, !115, !"korina_match", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/korina.c", i32 1393, i32 34}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!125 = !{!"branch_weights", i32 2000, i32 1}
!126 = !{i64 2156649643}
!127 = !{i64 4653595}
!128 = !{i64 4654013}
!129 = !{i64 2156650422}
!130 = !{i64 2156650951}
!131 = !{i64 2156651578}
!132 = !{i64 2156654375}
!133 = !{i64 2156655490}
!134 = !{i64 2156639555}
!135 = !{i64 2156640061}
!136 = !{i64 2156640886}
!137 = !{i64 2156641317}
!138 = !{i64 2156641997}
!139 = !{i64 2156642588}
!140 = !{i64 2156642805}
!141 = !{i64 2156643196}
!142 = !{i64 2156643601}
!143 = !{i64 2156644034}
!144 = !{i64 2156701612}
!145 = !{i64 2156702651}
!146 = !{i64 2156704039}
!147 = !{i64 2156705138}
!148 = !{i64 2156711664}
!149 = !{i64 2156712048}
!150 = !{i64 2156712739}
!151 = !{i64 2156713205}
!152 = !{i64 2156635337}
!153 = !{i64 2156635810}
!154 = !{i64 2156636650}
!155 = !{i64 2156659812}
!156 = !{i64 2156660369}
!157 = !{i64 2156661241}
!158 = !{i64 2156678570}
!159 = !{i64 2156679255}
!160 = !{i64 2156679663}
!161 = !{i64 2156681631}
!162 = !{i64 2156682026}
!163 = !{i64 2156682443}
!164 = !{i64 2156683889}
!165 = !{i64 2156684944}
!166 = !{i64 2156686348}
!167 = !{i64 2156687463}
!168 = !{i64 2156687897}
!169 = !{i64 2156688661}
!170 = !{i64 2156689611}
!171 = !{i64 2156690484}
!172 = !{i64 2156691434}
!173 = !{i64 2156692307}
!174 = !{i64 2156693257}
!175 = !{i64 2156694130}
!176 = !{i64 2156695080}
!177 = !{i64 2156695989}
!178 = !{i64 2156696641}
!179 = !{i64 2156697044}
!180 = !{i64 2156697491}
!181 = !{i64 2156698001}
!182 = !{i64 2156698395}
!183 = !{i64 2156698899}
!184 = !{i64 2156644720}
!185 = !{i64 2156645476}
!186 = !{i64 2156646038}
!187 = !{i64 2156667995}
!188 = !{i64 2156668669}
!189 = !{i64 2156669119}
!190 = !{i64 2156664735}
!191 = !{i64 2156664956}
!192 = !{i64 2156666354}
!193 = !{i64 2156667409}
!194 = !{i64 2156670028}
!195 = !{i64 2156670284}
!196 = !{i64 2156632221}
!197 = !{i64 2156632510}
!198 = !{i64 2156633134}
!199 = !{i64 2156633420}
!200 = !{i64 2156633788}
!201 = !{i64 2156634160}
