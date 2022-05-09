; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/dnet.c_pt.bc'
source_filename = "../drivers/net/ethernet/dnet.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
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
%struct.dnet = type { ptr, %struct.spinlock, ptr, ptr, %struct.dnet_stats, i32, %struct.napi_struct, ptr, i32, i32, i32 }
%struct.dnet_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }

@__initcall__kmod_dnet__380_874_dnet_driver_init6 = internal global ptr @dnet_driver_init, section ".initcall6.init", align 4
@dnet_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dnet_probe, ptr @dnet_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dnet_driver_exit = internal global ptr @dnet_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file381 = internal constant [36 x i8] c"dnet.file=drivers/net/ethernet/dnet\00", section ".modinfo", align 1
@__UNIQUE_ID_license382 = internal constant [17 x i8] c"dnet.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description383 = internal constant [43 x i8] c"dnet.description=Dave DNET Ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author384 = internal constant [76 x i8] c"dnet.author=Ilya Yanok <yanok@emcraft.com>, Matteo Vit <matteo.vit@dave.eu>\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dnet\00", [27 x i8] zeroinitializer }, align 32
@dnet_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&bp->lock\00", [22 x i8] zeroinitializer }, align 32
@dnet_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 786, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to request IRQ %d (error %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dnet_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/net/ethernet/dnet.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dnet_probe._entry_ptr = internal global ptr @dnet_probe._entry, section ".printk_index", align 4
@dnet_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @dnet_open, ptr @dnet_close, ptr @dnet_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @phy_do_ioctl_running, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dnet_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@dnet_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @dnet_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@dnet_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 808, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Cannot register net device, aborting.\0A\00", [57 x i8] zeroinitializer }, align 32
@dnet_probe._entry_ptr.9 = internal global ptr @dnet_probe._entry.7, section ".printk_index", align 4
@dnet_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 817, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Cannot register PHY board fixup.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dnet_probe._entry_ptr.13 = internal global ptr @dnet_probe._entry.10, section ".printk_index", align 4
@dnet_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 824, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Dave DNET at 0x%p (0x%08x) irq %d %pM\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@dnet_probe._entry_ptr.17 = internal global ptr @dnet_probe._entry.14, section ".printk_index", align 4
@dnet_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 829, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"has %smdio, %sirq, %sgigabit, %sdma\0A\00", [59 x i8] zeroinitializer }, align 32
@dnet_probe._entry_ptr.20 = internal global ptr @dnet_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"no \00", [28 x i8] zeroinitializer }, align 32
@dnet_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: RX fifo error %x, irq %x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dnet_interrupt\00", [17 x i8] zeroinitializer }, align 32
@dnet_interrupt._entry_ptr = internal global ptr @dnet_interrupt._entry, section ".printk_index", align 4
@dnet_interrupt._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.4, i32 462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: TX fifo error %x, irq %x\0A\00", [32 x i8] zeroinitializer }, align 32
@dnet_interrupt._entry_ptr.27 = internal global ptr @dnet_interrupt._entry.25, section ".printk_index", align 4
@dnet_interrupt.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.4, ptr @.str.28, i8 0, i8 121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: irq %x remains\0A\00", [44 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dnet_start_xmit.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.4, ptr @.str.30, i8 0, i8 -127, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dnet_start_xmit\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"start_xmit: len %u head %p data %p\0A\00", [60 x i8] zeroinitializer }, align 32
@dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.32, i8 0, i8 -92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dnet_print_pretty_hwstats\00", [38 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.33, i8 0, i8 -92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"----------------------------- RX statistics -------------------------------\0A\00", [51 x i8] zeroinitializer }, align 32
@dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.34, i8 0, i8 -91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RX_PKT_IGNR_CNT %-8x\0A\00", [42 x i8] zeroinitializer }, align 32
@dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.35, i8 0, i8 -91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"RX_LEN_CHK_ERR_CNT %-8x\0A\00", [39 x i8] zeroinitializer }, align 32
@dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.36, i8 0, i8 -91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"RX_LNG_FRM_CNT %-8x\0A\00", [43 x i8] zeroinitializer }, align 32
@dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.37, i8 0, i8 -91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RX_SHRT_FRM_CNT %-8x\0A\00", [42 x i8] zeroinitializer }, align 32
@dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.38, i8 0, i8 -90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RX_IPG_VIOL_CNT %-8x\0A\00", [42 x i8] zeroinitializer }, align 32
@dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.39, i8 0, i8 -90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"RX_CRC_ERR_CNT %-8x\0A\00", [43 x i8] zeroinitializer }, align 32
@dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.40, i8 0, i8 -90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RX_OK_PKT_CNT %-8x\0A\00", [44 x i8] zeroinitializer }, align 32
@dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.41, i8 0, i8 -90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"RX_CTL_FRM_CNT %-8x\0A\00", [43 x i8] zeroinitializer }, align 32
@dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.42, i8 0, i8 -89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RX_PAUSE_FRM_CNT %-8x\0A\00", [41 x i8] zeroinitializer }, align 32
@dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.43, i8 0, i8 -89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RX_MULTICAST_CNT %-8x\0A\00", [41 x i8] zeroinitializer }, align 32
@dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.44, i8 0, i8 -89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RX_BROADCAST_CNT %-8x\0A\00", [41 x i8] zeroinitializer }, align 32
@dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.45, i8 0, i8 -89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RX_VLAN_TAG_CNT %-8x\0A\00", [42 x i8] zeroinitializer }, align 32
@dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.46, i8 0, i8 -88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RX_PRE_SHRINK_CNT %-8x\0A\00", [40 x i8] zeroinitializer }, align 32
@dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.47, i8 0, i8 -88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RX_DRIB_NIB_CNT %-8x\0A\00", [42 x i8] zeroinitializer }, align 32
@dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.48, i8 0, i8 -88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RX_UNSUP_OPCD_CNT %-8x\0A\00", [40 x i8] zeroinitializer }, align 32
@dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.49, i8 0, i8 -88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RX_BYTE_CNT %-8x\0A\00", [46 x i8] zeroinitializer }, align 32
@dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.50, i8 0, i8 -87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"----------------------------- TX statistics -------------------------------\0A\00", [51 x i8] zeroinitializer }, align 32
@dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.51, i8 0, i8 -87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TX_UNICAST_CNT %-8x\0A\00", [43 x i8] zeroinitializer }, align 32
@dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.52, i8 0, i8 -87, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TX_PAUSE_FRM_CNT %-8x\0A\00", [41 x i8] zeroinitializer }, align 32
@dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.53, i8 0, i8 -86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TX_MULTICAST_CNT %-8x\0A\00", [41 x i8] zeroinitializer }, align 32
@dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.54, i8 0, i8 -86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TX_BRDCAST_CNT %-8x\0A\00", [43 x i8] zeroinitializer }, align 32
@dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.55, i8 0, i8 -86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TX_VLAN_TAG_CNT %-8x\0A\00", [42 x i8] zeroinitializer }, align 32
@dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.56, i8 0, i8 -86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TX_BAD_FCS_CNT %-8x\0A\00", [43 x i8] zeroinitializer }, align 32
@dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.57, i8 0, i8 -85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TX_JUMBO_CNT %-8x\0A\00", [45 x i8] zeroinitializer }, align 32
@dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.58, i8 0, i8 -85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TX_BYTE_CNT %-8x\0A\00", [46 x i8] zeroinitializer }, align 32
@dnet_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.4, i32 387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s packet receive error %x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dnet_poll\00", [22 x i8] zeroinitializer }, align 32
@dnet_poll._entry_ptr = internal global ptr @dnet_poll._entry, section ".printk_index", align 4
@dnet_poll._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.4, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015%s: No memory to allocate a sk_buff of size %u.\0A\00", [45 x i8] zeroinitializer }, align 32
@dnet_poll._entry_ptr.63 = internal global ptr @dnet_poll._entry.61, section ".printk_index", align 4
@.str.64 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dnet_mii_bus\00", [19 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%x\00", [26 x i8] zeroinitializer }, align 32
@dnet_mdio_read.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.4, ptr @.str.68, i8 0, i8 31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dnet_mdio_read\00", [17 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mdio_read %02x:%02x <- %04x\0A\00", [35 x i8] zeroinitializer }, align 32
@dnet_mdio_write.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.4, ptr @.str.70, i8 0, i8 34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dnet_mdio_write\00", [16 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mdio_write %02x:%02x <- %04x\0A\00", [34 x i8] zeroinitializer }, align 32
@dnet_mii_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.4, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013%s: no PHY found\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dnet_mii_probe\00", [17 x i8] zeroinitializer }, align 32
@dnet_mii_probe._entry_ptr = internal global ptr @dnet_mii_probe._entry, section ".printk_index", align 4
@dnet_mii_probe._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.4, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: Could not attach to PHY\0A\00", [33 x i8] zeroinitializer }, align 32
@dnet_mii_probe._entry_ptr.75 = internal global ptr @dnet_mii_probe._entry.73, section ".printk_index", align 4
@dnet_handle_link_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.4, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014%s: Ack!  Speed (%d) is not 10/100/1000!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dnet_handle_link_change\00", [40 x i8] zeroinitializer }, align 32
@dnet_handle_link_change._entry_ptr = internal global ptr @dnet_handle_link_change._entry, section ".printk_index", align 4
@dnet_handle_link_change._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.4, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016%s: link up (%d/%s)\0A\00", [41 x i8] zeroinitializer }, align 32
@dnet_handle_link_change._entry_ptr.80 = internal global ptr @dnet_handle_link_change._entry.78, section ".printk_index", align 4
@.str.81 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Full\00", [27 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Half\00", [27 x i8] zeroinitializer }, align 32
@dnet_handle_link_change._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.77, ptr @.str.4, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016%s: link down\0A\00", [47 x i8] zeroinitializer }, align 32
@dnet_handle_link_change._entry_ptr.85 = internal global ptr @dnet_handle_link_change._entry.83, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@___asan_gen_.86 = private unnamed_addr constant [12 x i8] c"dnet_driver\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 866, i32 31 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 870, i32 12 }
@___asan_gen_.92 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 774, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 785, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [16 x i8] c"dnet_netdev_ops\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 740, i32 36 }
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"dnet_ethtool_ops\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 732, i32 33 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 808, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 817, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 823, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 825, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 449, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 461, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 486, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 517, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 657, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 658, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 660, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 661, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 662, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 663, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 664, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 665, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 666, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 667, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 668, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 669, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 670, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 671, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 672, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 673, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 674, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 675, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 676, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 678, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 679, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 680, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 681, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 682, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 683, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 684, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 685, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 386, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 404, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 729, i32 26 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 305, i32 22 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 309, i32 45 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 126, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 137, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 260, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 278, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 208, i32 5 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 243, i32 4 }
@___asan_gen_.338 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.341 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.342 = private constant [31 x i8] c"../drivers/net/ethernet/dnet.c\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 247, i32 4 }
@llvm.compiler.used = appending global [107 x ptr] [ptr @__UNIQUE_ID_author384, ptr @__UNIQUE_ID_description383, ptr @__UNIQUE_ID_file381, ptr @__UNIQUE_ID_license382, ptr @__exitcall_dnet_driver_exit, ptr @__initcall__kmod_dnet__380_874_dnet_driver_init6, ptr @dnet_driver_exit, ptr @dnet_handle_link_change._entry, ptr @dnet_handle_link_change._entry.78, ptr @dnet_handle_link_change._entry.83, ptr @dnet_handle_link_change._entry_ptr, ptr @dnet_handle_link_change._entry_ptr.80, ptr @dnet_handle_link_change._entry_ptr.85, ptr @dnet_interrupt._entry, ptr @dnet_interrupt._entry.25, ptr @dnet_interrupt._entry_ptr, ptr @dnet_interrupt._entry_ptr.27, ptr @dnet_mii_probe._entry, ptr @dnet_mii_probe._entry.73, ptr @dnet_mii_probe._entry_ptr, ptr @dnet_mii_probe._entry_ptr.75, ptr @dnet_poll._entry, ptr @dnet_poll._entry.61, ptr @dnet_poll._entry_ptr, ptr @dnet_poll._entry_ptr.63, ptr @dnet_probe._entry, ptr @dnet_probe._entry.10, ptr @dnet_probe._entry.14, ptr @dnet_probe._entry.18, ptr @dnet_probe._entry.7, ptr @dnet_probe._entry_ptr, ptr @dnet_probe._entry_ptr.13, ptr @dnet_probe._entry_ptr.17, ptr @dnet_probe._entry_ptr.20, ptr @dnet_probe._entry_ptr.9, ptr @dnet_driver, ptr @.str, ptr @dnet_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @dnet_netdev_ops, ptr @dnet_ethtool_ops, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.84], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dnet_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dnet_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dnet_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dnet_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dnet_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dnet_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dnet_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dnet_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dnet_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dnet_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dnet_interrupt._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dnet_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dnet_poll._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dnet_mii_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dnet_mii_probe._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dnet_handle_link_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dnet_handle_link_change._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dnet_handle_link_change._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dnet_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dnet_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dnet_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @dnet_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dnet_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %addr.i138 = alloca [6 x i8], align 1
  %addr.i = alloca [6 x i8], align 4
  %res = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #10
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %res, align 4, !annotation !203
  %call = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  %call1 = tail call ptr @alloc_etherdev_mqs(i32 noundef 400, i32 noundef 1, i32 noundef 1) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %call1, i32 2304
  %dev3 = getelementptr i8, ptr %call1, i32 2356
  %1 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %dev3, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %driver_data.i.i, align 4
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 133, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev4, ptr %parent, align 8
  %lock = getelementptr i8, ptr %call1, i32 2308
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @dnet_probe.__key, i16 noundef signext 3) #10
  %call7 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %res) #10
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7, ptr %add.ptr.i, align 8
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %call7 to i32
  br label %err_out_free_dev

if.end13:                                         ; preds = %if.end
  %irq14 = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 64
  %6 = ptrtoint ptr %irq14 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %irq14, align 4
  %call.i = call i32 @request_threaded_irq(i32 noundef %call, ptr noundef nonnull @dnet_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %call1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not = icmp eq i32 %call.i, 0
  br i1 %tobool17.not, label %if.end23, label %do.end21

do.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.2, i32 noundef %call, i32 noundef %call.i) #13
  br label %err_out_free_dev

if.end23:                                         ; preds = %if.end13
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 16
  %7 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @dnet_netdev_ops, ptr %netdev_ops, align 8
  %napi = getelementptr i8, ptr %call1, i32 2464
  call void @netif_napi_add(ptr noundef nonnull %call1, ptr noundef %napi, ptr noundef nonnull @dnet_poll, i32 noundef 64) #10
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 44
  %8 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @dnet_ethtool_ops, ptr %ethtool_ops, align 16
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %11 = ptrtoint ptr %10 to i32
  %base_addr = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 5
  %12 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %base_addr, align 32
  %add.ptr = getelementptr i8, ptr %10, i32 256
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !205
  %14 = and i32 %13, -65536
  %15 = call i32 @llvm.bswap.i32(i32 %14)
  %capabilities = getelementptr i8, ptr %call1, i32 2456
  %16 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %capabilities, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #10
  %17 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 2
  %18 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !206
  call void @arm_heavy_mb() #10
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 516
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 167772160) #10, !srcloc !207
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 214748) #10
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %23, i32 512
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #10, !srcloc !204
  %25 = call i32 @llvm.bswap.i32(i32 %24) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !208
  %conv4.i.i = trunc i32 %25 to i16
  %26 = ptrtoint ptr %addr.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv4.i.i, ptr %addr.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !206
  call void @arm_heavy_mb() #10
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i14.i = getelementptr i8, ptr %28, i32 516
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 201326592) #10, !srcloc !207
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %29(i32 noundef 214748) #10
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr2.i15.i = getelementptr i8, ptr %31, i32 512
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i15.i) #10, !srcloc !204
  %33 = call i32 @llvm.bswap.i32(i32 %32) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !208
  %conv4.i16.i = trunc i32 %33 to i16
  %34 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv4.i16.i, ptr %17, align 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !206
  call void @arm_heavy_mb() #10
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i17.i = getelementptr i8, ptr %36, i32 516
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 234881024) #10, !srcloc !207
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %37(i32 noundef 214748) #10
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr2.i18.i = getelementptr i8, ptr %39, i32 512
  %40 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i18.i) #10, !srcloc !204
  %41 = call i32 @llvm.bswap.i32(i32 %40) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !208
  %conv4.i19.i = trunc i32 %41 to i16
  %42 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv4.i19.i, ptr %18, align 4
  %43 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %addr.i, align 4
  %45 = and i32 %44, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.i.not.i.i = icmp eq i32 %45, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %if.end23.dnet_get_hwaddr.exit_crit_edge

if.end23.dnet_get_hwaddr.exit_crit_edge:          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %dnet_get_hwaddr.exit

is_valid_ether_addr.exit.i:                       ; preds = %if.end23
  %conv.i.i.i = and i32 %41, 65535
  %or.i.i.i = or i32 %44, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.dnet_get_hwaddr.exit_crit_edge, label %if.then.i

is_valid_ether_addr.exit.i.dnet_get_hwaddr.exit_crit_edge: ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dnet_get_hwaddr.exit

if.then.i:                                        ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev3, align 4
  call void @dev_addr_mod(ptr noundef %47, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #10
  br label %dnet_get_hwaddr.exit

dnet_get_hwaddr.exit:                             ; preds = %if.then.i, %is_valid_ether_addr.exit.i.dnet_get_hwaddr.exit_crit_edge, %if.end23.dnet_get_hwaddr.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #10
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 86
  %48 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev_addr, align 64
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  %52 = and i32 %51, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.i.not.i = icmp eq i32 %52, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %dnet_get_hwaddr.exit.if.then29_crit_edge

dnet_get_hwaddr.exit.if.then29_crit_edge:         ; preds = %dnet_get_hwaddr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

is_valid_ether_addr.exit:                         ; preds = %dnet_get_hwaddr.exit
  %add.ptr.i.i137 = getelementptr i8, ptr %49, i32 4
  %53 = ptrtoint ptr %add.ptr.i.i137 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %add.ptr.i.i137, align 2
  %conv.i.i = zext i16 %54 to i32
  %or.i.i = or i32 %51, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.then29_crit_edge, label %is_valid_ether_addr.exit.if.end30_crit_edge

is_valid_ether_addr.exit.if.end30_crit_edge:      ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

is_valid_ether_addr.exit.if.then29_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

if.then29:                                        ; preds = %is_valid_ether_addr.exit.if.then29_crit_edge, %dnet_get_hwaddr.exit.if.then29_crit_edge
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i138) #10
  %55 = call ptr @memset(ptr %addr.i138, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i138, i32 noundef 6) #10
  %56 = ptrtoint ptr %addr.i138 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %addr.i138, align 1
  %58 = and i8 %57, -4
  %59 = or i8 %58, 2
  store i8 %59, ptr %addr.i138, align 1
  call void @dev_addr_mod(ptr noundef nonnull %call1, i32 noundef 0, ptr noundef nonnull %addr.i138, i32 noundef 6) #10
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 55
  %60 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i138) #10
  call fastcc void @__dnet_set_hwaddr(ptr noundef %add.ptr.i)
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %is_valid_ether_addr.exit.if.end30_crit_edge
  %call31 = call i32 @register_netdev(ptr noundef nonnull %call1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end38, label %do.end36

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.8) #13
  br label %err_out_free_irq

if.end38:                                         ; preds = %if.end30
  %call39 = call i32 @phy_register_fixup_for_uid(i32 noundef 21040320, i32 noundef -16, ptr noundef nonnull @dnet_phy_marvell_fixup) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end38.if.end46_crit_edge, label %do.end44

if.end38.if.end46_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

do.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev4, ptr noundef nonnull @.str.11) #13
  br label %if.end46

if.end46:                                         ; preds = %do.end44, %if.end38.if.end46_crit_edge
  %call.i.i = call ptr @mdiobus_alloc_size(i32 noundef 0) #10
  %mii_bus.i = getelementptr i8, ptr %call1, i32 2688
  %61 = ptrtoint ptr %mii_bus.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call.i.i, ptr %mii_bus.i, align 8
  %cmp.i139 = icmp eq ptr %call.i.i, null
  br i1 %cmp.i139, label %if.end46.err_out_unregister_netdev_crit_edge, label %if.end.i

if.end46.err_out_unregister_netdev_crit_edge:     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out_unregister_netdev

if.end.i:                                         ; preds = %if.end46
  %name.i = getelementptr inbounds %struct.mii_bus, ptr %call.i.i, i32 0, i32 1
  %62 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @.str.65, ptr %name.i, align 4
  %63 = ptrtoint ptr %mii_bus.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mii_bus.i, align 8
  %read.i = getelementptr inbounds %struct.mii_bus, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %read.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @dnet_mdio_read, ptr %read.i, align 4
  %66 = load ptr, ptr %mii_bus.i, align 8
  %write.i = getelementptr inbounds %struct.mii_bus, ptr %66, i32 0, i32 5
  %67 = ptrtoint ptr %write.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @dnet_mdio_write, ptr %write.i, align 8
  %68 = load ptr, ptr %mii_bus.i, align 8
  %id.i = getelementptr inbounds %struct.mii_bus, ptr %68, i32 0, i32 2
  %pdev.i = getelementptr i8, ptr %call1, i32 2352
  %69 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pdev.i, align 8
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 8
  %id8.i = getelementptr inbounds %struct.platform_device, ptr %70, i32 0, i32 1
  %73 = ptrtoint ptr %id8.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %id8.i, align 4
  %call9.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id.i, i32 noundef 61, ptr noundef nonnull @.str.66, ptr noundef %72, i32 noundef %74) #10
  %75 = ptrtoint ptr %mii_bus.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mii_bus.i, align 8
  %priv.i = getelementptr inbounds %struct.mii_bus, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %add.ptr.i, ptr %priv.i, align 8
  %78 = load ptr, ptr %mii_bus.i, align 8
  %call12.i = call i32 @__mdiobus_register(ptr noundef %78, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool.not.i, label %if.end14.i, label %if.end.i.err_out.i_crit_edge

if.end.i.err_out.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out.i

if.end14.i:                                       ; preds = %if.end.i
  %79 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev3, align 4
  %mii_bus.i.i = getelementptr i8, ptr %80, i32 2688
  %81 = ptrtoint ptr %mii_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mii_bus.i.i, align 8
  %call1.i.i = call ptr @phy_find_first(ptr noundef %82) #10
  %tobool.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i.i, label %if.end14.i.if.then17.i_crit_edge, label %if.end.i.i

if.end14.i.if.then17.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17.i

if.end.i.i:                                       ; preds = %if.end14.i
  %capabilities.i.i = getelementptr i8, ptr %80, i32 2456
  %83 = ptrtoint ptr %capabilities.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %capabilities.i.i, align 8
  %and.i.i = and i32 %84, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool3.not.i.i = icmp eq i32 %and.i.i, 0
  %init_name.i.i46.i.i = getelementptr inbounds %struct.device, ptr %call1.i.i, i32 0, i32 3
  %85 = ptrtoint ptr %init_name.i.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %init_name.i.i46.i.i, align 8
  %tobool.not.i.i47.i.i = icmp eq ptr %86, null
  br i1 %tobool3.not.i.i, label %if.else.i.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  br i1 %tobool.not.i.i47.i.i, label %if.end.i.i.i.i, label %if.then4.i.i.phydev_name.exit.i.i_crit_edge

if.then4.i.i.phydev_name.exit.i.i_crit_edge:      ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phydev_name.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %call1.i.i, align 4
  br label %phydev_name.exit.i.i

phydev_name.exit.i.i:                             ; preds = %if.end.i.i.i.i, %if.then4.i.i.phydev_name.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %88, %if.end.i.i.i.i ], [ %86, %if.then4.i.i.phydev_name.exit.i.i_crit_edge ]
  %call6.i.i = call ptr @phy_connect(ptr noundef %80, ptr noundef %retval.0.i.i.i.i, ptr noundef nonnull @dnet_handle_link_change, i32 noundef 7) #10
  br label %if.end9.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  br i1 %tobool.not.i.i47.i.i, label %if.end.i.i48.i.i, label %if.else.i.i.phydev_name.exit50.i.i_crit_edge

if.else.i.i.phydev_name.exit50.i.i_crit_edge:     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phydev_name.exit50.i.i

if.end.i.i48.i.i:                                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %89 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %call1.i.i, align 4
  br label %phydev_name.exit50.i.i

phydev_name.exit50.i.i:                           ; preds = %if.end.i.i48.i.i, %if.else.i.i.phydev_name.exit50.i.i_crit_edge
  %retval.0.i.i49.i.i = phi ptr [ %90, %if.end.i.i48.i.i ], [ %86, %if.else.i.i.phydev_name.exit50.i.i_crit_edge ]
  %call8.i.i = call ptr @phy_connect(ptr noundef %80, ptr noundef %retval.0.i.i49.i.i, ptr noundef nonnull @dnet_handle_link_change, i32 noundef 2) #10
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %phydev_name.exit50.i.i, %phydev_name.exit.i.i
  %phydev.0.i.i = phi ptr [ %call6.i.i, %phydev_name.exit.i.i ], [ %call8.i.i, %phydev_name.exit50.i.i ]
  %cmp.i.i.i = icmp ugt ptr %phydev.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end9.i.i.if.then17.i_crit_edge, label %do.end53

if.end9.i.i.if.then17.i_crit_edge:                ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17.i

if.then17.i:                                      ; preds = %if.end9.i.i.if.then17.i_crit_edge, %if.end14.i.if.then17.i_crit_edge
  %.str.74.sink.i = phi ptr [ @.str.71, %if.end14.i.if.then17.i_crit_edge ], [ @.str.74, %if.end9.i.i.if.then17.i_crit_edge ]
  %call18.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.74.sink.i, ptr noundef %80) #13
  %91 = ptrtoint ptr %mii_bus.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mii_bus.i, align 8
  call void @mdiobus_unregister(ptr noundef %92) #10
  br label %err_out.i

err_out.i:                                        ; preds = %if.then17.i, %if.end.i.err_out.i_crit_edge
  %93 = ptrtoint ptr %mii_bus.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mii_bus.i, align 8
  call void @mdiobus_free(ptr noundef %94) #10
  br label %err_out_unregister_netdev

do.end53:                                         ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %95 = ptrtoint ptr %capabilities.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %capabilities.i.i, align 8
  %and22.i.i = and i32 %96, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i.i)
  %tobool23.not.i.i = icmp eq i32 %and22.i.i, 0
  %..i.i = select i1 %tobool23.not.i.i, i32 100, i32 1000
  %call27.i.i = call i32 @phy_set_max_speed(ptr noundef %phydev.0.i.i, i32 noundef %..i.i) #10
  call void @phy_support_asym_pause(ptr noundef %phydev.0.i.i) #10
  %link.i.i = getelementptr i8, ptr %80, i32 2692
  %97 = ptrtoint ptr %link.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %link.i.i, align 4
  %speed.i.i = getelementptr i8, ptr %80, i32 2696
  %98 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %speed.i.i, align 8
  %duplex.i.i = getelementptr i8, ptr %80, i32 2700
  %99 = ptrtoint ptr %duplex.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -1, ptr %duplex.i.i, align 4
  %100 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %add.ptr.i, align 8
  %102 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %res, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %103, align 4
  %106 = ptrtoint ptr %irq14 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %irq14, align 4
  %108 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev_addr, align 64
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev4, ptr noundef nonnull @.str.15, ptr noundef %101, i32 noundef %105, i32 noundef %107, ptr noundef %109) #13
  %110 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %capabilities, align 8
  %and63 = and i32 %111, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  %cond = select i1 %tobool64.not, ptr @.str.22, ptr @.str.21
  %and66 = and i32 %111, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  %cond68 = select i1 %tobool67.not, ptr @.str.22, ptr @.str.21
  %and70 = and i32 %111, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  %cond72 = select i1 %tobool71.not, ptr @.str.22, ptr @.str.21
  %and74 = and i32 %111, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  %cond76 = select i1 %tobool75.not, ptr @.str.22, ptr @.str.21
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev4, ptr noundef nonnull @.str.19, ptr noundef nonnull %cond, ptr noundef nonnull %cond68, ptr noundef nonnull %cond72, ptr noundef nonnull %cond76) #13
  %phydev77 = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 145
  %112 = ptrtoint ptr %phydev77 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %phydev77, align 16
  call void @phy_attached_info(ptr noundef %113) #10
  br label %cleanup

err_out_unregister_netdev:                        ; preds = %err_out.i, %if.end46.err_out_unregister_netdev_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end46.err_out_unregister_netdev_crit_edge ], [ -6, %err_out.i ]
  call void @unregister_netdev(ptr noundef nonnull %call1) #10
  br label %err_out_free_irq

err_out_free_irq:                                 ; preds = %err_out_unregister_netdev, %do.end36
  %err.0 = phi i32 [ %call31, %do.end36 ], [ %retval.0.i.ph, %err_out_unregister_netdev ]
  %114 = ptrtoint ptr %irq14 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %irq14, align 4
  %call79 = call ptr @free_irq(i32 noundef %115, ptr noundef nonnull %call1) #10
  br label %err_out_free_dev

err_out_free_dev:                                 ; preds = %err_out_free_irq, %do.end21, %if.then10
  %err.1 = phi i32 [ %5, %if.then10 ], [ %call.i, %do.end21 ], [ %err.0, %err_out_free_irq ]
  call void @free_netdev(ptr noundef nonnull %call1) #10
  br label %cleanup

cleanup:                                          ; preds = %err_out_free_dev, %do.end53, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_out_free_dev ], [ 0, %do.end53 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dnet_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then:                                          ; preds = %entry
  %phydev = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 145
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 16
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @phy_disconnect(ptr noundef nonnull %3) #10
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %mii_bus = getelementptr i8, ptr %1, i32 2688
  %4 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mii_bus, align 8
  tail call void @mdiobus_unregister(ptr noundef %5) #10
  %6 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mii_bus, align 8
  tail call void @mdiobus_free(ptr noundef %7) #10
  tail call void @unregister_netdev(ptr noundef nonnull %1) #10
  %irq = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 64
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %call6 = tail call ptr @free_irq(i32 noundef %9, ptr noundef nonnull %1) #10
  tail call void @free_netdev(ptr noundef nonnull %1) #10
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dnet_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 2304
  %lock = getelementptr i8, ptr %dev_id, i32 2308
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 260
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !209
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr12 = getelementptr i8, ptr %4, i32 264
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #10, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !210
  %6 = and i32 %5, %2
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %and16 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool.not = icmp eq i32 %and16, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr20 = getelementptr i8, ptr %9, i32 264
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #10, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !211
  %11 = and i32 %10, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !212
  tail call void @arm_heavy_mb() #10
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr29 = getelementptr i8, ptr %13, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %11) #10, !srcloc !207
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 103
  %14 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %15) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %handled.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %and30 = and i32 %7, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end.if.end55_crit_edge, label %do.end35

if.end.if.end55_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

do.end35:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr40 = getelementptr i8, ptr %17, i32 268
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #10, !srcloc !204
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !213
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef %19, i32 noundef %7) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr49 = getelementptr i8, ptr %21, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 134217728) #10, !srcloc !207
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr54 = getelementptr i8, ptr %24, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 0) #10, !srcloc !207
  br label %if.end55

if.end55:                                         ; preds = %do.end35, %if.end.if.end55_crit_edge
  %handled.1 = phi i32 [ 1, %do.end35 ], [ %handled.0, %if.end.if.end55_crit_edge ]
  %and56 = and i32 %7, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end81, label %if.end81.thread

if.end81:                                         ; preds = %if.end55
  %and82 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.end102, label %if.end81.if.then84_crit_edge

if.end81.if.then84_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then84

if.end81.thread:                                  ; preds = %if.end55
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr66 = getelementptr i8, ptr %26, i32 272
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr66) #10, !srcloc !204
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !216
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, i32 noundef %28, i32 noundef %7) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !217
  tail call void @arm_heavy_mb() #10
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr75 = getelementptr i8, ptr %30, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 268435456) #10, !srcloc !207
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !218
  tail call void @arm_heavy_mb() #10
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr80 = getelementptr i8, ptr %33, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 0) #10, !srcloc !207
  %and82150 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82150)
  %tobool83.not151 = icmp eq i32 %and82150, 0
  br i1 %tobool83.not151, label %if.end81.thread.if.end115_crit_edge, label %if.end81.thread.if.then84_crit_edge

if.end81.thread.if.then84_crit_edge:              ; preds = %if.end81.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then84

if.end81.thread.if.end115_crit_edge:              ; preds = %if.end81.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115

if.then84:                                        ; preds = %if.end81.thread.if.then84_crit_edge, %if.end81.if.then84_crit_edge
  %napi = getelementptr i8, ptr %dev_id, i32 2464
  %call85 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #10
  br i1 %call85, label %if.then86, label %if.then84.if.end115_crit_edge

if.then84.if.end115_crit_edge:                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115

if.then86:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr90 = getelementptr i8, ptr %35, i32 264
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90) #10, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  %37 = and i32 %36, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !220
  tail call void @arm_heavy_mb() #10
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr99 = getelementptr i8, ptr %39, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99, i32 %37) #10, !srcloc !207
  tail call void @__napi_schedule(ptr noundef %napi) #10
  br label %if.end115

if.end102:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.1)
  %tobool103.not = icmp eq i32 %handled.1, 0
  br i1 %tobool103.not, label %do.body105, label %if.end102.if.end115_crit_edge

if.end102.if.end115_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115

do.body105:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dnet_interrupt.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dnet_interrupt, %if.then111)) #10
          to label %if.end115 [label %if.then111], !srcloc !221

if.then111:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dnet_interrupt.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.24, i32 noundef %7) #10
  br label %if.end115

if.end115:                                        ; preds = %if.then111, %do.body105, %if.end102.if.end115_crit_edge, %if.then86, %if.then84.if.end115_crit_edge, %if.end81.thread.if.end115_crit_edge
  %tobool103.not147 = phi i32 [ 0, %if.then111 ], [ 1, %if.end102.if.end115_crit_edge ], [ 0, %do.body105 ], [ 1, %if.then86 ], [ 1, %if.then84.if.end115_crit_edge ], [ 1, %if.end81.thread.if.end115_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret i32 %tobool103.not147
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dnet_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -160
  %dev1 = getelementptr i8, ptr %napi, i32 -108
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp87 = icmp sgt i32 %budget, 0
  br i1 %cmp87, label %entry.while.body_crit_edge, label %entry.if.end56_crit_edge

entry.if.end56_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end40.while.body_crit_edge, %entry.while.body_crit_edge
  %npackets.088 = phi i32 [ %npackets.1, %if.end40.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %add.ptr2 = getelementptr i8, ptr %3, i32 300
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #10, !srcloc !204
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !222
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %5)
  %tobool.not = icmp ult i32 %5, 65536
  br i1 %tobool.not, label %if.then42.critedge, label %if.end

if.end:                                           ; preds = %while.body
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #10, !srcloc !204
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !223
  %and = and i32 %9, 65535
  %and12 = and i32 %9, -552075264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end.if.end17_crit_edge, label %do.end

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, i32 noundef %9) #13
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.end.if.end17_crit_edge
  %add = add nuw nsw i32 %and, 5
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef %add, i32 noundef 2592) #10
  %cmp19.not = icmp eq ptr %call.i, null
  br i1 %cmp19.not, label %do.end37, label %if.then20

if.then20:                                        ; preds = %if.end17
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 2
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %12 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %13, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call21 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %and) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2484.not = icmp eq i32 %and, 0
  br i1 %cmp2484.not, label %if.then20.for.end_crit_edge, label %for.body.preheader

if.then20.for.end_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.preheader:                               ; preds = %if.then20
  %add22 = add nuw nsw i32 %and, 3
  %shr23 = lshr i32 %add22, 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %data_ptr.086 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %call21, %for.body.preheader ]
  %i.085 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 8
  %add.ptr28 = getelementptr i8, ptr %15, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #10, !srcloc !204
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !224
  %incdec.ptr = getelementptr i32, ptr %data_ptr.086, i32 1
  %18 = ptrtoint ptr %data_ptr.086 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %data_ptr.086, align 4
  %inc = add nuw nsw i32 %i.085, 1
  %exitcond.not = icmp eq i32 %inc, %shr23
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then20.for.end_crit_edge
  %call32 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i, ptr noundef %1) #10
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %19 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %call32, ptr %protocol, align 8
  %call33 = tail call i32 @netif_receive_skb(ptr noundef nonnull %call.i) #10
  %inc34 = add i32 %npackets.088, 1
  br label %if.end40

do.end37:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %1, i32 noundef %and) #13
  br label %if.end40

if.end40:                                         ; preds = %do.end37, %for.end
  %npackets.1 = phi i32 [ %inc34, %for.end ], [ %npackets.088, %do.end37 ]
  %cmp = icmp slt i32 %npackets.1, %budget
  br i1 %cmp, label %if.end40.while.body_crit_edge, label %if.end40.if.end56_crit_edge

if.end40.if.end56_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.end40.while.body_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.then42.critedge:                               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %call43 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %npackets.088) #10
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 8
  %add.ptr47 = getelementptr i8, ptr %21, i32 264
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #10, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !225
  %23 = or i32 %22, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !226
  tail call void @arm_heavy_mb() #10
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 8
  %add.ptr55 = getelementptr i8, ptr %25, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %23) #10, !srcloc !207
  br label %if.end56

if.end56:                                         ; preds = %if.then42.critedge, %if.end40.if.end56_crit_edge, %entry.if.end56_crit_edge
  %npackets.083 = phi i32 [ %npackets.088, %if.then42.critedge ], [ 0, %entry.if.end56_crit_edge ], [ %npackets.1, %if.end40.if.end56_crit_edge ]
  ret i32 %npackets.083
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__dnet_set_hwaddr(ptr nocapture noundef readonly %bp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.dnet, ptr %bp, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !227
  tail call void @arm_heavy_mb() #10
  %conv.i = zext i16 %5 to i32
  %6 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #10
  %7 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bp, align 8
  %add.ptr.i = getelementptr i8, ptr %8, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #10, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !228
  tail call void @arm_heavy_mb() #10
  %9 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bp, align 8
  %add.ptr5.i = getelementptr i8, ptr %10, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 167772288) #10, !srcloc !207
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #10
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %dev_addr2 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 86
  %14 = ptrtoint ptr %dev_addr2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_addr2, align 64
  %add.ptr = getelementptr i8, ptr %15, i32 2
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !227
  tail call void @arm_heavy_mb() #10
  %conv.i15 = zext i16 %17 to i32
  %18 = tail call i32 @llvm.bswap.i32(i32 %conv.i15) #10
  %19 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bp, align 8
  %add.ptr.i16 = getelementptr i8, ptr %20, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %18) #10, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !228
  tail call void @arm_heavy_mb() #10
  %21 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bp, align 8
  %add.ptr5.i17 = getelementptr i8, ptr %22, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i17, i32 201326720) #10, !srcloc !207
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #10
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %dev_addr5 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 86
  %26 = ptrtoint ptr %dev_addr5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_addr5, align 64
  %add.ptr6 = getelementptr i8, ptr %27, i32 4
  %28 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %add.ptr6, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !227
  tail call void @arm_heavy_mb() #10
  %conv.i18 = zext i16 %29 to i32
  %30 = tail call i32 @llvm.bswap.i32(i32 %conv.i18) #10
  %31 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bp, align 8
  %add.ptr.i19 = getelementptr i8, ptr %32, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %30) #10, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !228
  tail call void @arm_heavy_mb() #10
  %33 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bp, align 8
  %add.ptr5.i20 = getelementptr i8, ptr %34, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i20, i32 234881152) #10, !srcloc !207
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_register_fixup_for_uid(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dnet_phy_marvell_fixup(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 24, i16 noundef zeroext 16712) #10
  ret i32 %call.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_attached_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dnet_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %napi = getelementptr i8, ptr %dev, i32 2464
  tail call void @napi_enable(ptr noundef %napi) #10
  tail call fastcc void @dnet_reset_hw(ptr noundef %add.ptr.i) #10
  tail call fastcc void @__dnet_set_hwaddr(ptr noundef %add.ptr.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !206
  tail call void @arm_heavy_mb() #10
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 33554432) #10, !srcloc !207
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #10
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %6, i32 512
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #10, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !208
  %8 = and i32 %7, 905904128
  %dev.i = getelementptr i8, ptr %dev, i32 2356
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %flags.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 14
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 8
  %and.i = lshr i32 %12, 8
  %13 = and i32 %and.i, 1
  %and3.i = shl i32 %12, 3
  %14 = and i32 %and3.i, 16
  %15 = xor i32 %14, 16
  %16 = or i32 %8, -905969664
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #10
  %18 = or i32 %13, %17
  %conv9.i = or i32 %18, %15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !227
  tail call void @arm_heavy_mb() #10
  %19 = tail call i32 @llvm.bswap.i32(i32 %conv9.i) #10
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i24.i = getelementptr i8, ptr %21, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 %19) #10, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !228
  tail call void @arm_heavy_mb() #10
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr5.i.i = getelementptr i8, ptr %23, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 33554560) #10, !srcloc !207
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #10
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i9 = getelementptr i8, ptr %26, i32 260
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9) #10, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !230
  tail call void @arm_heavy_mb() #10
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr13.i = getelementptr i8, ptr %29, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 404555520) #10, !srcloc !207
  %30 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %phydev, align 16
  %call2 = tail call i32 @phy_start_aneg(ptr noundef %31) #10
  %32 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %phydev, align 16
  tail call void @phy_start(ptr noundef %33) #10
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %34 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %35, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -11, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dnet_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  %napi = getelementptr i8, ptr %dev, i32 2464
  tail call void @napi_disable(ptr noundef %napi) #10
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @phy_stop(ptr noundef nonnull %3) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call fastcc void @dnet_reset_hw(ptr noundef %add.ptr.i)
  tail call void @netif_carrier_off(ptr noundef %dev) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dnet_start_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 272
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !231
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dnet_start_xmit.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dnet_start_xmit, %if.then)) #10
          to label %do.body11 [label %if.then], !srcloc !221

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  %head = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %5 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dnet_start_xmit.__UNIQUE_ID_ddebug352, ptr noundef nonnull @.str.30, i32 noundef %4, ptr noundef %6, ptr noundef %8) #10
  br label %do.body11

do.body11:                                        ; preds = %if.then, %entry
  %lock = getelementptr i8, ptr %dev, i32 2308
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr22 = getelementptr i8, ptr %10, i32 272
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #10, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  %data26 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data26, align 4
  %14 = ptrtoint ptr %13 to i32
  %len27 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %15 = ptrtoint ptr %len27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len27, align 4
  %add = add i32 %16, 3
  %and29 = and i32 %14, 3
  %add30 = add i32 %add, %and29
  %shr = lshr i32 %add30, 2
  %shl = shl nuw nsw i32 %and29, 16
  %or = or i32 %shl, %16
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr37 = getelementptr i8, ptr %18, i32 304
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #10, !srcloc !204
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !233
  %sub = sub i32 1024, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %sub)
  %cmp41 = icmp ult i32 %shr, %sub
  br i1 %cmp41, label %if.then43, label %do.body11.if.end56_crit_edge

do.body11.if.end56_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then43:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add30)
  %cmp44115.not = icmp ult i32 %add30, 4
  br i1 %cmp44115.not, label %if.then43.do.body51_crit_edge, label %do.body46.preheader

if.then43.do.body51_crit_edge:                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body51

do.body46.preheader:                              ; preds = %if.then43
  %and = and i32 %14, -4
  %21 = inttoptr i32 %and to ptr
  %umax = call i32 @llvm.umax.i32(i32 %shr, i32 1)
  br label %do.body46

do.body46:                                        ; preds = %do.body46.do.body46_crit_edge, %do.body46.preheader
  %i.0117 = phi i32 [ %inc, %do.body46.do.body46_crit_edge ], [ 0, %do.body46.preheader ]
  %bufp.0116 = phi ptr [ %incdec.ptr, %do.body46.do.body46_crit_edge ], [ %21, %do.body46.preheader ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !234
  tail call void @arm_heavy_mb() #10
  %incdec.ptr = getelementptr i32, ptr %bufp.0116, i32 1
  %22 = ptrtoint ptr %bufp.0116 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bufp.0116, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr50 = getelementptr i8, ptr %26, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 %24) #10, !srcloc !207
  %inc = add nuw nsw i32 %i.0117, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %do.body46.do.body51_crit_edge, label %do.body46.do.body46_crit_edge

do.body46.do.body46_crit_edge:                    ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body46

do.body46.do.body51_crit_edge:                    ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body51

do.body51:                                        ; preds = %do.body46.do.body51_crit_edge, %if.then43.do.body51_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !235
  tail call void @arm_heavy_mb() #10
  %27 = tail call i32 @llvm.bswap.i32(i32 %or)
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr55 = getelementptr i8, ptr %29, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %27) #10, !srcloc !207
  br label %if.end56

if.end56:                                         ; preds = %do.body51, %do.body11.if.end56_crit_edge
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr60 = getelementptr i8, ptr %31, i32 304
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60) #10, !srcloc !204
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %33)
  %cmp64 = icmp ugt i32 %33, 640
  br i1 %cmp64, label %if.then66, label %if.end56.if.end87_crit_edge

if.end56.if.end87_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

if.then66:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %34 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %35, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr70 = getelementptr i8, ptr %37, i32 260
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr70) #10, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !237
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr77 = getelementptr i8, ptr %40, i32 264
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr77) #10, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !238
  %42 = or i32 %41, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !239
  tail call void @arm_heavy_mb() #10
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr86 = getelementptr i8, ptr %44, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 %42) #10, !srcloc !207
  br label %if.end87

if.end87:                                         ; preds = %if.then66, %if.end56.if.end87_crit_edge
  tail call void @skb_clone_tx_timestamp(ptr noundef %skb) #10
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %45 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %end.i.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %tx_flags.i, align 1
  %49 = and i8 %48, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i = icmp eq i8 %49, 0
  br i1 %tobool.not.i, label %if.end87.skb_tx_timestamp.exit_crit_edge, label %if.then.i

if.end87.skb_tx_timestamp.exit_crit_edge:         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_tx_timestamp.exit

if.then.i:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #10
  br label %skb_tx_timestamp.exit

skb_tx_timestamp.exit:                            ; preds = %if.then.i, %if.end87.skb_tx_timestamp.exit_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call14) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_do_ioctl_running(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dnet_get_stats(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %hw_stats = getelementptr i8, ptr %dev, i32 2360
  %add.ptr2.i = getelementptr i8, ptr %dev, i32 2424
  %cmp2199.i = icmp ult ptr %hw_stats, %add.ptr2.i
  br i1 %cmp2199.i, label %for.body.preheader.i, label %entry.for.end.i_crit_edge

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.preheader.i:                             ; preds = %entry
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i55 = getelementptr i8, ptr %1, i32 768
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %reg.0101.i = phi ptr [ %incdec.ptr24.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr.i55, %for.body.preheader.i ]
  %p.0100.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %hw_stats, %for.body.preheader.i ]
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg.0101.i) #10, !srcloc !204
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !240
  %4 = ptrtoint ptr %p.0100.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %p.0100.i, align 4
  %add.i = add i32 %5, %3
  store i32 %add.i, ptr %p.0100.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %p.0100.i, i32 1
  %incdec.ptr24.i = getelementptr i32, ptr %reg.0101.i, i32 1
  %cmp21.i = icmp ult ptr %incdec.ptr.i, %add.ptr2.i
  br i1 %cmp21.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %add.ptr29.i = getelementptr i8, ptr %dev, i32 2456
  %cmp67102.i = icmp ult ptr %add.ptr2.i, %add.ptr29.i
  br i1 %cmp67102.i, label %for.body68.preheader.i, label %for.end.i.dnet_update_stats.exit_crit_edge

for.end.i.dnet_update_stats.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dnet_update_stats.exit

for.body68.preheader.i:                           ; preds = %for.end.i
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr26.i = getelementptr i8, ptr %7, i32 1024
  br label %for.body68.i

for.body68.i:                                     ; preds = %for.body68.i.for.body68.i_crit_edge, %for.body68.preheader.i
  %reg.1104.i = phi ptr [ %incdec.ptr77.i, %for.body68.i.for.body68.i_crit_edge ], [ %add.ptr26.i, %for.body68.preheader.i ]
  %p.1103.i = phi ptr [ %incdec.ptr76.i, %for.body68.i.for.body68.i_crit_edge ], [ %add.ptr2.i, %for.body68.preheader.i ]
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg.1104.i) #10, !srcloc !204
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  %10 = ptrtoint ptr %p.1103.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %p.1103.i, align 4
  %add74.i = add i32 %11, %9
  store i32 %add74.i, ptr %p.1103.i, align 4
  %incdec.ptr76.i = getelementptr i32, ptr %p.1103.i, i32 1
  %incdec.ptr77.i = getelementptr i32, ptr %reg.1104.i, i32 1
  %cmp67.i = icmp ult ptr %incdec.ptr76.i, %add.ptr29.i
  br i1 %cmp67.i, label %for.body68.i.for.body68.i_crit_edge, label %for.body68.i.dnet_update_stats.exit_crit_edge

for.body68.i.dnet_update_stats.exit_crit_edge:    ; preds = %for.body68.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dnet_update_stats.exit

for.body68.i.for.body68.i_crit_edge:              ; preds = %for.body68.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body68.i

dnet_update_stats.exit:                           ; preds = %for.body68.i.dnet_update_stats.exit_crit_edge, %for.end.i.dnet_update_stats.exit_crit_edge
  %stats = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %rx_len_chk_err = getelementptr i8, ptr %dev, i32 2364
  %12 = ptrtoint ptr %rx_len_chk_err to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_len_chk_err, align 4
  %rx_lng_frm = getelementptr i8, ptr %dev, i32 2368
  %14 = ptrtoint ptr %rx_lng_frm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_lng_frm, align 4
  %add = add i32 %15, %13
  %rx_shrt_frm = getelementptr i8, ptr %dev, i32 2372
  %16 = ptrtoint ptr %rx_shrt_frm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_shrt_frm, align 4
  %add1 = add i32 %add, %17
  %rx_crc_err = getelementptr i8, ptr %dev, i32 2380
  %18 = ptrtoint ptr %rx_crc_err to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_crc_err, align 4
  %rx_pre_shrink = getelementptr i8, ptr %dev, i32 2408
  %20 = ptrtoint ptr %rx_pre_shrink to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_pre_shrink, align 4
  %rx_drib_nib = getelementptr i8, ptr %dev, i32 2412
  %22 = ptrtoint ptr %rx_drib_nib to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_drib_nib, align 4
  %rx_unsup_opcd = getelementptr i8, ptr %dev, i32 2416
  %24 = ptrtoint ptr %rx_unsup_opcd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_unsup_opcd, align 4
  %add2 = add i32 %21, %add1
  %add3 = add i32 %add2, %19
  %add4 = add i32 %add3, %23
  %add5 = add i32 %add4, %25
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %26 = ptrtoint ptr %rx_errors to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add5, ptr %rx_errors, align 4
  %tx_bad_fcs = getelementptr i8, ptr %dev, i32 2444
  %27 = ptrtoint ptr %tx_bad_fcs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_bad_fcs, align 4
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %29 = ptrtoint ptr %tx_errors to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %tx_errors, align 4
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 10
  %30 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add2, ptr %rx_length_errors, align 4
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 12
  %31 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %19, ptr %rx_crc_errors, align 4
  %add16 = add i32 %23, %21
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 13
  %32 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add16, ptr %rx_frame_errors, align 4
  %rx_ok_pkt = getelementptr i8, ptr %dev, i32 2384
  %33 = ptrtoint ptr %rx_ok_pkt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_ok_pkt, align 4
  %35 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %stats, align 4
  %36 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr2.i, align 4
  %tx_multicast = getelementptr i8, ptr %dev, i32 2432
  %38 = ptrtoint ptr %tx_multicast to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tx_multicast, align 4
  %add17 = add i32 %39, %37
  %tx_brdcast = getelementptr i8, ptr %dev, i32 2436
  %40 = ptrtoint ptr %tx_brdcast to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tx_brdcast, align 4
  %add18 = add i32 %add17, %41
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %42 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add18, ptr %tx_packets, align 4
  %rx_byte = getelementptr i8, ptr %dev, i32 2420
  %43 = ptrtoint ptr %rx_byte to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rx_byte, align 4
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 2
  %45 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %rx_bytes, align 4
  %tx_byte = getelementptr i8, ptr %dev, i32 2452
  %46 = ptrtoint ptr %tx_byte to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tx_byte, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %48 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %tx_bytes, align 4
  %rx_multicast = getelementptr i8, ptr %dev, i32 2396
  %49 = ptrtoint ptr %rx_multicast to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rx_multicast, align 4
  %multicast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 8
  %51 = ptrtoint ptr %multicast to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %multicast, align 4
  %52 = ptrtoint ptr %hw_stats to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %hw_stats, align 4
  %rx_missed_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 15
  %54 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %rx_missed_errors, align 4
  tail call fastcc void @dnet_print_pretty_hwstats(ptr noundef %hw_stats)
  ret ptr %stats
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_start_aneg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dnet_reset_hw(ptr nocapture noundef readonly %bp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !227
  tail call void @arm_heavy_mb() #10
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bp, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33554432) #10, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !228
  tail call void @arm_heavy_mb() #10
  %2 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bp, align 8
  %add.ptr5.i = getelementptr i8, ptr %3, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 128) #10, !srcloc !207
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !242
  tail call void @arm_heavy_mb() #10
  %5 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bp, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 256) #10, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !243
  tail call void @arm_heavy_mb() #10
  %7 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bp, align 8
  %add.ptr4 = getelementptr i8, ptr %8, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 -2147418112) #10, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !244
  tail call void @arm_heavy_mb() #10
  %9 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bp, align 8
  %add.ptr8 = getelementptr i8, ptr %10, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 402653184) #10, !srcloc !207
  tail call void @msleep(i32 noundef 1) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  tail call void @arm_heavy_mb() #10
  %11 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bp, align 8
  %add.ptr12 = getelementptr i8, ptr %12, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 0) #10, !srcloc !207
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dnet_print_pretty_hwstats(ptr noundef readonly %hwstat) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dnet_print_pretty_hwstats, %if.then)) #10
          to label %do.body3 [label %if.then], !srcloc !221

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31) #10
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dnet_print_pretty_hwstats, %if.then15)) #10
          to label %do.body18 [label %if.then15], !srcloc !221

if.then15:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.33) #10
  br label %do.body18

do.body18:                                        ; preds = %if.then15, %do.body3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dnet_print_pretty_hwstats, %if.then30)) #10
          to label %do.body33 [label %if.then30], !srcloc !221

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %hwstat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwstat, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.34, i32 noundef %1) #10
  br label %do.body33

do.body33:                                        ; preds = %if.then30, %do.body18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dnet_print_pretty_hwstats, %if.then45)) #10
          to label %do.body48 [label %if.then45], !srcloc !221

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  %rx_len_chk_err = getelementptr inbounds %struct.dnet_stats, ptr %hwstat, i32 0, i32 1
  %2 = ptrtoint ptr %rx_len_chk_err to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_len_chk_err, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.35, i32 noundef %3) #10
  br label %do.body48

do.body48:                                        ; preds = %if.then45, %do.body33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dnet_print_pretty_hwstats, %if.then60)) #10
          to label %do.body63 [label %if.then60], !srcloc !221

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #12
  %rx_lng_frm = getelementptr inbounds %struct.dnet_stats, ptr %hwstat, i32 0, i32 2
  %4 = ptrtoint ptr %rx_lng_frm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_lng_frm, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug357, ptr noundef nonnull @.str.36, i32 noundef %5) #10
  br label %do.body63

do.body63:                                        ; preds = %if.then60, %do.body48
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dnet_print_pretty_hwstats, %if.then75)) #10
          to label %do.body78 [label %if.then75], !srcloc !221

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #12
  %rx_shrt_frm = getelementptr inbounds %struct.dnet_stats, ptr %hwstat, i32 0, i32 3
  %6 = ptrtoint ptr %rx_shrt_frm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_shrt_frm, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug358, ptr noundef nonnull @.str.37, i32 noundef %7) #10
  br label %do.body78

do.body78:                                        ; preds = %if.then75, %do.body63
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dnet_print_pretty_hwstats, %if.then90)) #10
          to label %do.body93 [label %if.then90], !srcloc !221

if.then90:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #12
  %rx_ipg_viol = getelementptr inbounds %struct.dnet_stats, ptr %hwstat, i32 0, i32 4
  %8 = ptrtoint ptr %rx_ipg_viol to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_ipg_viol, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug359, ptr noundef nonnull @.str.38, i32 noundef %9) #10
  br label %do.body93

do.body93:                                        ; preds = %if.then90, %do.body78
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dnet_print_pretty_hwstats, %if.then105)) #10
          to label %do.body108 [label %if.then105], !srcloc !221

if.then105:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #12
  %rx_crc_err = getelementptr inbounds %struct.dnet_stats, ptr %hwstat, i32 0, i32 5
  %10 = ptrtoint ptr %rx_crc_err to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_crc_err, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug360, ptr noundef nonnull @.str.39, i32 noundef %11) #10
  br label %do.body108

do.body108:                                       ; preds = %if.then105, %do.body93
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dnet_print_pretty_hwstats, %if.then120)) #10
          to label %do.body123 [label %if.then120], !srcloc !221

if.then120:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #12
  %rx_ok_pkt = getelementptr inbounds %struct.dnet_stats, ptr %hwstat, i32 0, i32 6
  %12 = ptrtoint ptr %rx_ok_pkt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_ok_pkt, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug361, ptr noundef nonnull @.str.40, i32 noundef %13) #10
  br label %do.body123

do.body123:                                       ; preds = %if.then120, %do.body108
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dnet_print_pretty_hwstats, %if.then135)) #10
          to label %do.body138 [label %if.then135], !srcloc !221

if.then135:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #12
  %rx_ctl_frm = getelementptr inbounds %struct.dnet_stats, ptr %hwstat, i32 0, i32 7
  %14 = ptrtoint ptr %rx_ctl_frm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_ctl_frm, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug362, ptr noundef nonnull @.str.41, i32 noundef %15) #10
  br label %do.body138

do.body138:                                       ; preds = %if.then135, %do.body123
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dnet_print_pretty_hwstats, %if.then150)) #10
          to label %do.body153 [label %if.then150], !srcloc !221

if.then150:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #12
  %rx_pause_frm = getelementptr inbounds %struct.dnet_stats, ptr %hwstat, i32 0, i32 8
  %16 = ptrtoint ptr %rx_pause_frm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_pause_frm, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug363, ptr noundef nonnull @.str.42, i32 noundef %17) #10
  br label %do.body153

do.body153:                                       ; preds = %if.then150, %do.body138
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dnet_print_pretty_hwstats, %if.then165)) #10
          to label %do.body168 [label %if.then165], !srcloc !221

if.then165:                                       ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #12
  %rx_multicast = getelementptr inbounds %struct.dnet_stats, ptr %hwstat, i32 0, i32 9
  %18 = ptrtoint ptr %rx_multicast to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_multicast, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug364, ptr noundef nonnull @.str.43, i32 noundef %19) #10
  br label %do.body168

do.body168:                                       ; preds = %if.then165, %do.body153
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dnet_print_pretty_hwstats, %if.then180)) #10
          to label %do.body183 [label %if.then180], !srcloc !221

if.then180:                                       ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #12
  %rx_broadcast = getelementptr inbounds %struct.dnet_stats, ptr %hwstat, i32 0, i32 10
  %20 = ptrtoint ptr %rx_broadcast to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_broadcast, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug365, ptr noundef nonnull @.str.44, i32 noundef %21) #10
  br label %do.body183

do.body183:                                       ; preds = %if.then180, %do.body168
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dnet_print_pretty_hwstats, %if.then195)) #10
          to label %do.body198 [label %if.then195], !srcloc !221

if.then195:                                       ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #12
  %rx_vlan_tag = getelementptr inbounds %struct.dnet_stats, ptr %hwstat, i32 0, i32 11
  %22 = ptrtoint ptr %rx_vlan_tag to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_vlan_tag, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug366, ptr noundef nonnull @.str.45, i32 noundef %23) #10
  br label %do.body198

do.body198:                                       ; preds = %if.then195, %do.body183
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dnet_print_pretty_hwstats, %if.then210)) #10
          to label %do.body213 [label %if.then210], !srcloc !221

if.then210:                                       ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #12
  %rx_pre_shrink = getelementptr inbounds %struct.dnet_stats, ptr %hwstat, i32 0, i32 12
  %24 = ptrtoint ptr %rx_pre_shrink to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_pre_shrink, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug367, ptr noundef nonnull @.str.46, i32 noundef %25) #10
  br label %do.body213

do.body213:                                       ; preds = %if.then210, %do.body198
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dnet_print_pretty_hwstats, %if.then225)) #10
          to label %do.body228 [label %if.then225], !srcloc !221

if.then225:                                       ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #12
  %rx_drib_nib = getelementptr inbounds %struct.dnet_stats, ptr %hwstat, i32 0, i32 13
  %26 = ptrtoint ptr %rx_drib_nib to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_drib_nib, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug368, ptr noundef nonnull @.str.47, i32 noundef %27) #10
  br label %do.body228

do.body228:                                       ; preds = %if.then225, %do.body213
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dnet_print_pretty_hwstats, %if.then240)) #10
          to label %do.body243 [label %if.then240], !srcloc !221

if.then240:                                       ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #12
  %rx_unsup_opcd = getelementptr inbounds %struct.dnet_stats, ptr %hwstat, i32 0, i32 14
  %28 = ptrtoint ptr %rx_unsup_opcd to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_unsup_opcd, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug369, ptr noundef nonnull @.str.48, i32 noundef %29) #10
  br label %do.body243

do.body243:                                       ; preds = %if.then240, %do.body228
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dnet_print_pretty_hwstats, %if.then255)) #10
          to label %do.body258 [label %if.then255], !srcloc !221

if.then255:                                       ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #12
  %rx_byte = getelementptr inbounds %struct.dnet_stats, ptr %hwstat, i32 0, i32 15
  %30 = ptrtoint ptr %rx_byte to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_byte, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug370, ptr noundef nonnull @.str.49, i32 noundef %31) #10
  br label %do.body258

do.body258:                                       ; preds = %if.then255, %do.body243
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dnet_print_pretty_hwstats, %if.then270)) #10
          to label %do.body273 [label %if.then270], !srcloc !221

if.then270:                                       ; preds = %do.body258
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug371, ptr noundef nonnull @.str.50) #10
  br label %do.body273

do.body273:                                       ; preds = %if.then270, %do.body258
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dnet_print_pretty_hwstats, %if.then285)) #10
          to label %do.body288 [label %if.then285], !srcloc !221

if.then285:                                       ; preds = %do.body273
  call void @__sanitizer_cov_trace_pc() #12
  %tx_unicast = getelementptr inbounds %struct.dnet_stats, ptr %hwstat, i32 0, i32 16
  %32 = ptrtoint ptr %tx_unicast to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_unicast, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug372, ptr noundef nonnull @.str.51, i32 noundef %33) #10
  br label %do.body288

do.body288:                                       ; preds = %if.then285, %do.body273
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dnet_print_pretty_hwstats, %if.then300)) #10
          to label %do.body303 [label %if.then300], !srcloc !221

if.then300:                                       ; preds = %do.body288
  call void @__sanitizer_cov_trace_pc() #12
  %tx_pause_frm = getelementptr inbounds %struct.dnet_stats, ptr %hwstat, i32 0, i32 17
  %34 = ptrtoint ptr %tx_pause_frm to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_pause_frm, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug373, ptr noundef nonnull @.str.52, i32 noundef %35) #10
  br label %do.body303

do.body303:                                       ; preds = %if.then300, %do.body288
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dnet_print_pretty_hwstats, %if.then315)) #10
          to label %do.body318 [label %if.then315], !srcloc !221

if.then315:                                       ; preds = %do.body303
  call void @__sanitizer_cov_trace_pc() #12
  %tx_multicast = getelementptr inbounds %struct.dnet_stats, ptr %hwstat, i32 0, i32 18
  %36 = ptrtoint ptr %tx_multicast to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_multicast, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug374, ptr noundef nonnull @.str.53, i32 noundef %37) #10
  br label %do.body318

do.body318:                                       ; preds = %if.then315, %do.body303
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dnet_print_pretty_hwstats, %if.then330)) #10
          to label %do.body333 [label %if.then330], !srcloc !221

if.then330:                                       ; preds = %do.body318
  call void @__sanitizer_cov_trace_pc() #12
  %tx_brdcast = getelementptr inbounds %struct.dnet_stats, ptr %hwstat, i32 0, i32 19
  %38 = ptrtoint ptr %tx_brdcast to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tx_brdcast, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug375, ptr noundef nonnull @.str.54, i32 noundef %39) #10
  br label %do.body333

do.body333:                                       ; preds = %if.then330, %do.body318
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dnet_print_pretty_hwstats, %if.then345)) #10
          to label %do.body348 [label %if.then345], !srcloc !221

if.then345:                                       ; preds = %do.body333
  call void @__sanitizer_cov_trace_pc() #12
  %tx_vlan_tag = getelementptr inbounds %struct.dnet_stats, ptr %hwstat, i32 0, i32 20
  %40 = ptrtoint ptr %tx_vlan_tag to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tx_vlan_tag, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug376, ptr noundef nonnull @.str.55, i32 noundef %41) #10
  br label %do.body348

do.body348:                                       ; preds = %if.then345, %do.body333
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dnet_print_pretty_hwstats, %if.then360)) #10
          to label %do.body363 [label %if.then360], !srcloc !221

if.then360:                                       ; preds = %do.body348
  call void @__sanitizer_cov_trace_pc() #12
  %tx_bad_fcs = getelementptr inbounds %struct.dnet_stats, ptr %hwstat, i32 0, i32 21
  %42 = ptrtoint ptr %tx_bad_fcs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tx_bad_fcs, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug377, ptr noundef nonnull @.str.56, i32 noundef %43) #10
  br label %do.body363

do.body363:                                       ; preds = %if.then360, %do.body348
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dnet_print_pretty_hwstats, %if.then375)) #10
          to label %do.body378 [label %if.then375], !srcloc !221

if.then375:                                       ; preds = %do.body363
  call void @__sanitizer_cov_trace_pc() #12
  %tx_jumbo = getelementptr inbounds %struct.dnet_stats, ptr %hwstat, i32 0, i32 22
  %44 = ptrtoint ptr %tx_jumbo to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_jumbo, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug378, ptr noundef nonnull @.str.57, i32 noundef %45) #10
  br label %do.body378

do.body378:                                       ; preds = %if.then375, %do.body363
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dnet_print_pretty_hwstats, %if.then390)) #10
          to label %do.end392 [label %if.then390], !srcloc !221

if.then390:                                       ; preds = %do.body378
  call void @__sanitizer_cov_trace_pc() #12
  %tx_byte = getelementptr inbounds %struct.dnet_stats, ptr %hwstat, i32 0, i32 23
  %46 = ptrtoint ptr %tx_byte to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tx_byte, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug379, ptr noundef nonnull @.str.58, i32 noundef %47) #10
  br label %do.end392

do.end392:                                        ; preds = %if.then390, %do.body378
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dnet_get_drvinfo(ptr nocapture noundef readnone %dev, ptr noundef %info) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #10
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call2 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef nonnull @.str.64, i32 noundef 32) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dnet_mdio_read(ptr nocapture noundef readonly %bus, i32 noundef %mii_id, i32 noundef %regnum) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !206
  tail call void @arm_heavy_mb() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 335544320) #10, !srcloc !207
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #10
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %add.ptr2.i = getelementptr i8, ptr %6, i32 512
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #10, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !208
  %8 = and i32 %7, 4194304
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %do.end, label %while.end

do.end:                                           ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !246
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !247
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %and7 = and i32 %mii_id, 31
  %and8 = and i32 %regnum, 31
  %conv9 = shl nuw nsw i32 %and7, 8
  %or = or i32 %conv9, %and8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !227
  tail call void @arm_heavy_mb() #10
  %9 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %add.ptr.i50 = getelementptr i8, ptr %11, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %9) #10, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !228
  tail call void @arm_heavy_mb() #10
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %add.ptr5.i = getelementptr i8, ptr %13, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 335544448) #10, !srcloc !207
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #10
  br label %while.cond12

while.cond12:                                     ; preds = %do.end23, %while.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !206
  tail call void @arm_heavy_mb() #10
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %add.ptr.i51 = getelementptr i8, ptr %16, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 335544320) #10, !srcloc !207
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #10
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %add.ptr2.i52 = getelementptr i8, ptr %19, i32 512
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i52) #10, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !208
  %21 = and i32 %20, 4194304
  %tobool16.not = icmp eq i32 %21, 0
  br i1 %tobool16.not, label %do.end23, label %while.end28

do.end23:                                         ; preds = %while.cond12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !248
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !249
  br label %while.cond12

while.end28:                                      ; preds = %while.cond12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !206
  tail call void @arm_heavy_mb() #10
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %add.ptr.i54 = getelementptr i8, ptr %23, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 369098752) #10, !srcloc !207
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #10
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  %add.ptr2.i55 = getelementptr i8, ptr %26, i32 512
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i55) #10, !srcloc !204
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !208
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dnet_mdio_read.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dnet_mdio_read, %if.then)) #10
          to label %do.end38 [label %if.then], !srcloc !221

if.then:                                          ; preds = %while.end28
  call void @__sanitizer_cov_trace_pc() #12
  %conv36 = and i32 %28, 65535
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dnet_mdio_read.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.68, i32 noundef %and7, i32 noundef %and8, i32 noundef %conv36) #10
  br label %do.end38

do.end38:                                         ; preds = %if.then, %while.end28
  %conv39 = and i32 %28, 65535
  ret i32 %conv39
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dnet_mdio_write(ptr nocapture noundef readonly %bus, i32 noundef %mii_id, i32 noundef %regnum, i16 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dnet_mdio_write.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dnet_mdio_write, %if.then)) #10
          to label %while.cond [label %if.then], !srcloc !221

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i16 %value to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dnet_mdio_write.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.70, i32 noundef %mii_id, i32 noundef %regnum, i32 noundef %conv) #10
  br label %while.cond

while.cond:                                       ; preds = %do.end13, %if.then, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !206
  tail call void @arm_heavy_mb() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 335544320) #10, !srcloc !207
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #10
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %add.ptr2.i = getelementptr i8, ptr %6, i32 512
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #10, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !208
  %8 = and i32 %7, 4194304
  %tobool6.not = icmp eq i32 %8, 0
  br i1 %tobool6.not, label %do.end13, label %while.end

do.end13:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !250
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !251
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %and19 = and i32 %regnum, 31
  %9 = shl i32 %mii_id, 8
  %10 = and i32 %9, 7936
  %conv24 = or i32 %and19, %10
  %conv27 = or i32 %conv24, 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !227
  tail call void @arm_heavy_mb() #10
  %conv.i = zext i16 %value to i32
  %11 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #10
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %add.ptr.i57 = getelementptr i8, ptr %13, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 %11) #10, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !228
  tail call void @arm_heavy_mb() #10
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %add.ptr5.i = getelementptr i8, ptr %15, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 369098880) #10, !srcloc !207
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !227
  tail call void @arm_heavy_mb() #10
  %17 = tail call i32 @llvm.bswap.i32(i32 %conv27) #10
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %add.ptr.i59 = getelementptr i8, ptr %19, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %17) #10, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !228
  tail call void @arm_heavy_mb() #10
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %add.ptr5.i60 = getelementptr i8, ptr %21, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i60, i32 335544448) #10, !srcloc !207
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748) #10
  br label %while.cond28

while.cond28:                                     ; preds = %do.end40, %while.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !206
  tail call void @arm_heavy_mb() #10
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  %add.ptr.i61 = getelementptr i8, ptr %24, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 335544320) #10, !srcloc !207
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748) #10
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %add.ptr2.i62 = getelementptr i8, ptr %27, i32 512
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i62) #10, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !208
  %29 = and i32 %28, 4194304
  %tobool32.not = icmp eq i32 %29, 0
  br i1 %tobool32.not, label %do.end40, label %while.end45

do.end40:                                         ; preds = %while.cond28
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !252
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !253
  br label %while.cond28

while.end45:                                      ; preds = %while.cond28
  call void @__sanitizer_cov_trace_pc() #12
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_find_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dnet_handle_link_change(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev1, align 16
  %lock = getelementptr i8, ptr %dev, i32 2308
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !206
  tail call void @arm_heavy_mb() #10
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i142 = getelementptr i8, ptr %3, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i142, i32 0) #10, !srcloc !207
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #10
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %6, i32 512
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #10, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !208
  %8 = and i32 %7, -65536
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !206
  tail call void @arm_heavy_mb() #10
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i143 = getelementptr i8, ptr %11, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143, i32 33554432) #10, !srcloc !207
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #10
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr2.i144 = getelementptr i8, ptr %14, i32 512
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i144) #10, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !208
  %16 = and i32 %15, -65536
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %link = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load = load i16, ptr %link, align 8
  %19 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.not = icmp eq i16 %19, 0
  br i1 %tobool.not, label %entry.if.end38_crit_edge, label %if.then

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then:                                          ; preds = %entry
  %duplex = getelementptr i8, ptr %dev, i32 2700
  %20 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %duplex, align 4
  %duplex11 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %22 = ptrtoint ptr %duplex11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %duplex11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp12.not = icmp eq i32 %21, %23
  br i1 %cmp12.not, label %if.then.if.end20_crit_edge, label %if.then14

if.then.if.end20_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then14:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool16.not = icmp eq i32 %23, 0
  %and = and i32 %17, 65503
  %or = or i32 %17, 32
  %ctl_reg.0 = select i1 %tobool16.not, i32 %or, i32 %and
  %24 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %duplex, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then14, %if.then.if.end20_crit_edge
  %ctl_reg.1 = phi i32 [ %ctl_reg.0, %if.then14 ], [ %17, %if.then.if.end20_crit_edge ]
  %status_change.0 = phi i32 [ 1, %if.then14 ], [ 0, %if.then.if.end20_crit_edge ]
  %speed = getelementptr i8, ptr %dev, i32 2696
  %25 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %speed, align 8
  %speed21 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 8
  %27 = ptrtoint ptr %speed21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %speed21, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp22.not = icmp eq i32 %26, %28
  br i1 %cmp22.not, label %if.end20.if.end38_crit_edge, label %if.then24

if.end20.if.end38_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then24:                                        ; preds = %if.end20
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i32 %28, label %do.end31 [
    i32 1000, label %sw.bb
    i32 100, label %if.then24.sw.bb27_crit_edge
    i32 10, label %if.then24.sw.bb27_crit_edge176
  ]

if.then24.sw.bb27_crit_edge176:                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb27

if.then24.sw.bb27_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb27

sw.bb:                                            ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  %or26 = or i32 %9, 1
  br label %if.end38.thread

sw.bb27:                                          ; preds = %if.then24.sw.bb27_crit_edge, %if.then24.sw.bb27_crit_edge176
  %and28 = and i32 %9, 65534
  br label %if.end38.thread

do.end31:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef %dev, i32 noundef %28) #13
  br label %if.end38.thread

if.end38:                                         ; preds = %if.end20.if.end38_crit_edge, %entry.if.end38_crit_edge
  %ctl_reg.2 = phi i32 [ %ctl_reg.1, %if.end20.if.end38_crit_edge ], [ %17, %entry.if.end38_crit_edge ]
  %status_change.1 = phi i32 [ %status_change.0, %if.end20.if.end38_crit_edge ], [ 0, %entry.if.end38_crit_edge ]
  %30 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load40 = load i16, ptr %link, align 8
  %bf.lshr41 = lshr i16 %bf.load40, 2
  %bf.clear42 = and i16 %bf.lshr41, 1
  %bf.cast43 = zext i16 %bf.clear42 to i32
  %link44 = getelementptr i8, ptr %dev, i32 2692
  %31 = ptrtoint ptr %link44 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %link44, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %bf.cast43)
  %cmp45.not = icmp eq i32 %32, %bf.cast43
  br i1 %cmp45.not, label %if.end67, label %if.end38.if.then47_crit_edge

if.end38.if.then47_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47

if.end38.thread:                                  ; preds = %do.end31, %sw.bb27, %sw.bb
  %mode_reg.0 = phi i32 [ %9, %do.end31 ], [ %and28, %sw.bb27 ], [ %or26, %sw.bb ]
  %33 = ptrtoint ptr %speed21 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %speed21, align 8
  %35 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %speed, align 8
  %36 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load40157 = load i16, ptr %link, align 8
  %bf.lshr41158 = lshr i16 %bf.load40157, 2
  %bf.clear42159 = and i16 %bf.lshr41158, 1
  %bf.cast43160 = zext i16 %bf.clear42159 to i32
  %link44161 = getelementptr i8, ptr %dev, i32 2692
  %37 = ptrtoint ptr %link44161 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %link44161, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %bf.cast43160)
  %cmp45.not162 = icmp eq i32 %38, %bf.cast43160
  br i1 %cmp45.not162, label %if.end38.thread.if.then69_crit_edge, label %if.end38.thread.if.then47_crit_edge

if.end38.thread.if.then47_crit_edge:              ; preds = %if.end38.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47

if.end38.thread.if.then69_crit_edge:              ; preds = %if.end38.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then69

if.then47:                                        ; preds = %if.end38.thread.if.then47_crit_edge, %if.end38.if.then47_crit_edge
  %link44170 = phi ptr [ %link44161, %if.end38.thread.if.then47_crit_edge ], [ %link44, %if.end38.if.then47_crit_edge ]
  %bf.clear42169 = phi i16 [ %bf.clear42159, %if.end38.thread.if.then47_crit_edge ], [ %bf.clear42, %if.end38.if.then47_crit_edge ]
  %mode_reg.1167 = phi i32 [ %mode_reg.0, %if.end38.thread.if.then47_crit_edge ], [ %9, %if.end38.if.then47_crit_edge ]
  %ctl_reg.2164 = phi i32 [ %ctl_reg.1, %if.end38.thread.if.then47_crit_edge ], [ %ctl_reg.2, %if.end38.if.then47_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear42169)
  %tobool53.not = icmp eq i16 %bf.clear42169, 0
  br i1 %tobool53.not, label %if.else56, label %if.then54

if.then54:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  %or55 = or i32 %mode_reg.1167, 12
  br label %if.end67.thread

if.else56:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  %and57 = and i32 %mode_reg.1167, -13
  %speed58 = getelementptr i8, ptr %dev, i32 2696
  %39 = ptrtoint ptr %speed58 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %speed58, align 8
  %duplex59 = getelementptr i8, ptr %dev, i32 2700
  %40 = ptrtoint ptr %duplex59 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %duplex59, align 4
  br label %if.end67.thread

if.end67.thread:                                  ; preds = %if.else56, %if.then54
  %mode_reg.2 = phi i32 [ %or55, %if.then54 ], [ %and57, %if.else56 ]
  %41 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %41)
  %bf.load62 = load i16, ptr %link, align 8
  %bf.lshr63 = lshr i16 %bf.load62, 2
  %bf.clear64 = and i16 %bf.lshr63, 1
  %bf.cast65 = zext i16 %bf.clear64 to i32
  %42 = ptrtoint ptr %link44170 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %bf.cast65, ptr %link44170, align 4
  br label %if.then69

if.end67:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status_change.1)
  %tobool68.not = icmp eq i32 %status_change.1, 0
  br i1 %tobool68.not, label %if.end103.critedge, label %if.end67.if.then69_crit_edge

if.end67.if.then69_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then69

if.then69:                                        ; preds = %if.end67.if.then69_crit_edge, %if.end67.thread, %if.end38.thread.if.then69_crit_edge
  %ctl_reg.2163 = phi i32 [ %ctl_reg.2164, %if.end67.thread ], [ %ctl_reg.2, %if.end67.if.then69_crit_edge ], [ %ctl_reg.1, %if.end38.thread.if.then69_crit_edge ]
  %mode_reg.3153 = phi i32 [ %mode_reg.2, %if.end67.thread ], [ %9, %if.end67.if.then69_crit_edge ], [ %mode_reg.0, %if.end38.thread.if.then69_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !227
  tail call void @arm_heavy_mb() #10
  %conv.i = and i32 %ctl_reg.2163, 65535
  %43 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #10
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i146 = getelementptr i8, ptr %45, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i146, i32 %43) #10, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !228
  tail call void @arm_heavy_mb() #10
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %47, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 33554560) #10, !srcloc !207
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !227
  tail call void @arm_heavy_mb() #10
  %conv.i147 = and i32 %mode_reg.3153, 65535
  %49 = tail call i32 @llvm.bswap.i32(i32 %conv.i147) #10
  %50 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i148 = getelementptr i8, ptr %51, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i148, i32 %49) #10, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !228
  tail call void @arm_heavy_mb() #10
  %52 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr5.i149 = getelementptr i8, ptr %53, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i149, i32 128) #10, !srcloc !207
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #10
  %55 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %55)
  %bf.load77 = load i16, ptr %link, align 8
  %56 = and i16 %bf.load77, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool81.not = icmp eq i16 %56, 0
  br i1 %tobool81.not, label %do.end97, label %do.end85

do.end85:                                         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  %speed89 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 8
  %57 = ptrtoint ptr %speed89 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %speed89, align 8
  %duplex90 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %59 = ptrtoint ptr %duplex90 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %duplex90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %cmp91 = icmp eq i32 %60, 1
  %cond = select i1 %cmp91, ptr @.str.81, ptr @.str.82
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %dev, i32 noundef %58, ptr noundef nonnull %cond) #13
  br label %if.end103

do.end97:                                         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef %dev) #13
  br label %if.end103

if.end103.critedge:                               ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #10
  br label %if.end103

if.end103:                                        ; preds = %if.end103.critedge, %do.end97, %do.end85
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_max_speed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_support_asym_pause(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !59, !61, !62, !63, !65, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130, !132, !133, !135, !136, !138, !139, !141, !142, !144, !145, !147, !148, !149, !150, !152, !153, !154, !156, !158, !160, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !175, !177, !178, !179, !181, !182, !183, !184, !186, !187, !188, !189, !190, !192, !193}
!llvm.module.flags = !{!194, !195, !196, !197, !198, !199, !200, !201}
!llvm.ident = !{!202}

!0 = !{ptr @__initcall__kmod_dnet__380_874_dnet_driver_init6, !1, !"__initcall__kmod_dnet__380_874_dnet_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/dnet.c", i32 874, i32 1}
!2 = !{ptr @__exitcall_dnet_driver_exit, !1, !"__exitcall_dnet_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file381, !4, !"__UNIQUE_ID_file381", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/dnet.c", i32 876, i32 1}
!5 = !{ptr @__UNIQUE_ID_license382, !4, !"__UNIQUE_ID_license382", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description383, !7, !"__UNIQUE_ID_description383", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/dnet.c", i32 877, i32 1}
!8 = !{ptr @__UNIQUE_ID_author384, !9, !"__UNIQUE_ID_author384", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/dnet.c", i32 878, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/dnet.c", i32 870, i32 12}
!12 = !{ptr @dnet_driver, !13, !"dnet_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/dnet.c", i32 866, i32 31}
!14 = !{ptr @dnet_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/dnet.c", i32 774, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/dnet.c", i32 785, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @dnet_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @dnet_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/dnet.c", i32 808, i32 3}
!27 = !{ptr @dnet_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @dnet_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/dnet.c", i32 817, i32 3}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @dnet_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @dnet_probe._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/dnet.c", i32 823, i32 2}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @dnet_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @dnet_probe._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/dnet.c", i32 825, i32 2}
!41 = !{ptr @dnet_probe._entry.18, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @dnet_probe._entry_ptr.20, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/dnet.c", i32 449, i32 3}
!47 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @dnet_interrupt._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @dnet_interrupt._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/dnet.c", i32 461, i32 3}
!52 = !{ptr @dnet_interrupt._entry.25, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @dnet_interrupt._entry_ptr.27, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/dnet.c", i32 486, i32 3}
!56 = !{ptr @dnet_interrupt.__UNIQUE_ID_ddebug351, !55, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!57 = !{ptr @dnet_netdev_ops, !58, !"dnet_netdev_ops", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/dnet.c", i32 740, i32 36}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/dnet.c", i32 517, i32 2}
!61 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @dnet_start_xmit.__UNIQUE_ID_ddebug352, !60, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/dnet.c", i32 657, i32 2}
!65 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug353, !64, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/dnet.c", i32 658, i32 2}
!69 = !{ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug354, !68, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/dnet.c", i32 660, i32 2}
!72 = !{ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug355, !71, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/dnet.c", i32 661, i32 2}
!75 = !{ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug356, !74, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/dnet.c", i32 662, i32 2}
!78 = !{ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug357, !77, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/dnet.c", i32 663, i32 2}
!81 = !{ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug358, !80, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/dnet.c", i32 664, i32 2}
!84 = !{ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug359, !83, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/dnet.c", i32 665, i32 2}
!87 = !{ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug360, !86, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/dnet.c", i32 666, i32 2}
!90 = !{ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug361, !89, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/dnet.c", i32 667, i32 2}
!93 = !{ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug362, !92, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/dnet.c", i32 668, i32 2}
!96 = !{ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug363, !95, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/dnet.c", i32 669, i32 2}
!99 = !{ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug364, !98, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/dnet.c", i32 670, i32 2}
!102 = !{ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug365, !101, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/dnet.c", i32 671, i32 2}
!105 = !{ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug366, !104, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!106 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/dnet.c", i32 672, i32 2}
!108 = !{ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug367, !107, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!109 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/dnet.c", i32 673, i32 2}
!111 = !{ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug368, !110, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!112 = !{ptr @.str.48, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/dnet.c", i32 674, i32 2}
!114 = !{ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug369, !113, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!115 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/dnet.c", i32 675, i32 2}
!117 = !{ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug370, !116, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!118 = !{ptr @.str.50, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/dnet.c", i32 676, i32 2}
!120 = !{ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug371, !119, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!121 = !{ptr @.str.51, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/dnet.c", i32 678, i32 2}
!123 = !{ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug372, !122, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!124 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/dnet.c", i32 679, i32 2}
!126 = !{ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug373, !125, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!127 = !{ptr @.str.53, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/dnet.c", i32 680, i32 2}
!129 = !{ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug374, !128, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!130 = !{ptr @.str.54, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/dnet.c", i32 681, i32 2}
!132 = !{ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug375, !131, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!133 = !{ptr @.str.55, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/dnet.c", i32 682, i32 2}
!135 = !{ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug376, !134, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!136 = !{ptr @.str.56, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/dnet.c", i32 683, i32 2}
!138 = !{ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug377, !137, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!139 = !{ptr @.str.57, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/dnet.c", i32 684, i32 2}
!141 = !{ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug378, !140, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!142 = !{ptr @.str.58, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/dnet.c", i32 685, i32 2}
!144 = !{ptr @dnet_print_pretty_hwstats.__UNIQUE_ID_ddebug379, !143, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!145 = !{ptr @.str.59, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/dnet.c", i32 386, i32 4}
!147 = !{ptr @.str.60, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @dnet_poll._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @dnet_poll._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.62, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/dnet.c", i32 404, i32 4}
!152 = !{ptr @dnet_poll._entry.61, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @dnet_poll._entry_ptr.63, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @dnet_ethtool_ops, !155, !"dnet_ethtool_ops", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/dnet.c", i32 732, i32 33}
!156 = !{ptr @.str.64, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/dnet.c", i32 729, i32 26}
!158 = !{ptr @.str.65, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/dnet.c", i32 305, i32 22}
!160 = !{ptr @.str.66, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/dnet.c", i32 309, i32 45}
!162 = !{ptr @.str.67, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/dnet.c", i32 126, i32 2}
!164 = !{ptr @.str.68, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @dnet_mdio_read.__UNIQUE_ID_ddebug349, !163, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!166 = !{ptr @.str.69, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/dnet.c", i32 137, i32 2}
!168 = !{ptr @.str.70, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @dnet_mdio_write.__UNIQUE_ID_ddebug350, !167, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!170 = !{ptr @.str.71, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/dnet.c", i32 260, i32 3}
!172 = !{ptr @.str.72, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @dnet_mii_probe._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @dnet_mii_probe._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.74, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/dnet.c", i32 278, i32 3}
!177 = !{ptr @dnet_mii_probe._entry.73, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @dnet_mii_probe._entry_ptr.75, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.76, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/dnet.c", i32 208, i32 5}
!181 = !{ptr @.str.77, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @dnet_handle_link_change._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @dnet_handle_link_change._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.79, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/ethernet/dnet.c", i32 243, i32 4}
!186 = !{ptr @dnet_handle_link_change._entry.78, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @dnet_handle_link_change._entry_ptr.80, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.81, !185, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.82, !185, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.84, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/ethernet/dnet.c", i32 247, i32 4}
!192 = !{ptr @dnet_handle_link_change._entry.83, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @dnet_handle_link_change._entry_ptr.85, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{i32 1, !"wchar_size", i32 2}
!195 = !{i32 1, !"min_enum_size", i32 4}
!196 = !{i32 8, !"branch-target-enforcement", i32 0}
!197 = !{i32 8, !"sign-return-address", i32 0}
!198 = !{i32 8, !"sign-return-address-all", i32 0}
!199 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!200 = !{i32 7, !"uwtable", i32 1}
!201 = !{i32 7, !"frame-pointer", i32 2}
!202 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!203 = !{!"auto-init"}
!204 = !{i64 706593}
!205 = !{i64 2156583512}
!206 = !{i64 2156469508}
!207 = !{i64 706175}
!208 = !{i64 2156470281}
!209 = !{i64 2156495425}
!210 = !{i64 2156495988}
!211 = !{i64 2156496560}
!212 = !{i64 2156496883}
!213 = !{i64 2156499242}
!214 = !{i64 2156499559}
!215 = !{i64 2156500072}
!216 = !{i64 2156502403}
!217 = !{i64 2156502720}
!218 = !{i64 2156503233}
!219 = !{i64 2156503989}
!220 = !{i64 2156504312}
!221 = !{i64 2148173332, i64 2148173337, i64 2148173350, i64 2148173394, i64 2148173428, i64 2148173449}
!222 = !{i64 2156489171}
!223 = !{i64 2156489740}
!224 = !{i64 2156491797}
!225 = !{i64 2156493978}
!226 = !{i64 2156494301}
!227 = !{i64 2156470587}
!228 = !{i64 2156471117}
!229 = !{i64 2156517421}
!230 = !{i64 2156518006}
!231 = !{i64 2156507397}
!232 = !{i64 2156510778}
!233 = !{i64 2156511354}
!234 = !{i64 2156511670}
!235 = !{i64 2156512184}
!236 = !{i64 2156512954}
!237 = !{i64 2156513545}
!238 = !{i64 2156514108}
!239 = !{i64 2156514431}
!240 = !{i64 2156486503}
!241 = !{i64 2156487497}
!242 = !{i64 2156515000}
!243 = !{i64 2156515516}
!244 = !{i64 2156516054}
!245 = !{i64 2156516586}
!246 = !{i64 2156471857}
!247 = !{i64 2156471699}
!248 = !{i64 2156472152}
!249 = !{i64 2156471994}
!250 = !{i64 2156477158}
!251 = !{i64 2156477000}
!252 = !{i64 2156477458}
!253 = !{i64 2156477300}
