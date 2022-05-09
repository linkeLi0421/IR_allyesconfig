; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/8390/ax88796.c_pt.bc'
source_filename = "../drivers/net/ethernet/8390/ax88796.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ax_NS8390_reinit\22, \22a\22\09"
module asm "\09.weak\09__crc_ax_NS8390_reinit\09\09\09\09"
module asm "\09.long\09__crc_ax_NS8390_reinit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ax_NS8390_reinit:\09\09\09\09\09"
module asm "\09.asciz \09\22ax_NS8390_reinit\22\09\09\09\09\09"
module asm "__kstrtabns_ax_NS8390_reinit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.mdiobb_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.eeprom_93cx6 = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ax_plat_data = type { i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.ei_device = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, ptr, %struct.spinlock, i32, i32, i8 }
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
%struct.e8390_pkt_hdr = type { i8, i8, i16 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }

@__param_str_msg_enable = internal constant [19 x i8] c"ax88796.msg_enable\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@msg_enable = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_msg_enable = internal constant %struct.kernel_param { ptr @__param_str_msg_enable, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @msg_enable } }, section "__param", align 4
@__UNIQUE_ID_msg_enabletype349 = internal constant [32 x i8] c"ax88796.parmtype=msg_enable:int\00", section ".modinfo", align 1
@__UNIQUE_ID_msg_enable350 = internal constant [79 x i8] c"ax88796.parm=msg_enable:Debug message level (see linux/netdevice.h for bitmap)\00", section ".modinfo", align 1
@__kstrtab_ax_NS8390_reinit = external dso_local constant [0 x i8], align 1
@__kstrtabns_ax_NS8390_reinit = external dso_local constant [0 x i8], align 1
@__ksymtab_ax_NS8390_reinit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ax_NS8390_reinit to i32), ptr @__kstrtab_ax_NS8390_reinit, ptr @__kstrtabns_ax_NS8390_reinit }, section "___ksymtab_gpl+ax_NS8390_reinit", align 4
@__initcall__kmod_ax88796__362_1019_axdrv_init6 = internal global ptr @axdrv_init, section ".initcall6.init", align 4
@axdrv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ax_probe, ptr @ax_remove, ptr null, ptr @ax_suspend, ptr @ax_resume, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_axdrv_exit = internal global ptr @axdrv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description363 = internal constant [60 x i8] c"ax88796.description=AX88796 10/100 Ethernet platform driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author364 = internal constant [45 x i8] c"ax88796.author=Ben Dooks, <ben@simtec.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_file365 = internal constant [47 x i8] c"ax88796.file=drivers/net/ethernet/8390/ax88796\00", section ".modinfo", align 1
@__UNIQUE_ID_license366 = internal constant [23 x i8] c"ax88796.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias367 = internal constant [31 x i8] c"ax88796.alias=platform:ax88796\00", section ".modinfo", align 1
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Hw. address read/write mismap %d\0A\00", [62 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ax88796\00", [24 x i8] zeroinitializer }, align 32
@ax_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 872, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no IRQ specified\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ax_probe\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/net/ethernet/8390/ax88796.c\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ax_probe._entry_ptr = internal global ptr @ax_probe._entry, section ".printk_index", align 4
@ax_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 885, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no MEM specified\0A\00", [46 x i8] zeroinitializer }, align 32
@ax_probe._entry_ptr.9 = internal global ptr @ax_probe._entry.7, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@ax_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 905, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot reserve registers\0A\00", [38 x i8] zeroinitializer }, align 32
@ax_probe._entry_ptr.12 = internal global ptr @ax_probe._entry.10, section ".printk_index", align 4
@ax_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 914, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Cannot ioremap area %pR\0A\00", [39 x i8] zeroinitializer }, align 32
@ax_probe._entry_ptr.15 = internal global ptr @ax_probe._entry.13, section ".printk_index", align 4
@ax_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 931, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ax_probe._entry_ptr.17 = internal global ptr @ax_probe._entry.16, section ".printk_index", align 4
@ax_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 938, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot map reset register\0A\00", [37 x i8] zeroinitializer }, align 32
@ax_probe._entry_ptr.20 = internal global ptr @ax_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"eth%d\00", [26 x i8] zeroinitializer }, align 32
@ethdev_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&ei_local->page_lock\00", [43 x i8] zeroinitializer }, align 32
@version_printed = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ethdev_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.25, i32 986, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\016%s\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ethdev_setup\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/net/ethernet/8390/lib8390.c\00", [60 x i8] zeroinitializer }, align 32
@ethdev_setup._entry_ptr = internal global ptr @ethdev_setup._entry, section ".printk_index", align 4
@version = internal global { [51 x i8], [45 x i8] } { [51 x i8] c"ax88796.c: Copyright 2005,2007 Simtec Electronics\0A\00", [45 x i8] zeroinitializer }, align 32
@ax_init_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 767, ptr @.str.28, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Using random MAC address: %pM\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ax_init_dev\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ax_init_dev._entry_ptr = internal global ptr @ax_init_dev._entry, section ".printk_index", align 4
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AX88796\00", [24 x i8] zeroinitializer }, align 32
@ax_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @ax_open, ptr @ax_close, ptr @ax_ei_start_xmit, ptr null, ptr null, ptr null, ptr @ax_ei_set_multicast_list, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @ax_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ax_ei_tx_timeout, ptr null, ptr null, ptr null, ptr @ax_ei_get_stats, ptr null, ptr null, ptr @ax_ei_poll, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ax_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @ax_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr @ax_get_msglevel, ptr @ax_set_msglevel, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%dbit, irq %d, %lx, MAC: %pM\0A\00", [34 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ax_reset_8390.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.4, ptr @.str.32, i8 0, i8 38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ax_reset_8390\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"resetting the 8390 t=%ld...\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: did not complete.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"DMAing conflict in %s [DMAstat:%d][irqlock:%d].\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.ax_block_input = private unnamed_addr constant [15 x i8] c"ax_block_input\00", align 1
@.str.35 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"DMAing conflict in %s.[DMAstat:%d][irqlock:%d]\0A\00", [48 x i8] zeroinitializer }, align 32
@__func__.ax_block_output = private unnamed_addr constant [16 x i8] c"ax_block_output\00", align 1
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"timeout waiting for Tx RDC.\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.ax_get_8390_hdr = private unnamed_addr constant [16 x i8] c"ax_get_8390_hdr\00", align 1
@ax_open.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.37, ptr @.str.4, ptr @.str.38, i8 0, i8 124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ax_open\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"open\0A\00", [26 x i8] zeroinitializer }, align 32
@bb_ops = internal constant { %struct.mdiobb_ops, [44 x i8] } { %struct.mdiobb_ops { ptr null, ptr @ax_bb_mdc, ptr @ax_bb_dir, ptr @ax_bb_set_data, ptr @ax_bb_get_data }, [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ax88796_mii_bus\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%x\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Interrupted while interrupts are masked! isr=%#2x imr=%#2x\0A\00", [36 x i8] zeroinitializer }, align 32
@ax_ei_interrupt.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.42, ptr @.str.25, ptr @.str.43, i8 0, i8 114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ax_ei_interrupt\00", [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"interrupt(isr=%#2.2x)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"interrupt from stopped card\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Too much work at interrupt, status %#2.2x\0A\00", [53 x i8] zeroinitializer }, align 32
@ei_rx_overrun.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.47, ptr @.str.25, ptr @.str.48, i8 0, i8 -56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ei_rx_overrun\00", [18 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Receiver overrun\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"mismatched read page pointers %2x vs %2x\0A\00", [54 x i8] zeroinitializer }, align 32
@ei_receive.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.50, ptr @.str.25, ptr @.str.51, i8 0, i8 -75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ei_receive\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"bogus packet size: %d, status=%#2x nxpg=%#2x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Couldn't allocate a sk_buff of size %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"bogus packet: status=%#2x nxpg=%#2x size=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"next frame inconsistency, %#2x\0A\00", [32 x i8] zeroinitializer }, align 32
@ei_tx_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.25, i32 597, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: bogus last_tx_buffer %d, tx1=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ei_tx_intr\00", [21 x i8] zeroinitializer }, align 32
@ei_tx_intr._entry_ptr = internal global ptr @ei_tx_intr._entry, section ".printk_index", align 4
@ei_tx_intr._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.25, i32 612, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: bogus last_tx_buffer %d, tx2=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@ei_tx_intr._entry_ptr.59 = internal global ptr @ei_tx_intr._entry.57, section ".printk_index", align 4
@.str.60 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"trigger_send() called with the transmitter busy\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"no PHY found\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Could not attach to PHY\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"PHY driver [%s] (mii_bus:phy_addr=%s, irq=%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@ax_close.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.64, ptr @.str.4, ptr @.str.65, i8 0, i8 -120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ax_close\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"close\0A\00", [25 x i8] zeroinitializer }, align 32
@ax_ei_start_xmit.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.66, ptr @.str.25, ptr @.str.67, i8 0, i8 88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ax_ei_start_xmit\00", [47 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"idle transmitter tx2=%d, lasttx=%d, txing=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@ax_ei_start_xmit.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.66, ptr @.str.25, ptr @.str.68, i8 0, i8 90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"idle transmitter, tx1=%d, lasttx=%d, txing=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@ax_ei_start_xmit.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.66, ptr @.str.25, ptr @.str.69, i8 0, i8 91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"No Tx buffers free! tx1=%d tx2=%d last=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@ax_ei_tx_timeout.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.70, ptr @.str.25, ptr @.str.71, i8 0, i8 68, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ax_ei_tx_timeout\00", [47 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Tx timed out, %s TSR=%#2x, ISR=%#2x, t=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"excess collisions.\00", [45 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lost interrupt?\00", [16 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cable problem?\00", [17 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.00\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 65535]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 65534]
@___asan_gen_.77 = private unnamed_addr constant [11 x i8] c"msg_enable\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 116, i32 12 }
@___asan_gen_.80 = private unnamed_addr constant [6 x i8] c"axdrv\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 1009, i32 31 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1053, i32 8 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 1011, i32 12 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 872, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 885, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 905, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 914, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 931, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 938, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 997, i32 9 }
@___asan_gen_.137 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 981, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [16 x i8] c"version_printed\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 115, i32 17 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 986, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 58, i32 22 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 766, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 772, i32 19 }
@___asan_gen_.176 = private unnamed_addr constant [14 x i8] c"ax_netdev_ops\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 642, i32 36 }
@___asan_gen_.179 = private unnamed_addr constant [15 x i8] c"ax_ethtool_ops\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 601, i32 33 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 804, i32 19 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 152, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 162, i32 21 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 239, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 284, i32 19 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 313, i32 21 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 496, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant [7 x i8] c"bb_ops\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 451, i32 32 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 474, i32 22 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 476, i32 45 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 446, i32 19 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 455, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 462, i32 21 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 499, i32 22 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 803, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 693, i32 8 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 721, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 732, i32 5 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 750, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 763, i32 23 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 596, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 611, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1085, i32 20 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 373, i32 19 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 380, i32 19 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 386, i32 19 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 544, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 353, i32 4 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 361, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 365, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant [39 x i8] c"../drivers/net/ethernet/8390/lib8390.c\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 271, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.318 = private constant [39 x i8] c"../drivers/net/ethernet/8390/ax88796.c\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 583, i32 25 }
@llvm.compiler.used = appending global [103 x ptr] [ptr @__UNIQUE_ID_alias367, ptr @__UNIQUE_ID_author364, ptr @__UNIQUE_ID_description363, ptr @__UNIQUE_ID_file365, ptr @__UNIQUE_ID_license366, ptr @__UNIQUE_ID_msg_enable350, ptr @__UNIQUE_ID_msg_enabletype349, ptr @__exitcall_axdrv_exit, ptr @__initcall__kmod_ax88796__362_1019_axdrv_init6, ptr @__ksymtab_ax_NS8390_reinit, ptr @__param_msg_enable, ptr @ax_init_dev._entry, ptr @ax_init_dev._entry_ptr, ptr @ax_probe._entry, ptr @ax_probe._entry.10, ptr @ax_probe._entry.13, ptr @ax_probe._entry.16, ptr @ax_probe._entry.18, ptr @ax_probe._entry.7, ptr @ax_probe._entry_ptr, ptr @ax_probe._entry_ptr.12, ptr @ax_probe._entry_ptr.15, ptr @ax_probe._entry_ptr.17, ptr @ax_probe._entry_ptr.20, ptr @ax_probe._entry_ptr.9, ptr @axdrv_exit, ptr @ei_tx_intr._entry, ptr @ei_tx_intr._entry.57, ptr @ei_tx_intr._entry_ptr, ptr @ei_tx_intr._entry_ptr.59, ptr @ethdev_setup._entry, ptr @ethdev_setup._entry_ptr, ptr @msg_enable, ptr @axdrv, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.19, ptr @.str.21, ptr @ethdev_setup.__key, ptr @.str.22, ptr @version_printed, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @version, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @ax_netdev_ops, ptr @ax_ethtool_ops, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @bb_ops, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msg_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axdrv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethdev_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @version_printed to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethdev_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @version to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax_init_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bb_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ei_tx_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ei_tx_intr._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax_NS8390_reinit(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ax_NS8390_init(ptr noundef %dev, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ax_NS8390_init(ptr noundef %dev, i32 noundef %startp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %word16 = getelementptr i8, ptr %dev, i32 2344
  %2 = ptrtoint ptr %word16 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %word16, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %4 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool5.not = icmp eq i8 %4, 0
  %or = select i1 %tobool5.not, i8 73, i8 75
  %cond6 = select i1 %tobool.not, i8 72, i8 %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !189
  tail call void @arm_heavy_mb() #12
  %reg_offset = getelementptr i8, ptr %dev, i32 2364
  %5 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_offset, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %add = add i32 %8, %1
  %9 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 33) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !191
  tail call void @arm_heavy_mb() #12
  %10 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_offset, align 4
  %arrayidx14 = getelementptr i32, ptr %11, i32 14
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx14, align 4
  %add15 = add i32 %13, %1
  %14 = inttoptr i32 %add15 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %14, i8 %cond6) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !192
  tail call void @arm_heavy_mb() #12
  %15 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_offset, align 4
  %arrayidx20 = getelementptr i32, ptr %16, i32 10
  %17 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx20, align 4
  %add21 = add i32 %18, %1
  %19 = inttoptr i32 %add21 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %19, i8 0) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !193
  tail call void @arm_heavy_mb() #12
  %20 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_offset, align 4
  %arrayidx26 = getelementptr i32, ptr %21, i32 11
  %22 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx26, align 4
  %add27 = add i32 %23, %1
  %24 = inttoptr i32 %add27 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %24, i8 0) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !194
  tail call void @arm_heavy_mb() #12
  %rxcr_base = getelementptr i8, ptr %dev, i32 2420
  %25 = ptrtoint ptr %rxcr_base to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %rxcr_base, align 4
  %27 = or i8 %26, 32
  %28 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_offset, align 4
  %arrayidx36 = getelementptr i32, ptr %29, i32 12
  %30 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx36, align 4
  %add37 = add i32 %31, %1
  %32 = inttoptr i32 %add37 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %32, i8 %27) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !195
  tail call void @arm_heavy_mb() #12
  %33 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_offset, align 4
  %arrayidx42 = getelementptr i32, ptr %34, i32 13
  %35 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx42, align 4
  %add43 = add i32 %36, %1
  %37 = inttoptr i32 %add43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %37, i8 2) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !196
  tail call void @arm_heavy_mb() #12
  %tx_start_page = getelementptr i8, ptr %dev, i32 2345
  %38 = ptrtoint ptr %tx_start_page to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %tx_start_page, align 1
  %40 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg_offset, align 4
  %arrayidx48 = getelementptr i32, ptr %41, i32 4
  %42 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx48, align 4
  %add49 = add i32 %43, %1
  %44 = inttoptr i32 %add49 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %44, i8 %39) #12, !srcloc !190
  %tx2 = getelementptr i8, ptr %dev, i32 2354
  %45 = ptrtoint ptr %tx2 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %tx2, align 2
  %tx1 = getelementptr i8, ptr %dev, i32 2352
  %46 = ptrtoint ptr %tx1 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %tx1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !197
  tail call void @arm_heavy_mb() #12
  %rx_start_page = getelementptr i8, ptr %dev, i32 2346
  %47 = ptrtoint ptr %rx_start_page to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %rx_start_page, align 2
  %49 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reg_offset, align 4
  %arrayidx54 = getelementptr i32, ptr %50, i32 1
  %51 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx54, align 4
  %add55 = add i32 %52, %1
  %53 = inttoptr i32 %add55 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %53, i8 %48) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !198
  tail call void @arm_heavy_mb() #12
  %stop_page = getelementptr i8, ptr %dev, i32 2347
  %54 = ptrtoint ptr %stop_page to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %stop_page, align 1
  %sub = add i8 %55, -1
  %56 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reg_offset, align 4
  %arrayidx62 = getelementptr i32, ptr %57, i32 3
  %58 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx62, align 4
  %add63 = add i32 %59, %1
  %60 = inttoptr i32 %add63 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %60, i8 %sub) #12, !srcloc !190
  %61 = ptrtoint ptr %rx_start_page to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %rx_start_page, align 2
  %current_page = getelementptr i8, ptr %dev, i32 2348
  %63 = ptrtoint ptr %current_page to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %current_page, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !199
  tail call void @arm_heavy_mb() #12
  %64 = ptrtoint ptr %stop_page to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %stop_page, align 1
  %66 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg_offset, align 4
  %arrayidx70 = getelementptr i32, ptr %67, i32 2
  %68 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx70, align 4
  %add71 = add i32 %69, %1
  %70 = inttoptr i32 %add71 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %70, i8 %65) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !200
  tail call void @arm_heavy_mb() #12
  %71 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %reg_offset, align 4
  %arrayidx76 = getelementptr i32, ptr %72, i32 7
  %73 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx76, align 4
  %add77 = add i32 %74, %1
  %75 = inttoptr i32 %add77 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %75, i8 -1) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !201
  tail call void @arm_heavy_mb() #12
  %76 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %reg_offset, align 4
  %arrayidx82 = getelementptr i32, ptr %77, i32 15
  %78 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx82, align 4
  %add83 = add i32 %79, %1
  %80 = inttoptr i32 %add83 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %80, i8 0) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !202
  tail call void @arm_heavy_mb() #12
  %81 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %reg_offset, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 4
  %add89 = add i32 %84, %1
  %85 = inttoptr i32 %add89 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %85, i8 97) #12, !srcloc !190
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %msg_enable = getelementptr i8, ptr %dev, i32 2416
  br label %do.body91

do.body91:                                        ; preds = %for.inc.do.body91_crit_edge, %entry
  %i.0239 = phi i32 [ 0, %entry ], [ %add96, %for.inc.do.body91_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !203
  tail call void @arm_heavy_mb() #12
  %86 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev_addr, align 64
  %arrayidx94 = getelementptr i8, ptr %87, i32 %i.0239
  %88 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx94, align 1
  %90 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %reg_offset, align 4
  %add96 = add nuw nsw i32 %i.0239, 1
  %arrayidx97 = getelementptr i32, ptr %91, i32 %add96
  %92 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx97, align 4
  %add98 = add i32 %93, %1
  %94 = inttoptr i32 %add98 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %94, i8 %89) #12, !srcloc !190
  %95 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %msg_enable, align 4
  %and = and i32 %96, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool99.not = icmp eq i32 %and, 0
  br i1 %tobool99.not, label %do.body91.for.inc_crit_edge, label %land.lhs.true

do.body91.for.inc_crit_edge:                      ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %do.body91
  %97 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %reg_offset, align 4
  %arrayidx102 = getelementptr i32, ptr %98, i32 %add96
  %99 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx102, align 4
  %add103 = add i32 %100, %1
  %101 = inttoptr i32 %add103 to ptr
  %102 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %101) #12, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  %103 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev_addr, align 64
  %arrayidx108 = getelementptr i8, ptr %104, i32 %i.0239
  %105 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx108, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %102, i8 %106)
  %cmp110.not = icmp eq i8 %102, %106
  br i1 %cmp110.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %i.0239) #15
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %do.body91.for.inc_crit_edge
  %exitcond.not = icmp eq i32 %add96, 6
  br i1 %exitcond.not, label %do.body112, label %for.inc.do.body91_crit_edge

for.inc.do.body91_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body91

do.body112:                                       ; preds = %for.inc
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !206
  tail call void @arm_heavy_mb() #12
  %107 = ptrtoint ptr %rx_start_page to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %rx_start_page, align 2
  %109 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %reg_offset, align 4
  %arrayidx117 = getelementptr i32, ptr %110, i32 7
  %111 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx117, align 4
  %add118 = add i32 %112, %1
  %113 = inttoptr i32 %add118 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %113, i8 %108) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !207
  tail call void @arm_heavy_mb() #12
  %114 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %reg_offset, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %115, align 4
  %add124 = add i32 %117, %1
  %118 = inttoptr i32 %add124 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %118, i8 33) #12, !srcloc !190
  %119 = ptrtoint ptr %tx2 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 0, ptr %tx2, align 2
  %120 = ptrtoint ptr %tx1 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 0, ptr %tx1, align 4
  %121 = ptrtoint ptr %word16 to i32
  call void @__asan_load1_noabort(i32 %121)
  %bf.load127 = load i8, ptr %word16, align 4
  %bf.clear128 = and i8 %bf.load127, -17
  store i8 %bf.clear128, ptr %word16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %startp)
  %tobool129.not = icmp eq i32 %startp, 0
  br i1 %tobool129.not, label %do.body112.if.end166_crit_edge, label %do.body131

do.body112.if.end166_crit_edge:                   ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end166

do.body131:                                       ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  %122 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %reg_offset, align 4
  %arrayidx135 = getelementptr i32, ptr %123, i32 7
  %124 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx135, align 4
  %add136 = add i32 %125, %1
  %126 = inttoptr i32 %add136 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %126, i8 -1) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !209
  tail call void @arm_heavy_mb() #12
  %127 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %reg_offset, align 4
  %arrayidx141 = getelementptr i32, ptr %128, i32 15
  %129 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx141, align 4
  %add142 = add i32 %130, %1
  %131 = inttoptr i32 %add142 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %131, i8 63) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !210
  tail call void @arm_heavy_mb() #12
  %132 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %reg_offset, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %133, align 4
  %add148 = add i32 %135, %1
  %136 = inttoptr i32 %add148 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %136, i8 34) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !211
  tail call void @arm_heavy_mb() #12
  %137 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %reg_offset, align 4
  %arrayidx153 = getelementptr i32, ptr %138, i32 13
  %139 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx153, align 4
  %add154 = add i32 %140, %1
  %141 = inttoptr i32 %add154 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %141, i8 0) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !212
  tail call void @arm_heavy_mb() #12
  %142 = ptrtoint ptr %rxcr_base to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %rxcr_base, align 4
  %144 = or i8 %143, 4
  %145 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %reg_offset, align 4
  %arrayidx164 = getelementptr i32, ptr %146, i32 12
  %147 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx164, align 4
  %add165 = add i32 %148, %1
  %149 = inttoptr i32 %add165 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %149, i8 %144) #12, !srcloc !190
  tail call fastcc void @do_set_multicast_list(ptr noundef %dev)
  br label %if.end166

if.end166:                                        ; preds = %do.body131, %do.body112.if.end166_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @axdrv_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @axdrv, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @axdrv_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @axdrv) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_set_multicast_list(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %mcfilter = getelementptr i8, ptr %dev, i32 2336
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %mcfilter to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 0, ptr %mcfilter, align 4
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then.if.end6_crit_edge, label %if.then1

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then1:                                         ; preds = %if.then
  %mc.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %7 = ptrtoint ptr %mc.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %ha.053.i = load ptr, ptr %mc.i, align 4
  %cmp.not54.i = icmp eq ptr %ha.053.i, %mc.i
  br i1 %cmp.not54.i, label %if.then1.if.end6_crit_edge, label %if.then1.cond.end.i_crit_edge

if.then1.cond.end.i_crit_edge:                    ; preds = %if.then1
  br label %cond.end.i

if.then1.if.end6_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

cond.end.i:                                       ; preds = %cond.end.i.cond.end.i_crit_edge, %if.then1.cond.end.i_crit_edge
  %ha.055.i = phi ptr [ %ha.0.i, %cond.end.i.cond.end.i_crit_edge ], [ %ha.053.i, %if.then1.cond.end.i_crit_edge ]
  %addr.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.055.i, i32 0, i32 2
  %call.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr.i, i32 noundef 6) #16
  %8 = and i32 %call.i, 255
  %arrayidx.i.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %shr26.i = lshr i8 %10, 2
  %and27.i = and i8 %shr26.i, 7
  %shl28.i = shl i8 1, %and27.i
  %11 = lshr i8 %10, 5
  %shr29.i = zext i8 %11 to i32
  %arrayidx.i = getelementptr i8, ptr %mcfilter, i32 %shr29.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %conv31.i = or i8 %13, %shl28.i
  store i8 %conv31.i, ptr %arrayidx.i, align 1
  %14 = ptrtoint ptr %ha.055.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %ha.0.i = load ptr, ptr %ha.055.i, align 4
  %cmp.not.i = icmp eq ptr %ha.0.i, %mc.i
  br i1 %cmp.not.i, label %cond.end.i.if.end6_crit_edge, label %cond.end.i.cond.end.i_crit_edge

cond.end.i.cond.end.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.end.i.if.end6_crit_edge:                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %mcfilter to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 -1, ptr %mcfilter, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %cond.end.i.if.end6_crit_edge, %if.then1.if.end6_crit_edge, %if.then.if.end6_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end6.do.body12_crit_edge, label %do.body

if.end6.do.body12_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12

do.body:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !213
  tail call void @arm_heavy_mb() #12
  %rxcr_base = getelementptr i8, ptr %dev, i32 2420
  %18 = ptrtoint ptr %rxcr_base to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %rxcr_base, align 4
  %20 = or i8 %19, 4
  %reg_offset = getelementptr i8, ptr %dev, i32 2364
  %21 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_offset, align 4
  %arrayidx = getelementptr i32, ptr %22, i32 12
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  %add = add i32 %24, %1
  %25 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %25, i8 %20) #12, !srcloc !190
  br label %do.body12

do.body12:                                        ; preds = %do.body, %if.end6.do.body12_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !214
  tail call void @arm_heavy_mb() #12
  %reg_offset15 = getelementptr i8, ptr %dev, i32 2364
  %26 = ptrtoint ptr %reg_offset15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_offset15, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add17 = add i32 %29, %1
  %30 = inttoptr i32 %add17 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %30, i8 96) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !215
  tail call void @arm_heavy_mb() #12
  %arrayidx24 = getelementptr i8, ptr %dev, i32 2336
  %31 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx24, align 1
  %33 = ptrtoint ptr %reg_offset15 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_offset15, align 4
  %arrayidx27 = getelementptr i32, ptr %34, i32 8
  %35 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx27, align 4
  %add28 = add i32 %36, %1
  %37 = inttoptr i32 %add28 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %37, i8 %32) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !215
  tail call void @arm_heavy_mb() #12
  %arrayidx24.1 = getelementptr i8, ptr %dev, i32 2337
  %38 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx24.1, align 1
  %40 = ptrtoint ptr %reg_offset15 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg_offset15, align 4
  %arrayidx27.1 = getelementptr i32, ptr %41, i32 9
  %42 = ptrtoint ptr %arrayidx27.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx27.1, align 4
  %add28.1 = add i32 %43, %1
  %44 = inttoptr i32 %add28.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %44, i8 %39) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !215
  tail call void @arm_heavy_mb() #12
  %arrayidx24.2 = getelementptr i8, ptr %dev, i32 2338
  %45 = ptrtoint ptr %arrayidx24.2 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx24.2, align 1
  %47 = ptrtoint ptr %reg_offset15 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg_offset15, align 4
  %arrayidx27.2 = getelementptr i32, ptr %48, i32 10
  %49 = ptrtoint ptr %arrayidx27.2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx27.2, align 4
  %add28.2 = add i32 %50, %1
  %51 = inttoptr i32 %add28.2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %51, i8 %46) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !215
  tail call void @arm_heavy_mb() #12
  %arrayidx24.3 = getelementptr i8, ptr %dev, i32 2339
  %52 = ptrtoint ptr %arrayidx24.3 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx24.3, align 1
  %54 = ptrtoint ptr %reg_offset15 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %reg_offset15, align 4
  %arrayidx27.3 = getelementptr i32, ptr %55, i32 11
  %56 = ptrtoint ptr %arrayidx27.3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx27.3, align 4
  %add28.3 = add i32 %57, %1
  %58 = inttoptr i32 %add28.3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %58, i8 %53) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !215
  tail call void @arm_heavy_mb() #12
  %arrayidx24.4 = getelementptr i8, ptr %dev, i32 2340
  %59 = ptrtoint ptr %arrayidx24.4 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx24.4, align 1
  %61 = ptrtoint ptr %reg_offset15 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %reg_offset15, align 4
  %arrayidx27.4 = getelementptr i32, ptr %62, i32 12
  %63 = ptrtoint ptr %arrayidx27.4 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx27.4, align 4
  %add28.4 = add i32 %64, %1
  %65 = inttoptr i32 %add28.4 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %65, i8 %60) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !215
  tail call void @arm_heavy_mb() #12
  %arrayidx24.5 = getelementptr i8, ptr %dev, i32 2341
  %66 = ptrtoint ptr %arrayidx24.5 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx24.5, align 1
  %68 = ptrtoint ptr %reg_offset15 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %reg_offset15, align 4
  %arrayidx27.5 = getelementptr i32, ptr %69, i32 13
  %70 = ptrtoint ptr %arrayidx27.5 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx27.5, align 4
  %add28.5 = add i32 %71, %1
  %72 = inttoptr i32 %add28.5 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %72, i8 %67) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !215
  tail call void @arm_heavy_mb() #12
  %arrayidx24.6 = getelementptr i8, ptr %dev, i32 2342
  %73 = ptrtoint ptr %arrayidx24.6 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx24.6, align 1
  %75 = ptrtoint ptr %reg_offset15 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %reg_offset15, align 4
  %arrayidx27.6 = getelementptr i32, ptr %76, i32 14
  %77 = ptrtoint ptr %arrayidx27.6 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx27.6, align 4
  %add28.6 = add i32 %78, %1
  %79 = inttoptr i32 %add28.6 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %79, i8 %74) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !215
  tail call void @arm_heavy_mb() #12
  %arrayidx24.7 = getelementptr i8, ptr %dev, i32 2343
  %80 = ptrtoint ptr %arrayidx24.7 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx24.7, align 1
  %82 = ptrtoint ptr %reg_offset15 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %reg_offset15, align 4
  %arrayidx27.7 = getelementptr i32, ptr %83, i32 15
  %84 = ptrtoint ptr %arrayidx27.7 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx27.7, align 4
  %add28.7 = add i32 %85, %1
  %86 = inttoptr i32 %add28.7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %86, i8 %81) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !216
  tail call void @arm_heavy_mb() #12
  %87 = ptrtoint ptr %reg_offset15 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %reg_offset15, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %88, align 4
  %add34 = add i32 %90, %1
  %91 = inttoptr i32 %add34 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %91, i8 32) #12, !srcloc !190
  %92 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %flags, align 8
  %and36 = and i32 %93, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.else51, label %do.body39

do.body39:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !217
  tail call void @arm_heavy_mb() #12
  %rxcr_base43 = getelementptr i8, ptr %dev, i32 2420
  %94 = ptrtoint ptr %rxcr_base43 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %rxcr_base43, align 4
  %96 = or i8 %95, 28
  %97 = ptrtoint ptr %reg_offset15 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %reg_offset15, align 4
  %arrayidx49 = getelementptr i32, ptr %98, i32 12
  %99 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx49, align 4
  %add50 = add i32 %100, %1
  %101 = inttoptr i32 %add50 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %101, i8 %96) #12, !srcloc !190
  br label %if.end85

if.else51:                                        ; preds = %do.body12
  %and53 = and i32 %93, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %lor.lhs.false, label %if.else51.do.body60_crit_edge

if.else51.do.body60_crit_edge:                    ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body60

lor.lhs.false:                                    ; preds = %if.else51
  %count56 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %102 = ptrtoint ptr %count56 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %count56, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp57 = icmp eq i32 %103, 0
  br i1 %cmp57, label %do.body73, label %lor.lhs.false.do.body60_crit_edge

lor.lhs.false.do.body60_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body60

do.body60:                                        ; preds = %lor.lhs.false.do.body60_crit_edge, %if.else51.do.body60_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !218
  tail call void @arm_heavy_mb() #12
  %rxcr_base64 = getelementptr i8, ptr %dev, i32 2420
  %104 = ptrtoint ptr %rxcr_base64 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %rxcr_base64, align 4
  %106 = or i8 %105, 12
  %107 = ptrtoint ptr %reg_offset15 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %reg_offset15, align 4
  %arrayidx70 = getelementptr i32, ptr %108, i32 12
  %109 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx70, align 4
  %add71 = add i32 %110, %1
  %111 = inttoptr i32 %add71 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %111, i8 %106) #12, !srcloc !190
  br label %if.end85

do.body73:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !219
  tail call void @arm_heavy_mb() #12
  %rxcr_base77 = getelementptr i8, ptr %dev, i32 2420
  %112 = ptrtoint ptr %rxcr_base77 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %rxcr_base77, align 4
  %114 = or i8 %113, 4
  %115 = ptrtoint ptr %reg_offset15 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %reg_offset15, align 4
  %arrayidx82 = getelementptr i32, ptr %116, i32 12
  %117 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx82, align 4
  %add83 = add i32 %118, %1
  %119 = inttoptr i32 %add83 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %119, i8 %114) #12, !srcloc !190
  br label %if.end85

if.end85:                                         ; preds = %do.body73, %do.body60, %do.body39
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %addr.i.i = alloca [6 x i8], align 1
  %SA_prom.i = alloca [32 x i8], align 1
  %mac_addr.i = alloca [6 x i8], align 1
  %eeprom.i = alloca %struct.eeprom_93cx6, align 4
  %addr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @alloc_netdev_mqs(i32 noundef 300, ptr noundef nonnull @.str.21, i8 noundef zeroext 0, ptr noundef nonnull @ethdev_setup, i32 noundef 1, i32 noundef 1) #12
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 2304
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %1 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %platform_data.i, align 8
  %plat = getelementptr i8, ptr %call.i, i32 2464
  %3 = ptrtoint ptr %plat to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %plat, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %5 = load ptr, ptr %plat, align 4
  %rcr_val = getelementptr inbounds %struct.ax_plat_data, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %rcr_val to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rcr_val, align 2
  %rxcr_base = getelementptr i8, ptr %call.i, i32 2420
  %8 = ptrtoint ptr %rxcr_base to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %rxcr_base, align 4
  %call8 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #12
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #15
  br label %exit_mem

if.end11:                                         ; preds = %if.end
  %9 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call8, align 4
  %irq12 = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 64
  %11 = ptrtoint ptr %irq12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %irq12, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %call8, i32 0, i32 3
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and = and i32 %13, 15
  %irqflags = getelementptr i8, ptr %call.i, i32 2472
  %14 = ptrtoint ptr %irqflags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and, ptr %irqflags, align 4
  %15 = load i32, ptr %flags, align 4
  %and14 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end11.if.end18_crit_edge, label %if.then16

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i32 %and, 128
  %16 = ptrtoint ptr %irqflags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or, ptr %irqflags, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end11.if.end18_crit_edge
  %call19 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #12
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %do.end24, label %if.end26

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #15
  br label %exit_mem

if.end26:                                         ; preds = %if.end18
  %end.i = getelementptr inbounds %struct.resource, ptr %call19, i32 0, i32 1
  %17 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %end.i, align 4
  %19 = ptrtoint ptr %call19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call19, align 4
  %sub.i = add i32 %18, 1
  %add.i = sub i32 %sub.i, %20
  %21 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %plat, align 4
  %reg_offsets = getelementptr inbounds %struct.ax_plat_data, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %reg_offsets to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_offsets, align 4
  %tobool29.not = icmp eq ptr %24, null
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %reg_offset = getelementptr i8, ptr %call.i, i32 2364
  %25 = ptrtoint ptr %reg_offset to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %reg_offset, align 4
  br label %if.end37

if.else:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %reg_offsets33 = getelementptr i8, ptr %call.i, i32 2476
  %reg_offset34 = getelementptr i8, ptr %call.i, i32 2364
  %26 = ptrtoint ptr %reg_offset34 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %reg_offsets33, ptr %reg_offset34, align 4
  %div = udiv i32 %add.i, 24
  %arrayidx = getelementptr i8, ptr %call.i, i32 2476
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %arrayidx, align 4
  %arrayidx.1 = getelementptr i8, ptr %call.i, i32 2480
  %28 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div, ptr %arrayidx.1, align 4
  %mul.2 = shl nuw nsw i32 %div, 1
  %arrayidx.2 = getelementptr i8, ptr %call.i, i32 2484
  %29 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %mul.2, ptr %arrayidx.2, align 4
  %mul.3 = mul nuw nsw i32 %div, 3
  %arrayidx.3 = getelementptr i8, ptr %call.i, i32 2488
  %30 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul.3, ptr %arrayidx.3, align 4
  %mul.4 = shl nuw nsw i32 %div, 2
  %arrayidx.4 = getelementptr i8, ptr %call.i, i32 2492
  %31 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul.4, ptr %arrayidx.4, align 4
  %mul.5 = mul nuw nsw i32 %div, 5
  %arrayidx.5 = getelementptr i8, ptr %call.i, i32 2496
  %32 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mul.5, ptr %arrayidx.5, align 4
  %mul.6 = mul nuw nsw i32 %div, 6
  %arrayidx.6 = getelementptr i8, ptr %call.i, i32 2500
  %33 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %mul.6, ptr %arrayidx.6, align 4
  %mul.7 = mul nuw nsw i32 %div, 7
  %arrayidx.7 = getelementptr i8, ptr %call.i, i32 2504
  %34 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %mul.7, ptr %arrayidx.7, align 4
  %mul.8 = shl nuw nsw i32 %div, 3
  %arrayidx.8 = getelementptr i8, ptr %call.i, i32 2508
  %35 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %mul.8, ptr %arrayidx.8, align 4
  %mul.9 = mul nuw nsw i32 %div, 9
  %arrayidx.9 = getelementptr i8, ptr %call.i, i32 2512
  %36 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %mul.9, ptr %arrayidx.9, align 4
  %mul.10 = mul nuw nsw i32 %div, 10
  %arrayidx.10 = getelementptr i8, ptr %call.i, i32 2516
  %37 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %mul.10, ptr %arrayidx.10, align 4
  %mul.11 = mul nuw nsw i32 %div, 11
  %arrayidx.11 = getelementptr i8, ptr %call.i, i32 2520
  %38 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %mul.11, ptr %arrayidx.11, align 4
  %mul.12 = mul nuw nsw i32 %div, 12
  %arrayidx.12 = getelementptr i8, ptr %call.i, i32 2524
  %39 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %mul.12, ptr %arrayidx.12, align 4
  %mul.13 = mul nuw i32 %div, 13
  %arrayidx.13 = getelementptr i8, ptr %call.i, i32 2528
  %40 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %mul.13, ptr %arrayidx.13, align 4
  %mul.14 = mul nuw i32 %div, 14
  %arrayidx.14 = getelementptr i8, ptr %call.i, i32 2532
  %41 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %mul.14, ptr %arrayidx.14, align 4
  %mul.15 = mul nuw i32 %div, 15
  %arrayidx.15 = getelementptr i8, ptr %call.i, i32 2536
  %42 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %mul.15, ptr %arrayidx.15, align 4
  %mul.16 = shl nuw i32 %div, 4
  %arrayidx.16 = getelementptr i8, ptr %call.i, i32 2540
  %43 = ptrtoint ptr %arrayidx.16 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %mul.16, ptr %arrayidx.16, align 4
  %mul.17 = mul nuw i32 %div, 17
  %arrayidx.17 = getelementptr i8, ptr %call.i, i32 2544
  %44 = ptrtoint ptr %arrayidx.17 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %mul.17, ptr %arrayidx.17, align 4
  %mul.18 = mul nuw i32 %div, 18
  %arrayidx.18 = getelementptr i8, ptr %call.i, i32 2548
  %45 = ptrtoint ptr %arrayidx.18 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %mul.18, ptr %arrayidx.18, align 4
  %mul.19 = mul nuw i32 %div, 19
  %arrayidx.19 = getelementptr i8, ptr %call.i, i32 2552
  %46 = ptrtoint ptr %arrayidx.19 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %mul.19, ptr %arrayidx.19, align 4
  %mul.20 = mul nuw i32 %div, 20
  %arrayidx.20 = getelementptr i8, ptr %call.i, i32 2556
  %47 = ptrtoint ptr %arrayidx.20 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %mul.20, ptr %arrayidx.20, align 4
  %mul.21 = mul nuw i32 %div, 21
  %arrayidx.21 = getelementptr i8, ptr %call.i, i32 2560
  %48 = ptrtoint ptr %arrayidx.21 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %mul.21, ptr %arrayidx.21, align 4
  %mul.22 = mul nuw i32 %div, 22
  %arrayidx.22 = getelementptr i8, ptr %call.i, i32 2564
  %49 = ptrtoint ptr %arrayidx.22 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %mul.22, ptr %arrayidx.22, align 4
  %mul.23 = mul nuw i32 %div, 23
  %arrayidx.23 = getelementptr i8, ptr %call.i, i32 2568
  %50 = ptrtoint ptr %arrayidx.23 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %mul.23, ptr %arrayidx.23, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then30
  %51 = ptrtoint ptr %call19 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %call19, align 4
  %53 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pdev, align 8
  %call39 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %52, i32 noundef %add.i, ptr noundef %54, i32 noundef 0) #12
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %do.end44, label %if.end46

do.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #15
  br label %exit_mem

if.end46:                                         ; preds = %if.end37
  %55 = ptrtoint ptr %call19 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %call19, align 4
  %call48 = tail call ptr @ioremap(i32 noundef %56, i32 noundef %add.i) #12
  %mem49 = getelementptr i8, ptr %call.i, i32 2332
  %57 = ptrtoint ptr %mem49 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call48, ptr %mem49, align 4
  %58 = ptrtoint ptr %call48 to i32
  %base_addr = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 5
  %59 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %base_addr, align 32
  %cmp52 = icmp eq ptr %call48, null
  br i1 %cmp52, label %do.end56, label %if.end58

do.end56:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, ptr noundef nonnull %call19) #15
  br label %exit_req

if.end58:                                         ; preds = %if.end46
  %call59 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #12
  %tobool60.not = icmp eq ptr %call59, null
  br i1 %tobool60.not, label %if.then61, label %if.else77

if.then61:                                        ; preds = %if.end58
  %60 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %plat, align 4
  %reg_offsets63 = getelementptr inbounds %struct.ax_plat_data, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %reg_offsets63 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %reg_offsets63, align 4
  %tobool64.not = icmp eq ptr %63, null
  br i1 %tobool64.not, label %for.cond66.preheader, label %if.then61.if.end103_crit_edge

if.then61.if.end103_crit_edge:                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end103

for.cond66.preheader:                             ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #14
  %div69200 = lshr i32 %add.i, 5
  %arrayidx72 = getelementptr i8, ptr %call.i, i32 2476
  %64 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %arrayidx72, align 4
  %arrayidx72.1 = getelementptr i8, ptr %call.i, i32 2480
  %65 = ptrtoint ptr %arrayidx72.1 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %div69200, ptr %arrayidx72.1, align 4
  %mul70.2 = shl nuw nsw i32 %div69200, 1
  %arrayidx72.2 = getelementptr i8, ptr %call.i, i32 2484
  %66 = ptrtoint ptr %arrayidx72.2 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %mul70.2, ptr %arrayidx72.2, align 4
  %mul70.3 = mul nuw nsw i32 %div69200, 3
  %arrayidx72.3 = getelementptr i8, ptr %call.i, i32 2488
  %67 = ptrtoint ptr %arrayidx72.3 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %mul70.3, ptr %arrayidx72.3, align 4
  %mul70.4 = shl nuw nsw i32 %div69200, 2
  %arrayidx72.4 = getelementptr i8, ptr %call.i, i32 2492
  %68 = ptrtoint ptr %arrayidx72.4 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %mul70.4, ptr %arrayidx72.4, align 4
  %mul70.5 = mul nuw nsw i32 %div69200, 5
  %arrayidx72.5 = getelementptr i8, ptr %call.i, i32 2496
  %69 = ptrtoint ptr %arrayidx72.5 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %mul70.5, ptr %arrayidx72.5, align 4
  %mul70.6 = mul nuw nsw i32 %div69200, 6
  %arrayidx72.6 = getelementptr i8, ptr %call.i, i32 2500
  %70 = ptrtoint ptr %arrayidx72.6 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %mul70.6, ptr %arrayidx72.6, align 4
  %mul70.7 = mul nuw nsw i32 %div69200, 7
  %arrayidx72.7 = getelementptr i8, ptr %call.i, i32 2504
  %71 = ptrtoint ptr %arrayidx72.7 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %mul70.7, ptr %arrayidx72.7, align 4
  %mul70.8 = shl nuw nsw i32 %div69200, 3
  %arrayidx72.8 = getelementptr i8, ptr %call.i, i32 2508
  %72 = ptrtoint ptr %arrayidx72.8 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %mul70.8, ptr %arrayidx72.8, align 4
  %mul70.9 = mul nuw nsw i32 %div69200, 9
  %arrayidx72.9 = getelementptr i8, ptr %call.i, i32 2512
  %73 = ptrtoint ptr %arrayidx72.9 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %mul70.9, ptr %arrayidx72.9, align 4
  %mul70.10 = mul nuw nsw i32 %div69200, 10
  %arrayidx72.10 = getelementptr i8, ptr %call.i, i32 2516
  %74 = ptrtoint ptr %arrayidx72.10 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %mul70.10, ptr %arrayidx72.10, align 4
  %mul70.11 = mul nuw nsw i32 %div69200, 11
  %arrayidx72.11 = getelementptr i8, ptr %call.i, i32 2520
  %75 = ptrtoint ptr %arrayidx72.11 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %mul70.11, ptr %arrayidx72.11, align 4
  %mul70.12 = mul nuw nsw i32 %div69200, 12
  %arrayidx72.12 = getelementptr i8, ptr %call.i, i32 2524
  %76 = ptrtoint ptr %arrayidx72.12 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %mul70.12, ptr %arrayidx72.12, align 4
  %mul70.13 = mul nuw nsw i32 %div69200, 13
  %arrayidx72.13 = getelementptr i8, ptr %call.i, i32 2528
  %77 = ptrtoint ptr %arrayidx72.13 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %mul70.13, ptr %arrayidx72.13, align 4
  %mul70.14 = mul nuw nsw i32 %div69200, 14
  %arrayidx72.14 = getelementptr i8, ptr %call.i, i32 2532
  %78 = ptrtoint ptr %arrayidx72.14 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %mul70.14, ptr %arrayidx72.14, align 4
  %mul70.15 = mul nuw nsw i32 %div69200, 15
  %arrayidx72.15 = getelementptr i8, ptr %call.i, i32 2536
  %79 = ptrtoint ptr %arrayidx72.15 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %mul70.15, ptr %arrayidx72.15, align 4
  %mul70.16 = shl nuw nsw i32 %div69200, 4
  %arrayidx72.16 = getelementptr i8, ptr %call.i, i32 2540
  %80 = ptrtoint ptr %arrayidx72.16 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %mul70.16, ptr %arrayidx72.16, align 4
  %mul70.17 = mul nuw i32 %div69200, 17
  %arrayidx72.17 = getelementptr i8, ptr %call.i, i32 2544
  %81 = ptrtoint ptr %arrayidx72.17 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %mul70.17, ptr %arrayidx72.17, align 4
  %mul70.18 = mul nuw i32 %div69200, 18
  %arrayidx72.18 = getelementptr i8, ptr %call.i, i32 2548
  %82 = ptrtoint ptr %arrayidx72.18 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %mul70.18, ptr %arrayidx72.18, align 4
  %mul70.19 = mul nuw i32 %div69200, 19
  %arrayidx72.19 = getelementptr i8, ptr %call.i, i32 2552
  %83 = ptrtoint ptr %arrayidx72.19 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %mul70.19, ptr %arrayidx72.19, align 4
  %mul70.20 = mul nuw i32 %div69200, 20
  %arrayidx72.20 = getelementptr i8, ptr %call.i, i32 2556
  %84 = ptrtoint ptr %arrayidx72.20 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %mul70.20, ptr %arrayidx72.20, align 4
  %mul70.21 = mul nuw i32 %div69200, 21
  %arrayidx72.21 = getelementptr i8, ptr %call.i, i32 2560
  %85 = ptrtoint ptr %arrayidx72.21 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %mul70.21, ptr %arrayidx72.21, align 4
  %mul70.22 = mul nuw i32 %div69200, 22
  %arrayidx72.22 = getelementptr i8, ptr %call.i, i32 2564
  %86 = ptrtoint ptr %arrayidx72.22 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %mul70.22, ptr %arrayidx72.22, align 4
  %mul70.23 = mul nuw i32 %div69200, 23
  %arrayidx72.23 = getelementptr i8, ptr %call.i, i32 2568
  %87 = ptrtoint ptr %arrayidx72.23 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %mul70.23, ptr %arrayidx72.23, align 4
  %mul70.24 = mul nuw i32 %div69200, 24
  %arrayidx72.24 = getelementptr i8, ptr %call.i, i32 2572
  %88 = ptrtoint ptr %arrayidx72.24 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %mul70.24, ptr %arrayidx72.24, align 4
  %mul70.25 = mul nuw i32 %div69200, 25
  %arrayidx72.25 = getelementptr i8, ptr %call.i, i32 2576
  %89 = ptrtoint ptr %arrayidx72.25 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %mul70.25, ptr %arrayidx72.25, align 4
  %mul70.26 = mul nuw i32 %div69200, 26
  %arrayidx72.26 = getelementptr i8, ptr %call.i, i32 2580
  %90 = ptrtoint ptr %arrayidx72.26 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %mul70.26, ptr %arrayidx72.26, align 4
  %mul70.27 = mul nuw i32 %div69200, 27
  %arrayidx72.27 = getelementptr i8, ptr %call.i, i32 2584
  %91 = ptrtoint ptr %arrayidx72.27 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %mul70.27, ptr %arrayidx72.27, align 4
  %mul70.28 = mul nuw i32 %div69200, 28
  %arrayidx72.28 = getelementptr i8, ptr %call.i, i32 2588
  %92 = ptrtoint ptr %arrayidx72.28 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %mul70.28, ptr %arrayidx72.28, align 4
  %mul70.29 = mul nuw i32 %div69200, 29
  %arrayidx72.29 = getelementptr i8, ptr %call.i, i32 2592
  %93 = ptrtoint ptr %arrayidx72.29 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %mul70.29, ptr %arrayidx72.29, align 4
  %mul70.30 = mul nuw i32 %div69200, 30
  %arrayidx72.30 = getelementptr i8, ptr %call.i, i32 2596
  %94 = ptrtoint ptr %arrayidx72.30 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %mul70.30, ptr %arrayidx72.30, align 4
  %mul70.31 = mul nuw i32 %div69200, 31
  %arrayidx72.31 = getelementptr i8, ptr %call.i, i32 2600
  %95 = ptrtoint ptr %arrayidx72.31 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %mul70.31, ptr %arrayidx72.31, align 4
  br label %if.end103

if.else77:                                        ; preds = %if.end58
  %end.i202 = getelementptr inbounds %struct.resource, ptr %call59, i32 0, i32 1
  %96 = ptrtoint ptr %end.i202 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %end.i202, align 4
  %98 = ptrtoint ptr %call59 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %call59, align 4
  %sub.i203 = add i32 %97, 1
  %add.i204 = sub i32 %sub.i203, %99
  %100 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pdev, align 8
  %call81 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %99, i32 noundef %add.i204, ptr noundef %101, i32 noundef 0) #12
  %tobool82.not = icmp eq ptr %call81, null
  br i1 %tobool82.not, label %do.end86, label %if.end88

do.end86:                                         ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #15
  br label %exit_mem1

if.end88:                                         ; preds = %if.else77
  %102 = ptrtoint ptr %call59 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %call59, align 4
  %call90 = tail call ptr @ioremap(i32 noundef %103, i32 noundef %add.i204) #12
  %map2 = getelementptr i8, ptr %call.i, i32 2460
  %104 = ptrtoint ptr %map2 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call90, ptr %map2, align 4
  %tobool92.not = icmp eq ptr %call90, null
  br i1 %tobool92.not, label %exit_mem2.thread, label %if.end98

exit_mem2.thread:                                 ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #15
  br label %if.then114

if.end98:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  %105 = ptrtoint ptr %mem49 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %mem49, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %call90 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %106 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %reg_offset101 = getelementptr i8, ptr %call.i, i32 2364
  %107 = ptrtoint ptr %reg_offset101 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %reg_offset101, align 4
  %arrayidx102 = getelementptr i32, ptr %108, i32 31
  %109 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %sub.ptr.sub, ptr %arrayidx102, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.end98, %for.cond66.preheader, %if.then61.if.end103_crit_edge
  %mem2_size.0 = phi i32 [ %add.i204, %if.end98 ], [ 0, %if.then61.if.end103_crit_edge ], [ 0, %for.cond66.preheader ]
  %110 = ptrtoint ptr %mem49 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %mem49, align 4
  %112 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %111) #12, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %112)
  %cmp.i.i = icmp eq i8 %112, -1
  br i1 %cmp.i.i, label %if.end103.if.end107_crit_edge, label %do.body.i.i

if.end103.if.end107_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107

do.body.i.i:                                      ; preds = %if.end103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !221
  tail call void @arm_heavy_mb() #12
  %reg_offset.i.i = getelementptr i8, ptr %call.i, i32 2364
  %113 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %reg_offset.i.i, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %114, align 4
  %add.ptr.i269.i = getelementptr i8, ptr %111, i32 %116
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i269.i, i8 97) #12, !srcloc !190
  %add.ptr6.i.i = getelementptr i8, ptr %111, i32 13
  %117 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr6.i.i) #12, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !223
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i.i, i8 -1) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !224
  tail call void @arm_heavy_mb() #12
  %118 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %reg_offset.i.i, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %119, align 4
  %add.ptr20.i.i = getelementptr i8, ptr %111, i32 %121
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr20.i.i, i8 32) #12, !srcloc !190
  %122 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx24.i.i = getelementptr i32, ptr %123, i32 13
  %124 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx24.i.i, align 4
  %add.ptr25.i.i = getelementptr i8, ptr %111, i32 %125
  %126 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr25.i.i) #12, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !225
  %127 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx32.i.i = getelementptr i32, ptr %128, i32 13
  %129 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx32.i.i, align 4
  %add.ptr33.i.i = getelementptr i8, ptr %111, i32 %130
  %131 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr33.i.i) #12, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %cmp38.not.i.i = icmp eq i8 %131, 0
  br i1 %cmp38.not.i.i, label %if.end.i, label %do.body41.i.i

do.body41.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %111, i8 %112) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i.i, i8 %117) #12, !srcloc !190
  br label %if.end107

if.end.i:                                         ; preds = %do.body.i.i
  %132 = ptrtoint ptr %mem49 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %mem49, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !229
  tail call void @arm_heavy_mb() #12
  %134 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %reg_offset.i.i, align 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %135, align 4
  %add.ptr.i272.i = getelementptr i8, ptr %133, i32 %137
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i272.i, i8 33) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !230
  tail call void @arm_heavy_mb() #12
  %138 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %plat, align 4
  %dcr_val.i.i = getelementptr inbounds %struct.ax_plat_data, ptr %139, i32 0, i32 2
  %140 = ptrtoint ptr %dcr_val.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %dcr_val.i.i, align 1
  %142 = and i8 %141, -2
  %143 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx6.i.i = getelementptr i32, ptr %144, i32 14
  %145 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx6.i.i, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %133, i32 %146
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7.i.i, i8 %142) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !231
  tail call void @arm_heavy_mb() #12
  %147 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %plat, align 4
  %gpoc_val.i.i = getelementptr inbounds %struct.ax_plat_data, ptr %148, i32 0, i32 4
  %149 = ptrtoint ptr %gpoc_val.i.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %gpoc_val.i.i, align 1
  %151 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx13.i.i = getelementptr i32, ptr %152, i32 23
  %153 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx13.i.i, align 4
  %add.ptr14.i.i = getelementptr i8, ptr %133, i32 %154
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14.i.i, i8 %150) #12, !srcloc !190
  %155 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %plat, align 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %156, align 4
  %and.i = and i32 %158, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end65.i_crit_edge, label %if.then4.i

if.end.i.if.end65.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65.i

if.then4.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %SA_prom.i) #12
  %159 = getelementptr inbounds [32 x i8], ptr %SA_prom.i, i32 0, i32 2
  %160 = getelementptr inbounds [32 x i8], ptr %SA_prom.i, i32 0, i32 4
  %161 = getelementptr inbounds [32 x i8], ptr %SA_prom.i, i32 0, i32 6
  %162 = getelementptr inbounds [32 x i8], ptr %SA_prom.i, i32 0, i32 8
  %163 = getelementptr inbounds [32 x i8], ptr %SA_prom.i, i32 0, i32 10
  %164 = getelementptr inbounds [32 x i8], ptr %SA_prom.i, i32 0, i32 12
  %165 = getelementptr inbounds [32 x i8], ptr %SA_prom.i, i32 0, i32 14
  %166 = getelementptr inbounds [32 x i8], ptr %SA_prom.i, i32 0, i32 16
  %167 = getelementptr inbounds [32 x i8], ptr %SA_prom.i, i32 0, i32 20
  %168 = getelementptr inbounds [32 x i8], ptr %SA_prom.i, i32 0, i32 24
  %169 = getelementptr inbounds [32 x i8], ptr %SA_prom.i, i32 0, i32 28
  %170 = call ptr @memset(ptr %SA_prom.i, i32 255, i32 32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !232
  tail call void @arm_heavy_mb() #12
  %171 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx.i = getelementptr i32, ptr %172, i32 10
  %173 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i205 = getelementptr i8, ptr %111, i32 %174
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i205, i8 6) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !233
  tail call void @arm_heavy_mb() #12
  %175 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx9.i = getelementptr i32, ptr %176, i32 11
  %177 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %arrayidx9.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %111, i32 %178
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10.i, i8 0) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !234
  tail call void @arm_heavy_mb() #12
  %179 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx15.i = getelementptr i32, ptr %180, i32 8
  %181 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx15.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %111, i32 %182
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16.i, i8 0) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !235
  tail call void @arm_heavy_mb() #12
  %183 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx21.i = getelementptr i32, ptr %184, i32 9
  %185 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arrayidx21.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %111, i32 %186
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr22.i, i8 0) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !236
  tail call void @arm_heavy_mb() #12
  %187 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %reg_offset.i.i, align 4
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %188, align 4
  %add.ptr28.i = getelementptr i8, ptr %111, i32 %190
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28.i, i8 10) #12, !srcloc !190
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then4.i
  %i.0275.i = phi i32 [ 0, %if.then4.i ], [ %add44.i, %for.body.i.for.body.i_crit_edge ]
  %191 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx30.i = getelementptr i32, ptr %192, i32 16
  %193 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %arrayidx30.i, align 4
  %add.ptr31.i = getelementptr i8, ptr %111, i32 %194
  %195 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr31.i) #12, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !237
  %arrayidx34.i = getelementptr [32 x i8], ptr %SA_prom.i, i32 0, i32 %i.0275.i
  %196 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %195, ptr %arrayidx34.i, align 1
  %197 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx38.i = getelementptr i32, ptr %198, i32 16
  %199 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %arrayidx38.i, align 4
  %add.ptr39.i = getelementptr i8, ptr %111, i32 %200
  %201 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr39.i) #12, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !238
  %add.i206 = or i32 %i.0275.i, 1
  %arrayidx43.i = getelementptr [32 x i8], ptr %SA_prom.i, i32 0, i32 %add.i206
  %202 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %201, ptr %arrayidx43.i, align 1
  %add44.i = add nuw nsw i32 %i.0275.i, 2
  %cmp.i = icmp ult i32 %i.0275.i, 30
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %do.body45.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

do.body45.i:                                      ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !239
  tail call void @arm_heavy_mb() #12
  %203 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx49.i = getelementptr i32, ptr %204, i32 7
  %205 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %arrayidx49.i, align 4
  %add.ptr50.i = getelementptr i8, ptr %111, i32 %206
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr50.i, i8 64) #12, !srcloc !190
  %207 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %plat, align 4
  %wordlength.i = getelementptr inbounds %struct.ax_plat_data, ptr %208, i32 0, i32 1
  %209 = ptrtoint ptr %wordlength.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %wordlength.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %210)
  %cmp52.i = icmp eq i8 %210, 2
  br i1 %cmp52.i, label %for.body58.preheader.i, label %do.body45.i.if.end64.i_crit_edge

do.body45.i.if.end64.i_crit_edge:                 ; preds = %do.body45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64.i

for.body58.preheader.i:                           ; preds = %do.body45.i
  call void @__sanitizer_cov_trace_pc() #14
  %211 = getelementptr inbounds [32 x i8], ptr %SA_prom.i, i32 0, i32 30
  %212 = getelementptr inbounds [32 x i8], ptr %SA_prom.i, i32 0, i32 26
  %213 = getelementptr inbounds [32 x i8], ptr %SA_prom.i, i32 0, i32 22
  %214 = getelementptr inbounds [32 x i8], ptr %SA_prom.i, i32 0, i32 18
  %215 = getelementptr inbounds [32 x i8], ptr %SA_prom.i, i32 0, i32 15
  %216 = getelementptr inbounds [32 x i8], ptr %SA_prom.i, i32 0, i32 13
  %217 = getelementptr inbounds [32 x i8], ptr %SA_prom.i, i32 0, i32 11
  %218 = getelementptr inbounds [32 x i8], ptr %SA_prom.i, i32 0, i32 9
  %219 = getelementptr inbounds [32 x i8], ptr %SA_prom.i, i32 0, i32 7
  %220 = getelementptr inbounds [32 x i8], ptr %SA_prom.i, i32 0, i32 5
  %221 = getelementptr inbounds [32 x i8], ptr %SA_prom.i, i32 0, i32 3
  %222 = getelementptr inbounds [32 x i8], ptr %SA_prom.i, i32 0, i32 1
  %223 = ptrtoint ptr %159 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %159, align 1
  %225 = ptrtoint ptr %222 to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %224, ptr %222, align 1
  %226 = ptrtoint ptr %160 to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %160, align 1
  store i8 %227, ptr %159, align 1
  %228 = ptrtoint ptr %161 to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %161, align 1
  %230 = ptrtoint ptr %221 to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %229, ptr %221, align 1
  %231 = ptrtoint ptr %162 to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %162, align 1
  store i8 %232, ptr %160, align 1
  %233 = ptrtoint ptr %163 to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %163, align 1
  %235 = ptrtoint ptr %220 to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 %234, ptr %220, align 1
  %236 = ptrtoint ptr %164 to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %164, align 1
  store i8 %237, ptr %161, align 1
  %238 = ptrtoint ptr %165 to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %165, align 1
  %240 = ptrtoint ptr %219 to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %239, ptr %219, align 1
  %241 = ptrtoint ptr %166 to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %166, align 1
  store i8 %242, ptr %162, align 1
  %243 = ptrtoint ptr %214 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %214, align 1
  %245 = ptrtoint ptr %218 to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 %244, ptr %218, align 1
  %246 = ptrtoint ptr %167 to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %167, align 1
  store i8 %247, ptr %163, align 1
  %248 = ptrtoint ptr %213 to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %213, align 1
  %250 = ptrtoint ptr %217 to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 %249, ptr %217, align 1
  %251 = ptrtoint ptr %168 to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %168, align 1
  store i8 %252, ptr %164, align 1
  %253 = ptrtoint ptr %212 to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %212, align 1
  %255 = ptrtoint ptr %216 to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 %254, ptr %216, align 1
  %256 = ptrtoint ptr %169 to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %169, align 1
  store i8 %257, ptr %165, align 1
  %258 = ptrtoint ptr %211 to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %211, align 1
  %260 = ptrtoint ptr %215 to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 %259, ptr %215, align 1
  br label %if.end64.i

if.end64.i:                                       ; preds = %for.body58.preheader.i, %do.body45.i.if.end64.i_crit_edge
  call void @dev_addr_mod(ptr noundef %call.i, i32 noundef 0, ptr noundef nonnull %SA_prom.i, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %SA_prom.i) #12
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.end64.i, %if.end.i.if.end65.i_crit_edge
  %261 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %plat, align 4
  %263 = ptrtoint ptr %262 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %262, align 4
  %and68.i = and i32 %264, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68.i)
  %tobool69.not.i = icmp eq i32 %and68.i, 0
  br i1 %tobool69.not.i, label %if.end65.i.if.end73.i_crit_edge, label %if.then70.i

if.end65.i.if.end73.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73.i

if.then70.i:                                      ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_addr.i) #12
  %265 = call ptr @memset(ptr %mac_addr.i, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %eeprom.i) #12
  %266 = getelementptr inbounds i8, ptr %eeprom.i, i32 16
  %267 = ptrtoint ptr %266 to i32
  call void @__asan_storeN_noabort(i32 %267, i32 8)
  store i64 -1, ptr %266, align 4
  %268 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store ptr %add.ptr.i, ptr %eeprom.i, align 4
  %register_read.i = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom.i, i32 0, i32 1
  %269 = ptrtoint ptr %register_read.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr @ax_eeprom_register_read, ptr %register_read.i, align 4
  %register_write.i = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom.i, i32 0, i32 2
  %270 = ptrtoint ptr %register_write.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store ptr @ax_eeprom_register_write, ptr %register_write.i, align 4
  %width.i = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom.i, i32 0, i32 3
  %271 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 8, ptr %width.i, align 4
  call void @eeprom_93cx6_multiread(ptr noundef nonnull %eeprom.i, i8 noundef zeroext 0, ptr noundef nonnull %mac_addr.i, i16 noundef zeroext 3) #12
  call void @dev_addr_mod(ptr noundef %call.i, i32 noundef 0, ptr noundef nonnull %mac_addr.i, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %eeprom.i) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_addr.i) #12
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.then70.i, %if.end65.i.if.end73.i_crit_edge
  %272 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %plat, align 4
  %wordlength75.i = getelementptr inbounds %struct.ax_plat_data, ptr %273, i32 0, i32 1
  %274 = ptrtoint ptr %wordlength75.i to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %wordlength75.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %275)
  %cmp77.i = icmp eq i8 %275, 2
  br i1 %cmp77.i, label %do.body80.i, label %if.end73.i.if.end88.i_crit_edge

if.end73.i.if.end88.i_crit_edge:                  ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88.i

do.body80.i:                                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !240
  call void @arm_heavy_mb() #12
  %276 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %plat, align 4
  %dcr_val.i = getelementptr inbounds %struct.ax_plat_data, ptr %277, i32 0, i32 2
  %278 = ptrtoint ptr %dcr_val.i to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %dcr_val.i, align 1
  %280 = ptrtoint ptr %mem49 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %mem49, align 4
  %282 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx86.i = getelementptr i32, ptr %283, i32 14
  %284 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %arrayidx86.i, align 4
  %add.ptr87.i = getelementptr i8, ptr %281, i32 %285
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr87.i, i8 %279) #12, !srcloc !190
  br label %if.end88.i

if.end88.i:                                       ; preds = %do.body80.i, %if.end73.i.if.end88.i_crit_edge
  %stop_page.0.i = phi i8 [ -128, %do.body80.i ], [ 64, %if.end73.i.if.end88.i_crit_edge ]
  %start_page.0.i = phi i8 [ 64, %do.body80.i ], [ 32, %if.end73.i.if.end88.i_crit_edge ]
  %286 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %plat, align 4
  %288 = ptrtoint ptr %287 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %287, align 4
  %and91.i = and i32 %289, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91.i)
  %tobool92.not.i = icmp eq i32 %and91.i, 0
  br i1 %tobool92.not.i, label %if.end88.i.if.end119.i_crit_edge, label %if.then93.i

if.end88.i.if.end119.i_crit_edge:                 ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end119.i

if.then93.i:                                      ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #12
  %290 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 1
  %291 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 2
  %292 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 3
  %293 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 4
  %294 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !241
  call void @arm_heavy_mb() #12
  %295 = ptrtoint ptr %mem49 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %mem49, align 4
  %297 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %reg_offset.i.i, align 4
  %299 = ptrtoint ptr %298 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %298, align 4
  %add.ptr100.i = getelementptr i8, ptr %296, i32 %300
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr100.i, i8 97) #12, !srcloc !190
  %301 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx109.i = getelementptr i32, ptr %302, i32 1
  %303 = ptrtoint ptr %arrayidx109.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %arrayidx109.i, align 4
  %add.ptr110.i = getelementptr i8, ptr %111, i32 %304
  %305 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr110.i) #12, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !242
  %306 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %306)
  store i8 %305, ptr %addr.i, align 1
  %307 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx109.1.i = getelementptr i32, ptr %308, i32 2
  %309 = ptrtoint ptr %arrayidx109.1.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %arrayidx109.1.i, align 4
  %add.ptr110.1.i = getelementptr i8, ptr %111, i32 %310
  %311 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr110.1.i) #12, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !242
  %312 = ptrtoint ptr %290 to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 %311, ptr %290, align 1
  %313 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx109.2.i = getelementptr i32, ptr %314, i32 3
  %315 = ptrtoint ptr %arrayidx109.2.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %arrayidx109.2.i, align 4
  %add.ptr110.2.i = getelementptr i8, ptr %111, i32 %316
  %317 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr110.2.i) #12, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !242
  %318 = ptrtoint ptr %291 to i32
  call void @__asan_store1_noabort(i32 %318)
  store i8 %317, ptr %291, align 1
  %319 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx109.3.i = getelementptr i32, ptr %320, i32 4
  %321 = ptrtoint ptr %arrayidx109.3.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %arrayidx109.3.i, align 4
  %add.ptr110.3.i = getelementptr i8, ptr %111, i32 %322
  %323 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr110.3.i) #12, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !242
  %324 = ptrtoint ptr %292 to i32
  call void @__asan_store1_noabort(i32 %324)
  store i8 %323, ptr %292, align 1
  %325 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx109.4.i = getelementptr i32, ptr %326, i32 5
  %327 = ptrtoint ptr %arrayidx109.4.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %arrayidx109.4.i, align 4
  %add.ptr110.4.i = getelementptr i8, ptr %111, i32 %328
  %329 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr110.4.i) #12, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !242
  %330 = ptrtoint ptr %293 to i32
  call void @__asan_store1_noabort(i32 %330)
  store i8 %329, ptr %293, align 1
  %331 = ptrtoint ptr %reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %reg_offset.i.i, align 4
  %arrayidx109.5.i = getelementptr i32, ptr %332, i32 6
  %333 = ptrtoint ptr %arrayidx109.5.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %arrayidx109.5.i, align 4
  %add.ptr110.5.i = getelementptr i8, ptr %111, i32 %334
  %335 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr110.5.i) #12, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !242
  %336 = ptrtoint ptr %294 to i32
  call void @__asan_store1_noabort(i32 %336)
  store i8 %335, ptr %294, align 1
  call void @dev_addr_mod(ptr noundef %call.i, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #12
  br label %if.end119.i

if.end119.i:                                      ; preds = %if.then93.i, %if.end88.i.if.end119.i_crit_edge
  %337 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %plat, align 4
  %339 = ptrtoint ptr %338 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %338, align 4
  %and122.i = and i32 %340, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122.i)
  %tobool123.not.i = icmp eq i32 %and122.i, 0
  br i1 %tobool123.not.i, label %if.end119.i.if.end130.i_crit_edge, label %land.lhs.true.i

if.end119.i.if.end130.i_crit_edge:                ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end130.i

land.lhs.true.i:                                  ; preds = %if.end119.i
  %mac_addr125.i = getelementptr inbounds %struct.ax_plat_data, ptr %338, i32 0, i32 6
  %341 = ptrtoint ptr %mac_addr125.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %mac_addr125.i, align 4
  %tobool126.not.i = icmp eq ptr %342, null
  br i1 %tobool126.not.i, label %land.lhs.true.i.if.end130.i_crit_edge, label %if.then127.i

land.lhs.true.i.if.end130.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end130.i

if.then127.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dev_addr_mod(ptr noundef %call.i, i32 noundef 0, ptr noundef nonnull %342, i32 noundef 6) #12
  br label %if.end130.i

if.end130.i:                                      ; preds = %if.then127.i, %land.lhs.true.i.if.end130.i_crit_edge, %if.end119.i.if.end130.i_crit_edge
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 86
  %343 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %dev_addr.i, align 64
  %345 = ptrtoint ptr %344 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %344, align 4
  %347 = and i32 %346, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %347)
  %tobool.i.not.i.i = icmp eq i32 %347, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %if.end130.i.if.then132.i_crit_edge

if.end130.i.if.then132.i_crit_edge:               ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then132.i

is_valid_ether_addr.exit.i:                       ; preds = %if.end130.i
  %add.ptr.i.i.i = getelementptr i8, ptr %344, i32 4
  %348 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %348)
  %349 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i.i.i = zext i16 %349 to i32
  %or.i.i.i = or i32 %346, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.if.then132.i_crit_edge, label %is_valid_ether_addr.exit.i.if.end138.i_crit_edge

is_valid_ether_addr.exit.i.if.end138.i_crit_edge: ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end138.i

is_valid_ether_addr.exit.i.if.then132.i_crit_edge: ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then132.i

if.then132.i:                                     ; preds = %is_valid_ether_addr.exit.i.if.then132.i_crit_edge, %if.end130.i.if.then132.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i.i) #12
  %350 = call ptr @memset(ptr %addr.i.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i.i, i32 noundef 6) #12
  %351 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load1_noabort(i32 %351)
  %352 = load i8, ptr %addr.i.i, align 1
  %353 = and i8 %352, -4
  %354 = or i8 %353, 2
  store i8 %354, ptr %addr.i.i, align 1
  call void @dev_addr_mod(ptr noundef %call.i, i32 noundef 0, ptr noundef nonnull %addr.i.i, i32 noundef 6) #12
  %addr_assign_type.i.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 55
  %355 = ptrtoint ptr %addr_assign_type.i.i to i32
  call void @__asan_store1_noabort(i32 %355)
  store i8 1, ptr %addr_assign_type.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i.i) #12
  %dev136.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 133
  %356 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %dev_addr.i, align 64
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev136.i, ptr noundef nonnull @.str.26, ptr noundef %357) #15
  br label %if.end138.i

if.end138.i:                                      ; preds = %if.then132.i, %is_valid_ether_addr.exit.i.if.end138.i_crit_edge
  call void @ax_reset_8390(ptr noundef %call.i) #12
  %358 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %358)
  store ptr @.str.29, ptr %add.ptr.i, align 4
  %tx_start_page.i = getelementptr i8, ptr %call.i, i32 2345
  %359 = ptrtoint ptr %tx_start_page.i to i32
  call void @__asan_store1_noabort(i32 %359)
  store i8 %start_page.0.i, ptr %tx_start_page.i, align 1
  %stop_page141.i = getelementptr i8, ptr %call.i, i32 2347
  %360 = ptrtoint ptr %stop_page141.i to i32
  call void @__asan_store1_noabort(i32 %360)
  store i8 %stop_page.0.i, ptr %stop_page141.i, align 1
  %361 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %plat, align 4
  %wordlength143.i = getelementptr inbounds %struct.ax_plat_data, ptr %362, i32 0, i32 1
  %363 = ptrtoint ptr %wordlength143.i to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %wordlength143.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %364)
  %cmp145.i = icmp eq i8 %364, 2
  %word16.i = getelementptr i8, ptr %call.i, i32 2344
  %365 = ptrtoint ptr %word16.i to i32
  call void @__asan_load1_noabort(i32 %365)
  %bf.load.i = load i8, ptr %word16.i, align 4
  %bf.shl.i = select i1 %cmp145.i, i8 64, i8 0
  %bf.clear.i = and i8 %bf.load.i, -65
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %word16.i, align 4
  %conv148.i = or i8 %start_page.0.i, 12
  %rx_start_page.i = getelementptr i8, ptr %call.i, i32 2346
  %366 = ptrtoint ptr %rx_start_page.i to i32
  call void @__asan_store1_noabort(i32 %366)
  store i8 %conv148.i, ptr %rx_start_page.i, align 2
  %reset_8390.i = getelementptr i8, ptr %call.i, i32 2308
  %367 = ptrtoint ptr %reset_8390.i to i32
  call void @__asan_store4_noabort(i32 %367)
  store ptr @ax_reset_8390, ptr %reset_8390.i, align 4
  %block_input.i = getelementptr inbounds %struct.ax_plat_data, ptr %362, i32 0, i32 8
  %368 = ptrtoint ptr %block_input.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %block_input.i, align 4
  %tobool150.not.i = icmp eq ptr %369, null
  %spec.select.i = select i1 %tobool150.not.i, ptr @ax_block_input, ptr %369
  %370 = getelementptr i8, ptr %call.i, i32 2320
  %371 = ptrtoint ptr %370 to i32
  call void @__asan_store4_noabort(i32 %371)
  store ptr %spec.select.i, ptr %370, align 4
  %block_output.i = getelementptr inbounds %struct.ax_plat_data, ptr %362, i32 0, i32 7
  %372 = ptrtoint ptr %block_output.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %block_output.i, align 4
  %tobool159.not.i = icmp eq ptr %373, null
  %.sink278.i = select i1 %tobool159.not.i, ptr @ax_block_output, ptr %373
  %374 = getelementptr i8, ptr %call.i, i32 2316
  %375 = ptrtoint ptr %374 to i32
  call void @__asan_store4_noabort(i32 %375)
  store ptr %.sink278.i, ptr %374, align 4
  %get_8390_hdr.i = getelementptr i8, ptr %call.i, i32 2312
  %376 = ptrtoint ptr %get_8390_hdr.i to i32
  call void @__asan_store4_noabort(i32 %376)
  store ptr @ax_get_8390_hdr, ptr %get_8390_hdr.i, align 4
  %priv.i = getelementptr i8, ptr %call.i, i32 2412
  %377 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %377)
  store i32 0, ptr %priv.i, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 16
  %378 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_store4_noabort(i32 %378)
  store ptr @ax_netdev_ops, ptr %netdev_ops.i, align 8
  %ethtool_ops.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 44
  %379 = ptrtoint ptr %ethtool_ops.i to i32
  call void @__asan_store4_noabort(i32 %379)
  store ptr @ax_ethtool_ops, ptr %ethtool_ops.i, align 16
  call fastcc void @ax_NS8390_init(ptr noundef %call.i, i32 noundef 0) #12
  %call167.i = call i32 @register_netdev(ptr noundef %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167.i)
  %tobool168.not.i = icmp eq i32 %call167.i, 0
  br i1 %tobool168.not.i, label %ax_init_dev.exit, label %if.end138.i.if.end107_crit_edge

if.end138.i.if.end107_crit_edge:                  ; preds = %if.end138.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107

ax_init_dev.exit:                                 ; preds = %if.end138.i
  call void @__sanitizer_cov_trace_pc() #14
  %380 = ptrtoint ptr %word16.i to i32
  call void @__asan_load1_noabort(i32 %380)
  %bf.load172.i = load i8, ptr %word16.i, align 4
  %381 = and i8 %bf.load172.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %381)
  %tobool174.not.i = icmp eq i8 %381, 0
  %cond.i = select i1 %tobool174.not.i, i32 8, i32 16
  %382 = ptrtoint ptr %irq12 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %irq12, align 4
  %384 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %base_addr, align 32
  %386 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %dev_addr.i, align 64
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %call.i, ptr noundef nonnull @.str.30, i32 noundef %cond.i, i32 noundef %383, i32 noundef %385, ptr noundef %387) #15
  br label %cleanup

if.end107:                                        ; preds = %if.end138.i.if.end107_crit_edge, %do.body41.i.i, %if.end103.if.end107_crit_edge
  %retval.0.i.ph = phi i32 [ -19, %if.end103.if.end107_crit_edge ], [ -19, %do.body41.i.i ], [ %call167.i, %if.end138.i.if.end107_crit_edge ]
  %map2108 = getelementptr i8, ptr %call.i, i32 2460
  %388 = ptrtoint ptr %map2108 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %map2108, align 4
  %tobool109.not = icmp eq ptr %389, null
  br i1 %tobool109.not, label %if.end107.exit_mem1_crit_edge, label %exit_mem2

if.end107.exit_mem1_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_mem1

exit_mem2:                                        ; preds = %if.end107
  call void @iounmap(ptr noundef nonnull %389) #12
  br i1 %tobool60.not, label %exit_mem2.exit_mem1_crit_edge, label %exit_mem2.if.then114_crit_edge

exit_mem2.if.then114_crit_edge:                   ; preds = %exit_mem2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then114

exit_mem2.exit_mem1_crit_edge:                    ; preds = %exit_mem2
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_mem1

if.then114:                                       ; preds = %exit_mem2.if.then114_crit_edge, %exit_mem2.thread
  %ret.2214 = phi i32 [ -6, %exit_mem2.thread ], [ %retval.0.i.ph, %exit_mem2.if.then114_crit_edge ]
  %mem2_size.1213 = phi i32 [ %add.i204, %exit_mem2.thread ], [ %mem2_size.0, %exit_mem2.if.then114_crit_edge ]
  %390 = ptrtoint ptr %call59 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %call59, align 4
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %391, i32 noundef %mem2_size.1213) #12
  br label %exit_mem1

exit_mem1:                                        ; preds = %if.then114, %exit_mem2.exit_mem1_crit_edge, %if.end107.exit_mem1_crit_edge, %do.end86
  %ret.3 = phi i32 [ %ret.2214, %if.then114 ], [ %retval.0.i.ph, %exit_mem2.exit_mem1_crit_edge ], [ %retval.0.i.ph, %if.end107.exit_mem1_crit_edge ], [ -6, %do.end86 ]
  %392 = ptrtoint ptr %mem49 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %mem49, align 4
  call void @iounmap(ptr noundef %393) #12
  br label %exit_req

exit_req:                                         ; preds = %exit_mem1, %do.end56
  %ret.4 = phi i32 [ -6, %do.end56 ], [ %ret.3, %exit_mem1 ]
  %394 = ptrtoint ptr %call19 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %call19, align 4
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %395, i32 noundef %add.i) #12
  br label %exit_mem

exit_mem:                                         ; preds = %exit_req, %do.end44, %do.end24, %do.end
  %ret.5 = phi i32 [ %ret.4, %exit_req ], [ -6, %do.end44 ], [ -6, %do.end24 ], [ -6, %do.end ]
  %396 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %396)
  store ptr null, ptr %driver_data.i.i, align 4
  call void @free_netdev(ptr noundef nonnull %call.i) #12
  br label %cleanup

cleanup:                                          ; preds = %exit_mem, %ax_init_dev.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.5, %exit_mem ], [ -12, %entry.cleanup_crit_edge ], [ 0, %ax_init_dev.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_netdev(ptr noundef %1) #12
  %mem3 = getelementptr i8, ptr %1, i32 2332
  %2 = ptrtoint ptr %mem3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mem3, align 4
  tail call void @iounmap(ptr noundef %3) #12
  %call4 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #12
  %4 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call4, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call4, i32 0, i32 1
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %5
  %add.i = add i32 %sub.i, %7
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %5, i32 noundef %add.i) #12
  %map2 = getelementptr i8, ptr %1, i32 2460
  %8 = ptrtoint ptr %map2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map2, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iounmap(ptr noundef nonnull %9) #12
  %call7 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #12
  %10 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call7, align 4
  %end.i21 = getelementptr inbounds %struct.resource, ptr %call7, i32 0, i32 1
  %12 = ptrtoint ptr %end.i21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %end.i21, align 4
  %sub.i22 = sub i32 1, %11
  %add.i23 = add i32 %sub.i22, %13
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %11, i32 noundef %add.i23) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @free_netdev(ptr noundef %1) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax_suspend(ptr nocapture noundef readonly %dev, [1 x i32] %state.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %running = getelementptr i8, ptr %1, i32 2468
  %2 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %running, align 4
  %resume_open = getelementptr i8, ptr %1, i32 2469
  %4 = ptrtoint ptr %resume_open to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %resume_open, align 1
  tail call void @netif_device_detach(ptr noundef %1) #12
  %call2 = tail call i32 @ax_close(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax_resume(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mem.i = getelementptr i8, ptr %1, i32 2332
  %2 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mem.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !229
  tail call void @arm_heavy_mb() #12
  %reg_offset.i = getelementptr i8, ptr %1, i32 2364
  %4 = ptrtoint ptr %reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_offset.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %add.ptr.i12 = getelementptr i8, ptr %3, i32 %7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i12, i8 33) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !230
  tail call void @arm_heavy_mb() #12
  %plat.i = getelementptr i8, ptr %1, i32 2464
  %8 = ptrtoint ptr %plat.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %plat.i, align 4
  %dcr_val.i = getelementptr inbounds %struct.ax_plat_data, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dcr_val.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dcr_val.i, align 1
  %12 = and i8 %11, -2
  %13 = ptrtoint ptr %reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_offset.i, align 4
  %arrayidx6.i = getelementptr i32, ptr %14, i32 14
  %15 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx6.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %3, i32 %16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7.i, i8 %12) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !231
  tail call void @arm_heavy_mb() #12
  %17 = ptrtoint ptr %plat.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %plat.i, align 4
  %gpoc_val.i = getelementptr inbounds %struct.ax_plat_data, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %gpoc_val.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %gpoc_val.i, align 1
  %21 = ptrtoint ptr %reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_offset.i, align 4
  %arrayidx13.i = getelementptr i32, ptr %22, i32 23
  %23 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx13.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %3, i32 %24
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14.i, i8 %20) #12, !srcloc !190
  %resume_open = getelementptr i8, ptr %1, i32 2469
  %25 = ptrtoint ptr %resume_open to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %resume_open, align 1
  %conv = zext i8 %26 to i32
  tail call fastcc void @ax_NS8390_init(ptr noundef %1, i32 noundef %conv)
  tail call void @netif_device_attach(ptr noundef %1) #12
  %27 = ptrtoint ptr %resume_open to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %resume_open, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not = icmp eq i8 %28, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 @ax_open(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ethdev_setup(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ether_setup(ptr noundef %dev) #12
  %page_lock = getelementptr i8, ptr %dev, i32 2368
  tail call void @__raw_spin_lock_init(ptr noundef %page_lock, ptr noundef nonnull @.str.22, ptr noundef nonnull @ethdev_setup.__key, i16 noundef signext 3) #12
  %0 = load i32, ptr @msg_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %0)
  %cmp1.i = icmp ugt i32 %0, 31
  br i1 %cmp1.i, label %netif_msg_init.exit.thread15, label %if.end.i

netif_msg_init.exit.thread15:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %msg_enable17 = getelementptr i8, ptr %dev, i32 2416
  %1 = ptrtoint ptr %msg_enable17 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 195, ptr %msg_enable17, align 4
  br label %land.lhs.true

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp2.i = icmp eq i32 %0, 0
  br i1 %cmp2.i, label %netif_msg_init.exit.thread, label %netif_msg_init.exit

netif_msg_init.exit.thread:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %msg_enable12 = getelementptr i8, ptr %dev, i32 2416
  %2 = ptrtoint ptr %msg_enable12 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %msg_enable12, align 4
  br label %if.end

netif_msg_init.exit:                              ; preds = %if.end.i
  %notmask.i = shl nsw i32 -1, %0
  %sub.i = xor i32 %notmask.i, -1
  %msg_enable = getelementptr i8, ptr %dev, i32 2416
  %3 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %sub.i, ptr %msg_enable, align 4
  %and = and i32 %sub.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %netif_msg_init.exit.if.end_crit_edge, label %netif_msg_init.exit.land.lhs.true_crit_edge

netif_msg_init.exit.land.lhs.true_crit_edge:      ; preds = %netif_msg_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

netif_msg_init.exit.if.end_crit_edge:             ; preds = %netif_msg_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %netif_msg_init.exit.land.lhs.true_crit_edge, %netif_msg_init.exit.thread15
  %4 = load i32, ptr @version_printed, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr @version_printed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %do.end6, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end6:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @version) #15
  br label %if.end

if.end:                                           ; preds = %do.end6, %land.lhs.true.if.end_crit_edge, %netif_msg_init.exit.if.end_crit_edge, %netif_msg_init.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax_eeprom_register_read(ptr nocapture noundef %eeprom) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eeprom, align 4
  %mem = getelementptr inbounds %struct.ei_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mem, align 4
  %reg_offset = getelementptr inbounds %struct.ei_device, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_offset, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 20
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %7
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #12, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !243
  %and = and i8 %8, 32
  %reg_data_in = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 5
  %9 = ptrtoint ptr %reg_data_in to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %and, ptr %reg_data_in, align 1
  %and4 = and i8 %8, 64
  %reg_data_out = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 6
  %10 = ptrtoint ptr %reg_data_out to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %and4, ptr %reg_data_out, align 2
  %and7 = and i8 %8, -128
  %reg_data_clock = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 7
  %11 = ptrtoint ptr %reg_data_clock to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %and7, ptr %reg_data_clock, align 1
  %12 = and i8 %8, 16
  %reg_chip_select = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 8
  %13 = ptrtoint ptr %reg_chip_select to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %reg_chip_select, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax_eeprom_register_write(ptr nocapture noundef readonly %eeprom) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eeprom, align 4
  %mem = getelementptr inbounds %struct.ei_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mem, align 4
  %reg_offset = getelementptr inbounds %struct.ei_device, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_offset, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 20
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %7
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #12, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !244
  %9 = and i8 %8, 79
  %reg_data_in = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 5
  %10 = ptrtoint ptr %reg_data_in to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %reg_data_in, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  %12 = or i8 %9, 32
  %spec.select = select i1 %tobool.not, i8 %9, i8 %12
  %reg_data_clock = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 7
  %13 = ptrtoint ptr %reg_data_clock to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %reg_data_clock, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool5.not = icmp eq i8 %14, 0
  %15 = or i8 %spec.select, -128
  %reg.1 = select i1 %tobool5.not, i8 %spec.select, i8 %15
  %reg_chip_select = getelementptr inbounds %struct.eeprom_93cx6, ptr %eeprom, i32 0, i32 8
  %16 = ptrtoint ptr %reg_chip_select to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %reg_chip_select, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool11.not = icmp eq i8 %17, 0
  %18 = or i8 %reg.1, 16
  %reg.2 = select i1 %tobool11.not, i8 %reg.1, i8 %18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !245
  tail call void @arm_heavy_mb() #12
  %19 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mem, align 4
  %21 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_offset, align 4
  %arrayidx19 = getelementptr i32, ptr %22, i32 20
  %23 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx19, align 4
  %add.ptr20 = getelementptr i8, ptr %20, i32 %24
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr20, i8 %reg.2) #12, !srcloc !190
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 2147480) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @eeprom_93cx6_multiread(ptr noundef, i8 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax_reset_8390(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %1 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %base_addr, align 32
  %3 = inttoptr i32 %2 to ptr
  %msg_enable = getelementptr i8, ptr %dev, i32 2416
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 4
  %and = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body10_crit_edge, label %do.body1

entry.do.body10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax_reset_8390.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax_reset_8390, %if.then6)) #12
          to label %do.body10 [label %if.then6], !srcloc !246

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax_reset_8390.__UNIQUE_ID_ddebug359, ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %6) #12
  br label %do.body10

do.body10:                                        ; preds = %if.then6, %do.body1, %entry.do.body10_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  %reg_offset = getelementptr i8, ptr %dev, i32 2364
  %7 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_offset, align 4
  %arrayidx = getelementptr i32, ptr %8, i32 31
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %10
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #12, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !248
  %12 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_offset, align 4
  %arrayidx17 = getelementptr i32, ptr %13, i32 31
  %14 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx17, align 4
  %add.ptr18 = getelementptr i8, ptr %3, i32 %15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr18, i8 %11) #12, !srcloc !190
  %txing = getelementptr i8, ptr %dev, i32 2344
  %16 = ptrtoint ptr %txing to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %txing, align 4
  %bf.clear20 = and i8 %bf.load, -21
  store i8 %bf.clear20, ptr %txing, align 4
  %add = add i32 %0, 2
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %do.body10
  %17 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_offset, align 4
  %arrayidx25 = getelementptr i32, ptr %18, i32 7
  %19 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx25, align 4
  %add.ptr26 = getelementptr i8, ptr %3, i32 %20
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr26) #12, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !249
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %21)
  %cmp = icmp sgt i8 %21, -1
  br i1 %cmp, label %while.body, label %while.cond.do.body36_crit_edge

while.cond.do.body36_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body36

while.body:                                       ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %22
  %cmp32 = icmp slt i32 %sub, 0
  br i1 %cmp32, label %if.then34, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

if.then34:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31) #15
  br label %do.body36

do.body36:                                        ; preds = %if.then34, %while.cond.do.body36_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !250
  tail call void @arm_heavy_mb() #12
  %23 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_offset, align 4
  %arrayidx40 = getelementptr i32, ptr %24, i32 7
  %25 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx40, align 4
  %add.ptr41 = getelementptr i8, ptr %3, i32 %26
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr41, i8 -128) #12, !srcloc !190
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax_block_input(ptr noundef %dev, i32 noundef %count, ptr nocapture noundef readonly %skb, i32 noundef %ring_offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mem = getelementptr i8, ptr %dev, i32 2332
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %dmaing = getelementptr i8, ptr %dev, i32 2344
  %4 = ptrtoint ptr %dmaing to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %dmaing, align 4
  %5 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %bf.lshr7 = lshr i8 %bf.load, 3
  %bf.clear8 = and i8 %bf.lshr7, 1
  %bf.cast9 = zext i8 %bf.clear8 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.ax_block_input, i32 noundef 1, i32 noundef %bf.cast9) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %bf.set = or i8 %bf.load, 4
  %6 = ptrtoint ptr %dmaing to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %bf.set, ptr %dmaing, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !251
  tail call void @arm_heavy_mb() #12
  %reg_offset = getelementptr i8, ptr %dev, i32 2364
  %7 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_offset, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 34) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !252
  tail call void @arm_heavy_mb() #12
  %conv = trunc i32 %count to i8
  %11 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_offset, align 4
  %arrayidx21 = getelementptr i32, ptr %12, i32 10
  %13 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx21, align 4
  %add.ptr22 = getelementptr i8, ptr %1, i32 %14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr22, i8 %conv) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !253
  tail call void @arm_heavy_mb() #12
  %15 = lshr i32 %count, 8
  %conv26 = trunc i32 %15 to i8
  %16 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_offset, align 4
  %arrayidx28 = getelementptr i32, ptr %17, i32 11
  %18 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx28, align 4
  %add.ptr29 = getelementptr i8, ptr %1, i32 %19
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr29, i8 %conv26) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !254
  tail call void @arm_heavy_mb() #12
  %conv34 = trunc i32 %ring_offset to i8
  %20 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_offset, align 4
  %arrayidx36 = getelementptr i32, ptr %21, i32 8
  %22 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx36, align 4
  %add.ptr37 = getelementptr i8, ptr %1, i32 %23
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr37, i8 %conv34) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !255
  tail call void @arm_heavy_mb() #12
  %24 = lshr i32 %ring_offset, 8
  %conv42 = trunc i32 %24 to i8
  %25 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_offset, align 4
  %arrayidx44 = getelementptr i32, ptr %26, i32 9
  %27 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx44, align 4
  %add.ptr45 = getelementptr i8, ptr %1, i32 %28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr45, i8 %conv42) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !256
  tail call void @arm_heavy_mb() #12
  %29 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg_offset, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %add.ptr51 = getelementptr i8, ptr %1, i32 %32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr51, i8 10) #12, !srcloc !190
  %33 = ptrtoint ptr %dmaing to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load52 = load i8, ptr %dmaing, align 4
  %34 = and i8 %bf.load52, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool56.not = icmp eq i8 %34, 0
  %35 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg_offset, align 4
  %arrayidx73 = getelementptr i32, ptr %36, i32 16
  %37 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx73, align 4
  %add.ptr74 = getelementptr i8, ptr %1, i32 %38
  br i1 %tobool56.not, label %if.else, label %if.then57

if.then57:                                        ; preds = %if.end
  %shr61 = ashr i32 %count, 1
  tail call void @__raw_readsw(ptr noundef %add.ptr74, ptr noundef %3, i32 noundef %shr61) #12
  %and62 = and i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.then57.if.end75_crit_edge, label %if.then64

if.then57.if.end75_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

if.then64:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg_offset, align 4
  %arrayidx66 = getelementptr i32, ptr %40, i32 16
  %41 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx66, align 4
  %add.ptr67 = getelementptr i8, ptr %1, i32 %42
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr67) #12, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !257
  %sub = add i32 %count, -1
  %arrayidx70 = getelementptr i8, ptr %3, i32 %sub
  %44 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %arrayidx70, align 1
  br label %if.end75

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__raw_readsb(ptr noundef %add.ptr74, ptr noundef %3, i32 noundef %count) #12
  br label %if.end75

if.end75:                                         ; preds = %if.else, %if.then64, %if.then57.if.end75_crit_edge
  %45 = ptrtoint ptr %dmaing to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load77 = load i8, ptr %dmaing, align 4
  %bf.clear85 = and i8 %bf.load77, -5
  store i8 %bf.clear85, ptr %dmaing, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax_block_output(ptr noundef %dev, i32 noundef %count, ptr noundef %buf, i32 noundef %start_page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mem = getelementptr i8, ptr %dev, i32 2332
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %word16 = getelementptr i8, ptr %dev, i32 2344
  %2 = ptrtoint ptr %word16 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %word16, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp ne i8 %3, 0
  %and = and i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp ne i32 %and, 0
  %not.or.cond = and i1 %tobool1.not, %tobool.not
  %inc = zext i1 %not.or.cond to i32
  %count.addr.0 = add i32 %inc, %count
  %4 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool6.not = icmp eq i8 %4, 0
  br i1 %tobool6.not, label %if.end17, label %if.then7

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %bf.lshr14 = lshr i8 %bf.load, 3
  %bf.clear15 = and i8 %bf.lshr14, 1
  %bf.cast16 = zext i8 %bf.clear15 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.ax_block_output, i32 noundef 1, i32 noundef %bf.cast16) #15
  br label %cleanup

if.end17:                                         ; preds = %entry
  %bf.set = or i8 %bf.load, 4
  %5 = ptrtoint ptr %word16 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %bf.set, ptr %word16, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !258
  tail call void @arm_heavy_mb() #12
  %reg_offset = getelementptr i8, ptr %dev, i32 2364
  %6 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_offset, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 34) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !259
  tail call void @arm_heavy_mb() #12
  %10 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_offset, align 4
  %arrayidx29 = getelementptr i32, ptr %11, i32 7
  %12 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx29, align 4
  %add.ptr30 = getelementptr i8, ptr %1, i32 %13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr30, i8 64) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !260
  tail call void @arm_heavy_mb() #12
  %conv = trunc i32 %count.addr.0 to i8
  %14 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_offset, align 4
  %arrayidx36 = getelementptr i32, ptr %15, i32 10
  %16 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx36, align 4
  %add.ptr37 = getelementptr i8, ptr %1, i32 %17
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr37, i8 %conv) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !261
  tail call void @arm_heavy_mb() #12
  %18 = lshr i32 %count.addr.0, 8
  %conv41 = trunc i32 %18 to i8
  %19 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_offset, align 4
  %arrayidx43 = getelementptr i32, ptr %20, i32 11
  %21 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx43, align 4
  %add.ptr44 = getelementptr i8, ptr %1, i32 %22
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr44, i8 %conv41) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !262
  tail call void @arm_heavy_mb() #12
  %23 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_offset, align 4
  %arrayidx49 = getelementptr i32, ptr %24, i32 8
  %25 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx49, align 4
  %add.ptr50 = getelementptr i8, ptr %1, i32 %26
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr50, i8 0) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  tail call void @arm_heavy_mb() #12
  %conv54 = trunc i32 %start_page to i8
  %27 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_offset, align 4
  %arrayidx56 = getelementptr i32, ptr %28, i32 9
  %29 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx56, align 4
  %add.ptr57 = getelementptr i8, ptr %1, i32 %30
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr57, i8 %conv54) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !264
  tail call void @arm_heavy_mb() #12
  %31 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg_offset, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %add.ptr63 = getelementptr i8, ptr %1, i32 %34
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr63, i8 18) #12, !srcloc !190
  %35 = ptrtoint ptr %word16 to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load65 = load i8, ptr %word16, align 4
  %36 = and i8 %bf.load65, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool69.not = icmp eq i8 %36, 0
  %37 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_offset, align 4
  %arrayidx76 = getelementptr i32, ptr %38, i32 16
  %39 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx76, align 4
  %add.ptr77 = getelementptr i8, ptr %1, i32 %40
  br i1 %tobool69.not, label %if.else, label %if.then70

if.then70:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %shr74 = ashr i32 %count.addr.0, 1
  tail call void @__raw_writesw(ptr noundef %add.ptr77, ptr noundef %buf, i32 noundef %shr74) #12
  br label %if.end78

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__raw_writesb(ptr noundef %add.ptr77, ptr noundef %buf, i32 noundef %count.addr.0) #12
  br label %if.end78

if.end78:                                         ; preds = %if.else, %if.then70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %41, 2
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.end78
  %42 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_offset, align 4
  %arrayidx80 = getelementptr i32, ptr %43, i32 7
  %44 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx80, align 4
  %add.ptr81 = getelementptr i8, ptr %1, i32 %45
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr81) #12, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  %47 = and i8 %46, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp = icmp eq i8 %47, 0
  br i1 %cmp, label %while.body, label %while.cond.do.body91_crit_edge

while.cond.do.body91_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body91

while.body:                                       ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %48
  %cmp87 = icmp slt i32 %sub, 0
  br i1 %cmp87, label %if.then89, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

if.then89:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.36) #15
  tail call void @ax_reset_8390(ptr noundef %dev)
  tail call fastcc void @ax_NS8390_init(ptr noundef %dev, i32 noundef 1)
  br label %do.body91

do.body91:                                        ; preds = %if.then89, %while.cond.do.body91_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !266
  tail call void @arm_heavy_mb() #12
  %49 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reg_offset, align 4
  %arrayidx95 = getelementptr i32, ptr %50, i32 7
  %51 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx95, align 4
  %add.ptr96 = getelementptr i8, ptr %1, i32 %52
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr96, i8 64) #12, !srcloc !190
  %53 = ptrtoint ptr %word16 to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load98 = load i8, ptr %word16, align 4
  %bf.clear106 = and i8 %bf.load98, -5
  store i8 %bf.clear106, ptr %word16, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body91, %if.then7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax_get_8390_hdr(ptr noundef %dev, ptr noundef %hdr, i32 noundef %ring_page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mem = getelementptr i8, ptr %dev, i32 2332
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %dmaing = getelementptr i8, ptr %dev, i32 2344
  %2 = ptrtoint ptr %dmaing to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %dmaing, align 4
  %3 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %bf.lshr7 = lshr i8 %bf.load, 3
  %bf.clear8 = and i8 %bf.lshr7, 1
  %bf.cast9 = zext i8 %bf.clear8 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.ax_get_8390_hdr, i32 noundef 1, i32 noundef %bf.cast9) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %bf.set = or i8 %bf.load, 4
  %4 = ptrtoint ptr %dmaing to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %bf.set, ptr %dmaing, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  tail call void @arm_heavy_mb() #12
  %reg_offset = getelementptr i8, ptr %dev, i32 2364
  %5 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_offset, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 34) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !268
  tail call void @arm_heavy_mb() #12
  %9 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_offset, align 4
  %arrayidx21 = getelementptr i32, ptr %10, i32 10
  %11 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx21, align 4
  %add.ptr22 = getelementptr i8, ptr %1, i32 %12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr22, i8 4) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !269
  tail call void @arm_heavy_mb() #12
  %13 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_offset, align 4
  %arrayidx27 = getelementptr i32, ptr %14, i32 11
  %15 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx27, align 4
  %add.ptr28 = getelementptr i8, ptr %1, i32 %16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28, i8 0) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !270
  tail call void @arm_heavy_mb() #12
  %17 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_offset, align 4
  %arrayidx33 = getelementptr i32, ptr %18, i32 8
  %19 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx33, align 4
  %add.ptr34 = getelementptr i8, ptr %1, i32 %20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr34, i8 0) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !271
  tail call void @arm_heavy_mb() #12
  %conv = trunc i32 %ring_page to i8
  %21 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_offset, align 4
  %arrayidx39 = getelementptr i32, ptr %22, i32 9
  %23 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx39, align 4
  %add.ptr40 = getelementptr i8, ptr %1, i32 %24
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr40, i8 %conv) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !272
  tail call void @arm_heavy_mb() #12
  %25 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_offset, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %add.ptr46 = getelementptr i8, ptr %1, i32 %28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr46, i8 10) #12, !srcloc !190
  %29 = ptrtoint ptr %dmaing to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load47 = load i8, ptr %dmaing, align 4
  %30 = and i8 %bf.load47, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool51.not = icmp eq i8 %30, 0
  %31 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg_offset, align 4
  %arrayidx57 = getelementptr i32, ptr %32, i32 16
  %33 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx57, align 4
  %add.ptr58 = getelementptr i8, ptr %1, i32 %34
  br i1 %tobool51.not, label %if.else, label %if.then52

if.then52:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__raw_readsw(ptr noundef %add.ptr58, ptr noundef %hdr, i32 noundef 2) #12
  br label %do.body60

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__raw_readsb(ptr noundef %add.ptr58, ptr noundef %hdr, i32 noundef 4) #12
  br label %do.body60

do.body60:                                        ; preds = %if.else, %if.then52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  tail call void @arm_heavy_mb() #12
  %35 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg_offset, align 4
  %arrayidx64 = getelementptr i32, ptr %36, i32 7
  %37 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx64, align 4
  %add.ptr65 = getelementptr i8, ptr %1, i32 %38
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr65, i8 64) #12, !srcloc !190
  %39 = ptrtoint ptr %dmaing to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load67 = load i8, ptr %dmaing, align 4
  %bf.clear74 = and i8 %bf.load67, -5
  store i8 %bf.clear74, ptr %dmaing, align 4
  %count = getelementptr inbounds %struct.e8390_pkt_hdr, ptr %hdr, i32 0, i32 2
  %40 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %count, align 2
  %42 = tail call i16 @llvm.bswap.i16(i16 %41) #12
  %43 = ptrtoint ptr %count to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %count, align 2
  br label %cleanup

cleanup:                                          ; preds = %do.body60, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax_open(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2424
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax_open.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax_open, %if.then)) #12
          to label %do.end6 [label %if.then], !srcloc !246

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax_open.__UNIQUE_ID_ddebug360, ptr noundef %dev, ptr noundef nonnull @.str.38) #12
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %parent.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %bb_ctrl.i = getelementptr i8, ptr %dev, i32 2428
  %2 = ptrtoint ptr %bb_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @bb_ops, ptr %bb_ctrl.i, align 4
  %mem.i = getelementptr i8, ptr %dev, i32 2332
  %3 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mem.i, align 4
  %reg_offset.i = getelementptr i8, ptr %dev, i32 2364
  %5 = ptrtoint ptr %reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_offset.i, align 4
  %arrayidx.i = getelementptr i32, ptr %6, i32 20
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %4, i32 %8
  %addr_memr.i = getelementptr i8, ptr %dev, i32 2440
  %9 = ptrtoint ptr %addr_memr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr3.i, ptr %addr_memr.i, align 4
  %call5.i = tail call ptr @alloc_mdio_bitbang(ptr noundef %bb_ctrl.i) #12
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call5.i, ptr %add.ptr.i, align 4
  %tobool.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i, label %do.end6.cleanup_crit_edge, label %if.end.i

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %do.end6
  %add.ptr.i61 = getelementptr i8, ptr %1, i32 -16
  %name.i = getelementptr inbounds %struct.mii_bus, ptr %call5.i, i32 0, i32 1
  %11 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.39, ptr %name.i, align 4
  %12 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent.i, align 8
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 4
  %parent11.i = getelementptr inbounds %struct.mii_bus, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %parent11.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %parent11.i, align 4
  %17 = load ptr, ptr %add.ptr.i, align 4
  %id.i = getelementptr inbounds %struct.mii_bus, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %add.ptr.i61 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i61, align 8
  %id14.i = getelementptr i8, ptr %1, i32 -12
  %20 = ptrtoint ptr %id14.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id14.i, align 4
  %call15.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id.i, i32 noundef 61, ptr noundef nonnull @.str.40, ptr noundef %19, i32 noundef %21) #12
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 4
  %call17.i = tail call i32 @__mdiobus_register(ptr noundef %23, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end10, label %out_free_mdio_bitbang.i

out_free_mdio_bitbang.i:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 4
  tail call void @free_mdio_bitbang(ptr noundef %25) #12
  br label %cleanup

if.end10:                                         ; preds = %if.end.i
  %plat = getelementptr i8, ptr %dev, i32 2464
  %26 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %plat, align 4
  %check_irq = getelementptr inbounds %struct.ax_plat_data, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %check_irq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %check_irq, align 4
  %tobool11.not = icmp eq ptr %29, null
  %irq14 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %30 = ptrtoint ptr %irq14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq14, align 4
  %irqflags15 = getelementptr i8, ptr %dev, i32 2472
  %32 = ptrtoint ptr %irqflags15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irqflags15, align 4
  %ax_ei_interrupt.ax_ei_interrupt_filtered = select i1 %tobool11.not, ptr @ax_ei_interrupt, ptr @ax_ei_interrupt_filtered
  %call.i63 = tail call i32 @request_threaded_irq(i32 noundef %31, ptr noundef nonnull %ax_ei_interrupt.ax_ei_interrupt_filtered, ptr noundef null, i32 noundef %33, ptr noundef %dev, ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %tobool20.not = icmp eq i32 %call.i63, 0
  br i1 %tobool20.not, label %if.end22, label %if.end10.failed_request_irq_crit_edge

if.end10.failed_request_irq_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %failed_request_irq

if.end22:                                         ; preds = %if.end10
  %34 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %plat, align 4
  %gpoc_val.i = getelementptr inbounds %struct.ax_plat_data, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %gpoc_val.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %gpoc_val.i, align 1
  %38 = and i8 %37, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !274
  tail call void @arm_heavy_mb() #12
  %39 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mem.i, align 4
  %41 = ptrtoint ptr %reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg_offset.i, align 4
  %arrayidx.i66 = getelementptr i32, ptr %42, i32 23
  %43 = ptrtoint ptr %arrayidx.i66 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i66, align 4
  %add.ptr.i67 = getelementptr i8, ptr %40, i32 %44
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i67, i8 %38) #12, !srcloc !190
  %45 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr.i, align 4
  %call1.i = tail call ptr @phy_find_first(ptr noundef %46) #12
  %tobool.not.i68 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i68, label %if.end22.failed_mii_probe_crit_edge, label %if.end.i69

if.end22.failed_mii_probe_crit_edge:              ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %failed_mii_probe

if.end.i69:                                       ; preds = %if.end22
  %call2.i = tail call i32 @phy_connect_direct(ptr noundef %dev, ptr noundef nonnull %call1.i, ptr noundef nonnull @ax_handle_link_change, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i69.failed_mii_probe_crit_edge

if.end.i69.failed_mii_probe_crit_edge:            ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #14
  br label %failed_mii_probe

if.end5.i:                                        ; preds = %if.end.i69
  %call6.i = tail call i32 @phy_set_max_speed(ptr noundef nonnull %call1.i, i32 noundef 100) #12
  %drv.i = getelementptr inbounds %struct.phy_device, ptr %call1.i, i32 0, i32 1
  %47 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %drv.i, align 8
  %name.i70 = getelementptr inbounds %struct.phy_driver, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %name.i70 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name.i70, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %call1.i, i32 0, i32 3
  %51 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %52, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end5.i.if.end26_crit_edge

if.end5.i.if.end26_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.end.i.i.i:                                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call1.i, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end.i.i.i, %if.end5.i.if.end26_crit_edge
  %retval.0.i.i.i = phi ptr [ %54, %if.end.i.i.i ], [ %52, %if.end5.i.if.end26_crit_edge ]
  %irq.i = getelementptr inbounds %struct.phy_device, ptr %call1.i, i32 0, i32 25
  %55 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %irq.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.63, ptr noundef %50, ptr noundef %retval.0.i.i.i, i32 noundef %56) #15
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %57 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %phydev, align 16
  tail call void @phy_start(ptr noundef %58) #12
  %watchdog_timeo.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 115
  %59 = ptrtoint ptr %watchdog_timeo.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %watchdog_timeo.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %cmp.i = icmp slt i32 %60, 1
  br i1 %cmp.i, label %if.then.i72, label %if.end26.ax_ei_open.exit_crit_edge

if.end26.ax_ei_open.exit_crit_edge:               ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %ax_ei_open.exit

if.then.i72:                                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %61 = ptrtoint ptr %watchdog_timeo.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 20, ptr %watchdog_timeo.i, align 4
  br label %ax_ei_open.exit

ax_ei_open.exit:                                  ; preds = %if.then.i72, %if.end26.ax_ei_open.exit_crit_edge
  %page_lock.i = getelementptr i8, ptr %dev, i32 2368
  %call5.i73 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %page_lock.i) #12
  tail call fastcc void @ax_NS8390_init(ptr noundef %dev, i32 noundef 1) #12
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %62 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %63, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i.i) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %page_lock.i, i32 noundef %call5.i73) #12
  %irqlock.i = getelementptr i8, ptr %dev, i32 2344
  %64 = ptrtoint ptr %irqlock.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load.i = load i8, ptr %irqlock.i, align 4
  %bf.clear.i = and i8 %bf.load.i, -9
  store i8 %bf.clear.i, ptr %irqlock.i, align 4
  %running = getelementptr i8, ptr %dev, i32 2468
  %65 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %running, align 4
  br label %cleanup

failed_mii_probe:                                 ; preds = %if.end.i69.failed_mii_probe_crit_edge, %if.end22.failed_mii_probe_crit_edge
  %.str.62.sink = phi ptr [ @.str.61, %if.end22.failed_mii_probe_crit_edge ], [ @.str.62, %if.end.i69.failed_mii_probe_crit_edge ]
  %retval.0.i71.ph = phi i32 [ -19, %if.end22.failed_mii_probe_crit_edge ], [ %call2.i, %if.end.i69.failed_mii_probe_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull %.str.62.sink) #15
  %66 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %plat, align 4
  %gpoc_val.i75 = getelementptr inbounds %struct.ax_plat_data, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %gpoc_val.i75 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %gpoc_val.i75, align 1
  %reg_gpoc.0.i = or i8 %69, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !274
  tail call void @arm_heavy_mb() #12
  %70 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mem.i, align 4
  %72 = ptrtoint ptr %reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %reg_offset.i, align 4
  %arrayidx.i78 = getelementptr i32, ptr %73, i32 23
  %74 = ptrtoint ptr %arrayidx.i78 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i78, align 4
  %add.ptr.i79 = getelementptr i8, ptr %71, i32 %75
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i79, i8 %reg_gpoc.0.i) #12, !srcloc !190
  %irq32 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %76 = ptrtoint ptr %irq32 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %irq32, align 4
  %call33 = tail call ptr @free_irq(i32 noundef %77, ptr noundef %dev) #12
  br label %failed_request_irq

failed_request_irq:                               ; preds = %failed_mii_probe, %if.end10.failed_request_irq_crit_edge
  %ret.2 = phi i32 [ %call.i63, %if.end10.failed_request_irq_crit_edge ], [ %retval.0.i71.ph, %failed_mii_probe ]
  %78 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %add.ptr.i, align 4
  tail call void @mdiobus_unregister(ptr noundef %79) #12
  %80 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %add.ptr.i, align 4
  tail call void @free_mdio_bitbang(ptr noundef %81) #12
  br label %cleanup

cleanup:                                          ; preds = %failed_request_irq, %ax_ei_open.exit, %out_free_mdio_bitbang.i, %do.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ax_ei_open.exit ], [ %ret.2, %failed_request_irq ], [ -12, %do.end6.cleanup_crit_edge ], [ %call17.i, %out_free_mdio_bitbang.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax_close(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax_close.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax_close, %if.then)) #12
          to label %do.end6 [label %if.then], !srcloc !246

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax_close.__UNIQUE_ID_ddebug361, ptr noundef %dev, ptr noundef nonnull @.str.65) #12
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2424
  %running = getelementptr i8, ptr %dev, i32 2468
  %0 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %running, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !275
  tail call void @arm_heavy_mb() #12
  %page_lock.i = getelementptr i8, ptr %dev, i32 2368
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %page_lock.i) #12
  tail call fastcc void @ax_NS8390_init(ptr noundef %dev, i32 noundef 0) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %page_lock.i, i32 noundef %call3.i) #12
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %1 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %2, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #12
  %plat.i = getelementptr i8, ptr %dev, i32 2464
  %3 = ptrtoint ptr %plat.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %plat.i, align 4
  %gpoc_val.i = getelementptr inbounds %struct.ax_plat_data, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %gpoc_val.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %gpoc_val.i, align 1
  %reg_gpoc.0.i = or i8 %6, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !274
  tail call void @arm_heavy_mb() #12
  %mem.i = getelementptr i8, ptr %dev, i32 2332
  %7 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mem.i, align 4
  %reg_offset.i = getelementptr i8, ptr %dev, i32 2364
  %9 = ptrtoint ptr %reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_offset.i, align 4
  %arrayidx.i = getelementptr i32, ptr %10, i32 23
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %8, i32 %12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i21, i8 %reg_gpoc.0.i) #12, !srcloc !190
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %13 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phydev, align 16
  tail call void @phy_disconnect(ptr noundef %14) #12
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq, align 4
  %call11 = tail call ptr @free_irq(i32 noundef %16, ptr noundef %dev) #12
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 4
  tail call void @mdiobus_unregister(ptr noundef %18) #12
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 4
  tail call void @free_mdio_bitbang(ptr noundef %20) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax_ei_start_xmit(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  %buf = alloca [60 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %buf) #12
  %4 = call ptr @memset(ptr %buf, i32 255, i32 60)
  %data1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %3)
  %cmp = icmp ult i32 %3, 60
  br i1 %cmp, label %if.then, label %entry.do.body6_crit_edge

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = call ptr @memset(ptr %buf, i32 0, i32 60)
  %8 = call ptr @memcpy(ptr %buf, ptr %6, i32 %3)
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry.do.body6_crit_edge
  %data.0 = phi ptr [ %buf, %if.then ], [ %6, %entry.do.body6_crit_edge ]
  %send_length.0 = phi i32 [ 60, %if.then ], [ %3, %entry.do.body6_crit_edge ]
  %page_lock = getelementptr i8, ptr %dev, i32 2368
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %page_lock) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !276
  tail call void @arm_heavy_mb() #12
  %reg_offset = getelementptr i8, ptr %dev, i32 2364
  %9 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_offset, align 4
  %arrayidx = getelementptr i32, ptr %10, i32 15
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %add = add i32 %12, %1
  %13 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 0) #12, !srcloc !190
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %page_lock, i32 noundef %call9) #12
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  tail call void @disable_irq_nosync(i32 noundef %15) #12
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !277
  %and.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body6.disable_irq_nosync_lockdep_irqsave.exit_crit_edge

do.body6.disable_irq_nosync_lockdep_irqsave.exit_crit_edge: ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #14
  br label %disable_irq_nosync_lockdep_irqsave.exit

if.then.i:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %disable_irq_nosync_lockdep_irqsave.exit

disable_irq_nosync_lockdep_irqsave.exit:          ; preds = %if.then.i, %do.body6.disable_irq_nosync_lockdep_irqsave.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %page_lock) #12
  %irqlock = getelementptr i8, ptr %dev, i32 2344
  %17 = ptrtoint ptr %irqlock to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %irqlock, align 4
  %bf.set = or i8 %bf.load, 8
  store i8 %bf.set, ptr %irqlock, align 4
  %tx1 = getelementptr i8, ptr %dev, i32 2352
  %18 = ptrtoint ptr %tx1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %tx1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp18 = icmp eq i16 %19, 0
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %disable_irq_nosync_lockdep_irqsave.exit
  %tx_start_page = getelementptr i8, ptr %dev, i32 2345
  %20 = ptrtoint ptr %tx_start_page to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tx_start_page, align 1
  %conv21 = zext i8 %21 to i32
  %conv22 = trunc i32 %send_length.0 to i16
  %22 = ptrtoint ptr %tx1 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv22, ptr %tx1, align 4
  %msg_enable = getelementptr i8, ptr %dev, i32 2416
  %23 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %msg_enable, align 4
  %and = and i32 %24, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then20.if.end139_crit_edge, label %land.lhs.true

if.then20.if.end139_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end139

land.lhs.true:                                    ; preds = %if.then20
  %tx2 = getelementptr i8, ptr %dev, i32 2354
  %25 = ptrtoint ptr %tx2 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %tx2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp25 = icmp sgt i16 %26, 0
  br i1 %cmp25, label %do.body29, label %land.lhs.true.if.end139_crit_edge

land.lhs.true.if.end139_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end139

do.body29:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax_ei_start_xmit.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax_ei_start_xmit, %if.then35)) #12
          to label %if.end139 [label %if.then35], !srcloc !246

if.then35:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %tx2 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %tx2, align 2
  %conv37 = sext i16 %28 to i32
  %lasttx = getelementptr i8, ptr %dev, i32 2356
  %29 = ptrtoint ptr %lasttx to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %lasttx, align 4
  %conv38 = sext i16 %30 to i32
  %31 = ptrtoint ptr %irqlock to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load39 = load i8, ptr %irqlock, align 4
  %bf.lshr = lshr i8 %bf.load39, 4
  %bf.clear40 = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear40 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax_ei_start_xmit.__UNIQUE_ID_ddebug352, ptr noundef %dev, ptr noundef nonnull @.str.67, i32 noundef %conv37, i32 noundef %conv38, i32 noundef %bf.cast) #12
  br label %if.end139

if.else:                                          ; preds = %disable_irq_nosync_lockdep_irqsave.exit
  %tx247 = getelementptr i8, ptr %dev, i32 2354
  %32 = ptrtoint ptr %tx247 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %tx247, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %cmp49 = icmp eq i16 %33, 0
  br i1 %cmp49, label %if.then51, label %do.body96

if.then51:                                        ; preds = %if.else
  %tx_start_page52 = getelementptr i8, ptr %dev, i32 2345
  %34 = ptrtoint ptr %tx_start_page52 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %tx_start_page52, align 1
  %conv53 = zext i8 %35 to i32
  %add54 = add nuw nsw i32 %conv53, 6
  %conv55 = trunc i32 %send_length.0 to i16
  %36 = ptrtoint ptr %tx247 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv55, ptr %tx247, align 2
  %msg_enable57 = getelementptr i8, ptr %dev, i32 2416
  %37 = ptrtoint ptr %msg_enable57 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %msg_enable57, align 4
  %and58 = and i32 %38, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp ne i32 %and58, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp63 = icmp sgt i16 %19, 0
  %or.cond = select i1 %tobool59.not, i1 %cmp63, i1 false
  br i1 %or.cond, label %do.body67, label %if.then51.if.end139_crit_edge

if.then51.if.end139_crit_edge:                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end139

do.body67:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax_ei_start_xmit.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax_ei_start_xmit, %if.then79)) #12
          to label %if.end139 [label %if.then79], !srcloc !246

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %tx1 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %tx1, align 4
  %conv81 = sext i16 %40 to i32
  %lasttx82 = getelementptr i8, ptr %dev, i32 2356
  %41 = ptrtoint ptr %lasttx82 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %lasttx82, align 4
  %conv83 = sext i16 %42 to i32
  %43 = ptrtoint ptr %irqlock to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load85 = load i8, ptr %irqlock, align 4
  %bf.lshr86 = lshr i8 %bf.load85, 4
  %bf.clear87 = and i8 %bf.lshr86, 1
  %bf.cast88 = zext i8 %bf.clear87 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax_ei_start_xmit.__UNIQUE_ID_ddebug353, ptr noundef %dev, ptr noundef nonnull @.str.68, i32 noundef %conv81, i32 noundef %conv83, i32 noundef %bf.cast88) #12
  br label %if.end139

do.body96:                                        ; preds = %if.else
  %msg_enable97 = getelementptr i8, ptr %dev, i32 2416
  %44 = ptrtoint ptr %msg_enable97 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %msg_enable97, align 4
  %and98 = and i32 %45, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %do.body96.do.end125_crit_edge, label %do.body101

do.body96.do.end125_crit_edge:                    ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end125

do.body101:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax_ei_start_xmit.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax_ei_start_xmit, %if.then113)) #12
          to label %do.end125 [label %if.then113], !srcloc !246

if.then113:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %tx1 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %tx1, align 4
  %conv115 = sext i16 %47 to i32
  %48 = ptrtoint ptr %tx247 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %tx247, align 2
  %conv117 = sext i16 %49 to i32
  %lasttx118 = getelementptr i8, ptr %dev, i32 2356
  %50 = ptrtoint ptr %lasttx118 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %lasttx118, align 4
  %conv119 = sext i16 %51 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax_ei_start_xmit.__UNIQUE_ID_ddebug354, ptr noundef %dev, ptr noundef nonnull @.str.69, i32 noundef %conv115, i32 noundef %conv117, i32 noundef %conv119) #12
  br label %do.end125

do.end125:                                        ; preds = %if.then113, %do.body101, %do.body96.do.end125_crit_edge
  %52 = ptrtoint ptr %irqlock to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load127 = load i8, ptr %irqlock, align 4
  %bf.clear128 = and i8 %bf.load127, -9
  store i8 %bf.clear128, ptr %irqlock, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %53 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %54, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !278
  tail call void @arm_heavy_mb() #12
  %55 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reg_offset, align 4
  %arrayidx134 = getelementptr i32, ptr %56, i32 15
  %57 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx134, align 4
  %add135 = add i32 %58, %1
  %59 = inttoptr i32 %add135 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %59, i8 63) #12, !srcloc !190
  tail call void @_raw_spin_unlock(ptr noundef %page_lock) #12
  %60 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %irq, align 4
  br i1 %tobool.not.i, label %if.then.i272, label %do.end125.do.body2.i_crit_edge

do.end125.do.body2.i_crit_edge:                   ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

if.then.i272:                                     ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_on() #12
  br label %do.body2.i

do.body2.i:                                       ; preds = %if.then.i272, %do.end125.do.body2.i_crit_edge
  %62 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !279
  %and.i.i.i = and i32 %62, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool10.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool10.not.i, label %if.then14.i, label %do.body2.i.enable_irq_lockdep_irqrestore.exit_crit_edge, !prof !280

do.body2.i.enable_irq_lockdep_irqrestore.exit_crit_edge: ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %enable_irq_lockdep_irqrestore.exit

if.then14.i:                                      ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %enable_irq_lockdep_irqrestore.exit

enable_irq_lockdep_irqrestore.exit:               ; preds = %if.then14.i, %do.body2.i.enable_irq_lockdep_irqrestore.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %16) #12, !srcloc !281
  tail call void @enable_irq(i32 noundef %61) #12
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  br label %cleanup

if.end139:                                        ; preds = %if.then79, %do.body67, %if.then51.if.end139_crit_edge, %if.then35, %do.body29, %land.lhs.true.if.end139_crit_edge, %if.then20.if.end139_crit_edge
  %output_page.0 = phi i32 [ %conv21, %if.then35 ], [ %conv21, %land.lhs.true.if.end139_crit_edge ], [ %conv21, %if.then20.if.end139_crit_edge ], [ %add54, %if.then79 ], [ %add54, %if.then51.if.end139_crit_edge ], [ %conv21, %do.body29 ], [ %add54, %do.body67 ]
  %block_output = getelementptr i8, ptr %dev, i32 2316
  %63 = ptrtoint ptr %block_output to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %block_output, align 4
  call void %64(ptr noundef %dev, i32 noundef %send_length.0, ptr noundef %data.0, i32 noundef %output_page.0) #12
  %65 = ptrtoint ptr %irqlock to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load141 = load i8, ptr %irqlock, align 4
  %66 = and i8 %bf.load141, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool145.not = icmp eq i8 %66, 0
  br i1 %tobool145.not, label %if.then146, label %if.else162

if.then146:                                       ; preds = %if.end139
  %bf.set150 = or i8 %bf.load141, 16
  %67 = ptrtoint ptr %irqlock to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %bf.set150, ptr %irqlock, align 4
  call fastcc void @NS8390_trigger_send(ptr noundef %dev, i32 noundef %send_length.0, i32 noundef %output_page.0)
  %tx_start_page151 = getelementptr i8, ptr %dev, i32 2345
  %68 = ptrtoint ptr %tx_start_page151 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %tx_start_page151, align 1
  %conv152 = zext i8 %69 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %output_page.0, i32 %conv152)
  %cmp153 = icmp eq i32 %output_page.0, %conv152
  br i1 %cmp153, label %if.end164.thread, label %if.else158

if.end164.thread:                                 ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #14
  %70 = ptrtoint ptr %tx1 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 -1, ptr %tx1, align 4
  %lasttx157 = getelementptr i8, ptr %dev, i32 2356
  %71 = ptrtoint ptr %lasttx157 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 -1, ptr %lasttx157, align 4
  br label %land.lhs.true168

if.else158:                                       ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #14
  %tx2159 = getelementptr i8, ptr %dev, i32 2354
  %72 = ptrtoint ptr %tx2159 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 -1, ptr %tx2159, align 2
  %lasttx160 = getelementptr i8, ptr %dev, i32 2356
  %73 = ptrtoint ptr %lasttx160 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 -2, ptr %lasttx160, align 4
  br label %if.end164

if.else162:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #14
  %txqueue = getelementptr i8, ptr %dev, i32 2350
  %74 = ptrtoint ptr %txqueue to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %txqueue, align 2
  %inc163 = add i8 %75, 1
  store i8 %inc163, ptr %txqueue, align 2
  br label %if.end164

if.end164:                                        ; preds = %if.else162, %if.else158
  %76 = ptrtoint ptr %tx1 to i32
  call void @__asan_load2_noabort(i32 %76)
  %.pr = load i16, ptr %tx1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr)
  %tobool167.not = icmp eq i16 %.pr, 0
  br i1 %tobool167.not, label %if.end164.if.else173_crit_edge, label %if.end164.land.lhs.true168_crit_edge

if.end164.land.lhs.true168_crit_edge:             ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true168

if.end164.if.else173_crit_edge:                   ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else173

land.lhs.true168:                                 ; preds = %if.end164.land.lhs.true168_crit_edge, %if.end164.thread
  %tx2169 = getelementptr i8, ptr %dev, i32 2354
  %77 = ptrtoint ptr %tx2169 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %tx2169, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %tobool171.not = icmp eq i16 %78, 0
  br i1 %tobool171.not, label %land.lhs.true168.if.else173_crit_edge, label %if.then172

land.lhs.true168.if.else173_crit_edge:            ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else173

if.then172:                                       ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #14
  %_tx.i.i273 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %79 = ptrtoint ptr %_tx.i.i273 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %_tx.i.i273, align 128
  %state.i.i274 = getelementptr inbounds %struct.netdev_queue, ptr %80, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i274) #12
  br label %if.end174

if.else173:                                       ; preds = %land.lhs.true168.if.else173_crit_edge, %if.end164.if.else173_crit_edge
  %_tx.i.i275 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %81 = ptrtoint ptr %_tx.i.i275 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %_tx.i.i275, align 128
  %state.i.i276 = getelementptr inbounds %struct.netdev_queue, ptr %82, i32 0, i32 13
  call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i276) #12
  br label %if.end174

if.end174:                                        ; preds = %if.else173, %if.then172
  %83 = ptrtoint ptr %irqlock to i32
  call void @__asan_load1_noabort(i32 %83)
  %bf.load176 = load i8, ptr %irqlock, align 4
  %bf.clear177 = and i8 %bf.load176, -9
  store i8 %bf.clear177, ptr %irqlock, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  call void @arm_heavy_mb() #12
  %84 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %reg_offset, align 4
  %arrayidx183 = getelementptr i32, ptr %85, i32 15
  %86 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx183, align 4
  %add184 = add i32 %87, %1
  %88 = inttoptr i32 %add184 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %88, i8 63) #12, !srcloc !190
  call void @_raw_spin_unlock(ptr noundef %page_lock) #12
  %89 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %irq, align 4
  br i1 %tobool.not.i, label %if.then.i279, label %if.end174.do.body2.i282_crit_edge

if.end174.do.body2.i282_crit_edge:                ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i282

if.then.i279:                                     ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #14
  call void @trace_hardirqs_on() #12
  br label %do.body2.i282

do.body2.i282:                                    ; preds = %if.then.i279, %if.end174.do.body2.i282_crit_edge
  %91 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !279
  %and.i.i.i280 = and i32 %91, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i280)
  %tobool10.not.i281 = icmp eq i32 %and.i.i.i280, 0
  br i1 %tobool10.not.i281, label %if.then14.i283, label %do.body2.i282.enable_irq_lockdep_irqrestore.exit284_crit_edge, !prof !280

do.body2.i282.enable_irq_lockdep_irqrestore.exit284_crit_edge: ; preds = %do.body2.i282
  call void @__sanitizer_cov_trace_pc() #14
  br label %enable_irq_lockdep_irqrestore.exit284

if.then14.i283:                                   ; preds = %do.body2.i282
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %enable_irq_lockdep_irqrestore.exit284

enable_irq_lockdep_irqrestore.exit284:            ; preds = %if.then14.i283, %do.body2.i282.enable_irq_lockdep_irqrestore.exit284_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %16) #12, !srcloc !281
  call void @enable_irq(i32 noundef %90) #12
  call void @skb_clone_tx_timestamp(ptr noundef %skb) #12
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %92 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %end.i.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %tx_flags.i, align 1
  %96 = and i8 %95, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool.not.i285 = icmp eq i8 %96, 0
  br i1 %tobool.not.i285, label %enable_irq_lockdep_irqrestore.exit284.skb_tx_timestamp.exit_crit_edge, label %if.then.i286

enable_irq_lockdep_irqrestore.exit284.skb_tx_timestamp.exit_crit_edge: ; preds = %enable_irq_lockdep_irqrestore.exit284
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_tx_timestamp.exit

if.then.i286:                                     ; preds = %enable_irq_lockdep_irqrestore.exit284
  call void @__sanitizer_cov_trace_pc() #14
  call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #12
  br label %skb_tx_timestamp.exit

skb_tx_timestamp.exit:                            ; preds = %if.then.i286, %enable_irq_lockdep_irqrestore.exit284.skb_tx_timestamp.exit_crit_edge
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 0) #12
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  br label %cleanup

cleanup:                                          ; preds = %skb_tx_timestamp.exit, %enable_irq_lockdep_irqrestore.exit
  %tx_bytes.sink295 = phi ptr [ %tx_bytes, %skb_tx_timestamp.exit ], [ %tx_errors, %enable_irq_lockdep_irqrestore.exit ]
  %send_length.0.sink = phi i32 [ %send_length.0, %skb_tx_timestamp.exit ], [ 1, %enable_irq_lockdep_irqrestore.exit ]
  %retval.0 = phi i32 [ 0, %skb_tx_timestamp.exit ], [ 16, %enable_irq_lockdep_irqrestore.exit ]
  %97 = ptrtoint ptr %tx_bytes.sink295 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %tx_bytes.sink295, align 4
  %add188 = add i32 %98, %send_length.0.sink
  store i32 %add188, ptr %tx_bytes.sink295, align 4
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %buf) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax_ei_set_multicast_list(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %page_lock = getelementptr i8, ptr %dev, i32 2368
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %page_lock) #12
  tail call fastcc void @do_set_multicast_list(ptr noundef %dev)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %page_lock, i32 noundef %call3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax_ioctl(ptr noundef %dev, ptr noundef %req, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i32 @phy_mii_ioctl(ptr noundef nonnull %1, ptr noundef %req, i32 noundef %cmd) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end2 ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax_ei_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %call1 = tail call i32 @dev_trans_start(ptr noundef %dev) #12
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %3 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %tx_errors, align 4
  %page_lock = getelementptr i8, ptr %dev, i32 2368
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %page_lock) #12
  %reg_offset = getelementptr i8, ptr %dev, i32 2364
  %5 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_offset, align 4
  %arrayidx = getelementptr i32, ptr %6, i32 4
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = add i32 %8, %1
  %9 = inttoptr i32 %add to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %9) #12, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  %11 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_offset, align 4
  %arrayidx14 = getelementptr i32, ptr %12, i32 7
  %13 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx14, align 4
  %add15 = add i32 %14, %1
  %15 = inttoptr i32 %add15 to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %15) #12, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !284
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %page_lock, i32 noundef %call4) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax_ei_tx_timeout.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax_ei_tx_timeout, %if.then)) #12
          to label %do.end33 [label %if.then], !srcloc !246

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv19 = zext i8 %16 to i32
  %conv10 = zext i8 %10 to i32
  %sub = sub i32 %2, %call1
  %and = and i32 %conv10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool28.not = icmp eq i8 %16, 0
  %cond = select i1 %tobool28.not, ptr @.str.74, ptr @.str.73
  %cond29 = select i1 %tobool27.not, ptr %cond, ptr @.str.72
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax_ei_tx_timeout.__UNIQUE_ID_ddebug351, ptr noundef %dev, ptr noundef nonnull @.str.71, ptr noundef nonnull %cond29, i32 noundef %conv10, i32 noundef %conv19, i32 noundef %sub) #12
  br label %do.end33

do.end33:                                         ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool34.not = icmp eq i8 %16, 0
  br i1 %tobool34.not, label %land.lhs.true, label %do.end33.if.end40_crit_edge

do.end33.if.end40_crit_edge:                      ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

land.lhs.true:                                    ; preds = %do.end33
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %17 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_packets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool36.not = icmp eq i32 %18, 0
  br i1 %tobool36.not, label %if.then37, label %land.lhs.true.if.end40_crit_edge

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then37:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %interface_num = getelementptr i8, ptr %dev, i32 2349
  %19 = ptrtoint ptr %interface_num to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %interface_num, align 1
  %21 = xor i8 %20, 1
  store i8 %21, ptr %interface_num, align 1
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %land.lhs.true.if.end40_crit_edge, %do.end33.if.end40_crit_edge
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %22 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq, align 4
  tail call void @disable_irq_nosync(i32 noundef %23) #12
  %24 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !279
  %and.i.i.i = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #12, !srcloc !285
  br i1 %tobool.not.i, label %if.then.i, label %if.end40.disable_irq_nosync_lockdep.exit_crit_edge

if.end40.disable_irq_nosync_lockdep.exit_crit_edge: ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %disable_irq_nosync_lockdep.exit

if.then.i:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %disable_irq_nosync_lockdep.exit

disable_irq_nosync_lockdep.exit:                  ; preds = %if.then.i, %if.end40.disable_irq_nosync_lockdep.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %page_lock) #12
  %reset_8390 = getelementptr i8, ptr %dev, i32 2308
  %25 = ptrtoint ptr %reset_8390 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reset_8390, align 4
  tail call void %26(ptr noundef %dev) #12
  tail call fastcc void @ax_NS8390_init(ptr noundef %dev, i32 noundef 1)
  tail call void @_raw_spin_unlock(ptr noundef %page_lock) #12
  %27 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq, align 4
  tail call void @trace_hardirqs_on() #12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !286
  tail call void @enable_irq(i32 noundef %28) #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %29 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %30) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ax_ei_get_stats(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %page_lock = getelementptr i8, ptr %dev, i32 2368
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %page_lock) #12
  %reg_offset = getelementptr i8, ptr %dev, i32 2364
  %4 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_offset, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 13
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, %1
  %8 = inttoptr i32 %add to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %8) #12, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !287
  %conv10 = zext i8 %9 to i32
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 13
  %10 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_frame_errors, align 4
  %add12 = add i32 %11, %conv10
  store i32 %add12, ptr %rx_frame_errors, align 4
  %12 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_offset, align 4
  %arrayidx16 = getelementptr i32, ptr %13, i32 14
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx16, align 4
  %add17 = add i32 %15, %1
  %16 = inttoptr i32 %add17 to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %16) #12, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !288
  %conv21 = zext i8 %17 to i32
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 12
  %18 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_crc_errors, align 8
  %add23 = add i32 %19, %conv21
  store i32 %add23, ptr %rx_crc_errors, align 8
  %20 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_offset, align 4
  %arrayidx27 = getelementptr i32, ptr %21, i32 15
  %22 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx27, align 4
  %add28 = add i32 %23, %1
  %24 = inttoptr i32 %add28 to ptr
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %24) #12, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !289
  %conv32 = zext i8 %25 to i32
  %rx_missed_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 15
  %26 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_missed_errors, align 4
  %add34 = add i32 %27, %conv32
  store i32 %add34, ptr %rx_missed_errors, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %page_lock, i32 noundef %call4) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body2, %entry.cleanup_crit_edge
  %retval.0 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax_ei_poll(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %1) #12
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call = tail call i32 @ax_ei_interrupt(i32 noundef %3, ptr noundef %dev)
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %5) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax_ei_interrupt_filtered(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %plat = getelementptr i8, ptr %dev_id, i32 2464
  %2 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat, align 4
  %check_irq = getelementptr inbounds %struct.ax_plat_data, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %check_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %check_irq, align 4
  %call2 = tail call i32 %5(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i32 @ax_ei_interrupt(i32 noundef %irq, ptr noundef %dev_id)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax_ei_interrupt(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %page_lock = getelementptr i8, ptr %dev_id, i32 2368
  tail call void @_raw_spin_lock(ptr noundef %page_lock) #12
  %irqlock = getelementptr i8, ptr %dev_id, i32 2344
  %2 = ptrtoint ptr %irqlock to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %irqlock, align 4
  %3 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %reg_offset = getelementptr i8, ptr %dev_id, i32 2364
  %4 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_offset, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 7
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, %1
  %8 = inttoptr i32 %add to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %8) #12, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !290
  %conv = zext i8 %9 to i32
  %10 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_offset, align 4
  %arrayidx6 = getelementptr i32, ptr %11, i32 15
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx6, align 4
  %add7 = add i32 %13, %1
  %14 = inttoptr i32 %add7 to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %14) #12, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !291
  %conv11 = zext i8 %15 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev_id, ptr noundef nonnull @.str.41, i32 noundef %conv, i32 noundef %conv11) #15
  tail call void @_raw_spin_unlock(ptr noundef %page_lock) #12
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !292
  tail call void @arm_heavy_mb() #12
  %reg_offset13 = getelementptr i8, ptr %dev_id, i32 2364
  %16 = ptrtoint ptr %reg_offset13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_offset13, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add15 = add i32 %19, %1
  %20 = inttoptr i32 %add15 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %20, i8 32) #12, !srcloc !190
  %msg_enable = getelementptr i8, ptr %dev_id, i32 2416
  %21 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msg_enable, align 4
  %and = and i32 %22, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %do.body.do.end40_crit_edge, label %do.body19

do.body.do.end40_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end40

do.body19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax_ei_interrupt.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax_ei_interrupt, %if.then25)) #12
          to label %do.end40 [label %if.then25], !srcloc !246

if.then25:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %reg_offset13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_offset13, align 4
  %arrayidx29 = getelementptr i32, ptr %24, i32 7
  %25 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx29, align 4
  %add30 = add i32 %26, %1
  %27 = inttoptr i32 %add30 to ptr
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %27) #12, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !293
  %conv34 = zext i8 %28 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax_ei_interrupt.__UNIQUE_ID_ddebug355, ptr noundef %dev_id, ptr noundef nonnull @.str.43, i32 noundef %conv34) #12
  br label %do.end40

do.end40:                                         ; preds = %if.then25, %do.body19, %do.body.do.end40_crit_edge
  %29 = ptrtoint ptr %reg_offset13 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg_offset13, align 4
  %arrayidx44250 = getelementptr i32, ptr %30, i32 7
  %31 = ptrtoint ptr %arrayidx44250 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx44250, align 4
  %add45251 = add i32 %32, %1
  %33 = inttoptr i32 %add45251 to ptr
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %33) #12, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !294
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp.not253 = icmp eq i8 %34, 0
  br i1 %cmp.not253, label %do.end40.if.end170_crit_edge, label %land.rhs.lr.ph

do.end40.if.end170_crit_edge:                     ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end170

land.rhs.lr.ph:                                   ; preds = %do.end40
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 6
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 5
  %tx_carrier_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 17
  %tx_heartbeat_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 19
  %tx_window_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 20
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 13
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 12
  %rx_missed_errors = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 15
  br label %land.rhs

land.rhs:                                         ; preds = %do.body132.land.rhs_crit_edge, %land.rhs.lr.ph
  %35 = phi i8 [ %34, %land.rhs.lr.ph ], [ %108, %do.body132.land.rhs_crit_edge ]
  %nr_serviced.0254 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %do.body132.land.rhs_crit_edge ]
  %conv49255 = zext i8 %35 to i32
  %inc = add nuw nsw i32 %nr_serviced.0254, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %nr_serviced.0254)
  %exitcond.not = icmp eq i32 %nr_serviced.0254, 11
  br i1 %exitcond.not, label %land.lhs.true, label %while.body

while.body:                                       ; preds = %land.rhs
  %36 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then54, label %if.end62

if.then54:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev_id, ptr noundef nonnull @.str.44) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !295
  tail call void @arm_heavy_mb() #12
  %38 = ptrtoint ptr %reg_offset13 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_offset13, align 4
  %arrayidx60 = getelementptr i32, ptr %39, i32 7
  %40 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx60, align 4
  %add61 = add i32 %41, %1
  %42 = inttoptr i32 %add61 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %42, i8 %35) #12, !srcloc !190
  br label %if.end170

if.end62:                                         ; preds = %while.body
  %and63 = and i32 %conv49255, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.else, label %if.then65

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @ei_rx_overrun(ptr noundef %dev_id)
  br label %if.end70

if.else:                                          ; preds = %if.end62
  %and66 = and i32 %conv49255, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.else.if.end70_crit_edge, label %if.then68

if.else.if.end70_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.then68:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @ei_receive(ptr noundef %dev_id)
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.else.if.end70_crit_edge, %if.then65
  %and71 = and i32 %conv49255, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.else74, label %if.then73

if.then73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @ei_tx_intr(ptr noundef %dev_id)
  br label %if.end79

if.else74:                                        ; preds = %if.end70
  %and75 = and i32 %conv49255, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.else74.if.end79_crit_edge, label %if.then77

if.else74.if.end79_crit_edge:                     ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79

if.then77:                                        ; preds = %if.else74
  %43 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %base_addr, align 32
  %45 = ptrtoint ptr %reg_offset13 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg_offset13, align 4
  %arrayidx.i = getelementptr i32, ptr %46, i32 4
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %48, %44
  %49 = inttoptr i32 %add.i to ptr
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %49) #12, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !296
  %conv.i = zext i8 %50 to i32
  %and.i = and i8 %50, 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !297
  tail call void @arm_heavy_mb() #12
  %51 = ptrtoint ptr %reg_offset13 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg_offset13, align 4
  %arrayidx5.i = getelementptr i32, ptr %52, i32 7
  %53 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx5.i, align 4
  %add6.i = add i32 %54, %44
  %55 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %55, i8 8) #12, !srcloc !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and.i)
  %tobool.not.i = icmp eq i8 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @ei_tx_intr(ptr noundef %dev_id) #12
  br label %if.end79

if.else.i:                                        ; preds = %if.then77
  %56 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tx_errors.i, align 4
  %inc.i = add i32 %57, 1
  store i32 %inc.i, ptr %tx_errors.i, align 4
  %and8.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.else.i.if.end.i_crit_edge, label %if.then10.i

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %58 = ptrtoint ptr %tx_carrier_errors.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tx_carrier_errors.i, align 4
  %inc12.i = add i32 %59, 1
  store i32 %inc12.i, ptr %tx_carrier_errors.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then10.i, %if.else.i.if.end.i_crit_edge
  %and14.i = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end.i.if.end19.i_crit_edge, label %if.then16.i

if.end.i.if.end19.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

if.then16.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %tx_heartbeat_errors.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tx_heartbeat_errors.i, align 4
  %inc18.i = add i32 %61, 1
  store i32 %inc18.i, ptr %tx_heartbeat_errors.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then16.i, %if.end.i.if.end19.i_crit_edge
  %and21.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.end19.i.if.end79_crit_edge, label %if.then23.i

if.end19.i.if.end79_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79

if.then23.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %tx_window_errors.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tx_window_errors.i, align 8
  %inc25.i = add i32 %63, 1
  store i32 %inc25.i, ptr %tx_window_errors.i, align 8
  br label %if.end79

if.end79:                                         ; preds = %if.then23.i, %if.end19.i.if.end79_crit_edge, %if.then.i, %if.else74.if.end79_crit_edge, %if.then73
  %and80 = and i32 %conv49255, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.end79.if.end121_crit_edge, label %if.then82

if.end79.if.end121_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end121

if.then82:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %reg_offset13 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reg_offset13, align 4
  %arrayidx86 = getelementptr i32, ptr %65, i32 13
  %66 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx86, align 4
  %add87 = add i32 %67, %1
  %68 = inttoptr i32 %add87 to ptr
  %69 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %68) #12, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !298
  %conv91 = zext i8 %69 to i32
  %70 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rx_frame_errors, align 4
  %add92 = add i32 %71, %conv91
  store i32 %add92, ptr %rx_frame_errors, align 4
  %72 = ptrtoint ptr %reg_offset13 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %reg_offset13, align 4
  %arrayidx96 = getelementptr i32, ptr %73, i32 14
  %74 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx96, align 4
  %add97 = add i32 %75, %1
  %76 = inttoptr i32 %add97 to ptr
  %77 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %76) #12, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !299
  %conv101 = zext i8 %77 to i32
  %78 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rx_crc_errors, align 8
  %add103 = add i32 %79, %conv101
  store i32 %add103, ptr %rx_crc_errors, align 8
  %80 = ptrtoint ptr %reg_offset13 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %reg_offset13, align 4
  %arrayidx107 = getelementptr i32, ptr %81, i32 15
  %82 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx107, align 4
  %add108 = add i32 %83, %1
  %84 = inttoptr i32 %add108 to ptr
  %85 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %84) #12, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !300
  %conv112 = zext i8 %85 to i32
  %86 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rx_missed_errors, align 4
  %add114 = add i32 %87, %conv112
  store i32 %add114, ptr %rx_missed_errors, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !301
  tail call void @arm_heavy_mb() #12
  %88 = ptrtoint ptr %reg_offset13 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %reg_offset13, align 4
  %arrayidx119 = getelementptr i32, ptr %89, i32 7
  %90 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx119, align 4
  %add120 = add i32 %91, %1
  %92 = inttoptr i32 %add120 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %92, i8 32) #12, !srcloc !190
  br label %if.end121

if.end121:                                        ; preds = %if.then82, %if.end79.if.end121_crit_edge
  %and122 = and i32 %conv49255, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %if.end121.do.body132_crit_edge, label %do.body125

if.end121.do.body132_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body132

do.body125:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !302
  tail call void @arm_heavy_mb() #12
  %93 = ptrtoint ptr %reg_offset13 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %reg_offset13, align 4
  %arrayidx129 = getelementptr i32, ptr %94, i32 7
  %95 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx129, align 4
  %add130 = add i32 %96, %1
  %97 = inttoptr i32 %add130 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %97, i8 64) #12, !srcloc !190
  br label %do.body132

do.body132:                                       ; preds = %do.body125, %if.end121.do.body132_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !303
  tail call void @arm_heavy_mb() #12
  %98 = ptrtoint ptr %reg_offset13 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %reg_offset13, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %99, align 4
  %add137 = add i32 %101, %1
  %102 = inttoptr i32 %add137 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %102, i8 34) #12, !srcloc !190
  %103 = ptrtoint ptr %reg_offset13 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %reg_offset13, align 4
  %arrayidx44 = getelementptr i32, ptr %104, i32 7
  %105 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx44, align 4
  %add45 = add i32 %106, %1
  %107 = inttoptr i32 %add45 to ptr
  %108 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %107) #12, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !294
  %cmp.not = icmp eq i8 %108, 0
  br i1 %cmp.not, label %do.body132.if.end170_crit_edge, label %do.body132.land.rhs_crit_edge

do.body132.land.rhs_crit_edge:                    ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

do.body132.if.end170_crit_edge:                   ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end170

land.lhs.true:                                    ; preds = %land.rhs
  %109 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %msg_enable, align 4
  %and140 = and i32 %110, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %land.lhs.true.if.end170_crit_edge, label %if.then151

land.lhs.true.if.end170_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end170

if.then151:                                       ; preds = %land.lhs.true
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !304
  tail call void @arm_heavy_mb() #12
  %111 = ptrtoint ptr %reg_offset13 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %reg_offset13, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %112, align 4
  %add148 = add i32 %114, %1
  %115 = inttoptr i32 %add148 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %115, i8 34) #12, !srcloc !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %35)
  %cmp152.not = icmp eq i8 %35, -1
  br i1 %cmp152.not, label %if.then151.do.body156_crit_edge, label %if.then154

if.then151.do.body156_crit_edge:                  ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body156

if.then154:                                       ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev_id, ptr noundef nonnull @.str.45, i32 noundef %conv49255) #15
  br label %do.body156

do.body156:                                       ; preds = %if.then154, %if.then151.do.body156_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !305
  tail call void @arm_heavy_mb() #12
  %116 = ptrtoint ptr %reg_offset13 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %reg_offset13, align 4
  %arrayidx160 = getelementptr i32, ptr %117, i32 7
  %118 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx160, align 4
  %add161 = add i32 %119, %1
  %120 = inttoptr i32 %add161 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %120, i8 63) #12, !srcloc !190
  br label %if.end170

if.end170:                                        ; preds = %do.body156, %land.lhs.true.if.end170_crit_edge, %do.body132.if.end170_crit_edge, %if.then54, %do.end40.if.end170_crit_edge
  %nr_serviced.1242 = phi i32 [ 12, %do.body156 ], [ 12, %land.lhs.true.if.end170_crit_edge ], [ %inc, %if.then54 ], [ 0, %do.end40.if.end170_crit_edge ], [ %inc, %do.body132.if.end170_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %page_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_serviced.1242)
  %cmp172 = icmp sgt i32 %nr_serviced.1242, 0
  %cond = zext i1 %cmp172 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end170, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %cond, %if.end170 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_mdio_bitbang(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_mdio_bitbang(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax_bb_mdc(ptr nocapture noundef %ctrl, i32 noundef %level) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level)
  %tobool.not = icmp ne i32 %level, 0
  %reg_memr2 = getelementptr i8, ptr %ctrl, i32 16
  %0 = ptrtoint ptr %reg_memr2 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %reg_memr2, align 4
  %2 = and i8 %1, -2
  %masksel = zext i1 %tobool.not to i8
  %.sink = or i8 %2, %masksel
  store i8 %.sink, ptr %reg_memr2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !306
  tail call void @arm_heavy_mb() #12
  %reg_memr5 = getelementptr i8, ptr %ctrl, i32 16
  %3 = ptrtoint ptr %reg_memr5 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %reg_memr5, align 4
  %addr_memr = getelementptr i8, ptr %ctrl, i32 12
  %5 = ptrtoint ptr %addr_memr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %addr_memr, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %6, i8 %4) #12, !srcloc !190
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax_bb_dir(ptr nocapture noundef %ctrl, i32 noundef %output) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %output)
  %tobool.not = icmp eq i32 %output, 0
  %reg_memr2 = getelementptr i8, ptr %ctrl, i32 16
  %0 = ptrtoint ptr %reg_memr2 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %reg_memr2, align 4
  %2 = and i8 %1, -3
  %masksel = select i1 %tobool.not, i8 2, i8 0
  %.sink = or i8 %2, %masksel
  store i8 %.sink, ptr %reg_memr2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !307
  tail call void @arm_heavy_mb() #12
  %reg_memr5 = getelementptr i8, ptr %ctrl, i32 16
  %3 = ptrtoint ptr %reg_memr5 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %reg_memr5, align 4
  %addr_memr = getelementptr i8, ptr %ctrl, i32 12
  %5 = ptrtoint ptr %addr_memr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %addr_memr, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %6, i8 %4) #12, !srcloc !190
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax_bb_set_data(ptr nocapture noundef %ctrl, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %reg_memr2 = getelementptr i8, ptr %ctrl, i32 16
  %0 = ptrtoint ptr %reg_memr2 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %reg_memr2, align 4
  %2 = and i8 %1, -9
  %masksel = select i1 %tobool.not, i8 0, i8 8
  %.sink = or i8 %2, %masksel
  store i8 %.sink, ptr %reg_memr2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !308
  tail call void @arm_heavy_mb() #12
  %reg_memr5 = getelementptr i8, ptr %ctrl, i32 16
  %3 = ptrtoint ptr %reg_memr5 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %reg_memr5, align 4
  %addr_memr = getelementptr i8, ptr %ctrl, i32 12
  %5 = ptrtoint ptr %addr_memr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %addr_memr, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %6, i8 %4) #12, !srcloc !190
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax_bb_get_data(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %addr_memr = getelementptr i8, ptr %ctrl, i32 12
  %0 = ptrtoint ptr %addr_memr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr_memr, align 4
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1) #12, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !309
  %3 = lshr i8 %2, 2
  %.lobit = and i8 %3, 1
  %4 = zext i8 %.lobit to i32
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ei_rx_overrun(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %reg_offset = getelementptr i8, ptr %dev, i32 2364
  %2 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_offset, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add = add i32 %5, %1
  %6 = inttoptr i32 %add to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %6) #12, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !310
  %8 = and i8 %7, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !311
  tail call void @arm_heavy_mb() #12
  %9 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_offset, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add6 = add i32 %12, %1
  %13 = inttoptr i32 %add6 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 33) #12, !srcloc !190
  %msg_enable = getelementptr i8, ptr %dev, i32 2416
  %14 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_enable, align 4
  %and8 = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  br i1 %tobool.not, label %entry.do.end20_crit_edge, label %do.body9

entry.do.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end20

do.body9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ei_rx_overrun.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ei_rx_overrun, %if.then15)) #12
          to label %do.end20 [label %if.then15], !srcloc !246

if.then15:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ei_rx_overrun.__UNIQUE_ID_ddebug357, ptr noundef %dev, ptr noundef nonnull @.str.48) #12
  br label %do.end20

do.end20:                                         ; preds = %if.then15, %do.body9, %entry.do.end20_crit_edge
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 11
  %16 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_over_errors, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %rx_over_errors, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !312
  tail call void @arm_heavy_mb() #12
  %28 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_offset, align 4
  %arrayidx26 = getelementptr i32, ptr %29, i32 10
  %30 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx26, align 4
  %add27 = add i32 %31, %1
  %32 = inttoptr i32 %add27 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %32, i8 0) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !313
  tail call void @arm_heavy_mb() #12
  %33 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_offset, align 4
  %arrayidx32 = getelementptr i32, ptr %34, i32 11
  %35 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx32, align 4
  %add33 = add i32 %36, %1
  %37 = inttoptr i32 %add33 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %37, i8 0) #12, !srcloc !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool34.not = icmp eq i8 %8, 0
  br i1 %tobool34.not, label %do.end20.do.body51_crit_edge, label %if.then35

do.end20.do.body51_crit_edge:                     ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body51

if.then35:                                        ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_offset, align 4
  %arrayidx39 = getelementptr i32, ptr %39, i32 7
  %40 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx39, align 4
  %add40 = add i32 %41, %1
  %42 = inttoptr i32 %add40 to ptr
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %42) #12, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !314
  %44 = and i8 %43, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool47.not = icmp ne i8 %44, 0
  br label %do.body51

do.body51:                                        ; preds = %if.then35, %do.end20.do.body51_crit_edge
  %must_resend.1 = phi i1 [ true, %do.end20.do.body51_crit_edge ], [ %tobool47.not, %if.then35 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !315
  tail call void @arm_heavy_mb() #12
  %45 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg_offset, align 4
  %arrayidx55 = getelementptr i32, ptr %46, i32 13
  %47 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx55, align 4
  %add56 = add i32 %48, %1
  %49 = inttoptr i32 %add56 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %49, i8 2) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !316
  tail call void @arm_heavy_mb() #12
  %50 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg_offset, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %add62 = add i32 %53, %1
  %54 = inttoptr i32 %add62 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %54, i8 34) #12, !srcloc !190
  tail call fastcc void @ei_receive(ptr noundef %dev)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !317
  tail call void @arm_heavy_mb() #12
  %55 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reg_offset, align 4
  %arrayidx67 = getelementptr i32, ptr %56, i32 7
  %57 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx67, align 4
  %add68 = add i32 %58, %1
  %59 = inttoptr i32 %add68 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %59, i8 16) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !318
  tail call void @arm_heavy_mb() #12
  %60 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %reg_offset, align 4
  %arrayidx73 = getelementptr i32, ptr %61, i32 13
  %62 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx73, align 4
  %add74 = add i32 %63, %1
  %64 = inttoptr i32 %add74 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %64, i8 0) #12, !srcloc !190
  br i1 %must_resend.1, label %do.body51.if.end83_crit_edge, label %do.body77

do.body51.if.end83_crit_edge:                     ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

do.body77:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !319
  tail call void @arm_heavy_mb() #12
  %65 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %reg_offset, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  %add82 = add i32 %68, %1
  %69 = inttoptr i32 %add82 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %69, i8 38) #12, !srcloc !190
  br label %if.end83

if.end83:                                         ; preds = %do.body77, %do.body51.if.end83_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ei_receive(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %rx_frame = alloca %struct.e8390_pkt_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_frame) #12
  %2 = getelementptr inbounds %struct.e8390_pkt_hdr, ptr %rx_frame, i32 0, i32 1
  %3 = getelementptr inbounds %struct.e8390_pkt_hdr, ptr %rx_frame, i32 0, i32 2
  %stop_page = getelementptr i8, ptr %dev, i32 2347
  %4 = ptrtoint ptr %rx_frame to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %rx_frame, align 4
  %5 = ptrtoint ptr %stop_page to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %stop_page, align 1
  %conv = zext i8 %6 to i32
  %rx_start_page = getelementptr i8, ptr %dev, i32 2346
  %7 = ptrtoint ptr %rx_start_page to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rx_start_page, align 2
  %conv1 = zext i8 %8 to i32
  %sub = sub nsw i32 %conv, %conv1
  %reg_offset = getelementptr i8, ptr %dev, i32 2364
  %msg_enable = getelementptr i8, ptr %dev, i32 2416
  %current_page = getelementptr i8, ptr %dev, i32 2348
  %get_8390_hdr = getelementptr i8, ptr %dev, i32 2312
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 14
  %block_input = getelementptr i8, ptr %dev, i32 2320
  %stats167 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 2
  %multicast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 8
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 10
  br label %while.body

while.body:                                       ; preds = %cleanup224.while.body_crit_edge, %entry
  %inc325 = phi i32 [ 1, %entry ], [ %inc, %cleanup224.while.body_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !320
  call void @arm_heavy_mb() #12
  %9 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_offset, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add = add i32 %12, %1
  %13 = inttoptr i32 %add to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 96) #12, !srcloc !190
  %14 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_offset, align 4
  %arrayidx4 = getelementptr i32, ptr %15, i32 7
  %16 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx4, align 4
  %add5 = add i32 %17, %1
  %18 = inttoptr i32 %add5 to ptr
  %19 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %18) #12, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !321
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !322
  call void @arm_heavy_mb() #12
  %20 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_offset, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add13 = add i32 %23, %1
  %24 = inttoptr i32 %add13 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %24, i8 32) #12, !srcloc !190
  %25 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_offset, align 4
  %arrayidx17 = getelementptr i32, ptr %26, i32 3
  %27 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx17, align 4
  %add18 = add i32 %28, %1
  %29 = inttoptr i32 %add18 to ptr
  %30 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %29) #12, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !323
  %add23 = add i8 %30, 1
  %31 = ptrtoint ptr %stop_page to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %stop_page, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %add23, i8 %32)
  %cmp28.not = icmp ult i8 %add23, %32
  br i1 %cmp28.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %rx_start_page to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %rx_start_page, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %this_frame.0 = phi i8 [ %34, %if.then ], [ %add23, %while.body.if.end_crit_edge ]
  %35 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %msg_enable, align 4
  %and = and i32 %36, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end46_crit_edge, label %land.lhs.true

if.end.if.end46_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

land.lhs.true:                                    ; preds = %if.end
  %conv31 = zext i8 %this_frame.0 to i32
  %37 = ptrtoint ptr %current_page to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %current_page, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %this_frame.0, i8 %38)
  %cmp33.not = icmp eq i8 %this_frame.0, %38
  br i1 %cmp33.not, label %land.lhs.true.if.end46_crit_edge, label %land.lhs.true35

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

land.lhs.true35:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %this_frame.0)
  %cmp37.not = icmp eq i8 %this_frame.0, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %cmp40.not = icmp eq i8 %19, -1
  %or.cond = select i1 %cmp37.not, i1 %cmp40.not, i1 false
  br i1 %or.cond, label %land.lhs.true35.if.end46_crit_edge, label %if.then42

land.lhs.true35.if.end46_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then42:                                        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #14
  %conv45 = zext i8 %38 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.49, i32 noundef %conv31, i32 noundef %conv45) #15
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %land.lhs.true35.if.end46_crit_edge, %land.lhs.true.if.end46_crit_edge, %if.end.if.end46_crit_edge
  call void @__sanitizer_cov_trace_cmp1(i8 %this_frame.0, i8 %19)
  %cmp49 = icmp eq i8 %this_frame.0, %19
  br i1 %cmp49, label %if.end46.do.body228_crit_edge, label %if.end52

if.end46.do.body228_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body228

if.end52:                                         ; preds = %if.end46
  %conv47 = zext i8 %this_frame.0 to i32
  %conv54 = shl nuw nsw i32 %conv47, 8
  %39 = ptrtoint ptr %get_8390_hdr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %get_8390_hdr, align 4
  call void %40(ptr noundef %dev, ptr noundef nonnull %rx_frame, i32 noundef %conv47) #12
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %3, align 2
  %conv56 = zext i16 %42 to i32
  %sub57 = add nsw i32 %conv56, -4
  %43 = ptrtoint ptr %rx_frame to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %rx_frame, align 4
  %conv58 = zext i8 %44 to i32
  %add60 = add nuw nsw i32 %conv47, 1
  %45 = lshr i32 %conv56, 8
  %add62 = add nuw nsw i32 %add60, %45
  %46 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %2, align 1
  %conv64 = zext i8 %47 to i32
  %conv65 = and i32 %add62, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv65, i32 %conv64)
  %cmp66.not = icmp eq i32 %conv65, %conv64
  br i1 %cmp66.not, label %if.end52.if.end103_crit_edge, label %land.lhs.true68

if.end52.if.end103_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end103

land.lhs.true68:                                  ; preds = %if.end52
  %add72 = add nuw nsw i32 %conv65, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add72, i32 %conv64)
  %cmp73.not = icmp eq i32 %add72, %conv64
  %sub79 = sub nsw i32 %conv65, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %sub79, i32 %conv64)
  %cmp80.not = icmp eq i32 %sub79, %conv64
  %or.cond316 = select i1 %cmp73.not, i1 true, i1 %cmp80.not
  %sub87 = sub nsw i32 %add72, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %sub87, i32 %conv64)
  %cmp88.not = icmp eq i32 %sub87, %conv64
  %or.cond317 = select i1 %or.cond316, i1 true, i1 %cmp88.not
  br i1 %or.cond317, label %land.lhs.true68.if.end103_crit_edge, label %if.then90

land.lhs.true68.if.end103_crit_edge:              ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end103

if.then90:                                        ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %current_page to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %19, ptr %current_page, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !324
  call void @arm_heavy_mb() #12
  %49 = ptrtoint ptr %current_page to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %current_page, align 4
  %sub97 = add i8 %50, -1
  %51 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg_offset, align 4
  %arrayidx100 = getelementptr i32, ptr %52, i32 3
  %53 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx100, align 4
  %add101 = add i32 %54, %1
  %55 = inttoptr i32 %add101 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %55, i8 %sub97) #12, !srcloc !190
  %56 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rx_errors, align 8
  %inc102 = add i32 %57, 1
  store i32 %inc102, ptr %rx_errors, align 8
  br label %cleanup224

if.end103:                                        ; preds = %land.lhs.true68.if.end103_crit_edge, %if.end52.if.end103_crit_edge
  %58 = add i16 %42, -1523
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1459, i16 %58)
  %59 = icmp ult i16 %58, -1459
  br i1 %59, label %do.body110, label %if.else

do.body110:                                       ; preds = %if.end103
  %60 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %msg_enable, align 4
  %and112 = and i32 %61, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %do.body110.do.end133_crit_edge, label %do.body115

do.body110.do.end133_crit_edge:                   ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end133

do.body115:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ei_receive.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ei_receive, %if.then121)) #12
          to label %do.end133 [label %if.then121], !srcloc !246

if.then121:                                       ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %3, align 2
  %conv123 = zext i16 %63 to i32
  %64 = ptrtoint ptr %rx_frame to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %rx_frame, align 4
  %conv125 = zext i8 %65 to i32
  %66 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %2, align 1
  %conv127 = zext i8 %67 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ei_receive.__UNIQUE_ID_ddebug356, ptr noundef %dev, ptr noundef nonnull @.str.51, i32 noundef %conv123, i32 noundef %conv125, i32 noundef %conv127) #12
  br label %do.end133

do.end133:                                        ; preds = %if.then121, %do.body115, %do.body110.do.end133_crit_edge
  %68 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rx_errors, align 8
  %inc136 = add i32 %69, 1
  store i32 %inc136, ptr %rx_errors, align 8
  br label %if.end203.sink.split

if.else:                                          ; preds = %if.end103
  %and139 = and i32 %conv58, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and139)
  %cmp140 = icmp eq i32 %and139, 1
  br i1 %cmp140, label %if.then142, label %do.body179

if.then142:                                       ; preds = %if.else
  %add143 = add nsw i32 %conv56, -2
  %call.i = call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef %add143, i32 noundef 2592) #12
  %cmp145 = icmp eq ptr %call.i, null
  br i1 %cmp145, label %do.body148, label %if.else158

do.body148:                                       ; preds = %if.then142
  %70 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %msg_enable, align 4
  %and150 = and i32 %71, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  br i1 %tobool151.not, label %do.body148.cleanup_crit_edge, label %if.then152

do.body148.cleanup_crit_edge:                     ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then152:                                       ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.52, i32 noundef %sub57) #15
  br label %cleanup

if.else158:                                       ; preds = %if.then142
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %72 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data.i, align 4
  %add.ptr.i319 = getelementptr i8, ptr %73, i32 2
  store ptr %add.ptr.i319, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %74 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %75, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call159 = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %sub57) #12
  %76 = ptrtoint ptr %block_input to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %block_input, align 4
  %add161 = or i32 %conv54, 4
  call void %77(ptr noundef %dev, i32 noundef %sub57, ptr noundef nonnull %call.i, i32 noundef %add161) #12
  %call162 = call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i, ptr noundef %dev) #12
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %78 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %call162, ptr %protocol, align 8
  %call163 = call zeroext i1 @skb_defer_rx_timestamp(ptr noundef nonnull %call.i) #12
  br i1 %call163, label %if.else158.if.end166_crit_edge, label %if.then164

if.else158.if.end166_crit_edge:                   ; preds = %if.else158
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end166

if.then164:                                       ; preds = %if.else158
  call void @__sanitizer_cov_trace_pc() #14
  %call165 = call i32 @netif_rx(ptr noundef nonnull %call.i) #12
  br label %if.end166

if.end166:                                        ; preds = %if.then164, %if.else158.if.end166_crit_edge
  %79 = ptrtoint ptr %stats167 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %stats167, align 8
  %inc168 = add i32 %80, 1
  store i32 %inc168, ptr %stats167, align 8
  %81 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %rx_bytes, align 8
  %add170 = add i32 %82, %sub57
  store i32 %add170, ptr %rx_bytes, align 8
  %and171 = and i32 %conv58, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171)
  %tobool172.not = icmp eq i32 %and171, 0
  br i1 %tobool172.not, label %if.end166.if.end203_crit_edge, label %if.end166.if.end203.sink.split_crit_edge

if.end166.if.end203.sink.split_crit_edge:         ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end203.sink.split

if.end166.if.end203_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end203

cleanup:                                          ; preds = %if.then152, %do.body148.cleanup_crit_edge
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 6
  %83 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %rx_dropped, align 8
  %inc157 = add i32 %84, 1
  store i32 %inc157, ptr %rx_dropped, align 8
  br label %do.body228

do.body179:                                       ; preds = %if.else
  %85 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %msg_enable, align 4
  %and181 = and i32 %86, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181)
  %tobool182.not = icmp eq i32 %and181, 0
  br i1 %tobool182.not, label %do.body179.do.end192_crit_edge, label %if.then183

do.body179.do.end192_crit_edge:                   ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end192

if.then183:                                       ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.53, i32 noundef %conv58, i32 noundef %conv64, i32 noundef %conv56) #15
  br label %do.end192

do.end192:                                        ; preds = %if.then183, %do.body179.do.end192_crit_edge
  %87 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %rx_errors, align 8
  %inc195 = add i32 %88, 1
  store i32 %inc195, ptr %rx_errors, align 8
  %and196 = and i32 %conv58, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and196)
  %tobool197.not = icmp eq i32 %and196, 0
  br i1 %tobool197.not, label %do.end192.if.end203_crit_edge, label %do.end192.if.end203.sink.split_crit_edge

do.end192.if.end203.sink.split_crit_edge:         ; preds = %do.end192
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end203.sink.split

do.end192.if.end203_crit_edge:                    ; preds = %do.end192
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end203

if.end203.sink.split:                             ; preds = %do.end192.if.end203.sink.split_crit_edge, %if.end166.if.end203.sink.split_crit_edge, %do.end133
  %multicast.sink326 = phi ptr [ %rx_length_errors, %do.end133 ], [ %multicast, %if.end166.if.end203.sink.split_crit_edge ], [ %rx_fifo_errors, %do.end192.if.end203.sink.split_crit_edge ]
  %89 = ptrtoint ptr %multicast.sink326 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %multicast.sink326, align 8
  %inc175 = add i32 %90, 1
  store i32 %inc175, ptr %multicast.sink326, align 8
  br label %if.end203

if.end203:                                        ; preds = %if.end203.sink.split, %do.end192.if.end203_crit_edge, %if.end166.if.end203_crit_edge
  %91 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %2, align 1
  %93 = ptrtoint ptr %stop_page to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %stop_page, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %92, i8 %94)
  %cmp208.not = icmp ult i8 %92, %94
  br i1 %cmp208.not, label %if.end203.if.end213_crit_edge, label %if.then210

if.end203.if.end213_crit_edge:                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end213

if.then210:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #14
  %conv205 = zext i8 %92 to i32
  call void (ptr, ptr, ...) @netdev_notice(ptr noundef %dev, ptr noundef nonnull @.str.54, i32 noundef %conv205) #15
  %95 = ptrtoint ptr %rx_start_page to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %rx_start_page, align 2
  br label %if.end213

if.end213:                                        ; preds = %if.then210, %if.end203.if.end213_crit_edge
  %next_frame.0 = phi i8 [ %96, %if.then210 ], [ %92, %if.end203.if.end213_crit_edge ]
  %97 = ptrtoint ptr %current_page to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %next_frame.0, ptr %current_page, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !325
  call void @arm_heavy_mb() #12
  %sub219 = add i8 %next_frame.0, -1
  %98 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %reg_offset, align 4
  %arrayidx222 = getelementptr i32, ptr %99, i32 3
  %100 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx222, align 4
  %add223 = add i32 %101, %1
  %102 = inttoptr i32 %add223 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %102, i8 %sub219) #12, !srcloc !190
  br label %cleanup224

cleanup224:                                       ; preds = %if.end213, %if.then90
  %inc = add nuw nsw i32 %inc325, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %cleanup224.do.body228_crit_edge, label %cleanup224.while.body_crit_edge

cleanup224.while.body_crit_edge:                  ; preds = %cleanup224
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

cleanup224.do.body228_crit_edge:                  ; preds = %cleanup224
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body228

do.body228:                                       ; preds = %cleanup224.do.body228_crit_edge, %cleanup, %if.end46.do.body228_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !326
  call void @arm_heavy_mb() #12
  %103 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %reg_offset, align 4
  %arrayidx232 = getelementptr i32, ptr %104, i32 7
  %105 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx232, align 4
  %add233 = add i32 %106, %1
  %107 = inttoptr i32 %add233 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %107, i8 5) #12, !srcloc !190
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_frame) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ei_tx_intr(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %reg_offset = getelementptr i8, ptr %dev, i32 2364
  %2 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_offset, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, %1
  %6 = inttoptr i32 %add to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %6) #12, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !327
  %conv = zext i8 %7 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !328
  tail call void @arm_heavy_mb() #12
  %8 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_offset, align 4
  %arrayidx4 = getelementptr i32, ptr %9, i32 7
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4, align 4
  %add5 = add i32 %11, %1
  %12 = inttoptr i32 %add5 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %12, i8 2) #12, !srcloc !190
  %txqueue = getelementptr i8, ptr %dev, i32 2350
  %13 = ptrtoint ptr %txqueue to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %txqueue, align 2
  %dec = add i8 %14, -1
  store i8 %dec, ptr %txqueue, align 2
  %tx1 = getelementptr i8, ptr %dev, i32 2352
  %15 = ptrtoint ptr %tx1 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %tx1, align 4
  %conv6 = sext i16 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp = icmp slt i16 %16, 0
  br i1 %cmp, label %if.then, label %if.else42

if.then:                                          ; preds = %entry
  %lasttx = getelementptr i8, ptr %dev, i32 2356
  %17 = ptrtoint ptr %lasttx to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %lasttx, align 4
  %19 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i16 %18, label %do.end18 [
    i16 1, label %if.then.if.end_crit_edge
    i16 -1, label %if.then.if.end_crit_edge200
  ]

if.then.if.end_crit_edge200:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end18:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %conv8 = sext i16 %18 to i32
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %21, i32 noundef %conv8, i32 noundef %conv6) #15
  br label %if.end

if.end:                                           ; preds = %do.end18, %if.then.if.end_crit_edge, %if.then.if.end_crit_edge200
  %22 = ptrtoint ptr %tx1 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %tx1, align 4
  %tx2 = getelementptr i8, ptr %dev, i32 2354
  %23 = ptrtoint ptr %tx2 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %tx2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp27 = icmp sgt i16 %24, 0
  br i1 %cmp27, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end
  %txing = getelementptr i8, ptr %dev, i32 2344
  %25 = ptrtoint ptr %txing to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load = load i8, ptr %txing, align 4
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %txing, align 4
  %conv31198 = zext i16 %24 to i32
  %tx_start_page = getelementptr i8, ptr %dev, i32 2345
  %26 = ptrtoint ptr %tx_start_page to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %tx_start_page, align 1
  %conv32 = zext i8 %27 to i32
  %add33 = add nuw nsw i32 %conv32, 6
  tail call fastcc void @NS8390_trigger_send(ptr noundef %dev, i32 noundef %conv31198, i32 noundef %add33)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %28 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %29, i32 0, i32 12
  %31 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %30)
  %cmp.not.i.i = icmp eq i32 %32, %30
  br i1 %cmp.not.i.i, label %if.then29.netif_trans_update.exit_crit_edge, label %do.body5.i.i

if.then29.netif_trans_update.exit_crit_edge:      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 %30, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %if.then29.netif_trans_update.exit_crit_edge
  %34 = ptrtoint ptr %tx2 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 -1, ptr %tx2, align 2
  %35 = ptrtoint ptr %lasttx to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 2, ptr %lasttx, align 4
  br label %if.end93

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %lasttx to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 20, ptr %lasttx, align 4
  %txing37 = getelementptr i8, ptr %dev, i32 2344
  %37 = ptrtoint ptr %txing37 to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load38 = load i8, ptr %txing37, align 4
  %bf.clear39 = and i8 %bf.load38, -17
  store i8 %bf.clear39, ptr %txing37, align 4
  br label %if.end93

if.else42:                                        ; preds = %entry
  %tx243 = getelementptr i8, ptr %dev, i32 2354
  %38 = ptrtoint ptr %tx243 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %tx243, align 2
  %conv44 = sext i16 %39 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %cmp45 = icmp slt i16 %39, 0
  br i1 %cmp45, label %if.then47, label %if.else42.if.end93_crit_edge

if.else42.if.end93_crit_edge:                     ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

if.then47:                                        ; preds = %if.else42
  %lasttx48 = getelementptr i8, ptr %dev, i32 2356
  %40 = ptrtoint ptr %lasttx48 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %lasttx48, align 4
  %42 = zext i16 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.76)
  switch i16 %41, label %do.end60 [
    i16 2, label %if.then47.if.end68_crit_edge
    i16 -2, label %if.then47.if.end68_crit_edge201
  ]

if.then47.if.end68_crit_edge201:                  ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

if.then47.if.end68_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

do.end60:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  %conv49 = sext i16 %41 to i32
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr.i, align 4
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %44, i32 noundef %conv49, i32 noundef %conv44) #15
  br label %if.end68

if.end68:                                         ; preds = %do.end60, %if.then47.if.end68_crit_edge, %if.then47.if.end68_crit_edge201
  %45 = ptrtoint ptr %tx243 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %tx243, align 2
  %46 = ptrtoint ptr %tx1 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %tx1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %cmp72 = icmp sgt i16 %47, 0
  br i1 %cmp72, label %if.then74, label %if.else85

if.then74:                                        ; preds = %if.end68
  %txing75 = getelementptr i8, ptr %dev, i32 2344
  %48 = ptrtoint ptr %txing75 to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load76 = load i8, ptr %txing75, align 4
  %bf.set78 = or i8 %bf.load76, 16
  store i8 %bf.set78, ptr %txing75, align 4
  %conv80199 = zext i16 %47 to i32
  %tx_start_page81 = getelementptr i8, ptr %dev, i32 2345
  %49 = ptrtoint ptr %tx_start_page81 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %tx_start_page81, align 1
  %conv82 = zext i8 %50 to i32
  tail call fastcc void @NS8390_trigger_send(ptr noundef %dev, i32 noundef %conv80199, i32 noundef %conv82)
  %_tx.i.i192 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %51 = ptrtoint ptr %_tx.i.i192 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %_tx.i.i192, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i193 = getelementptr inbounds %struct.netdev_queue, ptr %52, i32 0, i32 12
  %54 = ptrtoint ptr %trans_start.i.i193 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %trans_start.i.i193, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %53)
  %cmp.not.i.i194 = icmp eq i32 %55, %53
  br i1 %cmp.not.i.i194, label %if.then74.netif_trans_update.exit196_crit_edge, label %do.body5.i.i195

if.then74.netif_trans_update.exit196_crit_edge:   ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #14
  br label %netif_trans_update.exit196

do.body5.i.i195:                                  ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %trans_start.i.i193 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile i32 %53, ptr %trans_start.i.i193, align 16
  br label %netif_trans_update.exit196

netif_trans_update.exit196:                       ; preds = %do.body5.i.i195, %if.then74.netif_trans_update.exit196_crit_edge
  %57 = ptrtoint ptr %tx1 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 -1, ptr %tx1, align 4
  %58 = ptrtoint ptr %lasttx48 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 1, ptr %lasttx48, align 4
  br label %if.end93

if.else85:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %lasttx48 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 10, ptr %lasttx48, align 4
  %txing87 = getelementptr i8, ptr %dev, i32 2344
  %60 = ptrtoint ptr %txing87 to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load88 = load i8, ptr %txing87, align 4
  %bf.clear89 = and i8 %bf.load88, -17
  store i8 %bf.clear89, ptr %txing87, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.else85, %netif_trans_update.exit196, %if.else42.if.end93_crit_edge, %if.else, %netif_trans_update.exit
  %and = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end93.if.end95_crit_edge, label %if.then94

if.end93.if.end95_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

if.then94:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #14
  %collisions = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 9
  %61 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %collisions, align 4
  %inc = add i32 %62, 1
  store i32 %inc, ptr %collisions, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then94, %if.end93.if.end95_crit_edge
  %and96 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.else101, label %if.then98

if.then98:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #14
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %63 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tx_packets, align 4
  %inc100 = add i32 %64, 1
  store i32 %inc100, ptr %tx_packets, align 4
  br label %if.end137

if.else101:                                       ; preds = %if.end95
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %65 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tx_errors, align 4
  %inc103 = add i32 %66, 1
  store i32 %inc103, ptr %tx_errors, align 4
  %and104 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.else101.if.end112_crit_edge, label %if.then106

if.else101.if.end112_crit_edge:                   ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end112

if.then106:                                       ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #14
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 16
  %67 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tx_aborted_errors, align 8
  %inc108 = add i32 %68, 1
  store i32 %inc108, ptr %tx_aborted_errors, align 8
  %collisions110 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 9
  %69 = ptrtoint ptr %collisions110 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %collisions110, align 4
  %add111 = add i32 %70, 16
  store i32 %add111, ptr %collisions110, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.then106, %if.else101.if.end112_crit_edge
  %and113 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %if.end112.if.end118_crit_edge, label %if.then115

if.end112.if.end118_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118

if.then115:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #14
  %tx_carrier_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 17
  %71 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tx_carrier_errors, align 4
  %inc117 = add i32 %72, 1
  store i32 %inc117, ptr %tx_carrier_errors, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.then115, %if.end112.if.end118_crit_edge
  %and119 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %if.end118.if.end124_crit_edge, label %if.then121

if.end118.if.end124_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end124

if.then121:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #14
  %tx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 18
  %73 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tx_fifo_errors, align 8
  %inc123 = add i32 %74, 1
  store i32 %inc123, ptr %tx_fifo_errors, align 8
  br label %if.end124

if.end124:                                        ; preds = %if.then121, %if.end118.if.end124_crit_edge
  %and125 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %if.end124.if.end130_crit_edge, label %if.then127

if.end124.if.end130_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end130

if.then127:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #14
  %tx_heartbeat_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 19
  %75 = ptrtoint ptr %tx_heartbeat_errors to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tx_heartbeat_errors, align 4
  %inc129 = add i32 %76, 1
  store i32 %inc129, ptr %tx_heartbeat_errors, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.then127, %if.end124.if.end130_crit_edge
  %and131 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %if.end130.if.end137_crit_edge, label %if.then133

if.end130.if.end137_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end137

if.then133:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #14
  %tx_window_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 20
  %77 = ptrtoint ptr %tx_window_errors to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %tx_window_errors, align 8
  %inc135 = add i32 %78, 1
  store i32 %inc135, ptr %tx_window_errors, align 8
  br label %if.end137

if.end137:                                        ; preds = %if.then133, %if.end130.if.end137_crit_edge, %if.then98
  %_tx.i.i197 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %79 = ptrtoint ptr %_tx.i.i197 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %_tx.i.i197, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %80) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @skb_defer_rx_timestamp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @NS8390_trigger_send(ptr noundef %dev, i32 noundef %length, i32 noundef %start_page) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !329
  tail call void @arm_heavy_mb() #12
  %reg_offset = getelementptr i8, ptr %dev, i32 2364
  %2 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_offset, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add = add i32 %5, %1
  %6 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %6, i8 32) #12, !srcloc !190
  %7 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_offset, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %add3 = add i32 %10, %1
  %11 = inttoptr i32 %add3 to ptr
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %11) #12, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !330
  %13 = and i8 %12, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %do.body6, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.60) #15
  br label %cleanup

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !331
  tail call void @arm_heavy_mb() #12
  %conv10 = trunc i32 %length to i8
  %14 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_offset, align 4
  %arrayidx12 = getelementptr i32, ptr %15, i32 5
  %16 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx12, align 4
  %add13 = add i32 %17, %1
  %18 = inttoptr i32 %add13 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %18, i8 %conv10) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !332
  tail call void @arm_heavy_mb() #12
  %shr = lshr i32 %length, 8
  %conv17 = trunc i32 %shr to i8
  %19 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_offset, align 4
  %arrayidx19 = getelementptr i32, ptr %20, i32 6
  %21 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx19, align 4
  %add20 = add i32 %22, %1
  %23 = inttoptr i32 %add20 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %23, i8 %conv17) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !333
  tail call void @arm_heavy_mb() #12
  %conv24 = trunc i32 %start_page to i8
  %24 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_offset, align 4
  %arrayidx26 = getelementptr i32, ptr %25, i32 4
  %26 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx26, align 4
  %add27 = add i32 %27, %1
  %28 = inttoptr i32 %add27 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %28, i8 %conv24) #12, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !334
  tail call void @arm_heavy_mb() #12
  %29 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg_offset, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %add33 = add i32 %32, %1
  %33 = inttoptr i32 %add33 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %33, i8 38) #12, !srcloc !190
  br label %cleanup

cleanup:                                          ; preds = %do.body6, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_find_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_connect_direct(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax_handle_link_change(ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %link = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %link, align 8
  %3 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %speed = getelementptr i8, ptr %dev, i32 2452
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed, align 4
  %speed1 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %speed1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp eq i32 %5, %7
  br i1 %cmp.not, label %lor.lhs.false, label %land.lhs.true.if.end.thread_crit_edge

land.lhs.true.if.end.thread_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.thread

lor.lhs.false:                                    ; preds = %land.lhs.true
  %duplex = getelementptr i8, ptr %dev, i32 2456
  %8 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %duplex, align 4
  %duplex2 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %duplex2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %duplex2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp3.not = icmp eq i32 %9, %11
  br i1 %cmp3.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.end.thread_crit_edge

lor.lhs.false.if.end.thread_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.thread

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load9 = load i16, ptr %link, align 8
  %bf.lshr10 = lshr i16 %bf.load9, 2
  %bf.clear11 = and i16 %bf.lshr10, 1
  %bf.cast12 = zext i16 %bf.clear11 to i32
  %link13 = getelementptr i8, ptr %dev, i32 2448
  %13 = ptrtoint ptr %link13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %link13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %bf.cast12)
  %cmp14.not = icmp eq i32 %14, %bf.cast12
  br i1 %cmp14.not, label %if.end.if.end35_crit_edge, label %if.end.if.then15_crit_edge

if.end.if.then15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.end.thread:                                    ; preds = %lor.lhs.false.if.end.thread_crit_edge, %land.lhs.true.if.end.thread_crit_edge
  %15 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %7, ptr %speed, align 4
  %duplex6 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %duplex6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %duplex6, align 4
  %duplex7 = getelementptr i8, ptr %dev, i32 2456
  %18 = ptrtoint ptr %duplex7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %duplex7, align 4
  %19 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load955 = load i16, ptr %link, align 8
  %bf.lshr1056 = lshr i16 %bf.load955, 2
  %bf.clear1157 = and i16 %bf.lshr1056, 1
  %bf.cast1258 = zext i16 %bf.clear1157 to i32
  %link1359 = getelementptr i8, ptr %dev, i32 2448
  %20 = ptrtoint ptr %link1359 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %link1359, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %bf.cast1258)
  %cmp14.not60 = icmp eq i32 %21, %bf.cast1258
  br i1 %cmp14.not60, label %if.end.thread.if.then34_crit_edge, label %if.end.thread.if.then15_crit_edge

if.end.thread.if.then15_crit_edge:                ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15

if.end.thread.if.then34_crit_edge:                ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then34

if.then15:                                        ; preds = %if.end.thread.if.then15_crit_edge, %if.end.if.then15_crit_edge
  %link1363 = phi ptr [ %link1359, %if.end.thread.if.then15_crit_edge ], [ %link13, %if.end.if.then15_crit_edge ]
  %bf.clear1162 = phi i16 [ %bf.clear1157, %if.end.thread.if.then15_crit_edge ], [ %bf.clear11, %if.end.if.then15_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear1162)
  %tobool21.not = icmp eq i16 %bf.clear1162, 0
  br i1 %tobool21.not, label %if.then22, label %if.then15.if.end32.thread_crit_edge

if.then15.if.end32.thread_crit_edge:              ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32.thread

if.then22:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  %speed23 = getelementptr i8, ptr %dev, i32 2452
  %22 = ptrtoint ptr %speed23 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %speed23, align 4
  %duplex24 = getelementptr i8, ptr %dev, i32 2456
  %23 = ptrtoint ptr %duplex24 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %duplex24, align 4
  br label %if.end32.thread

if.end32.thread:                                  ; preds = %if.then22, %if.then15.if.end32.thread_crit_edge
  %24 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load27 = load i16, ptr %link, align 8
  %bf.lshr28 = lshr i16 %bf.load27, 2
  %bf.clear29 = and i16 %bf.lshr28, 1
  %bf.cast30 = zext i16 %bf.clear29 to i32
  %25 = ptrtoint ptr %link1363 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %bf.cast30, ptr %link1363, align 4
  br label %if.then34

if.then34:                                        ; preds = %if.end32.thread, %if.end.thread.if.then34_crit_edge
  tail call void @phy_print_status(ptr noundef %1) #12
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end.if.end35_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_max_speed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mii_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_trans_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str.1, i32 noundef 32) #12
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call3 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.75, i32 noundef 32) #12
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %call5 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %3, i32 noundef 32) #12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ax_get_msglevel(ptr nocapture noundef readonly %dev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2416
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @ax_set_msglevel(ptr nocapture noundef writeonly %dev, i32 noundef %v) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2416
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %v, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !22, !24, !26, !28, !30, !31, !32, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !53, !54, !55, !57, !59, !60, !62, !63, !64, !65, !66, !68, !70, !72, !73, !74, !75, !76, !78, !80, !82, !83, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !103, !104, !106, !108, !110, !112, !114, !115, !116, !118, !120, !122, !124, !125, !126, !128, !130, !131, !132, !134, !136, !138, !140, !141, !142, !143, !145, !146, !147, !149, !151, !153, !155, !157, !158, !159, !161, !162, !163, !165, !166, !168, !169, !171, !172, !173, !174, !175, !176, !178}
!llvm.module.flags = !{!180, !181, !182, !183, !184, !185, !186, !187}
!llvm.ident = !{!188}

!0 = !{ptr @__param_msg_enable, !1, !"__param_msg_enable", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/8390/lib8390.c", i32 119, i32 1}
!2 = !{ptr @__UNIQUE_ID_msg_enabletype349, !1, !"__UNIQUE_ID_msg_enabletype349", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_msg_enable350, !4, !"__UNIQUE_ID_msg_enable350", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/8390/lib8390.c", i32 120, i32 1}
!5 = !{ptr @__ksymtab_ax_NS8390_reinit, !6, !"__ksymtab_ax_NS8390_reinit", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/8390/ax88796.c", i32 109, i32 1}
!7 = !{ptr @__initcall__kmod_ax88796__362_1019_axdrv_init6, !8, !"__initcall__kmod_ax88796__362_1019_axdrv_init6", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/8390/ax88796.c", i32 1019, i32 1}
!9 = !{ptr @__exitcall_axdrv_exit, !8, !"__exitcall_axdrv_exit", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_description363, !11, !"__UNIQUE_ID_description363", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/8390/ax88796.c", i32 1021, i32 1}
!12 = !{ptr @__UNIQUE_ID_author364, !13, !"__UNIQUE_ID_author364", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/8390/ax88796.c", i32 1022, i32 1}
!14 = !{ptr @__UNIQUE_ID_file365, !15, !"__UNIQUE_ID_file365", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/8390/ax88796.c", i32 1023, i32 1}
!16 = !{ptr @__UNIQUE_ID_license366, !15, !"__UNIQUE_ID_license366", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_alias367, !18, !"__UNIQUE_ID_alias367", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/8390/ax88796.c", i32 1024, i32 1}
!19 = !{ptr @msg_enable, !20, !"msg_enable", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/8390/lib8390.c", i32 116, i32 12}
!21 = !{ptr @__param_str_msg_enable, !1, !"__param_str_msg_enable", i1 false, i1 false}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/8390/lib8390.c", i32 1053, i32 8}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/8390/ax88796.c", i32 1011, i32 12}
!26 = !{ptr @axdrv, !27, !"axdrv", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/8390/ax88796.c", i32 1009, i32 31}
!28 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/8390/ax88796.c", i32 872, i32 3}
!30 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ax_probe._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @ax_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/8390/ax88796.c", i32 885, i32 3}
!38 = !{ptr @ax_probe._entry.7, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @ax_probe._entry_ptr.9, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/8390/ax88796.c", i32 905, i32 3}
!42 = !{ptr @ax_probe._entry.10, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @ax_probe._entry_ptr.12, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/8390/ax88796.c", i32 914, i32 3}
!46 = !{ptr @ax_probe._entry.13, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @ax_probe._entry_ptr.15, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @ax_probe._entry.16, !49, !"_entry", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/8390/ax88796.c", i32 931, i32 4}
!50 = !{ptr @ax_probe._entry_ptr.17, !49, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/8390/ax88796.c", i32 938, i32 4}
!53 = !{ptr @ax_probe._entry.18, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @ax_probe._entry_ptr.20, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/8390/lib8390.c", i32 997, i32 9}
!57 = !{ptr @ethdev_setup.__key, !58, !"__key", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/8390/lib8390.c", i32 981, i32 2}
!59 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/8390/lib8390.c", i32 986, i32 3}
!62 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @ethdev_setup._entry, !61, !"_entry", i1 false, i1 false}
!65 = !{ptr @ethdev_setup._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @version_printed, !67, !"version_printed", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/8390/lib8390.c", i32 115, i32 17}
!68 = !{ptr @version, !69, !"version", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/8390/ax88796.c", i32 58, i32 22}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/8390/ax88796.c", i32 766, i32 3}
!72 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @ax_init_dev._entry, !71, !"_entry", i1 false, i1 false}
!75 = !{ptr @ax_init_dev._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/8390/ax88796.c", i32 772, i32 19}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/8390/ax88796.c", i32 804, i32 19}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/8390/ax88796.c", i32 152, i32 2}
!82 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @ax_reset_8390.__UNIQUE_ID_ddebug359, !81, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/8390/ax88796.c", i32 162, i32 21}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/8390/ax88796.c", i32 239, i32 4}
!88 = !{ptr @__func__.ax_block_input, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/8390/ax88796.c", i32 241, i32 4}
!90 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/8390/ax88796.c", i32 284, i32 19}
!92 = !{ptr @__func__.ax_block_output, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/8390/ax88796.c", i32 286, i32 4}
!94 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/8390/ax88796.c", i32 313, i32 21}
!96 = !{ptr @__func__.ax_get_8390_hdr, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/8390/ax88796.c", i32 196, i32 4}
!98 = !{ptr @ax_netdev_ops, !99, !"ax_netdev_ops", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/8390/ax88796.c", i32 642, i32 36}
!100 = !{ptr @.str.37, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/8390/ax88796.c", i32 496, i32 2}
!102 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @ax_open.__UNIQUE_ID_ddebug360, !101, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!104 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/8390/ax88796.c", i32 474, i32 22}
!106 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/8390/ax88796.c", i32 476, i32 45}
!108 = !{ptr @bb_ops, !109, !"bb_ops", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/8390/ax88796.c", i32 451, i32 32}
!110 = !{ptr @.str.41, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/8390/lib8390.c", i32 446, i32 19}
!112 = !{ptr @.str.42, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/8390/lib8390.c", i32 455, i32 2}
!114 = !{ptr @.str.43, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @ax_ei_interrupt.__UNIQUE_ID_ddebug355, !113, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!116 = !{ptr @.str.44, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/8390/lib8390.c", i32 462, i32 21}
!118 = !{ptr @.str.45, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/8390/lib8390.c", i32 499, i32 22}
!120 = distinct !{null, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/8390/lib8390.c", i32 503, i32 21}
!122 = !{ptr @.str.47, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/8390/lib8390.c", i32 803, i32 2}
!124 = !{ptr @.str.48, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @ei_rx_overrun.__UNIQUE_ID_ddebug357, !123, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!126 = !{ptr @.str.49, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/8390/lib8390.c", i32 693, i32 8}
!128 = !{ptr @.str.50, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/8390/lib8390.c", i32 721, i32 4}
!130 = !{ptr @.str.51, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @ei_receive.__UNIQUE_ID_ddebug356, !129, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!132 = !{ptr @.str.52, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/8390/lib8390.c", i32 732, i32 5}
!134 = !{ptr @.str.53, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/8390/lib8390.c", i32 750, i32 4}
!136 = !{ptr @.str.54, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/8390/lib8390.c", i32 763, i32 23}
!138 = !{ptr @.str.55, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/8390/lib8390.c", i32 596, i32 4}
!140 = !{ptr @.str.56, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @ei_tx_intr._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @ei_tx_intr._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.58, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/8390/lib8390.c", i32 611, i32 4}
!145 = !{ptr @ei_tx_intr._entry.57, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @ei_tx_intr._entry_ptr.59, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.60, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/8390/lib8390.c", i32 1085, i32 20}
!149 = !{ptr @.str.61, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/8390/ax88796.c", i32 373, i32 19}
!151 = !{ptr @.str.62, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/8390/ax88796.c", i32 380, i32 19}
!153 = !{ptr @.str.63, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/8390/ax88796.c", i32 386, i32 19}
!155 = !{ptr @.str.64, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/8390/ax88796.c", i32 544, i32 2}
!157 = !{ptr @.str.65, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @ax_close.__UNIQUE_ID_ddebug361, !156, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!159 = !{ptr @.str.66, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/8390/lib8390.c", i32 353, i32 4}
!161 = !{ptr @.str.67, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @ax_ei_start_xmit.__UNIQUE_ID_ddebug352, !160, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!163 = !{ptr @.str.68, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/8390/lib8390.c", i32 361, i32 4}
!165 = !{ptr @ax_ei_start_xmit.__UNIQUE_ID_ddebug353, !164, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!166 = !{ptr @.str.69, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/8390/lib8390.c", i32 365, i32 3}
!168 = !{ptr @ax_ei_start_xmit.__UNIQUE_ID_ddebug354, !167, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!169 = !{ptr @.str.70, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/8390/lib8390.c", i32 271, i32 2}
!171 = !{ptr @.str.71, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @ax_ei_tx_timeout.__UNIQUE_ID_ddebug351, !170, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!173 = !{ptr @.str.72, !170, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.73, !170, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.74, !170, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @ax_ethtool_ops, !177, !"ax_ethtool_ops", i1 false, i1 false}
!177 = !{!"../drivers/net/ethernet/8390/ax88796.c", i32 601, i32 33}
!178 = !{ptr @.str.75, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/ethernet/8390/ax88796.c", i32 583, i32 25}
!180 = !{i32 1, !"wchar_size", i32 2}
!181 = !{i32 1, !"min_enum_size", i32 4}
!182 = !{i32 8, !"branch-target-enforcement", i32 0}
!183 = !{i32 8, !"sign-return-address", i32 0}
!184 = !{i32 8, !"sign-return-address-all", i32 0}
!185 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!186 = !{i32 7, !"uwtable", i32 1}
!187 = !{i32 7, !"frame-pointer", i32 2}
!188 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!189 = !{i64 2156624407}
!190 = !{i64 4945262}
!191 = !{i64 2156625086}
!192 = !{i64 2156625748}
!193 = !{i64 2156626408}
!194 = !{i64 2156627305}
!195 = !{i64 2156628026}
!196 = !{i64 2156628743}
!197 = !{i64 2156629479}
!198 = !{i64 2156630209}
!199 = !{i64 2156630931}
!200 = !{i64 2156631606}
!201 = !{i64 2156632266}
!202 = !{i64 2156632979}
!203 = !{i64 2156633689}
!204 = !{i64 4945657}
!205 = !{i64 2156634589}
!206 = !{i64 2156635194}
!207 = !{i64 2156635926}
!208 = !{i64 2156636599}
!209 = !{i64 2156637264}
!210 = !{i64 2156637977}
!211 = !{i64 2156638655}
!212 = !{i64 2156639552}
!213 = !{i64 2156614849}
!214 = !{i64 2156615596}
!215 = !{i64 2156616315}
!216 = !{i64 2156617023}
!217 = !{i64 2156617960}
!218 = !{i64 2156619071}
!219 = !{i64 2156620031}
!220 = !{i64 2156645796}
!221 = !{i64 2156646311}
!222 = !{i64 2156646803}
!223 = !{i64 2156647140}
!224 = !{i64 2156647713}
!225 = !{i64 2156648358}
!226 = !{i64 2156648888}
!227 = !{i64 2156649204}
!228 = !{i64 2156649614}
!229 = !{i64 2156690304}
!230 = !{i64 2156690931}
!231 = !{i64 2156691539}
!232 = !{i64 2156692131}
!233 = !{i64 2156692699}
!234 = !{i64 2156693267}
!235 = !{i64 2156693835}
!236 = !{i64 2156694433}
!237 = !{i64 2156695078}
!238 = !{i64 2156695608}
!239 = !{i64 2156696082}
!240 = !{i64 2156696717}
!241 = !{i64 2156697407}
!242 = !{i64 2156698069}
!243 = !{i64 2156687270}
!244 = !{i64 2156688156}
!245 = !{i64 2156689136}
!246 = !{i64 2148976679, i64 2148976684, i64 2148976697, i64 2148976741, i64 2148976775, i64 2148976796}
!247 = !{i64 2156653638}
!248 = !{i64 2156653864}
!249 = !{i64 2156654479}
!250 = !{i64 2156655387}
!251 = !{i64 2156661849}
!252 = !{i64 2156662464}
!253 = !{i64 2156663069}
!254 = !{i64 2156663688}
!255 = !{i64 2156664311}
!256 = !{i64 2156664932}
!257 = !{i64 2156665648}
!258 = !{i64 2156666226}
!259 = !{i64 2156666830}
!260 = !{i64 2156667431}
!261 = !{i64 2156668036}
!262 = !{i64 2156668627}
!263 = !{i64 2156669224}
!264 = !{i64 2156669839}
!265 = !{i64 2156670617}
!266 = !{i64 2156671516}
!267 = !{i64 2156657429}
!268 = !{i64 2156658076}
!269 = !{i64 2156658679}
!270 = !{i64 2156659255}
!271 = !{i64 2156659847}
!272 = !{i64 2156660461}
!273 = !{i64 2156661179}
!274 = !{i64 2156672292}
!275 = !{i64 2156685271}
!276 = !{i64 2156559576}
!277 = !{i64 767002, i64 767063}
!278 = !{i64 2156568688}
!279 = !{i64 769734}
!280 = !{!"branch_weights", i32 1, i32 2000}
!281 = !{i64 770019}
!282 = !{i64 2156569378}
!283 = !{i64 2156555161}
!284 = !{i64 2156555703}
!285 = !{i64 767437}
!286 = !{i64 767247}
!287 = !{i64 2156608553}
!288 = !{i64 2156609136}
!289 = !{i64 2156609719}
!290 = !{i64 2156570109}
!291 = !{i64 2156570712}
!292 = !{i64 2156571291}
!293 = !{i64 2156574601}
!294 = !{i64 2156575204}
!295 = !{i64 2156575773}
!296 = !{i64 2156582722}
!297 = !{i64 2156583285}
!298 = !{i64 2156576524}
!299 = !{i64 2156577127}
!300 = !{i64 2156577730}
!301 = !{i64 2156578283}
!302 = !{i64 2156578953}
!303 = !{i64 2156579670}
!304 = !{i64 2156580568}
!305 = !{i64 2156581250}
!306 = !{i64 2156674100}
!307 = !{i64 2156675877}
!308 = !{i64 2156677654}
!309 = !{i64 2156679284}
!310 = !{i64 2156597716}
!311 = !{i64 2156598322}
!312 = !{i64 2156602723}
!313 = !{i64 2156603378}
!314 = !{i64 2156604087}
!315 = !{i64 2156604650}
!316 = !{i64 2156605367}
!317 = !{i64 2156606042}
!318 = !{i64 2156606706}
!319 = !{i64 2156607449}
!320 = !{i64 2156588777}
!321 = !{i64 2156589499}
!322 = !{i64 2156590078}
!323 = !{i64 2156590800}
!324 = !{i64 2156591535}
!325 = !{i64 2156596278}
!326 = !{i64 2156596972}
!327 = !{i64 2156583958}
!328 = !{i64 2156584511}
!329 = !{i64 2156640295}
!330 = !{i64 2156641016}
!331 = !{i64 2156641596}
!332 = !{i64 2156642286}
!333 = !{i64 2156642971}
!334 = !{i64 2156643690}
