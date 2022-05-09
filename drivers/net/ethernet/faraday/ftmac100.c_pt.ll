; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/faraday/ftmac100.c_pt.bc'
source_filename = "../drivers/net/ethernet/faraday/ftmac100.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.ftmac100_rxdes = type { i32, i32, i32, i32 }
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
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.ftmac100_descs = type { [128 x %struct.ftmac100_rxdes], [16 x %struct.ftmac100_txdes] }
%struct.ftmac100_txdes = type { i32, i32, i32, i32 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.ifreq = type { %union.anon.104, %union.anon.105 }
%union.anon.104 = type { [16 x i8] }
%union.anon.105 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.ftmac100 = type { ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, %struct.spinlock, ptr, ptr, %struct.napi_struct, %struct.mii_if_info }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }

@__initcall__kmod_ftmac100__341_1180_ftmac100_driver_init6 = internal global ptr @ftmac100_driver_init, section ".initcall6.init", align 4
@ftmac100_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ftmac100_probe, ptr @ftmac100_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ftmac100_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ftmac100_driver_exit = internal global ptr @ftmac100_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author342 = internal constant [56 x i8] c"ftmac100.author=Po-Yu Chuang <ratbert@faraday-tech.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description343 = internal constant [37 x i8] c"ftmac100.description=FTMAC100 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file344 = internal constant [52 x i8] c"ftmac100.file=drivers/net/ethernet/faraday/ftmac100\00", section ".modinfo", align 1
@__UNIQUE_ID_license345 = internal constant [21 x i8] c"ftmac100.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ftmac100\00", [23 x i8] zeroinitializer }, align 32
@ftmac100_of_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"andestech,atmac100\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ftmac100_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @ftmac100_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ftmac100_nway_reset, ptr @ftmac100_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ftmac100_get_link_ksettings, ptr @ftmac100_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@ftmac100_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @ftmac100_open, ptr @ftmac100_stop, ptr @ftmac100_hard_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @ftmac100_do_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ftmac100_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&priv->tx_lock\00", [17 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@ftmac100_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1095, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Could not reserve memory region\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ftmac100_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/ethernet/faraday/ftmac100.c\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ftmac100_probe._entry_ptr = internal global ptr @ftmac100_probe._entry, section ".printk_index", align 4
@ftmac100_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1102, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to ioremap ethernet registers\0A\00", [58 x i8] zeroinitializer }, align 32
@ftmac100_probe._entry_ptr.9 = internal global ptr @ftmac100_probe._entry.7, section ".printk_index", align 4
@ftmac100_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 1120, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to register netdev\0A\00", [37 x i8] zeroinitializer }, align 32
@ftmac100_probe._entry_ptr.12 = internal global ptr @ftmac100_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"irq %d, mapped at %p\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"generated random MAC address %pM\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to allocate buffers\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to request irq %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to allocate rx page\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to map rx page\0A\00", [41 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"software reset failed\0A\00", [41 x i8] zeroinitializer }, align 32
@ftmac100_hard_start_xmit.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.4, ptr @.str.22, i8 0, i8 -4, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ftmac100_hard_start_xmit\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tx packet too big\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"map socket buffer failed\0A\00", [38 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[ISR] = 0x%x: %s%s%s%s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NORXBUF \00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RPKT_LOST \00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AHB_ERR \00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PHYSTS_CHG\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx skb alloc failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rx err\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rx crc err\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rx frame too long\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rx runt\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rx odd nibble\0A\00", [17 x i8] zeroinitializer }, align 32
@ftmac100_rx_drop_packet.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.4, ptr @.str.39, i8 0, i8 92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ftmac100_rx_drop_packet\00", [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"drop packet %p\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mdio read timed out\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mdio write timed out\0A\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.42 = private unnamed_addr constant [16 x i8] c"ftmac100_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1168, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1172, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [16 x i8] c"ftmac100_of_ids\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1163, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant [21 x i8] c"ftmac100_ethtool_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 843, i32 33 }
@___asan_gen_.54 = private unnamed_addr constant [20 x i8] c"ftmac100_netdev_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1040, i32 36 }
@___asan_gen_.57 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1086, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1095, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1102, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1120, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1124, i32 22 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1128, i32 23 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 954, i32 22 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 960, i32 22 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 668, i32 23 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 675, i32 23 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 137, i32 21 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1010, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1021, i32 23 }
@___asan_gen_.127 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 326, i32 6 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 913, i32 24 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 914, i32 41 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 914, i32 54 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 915, i32 43 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 916, i32 41 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 917, i32 44 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 414, i32 23 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 326, i32 24 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 334, i32 24 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 342, i32 24 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 348, i32 24 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 354, i32 24 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 370, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 772, i32 21 }
@___asan_gen_.174 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.175 = private constant [43 x i8] c"../drivers/net/ethernet/faraday/ftmac100.c\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 801, i32 21 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_author342, ptr @__UNIQUE_ID_description343, ptr @__UNIQUE_ID_file344, ptr @__UNIQUE_ID_license345, ptr @__exitcall_ftmac100_driver_exit, ptr @__initcall__kmod_ftmac100__341_1180_ftmac100_driver_init6, ptr @ftmac100_driver_exit, ptr @ftmac100_probe._entry, ptr @ftmac100_probe._entry.10, ptr @ftmac100_probe._entry.7, ptr @ftmac100_probe._entry_ptr, ptr @ftmac100_probe._entry_ptr.12, ptr @ftmac100_probe._entry_ptr.9, ptr @ftmac100_driver, ptr @.str, ptr @ftmac100_of_ids, ptr @ftmac100_ethtool_ops, ptr @ftmac100_netdev_ops, ptr @ftmac100_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftmac100_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftmac100_of_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftmac100_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftmac100_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftmac100_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftmac100_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftmac100_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftmac100_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ftmac100_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ftmac100_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ftmac100_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @ftmac100_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftmac100_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call ptr @alloc_etherdev_mqs(i32 noundef 344, i32 noundef 1, i32 noundef 1) #9
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %parent, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 44
  %1 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ftmac100_ethtool_ops, ptr %ethtool_ops, align 16
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ftmac100_netdev_ops, ptr %netdev_ops, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call4, i32 2304
  %netdev10 = getelementptr i8, ptr %call4, i32 2384
  %4 = ptrtoint ptr %netdev10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call4, ptr %netdev10, align 8
  %dev12 = getelementptr i8, ptr %call4, i32 2388
  %5 = ptrtoint ptr %dev12 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev12, align 4
  %tx_lock = getelementptr i8, ptr %call4, i32 2340
  tail call void @__raw_spin_lock_init(ptr noundef %tx_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ftmac100_probe.__key, i16 noundef signext 3) #9
  %napi = getelementptr i8, ptr %call4, i32 2392
  tail call void @netif_napi_add(ptr noundef nonnull %call4, ptr noundef %napi, ptr noundef nonnull @ftmac100_poll, i32 noundef 64) #9
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %7
  %add.i = add i32 %sub.i, %9
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end7.dev_name.exit_crit_edge

if.end7.dev_name.exit_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end7.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %13, %if.end.i ], [ %11, %if.end7.dev_name.exit_crit_edge ]
  %call17 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %7, i32 noundef %add.i, ptr noundef %retval.0.i, i32 noundef 0) #9
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call17, ptr %add.ptr.i, align 8
  %tobool20.not = icmp eq ptr %call17, null
  br i1 %tobool20.not, label %do.end24, label %if.end26

do.end24:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #12
  br label %err_req_mem

if.end26:                                         ; preds = %dev_name.exit
  %15 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call, align 4
  %17 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %end.i, align 4
  %sub.i117 = sub i32 1, %16
  %add.i118 = add i32 %sub.i117, %18
  %call29 = tail call ptr @ioremap(i32 noundef %16, i32 noundef %add.i118) #9
  %base = getelementptr i8, ptr %call4, i32 2308
  %19 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call29, ptr %base, align 4
  %tobool31.not = icmp eq ptr %call29, null
  br i1 %tobool31.not, label %do.end35, label %if.end37

do.end35:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #12
  br label %err_ioremap

if.end37:                                         ; preds = %if.end26
  %irq38 = getelementptr i8, ptr %call4, i32 2312
  %20 = ptrtoint ptr %irq38 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call1, ptr %irq38, align 8
  %mii = getelementptr i8, ptr %call4, i32 2616
  %21 = ptrtoint ptr %mii to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %mii, align 8
  %phy_id_mask = getelementptr i8, ptr %call4, i32 2624
  %22 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 31, ptr %phy_id_mask, align 8
  %reg_num_mask = getelementptr i8, ptr %call4, i32 2628
  %23 = ptrtoint ptr %reg_num_mask to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 31, ptr %reg_num_mask, align 4
  %dev42 = getelementptr i8, ptr %call4, i32 2636
  %24 = ptrtoint ptr %dev42 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call4, ptr %dev42, align 4
  %mdio_read = getelementptr i8, ptr %call4, i32 2640
  %25 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @ftmac100_mdio_read, ptr %mdio_read, align 8
  %mdio_write = getelementptr i8, ptr %call4, i32 2644
  %26 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @ftmac100_mdio_write, ptr %mdio_write, align 4
  %call45 = tail call i32 @register_netdev(ptr noundef nonnull %call4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end52, label %do.end50

do.end50:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #12
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  tail call void @iounmap(ptr noundef %28) #9
  br label %err_ioremap

if.end52:                                         ; preds = %if.end37
  %29 = ptrtoint ptr %irq38 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq38, align 8
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %call4, ptr noundef nonnull @.str.13, i32 noundef %30, ptr noundef %32) #12
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 86
  %33 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_addr, align 64
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %37 = and i32 %36, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.i.not.i = icmp eq i32 %37, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end52.if.then56_crit_edge

if.end52.if.then56_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then56

is_valid_ether_addr.exit:                         ; preds = %if.end52
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 4
  %38 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %39 to i32
  %or.i.i = or i32 %36, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.then56_crit_edge, label %is_valid_ether_addr.exit.cleanup_crit_edge

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

is_valid_ether_addr.exit.if.then56_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then56

if.then56:                                        ; preds = %is_valid_ether_addr.exit.if.then56_crit_edge, %if.end52.if.then56_crit_edge
  tail call fastcc void @eth_hw_addr_random(ptr noundef nonnull %call4)
  %40 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_addr, align 64
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %call4, ptr noundef nonnull @.str.14, ptr noundef %41) #12
  br label %cleanup

err_ioremap:                                      ; preds = %do.end50, %do.end35
  %err.0 = phi i32 [ %call45, %do.end50 ], [ -5, %do.end35 ]
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr.i, align 8
  %call61 = tail call i32 @release_resource(ptr noundef %43) #9
  br label %err_req_mem

err_req_mem:                                      ; preds = %err_ioremap, %do.end24
  %err.1 = phi i32 [ %err.0, %err_ioremap ], [ -12, %do.end24 ]
  tail call void @__netif_napi_del(ptr noundef %napi) #9
  tail call void @synchronize_net() #9
  tail call void @free_netdev(ptr noundef nonnull %call4) #9
  br label %cleanup

cleanup:                                          ; preds = %err_req_mem, %if.then56, %is_valid_ether_addr.exit.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ 0, %if.then56 ], [ 0, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ %err.1, %err_req_mem ], [ -12, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftmac100_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void @unregister_netdev(ptr noundef %1) #9
  %base = getelementptr i8, ptr %1, i32 2308
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  tail call void @iounmap(ptr noundef %3) #9
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %call2 = tail call i32 @release_resource(ptr noundef %5) #9
  %napi = getelementptr i8, ptr %1, i32 2392
  tail call void @__netif_napi_del(ptr noundef %napi) #9
  tail call void @synchronize_net() #9
  tail call void @free_netdev(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftmac100_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -88
  %netdev1 = getelementptr i8, ptr %napi, i32 -8
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 8
  %base = getelementptr i8, ptr %napi, i32 -84
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !107
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %and = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %do.body.preheader

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

do.body.preheader:                                ; preds = %entry
  %descs.i.i.i = getelementptr i8, ptr %napi, i32 -76
  %rx_pointer.i.i.i = getelementptr i8, ptr %napi, i32 -68
  %dev.i = getelementptr i8, ptr %napi, i32 -4
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %do.body.preheader
  %rx.0 = phi i32 [ %rx.1.ph, %land.rhs.do.body_crit_edge ], [ 0, %do.body.preheader ]
  %6 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev1, align 8
  %8 = ptrtoint ptr %descs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %descs.i.i.i, align 4
  %10 = ptrtoint ptr %rx_pointer.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_pointer.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [128 x %struct.ftmac100_rxdes], ptr %9, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i.i, align 16
  %and.i15.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i15.i.i)
  %tobool.i.not16.i.i = icmp eq i32 %and.i15.i.i, 0
  br i1 %tobool.i.not16.i.i, label %do.body.while.body.i.i_crit_edge, label %do.body.if.end8_crit_edge

do.body.if.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

do.body.while.body.i.i_crit_edge:                 ; preds = %do.body
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %do.body.while.body.i.i_crit_edge
  %14 = phi i32 [ %21, %if.end.i.i.while.body.i.i_crit_edge ], [ %13, %do.body.while.body.i.i_crit_edge ]
  %rxdes.017.i.i = phi ptr [ %arrayidx.i14.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %arrayidx.i.i.i, %do.body.while.body.i.i_crit_edge ]
  %and.i9.i.i = and i32 %14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9.i.i)
  %tobool.i10.not.i.i = icmp eq i32 %and.i9.i.i, 0
  br i1 %tobool.i10.not.i.i, label %if.end.i.i, label %ftmac100_rx_locate_first_segment.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %15 = ptrtoint ptr %rxdes.017.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 128, ptr %rxdes.017.i.i, align 16
  %16 = ptrtoint ptr %rx_pointer.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_pointer.i.i.i, align 4
  %add.i.i.i.i = add i32 %17, 1
  %and.i.i.i.i = and i32 %add.i.i.i.i, 127
  store i32 %and.i.i.i.i, ptr %rx_pointer.i.i.i, align 4
  %18 = ptrtoint ptr %descs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %descs.i.i.i, align 4
  %arrayidx.i14.i.i = getelementptr [128 x %struct.ftmac100_rxdes], ptr %19, i32 0, i32 %and.i.i.i.i
  %20 = ptrtoint ptr %arrayidx.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i14.i.i, align 16
  %and.i.i.i = and i32 %21, 128
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.if.end8_crit_edge

if.end.i.i.if.end8_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

ftmac100_rx_locate_first_segment.exit.i:          ; preds = %while.body.i.i
  %tobool.not.i = icmp eq ptr %rxdes.017.i.i, null
  br i1 %tobool.not.i, label %ftmac100_rx_locate_first_segment.exit.i.if.end8_crit_edge, label %if.end.i

ftmac100_rx_locate_first_segment.exit.i.if.end8_crit_edge: ; preds = %ftmac100_rx_locate_first_segment.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end.i:                                         ; preds = %ftmac100_rx_locate_first_segment.exit.i
  %22 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %netdev1, align 8
  %24 = ptrtoint ptr %rxdes.017.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rxdes.017.i.i, align 16
  %and.i.i107.i = and i32 %25, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i107.i)
  %tobool.i.i.i = icmp ne i32 %and.i.i107.i, 0
  br i1 %tobool.i.i.i, label %if.then.i.i, label %if.end.i.if.end6.i.i_crit_edge, !prof !109

if.end.i.if.end6.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %call3.i.i = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.then.i.i.if.end.i108.i_crit_edge, label %if.then5.i.i

if.then.i.i.if.end.i108.i_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i108.i

if.then5.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %23, ptr noundef nonnull @.str.33) #12
  br label %if.end.i108.i

if.end.i108.i:                                    ; preds = %if.then5.i.i, %if.then.i.i.if.end.i108.i_crit_edge
  %rx_errors.i.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 36, i32 4
  %26 = ptrtoint ptr %rx_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_errors.i.i, align 8
  %inc.i.i = add i32 %27, 1
  store i32 %inc.i.i, ptr %rx_errors.i.i, align 8
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.end.i108.i, %if.end.i.if.end6.i.i_crit_edge
  %28 = ptrtoint ptr %rxdes.017.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rxdes.017.i.i, align 16
  %and.i85.i.i = and i32 %29, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i85.i.i)
  %tobool.i86.not.i.i = icmp eq i32 %and.i85.i.i, 0
  br i1 %tobool.i86.not.i.i, label %if.end6.i.i.if.end21.i.i_crit_edge, label %if.then14.i.i, !prof !110

if.end6.i.i.if.end21.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i.i

if.then14.i.i:                                    ; preds = %if.end6.i.i
  %call15.i.i = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.then14.i.i.if.end18.i.i_crit_edge, label %if.then17.i.i

if.then14.i.i.if.end18.i.i_crit_edge:             ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i.i

if.then17.i.i:                                    ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %23, ptr noundef nonnull @.str.34) #12
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.then17.i.i, %if.then14.i.i.if.end18.i.i_crit_edge
  %rx_crc_errors.i.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 36, i32 12
  %30 = ptrtoint ptr %rx_crc_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_crc_errors.i.i, align 8
  %inc20.i.i = add i32 %31, 1
  store i32 %inc20.i.i, ptr %rx_crc_errors.i.i, align 8
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %if.end18.i.i, %if.end6.i.i.if.end21.i.i_crit_edge
  %error.1.off0.i.i = phi i1 [ true, %if.end18.i.i ], [ %tobool.i.i.i, %if.end6.i.i.if.end21.i.i_crit_edge ]
  %32 = ptrtoint ptr %rxdes.017.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rxdes.017.i.i, align 16
  %and.i87.i.i = and i32 %33, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i87.i.i)
  %tobool.i88.not.i.i = icmp eq i32 %and.i87.i.i, 0
  br i1 %tobool.i88.not.i.i, label %if.else.i.i, label %if.then29.i.i, !prof !110

if.then29.i.i:                                    ; preds = %if.end21.i.i
  %call30.i.i = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i)
  %tobool31.not.i.i = icmp eq i32 %call30.i.i, 0
  br i1 %tobool31.not.i.i, label %if.then29.i.i.ftmac100_rx_packet_error.exit.thread.i_crit_edge, label %if.then29.i.i.if.end69.sink.split.sink.split.i.i_crit_edge

if.then29.i.i.if.end69.sink.split.sink.split.i.i_crit_edge: ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69.sink.split.sink.split.i.i

if.then29.i.i.ftmac100_rx_packet_error.exit.thread.i_crit_edge: ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ftmac100_rx_packet_error.exit.thread.i

if.else.i.i:                                      ; preds = %if.end21.i.i
  %and.i89.i.i = and i32 %33, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i89.i.i)
  %tobool.i90.not.i.i = icmp eq i32 %and.i89.i.i, 0
  br i1 %tobool.i90.not.i.i, label %if.else51.i.i, label %if.then43.i.i, !prof !110

if.then43.i.i:                                    ; preds = %if.else.i.i
  %call44.i.i = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i.i)
  %tobool45.not.i.i = icmp eq i32 %call44.i.i, 0
  br i1 %tobool45.not.i.i, label %if.then43.i.i.ftmac100_rx_packet_error.exit.thread.i_crit_edge, label %if.then43.i.i.if.end69.sink.split.sink.split.i.i_crit_edge

if.then43.i.i.if.end69.sink.split.sink.split.i.i_crit_edge: ; preds = %if.then43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69.sink.split.sink.split.i.i

if.then43.i.i.ftmac100_rx_packet_error.exit.thread.i_crit_edge: ; preds = %if.then43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ftmac100_rx_packet_error.exit.thread.i

if.else51.i.i:                                    ; preds = %if.else.i.i
  %and.i91.i.i = and i32 %33, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i91.i.i)
  %tobool.i92.not.i.i = icmp eq i32 %and.i91.i.i, 0
  br i1 %tobool.i92.not.i.i, label %ftmac100_rx_packet_error.exit.i, label %if.then59.i.i, !prof !110

if.then59.i.i:                                    ; preds = %if.else51.i.i
  %call60.i.i = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i.i)
  %tobool61.not.i.i = icmp eq i32 %call60.i.i, 0
  br i1 %tobool61.not.i.i, label %if.then59.i.i.ftmac100_rx_packet_error.exit.thread.i_crit_edge, label %if.then59.i.i.if.end69.sink.split.sink.split.i.i_crit_edge

if.then59.i.i.if.end69.sink.split.sink.split.i.i_crit_edge: ; preds = %if.then59.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69.sink.split.sink.split.i.i

if.then59.i.i.ftmac100_rx_packet_error.exit.thread.i_crit_edge: ; preds = %if.then59.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ftmac100_rx_packet_error.exit.thread.i

if.end69.sink.split.sink.split.i.i:               ; preds = %if.then59.i.i.if.end69.sink.split.sink.split.i.i_crit_edge, %if.then43.i.i.if.end69.sink.split.sink.split.i.i_crit_edge, %if.then29.i.i.if.end69.sink.split.sink.split.i.i_crit_edge
  %.str.37.sink.i.i = phi ptr [ @.str.35, %if.then29.i.i.if.end69.sink.split.sink.split.i.i_crit_edge ], [ @.str.36, %if.then43.i.i.if.end69.sink.split.sink.split.i.i_crit_edge ], [ @.str.37, %if.then59.i.i.if.end69.sink.split.sink.split.i.i_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %23, ptr noundef nonnull %.str.37.sink.i.i) #12
  br label %ftmac100_rx_packet_error.exit.thread.i

ftmac100_rx_packet_error.exit.thread.i:           ; preds = %if.end69.sink.split.sink.split.i.i, %if.then59.i.i.ftmac100_rx_packet_error.exit.thread.i_crit_edge, %if.then43.i.i.ftmac100_rx_packet_error.exit.thread.i_crit_edge, %if.then29.i.i.ftmac100_rx_packet_error.exit.thread.i_crit_edge
  %rx_length_errors.i.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 36, i32 10
  %34 = ptrtoint ptr %rx_length_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_length_errors.i.i, align 8
  %inc50.i.i = add i32 %35, 1
  store i32 %inc50.i.i, ptr %rx_length_errors.i.i, align 8
  br label %if.then5.i

ftmac100_rx_packet_error.exit.i:                  ; preds = %if.else51.i.i
  br i1 %error.1.off0.i.i, label %ftmac100_rx_packet_error.exit.i.if.then5.i_crit_edge, label %if.end6.i, !prof !109

ftmac100_rx_packet_error.exit.i.if.then5.i_crit_edge: ; preds = %ftmac100_rx_packet_error.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5.i

if.then5.i:                                       ; preds = %ftmac100_rx_packet_error.exit.i.if.then5.i_crit_edge, %ftmac100_rx_packet_error.exit.thread.i
  tail call fastcc void @ftmac100_rx_drop_packet(ptr noundef %add.ptr) #9
  br label %land.rhs

if.end6.i:                                        ; preds = %ftmac100_rx_packet_error.exit.i
  %and.i.i = and i32 %33, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %do.body18.i, label %do.end24.i, !prof !109

do.body18.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/faraday/ftmac100.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 408, 0\0A.popsection", ""() #9, !srcloc !111
  unreachable

do.end24.i:                                       ; preds = %if.end6.i
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %7, i32 noundef 130, i32 noundef 2592) #9
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then35.i, label %if.end40.i

if.then35.i:                                      ; preds = %do.end24.i
  %call36.i = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.then35.i.if.end39.i_crit_edge, label %if.then38.i

if.then35.i.if.end39.i_crit_edge:                 ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.i

if.then38.i:                                      ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.32) #12
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then38.i, %if.then35.i.if.end39.i_crit_edge
  %36 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %netdev1, align 8
  %38 = ptrtoint ptr %descs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %descs.i.i.i, align 4
  %40 = ptrtoint ptr %rx_pointer.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_pointer.i.i.i, align 4
  %arrayidx.i.i = getelementptr [128 x %struct.ftmac100_rxdes], ptr %39, i32 0, i32 %41
  %call2.i = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i80 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i80, label %if.end39.i.do.body12.i_crit_edge, label %do.body3.i

if.end39.i.do.body12.i_crit_edge:                 ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body12.i

do.body3.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ftmac100_rx_drop_packet.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ftmac100_poll, %if.then8.i)) #9
          to label %do.body12.i [label %if.then8.i], !srcloc !112

if.then8.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ftmac100_rx_drop_packet.__UNIQUE_ID_ddebug339, ptr noundef %37, ptr noundef nonnull @.str.39, ptr noundef %arrayidx.i.i) #9
  br label %do.body12.i

do.body12.i:                                      ; preds = %land.rhs.i.do.body12.i_crit_edge, %if.then8.i, %do.body3.i, %if.end39.i.do.body12.i_crit_edge
  %rxdes.0.i = phi ptr [ %arrayidx.i34.i, %land.rhs.i.do.body12.i_crit_edge ], [ %arrayidx.i.i, %if.then8.i ], [ %arrayidx.i.i, %do.body3.i ], [ %arrayidx.i.i, %if.end39.i.do.body12.i_crit_edge ]
  %42 = ptrtoint ptr %rxdes.0.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rxdes.0.i, align 16
  %and.i.i81 = and i32 %43, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i81)
  %tobool.i.not.i82 = icmp eq i32 %and.i.i81, 0
  %44 = ptrtoint ptr %rxdes.0.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 128, ptr %rxdes.0.i, align 16
  %45 = ptrtoint ptr %rx_pointer.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rx_pointer.i.i.i, align 4
  %add.i.i.i83 = add i32 %46, 1
  %and.i.i.i84 = and i32 %add.i.i.i83, 127
  store i32 %and.i.i.i84, ptr %rx_pointer.i.i.i, align 4
  br i1 %tobool.i.not.i82, label %land.rhs.i, label %do.body12.i.ftmac100_rx_drop_packet.exit_crit_edge

do.body12.i.ftmac100_rx_drop_packet.exit_crit_edge: ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ftmac100_rx_drop_packet.exit

land.rhs.i:                                       ; preds = %do.body12.i
  %47 = ptrtoint ptr %descs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %descs.i.i.i, align 4
  %arrayidx.i34.i = getelementptr [128 x %struct.ftmac100_rxdes], ptr %48, i32 0, i32 %and.i.i.i84
  %49 = ptrtoint ptr %arrayidx.i34.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i34.i, align 16
  %and.i35.i = and i32 %50, 128
  %tobool.i36.not.i = icmp eq i32 %and.i35.i, 0
  br i1 %tobool.i36.not.i, label %land.rhs.i.do.body12.i_crit_edge, label %land.rhs.i.ftmac100_rx_drop_packet.exit_crit_edge

land.rhs.i.ftmac100_rx_drop_packet.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ftmac100_rx_drop_packet.exit

land.rhs.i.do.body12.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body12.i

ftmac100_rx_drop_packet.exit:                     ; preds = %land.rhs.i.ftmac100_rx_drop_packet.exit_crit_edge, %do.body12.i.ftmac100_rx_drop_packet.exit_crit_edge
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 36, i32 6
  %51 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx_dropped.i, align 8
  %inc.i85 = add i32 %52, 1
  store i32 %inc.i85, ptr %rx_dropped.i, align 8
  br label %land.rhs

if.end40.i:                                       ; preds = %do.end24.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %53 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %54, i32 2
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %55 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %56, i32 2
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %57 = ptrtoint ptr %rxdes.017.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rxdes.017.i.i, align 16
  %and.i109.i = and i32 %58, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i109.i)
  %tobool.i110.not.i = icmp eq i32 %and.i109.i, 0
  br i1 %tobool.i110.not.i, label %if.end40.i.if.end49.i_crit_edge, label %if.then48.i, !prof !110

if.end40.i.if.end49.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.i

if.then48.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  %multicast.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 36, i32 8
  %59 = ptrtoint ptr %multicast.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %multicast.i, align 8
  %inc.i = add i32 %60, 1
  store i32 %inc.i, ptr %multicast.i, align 8
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then48.i, %if.end40.i.if.end49.i_crit_edge
  %rxdes2.i.i = getelementptr inbounds %struct.ftmac100_rxdes, ptr %rxdes.017.i.i, i32 0, i32 2
  %61 = ptrtoint ptr %rxdes2.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rxdes2.i.i, align 8
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #9
  %64 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %65, i32 noundef %63, i32 noundef 2044, i32 noundef 2, i32 noundef 0) #9
  %66 = ptrtoint ptr %rxdes.017.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rxdes.017.i.i, align 16
  %68 = and i32 %67, -16318464
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #9
  %rxdes3.i.i = getelementptr inbounds %struct.ftmac100_rxdes, ptr %rxdes.017.i.i, i32 0, i32 3
  %70 = ptrtoint ptr %rxdes3.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rxdes3.i.i, align 4
  %72 = inttoptr i32 %71 to ptr
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 17
  %73 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %end.i.i.i.i, align 4
  %frags.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %74, i32 0, i32 12
  %75 = ptrtoint ptr %frags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %frags.i.i.i, align 4
  %bv_offset.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %74, i32 0, i32 12, i32 0, i32 2
  %76 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %bv_offset.i.i.i, align 4
  %bv_len.i.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %74, i32 0, i32 12, i32 0, i32 1
  %77 = ptrtoint ptr %bv_len.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %69, ptr %bv_len.i.i.i.i, align 4
  %78 = getelementptr inbounds %struct.page, ptr %72, i32 0, i32 1
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %78, align 4
  %and.i.i.i111.i = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i111.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i111.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end49.i._compound_head.exit.i.i.i_crit_edge, label %if.then.i.i.i.i, !prof !110

if.end49.i._compound_head.exit.i.i.i_crit_edge:   ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i.i = add i32 %80, -1
  %.pre.i = inttoptr i32 %sub.i.i.i.i to ptr
  br label %_compound_head.exit.i.i.i

_compound_head.exit.i.i.i:                        ; preds = %if.then.i.i.i.i, %if.end49.i._compound_head.exit.i.i.i_crit_edge
  %.pre-phi.i = phi ptr [ %72, %if.end49.i._compound_head.exit.i.i.i_crit_edge ], [ %.pre.i, %if.then.i.i.i.i ]
  %81 = getelementptr inbounds %struct.page, ptr %.pre-phi.i, i32 0, i32 1
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %84 = ptrtoint ptr %83 to i32
  %and.i1.i.i.i = and i32 %84, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i1.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %_compound_head.exit.i.i.i.skb_fill_page_desc.exit.i_crit_edge, label %if.then.i.i112.i

_compound_head.exit.i.i.i.skb_fill_page_desc.exit.i_crit_edge: ; preds = %_compound_head.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_fill_page_desc.exit.i

if.then.i.i112.i:                                 ; preds = %_compound_head.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %pfmemalloc.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 12
  %85 = ptrtoint ptr %pfmemalloc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %bf.load.i.i.i = load i8, ptr %pfmemalloc.i.i.i, align 2
  %bf.set.i.i.i = or i8 %bf.load.i.i.i, 2
  store i8 %bf.set.i.i.i, ptr %pfmemalloc.i.i.i, align 2
  br label %skb_fill_page_desc.exit.i

skb_fill_page_desc.exit.i:                        ; preds = %if.then.i.i112.i, %_compound_head.exit.i.i.i.skb_fill_page_desc.exit.i_crit_edge
  %86 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %end.i.i.i.i, align 4
  %nr_frags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %nr_frags.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %nr_frags.i.i, align 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %89 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %len.i, align 4
  %add.i = add i32 %90, %69
  store i32 %add.i, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 7
  %91 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %data_len.i, align 8
  %add53.i = add i32 %92, %69
  store i32 %add53.i, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %69)
  %cmp.i = icmp ugt i32 %69, 128
  br i1 %cmp.i, label %if.then54.i, label %skb_fill_page_desc.exit.i.if.end58.i_crit_edge

skb_fill_page_desc.exit.i.if.end58.i_crit_edge:   ; preds = %skb_fill_page_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.i

if.then54.i:                                      ; preds = %skb_fill_page_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 20
  %93 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %truesize.i, align 8
  %add55.i = add i32 %94, 4096
  store i32 %add55.i, ptr %truesize.i, align 8
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then54.i, %skb_fill_page_desc.exit.i.if.end58.i_crit_edge
  %.sink.i = phi i32 [ 14, %if.then54.i ], [ %69, %skb_fill_page_desc.exit.i.if.end58.i_crit_edge ]
  %call57.i = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %call.i.i.i, i32 noundef %.sink.i) #9
  %call59.i = tail call fastcc i32 @ftmac100_alloc_rx_page(ptr noundef %add.ptr, ptr noundef nonnull %rxdes.017.i.i, i32 noundef 2592) #9
  %95 = ptrtoint ptr %rx_pointer.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rx_pointer.i.i.i, align 4
  %add.i.i.i = add i32 %96, 1
  %and.i.i113.i = and i32 %add.i.i.i, 127
  store i32 %and.i.i113.i, ptr %rx_pointer.i.i.i, align 4
  %call60.i = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i.i.i, ptr noundef %7) #9
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 18
  %97 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %call60.i, ptr %protocol.i, align 8
  %stats61.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 36
  %98 = ptrtoint ptr %stats61.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %stats61.i, align 8
  %inc62.i = add i32 %99, 1
  store i32 %inc62.i, ptr %stats61.i, align 8
  %100 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %len.i, align 4
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 36, i32 2
  %102 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %rx_bytes.i, align 8
  %add65.i = add i32 %103, %101
  store i32 %add65.i, ptr %rx_bytes.i, align 8
  %call66.i = tail call i32 @netif_receive_skb(ptr noundef nonnull %call.i.i.i) #9
  %inc67.i = add i32 %rx.0, 1
  br label %land.rhs

land.rhs:                                         ; preds = %if.end58.i, %ftmac100_rx_drop_packet.exit, %if.then5.i
  %rx.1.ph = phi i32 [ %inc67.i, %if.end58.i ], [ %rx.0, %ftmac100_rx_drop_packet.exit ], [ %rx.0, %if.then5.i ]
  %cmp = icmp slt i32 %rx.1.ph, %budget
  br i1 %cmp, label %land.rhs.do.body_crit_edge, label %land.lhs.true.critedge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

land.lhs.true.critedge:                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_cmp4(i32 %rx.1.ph, i32 %budget)
  %cmp6 = icmp ne i32 %rx.1.ph, %budget
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true.critedge, %ftmac100_rx_locate_first_segment.exit.i.if.end8_crit_edge, %if.end.i.i.if.end8_crit_edge, %do.body.if.end8_crit_edge, %entry.if.end8_crit_edge
  %rx.2 = phi i32 [ 0, %entry.if.end8_crit_edge ], [ %rx.1.ph, %land.lhs.true.critedge ], [ %rx.0, %if.end.i.i.if.end8_crit_edge ], [ %rx.0, %do.body.if.end8_crit_edge ], [ %rx.0, %ftmac100_rx_locate_first_segment.exit.i.if.end8_crit_edge ]
  %completed.1.off0 = phi i1 [ true, %entry.if.end8_crit_edge ], [ %cmp6, %land.lhs.true.critedge ], [ true, %if.end.i.i.if.end8_crit_edge ], [ true, %do.body.if.end8_crit_edge ], [ true, %ftmac100_rx_locate_first_segment.exit.i.if.end8_crit_edge ]
  %and9 = and i32 %5, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end12_crit_edge, label %if.then11

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then11:                                        ; preds = %if.end8
  %descs.i.i.i70 = getelementptr i8, ptr %napi, i32 -76
  %tx_pending.i.i = getelementptr i8, ptr %napi, i32 -56
  %104 = ptrtoint ptr %tx_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %tx_pending.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp.i2.i = icmp eq i32 %105, 0
  br i1 %cmp.i2.i, label %if.then11.if.end12_crit_edge, label %if.end.i.lr.ph.i

if.then11.if.end12_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end.i.lr.ph.i:                                 ; preds = %if.then11
  %tx_clean_pointer.i.i.i = getelementptr i8, ptr %napi, i32 -64
  %dev.i.i = getelementptr i8, ptr %napi, i32 -4
  %tx_lock.i.i = getelementptr i8, ptr %napi, i32 -52
  br label %if.end.i.i74

if.end.i.i74:                                     ; preds = %ftmac100_tx_complete_packet.exit.i.if.end.i.i74_crit_edge, %if.end.i.lr.ph.i
  %106 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %netdev1, align 8
  %108 = ptrtoint ptr %descs.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %descs.i.i.i70, align 4
  %110 = ptrtoint ptr %tx_clean_pointer.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %tx_clean_pointer.i.i.i, align 8
  %arrayidx.i.i.i71 = getelementptr %struct.ftmac100_descs, ptr %109, i32 0, i32 1, i32 %111
  %112 = ptrtoint ptr %arrayidx.i.i.i71 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx.i.i.i71, align 16
  %and.i.i.i72 = and i32 %113, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i72)
  %tobool.i.not.i.i73 = icmp eq i32 %and.i.i.i72, 0
  br i1 %tobool.i.not.i.i73, label %if.end4.i.i, label %if.end.i.i74.if.end12_crit_edge

if.end.i.i74.if.end12_crit_edge:                  ; preds = %if.end.i.i74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end4.i.i:                                      ; preds = %if.end.i.i74
  %txdes3.i.i.i = getelementptr %struct.ftmac100_descs, ptr %109, i32 0, i32 1, i32 %111, i32 3
  %114 = ptrtoint ptr %txdes3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %txdes3.i.i.i, align 4
  %116 = inttoptr i32 %115 to ptr
  %txdes2.i.i.i = getelementptr %struct.ftmac100_descs, ptr %109, i32 0, i32 1, i32 %111, i32 2
  %117 = ptrtoint ptr %txdes2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %txdes2.i.i.i, align 8
  %119 = tail call i32 @llvm.bswap.i32(i32 %118) #9
  %120 = and i32 %113, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %.not.i.i = icmp eq i32 %120, 0
  br i1 %.not.i.i, label %if.else.i.i76, label %if.then10.i.i, !prof !113

if.then10.i.i:                                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %tx_aborted_errors.i.i = getelementptr inbounds %struct.net_device, ptr %107, i32 0, i32 36, i32 16
  %121 = ptrtoint ptr %tx_aborted_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %tx_aborted_errors.i.i, align 8
  %inc.i.i75 = add i32 %122, 1
  store i32 %inc.i.i75, ptr %tx_aborted_errors.i.i, align 8
  br label %ftmac100_tx_complete_packet.exit.i

if.else.i.i76:                                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %tx_packets.i.i = getelementptr inbounds %struct.net_device, ptr %107, i32 0, i32 36, i32 1
  %123 = ptrtoint ptr %tx_packets.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %tx_packets.i.i, align 4
  %inc12.i.i = add i32 %124, 1
  store i32 %inc12.i.i, ptr %tx_packets.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %116, i32 0, i32 6
  %125 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %len.i.i, align 4
  %tx_bytes.i.i = getelementptr inbounds %struct.net_device, ptr %107, i32 0, i32 36, i32 3
  %127 = ptrtoint ptr %tx_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %tx_bytes.i.i, align 4
  %add.i.i = add i32 %128, %126
  store i32 %add.i.i, ptr %tx_bytes.i.i, align 4
  br label %ftmac100_tx_complete_packet.exit.i

ftmac100_tx_complete_packet.exit.i:               ; preds = %if.else.i.i76, %if.then10.i.i
  %129 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev.i.i, align 4
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %116, i32 0, i32 6
  %131 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %116, i32 0, i32 7
  %133 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %132, %134
  tail call void @dma_unmap_page_attrs(ptr noundef %130, i32 noundef %119, i32 noundef %sub.i.i.i, i32 noundef 1, i32 noundef 0) #9
  tail call void @consume_skb(ptr noundef %116) #9
  %135 = ptrtoint ptr %arrayidx.i.i.i71 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %arrayidx.i.i.i71, align 16
  %txdes1.i.i.i = getelementptr %struct.ftmac100_descs, ptr %109, i32 0, i32 1, i32 %111, i32 1
  %136 = ptrtoint ptr %txdes1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %txdes1.i.i.i, align 4
  %and.i42.i.i = and i32 %137, 128
  store i32 %and.i42.i.i, ptr %txdes1.i.i.i, align 4
  %138 = ptrtoint ptr %txdes2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 0, ptr %txdes2.i.i.i, align 8
  %139 = ptrtoint ptr %txdes3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 0, ptr %txdes3.i.i.i, align 4
  %140 = ptrtoint ptr %tx_clean_pointer.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %tx_clean_pointer.i.i.i, align 8
  %add.i.i.i.i77 = add i32 %141, 1
  %and.i.i.i.i78 = and i32 %add.i.i.i.i77, 15
  store i32 %and.i.i.i.i78, ptr %tx_clean_pointer.i.i.i, align 8
  tail call void @_raw_spin_lock(ptr noundef %tx_lock.i.i) #9
  %142 = ptrtoint ptr %tx_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %tx_pending.i.i, align 8
  %dec.i.i = add i32 %143, -1
  store i32 %dec.i.i, ptr %tx_pending.i.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %tx_lock.i.i) #9
  %_tx.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %107, i32 0, i32 103
  %144 = ptrtoint ptr %_tx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %_tx.i.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %145) #9
  %146 = ptrtoint ptr %tx_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %tx_pending.i.i, align 8
  %cmp.i.i = icmp eq i32 %147, 0
  br i1 %cmp.i.i, label %ftmac100_tx_complete_packet.exit.i.if.end12_crit_edge, label %ftmac100_tx_complete_packet.exit.i.if.end.i.i74_crit_edge

ftmac100_tx_complete_packet.exit.i.if.end.i.i74_crit_edge: ; preds = %ftmac100_tx_complete_packet.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i74

ftmac100_tx_complete_packet.exit.i.if.end12_crit_edge: ; preds = %ftmac100_tx_complete_packet.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end12:                                         ; preds = %ftmac100_tx_complete_packet.exit.i.if.end12_crit_edge, %if.end.i.i74.if.end12_crit_edge, %if.then11.if.end12_crit_edge, %if.end8.if.end12_crit_edge
  %and13 = and i32 %5, 898
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end45_crit_edge, label %if.then15

if.end12.if.end45_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then15:                                        ; preds = %if.end12
  %call16 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  %.pre = and i32 %5, 2
  br i1 %tobool17.not, label %if.then15.if.end30_crit_edge, label %if.then18

if.then15.if.end30_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool20.not = icmp eq i32 %.pre, 0
  %cond = select i1 %tobool20.not, ptr @.str.28, ptr @.str.27
  %and21 = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %cond23 = select i1 %tobool22.not, ptr @.str.28, ptr @.str.29
  %and24 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %cond26 = select i1 %tobool25.not, ptr @.str.28, ptr @.str.30
  %and27 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %cond29 = select i1 %tobool28.not, ptr @.str.28, ptr @.str.31
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.26, i32 noundef %5, ptr noundef nonnull %cond, ptr noundef nonnull %cond23, ptr noundef nonnull %cond26, ptr noundef nonnull %cond29) #12
  br label %if.end30

if.end30:                                         ; preds = %if.then18, %if.then15.if.end30_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool32.not = icmp eq i32 %.pre, 0
  br i1 %tobool32.not, label %if.end30.if.end34_crit_edge, label %if.then33

if.end30.if.end34_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 11
  %148 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %rx_over_errors, align 4
  %inc = add i32 %149, 1
  store i32 %inc, ptr %rx_over_errors, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end30.if.end34_crit_edge
  %and35 = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end40_crit_edge, label %if.then37

if.end34.if.end40_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 14
  %150 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %rx_fifo_errors, align 8
  %inc39 = add i32 %151, 1
  store i32 %inc39, ptr %rx_fifo_errors, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end34.if.end40_crit_edge
  %and41 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end40.if.end45_crit_edge, label %if.then43

if.end40.if.end45_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %mii = getelementptr i8, ptr %napi, i32 224
  tail call void @mii_check_link(ptr noundef %mii) #9
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end40.if.end45_crit_edge, %if.end12.if.end45_crit_edge
  br i1 %completed.1.off0, label %if.then47, label %if.end45.if.end49_crit_edge

if.end45.if.end49_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #9
  %152 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %153, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1291649024) #9, !srcloc !115
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end45.if.end49_crit_edge
  ret i32 %rx.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftmac100_mdio_read(ptr noundef %netdev, i32 noundef %phy_id, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = shl i32 %phy_id, 16
  %shl = and i32 %and, 2031616
  %and1 = shl i32 %reg, 21
  %shl2 = and i32 %and1, 65011712
  %or = or i32 %shl, %shl2
  %or3 = or i32 %or, 67108864
  %base = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  tail call void @arm_heavy_mb() #9
  %2 = tail call i32 @llvm.bswap.i32(i32 %or3) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #9, !srcloc !115
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %4, i32 144
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #9, !srcloc !107
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %and7 = and i32 %6, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %cmp8 = icmp eq i32 %and7, 0
  br i1 %cmp8, label %entry.if.then_crit_edge, label %if.end

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %if.end.8.if.then_crit_edge, %if.end.7.if.then_crit_edge, %if.end.6.if.then_crit_edge, %if.end.5.if.then_crit_edge, %if.end.4.if.then_crit_edge, %if.end.3.if.then_crit_edge, %if.end.2.if.then_crit_edge, %if.end.1.if.then_crit_edge, %if.end.if.then_crit_edge, %entry.if.then_crit_edge
  %.lcssa = phi i32 [ %6, %entry.if.then_crit_edge ], [ %11, %if.end.if.then_crit_edge ], [ %16, %if.end.1.if.then_crit_edge ], [ %21, %if.end.2.if.then_crit_edge ], [ %26, %if.end.3.if.then_crit_edge ], [ %31, %if.end.4.if.then_crit_edge ], [ %36, %if.end.5.if.then_crit_edge ], [ %41, %if.end.6.if.then_crit_edge ], [ %46, %if.end.7.if.then_crit_edge ], [ %51, %if.end.8.if.then_crit_edge ]
  %and9 = and i32 %.lcssa, 65535
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 21474800) #9
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr5.1 = getelementptr i8, ptr %9, i32 144
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.1) #9, !srcloc !107
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %and7.1 = and i32 %11, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.1)
  %cmp8.1 = icmp eq i32 %and7.1, 0
  br i1 %cmp8.1, label %if.end.if.then_crit_edge, label %if.end.1

if.end.if.then_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.1:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 21474800) #9
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr5.2 = getelementptr i8, ptr %14, i32 144
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.2) #9, !srcloc !107
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %and7.2 = and i32 %16, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.2)
  %cmp8.2 = icmp eq i32 %and7.2, 0
  br i1 %cmp8.2, label %if.end.1.if.then_crit_edge, label %if.end.2

if.end.1.if.then_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.2:                                         ; preds = %if.end.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 21474800) #9
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr5.3 = getelementptr i8, ptr %19, i32 144
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.3) #9, !srcloc !107
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %and7.3 = and i32 %21, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.3)
  %cmp8.3 = icmp eq i32 %and7.3, 0
  br i1 %cmp8.3, label %if.end.2.if.then_crit_edge, label %if.end.3

if.end.2.if.then_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.3:                                         ; preds = %if.end.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 21474800) #9
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %add.ptr5.4 = getelementptr i8, ptr %24, i32 144
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.4) #9, !srcloc !107
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %and7.4 = and i32 %26, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.4)
  %cmp8.4 = icmp eq i32 %and7.4, 0
  br i1 %cmp8.4, label %if.end.3.if.then_crit_edge, label %if.end.4

if.end.3.if.then_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.4:                                         ; preds = %if.end.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 21474800) #9
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 4
  %add.ptr5.5 = getelementptr i8, ptr %29, i32 144
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.5) #9, !srcloc !107
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %and7.5 = and i32 %31, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.5)
  %cmp8.5 = icmp eq i32 %and7.5, 0
  br i1 %cmp8.5, label %if.end.4.if.then_crit_edge, label %if.end.5

if.end.4.if.then_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.5:                                         ; preds = %if.end.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 21474800) #9
  %33 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base, align 4
  %add.ptr5.6 = getelementptr i8, ptr %34, i32 144
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.6) #9, !srcloc !107
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %and7.6 = and i32 %36, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.6)
  %cmp8.6 = icmp eq i32 %and7.6, 0
  br i1 %cmp8.6, label %if.end.5.if.then_crit_edge, label %if.end.6

if.end.5.if.then_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.6:                                         ; preds = %if.end.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 21474800) #9
  %38 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base, align 4
  %add.ptr5.7 = getelementptr i8, ptr %39, i32 144
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.7) #9, !srcloc !107
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %and7.7 = and i32 %41, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.7)
  %cmp8.7 = icmp eq i32 %and7.7, 0
  br i1 %cmp8.7, label %if.end.6.if.then_crit_edge, label %if.end.7

if.end.6.if.then_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.7:                                         ; preds = %if.end.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 21474800) #9
  %43 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base, align 4
  %add.ptr5.8 = getelementptr i8, ptr %44, i32 144
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.8) #9, !srcloc !107
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %and7.8 = and i32 %46, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.8)
  %cmp8.8 = icmp eq i32 %and7.8, 0
  br i1 %cmp8.8, label %if.end.7.if.then_crit_edge, label %if.end.8

if.end.7.if.then_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.8:                                         ; preds = %if.end.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 21474800) #9
  %48 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base, align 4
  %add.ptr5.9 = getelementptr i8, ptr %49, i32 144
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.9) #9, !srcloc !107
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %and7.9 = and i32 %51, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.9)
  %cmp8.9 = icmp eq i32 %and7.9, 0
  br i1 %cmp8.9, label %if.end.8.if.then_crit_edge, label %if.end.9

if.end.8.if.then_crit_edge:                       ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.9:                                         ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 21474800) #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.40) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then
  %retval.0 = phi i32 [ %and9, %if.then ], [ 0, %if.end.9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ftmac100_mdio_write(ptr noundef %netdev, i32 noundef %phy_id, i32 noundef %reg, i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = shl i32 %phy_id, 16
  %shl = and i32 %and, 2031616
  %and1 = shl i32 %reg, 21
  %shl2 = and i32 %and1, 65011712
  %or = or i32 %shl, %shl2
  %or3 = or i32 %or, 134217728
  %and4 = and i32 %data, 65535
  %base = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  tail call void @arm_heavy_mb() #9
  %2 = tail call i32 @llvm.bswap.i32(i32 %and4) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #9, !srcloc !115
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr6 = getelementptr i8, ptr %4, i32 144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  tail call void @arm_heavy_mb() #9
  %5 = tail call i32 @llvm.bswap.i32(i32 %or3) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %5) #9, !srcloc !115
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr8 = getelementptr i8, ptr %7, i32 144
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %9 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp11 = icmp eq i32 %9, 0
  br i1 %cmp11, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 21474800) #9
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr8.1 = getelementptr i8, ptr %12, i32 144
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.1) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %14 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp11.1 = icmp eq i32 %14, 0
  br i1 %cmp11.1, label %if.end.cleanup_crit_edge, label %if.end.1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 21474800) #9
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr8.2 = getelementptr i8, ptr %17, i32 144
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.2) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %19 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp11.2 = icmp eq i32 %19, 0
  br i1 %cmp11.2, label %if.end.1.cleanup_crit_edge, label %if.end.2

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 21474800) #9
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 4
  %add.ptr8.3 = getelementptr i8, ptr %22, i32 144
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.3) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %24 = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp11.3 = icmp eq i32 %24, 0
  br i1 %cmp11.3, label %if.end.2.cleanup_crit_edge, label %if.end.3

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.3:                                         ; preds = %if.end.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 21474800) #9
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add.ptr8.4 = getelementptr i8, ptr %27, i32 144
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.4) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %29 = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp11.4 = icmp eq i32 %29, 0
  br i1 %cmp11.4, label %if.end.3.cleanup_crit_edge, label %if.end.4

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.4:                                         ; preds = %if.end.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 21474800) #9
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base, align 4
  %add.ptr8.5 = getelementptr i8, ptr %32, i32 144
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.5) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %34 = and i32 %33, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp11.5 = icmp eq i32 %34, 0
  br i1 %cmp11.5, label %if.end.4.cleanup_crit_edge, label %if.end.5

if.end.4.cleanup_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.5:                                         ; preds = %if.end.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 21474800) #9
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base, align 4
  %add.ptr8.6 = getelementptr i8, ptr %37, i32 144
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.6) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %39 = and i32 %38, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp11.6 = icmp eq i32 %39, 0
  br i1 %cmp11.6, label %if.end.5.cleanup_crit_edge, label %if.end.6

if.end.5.cleanup_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.6:                                         ; preds = %if.end.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 21474800) #9
  %41 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base, align 4
  %add.ptr8.7 = getelementptr i8, ptr %42, i32 144
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.7) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %44 = and i32 %43, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp11.7 = icmp eq i32 %44, 0
  br i1 %cmp11.7, label %if.end.6.cleanup_crit_edge, label %if.end.7

if.end.6.cleanup_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.7:                                         ; preds = %if.end.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 21474800) #9
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base, align 4
  %add.ptr8.8 = getelementptr i8, ptr %47, i32 144
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.8) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %49 = and i32 %48, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp11.8 = icmp eq i32 %49, 0
  br i1 %cmp11.8, label %if.end.7.cleanup_crit_edge, label %if.end.8

if.end.7.cleanup_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.8:                                         ; preds = %if.end.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 21474800) #9
  %51 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base, align 4
  %add.ptr8.9 = getelementptr i8, ptr %52, i32 144
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.9) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %54 = and i32 %53, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp11.9 = icmp eq i32 %54, 0
  br i1 %cmp11.9, label %if.end.8.cleanup_crit_edge, label %if.end.9

if.end.8.cleanup_crit_edge:                       ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.9:                                         ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 21474800) #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.41) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.end.8.cleanup_crit_edge, %if.end.7.cleanup_crit_edge, %if.end.6.cleanup_crit_edge, %if.end.5.cleanup_crit_edge, %if.end.4.cleanup_crit_edge, %if.end.3.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @eth_hw_addr_random(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #9
  %0 = call ptr @memset(ptr %addr, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr, i32 noundef 6) #9
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr, align 1
  %3 = and i8 %2, -4
  %4 = or i8 %3, 2
  store i8 %4, ptr %addr, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #9
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %5 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %addr_assign_type, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @release_resource(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ftmac100_get_drvinfo(ptr nocapture noundef readonly %netdev, ptr noundef %info) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #9
  %init_name.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 133, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 133
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call3 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i, i32 noundef 32) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftmac100_nway_reset(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %netdev, i32 2616
  %call1 = tail call i32 @mii_nway_restart(ptr noundef %mii) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftmac100_get_link(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %netdev, i32 2616
  %call1 = tail call i32 @mii_link_ok(ptr noundef %mii) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftmac100_get_link_ksettings(ptr noundef %netdev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %netdev, i32 2616
  tail call void @mii_ethtool_get_link_ksettings(ptr noundef %mii, ptr noundef %cmd) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftmac100_set_link_ksettings(ptr noundef %netdev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %netdev, i32 2616
  %call1 = tail call i32 @mii_ethtool_set_link_ksettings(ptr noundef %mii, ptr noundef %cmd) #9
  ret i32 %call1
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_nway_restart(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_link_ok(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_ethtool_set_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftmac100_open(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %dev.i = getelementptr i8, ptr %netdev, i32 2388
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %descs_dma_addr.i = getelementptr i8, ptr %netdev, i32 2320
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %1, i32 noundef 2304, ptr noundef %descs_dma_addr.i, i32 noundef 3264, i32 noundef 0) #9
  %descs.i = getelementptr i8, ptr %netdev, i32 2316
  %2 = ptrtoint ptr %descs.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i.i, ptr %descs.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.i:                                         ; preds = %entry
  %rxdes1.i.i = getelementptr [128 x %struct.ftmac100_rxdes], ptr %call.i.i, i32 0, i32 127, i32 1
  %3 = ptrtoint ptr %rxdes1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rxdes1.i.i, align 4
  %or.i.i = or i32 %4, 128
  store i32 %or.i.i, ptr %rxdes1.i.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %if.end, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.i
  %i.025.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %descs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %descs.i, align 4
  %arrayidx6.i = getelementptr [128 x %struct.ftmac100_rxdes], ptr %6, i32 0, i32 %i.025.i
  %call7.i = tail call fastcc i32 @ftmac100_alloc_rx_page(ptr noundef %add.ptr.i, ptr noundef %arrayidx6.i, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %for.cond.i, label %err.i

err.i:                                            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ftmac100_free_buffers(ptr noundef %add.ptr.i) #9
  br label %if.then

if.then:                                          ; preds = %err.i, %entry.if.then_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.15) #12
  br label %cleanup

if.end:                                           ; preds = %for.cond.i
  %7 = ptrtoint ptr %descs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %descs.i, align 4
  %txdes1.i.i = getelementptr %struct.ftmac100_descs, ptr %8, i32 0, i32 1, i32 15, i32 1
  %9 = ptrtoint ptr %txdes1.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %txdes1.i.i, align 4
  %or.i24.i = or i32 %10, 128
  store i32 %or.i24.i, ptr %txdes1.i.i, align 4
  %irq = getelementptr i8, ptr %netdev, i32 2312
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 8
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %12, ptr noundef nonnull @ftmac100_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %netdev, ptr noundef %netdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.16, i32 noundef %14) #12
  br label %err_irq

if.end6:                                          ; preds = %if.end
  %rx_pointer = getelementptr i8, ptr %netdev, i32 2324
  %netdev1.i = getelementptr i8, ptr %netdev, i32 2384
  %15 = call ptr @memset(ptr %rx_pointer, i32 0, i32 16)
  %16 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev1.i, align 8
  %base.i.i = getelementptr i8, ptr %netdev, i32 2308
  %18 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 67108864) #9, !srcloc !115
  %20 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %21, i32 136
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %23 = and i32 %22, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i.i, label %if.end6.if.end10_crit_edge, label %if.end.i.i

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end.i.i:                                       ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #9
  %25 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i, align 4
  %add.ptr3.1.i.i = getelementptr i8, ptr %26, i32 136
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.1.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %28 = and i32 %27, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.1.i.i = icmp eq i32 %28, 0
  br i1 %tobool.not.1.i.i, label %if.end.i.i.if.end10_crit_edge, label %if.end.1.i.i

if.end.i.i.if.end10_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end.1.i.i:                                     ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #9
  %30 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i, align 4
  %add.ptr3.2.i.i = getelementptr i8, ptr %31, i32 136
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.2.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %33 = and i32 %32, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.2.i.i = icmp eq i32 %33, 0
  br i1 %tobool.not.2.i.i, label %if.end.1.i.i.if.end10_crit_edge, label %if.end.2.i.i

if.end.1.i.i.if.end10_crit_edge:                  ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end.2.i.i:                                     ; preds = %if.end.1.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #9
  %35 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i.i, align 4
  %add.ptr3.3.i.i = getelementptr i8, ptr %36, i32 136
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.3.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %38 = and i32 %37, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.3.i.i = icmp eq i32 %38, 0
  br i1 %tobool.not.3.i.i, label %if.end.2.i.i.if.end10_crit_edge, label %if.end.3.i.i

if.end.2.i.i.if.end10_crit_edge:                  ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end.3.i.i:                                     ; preds = %if.end.2.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #9
  %40 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i.i, align 4
  %add.ptr3.4.i.i = getelementptr i8, ptr %41, i32 136
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.4.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %43 = and i32 %42, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.4.i.i = icmp eq i32 %43, 0
  br i1 %tobool.not.4.i.i, label %if.end.3.i.i.if.end10_crit_edge, label %err_hw

if.end.3.i.i.if.end10_crit_edge:                  ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end10:                                         ; preds = %if.end.3.i.i.if.end10_crit_edge, %if.end.2.i.i.if.end10_crit_edge, %if.end.1.i.i.if.end10_crit_edge, %if.end.i.i.if.end10_crit_edge, %if.end6.if.end10_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 107374000) #9
  %45 = ptrtoint ptr %descs_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %descs_dma_addr.i, align 8
  %47 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %48, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  tail call void @arm_heavy_mb() #9
  %49 = tail call i32 @llvm.bswap.i32(i32 %46) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 %49) #9, !srcloc !115
  %50 = ptrtoint ptr %descs_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %descs_dma_addr.i, align 8
  %add3.i = add i32 %51, 2048
  %52 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %53, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  tail call void @arm_heavy_mb() #9
  %54 = tail call i32 @llvm.bswap.i32(i32 %add3.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 %54) #9, !srcloc !115
  %55 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %56, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 16777216) #9, !srcloc !115
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 86
  %57 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev_addr.i, align 64
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %58, align 1
  %conv.i.i = zext i8 %60 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 8
  %arrayidx1.i.i = getelementptr i8, ptr %58, i32 1
  %61 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %62 to i32
  %or.i.i36 = or i32 %shl.i.i, %conv2.i.i
  %arrayidx3.i.i = getelementptr i8, ptr %58, i32 2
  %63 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx3.i.i, align 1
  %conv4.i.i = zext i8 %64 to i32
  %shl5.i.i = shl nuw i32 %conv4.i.i, 24
  %arrayidx6.i.i = getelementptr i8, ptr %58, i32 3
  %65 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx6.i.i, align 1
  %conv7.i.i = zext i8 %66 to i32
  %shl8.i.i = shl nuw nsw i32 %conv7.i.i, 16
  %or9.i.i = or i32 %shl8.i.i, %shl5.i.i
  %arrayidx10.i.i = getelementptr i8, ptr %58, i32 4
  %67 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx10.i.i, align 1
  %conv11.i.i = zext i8 %68 to i32
  %shl12.i.i = shl nuw nsw i32 %conv11.i.i, 8
  %or13.i.i = or i32 %or9.i.i, %shl12.i.i
  %arrayidx14.i.i = getelementptr i8, ptr %58, i32 5
  %69 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx14.i.i, align 1
  %conv15.i.i = zext i8 %70 to i32
  %or16.i.i = or i32 %or13.i.i, %conv15.i.i
  %71 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %72, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  tail call void @arm_heavy_mb() #9
  %73 = tail call i32 @llvm.bswap.i32(i32 %or.i.i36) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 %73) #9, !srcloc !115
  %74 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base.i.i, align 4
  %add.ptr18.i.i = getelementptr i8, ptr %75, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  tail call void @arm_heavy_mb() #9
  %76 = tail call i32 @llvm.bswap.i32(i32 %or16.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i.i, i32 %76) #9, !srcloc !115
  %77 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base.i.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %78, i32 136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 600113664) #9, !srcloc !115
  %napi = getelementptr i8, ptr %netdev, i32 2392
  tail call void @napi_enable(ptr noundef %napi) #9
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %79 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %80, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  %81 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %82, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 -1291649024) #9, !srcloc !115
  br label %cleanup

err_hw:                                           ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %83(i32 noundef 214748000) #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %17, ptr noundef nonnull @.str.20) #12
  %84 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %irq, align 8
  %call12 = tail call ptr @free_irq(i32 noundef %85, ptr noundef %netdev) #9
  br label %err_irq

err_irq:                                          ; preds = %err_hw, %if.then4
  %err.0 = phi i32 [ %call.i, %if.then4 ], [ -5, %err_hw ]
  tail call fastcc void @ftmac100_free_buffers(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %err_irq, %if.end10, %if.then
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -12, %if.then ], [ %err.0, %err_irq ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftmac100_stop(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %base.i = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 0) #9, !srcloc !115
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  %napi = getelementptr i8, ptr %netdev, i32 2392
  tail call void @napi_disable(ptr noundef %napi) #9
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %5, i32 136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 0) #9, !srcloc !115
  %irq = getelementptr i8, ptr %netdev, i32 2312
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 8
  %call1 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %netdev) #9
  tail call fastcc void @ftmac100_free_buffers(ptr noundef %add.ptr.i)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftmac100_hard_start_xmit(ptr noundef %skb, ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1518, i32 %1)
  %cmp = icmp ugt i32 %1, 1518
  br i1 %cmp, label %if.then, label %if.end18, !prof !109

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end17_crit_edge, label %do.body5

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

do.body5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ftmac100_hard_start_xmit.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ftmac100_hard_start_xmit, %if.then14)) #9
          to label %if.end17 [label %if.then14], !srcloc !112

if.then14:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ftmac100_hard_start_xmit.__UNIQUE_ID_ddebug340, ptr noundef %netdev, ptr noundef nonnull @.str.22) #9
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %do.body5, %if.then.if.end17_crit_edge
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 7
  %2 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %tx_dropped, align 4
  tail call void @consume_skb(ptr noundef %skb) #9
  br label %cleanup

if.end18:                                         ; preds = %entry
  %dev = getelementptr i8, ptr %netdev, i32 2388
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i, align 8
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %7) #9
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end18
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !110

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %5) #9
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.25, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %15, i32 noundef -1) #9
  br label %if.then30

dma_map_single_attrs.exit:                        ; preds = %if.end18
  %sub.i = sub i32 %1, %9
  tail call void @debug_dma_map_single(ptr noundef %5, ptr noundef %7, i32 noundef %sub.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %16 = load ptr, ptr @mem_map, align 4
  %17 = ptrtoint ptr %7 to i32
  %sub.i53 = add i32 %17, 1073741824
  %shr.i = lshr i32 %sub.i53, 12
  %add.ptr.i54 = getelementptr %struct.page, ptr %16, i32 %shr.i
  %and.i = and i32 %17, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %5, ptr noundef %add.ptr.i54, i32 noundef %and.i, i32 noundef %sub.i, i32 noundef 1, i32 noundef 0) #9
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %19, i32 noundef %call41.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.if.then30_crit_edge, label %if.end38

dma_map_single_attrs.exit.if.then30_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

if.then30:                                        ; preds = %dma_map_single_attrs.exit.if.then30_crit_edge, %dma_map_single_attrs.exit.thread
  %call31 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then30.if.end34_crit_edge, label %if.then33

if.then30.if.end34_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then33:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.23) #12
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.then30.if.end34_crit_edge
  %tx_dropped36 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 7
  %20 = ptrtoint ptr %tx_dropped36 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_dropped36, align 4
  %inc37 = add i32 %21, 1
  store i32 %inc37, ptr %tx_dropped36, align 4
  tail call void @consume_skb(ptr noundef %skb) #9
  br label %cleanup

if.end38:                                         ; preds = %dma_map_single_attrs.exit
  %netdev1.i = getelementptr i8, ptr %netdev, i32 2384
  %22 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %netdev1.i, align 8
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  %26 = tail call i32 @llvm.umax.i32(i32 %25, i32 60) #9
  %descs.i.i = getelementptr i8, ptr %netdev, i32 2316
  %27 = ptrtoint ptr %descs.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %descs.i.i, align 4
  %tx_pointer.i.i = getelementptr i8, ptr %netdev, i32 2332
  %29 = ptrtoint ptr %tx_pointer.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_pointer.i.i, align 4
  %add.i.i.i = add i32 %30, 1
  %and.i.i.i = and i32 %add.i.i.i, 15
  store i32 %and.i.i.i, ptr %tx_pointer.i.i, align 4
  %31 = ptrtoint ptr %skb to i32
  %txdes3.i.i = getelementptr %struct.ftmac100_descs, ptr %28, i32 0, i32 1, i32 %30, i32 3
  %32 = ptrtoint ptr %txdes3.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %txdes3.i.i, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %call41.i) #9
  %txdes2.i.i = getelementptr %struct.ftmac100_descs, ptr %28, i32 0, i32 1, i32 %30, i32 2
  %34 = ptrtoint ptr %txdes2.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %txdes2.i.i, align 8
  %txdes1.i.i = getelementptr %struct.ftmac100_descs, ptr %28, i32 0, i32 1, i32 %30, i32 1
  %35 = ptrtoint ptr %txdes1.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %txdes1.i.i, align 4
  %and.i.i = and i32 %26, 2047
  %37 = or i32 %and.i.i, 1476395008
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #9
  %or.i7.i = or i32 %36, %38
  %39 = ptrtoint ptr %txdes1.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or.i7.i, ptr %txdes1.i.i, align 4
  %tx_lock.i = getelementptr i8, ptr %netdev, i32 2340
  tail call void @_raw_spin_lock(ptr noundef %tx_lock.i) #9
  %tx_pending.i = getelementptr i8, ptr %netdev, i32 2336
  %40 = ptrtoint ptr %tx_pending.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tx_pending.i, align 8
  %inc.i = add i32 %41, 1
  store i32 %inc.i, ptr %tx_pending.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %inc.i)
  %cmp5.i = icmp eq i32 %inc.i, 16
  br i1 %cmp5.i, label %if.then.i56, label %if.end38.ftmac100_xmit.exit_crit_edge

if.end38.ftmac100_xmit.exit_crit_edge:            ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %ftmac100_xmit.exit

if.then.i56:                                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 103
  %42 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %43, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #9
  br label %ftmac100_xmit.exit

ftmac100_xmit.exit:                               ; preds = %if.then.i56, %if.end38.ftmac100_xmit.exit_crit_edge
  %arrayidx.i.i = getelementptr %struct.ftmac100_descs, ptr %28, i32 0, i32 1, i32 %30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  tail call void @arm_heavy_mb() #9
  %44 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i.i, align 16
  %or.i8.i = or i32 %45, 128
  store i32 %or.i8.i, ptr %arrayidx.i.i, align 16
  tail call void @_raw_spin_unlock(ptr noundef %tx_lock.i) #9
  %base.i.i = getelementptr i8, ptr %netdev, i32 2308
  %46 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %47, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #9, !srcloc !115
  br label %cleanup

cleanup:                                          ; preds = %ftmac100_xmit.exit, %if.end34, %if.end17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftmac100_do_ioctl(ptr noundef %netdev, ptr noundef %ifr, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %mii = getelementptr i8, ptr %netdev, i32 2616
  %call2 = tail call i32 @generic_mii_ioctl(ptr noundef %mii, ptr noundef %ifr_ifru.i, i32 noundef %cmd, ptr noundef null) #9
  ret i32 %call2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftmac100_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr i8, ptr %dev_id, i32 2308
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 0) #9, !srcloc !115
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then, !prof !109

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %napi = getelementptr i8, ptr %dev_id, i32 2392
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #9
  br i1 %call.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__napi_schedule(ptr noundef %napi) #9
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ftmac100_free_buffers(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %descs = getelementptr inbounds %struct.ftmac100, ptr %priv, i32 0, i32 3
  %dev = getelementptr inbounds %struct.ftmac100, ptr %priv, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.045 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %0 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %descs, align 4
  %rxdes3.i = getelementptr [128 x %struct.ftmac100_rxdes], ptr %1, i32 0, i32 %i.045, i32 3
  %2 = ptrtoint ptr %rxdes3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rxdes3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %4 = inttoptr i32 %3 to ptr
  %rxdes2.i = getelementptr [128 x %struct.ftmac100_rxdes], ptr %1, i32 0, i32 %i.045, i32 2
  %5 = ptrtoint ptr %rxdes2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rxdes2.i, align 8
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %9, i32 noundef %7, i32 noundef 2044, i32 noundef 2, i32 noundef 0) #9
  tail call void @__free_pages(ptr noundef nonnull %4, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %cleanup.for.body7_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup.for.body7_crit_edge:                      ; preds = %cleanup
  br label %for.body7

for.body7:                                        ; preds = %cleanup19.for.body7_crit_edge, %cleanup.for.body7_crit_edge
  %i.147 = phi i32 [ %inc25, %cleanup19.for.body7_crit_edge ], [ 0, %cleanup.for.body7_crit_edge ]
  %10 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %descs, align 4
  %txdes3.i = getelementptr %struct.ftmac100_descs, ptr %11, i32 0, i32 1, i32 %i.147, i32 3
  %12 = ptrtoint ptr %txdes3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %txdes3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool14.not = icmp eq i32 %13, 0
  br i1 %tobool14.not, label %for.body7.cleanup19_crit_edge, label %if.end16

for.body7.cleanup19_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup19

if.end16:                                         ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #11
  %14 = inttoptr i32 %13 to ptr
  %txdes2.i = getelementptr %struct.ftmac100_descs, ptr %11, i32 0, i32 1, i32 %i.147, i32 2
  %15 = ptrtoint ptr %txdes2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %txdes2.i, align 8
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #9
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 6
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 7
  %22 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %21, %23
  tail call void @dma_unmap_page_attrs(ptr noundef %19, i32 noundef %17, i32 noundef %sub.i, i32 noundef 1, i32 noundef 0) #9
  tail call void @consume_skb(ptr noundef nonnull %14) #9
  br label %cleanup19

cleanup19:                                        ; preds = %if.end16, %for.body7.cleanup19_crit_edge
  %inc25 = add nuw nsw i32 %i.147, 1
  %exitcond49.not = icmp eq i32 %inc25, 16
  br i1 %exitcond49.not, label %for.end26, label %cleanup19.for.body7_crit_edge

cleanup19.for.body7_crit_edge:                    ; preds = %cleanup19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body7

for.end26:                                        ; preds = %cleanup19
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %26 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %descs, align 4
  %descs_dma_addr = getelementptr inbounds %struct.ftmac100, ptr %priv, i32 0, i32 4
  %28 = ptrtoint ptr %descs_dma_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %descs_dma_addr, align 8
  tail call void @dma_free_attrs(ptr noundef %25, i32 noundef 2304, ptr noundef %27, i32 noundef %29, i32 noundef 0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ftmac100_alloc_rx_page(ptr nocapture noundef readonly %priv, ptr nocapture noundef %rxdes, i32 noundef %gfp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.ftmac100, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 8
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef %gfp, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  %tobool.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.then4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.17) #12
  br label %cleanup

if.end5:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.ftmac100, ptr %priv, i32 0, i32 11
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call6 = tail call i32 @dma_map_page_attrs(ptr noundef %3, ptr noundef nonnull %call38.i.i.i, i32 noundef 0, i32 noundef 2044, i32 noundef 2, i32 noundef 0) #9
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %5, i32 noundef %call6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call6)
  %cmp.i.not = icmp eq i32 %call6, -1
  br i1 %cmp.i.not, label %if.then12, label %if.end17, !prof !109

if.then12:                                        ; preds = %if.end5
  %call13 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.if.end16_crit_edge, label %if.then15

if.then12.if.end16_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.18) #12
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.then12.if.end16_crit_edge
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 0) #9
  br label %cleanup

if.end17:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call38.i.i.i to i32
  %rxdes3.i = getelementptr inbounds %struct.ftmac100_rxdes, ptr %rxdes, i32 0, i32 3
  %7 = ptrtoint ptr %rxdes3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %rxdes3.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %call6) #9
  %rxdes2.i = getelementptr inbounds %struct.ftmac100_rxdes, ptr %rxdes, i32 0, i32 2
  %9 = ptrtoint ptr %rxdes2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %rxdes2.i, align 8
  %rxdes1.i = getelementptr inbounds %struct.ftmac100_rxdes, ptr %rxdes, i32 0, i32 1
  %10 = ptrtoint ptr %rxdes1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rxdes1.i, align 4
  %and.i = and i32 %11, 128
  %or.i = or i32 %and.i, -66650112
  store i32 %or.i, ptr %rxdes1.i, align 4
  %12 = ptrtoint ptr %rxdes to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 128, ptr %rxdes, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end16, %if.then4, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end16 ], [ 0, %if.end17 ], [ -12, %if.then4 ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_mii_ioctl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_check_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ftmac100_rx_drop_packet(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.ftmac100, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 8
  %descs.i = getelementptr inbounds %struct.ftmac100, ptr %priv, i32 0, i32 3
  %2 = ptrtoint ptr %descs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %descs.i, align 4
  %rx_pointer.i = getelementptr inbounds %struct.ftmac100, ptr %priv, i32 0, i32 5
  %4 = ptrtoint ptr %rx_pointer.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_pointer.i, align 4
  %arrayidx.i = getelementptr [128 x %struct.ftmac100_rxdes], ptr %3, i32 0, i32 %5
  %call2 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.do.body12_crit_edge, label %do.body3

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body12

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ftmac100_rx_drop_packet.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ftmac100_rx_drop_packet, %if.then8)) #9
          to label %do.body12 [label %if.then8], !srcloc !112

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ftmac100_rx_drop_packet.__UNIQUE_ID_ddebug339, ptr noundef %1, ptr noundef nonnull @.str.39, ptr noundef %arrayidx.i) #9
  br label %do.body12

do.body12:                                        ; preds = %land.rhs.do.body12_crit_edge, %if.then8, %do.body3, %entry.do.body12_crit_edge
  %rxdes.0 = phi ptr [ %arrayidx.i34, %land.rhs.do.body12_crit_edge ], [ %arrayidx.i, %do.body3 ], [ %arrayidx.i, %if.then8 ], [ %arrayidx.i, %entry.do.body12_crit_edge ]
  %6 = ptrtoint ptr %rxdes.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rxdes.0, align 16
  %and.i = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %8 = ptrtoint ptr %rxdes.0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 128, ptr %rxdes.0, align 16
  %9 = ptrtoint ptr %rx_pointer.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_pointer.i, align 4
  %add.i.i = add i32 %10, 1
  %and.i.i = and i32 %add.i.i, 127
  store i32 %and.i.i, ptr %rx_pointer.i, align 4
  br i1 %tobool.i.not, label %land.rhs, label %do.body12.do.end22_crit_edge

do.body12.do.end22_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end22

land.rhs:                                         ; preds = %do.body12
  %11 = ptrtoint ptr %descs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %descs.i, align 4
  %arrayidx.i34 = getelementptr [128 x %struct.ftmac100_rxdes], ptr %12, i32 0, i32 %and.i.i
  %13 = ptrtoint ptr %arrayidx.i34 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i34, align 16
  %and.i35 = and i32 %14, 128
  %tobool.i36.not = icmp eq i32 %and.i35, 0
  br i1 %tobool.i36.not, label %land.rhs.do.body12_crit_edge, label %land.rhs.do.end22_crit_edge

land.rhs.do.end22_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end22

land.rhs.do.body12_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body12

do.end22:                                         ; preds = %land.rhs.do.end22_crit_edge, %do.body12.do.end22_crit_edge
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  %15 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_dropped, align 8
  %inc = add i32 %16, 1
  store i32 %inc, ptr %rx_dropped, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !56, !57, !59, !61, !62, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !90, !91, !93, !95}
!llvm.named.register.sp = !{!97}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @__initcall__kmod_ftmac100__341_1180_ftmac100_driver_init6, !1, !"__initcall__kmod_ftmac100__341_1180_ftmac100_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/faraday/ftmac100.c", i32 1180, i32 1}
!2 = !{ptr @__exitcall_ftmac100_driver_exit, !1, !"__exitcall_ftmac100_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author342, !4, !"__UNIQUE_ID_author342", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/faraday/ftmac100.c", i32 1182, i32 1}
!5 = !{ptr @__UNIQUE_ID_description343, !6, !"__UNIQUE_ID_description343", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/faraday/ftmac100.c", i32 1183, i32 1}
!7 = !{ptr @__UNIQUE_ID_file344, !8, !"__UNIQUE_ID_file344", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/faraday/ftmac100.c", i32 1184, i32 1}
!9 = !{ptr @__UNIQUE_ID_license345, !8, !"__UNIQUE_ID_license345", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/faraday/ftmac100.c", i32 1172, i32 11}
!12 = !{ptr @ftmac100_driver, !13, !"ftmac100_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/faraday/ftmac100.c", i32 1168, i32 31}
!14 = !{ptr @ftmac100_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/faraday/ftmac100.c", i32 1086, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/faraday/ftmac100.c", i32 1095, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ftmac100_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @ftmac100_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/faraday/ftmac100.c", i32 1102, i32 3}
!27 = !{ptr @ftmac100_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @ftmac100_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/faraday/ftmac100.c", i32 1120, i32 3}
!31 = !{ptr @ftmac100_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @ftmac100_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/faraday/ftmac100.c", i32 1124, i32 22}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/faraday/ftmac100.c", i32 1128, i32 23}
!37 = !{ptr @ftmac100_ethtool_ops, !38, !"ftmac100_ethtool_ops", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/faraday/ftmac100.c", i32 843, i32 33}
!39 = !{ptr @ftmac100_netdev_ops, !40, !"ftmac100_netdev_ops", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/faraday/ftmac100.c", i32 1040, i32 36}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/faraday/ftmac100.c", i32 954, i32 22}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/faraday/ftmac100.c", i32 960, i32 22}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/faraday/ftmac100.c", i32 668, i32 23}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/faraday/ftmac100.c", i32 675, i32 23}
!49 = distinct !{null, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/faraday/ftmac100.c", i32 137, i32 21}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/faraday/ftmac100.c", i32 1010, i32 4}
!55 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @ftmac100_hard_start_xmit.__UNIQUE_ID_ddebug340, !54, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/faraday/ftmac100.c", i32 1021, i32 23}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!61 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/faraday/ftmac100.c", i32 913, i32 24}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/faraday/ftmac100.c", i32 914, i32 41}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/faraday/ftmac100.c", i32 914, i32 54}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/faraday/ftmac100.c", i32 915, i32 43}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/faraday/ftmac100.c", i32 916, i32 41}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/faraday/ftmac100.c", i32 917, i32 44}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/faraday/ftmac100.c", i32 414, i32 23}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/faraday/ftmac100.c", i32 326, i32 24}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/faraday/ftmac100.c", i32 334, i32 24}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/faraday/ftmac100.c", i32 342, i32 24}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/faraday/ftmac100.c", i32 348, i32 24}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/faraday/ftmac100.c", i32 354, i32 24}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/faraday/ftmac100.c", i32 370, i32 3}
!89 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @ftmac100_rx_drop_packet.__UNIQUE_ID_ddebug339, !88, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/faraday/ftmac100.c", i32 772, i32 21}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/faraday/ftmac100.c", i32 801, i32 21}
!95 = !{ptr @ftmac100_of_ids, !96, !"ftmac100_of_ids", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/faraday/ftmac100.c", i32 1163, i32 34}
!97 = !{!"sp"}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{i64 6245988}
!108 = !{i64 2153786337}
!109 = !{!"branch_weights", i32 1, i32 2000}
!110 = !{!"branch_weights", i32 2000, i32 1}
!111 = !{i64 2156233711, i64 2156234215, i64 2156233748, i64 2156233804, i64 2156233838, i64 2156233862, i64 2156233903, i64 2156233924, i64 2156233952, i64 2156233986}
!112 = !{i64 2148350378, i64 2148350383, i64 2148350396, i64 2148350440, i64 2148350474, i64 2148350495}
!113 = !{!"branch_weights", i32 4000000, i32 4001}
!114 = !{i64 2153787692}
!115 = !{i64 6245570}
!116 = !{i64 2156235753}
