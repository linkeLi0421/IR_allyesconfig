; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/arc/emac_main.c_pt.bc'
source_filename = "../drivers/net/ethernet/arc/emac_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+arc_emac_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_arc_emac_probe\09\09\09\09"
module asm "\09.long\09__crc_arc_emac_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arc_emac_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22arc_emac_probe\22\09\09\09\09\09"
module asm "__kstrtabns_arc_emac_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+arc_emac_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_arc_emac_remove\09\09\09\09"
module asm "\09.long\09__crc_arc_emac_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arc_emac_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22arc_emac_remove\22\09\09\09\09\09"
module asm "__kstrtabns_arc_emac_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
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
%struct.arc_emac_bd = type { i32, i32 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.arc_emac_priv = type { ptr, ptr, ptr, ptr, %struct.arc_emac_mdio_bus_data, ptr, ptr, %struct.napi_struct, ptr, ptr, i32, i32, [128 x %struct.buffer_state], [128 x %struct.buffer_state], i32, i32, i32, i32, i32, i32, i32 }
%struct.arc_emac_mdio_bus_data = type { ptr, i32 }
%struct.buffer_state = type { ptr, i32, i32 }
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
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.page = type { i32, %union.anon.26, %union.anon.100, %struct.atomic_t, i32 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.100 = type { %struct.atomic_t }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@arc_emac_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 866, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"failed to retrieve phy description from device tree\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"arc_emac_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/ethernet/arc/emac_main.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@arc_emac_probe._entry_ptr = internal global ptr @arc_emac_probe._entry, section ".printk_index", align 4
@arc_emac_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 873, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"failed to retrieve registers base from device tree\0A\00", [44 x i8] zeroinitializer }, align 32
@arc_emac_probe._entry_ptr.8 = internal global ptr @arc_emac_probe._entry.6, section ".printk_index", align 4
@arc_emac_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 881, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"failed to retrieve <irq> value from device tree\0A\00", [47 x i8] zeroinitializer }, align 32
@arc_emac_probe._entry_ptr.11 = internal global ptr @arc_emac_probe._entry.9, section ".printk_index", align 4
@arc_emac_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @arc_emac_open, ptr @arc_emac_stop, ptr @arc_emac_tx, ptr null, ptr null, ptr null, ptr @arc_emac_set_rx_mode, ptr @arc_emac_set_address, ptr null, ptr null, ptr @phy_do_ioctl_running, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @arc_emac_stats, ptr null, ptr null, ptr @arc_emac_poll_controller, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@arc_emac_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @arc_emac_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@arc_emac_probe.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.2, ptr @.str.3, ptr @.str.13, i8 0, i8 -32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"arc_emac\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Registers base address is 0x%p\0A\00", [32 x i8] zeroinitializer }, align 32
@arc_emac_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 904, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@arc_emac_probe._entry_ptr.16 = internal global ptr @arc_emac_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@arc_emac_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 913, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"failed to retrieve <clock-frequency> from device tree\0A\00", [41 x i8] zeroinitializer }, align 32
@arc_emac_probe._entry_ptr.20 = internal global ptr @arc_emac_probe._entry.18, section ".printk_index", align 4
@arc_emac_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 923, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ARC EMAC not detected, id=0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@arc_emac_probe._entry_ptr.23 = internal global ptr @arc_emac_probe._entry.21, section ".printk_index", align 4
@arc_emac_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 927, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ARC EMAC detected with id: 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@arc_emac_probe._entry_ptr.27 = internal global ptr @arc_emac_probe._entry.24, section ".printk_index", align 4
@arc_emac_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 933, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IRQ is %d\0A\00", [21 x i8] zeroinitializer }, align 32
@arc_emac_probe._entry_ptr.30 = internal global ptr @arc_emac_probe._entry.28, section ".printk_index", align 4
@arc_emac_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.2, ptr @.str.3, i32 939, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"could not allocate IRQ\0A\00", [40 x i8] zeroinitializer }, align 32
@arc_emac_probe._entry_ptr.33 = internal global ptr @arc_emac_probe._entry.31, section ".printk_index", align 4
@arc_emac_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.2, ptr @.str.3, i32 949, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MAC address is now %pM\0A\00", [40 x i8] zeroinitializer }, align 32
@arc_emac_probe._entry_ptr.36 = internal global ptr @arc_emac_probe._entry.34, section ".printk_index", align 4
@arc_emac_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.2, ptr @.str.3, i32 956, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate data buffers\0A\00", [63 x i8] zeroinitializer }, align 32
@arc_emac_probe._entry_ptr.39 = internal global ptr @arc_emac_probe._entry.37, section ".printk_index", align 4
@arc_emac_probe.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.2, ptr @.str.3, ptr @.str.40, i8 0, i8 -15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"EMAC Device addr: Rx Ring [0x%x], Tx Ring[%x]\0A\00", [49 x i8] zeroinitializer }, align 32
@arc_emac_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.2, ptr @.str.3, i32 969, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to probe MII bus\0A\00", [39 x i8] zeroinitializer }, align 32
@arc_emac_probe._entry_ptr.43 = internal global ptr @arc_emac_probe._entry.41, section ".printk_index", align 4
@arc_emac_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.2, ptr @.str.3, i32 976, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"of_phy_connect() failed\0A\00", [39 x i8] zeroinitializer }, align 32
@arc_emac_probe._entry_ptr.46 = internal global ptr @arc_emac_probe._entry.44, section ".printk_index", align 4
@arc_emac_probe._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.2, ptr @.str.3, i32 982, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"connected to %s phy with id 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@arc_emac_probe._entry_ptr.49 = internal global ptr @arc_emac_probe._entry.47, section ".printk_index", align 4
@arc_emac_probe._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.2, ptr @.str.3, i32 988, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to register network device\0A\00", [61 x i8] zeroinitializer }, align 32
@arc_emac_probe._entry_ptr.52 = internal global ptr @arc_emac_probe._entry.50, section ".printk_index", align 4
@__kstrtab_arc_emac_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_arc_emac_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_arc_emac_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arc_emac_probe to i32), ptr @__kstrtab_arc_emac_probe, ptr @__kstrtabns_arc_emac_probe }, section "___ksymtab_gpl+arc_emac_probe", align 4
@__kstrtab_arc_emac_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_arc_emac_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_arc_emac_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arc_emac_remove to i32), ptr @__kstrtab_arc_emac_remove, ptr @__kstrtabns_arc_emac_remove }, section "___ksymtab_gpl+arc_emac_remove", align 4
@__UNIQUE_ID_author353 = internal constant [55 x i8] c"arc_emac.author=Alexey Brodkin <abrodkin@synopsys.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description354 = internal constant [37 x i8] c"arc_emac.description=ARC EMAC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file355 = internal constant [48 x i8] c"arc_emac.file=drivers/net/ethernet/arc/arc_emac\00", section ".modinfo", align 1
@__UNIQUE_ID_license356 = internal constant [21 x i8] c"arc_emac.license=GPL\00", section ".modinfo", align 1
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cannot dma map\0A\00", [16 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.56 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"BUG! Tx Ring full when queue awake!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"incomplete packet received\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cannot allocate skb\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot map dma buffer\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"restarting stalled EMAC\0A\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 392450, i64 523522]
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 864, i32 44 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 866, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 873, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 881, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [20 x i8] c"arc_emac_netdev_ops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 840, i32 36 }
@___asan_gen_.97 = private unnamed_addr constant [21 x i8] c"arc_emac_ethtool_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 97, i32 33 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 899, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 904, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 911, i32 42 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 913, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 923, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 927, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 933, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 939, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 949, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 956, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 964, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 969, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 976, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 981, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 988, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 451, i32 21 }
@___asan_gen_.194 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 326, i32 6 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 691, i32 20 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 202, i32 22 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 218, i32 22 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 230, i32 22 }
@___asan_gen_.208 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.209 = private constant [40 x i8] c"../drivers/net/ethernet/arc/emac_main.c\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 797, i32 21 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @__UNIQUE_ID_author353, ptr @__UNIQUE_ID_description354, ptr @__UNIQUE_ID_file355, ptr @__UNIQUE_ID_license356, ptr @__ksymtab_arc_emac_probe, ptr @__ksymtab_arc_emac_remove, ptr @arc_emac_probe._entry, ptr @arc_emac_probe._entry.14, ptr @arc_emac_probe._entry.18, ptr @arc_emac_probe._entry.21, ptr @arc_emac_probe._entry.24, ptr @arc_emac_probe._entry.28, ptr @arc_emac_probe._entry.31, ptr @arc_emac_probe._entry.34, ptr @arc_emac_probe._entry.37, ptr @arc_emac_probe._entry.41, ptr @arc_emac_probe._entry.44, ptr @arc_emac_probe._entry.47, ptr @arc_emac_probe._entry.50, ptr @arc_emac_probe._entry.6, ptr @arc_emac_probe._entry.9, ptr @arc_emac_probe._entry_ptr, ptr @arc_emac_probe._entry_ptr.11, ptr @arc_emac_probe._entry_ptr.16, ptr @arc_emac_probe._entry_ptr.20, ptr @arc_emac_probe._entry_ptr.23, ptr @arc_emac_probe._entry_ptr.27, ptr @arc_emac_probe._entry_ptr.30, ptr @arc_emac_probe._entry_ptr.33, ptr @arc_emac_probe._entry_ptr.36, ptr @arc_emac_probe._entry_ptr.39, ptr @arc_emac_probe._entry_ptr.43, ptr @arc_emac_probe._entry_ptr.46, ptr @arc_emac_probe._entry_ptr.49, ptr @arc_emac_probe._entry_ptr.52, ptr @arc_emac_probe._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @arc_emac_netdev_ops, ptr @arc_emac_ethtool_ops, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arc_emac_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arc_emac_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arc_emac_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arc_emac_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arc_emac_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arc_emac_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arc_emac_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arc_emac_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arc_emac_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arc_emac_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arc_emac_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arc_emac_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arc_emac_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arc_emac_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arc_emac_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arc_emac_probe._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arc_emac_probe._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arc_emac_probe(ptr noundef %ndev, i32 noundef %interface) #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %res_regs = alloca %struct.resource, align 4
  %clock_frequency = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res_regs) #9
  %2 = call ptr @memset(ptr %res_regs, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clock_frequency) #9
  %3 = ptrtoint ptr %clock_frequency to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %clock_frequency, align 4, !annotation !116
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #9
  %6 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #9
  br label %do.end

of_parse_phandle.exit:                            ; preds = %entry
  %7 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #9
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %of_parse_phandle.exit.do.end_crit_edge, label %if.end

of_parse_phandle.exit.do.end_crit_edge:           ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %of_parse_phandle.exit.do.end_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %of_parse_phandle.exit
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %call3 = call i32 @of_address_to_resource(ptr noundef %10, i32 noundef 0, ptr noundef nonnull %res_regs) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end9, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.7) #12
  br label %out_put_node

if.end9:                                          ; preds = %if.end
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %call11 = call i32 @irq_of_parse_and_map(ptr noundef %12, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.end16, label %if.end17

do.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.10) #12
  br label %out_put_node

if.end17:                                         ; preds = %if.end9
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 16
  %13 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @arc_emac_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 44
  %14 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @arc_emac_ethtool_ops, ptr %ethtool_ops, align 16
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 115
  %15 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 40, ptr %watchdog_timeo, align 4
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %dev19 = getelementptr i8, ptr %ndev, i32 2312
  %16 = ptrtoint ptr %dev19 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %1, ptr %dev19, align 8
  %call20 = call ptr @devm_ioremap_resource(ptr noundef %1, ptr noundef nonnull %res_regs) #9
  %regs = getelementptr i8, ptr %ndev, i32 2328
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call20, ptr %regs, align 8
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then23, label %do.body27

if.then23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %call20 to i32
  br label %out_put_node

do.body27:                                        ; preds = %if.end17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arc_emac_probe.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arc_emac_probe, %if.then32)) #9
          to label %do.end36 [label %if.then32], !srcloc !117

if.then32:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arc_emac_probe.__UNIQUE_ID_ddebug351, ptr noundef %1, ptr noundef nonnull @.str.13, ptr noundef %20) #9
  br label %do.end36

do.end36:                                         ; preds = %if.then32, %do.body27
  %clk = getelementptr i8, ptr %ndev, i32 2332
  %21 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk, align 4
  %tobool37.not = icmp eq ptr %22, null
  br i1 %tobool37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %do.end36
  %call.i243 = call i32 @clk_prepare(ptr noundef nonnull %22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i243)
  %tobool.not.i244 = icmp eq i32 %call.i243, 0
  br i1 %tobool.not.i244, label %if.end.i245, label %if.then38.do.end45_crit_edge

if.then38.do.end45_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end45

if.end.i245:                                      ; preds = %if.then38
  %call1.i = call i32 @clk_enable(ptr noundef nonnull %22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end46, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i245
  call void @__sanitizer_cov_trace_pc() #11
  call void @clk_unprepare(ptr noundef nonnull %22) #9
  br label %do.end45

do.end45:                                         ; preds = %if.then3.i, %if.then38.do.end45_crit_edge
  %retval.0.i246.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i243, %if.then38.do.end45_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.15) #12
  br label %out_put_node

if.end46:                                         ; preds = %if.end.i245
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk, align 4
  %call48 = call i32 @clk_get_rate(ptr noundef %24) #9
  %25 = ptrtoint ptr %clock_frequency to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call48, ptr %clock_frequency, align 4
  br label %if.end57

if.else:                                          ; preds = %do.end36
  %26 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %27, ptr noundef nonnull @.str.17, ptr noundef nonnull %clock_frequency, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool51.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool51.not, label %if.else.if.end57_crit_edge, label %do.end55

if.else.if.end57_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

do.end55:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.19) #12
  br label %out_put_node

if.end57:                                         ; preds = %if.else.if.end57_crit_edge, %if.end46
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 8
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #9, !srcloc !118
  %31 = call i32 @llvm.bswap.i32(i32 %30) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i32 %31, label %do.end63 [
    i32 392450, label %if.end57.do.end67_crit_edge
    i32 523522, label %if.end57.do.end67_crit_edge261
  ]

if.end57.do.end67_crit_edge261:                   ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.end57.do.end67_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

do.end63:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef %31) #12
  br label %out_clken

do.end67:                                         ; preds = %if.end57.do.end67_crit_edge, %if.end57.do.end67_crit_edge261
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.25, i32 noundef %31) #12
  %33 = ptrtoint ptr %clock_frequency to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %clock_frequency, align 4
  %div = udiv i32 %34, 1000000
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 8
  %add.ptr.i248 = getelementptr i8, ptr %36, i32 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  call void @arm_heavy_mb() #9
  %37 = call i32 @llvm.bswap.i32(i32 %div) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i248, i32 %37) #9, !srcloc !121
  %irq68 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 64
  %38 = ptrtoint ptr %irq68 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call11, ptr %irq68, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.29, i32 noundef %call11) #12
  %39 = ptrtoint ptr %irq68 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq68, align 4
  %call.i249 = call i32 @devm_request_threaded_irq(ptr noundef %1, i32 noundef %40, ptr noundef nonnull @arc_emac_intr, ptr noundef null, i32 noundef 0, ptr noundef %ndev, ptr noundef %ndev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i249)
  %tobool75.not = icmp eq i32 %call.i249, 0
  br i1 %tobool75.not, label %if.end80, label %do.end79

do.end79:                                         ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.32) #12
  br label %out_clken

if.end80:                                         ; preds = %do.end67
  %41 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %of_node, align 8
  %call82 = call i32 @of_get_ethdev_address(ptr noundef %42, ptr noundef %ndev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end80.if.end85_crit_edge, label %if.then84

if.end80.if.end85_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.then84:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @eth_hw_addr_random(ptr noundef %ndev)
  br label %if.end85

if.end85:                                         ; preds = %if.then84, %if.end80.if.end85_crit_edge
  call fastcc void @arc_emac_set_address_internal(ptr noundef %ndev)
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 86
  %43 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev_addr, align 64
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.35, ptr noundef %44) #12
  %rxbd_dma = getelementptr i8, ptr %ndev, i32 2568
  %call.i250 = call ptr @dmam_alloc_attrs(ptr noundef %1, i32 noundef 2048, ptr noundef %rxbd_dma, i32 noundef 3264, i32 noundef 0) #9
  %rxbd = getelementptr i8, ptr %ndev, i32 2560
  %45 = ptrtoint ptr %rxbd to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i250, ptr %rxbd, align 8
  %tobool91.not = icmp eq ptr %call.i250, null
  br i1 %tobool91.not, label %do.end95, label %if.end96

do.end95:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.38) #12
  br label %out_clken

if.end96:                                         ; preds = %if.end85
  %add.ptr = getelementptr %struct.arc_emac_bd, ptr %call.i250, i32 128
  %txbd = getelementptr i8, ptr %ndev, i32 2564
  %46 = ptrtoint ptr %txbd to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %add.ptr, ptr %txbd, align 4
  %47 = ptrtoint ptr %rxbd_dma to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rxbd_dma, align 8
  %add = add i32 %48, 1024
  %txbd_dma = getelementptr i8, ptr %ndev, i32 2572
  %49 = ptrtoint ptr %txbd_dma to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add, ptr %txbd_dma, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arc_emac_probe.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arc_emac_probe, %if.then111)) #9
          to label %do.end116 [label %if.then111], !srcloc !117

if.then111:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %rxbd_dma to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rxbd_dma, align 8
  %52 = ptrtoint ptr %txbd_dma to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %txbd_dma, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arc_emac_probe.__UNIQUE_ID_ddebug352, ptr noundef %1, ptr noundef nonnull @.str.40, i32 noundef %51, i32 noundef %53) #9
  br label %do.end116

do.end116:                                        ; preds = %if.then111, %if.end96
  %call117 = call i32 @arc_mdio_probe(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.end123, label %do.end122

do.end122:                                        ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.42) #12
  br label %out_clken

if.end123:                                        ; preds = %do.end116
  %call124 = call ptr @of_phy_connect(ptr noundef %ndev, ptr noundef nonnull %8, ptr noundef nonnull @arc_emac_adjust_link, i32 noundef 0, i32 noundef %interface) #9
  %tobool125.not = icmp eq ptr %call124, null
  br i1 %tobool125.not, label %do.end129, label %do.end133

do.end129:                                        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.45) #12
  br label %out_mdio

do.end133:                                        ; preds = %if.end123
  %drv = getelementptr inbounds %struct.phy_device, ptr %call124, i32 0, i32 1
  %54 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %drv, align 8
  %name134 = getelementptr inbounds %struct.phy_driver, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %name134, align 4
  %phy_id = getelementptr inbounds %struct.phy_device, ptr %call124, i32 0, i32 2
  %58 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %phy_id, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.48, ptr noundef %57, i32 noundef %59) #12
  %napi = getelementptr i8, ptr %ndev, i32 2336
  call void @netif_napi_add(ptr noundef %ndev, ptr noundef %napi, ptr noundef nonnull @arc_emac_poll, i32 noundef 40) #9
  %call135 = call i32 @register_netdev(ptr noundef %ndev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.end141, label %do.end140

do.end140:                                        ; preds = %do.end133
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.51) #12
  call void @__netif_napi_del(ptr noundef %napi) #9
  call void @synchronize_net() #9
  call void @phy_disconnect(ptr noundef nonnull %call124) #9
  br label %out_mdio

if.end141:                                        ; preds = %do.end133
  call void @__sanitizer_cov_trace_pc() #11
  call void @of_node_put(ptr noundef nonnull %8) #9
  br label %cleanup

out_mdio:                                         ; preds = %do.end140, %do.end129
  %err.0 = phi i32 [ %call135, %do.end140 ], [ -19, %do.end129 ]
  %call143 = call i32 @arc_mdio_remove(ptr noundef %add.ptr.i) #9
  br label %out_clken

out_clken:                                        ; preds = %out_mdio, %do.end122, %do.end95, %do.end79, %do.end63
  %err.1 = phi i32 [ %call.i249, %do.end79 ], [ %call117, %do.end122 ], [ %err.0, %out_mdio ], [ -12, %do.end95 ], [ -19, %do.end63 ]
  %60 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %clk, align 4
  %tobool145.not = icmp eq ptr %61, null
  br i1 %tobool145.not, label %out_clken.out_put_node_crit_edge, label %if.then146

out_clken.out_put_node_crit_edge:                 ; preds = %out_clken
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_put_node

if.then146:                                       ; preds = %out_clken
  call void @__sanitizer_cov_trace_pc() #11
  call void @clk_disable(ptr noundef nonnull %61) #9
  call void @clk_unprepare(ptr noundef nonnull %61) #9
  br label %out_put_node

out_put_node:                                     ; preds = %if.then146, %out_clken.out_put_node_crit_edge, %do.end55, %do.end45, %if.then23, %do.end16, %do.end8
  %err.2 = phi i32 [ -19, %do.end8 ], [ %18, %if.then23 ], [ %retval.0.i246.ph, %do.end45 ], [ %err.1, %if.then146 ], [ %err.1, %out_clken.out_put_node_crit_edge ], [ -22, %do.end55 ], [ -19, %do.end16 ]
  call void @of_node_put(ptr noundef nonnull %8) #9
  br label %cleanup

cleanup:                                          ; preds = %out_put_node, %if.end141, %do.end
  %retval.0 = phi i32 [ %err.2, %out_put_node ], [ 0, %if.end141 ], [ -19, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clock_frequency) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res_regs) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arc_emac_intr(i32 noundef %irq, ptr noundef %dev_instance) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr i8, ptr %dev_instance, i32 2328
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %add.ptr.i64 = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64) #9, !srcloc !118
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  %and = and i32 %3, -4097
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 8
  %add.ptr.i66 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  %6 = tail call i32 @llvm.bswap.i32(i32 %and) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66, i32 %6) #9, !srcloc !121
  %and3 = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then:                                          ; preds = %entry
  %napi = getelementptr i8, ptr %dev_instance, i32 2336
  %call4 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #9
  br i1 %call4, label %if.then7, label %if.then.if.end9_crit_edge, !prof !122

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  %10 = and i32 %9, -50331649
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 8
  %add.ptr.i5.i = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %10) #9, !srcloc !121
  tail call void @__napi_schedule(ptr noundef %napi) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.then.if.end9_crit_edge, %entry.if.end9_crit_edge
  %and10 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end42_crit_edge, label %if.then12

if.end9.if.end42_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then12:                                        ; preds = %if.end9
  %and13 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.then12.if.end20_crit_edge, label %if.then15

if.then12.if.end20_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then15:                                        ; preds = %if.then12
  %rx_missed_errors = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 15
  %13 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_missed_errors, align 4
  %add = add i32 %14, 256
  store i32 %add, ptr %rx_missed_errors, align 4
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 4
  %15 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_errors, align 4
  %add16 = add i32 %16, 256
  store i32 %add16, ptr %rx_errors, align 4
  %rx_missed_errors17 = getelementptr i8, ptr %dev_instance, i32 5672
  %17 = ptrtoint ptr %rx_missed_errors17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_missed_errors17, align 8
  %add18 = add i32 %18, 256
  store i32 %add18, ptr %rx_missed_errors17, align 8
  %napi19 = getelementptr i8, ptr %dev_instance, i32 2336
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi19) #9
  br i1 %call.i, label %if.then.i, label %if.then15.if.end20_crit_edge

if.then15.if.end20_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__napi_schedule(ptr noundef %napi19) #9
  br label %if.end20

if.end20:                                         ; preds = %if.then.i, %if.then15.if.end20_crit_edge, %if.then12.if.end20_crit_edge
  %and21 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end27_crit_edge, label %if.then23

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 12
  %19 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_crc_errors, align 4
  %add24 = add i32 %20, 256
  store i32 %add24, ptr %rx_crc_errors, align 4
  %rx_errors25 = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 4
  %21 = ptrtoint ptr %rx_errors25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_errors25, align 4
  %add26 = add i32 %22, 256
  store i32 %add26, ptr %rx_errors25, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.end20.if.end27_crit_edge
  %and28 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end27.if.end34_crit_edge, label %if.then30

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 13
  %23 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_frame_errors, align 4
  %add31 = add i32 %24, 256
  store i32 %add31, ptr %rx_frame_errors, align 4
  %rx_errors32 = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 4
  %25 = ptrtoint ptr %rx_errors32 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_errors32, align 4
  %add33 = add i32 %26, 256
  store i32 %add33, ptr %rx_errors32, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.end27.if.end34_crit_edge
  %and35 = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end42_crit_edge, label %if.then37

if.end34.if.end42_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 11
  %27 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_over_errors, align 4
  %add38 = add i32 %28, 256
  store i32 %add38, ptr %rx_over_errors, align 4
  %rx_errors39 = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 4
  %29 = ptrtoint ptr %rx_errors39 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_errors39, align 4
  %add40 = add i32 %30, 256
  store i32 %add40, ptr %rx_errors39, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then37, %if.end34.if.end42_crit_edge, %if.end9.if.end42_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @eth_hw_addr_random(ptr noundef %dev) unnamed_addr #4 align 64 {
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @arc_emac_set_address_internal(ptr nocapture noundef readonly %ndev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 86
  %0 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_addr, align 64
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %arrayidx2 = getelementptr i8, ptr %1, i32 4
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx2, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv = zext i16 %6 to i32
  %regs.i = getelementptr i8, ptr %ndev, i32 2328
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 8
  %add.ptr.i6 = getelementptr i8, ptr %8, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 %3) #9, !srcloc !121
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 8
  %add.ptr.i8 = getelementptr i8, ptr %10, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  %11 = tail call i32 @llvm.bswap.i32(i32 %conv) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %11) #9, !srcloc !121
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arc_mdio_probe(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arc_emac_adjust_link(ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %link = getelementptr i8, ptr %ndev, i32 5660
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link, align 4
  %link1 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %link1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %link1, align 8
  %bf.lshr = lshr i16 %bf.load, 2
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %bf.cast)
  %cmp.not = icmp eq i32 %3, %bf.cast
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %bf.cast, ptr %link, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %state_changed.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %speed = getelementptr i8, ptr %ndev, i32 5668
  %6 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed, align 4
  %speed8 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %speed8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %speed8, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp9.not = icmp eq i32 %7, %9
  br i1 %cmp9.not, label %if.end.if.end17_crit_edge, label %if.then10

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then10:                                        ; preds = %if.end
  %10 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %speed, align 4
  %set_mac_speed = getelementptr i8, ptr %ndev, i32 2308
  %11 = ptrtoint ptr %set_mac_speed to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_mac_speed, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.then10.if.end17_crit_edge, label %if.then13

if.then10.if.end17_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %12(ptr noundef %add.ptr.i, i32 noundef %9) #9
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.then10.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %state_changed.1 = phi i32 [ 1, %if.then13 ], [ 1, %if.then10.if.end17_crit_edge ], [ %state_changed.0, %if.end.if.end17_crit_edge ]
  %duplex = getelementptr i8, ptr %ndev, i32 5664
  %13 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %duplex, align 8
  %duplex18 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %15 = ptrtoint ptr %duplex18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %duplex18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp19.not = icmp eq i32 %14, %16
  br i1 %cmp19.not, label %if.end28, label %if.end28.thread

if.end28.thread:                                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %regs.i = getelementptr i8, ptr %ndev, i32 2328
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 8
  %add.ptr.i54 = getelementptr i8, ptr %18, i32 12
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  %20 = ptrtoint ptr %duplex18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %duplex18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp23 = icmp eq i32 %21, 1
  %22 = and i32 %19, -262145
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %masksel = select i1 %cmp23, i32 1024, i32 0
  %reg.0 = or i32 %masksel, %23
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 8
  %add.ptr.i56 = getelementptr i8, ptr %25, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  %26 = tail call i32 @llvm.bswap.i32(i32 %reg.0) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %26) #9, !srcloc !121
  %27 = ptrtoint ptr %duplex18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %duplex18, align 4
  %29 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %duplex, align 8
  br label %if.then30

if.end28:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state_changed.1)
  %tobool29.not = icmp eq i32 %state_changed.1, 0
  br i1 %tobool29.not, label %if.end28.if.end31_crit_edge, label %if.end28.if.then30_crit_edge

if.end28.if.then30_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

if.end28.if.end31_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then30:                                        ; preds = %if.end28.if.then30_crit_edge, %if.end28.thread
  tail call void @phy_print_status(ptr noundef %1) #9
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end28.if.end31_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arc_emac_poll(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 7
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %txbd_dirty2.i = getelementptr i8, ptr %1, i32 5652
  %txbd3.i = getelementptr i8, ptr %1, i32 2564
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 7
  %tx_carrier_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 17
  %collisions.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 9
  %tx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 18
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 1
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 3
  %dev.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.095.i = phi i32 [ 0, %entry ], [ %inc53.i, %for.inc.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %txbd3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %txbd3.i, align 4
  %4 = ptrtoint ptr %txbd_dirty2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %txbd_dirty2.i, align 4
  %arrayidx.i = getelementptr %struct.arc_emac_bd, ptr %3, i32 %5
  %arrayidx5.i = getelementptr %struct.arc_emac_priv, ptr %add.ptr.i, i32 0, i32 13, i32 %5
  %6 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx5.i, align 4
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %tobool.not.i = icmp sgt i32 %10, -1
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %for.body.i.do.end.i_crit_edge

for.body.i.do.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %data.i = getelementptr %struct.arc_emac_bd, ptr %3, i32 %5, i32 1
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not.i = icmp eq i32 %12, 0
  %tobool10.not.i = icmp eq ptr %7, null
  %or.cond.i = select i1 %tobool8.not.i, i1 true, i1 %tobool10.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %if.end.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %and11.i = and i32 %10, 817889280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.else.i, label %if.then15.i, !prof !122

if.then15.i:                                      ; preds = %if.end.i
  %13 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_errors.i, align 4
  %inc.i = add i32 %14, 1
  store i32 %inc.i, ptr %tx_errors.i, align 4
  %15 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_dropped.i, align 4
  %inc16.i = add i32 %16, 1
  store i32 %inc16.i, ptr %tx_dropped.i, align 4
  %and17.i = and i32 %10, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.then15.i.if.end21.i_crit_edge, label %if.then19.i

if.then15.i.if.end21.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

if.then19.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %tx_carrier_errors.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_carrier_errors.i, align 4
  %inc20.i = add i32 %18, 1
  store i32 %inc20.i, ptr %tx_carrier_errors.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then19.i, %if.then15.i.if.end21.i_crit_edge
  %and22.i = and i32 %10, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end21.i.if.end26.i_crit_edge, label %if.then24.i

if.end21.i.if.end26.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

if.then24.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %collisions.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %collisions.i, align 4
  %inc25.i = add i32 %20, 1
  store i32 %inc25.i, ptr %collisions.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then24.i, %if.end21.i.if.end26.i_crit_edge
  %and27.i = and i32 %10, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.end26.i.for.inc.i_crit_edge, label %if.end26.i.for.inc.sink.split.i_crit_edge

if.end26.i.for.inc.sink.split.i_crit_edge:        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split.i

if.end26.i.for.inc.i_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.else.i:                                        ; preds = %if.end.i
  %and32.i = and i32 %10, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %if.else.i.for.inc.i_crit_edge, label %if.then40.i, !prof !123

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then40.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_packets.i, align 4
  %inc41.i = add i32 %22, 1
  store i32 %inc41.i, ptr %tx_packets.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 6
  %23 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len.i, align 4
  br label %for.inc.sink.split.i

for.inc.sink.split.i:                             ; preds = %if.then40.i, %if.end26.i.for.inc.sink.split.i_crit_edge
  %tx_bytes.sink97.i = phi ptr [ %tx_bytes.i, %if.then40.i ], [ %tx_fifo_errors.i, %if.end26.i.for.inc.sink.split.i_crit_edge ]
  %.sink96.i = phi i32 [ %24, %if.then40.i ], [ 1, %if.end26.i.for.inc.sink.split.i_crit_edge ]
  %25 = ptrtoint ptr %tx_bytes.sink97.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_bytes.sink97.i, align 4
  %add.i = add i32 %26, %.sink96.i
  store i32 %add.i, ptr %tx_bytes.sink97.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %if.else.i.for.inc.i_crit_edge, %if.end26.i.for.inc.i_crit_edge
  %addr.i = getelementptr %struct.arc_emac_priv, ptr %add.ptr.i, i32 0, i32 13, i32 %5, i32 1
  %27 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %addr.i, align 4
  %len44.i = getelementptr %struct.arc_emac_priv, ptr %add.ptr.i, i32 0, i32 13, i32 %5, i32 2
  %29 = ptrtoint ptr %len44.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len44.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %28, i32 noundef %30, i32 noundef 1, i32 noundef 0) #9
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %7, i32 noundef 0) #9
  %31 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %data.i, align 4
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %arrayidx.i, align 4
  %33 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %arrayidx5.i, align 4
  %34 = ptrtoint ptr %txbd_dirty2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %txbd_dirty2.i, align 4
  %add48.i = add i32 %35, 1
  %rem.i = and i32 %add48.i, 127
  store i32 %rem.i, ptr %txbd_dirty2.i, align 4
  %inc53.i = add nuw nsw i32 %i.095.i, 1
  %exitcond.not.i = icmp eq i32 %inc53.i, 128
  br i1 %exitcond.not.i, label %for.inc.i.do.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %lor.lhs.false.i.do.end.i_crit_edge, %for.body.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !124
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %36 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %37, i32 0, i32 13
  %38 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %do.end.i.arc_emac_tx_clean.exit_crit_edge, label %land.lhs.true.i

do.end.i.arc_emac_tx_clean.exit_crit_edge:        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %arc_emac_tx_clean.exit

land.lhs.true.i:                                  ; preds = %do.end.i
  %40 = ptrtoint ptr %txbd_dirty2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %txbd_dirty2.i, align 4
  %txbd_curr.i.i = getelementptr i8, ptr %1, i32 5648
  %42 = ptrtoint ptr %txbd_curr.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %txbd_curr.i.i, align 8
  %44 = xor i32 %43, -1
  %sub1.i.i = add i32 %41, %44
  %rem.i.i = and i32 %sub1.i.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool59.not.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool59.not.i, label %land.lhs.true.i.arc_emac_tx_clean.exit_crit_edge, label %if.then60.i

land.lhs.true.i.arc_emac_tx_clean.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %arc_emac_tx_clean.exit

if.then60.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netif_tx_wake_queue(ptr noundef %37) #9
  br label %arc_emac_tx_clean.exit

arc_emac_tx_clean.exit:                           ; preds = %if.then60.i, %land.lhs.true.i.arc_emac_tx_clean.exit_crit_edge, %do.end.i.arc_emac_tx_clean.exit_crit_edge
  %regs.i.i = getelementptr i8, ptr %1, i32 2328
  %45 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i12.i = getelementptr i8, ptr %46, i32 24
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i13 = icmp eq i32 %47, 0
  br i1 %tobool.not.i13, label %arc_emac_tx_clean.exit.arc_emac_rx_miss_handle.exit_crit_edge, label %if.then.i

arc_emac_tx_clean.exit.arc_emac_rx_miss_handle.exit_crit_edge: ; preds = %arc_emac_tx_clean.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %arc_emac_rx_miss_handle.exit

if.then.i:                                        ; preds = %arc_emac_tx_clean.exit
  call void @__sanitizer_cov_trace_pc() #11
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #9
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %49 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rx_errors.i, align 4
  %add.i14 = add i32 %50, %48
  store i32 %add.i14, ptr %rx_errors.i, align 4
  %rx_missed_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 15
  %51 = ptrtoint ptr %rx_missed_errors.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx_missed_errors.i, align 4
  %add3.i = add i32 %52, %48
  store i32 %add3.i, ptr %rx_missed_errors.i, align 4
  %rx_missed_errors4.i = getelementptr i8, ptr %1, i32 5672
  %53 = ptrtoint ptr %rx_missed_errors4.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_missed_errors4.i, align 8
  %add5.i = add i32 %54, %48
  store i32 %add5.i, ptr %rx_missed_errors4.i, align 8
  br label %arc_emac_rx_miss_handle.exit

arc_emac_rx_miss_handle.exit:                     ; preds = %if.then.i, %arc_emac_tx_clean.exit.arc_emac_rx_miss_handle.exit_crit_edge
  %last_rx_bd1.i = getelementptr i8, ptr %1, i32 5656
  %stats2.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp146.not.i = icmp eq i32 %budget, 0
  br i1 %cmp146.not.i, label %arc_emac_rx_miss_handle.exit.arc_emac_rx.exit_crit_edge, label %for.body.lr.ph.i

arc_emac_rx_miss_handle.exit.arc_emac_rx.exit_crit_edge: ; preds = %arc_emac_rx_miss_handle.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %arc_emac_rx.exit

for.body.lr.ph.i:                                 ; preds = %arc_emac_rx_miss_handle.exit
  %rxbd4.i = getelementptr i8, ptr %1, i32 2560
  %rx_errors.i17 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %rx_length_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 10
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %init_name.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 3
  %rx_dropped57.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  br label %for.body.i21

for.body.i21:                                     ; preds = %for.inc.i29.for.body.i21_crit_edge, %for.body.lr.ph.i
  %work_done.0147.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc85.i, %for.inc.i29.for.body.i21_crit_edge ]
  %55 = ptrtoint ptr %last_rx_bd1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %last_rx_bd1.i, align 4
  %arrayidx.i19 = getelementptr %struct.arc_emac_priv, ptr %add.ptr.i, i32 0, i32 12, i32 %56
  %57 = ptrtoint ptr %rxbd4.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rxbd4.i, align 8
  %arrayidx5.i20 = getelementptr %struct.arc_emac_bd, ptr %58, i32 %56
  %59 = ptrtoint ptr %arrayidx5.i20 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx5.i20, align 4
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp7.i = icmp slt i32 %61, 0
  br i1 %cmp7.i, label %for.body.i21.arc_emac_rx.exit_crit_edge, label %if.end.i24, !prof !123

for.body.i21.arc_emac_rx.exit_crit_edge:          ; preds = %for.body.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %arc_emac_rx.exit

if.end.i24:                                       ; preds = %for.body.i21
  %add.i22 = add i32 %56, 1
  %rem.i23 = and i32 %add.i22, 127
  %62 = ptrtoint ptr %last_rx_bd1.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %rem.i23, ptr %last_rx_bd1.i, align 4
  %and9.i = and i32 %61, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %and9.i)
  %cmp10.not.i = icmp eq i32 %and9.i, 196608
  br i1 %cmp10.not.i, label %if.end24.i, label %if.then17.i, !prof !122

if.then17.i:                                      ; preds = %if.end.i24
  %call18.i = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.then17.i.if.end21.i26_crit_edge, label %if.then20.i

if.then17.i.if.end21.i26_crit_edge:               ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i26

if.then20.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.57) #12
  br label %if.end21.i26

if.end21.i26:                                     ; preds = %if.then20.i, %if.then17.i.if.end21.i26_crit_edge
  %63 = ptrtoint ptr %arrayidx5.i20 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 393344, ptr %arrayidx5.i20, align 4
  %64 = ptrtoint ptr %rx_errors.i17 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rx_errors.i17, align 4
  %inc.i25 = add i32 %65, 1
  store i32 %inc.i25, ptr %rx_errors.i17, align 4
  %66 = ptrtoint ptr %rx_length_errors.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rx_length_errors.i, align 4
  %inc23.i = add i32 %67, 1
  store i32 %inc23.i, ptr %rx_length_errors.i, align 4
  br label %for.inc.i29

if.end24.i:                                       ; preds = %if.end.i24
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef 1538, i32 noundef 2592) #9
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then35.i, label %if.end44.i

if.then35.i:                                      ; preds = %if.end24.i
  %call36.i = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.then35.i.if.end39.i_crit_edge, label %if.then38.i

if.then35.i.if.end39.i_crit_edge:                 ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.i

if.then38.i:                                      ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.58) #12
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then38.i, %if.then35.i.if.end39.i_crit_edge
  %68 = ptrtoint ptr %arrayidx5.i20 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 393344, ptr %arrayidx5.i20, align 4
  %69 = ptrtoint ptr %rx_errors.i17 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rx_errors.i17, align 4
  %inc42.i = add i32 %70, 1
  store i32 %inc42.i, ptr %rx_errors.i17, align 4
  %71 = ptrtoint ptr %rx_dropped57.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rx_dropped57.i, align 4
  %inc43.i = add i32 %72, 1
  store i32 %inc43.i, ptr %rx_dropped57.i, align 4
  br label %for.inc.i29

if.end44.i:                                       ; preds = %if.end24.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %73 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %74, i32 2
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %75 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %76, i32 2
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i.i.i.i) #9
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.end44.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !122

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev.i) #9
  %77 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i134.i = icmp eq ptr %78, null
  br i1 %tobool.not.i.i134.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %80, %if.end.i.i.i ], [ %78, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.55, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #9
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef -1) #9
  br label %if.then49.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end44.i
  tail call void @debug_dma_map_single(ptr noundef %dev.i, ptr noundef %add.ptr.i.i.i.i, i32 noundef 1536) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %81 = load ptr, ptr @mem_map, align 4
  %82 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.i.i = add i32 %82, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i135.i = getelementptr %struct.page, ptr %81, i32 %shr.i.i
  %and.i.i = and i32 %82, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %add.ptr.i135.i, i32 noundef %and.i.i, i32 noundef 1536, i32 noundef 2, i32 noundef 0) #9
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef %call41.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.if.then49.i_crit_edge, label %if.end59.i

dma_map_single_attrs.exit.i.if.then49.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then49.i

if.then49.i:                                      ; preds = %dma_map_single_attrs.exit.i.if.then49.i_crit_edge, %dma_map_single_attrs.exit.thread.i
  %call50.i = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %if.then49.i.if.end53.i_crit_edge, label %if.then52.i

if.then49.i.if.end53.i_crit_edge:                 ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53.i

if.then52.i:                                      ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.59) #12
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then52.i, %if.then49.i.if.end53.i_crit_edge
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i) #9
  %83 = ptrtoint ptr %arrayidx5.i20 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 393344, ptr %arrayidx5.i20, align 4
  %84 = ptrtoint ptr %rx_errors.i17 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rx_errors.i17, align 4
  %inc56.i = add i32 %85, 1
  store i32 %inc56.i, ptr %rx_errors.i17, align 4
  %86 = ptrtoint ptr %rx_dropped57.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rx_dropped57.i, align 4
  %inc58.i = add i32 %87, 1
  store i32 %inc58.i, ptr %rx_dropped57.i, align 4
  br label %for.inc.i29

if.end59.i:                                       ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %addr61.i = getelementptr %struct.arc_emac_priv, ptr %add.ptr.i, i32 0, i32 12, i32 %56, i32 1
  %88 = ptrtoint ptr %addr61.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %addr61.i, align 4
  %len.i27 = getelementptr %struct.arc_emac_priv, ptr %add.ptr.i, i32 0, i32 12, i32 %56, i32 2
  %90 = ptrtoint ptr %len.i27 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %len.i27, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %89, i32 noundef %91, i32 noundef 2, i32 noundef 0) #9
  %and62.i = and i32 %61, 2047
  %92 = ptrtoint ptr %stats2.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %stats2.i, align 4
  %inc63.i = add i32 %93, 1
  store i32 %inc63.i, ptr %stats2.i, align 4
  %94 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rx_bytes.i, align 4
  %add64.i = add i32 %95, %and62.i
  store i32 %add64.i, ptr %rx_bytes.i, align 4
  %96 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx.i19, align 4
  %call66.i = tail call ptr @skb_put(ptr noundef %97, i32 noundef %and62.i) #9
  %98 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx.i19, align 4
  %100 = getelementptr inbounds %struct.anon.0, ptr %99, i32 0, i32 2
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %1, ptr %100, align 8
  %102 = load ptr, ptr %arrayidx.i19, align 4
  %call69.i = tail call zeroext i16 @eth_type_trans(ptr noundef %102, ptr noundef %1) #9
  %103 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx.i19, align 4
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %104, i32 0, i32 15, i32 0, i32 18
  %105 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %call69.i, ptr %protocol.i, align 8
  %106 = load ptr, ptr %arrayidx.i19, align 4
  %call72.i = tail call i32 @netif_receive_skb(ptr noundef %106) #9
  %107 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call.i.i.i, ptr %arrayidx.i19, align 4
  %108 = ptrtoint ptr %addr61.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %call41.i.i, ptr %addr61.i, align 4
  %109 = ptrtoint ptr %len.i27 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 1536, ptr %len.i27, align 4
  %110 = tail call i32 @llvm.bswap.i32(i32 %call41.i.i) #9
  %data76.i = getelementptr %struct.arc_emac_bd, ptr %58, i32 %56, i32 1
  %111 = ptrtoint ptr %data76.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %data76.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !125
  tail call void @arm_heavy_mb() #9
  %112 = ptrtoint ptr %arrayidx5.i20 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 393344, ptr %arrayidx5.i20, align 4
  br label %for.inc.i29

for.inc.i29:                                      ; preds = %if.end59.i, %if.end53.i, %if.end39.i, %if.end21.i26
  %inc85.i = add nuw i32 %work_done.0147.i, 1
  %exitcond.not.i28 = icmp eq i32 %inc85.i, %budget
  br i1 %exitcond.not.i28, label %for.inc.i29.if.end_crit_edge, label %for.inc.i29.for.body.i21_crit_edge

for.inc.i29.for.body.i21_crit_edge:               ; preds = %for.inc.i29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i21

for.inc.i29.if.end_crit_edge:                     ; preds = %for.inc.i29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

arc_emac_rx.exit:                                 ; preds = %for.body.i21.arc_emac_rx.exit_crit_edge, %arc_emac_rx_miss_handle.exit.arc_emac_rx.exit_crit_edge
  %work_done.0.lcssa.i = phi i32 [ 0, %arc_emac_rx_miss_handle.exit.arc_emac_rx.exit_crit_edge ], [ %work_done.0147.i, %for.body.i21.arc_emac_rx.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %work_done.0.lcssa.i, i32 %budget)
  %cmp = icmp ult i32 %work_done.0.lcssa.i, %budget
  br i1 %cmp, label %if.then, label %arc_emac_rx.exit.if.end_crit_edge

arc_emac_rx.exit.if.end_crit_edge:                ; preds = %arc_emac_rx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %arc_emac_rx.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %work_done.0.lcssa.i) #9
  %113 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i31 = getelementptr i8, ptr %114, i32 8
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i31) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  %116 = or i32 %115, 50331648
  %117 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i5.i = getelementptr i8, ptr %118, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %116) #9, !srcloc !121
  br label %if.end

if.end:                                           ; preds = %if.then, %arc_emac_rx.exit.if.end_crit_edge, %for.inc.i29.if.end_crit_edge
  %work_done.0.lcssa.i46 = phi i32 [ %work_done.0.lcssa.i, %if.then ], [ %work_done.0.lcssa.i, %arc_emac_rx.exit.if.end_crit_edge ], [ %budget, %for.inc.i29.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %work_done.0.lcssa.i46)
  %tobool.not.i33 = icmp eq i32 %work_done.0.lcssa.i46, 0
  br i1 %tobool.not.i33, label %if.end.if.end.i37_crit_edge, label %if.then.i35

if.end.if.end.i37_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i37

if.then.i35:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %rx_missed_errors.i34 = getelementptr i8, ptr %1, i32 5672
  %119 = ptrtoint ptr %rx_missed_errors.i34 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %rx_missed_errors.i34, align 8
  br label %if.end.i37

if.end.i37:                                       ; preds = %if.then.i35, %if.end.if.end.i37_crit_edge
  %rx_missed_errors1.i = getelementptr i8, ptr %1, i32 5672
  %120 = ptrtoint ptr %rx_missed_errors1.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %rx_missed_errors1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool2.not.i = icmp eq i32 %121, 0
  %or.cond.i36 = or i1 %cmp146.not.i, %tobool2.not.i
  br i1 %or.cond.i36, label %if.end.i37.arc_emac_rx_stall_check.exit_crit_edge, label %if.then4.i

if.end.i37.arc_emac_rx_stall_check.exit_crit_edge: ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #11
  br label %arc_emac_rx_stall_check.exit

if.then4.i:                                       ; preds = %if.end.i37
  %rxbd5.i = getelementptr i8, ptr %1, i32 2560
  %122 = ptrtoint ptr %rxbd5.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %rxbd5.i, align 8
  %124 = ptrtoint ptr %last_rx_bd1.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %last_rx_bd1.i, align 8
  %arrayidx.i38 = getelementptr %struct.arc_emac_bd, ptr %123, i32 %125
  %126 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx.i38, align 4
  %.mask.i = and i32 %127, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool6.not.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool6.not.i, label %if.then4.i.arc_emac_rx_stall_check.exit_crit_edge, label %if.then7.i

if.then4.i.arc_emac_rx_stall_check.exit_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %arc_emac_rx_stall_check.exit

if.then7.i:                                       ; preds = %if.then4.i
  %call2.i.i = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %if.then7.i.if.end.i.i_crit_edge, label %if.then.i.i39

if.then7.i.if.end.i.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i39:                                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %1, ptr noundef nonnull @.str.60) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i39, %if.then7.i.if.end.i.i_crit_edge
  %128 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %129, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i.i) #9
  %130 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i.i.i40 = getelementptr i8, ptr %131, i32 8
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i40) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  %133 = and i32 %132, -117440513
  %134 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i5.i.i.i = getelementptr i8, ptr %135, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i.i, i32 %133) #9, !srcloc !121
  %136 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i29.i.i = getelementptr i8, ptr %137, i32 12
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i29.i.i) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  %139 = and i32 %138, -16777217
  %140 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i5.i31.i.i = getelementptr i8, ptr %141, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i31.i.i, i32 %139) #9, !srcloc !121
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.end.i.i.i42.for.body.i.i.i_crit_edge, %if.end.i.i
  %i.016.i.i.i = phi i32 [ 0, %if.end.i.i ], [ %inc.i.i.i, %if.end.i.i.i42.for.body.i.i.i_crit_edge ]
  %142 = ptrtoint ptr %txbd3.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %txbd3.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.arc_emac_bd, ptr %143, i32 %i.016.i.i.i
  %arrayidx3.i.i.i = getelementptr %struct.arc_emac_priv, ptr %add.ptr.i, i32 0, i32 13, i32 %i.016.i.i.i
  %144 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %arrayidx3.i.i.i, align 4
  %tobool.not.i.i.i41 = icmp eq ptr %145, null
  br i1 %tobool.not.i.i.i41, label %for.body.i.i.i.if.end.i.i.i42_crit_edge, label %if.then.i.i.i

for.body.i.i.i.if.end.i.i.i42_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i42

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %addr.i.i.i = getelementptr %struct.arc_emac_priv, ptr %add.ptr.i, i32 0, i32 13, i32 %i.016.i.i.i, i32 1
  %146 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %addr.i.i.i, align 4
  %len.i.i.i = getelementptr %struct.arc_emac_priv, ptr %add.ptr.i, i32 0, i32 13, i32 %i.016.i.i.i, i32 2
  %148 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %len.i.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %147, i32 noundef %149, i32 noundef 1, i32 noundef 0) #9
  %150 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %arrayidx3.i.i.i, align 4
  tail call void @__dev_kfree_skb_irq(ptr noundef %151, i32 noundef 1) #9
  br label %if.end.i.i.i42

if.end.i.i.i42:                                   ; preds = %if.then.i.i.i, %for.body.i.i.i.if.end.i.i.i42_crit_edge
  %152 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 0, ptr %arrayidx.i.i.i, align 4
  %data.i.i.i = getelementptr %struct.arc_emac_bd, ptr %143, i32 %i.016.i.i.i, i32 1
  %153 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 0, ptr %data.i.i.i, align 4
  %154 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr null, ptr %arrayidx3.i.i.i, align 4
  %inc.i.i.i = add nuw nsw i32 %i.016.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 128
  br i1 %exitcond.not.i.i.i, label %arc_free_tx_queue.exit.i.i, label %if.end.i.i.i42.for.body.i.i.i_crit_edge

if.end.i.i.i42.for.body.i.i.i_crit_edge:          ; preds = %if.end.i.i.i42
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

arc_free_tx_queue.exit.i.i:                       ; preds = %if.end.i.i.i42
  %txbd_curr.i.i43 = getelementptr i8, ptr %1, i32 5648
  %155 = ptrtoint ptr %txbd_curr.i.i43 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 0, ptr %txbd_curr.i.i43, align 8
  %156 = ptrtoint ptr %txbd_dirty2.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 0, ptr %txbd_dirty2.i, align 4
  %157 = ptrtoint ptr %txbd3.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %txbd3.i, align 4
  %159 = call ptr @memset(ptr %158, i32 0, i32 1024)
  %rx_errors.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %rx_dropped.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end8.i.i.for.body.i.i_crit_edge, %arc_free_tx_queue.exit.i.i
  %i.039.i.i = phi i32 [ 0, %arc_free_tx_queue.exit.i.i ], [ %inc10.i.i, %if.end8.i.i.for.body.i.i_crit_edge ]
  %160 = ptrtoint ptr %rxbd5.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %rxbd5.i, align 8
  %arrayidx.i.i = getelementptr %struct.arc_emac_bd, ptr %161, i32 %i.039.i.i
  %162 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx.i.i, align 4
  %.mask.i.i = and i32 %163, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i.i)
  %tobool5.not.i.i = icmp eq i32 %.mask.i.i, 0
  br i1 %tobool5.not.i.i, label %if.then6.i.i, label %for.body.i.i.if.end8.i.i_crit_edge

for.body.i.i.if.end8.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

if.then6.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %164 = ptrtoint ptr %rx_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %rx_errors.i.i, align 4
  %inc.i.i = add i32 %165, 1
  store i32 %inc.i.i, ptr %rx_errors.i.i, align 4
  %166 = ptrtoint ptr %rx_dropped.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %rx_dropped.i.i, align 4
  %inc7.i.i = add i32 %167, 1
  store i32 %inc7.i.i, ptr %rx_dropped.i.i, align 4
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then6.i.i, %for.body.i.i.if.end8.i.i_crit_edge
  %168 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 393344, ptr %arrayidx.i.i, align 4
  %inc10.i.i = add nuw nsw i32 %i.039.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc10.i.i, 128
  br i1 %exitcond.not.i.i, label %arc_emac_restart.exit.i, label %if.end8.i.i.for.body.i.i_crit_edge

if.end8.i.i.for.body.i.i_crit_edge:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

arc_emac_restart.exit.i:                          ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %169 = ptrtoint ptr %last_rx_bd1.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 0, ptr %last_rx_bd1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !126
  tail call void @arm_heavy_mb() #9
  %170 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i33.i.i = getelementptr i8, ptr %171, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33.i.i, i32 117440512) #9, !srcloc !121
  %172 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i35.i.i = getelementptr i8, ptr %173, i32 12
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i35.i.i) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  %175 = or i32 %174, 16777216
  %176 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i5.i36.i.i = getelementptr i8, ptr %177, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i36.i.i, i32 %175) #9, !srcloc !121
  %178 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i38.i.i = getelementptr inbounds %struct.netdev_queue, ptr %179, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i38.i.i) #9
  %180 = ptrtoint ptr %rx_missed_errors1.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 0, ptr %rx_missed_errors1.i, align 8
  br label %arc_emac_rx_stall_check.exit

arc_emac_rx_stall_check.exit:                     ; preds = %arc_emac_restart.exit.i, %if.then4.i.arc_emac_rx_stall_check.exit_crit_edge, %if.end.i37.arc_emac_rx_stall_check.exit_crit_edge
  ret i32 %work_done.0.lcssa.i46
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arc_mdio_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arc_emac_remove(ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  tail call void @phy_disconnect(ptr noundef %1) #9
  %call1 = tail call i32 @arc_mdio_remove(ptr noundef %add.ptr.i) #9
  tail call void @unregister_netdev(ptr noundef %ndev) #9
  %napi = getelementptr i8, ptr %ndev, i32 2336
  tail call void @__netif_napi_del(ptr noundef %napi) #9
  tail call void @synchronize_net() #9
  %clk = getelementptr i8, ptr %ndev, i32 2332
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_disable(ptr noundef %3) #9
  tail call void @clk_unprepare(ptr noundef %3) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arc_emac_open(ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %autoneg = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %autoneg to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %autoneg, align 8
  %bf.set = or i16 %bf.load, 8
  store i16 %bf.set, ptr %autoneg, align 8
  %speed = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %speed, align 8
  %duplex = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %duplex, align 4
  %advertising = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 17
  %supported = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 16
  %call.i.i = tail call i32 @__bitmap_and(ptr noundef %advertising, ptr noundef %advertising, ptr noundef %supported, i32 noundef 92) #9
  %last_rx_bd = getelementptr i8, ptr %ndev, i32 5656
  %5 = ptrtoint ptr %last_rx_bd to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %last_rx_bd, align 8
  %rxbd6 = getelementptr i8, ptr %ndev, i32 2560
  %dev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133
  br label %for.body

for.body:                                         ; preds = %if.end21.for.body_crit_edge, %entry
  %i.098 = phi i32 [ 0, %entry ], [ %inc, %if.end21.for.body_crit_edge ]
  %6 = ptrtoint ptr %rxbd6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rxbd6, align 8
  %8 = ptrtoint ptr %last_rx_bd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %last_rx_bd, align 4
  %arrayidx = getelementptr %struct.arc_emac_bd, ptr %7, i32 %9
  %arrayidx8 = getelementptr %struct.arc_emac_priv, ptr %add.ptr.i, i32 0, i32 12, i32 %9
  %call.i.i71 = tail call ptr @__netdev_alloc_skb(ptr noundef %ndev, i32 noundef 1538, i32 noundef 2592) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i71, null
  br i1 %tobool.not.i.i, label %netdev_alloc_skb_ip_align.exit.thread, label %if.end

netdev_alloc_skb_ip_align.exit.thread:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx8, align 4
  br label %cleanup28

if.end:                                           ; preds = %for.body
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i71, i32 0, i32 19
  %11 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i71, i32 0, i32 16
  %13 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %14, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %15 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.i71, ptr %arrayidx8, align 4
  %16 = load ptr, ptr %data.i.i.i, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %16) #9
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !122

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #9
  %init_name.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 3
  %17 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i72 = icmp eq ptr %18, null
  br i1 %tobool.not.i.i72, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %20, %if.end.i.i ], [ %18, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.55, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef -1) #9
  br label %if.then19

dma_map_single_attrs.exit:                        ; preds = %if.end
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %16, i32 noundef 1536) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %21 = load ptr, ptr @mem_map, align 4
  %22 = ptrtoint ptr %16 to i32
  %sub.i = add i32 %22, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i73 = getelementptr %struct.page, ptr %21, i32 %shr.i
  %and.i = and i32 %22, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i73, i32 noundef %and.i, i32 noundef 1536, i32 noundef 2, i32 noundef 0) #9
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %call41.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.if.then19_crit_edge, label %if.end21

dma_map_single_attrs.exit.if.then19_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

if.then19:                                        ; preds = %dma_map_single_attrs.exit.if.then19_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.53) #12
  %23 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx8, align 4
  tail call void @consume_skb(ptr noundef %24) #9
  br label %cleanup28

if.end21:                                         ; preds = %dma_map_single_attrs.exit
  %addr22 = getelementptr %struct.arc_emac_priv, ptr %add.ptr.i, i32 0, i32 12, i32 %9, i32 1
  %25 = ptrtoint ptr %addr22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call41.i, ptr %addr22, align 4
  %len = getelementptr %struct.arc_emac_priv, ptr %add.ptr.i, i32 0, i32 12, i32 %9, i32 2
  %26 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1536, ptr %len, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %call41.i)
  %data23 = getelementptr %struct.arc_emac_bd, ptr %7, i32 %9, i32 1
  %28 = ptrtoint ptr %data23 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %data23, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  tail call void @arm_heavy_mb() #9
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 393344, ptr %arrayidx, align 4
  %30 = ptrtoint ptr %last_rx_bd to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %last_rx_bd, align 4
  %add = add i32 %31, 1
  %rem = and i32 %add, 127
  store i32 %rem, ptr %last_rx_bd, align 4
  %inc = add nuw nsw i32 %i.098, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %if.end21.for.body_crit_edge

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %txbd_curr = getelementptr i8, ptr %ndev, i32 5648
  %32 = ptrtoint ptr %txbd_curr to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %txbd_curr, align 8
  %txbd_dirty = getelementptr i8, ptr %ndev, i32 5652
  %33 = ptrtoint ptr %txbd_dirty to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %txbd_dirty, align 4
  %txbd = getelementptr i8, ptr %ndev, i32 2564
  %34 = ptrtoint ptr %txbd to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %txbd, align 4
  %36 = call ptr @memset(ptr %35, i32 0, i32 1024)
  %regs.i = getelementptr i8, ptr %ndev, i32 2328
  %37 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i, align 8
  %add.ptr.i74 = getelementptr i8, ptr %38, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74, i32 0) #9, !srcloc !121
  %39 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i, align 8
  %add.ptr.i76 = getelementptr i8, ptr %40, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76, i32 0) #9, !srcloc !121
  %rxbd_dma = getelementptr i8, ptr %ndev, i32 2568
  %41 = ptrtoint ptr %rxbd_dma to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rxbd_dma, align 8
  %43 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i, align 8
  %add.ptr.i78 = getelementptr i8, ptr %44, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  %45 = tail call i32 @llvm.bswap.i32(i32 %42) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78, i32 %45) #9, !srcloc !121
  %txbd_dma = getelementptr i8, ptr %ndev, i32 2572
  %46 = ptrtoint ptr %txbd_dma to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %txbd_dma, align 4
  %48 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i, align 8
  %add.ptr.i80 = getelementptr i8, ptr %49, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  %50 = tail call i32 @llvm.bswap.i32(i32 %47) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80, i32 %50) #9, !srcloc !121
  %51 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i, align 8
  %add.ptr.i82 = getelementptr i8, ptr %52, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82, i32 117440512) #9, !srcloc !121
  %53 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i, align 8
  %add.ptr.i84 = getelementptr i8, ptr %54, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84, i32 402686080) #9, !srcloc !121
  %napi = getelementptr i8, ptr %ndev, i32 2336
  tail call void @napi_enable(ptr noundef %napi) #9
  %55 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %56, i32 12
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  %58 = or i32 %57, 16777216
  %59 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i, align 8
  %add.ptr.i5.i = getelementptr i8, ptr %60, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %58) #9, !srcloc !121
  %61 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %phydev, align 16
  tail call void @phy_start(ptr noundef %62) #9
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %63 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %64, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  br label %cleanup28

cleanup28:                                        ; preds = %for.end, %if.then19, %netdev_alloc_skb_ip_align.exit.thread
  %retval.2 = phi i32 [ 0, %for.end ], [ -12, %if.then19 ], [ -12, %netdev_alloc_skb_ip_align.exit.thread ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arc_emac_stop(ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %napi = getelementptr i8, ptr %ndev, i32 2336
  tail call void @napi_disable(ptr noundef %napi) #9
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 16
  tail call void @phy_stop(ptr noundef %3) #9
  %regs.i.i = getelementptr i8, ptr %ndev, i32 2328
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  %7 = and i32 %6, -117440513
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i5.i = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %7) #9, !srcloc !121
  %10 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i8 = getelementptr i8, ptr %11, i32 12
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i8) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  %13 = and i32 %12, -16777217
  %14 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i5.i10 = getelementptr i8, ptr %15, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i10, i32 %13) #9, !srcloc !121
  %txbd1.i = getelementptr i8, ptr %ndev, i32 2564
  %dev.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.016.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %txbd1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %txbd1.i, align 4
  %arrayidx.i = getelementptr %struct.arc_emac_bd, ptr %17, i32 %i.016.i
  %arrayidx3.i = getelementptr %struct.arc_emac_priv, ptr %add.ptr.i, i32 0, i32 13, i32 %i.016.i
  %18 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx3.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %addr.i = getelementptr %struct.arc_emac_priv, ptr %add.ptr.i, i32 0, i32 13, i32 %i.016.i, i32 1
  %20 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr.i, align 4
  %len.i = getelementptr %struct.arc_emac_priv, ptr %add.ptr.i, i32 0, i32 13, i32 %i.016.i, i32 2
  %22 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %21, i32 noundef %23, i32 noundef 1, i32 noundef 0) #9
  %24 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx3.i, align 4
  tail call void @__dev_kfree_skb_irq(ptr noundef %25, i32 noundef 1) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %arrayidx.i, align 4
  %data.i = getelementptr %struct.arc_emac_bd, ptr %17, i32 %i.016.i, i32 1
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %data.i, align 4
  %28 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %arrayidx3.i, align 4
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %arc_free_tx_queue.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

arc_free_tx_queue.exit:                           ; preds = %if.end.i
  %rxbd1.i = getelementptr i8, ptr %ndev, i32 2560
  br label %for.body.i18

for.body.i18:                                     ; preds = %if.end.i25.for.body.i18_crit_edge, %arc_free_tx_queue.exit
  %i.016.i14 = phi i32 [ 0, %arc_free_tx_queue.exit ], [ %inc.i23, %if.end.i25.for.body.i18_crit_edge ]
  %29 = ptrtoint ptr %rxbd1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rxbd1.i, align 8
  %arrayidx.i15 = getelementptr %struct.arc_emac_bd, ptr %30, i32 %i.016.i14
  %arrayidx3.i16 = getelementptr %struct.arc_emac_priv, ptr %add.ptr.i, i32 0, i32 12, i32 %i.016.i14
  %31 = ptrtoint ptr %arrayidx3.i16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx3.i16, align 4
  %tobool.not.i17 = icmp eq ptr %32, null
  br i1 %tobool.not.i17, label %for.body.i18.if.end.i25_crit_edge, label %if.then.i21

for.body.i18.if.end.i25_crit_edge:                ; preds = %for.body.i18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i25

if.then.i21:                                      ; preds = %for.body.i18
  call void @__sanitizer_cov_trace_pc() #11
  %addr.i19 = getelementptr %struct.arc_emac_priv, ptr %add.ptr.i, i32 0, i32 12, i32 %i.016.i14, i32 1
  %33 = ptrtoint ptr %addr.i19 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %addr.i19, align 4
  %len.i20 = getelementptr %struct.arc_emac_priv, ptr %add.ptr.i, i32 0, i32 12, i32 %i.016.i14, i32 2
  %35 = ptrtoint ptr %len.i20 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len.i20, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %34, i32 noundef %36, i32 noundef 2, i32 noundef 0) #9
  %37 = ptrtoint ptr %arrayidx3.i16 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx3.i16, align 4
  tail call void @__dev_kfree_skb_irq(ptr noundef %38, i32 noundef 1) #9
  br label %if.end.i25

if.end.i25:                                       ; preds = %if.then.i21, %for.body.i18.if.end.i25_crit_edge
  %39 = ptrtoint ptr %arrayidx.i15 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %arrayidx.i15, align 4
  %data.i22 = getelementptr %struct.arc_emac_bd, ptr %30, i32 %i.016.i14, i32 1
  %40 = ptrtoint ptr %data.i22 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %data.i22, align 4
  %41 = ptrtoint ptr %arrayidx3.i16 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %arrayidx3.i16, align 4
  %inc.i23 = add nuw nsw i32 %i.016.i14, 1
  %exitcond.not.i24 = icmp eq i32 %inc.i23, 128
  br i1 %exitcond.not.i24, label %arc_free_rx_queue.exit, label %if.end.i25.for.body.i18_crit_edge

if.end.i25.for.body.i18_crit_edge:                ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i18

arc_free_rx_queue.exit:                           ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arc_emac_tx(ptr noundef %skb, ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %txbd_curr1 = getelementptr i8, ptr %ndev, i32 5648
  %txbd = getelementptr i8, ptr %ndev, i32 2564
  %0 = ptrtoint ptr %txbd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %txbd, align 4
  %2 = ptrtoint ptr %txbd_curr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %txbd_curr1, align 4
  %arrayidx = getelementptr %struct.arc_emac_bd, ptr %1, i32 %3
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %5)
  %cmp.i = icmp ugt i32 %5, 59
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %skb_padto.exit, !prof !122

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

skb_padto.exit:                                   ; preds = %entry
  %sub.i = sub nuw nsw i32 60, %5
  %call.i.i = tail call i32 @__skb_pad(ptr noundef %skb, i32 noundef %sub.i, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %skb_padto.exit.if.end_crit_edge, label %skb_padto.exit.cleanup_crit_edge

skb_padto.exit.cleanup_crit_edge:                 ; preds = %skb_padto.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

skb_padto.exit.if.end_crit_edge:                  ; preds = %skb_padto.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %skb_padto.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len1.i, align 4
  %8 = tail call i32 @llvm.umax.i32(i32 %7, i32 60)
  %txbd_dirty.i = getelementptr i8, ptr %ndev, i32 5652
  %9 = ptrtoint ptr %txbd_dirty.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %txbd_dirty.i, align 4
  %11 = ptrtoint ptr %txbd_curr1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %txbd_curr1, align 8
  %13 = xor i32 %12, -1
  %sub1.i = add i32 %10, %13
  %rem.i = and i32 %sub1.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool7.not = icmp eq i32 %rem.i, 0
  br i1 %tobool7.not, label %if.then11, label %if.end12, !prof !123

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %14 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %15, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.56) #12
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %dev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %17) #9
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end12
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !122

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #9
  %init_name.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 3
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
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %21, %if.end.i.i ], [ %19, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.55, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef -1) #9
  br label %if.then23

dma_map_single_attrs.exit:                        ; preds = %if.end12
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %17, i32 noundef %8) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %22 = load ptr, ptr @mem_map, align 4
  %23 = ptrtoint ptr %17 to i32
  %sub.i99 = add i32 %23, 1073741824
  %shr.i = lshr i32 %sub.i99, 12
  %add.ptr.i100 = getelementptr %struct.page, ptr %22, i32 %shr.i
  %and.i = and i32 %23, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i100, i32 noundef %and.i, i32 noundef %8, i32 noundef 1, i32 noundef 0) #9
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %call41.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i102 = icmp eq i32 %call41.i, -1
  br i1 %cmp.i102, label %dma_map_single_attrs.exit.if.then23_crit_edge, label %if.end25

dma_map_single_attrs.exit.if.then23_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

if.then23:                                        ; preds = %dma_map_single_attrs.exit.if.then23_crit_edge, %dma_map_single_attrs.exit.thread
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 7
  %24 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %tx_dropped, align 4
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 5
  %26 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_errors, align 4
  %inc24 = add i32 %27, 1
  store i32 %inc24, ptr %tx_errors, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #9
  br label %cleanup

if.end25:                                         ; preds = %dma_map_single_attrs.exit
  %28 = ptrtoint ptr %txbd_curr1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %txbd_curr1, align 4
  %addr27 = getelementptr %struct.arc_emac_priv, ptr %add.ptr.i, i32 0, i32 13, i32 %29, i32 1
  %30 = ptrtoint ptr %addr27 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call41.i, ptr %addr27, align 4
  %31 = load i32, ptr %txbd_curr1, align 4
  %len30 = getelementptr %struct.arc_emac_priv, ptr %add.ptr.i, i32 0, i32 13, i32 %31, i32 2
  %32 = ptrtoint ptr %len30 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %8, ptr %len30, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %call41.i)
  %34 = ptrtoint ptr %txbd to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %txbd, align 4
  %36 = ptrtoint ptr %txbd_curr1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %txbd_curr1, align 4
  %data33 = getelementptr %struct.arc_emac_bd, ptr %35, i32 %37, i32 1
  %38 = ptrtoint ptr %data33 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %33, ptr %data33, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !128
  tail call void @arm_heavy_mb() #9
  tail call void @skb_clone_tx_timestamp(ptr noundef %skb) #9
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %39 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %end.i.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %tx_flags.i, align 1
  %43 = and i8 %42, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i = icmp eq i8 %43, 0
  br i1 %tobool.not.i, label %if.end25.skb_tx_timestamp.exit_crit_edge, label %if.then.i103

if.end25.skb_tx_timestamp.exit_crit_edge:         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_tx_timestamp.exit

if.then.i103:                                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #9
  br label %skb_tx_timestamp.exit

skb_tx_timestamp.exit:                            ; preds = %if.then.i103, %if.end25.skb_tx_timestamp.exit_crit_edge
  %or = or i32 %8, -2147287040
  %44 = tail call i32 @llvm.bswap.i32(i32 %or)
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !129
  tail call void @arm_heavy_mb() #9
  %46 = ptrtoint ptr %txbd_curr1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %txbd_curr1, align 4
  %arrayidx38 = getelementptr %struct.arc_emac_priv, ptr %add.ptr.i, i32 0, i32 13, i32 %47
  %48 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %skb, ptr %arrayidx38, align 4
  %49 = load i32, ptr %txbd_curr1, align 4
  %add = add i32 %49, 1
  %rem = and i32 %add, 127
  store i32 %rem, ptr %txbd_curr1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !130
  %50 = ptrtoint ptr %txbd_dirty.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %txbd_dirty.i, align 4
  %52 = ptrtoint ptr %txbd_curr1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %txbd_curr1, align 8
  %54 = xor i32 %53, -1
  %sub1.i107 = add i32 %51, %54
  %rem.i108 = and i32 %sub1.i107, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i108)
  %tobool47.not = icmp eq i32 %rem.i108, 0
  br i1 %tobool47.not, label %if.then48, label %skb_tx_timestamp.exit.if.end59_crit_edge

skb_tx_timestamp.exit.if.end59_crit_edge:         ; preds = %skb_tx_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then48:                                        ; preds = %skb_tx_timestamp.exit
  %_tx.i.i109 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %55 = ptrtoint ptr %_tx.i.i109 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %_tx.i.i109, align 128
  %state.i.i110 = getelementptr inbounds %struct.netdev_queue, ptr %56, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i110) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !131
  %57 = ptrtoint ptr %txbd_dirty.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %txbd_dirty.i, align 4
  %59 = ptrtoint ptr %txbd_curr1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %txbd_curr1, align 8
  %61 = xor i32 %60, -1
  %sub1.i113 = add i32 %58, %61
  %rem.i114 = and i32 %sub1.i113, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i114)
  %tobool56.not = icmp eq i32 %rem.i114, 0
  br i1 %tobool56.not, label %if.then48.if.end59_crit_edge, label %if.then57

if.then48.if.end59_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then57:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %_tx.i.i109 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %_tx.i.i109, align 128
  %state.i.i116 = getelementptr inbounds %struct.netdev_queue, ptr %63, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i116) #9
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.then48.if.end59_crit_edge, %skb_tx_timestamp.exit.if.end59_crit_edge
  %regs.i = getelementptr i8, ptr %ndev, i32 2328
  %64 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i, align 8
  %add.ptr.i117 = getelementptr i8, ptr %65, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117, i32 128) #9, !srcloc !121
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.then23, %if.then11, %skb_padto.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 16, %if.then11 ], [ 0, %if.then23 ], [ 0, %if.end59 ], [ 0, %skb_padto.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arc_emac_set_rx_mode(ptr noundef readonly %ndev) #0 align 64 {
entry:
  %filter = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %regs.i.i41 = getelementptr i8, ptr %ndev, i32 2328
  %2 = ptrtoint ptr %regs.i.i41 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i41, align 8
  %add.ptr.i.i42 = getelementptr i8, ptr %3, i32 12
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i42) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = or i32 %4, 524288
  %6 = ptrtoint ptr %regs.i.i41 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i41, align 8
  %add.ptr.i5.i = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %5) #9, !srcloc !121
  br label %if.end25

if.else:                                          ; preds = %entry
  %8 = and i32 %4, -524289
  %9 = ptrtoint ptr %regs.i.i41 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i41, align 8
  %add.ptr.i5.i43 = getelementptr i8, ptr %10, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i43, i32 %8) #9, !srcloc !121
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 8
  %and2 = and i32 %12, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else5, label %if.then4

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %regs.i.i41 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i.i41, align 8
  %add.ptr.i44 = getelementptr i8, ptr %14, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 -1) #9, !srcloc !121
  %15 = ptrtoint ptr %regs.i.i41 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i.i41, align 8
  %add.ptr.i46 = getelementptr i8, ptr %16, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 -1) #9, !srcloc !121
  br label %if.end25

if.else5:                                         ; preds = %if.else
  %and7 = and i32 %12, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else23, label %if.then9

if.then9:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %filter) #9
  %17 = ptrtoint ptr %filter to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %filter, align 8
  %mc = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 66
  %18 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %18)
  %ha.055 = load ptr, ptr %mc, align 4
  %cmp.not56 = icmp eq ptr %ha.055, %mc
  br i1 %cmp.not56, label %if.then9.for.end_crit_edge, label %if.then9.for.body_crit_edge

if.then9.for.body_crit_edge:                      ; preds = %if.then9
  br label %for.body

if.then9.for.end_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then9.for.body_crit_edge
  %ha.057 = phi ptr [ %ha.0, %for.body.for.body_crit_edge ], [ %ha.055, %if.then9.for.body_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.057, i32 0, i32 2
  %call13 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #13
  %shr = lshr i32 %call13, 26
  %and14 = and i32 %shr, 31
  %shl = shl nuw i32 1, %and14
  %19 = lshr i32 %call13, 31
  %arrayidx = getelementptr [2 x i32], ptr %filter, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %or = or i32 %shl, %21
  store i32 %or, ptr %arrayidx, align 4
  %22 = ptrtoint ptr %ha.057 to i32
  call void @__asan_load4_noabort(i32 %22)
  %ha.0 = load ptr, ptr %ha.057, align 4
  %cmp.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then9.for.end_crit_edge
  %23 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %filter, align 8
  %25 = ptrtoint ptr %regs.i.i41 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i.i41, align 8
  %add.ptr.i48 = getelementptr i8, ptr %26, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  %27 = tail call i32 @llvm.bswap.i32(i32 %24) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 %27) #9, !srcloc !121
  %arrayidx22 = getelementptr inbounds [2 x i32], ptr %filter, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx22, align 4
  %30 = ptrtoint ptr %regs.i.i41 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i.i41, align 8
  %add.ptr.i50 = getelementptr i8, ptr %31, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  %32 = tail call i32 @llvm.bswap.i32(i32 %29) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %32) #9, !srcloc !121
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %filter) #9
  br label %if.end25

if.else23:                                        ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %regs.i.i41 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i.i41, align 8
  %add.ptr.i52 = getelementptr i8, ptr %34, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 0) #9, !srcloc !121
  %35 = ptrtoint ptr %regs.i.i41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i.i41, align 8
  %add.ptr.i54 = getelementptr i8, ptr %36, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 0) #9, !srcloc !121
  br label %if.end25

if.end25:                                         ; preds = %if.else23, %for.end, %if.then4, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arc_emac_set_address(ptr noundef %ndev, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sa_data, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %if.end
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %6 to i32
  %or.i.i = or i32 %3, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end3

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dev_addr_mod(ptr noundef %ndev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #9
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 86
  %7 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_addr.i, align 64
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %arrayidx2.i = getelementptr i8, ptr %8, i32 4
  %11 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx2.i, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #9
  %conv.i = zext i16 %13 to i32
  %regs.i.i = getelementptr i8, ptr %ndev, i32 2328
  %14 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i6.i = getelementptr i8, ptr %15, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %10) #9, !srcloc !121
  %16 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i8.i = getelementptr i8, ptr %17, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  %18 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %18) #9, !srcloc !121
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %is_valid_ether_addr.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -16, %entry.cleanup_crit_edge ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -99, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_do_ioctl_running(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @arc_emac_stats(ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36
  %regs.i = getelementptr i8, ptr %ndev, i32 2328
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %add.ptr.i35 = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35) #9, !srcloc !118
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 8
  %add.ptr.i37 = getelementptr i8, ptr %5, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37) #9, !srcloc !118
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  %shr = lshr i32 %3, 8
  %shr5 = lshr i32 %3, 16
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 4
  %8 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_errors, align 4
  %conv7 = and i32 %3, 255
  %conv8 = and i32 %shr, 255
  %conv10 = and i32 %shr5, 255
  %add = add nuw nsw i32 %conv8, %conv7
  %add9 = add nuw nsw i32 %add, %conv10
  %add11 = add i32 %add9, %7
  %add13 = add i32 %add11, %9
  store i32 %add13, ptr %rx_errors, align 4
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 11
  %10 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_over_errors, align 4
  %add15 = add i32 %11, %conv10
  store i32 %add15, ptr %rx_over_errors, align 4
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 13
  %12 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_frame_errors, align 4
  %add17 = add i32 %13, %conv8
  store i32 %add17, ptr %rx_frame_errors, align 4
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 12
  %14 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_crc_errors, align 4
  %add19 = add i32 %15, %conv7
  store i32 %add19, ptr %rx_crc_errors, align 4
  %rx_missed_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 15
  %16 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_missed_errors, align 4
  %add20 = add i32 %17, %7
  store i32 %add20, ptr %rx_missed_errors, align 4
  ret ptr %stats1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arc_emac_poll_controller(ptr noundef %dev) #0 align 64 {
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
  %call = tail call i32 @arc_emac_intr(i32 noundef %3, ptr noundef %dev)
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %5) #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

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
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arc_emac_get_drvinfo(ptr nocapture noundef readonly %ndev, ptr noundef %info) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef %1, i32 noundef 32) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !80, !82, !84, !86, !87, !89, !91, !93, !94, !95, !97, !99, !101, !103, !105}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/arc/emac_main.c", i32 864, i32 44}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/arc/emac_main.c", i32 866, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @arc_emac_probe._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @arc_emac_probe._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/arc/emac_main.c", i32 873, i32 3}
!12 = !{ptr @arc_emac_probe._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @arc_emac_probe._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/arc/emac_main.c", i32 881, i32 3}
!16 = !{ptr @arc_emac_probe._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @arc_emac_probe._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/arc/emac_main.c", i32 899, i32 2}
!20 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @arc_emac_probe.__UNIQUE_ID_ddebug351, !19, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!22 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/arc/emac_main.c", i32 904, i32 4}
!24 = !{ptr @arc_emac_probe._entry.14, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @arc_emac_probe._entry_ptr.16, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/arc/emac_main.c", i32 911, i32 42}
!28 = !{ptr @.str.19, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/arc/emac_main.c", i32 913, i32 4}
!30 = !{ptr @arc_emac_probe._entry.18, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @arc_emac_probe._entry_ptr.20, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.22, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/arc/emac_main.c", i32 923, i32 3}
!34 = !{ptr @arc_emac_probe._entry.21, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @arc_emac_probe._entry_ptr.23, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.25, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/arc/emac_main.c", i32 927, i32 2}
!38 = !{ptr @.str.26, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @arc_emac_probe._entry.24, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @arc_emac_probe._entry_ptr.27, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.29, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/arc/emac_main.c", i32 933, i32 2}
!43 = !{ptr @arc_emac_probe._entry.28, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @arc_emac_probe._entry_ptr.30, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.32, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/arc/emac_main.c", i32 939, i32 3}
!47 = !{ptr @arc_emac_probe._entry.31, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @arc_emac_probe._entry_ptr.33, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.35, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/arc/emac_main.c", i32 949, i32 2}
!51 = !{ptr @arc_emac_probe._entry.34, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @arc_emac_probe._entry_ptr.36, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.38, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/arc/emac_main.c", i32 956, i32 3}
!55 = !{ptr @arc_emac_probe._entry.37, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @arc_emac_probe._entry_ptr.39, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.40, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/arc/emac_main.c", i32 964, i32 2}
!59 = !{ptr @arc_emac_probe.__UNIQUE_ID_ddebug352, !58, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!60 = !{ptr @.str.42, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/arc/emac_main.c", i32 969, i32 3}
!62 = !{ptr @arc_emac_probe._entry.41, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @arc_emac_probe._entry_ptr.43, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.45, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/arc/emac_main.c", i32 976, i32 3}
!66 = !{ptr @arc_emac_probe._entry.44, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @arc_emac_probe._entry_ptr.46, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.48, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/arc/emac_main.c", i32 981, i32 2}
!70 = !{ptr @arc_emac_probe._entry.47, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @arc_emac_probe._entry_ptr.49, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.51, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/arc/emac_main.c", i32 988, i32 3}
!74 = !{ptr @arc_emac_probe._entry.50, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @arc_emac_probe._entry_ptr.52, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @__ksymtab_arc_emac_probe, !77, !"__ksymtab_arc_emac_probe", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/arc/emac_main.c", i32 1008, i32 1}
!78 = !{ptr @__ksymtab_arc_emac_remove, !79, !"__ksymtab_arc_emac_remove", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/arc/emac_main.c", i32 1024, i32 1}
!80 = !{ptr @__UNIQUE_ID_author353, !81, !"__UNIQUE_ID_author353", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/arc/emac_main.c", i32 1026, i32 1}
!82 = !{ptr @__UNIQUE_ID_description354, !83, !"__UNIQUE_ID_description354", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/arc/emac_main.c", i32 1027, i32 1}
!84 = !{ptr @__UNIQUE_ID_file355, !85, !"__UNIQUE_ID_file355", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/arc/emac_main.c", i32 1028, i32 1}
!86 = !{ptr @__UNIQUE_ID_license356, !85, !"__UNIQUE_ID_license356", i1 false, i1 false}
!87 = !{ptr @arc_emac_netdev_ops, !88, !"arc_emac_netdev_ops", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/arc/emac_main.c", i32 840, i32 36}
!89 = !{ptr @.str.53, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/arc/emac_main.c", i32 451, i32 21}
!91 = distinct !{null, !92, !"__already_done", i1 false, i1 false}
!92 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!93 = !{ptr @.str.54, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.55, !92, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.56, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/arc/emac_main.c", i32 691, i32 20}
!97 = !{ptr @arc_emac_ethtool_ops, !98, !"arc_emac_ethtool_ops", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/arc/emac_main.c", i32 97, i32 33}
!99 = !{ptr @.str.57, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/arc/emac_main.c", i32 202, i32 22}
!101 = !{ptr @.str.58, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/arc/emac_main.c", i32 218, i32 22}
!103 = !{ptr @.str.59, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/arc/emac_main.c", i32 230, i32 22}
!105 = !{ptr @.str.60, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/arc/emac_main.c", i32 797, i32 21}
!107 = !{i32 1, !"wchar_size", i32 2}
!108 = !{i32 1, !"min_enum_size", i32 4}
!109 = !{i32 8, !"branch-target-enforcement", i32 0}
!110 = !{i32 8, !"sign-return-address", i32 0}
!111 = !{i32 8, !"sign-return-address-all", i32 0}
!112 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!113 = !{i32 7, !"uwtable", i32 1}
!114 = !{i32 7, !"frame-pointer", i32 2}
!115 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!116 = !{!"auto-init"}
!117 = !{i64 2148880425, i64 2148880430, i64 2148880443, i64 2148880487, i64 2148880521, i64 2148880542}
!118 = !{i64 6074252}
!119 = !{i64 2153614601}
!120 = !{i64 2153615956}
!121 = !{i64 6073834}
!122 = !{!"branch_weights", i32 2000, i32 1}
!123 = !{!"branch_weights", i32 1, i32 2000}
!124 = !{i64 2156673294}
!125 = !{i64 2156674811}
!126 = !{i64 2156684018}
!127 = !{i64 2156675812}
!128 = !{i64 2156682423}
!129 = !{i64 2156682810}
!130 = !{i64 2156682966}
!131 = !{i64 2156683118}
