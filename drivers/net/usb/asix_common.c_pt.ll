; ModuleID = '/llk/IR_all_yes/drivers/net/usb/asix_common.c_pt.bc'
source_filename = "../drivers/net/usb/asix_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.usbnet = type { ptr, ptr, ptr, ptr, ptr, %struct.wait_queue_head, %struct.mutex, i8, i8, i8, i16, i16, i8, i32, i32, ptr, i32, %struct.timer_list, ptr, ptr, i32, [5 x i32], i32, i32, i32, %struct.mii_if_info, i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, i32, %struct.mutex, %struct.usb_anchor, %struct.tasklet_struct, %struct.work_struct, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.117, i32 }
%union.anon.117 = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.asix_rx_fixup_info = type { ptr, i32, i16, i8 }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.99, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.99 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.asix_common_private = type { ptr, ptr, i16, i16, %struct.asix_rx_fixup_info, ptr, ptr, i16, [20 x i8], i8 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to read reg index 0x%04x: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to write reg index 0x%04x: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"asix_rx_fixup() Data Header synchronisation was lost, remaining %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"asix_rx_fixup() Bad Header Length 0x%x, offset %d\0A\00", [45 x i8] zeroinitializer }, align 32
@asix_rx_fixup_internal.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 0, i8 43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"asix\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"asix_rx_fixup_internal\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/net/usb/asix_common.c\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"asix_rx_fixup() Bad RX Length %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"asix_rx_fixup() Bad SKB Length %d, %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to enable software MII access\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to enable hardware MII access\0A\00", [58 x i8] zeroinitializer }, align 32
@asix_read_phy_addr.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.11, ptr @.str.6, ptr @.str.12, i8 0, i8 83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"asix_read_phy_addr\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s PHY address 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"internal\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"external\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error reading PHY_ID register: %02x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to send software reset: %02x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error reading RX_CTL register: %02x\0A\00", [59 x i8] zeroinitializer }, align 32
@asix_write_rx_ctl.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.18, ptr @.str.6, ptr @.str.19, i8 0, i8 93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"asix_write_rx_ctl\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"asix_write_rx_ctl() - mode = 0x%04x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to write RX_CTL mode to 0x%04x: %02x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Error reading Medium Status register: %02x\0A\00", [52 x i8] zeroinitializer }, align 32
@asix_write_medium_mode.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.22, ptr @.str.6, ptr @.str.23, i8 0, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"asix_write_medium_mode\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"asix_write_medium_mode() - mode = 0x%04x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to write Medium Mode mode to 0x%04x: %02x\0A\00", [46 x i8] zeroinitializer }, align 32
@asix_write_gpio.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.25, ptr @.str.6, ptr @.str.26, i8 0, i8 109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"asix_write_gpio\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"asix_write_gpio() - value = 0x%04x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to write GPIO value 0x%04x: %02x\0A\00", [55 x i8] zeroinitializer }, align 32
@asix_mdio_read.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.28, ptr @.str.6, ptr @.str.29, i8 0, i8 -128, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"asix_mdio_read\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"asix_mdio_read() phy_id=0x%02x, loc=0x%02x, returns=0x%04x\0A\00", [36 x i8] zeroinitializer }, align 32
@asix_mdio_read_nopm.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.30, ptr @.str.6, ptr @.str.31, i8 0, i8 -109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"asix_mdio_read_nopm\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"asix_mdio_read_nopm() phy_id=0x%02x, loc=0x%02x, returns=0x%04x\0A\00", [63 x i8] zeroinitializer }, align 32
@asix_mdio_write_nopm.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.32, ptr @.str.6, ptr @.str.33, i8 0, i8 -106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"asix_mdio_write_nopm\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"asix_mdio_write() phy_id=0x%02x, loc=0x%02x, val=0x%04x\0A\00", [39 x i8] zeroinitializer }, align 32
@asix_set_eeprom.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.34, ptr @.str.6, ptr @.str.35, i8 0, i8 -80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"asix_set_eeprom\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"write EEPROM len %d, offset %d, magic 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to read EEPROM at offset 0x%02x.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable EEPROM write\0A\00", [33 x i8] zeroinitializer }, align 32
@asix_set_eeprom.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.34, ptr @.str.6, ptr @.str.38, i8 0, i8 -68, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"write to EEPROM at offset 0x%02x, data 0x%04x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to write EEPROM at offset 0x%02x.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to disable EEPROM write\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"22-Dec-2011\00", [20 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@__asix_mdio_write.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.42, ptr @.str.6, ptr @.str.33, i8 0, i8 -124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__asix_mdio_write\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967277]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967277]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967277]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967277]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967277]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967277]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 31, i32 25 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 54, i32 25 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 134, i32 25 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 166, i32 26 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 172, i32 5 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 209, i32 24 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 303, i32 24 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 312, i32 24 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 333, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 339, i32 23 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 350, i32 24 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 361, i32 24 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 373, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 376, i32 24 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 389, i32 24 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 402, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 406, i32 24 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 437, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 440, i32 24 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 514, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 587, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 600, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 705, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 728, i32 20 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 747, i32 19 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 753, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 758, i32 20 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 767, i32 19 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 782, i32 25 }
@___asan_gen_.178 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.179 = private constant [33 x i8] c"../drivers/net/usb/asix_common.c\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 527, i32 2 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asix_read_cmd(ptr noundef %dev, i8 noundef zeroext %cmd, i16 noundef zeroext %value, i16 noundef zeroext %index, i16 noundef zeroext %size, ptr noundef %data, i32 noundef %in_pm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !93

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 20, 0\0A.popsection", ""() #9, !srcloc !94
  unreachable

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_pm)
  %tobool10.not = icmp eq i32 %in_pm, 0
  %usbnet_read_cmd.usbnet_read_cmd_nopm = select i1 %tobool10.not, ptr @usbnet_read_cmd, ptr @usbnet_read_cmd_nopm
  %call = tail call i32 %usbnet_read_cmd.usbnet_read_cmd_nopm(ptr noundef nonnull %dev, i8 noundef zeroext %cmd, i8 noundef zeroext -64, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef %data, i16 noundef zeroext %size) #9, !callees !95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then19, label %do.end9.if.end20_crit_edge, !prof !93

do.end9.if.end20_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then19:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %conv = zext i16 %index to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %conv, i32 noundef %call) #12
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %do.end9.if.end20_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_read_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_read_cmd_nopm(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asix_write_cmd(ptr noundef %dev, i8 noundef zeroext %cmd, i16 noundef zeroext %value, i16 noundef zeroext %index, i16 noundef zeroext %size, ptr noundef %data, i32 noundef %in_pm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !93

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 43, 0\0A.popsection", ""() #9, !srcloc !96
  unreachable

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_pm)
  %tobool10.not = icmp eq i32 %in_pm, 0
  %usbnet_write_cmd.usbnet_write_cmd_nopm = select i1 %tobool10.not, ptr @usbnet_write_cmd, ptr @usbnet_write_cmd_nopm
  %call = tail call i32 %usbnet_write_cmd.usbnet_write_cmd_nopm(ptr noundef nonnull %dev, i8 noundef zeroext %cmd, i8 noundef zeroext 64, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef %data, i16 noundef zeroext %size) #9, !callees !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then19, label %do.end9.if.end20_crit_edge, !prof !93

do.end9.if.end20_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then19:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %conv = zext i16 %index to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef %conv, i32 noundef %call) #12
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %do.end9.if.end20_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_write_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_write_cmd_nopm(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @asix_write_cmd_async(ptr noundef %dev, i8 noundef zeroext %cmd, i16 noundef zeroext %value, i16 noundef zeroext %index, i16 noundef zeroext %size, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usbnet_write_cmd_async(ptr noundef %dev, i8 noundef zeroext %cmd, i8 noundef zeroext 64, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef %data, i16 noundef zeroext %size) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_write_cmd_async(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asix_rx_fixup_internal(ptr noundef %dev, ptr nocapture noundef readonly %skb, ptr noundef %rx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %remaining = getelementptr inbounds %struct.asix_rx_fixup_info, ptr %rx, i32 0, i32 2
  %0 = ptrtoint ptr %remaining to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %remaining, align 4
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %land.lhs.true

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

land.lhs.true:                                    ; preds = %entry
  %add = add nuw nsw i32 %conv, 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp.not = icmp ugt i32 %add, %3
  br i1 %cmp.not, label %land.lhs.true.if.end18_crit_edge, label %if.then

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then:                                          ; preds = %land.lhs.true
  %add6 = add nuw nsw i32 %conv, 1
  %and = and i32 %add6, 65534
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %and
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %add.ptr, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  %header = getelementptr inbounds %struct.asix_rx_fixup_info, ptr %rx, i32 0, i32 1
  %9 = ptrtoint ptr %header to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %header, align 4
  %neg = xor i32 %8, -1
  %shr = lshr i32 %neg, 16
  %10 = xor i32 %shr, %8
  %11 = and i32 %10, 2047
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp13.not = icmp eq i32 %11, 0
  br i1 %cmp13.not, label %if.then.if.end18_crit_edge, label %if.then15

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then15:                                        ; preds = %if.then
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %12 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %13, ptr noundef nonnull @.str.2, i32 noundef %conv) #12
  %14 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.then15.reset_asix_rx_fixup_info.exit_crit_edge, label %if.then.i

if.then15.reset_asix_rx_fixup_info.exit_crit_edge: ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %reset_asix_rx_fixup_info.exit

if.then.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_skb_reason(ptr noundef nonnull %15, i32 noundef 0) #9
  %16 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %rx, align 4
  br label %reset_asix_rx_fixup_info.exit

reset_asix_rx_fixup_info.exit:                    ; preds = %if.then.i, %if.then15.reset_asix_rx_fixup_info.exit_crit_edge
  %17 = ptrtoint ptr %remaining to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %remaining, align 4
  %split_head.i = getelementptr inbounds %struct.asix_rx_fixup_info, ptr %rx, i32 0, i32 3
  %18 = ptrtoint ptr %split_head.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %split_head.i, align 2
  %19 = ptrtoint ptr %header to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %header, align 4
  br label %if.end18

if.end18:                                         ; preds = %reset_asix_rx_fixup_info.exit, %if.then.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge, %entry.if.end18_crit_edge
  %len20 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %20 = ptrtoint ptr %len20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp21.not253 = icmp ult i32 %21, 2
  br i1 %cmp21.not253, label %if.end18.while.end_crit_edge, label %while.body.lr.ph

if.end18.while.end_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end18
  %split_head37 = getelementptr inbounds %struct.asix_rx_fixup_info, ptr %rx, i32 0, i32 3
  %data43 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %header47 = getelementptr inbounds %struct.asix_rx_fixup_info, ptr %rx, i32 0, i32 1
  %net71 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %22 = phi i32 [ %21, %while.body.lr.ph ], [ %89, %cleanup.while.body_crit_edge ]
  %add19255 = phi i32 [ 2, %while.body.lr.ph ], [ %add19, %cleanup.while.body_crit_edge ]
  %offset.1254 = phi i32 [ 0, %while.body.lr.ph ], [ %add131, %cleanup.while.body_crit_edge ]
  %23 = ptrtoint ptr %remaining to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %remaining, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool24.not = icmp eq i16 %24, 0
  br i1 %tobool24.not, label %if.then25, label %while.body.if.end93_crit_edge

while.body.if.end93_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

if.then25:                                        ; preds = %while.body
  %sub = sub i32 %22, %offset.1254
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub)
  %cmp27 = icmp eq i32 %sub, 2
  br i1 %cmp27, label %cleanup.thread234, label %if.end36

cleanup.thread234:                                ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %data43 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data43, align 4
  %add.ptr31 = getelementptr i8, ptr %26, i32 %offset.1254
  %27 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %add.ptr31, align 1
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #9
  %conv33 = zext i16 %29 to i32
  %30 = ptrtoint ptr %header47 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv33, ptr %header47, align 4
  %31 = ptrtoint ptr %split_head37 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %split_head37, align 2
  br label %while.end

if.end36:                                         ; preds = %if.then25
  %32 = ptrtoint ptr %split_head37 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %split_head37, align 2, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool38.not = icmp eq i8 %33, 0
  %34 = ptrtoint ptr %data43 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data43, align 4
  %add.ptr51 = getelementptr i8, ptr %35, i32 %offset.1254
  br i1 %tobool38.not, label %if.else, label %if.then42

if.then42:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %add.ptr51 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %add.ptr51, align 1
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #9
  %conv46 = zext i16 %38 to i32
  %shl = shl nuw i32 %conv46, 16
  %39 = ptrtoint ptr %header47 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %header47, align 4
  %or = or i32 %shl, %40
  store i32 %or, ptr %header47, align 4
  %41 = ptrtoint ptr %split_head37 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %split_head37, align 2
  br label %if.end55

if.else:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %add.ptr51 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %add.ptr51, align 1
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #9
  %45 = ptrtoint ptr %header47 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %header47, align 4
  %add54 = add i32 %offset.1254, 4
  br label %if.end55

if.end55:                                         ; preds = %if.else, %if.then42
  %offset.2 = phi i32 [ %add19255, %if.then42 ], [ %add54, %if.else ]
  %46 = ptrtoint ptr %header47 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %header47, align 4
  %48 = trunc i32 %47 to i16
  %conv58 = and i16 %48, 2047
  %conv59 = zext i16 %conv58 to i32
  %neg61 = xor i32 %47, -1
  %shr62 = lshr i32 %neg61, 16
  %and63 = and i32 %shr62, 2047
  call void @__sanitizer_cov_trace_cmp4(i32 %and63, i32 %conv59)
  %cmp64.not = icmp eq i32 %and63, %conv59
  %49 = ptrtoint ptr %net71 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %net71, align 4
  br i1 %cmp64.not, label %if.end69, label %if.then66

if.then66:                                        ; preds = %if.end55
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %50, ptr noundef nonnull @.str.3, i32 noundef %47, i32 noundef %offset.2) #12
  %51 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rx, align 4
  %tobool.not.i213 = icmp eq ptr %52, null
  br i1 %tobool.not.i213, label %if.then66.reset_asix_rx_fixup_info.exit218_crit_edge, label %if.then.i214

if.then66.reset_asix_rx_fixup_info.exit218_crit_edge: ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #11
  br label %reset_asix_rx_fixup_info.exit218

if.then.i214:                                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_skb_reason(ptr noundef nonnull %52, i32 noundef 0) #9
  %53 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %rx, align 4
  br label %reset_asix_rx_fixup_info.exit218

reset_asix_rx_fixup_info.exit218:                 ; preds = %if.then.i214, %if.then66.reset_asix_rx_fixup_info.exit218_crit_edge
  %54 = ptrtoint ptr %remaining to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 0, ptr %remaining, align 4
  %55 = ptrtoint ptr %split_head37 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %split_head37, align 2
  br label %cleanup139.sink.split

if.end69:                                         ; preds = %if.end55
  %mtu = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 20
  %56 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mtu, align 4
  %add73 = add i32 %57, 18
  call void @__sanitizer_cov_trace_cmp4(i32 %add73, i32 %conv59)
  %cmp74 = icmp ult i32 %add73, %conv59
  br i1 %cmp74, label %do.body77, label %if.end88

do.body77:                                        ; preds = %if.end69
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @asix_rx_fixup_internal.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@asix_rx_fixup_internal, %if.then82)) #9
          to label %do.end87 [label %if.then82], !srcloc !99

if.then82:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %net71 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %net71, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @asix_rx_fixup_internal.__UNIQUE_ID_ddebug356, ptr noundef %59, ptr noundef nonnull @.str.7, i32 noundef %conv59) #9
  br label %do.end87

do.end87:                                         ; preds = %if.then82, %do.body77
  %60 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rx, align 4
  %tobool.not.i219 = icmp eq ptr %61, null
  br i1 %tobool.not.i219, label %do.end87.reset_asix_rx_fixup_info.exit224_crit_edge, label %if.then.i220

do.end87.reset_asix_rx_fixup_info.exit224_crit_edge: ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %reset_asix_rx_fixup_info.exit224

if.then.i220:                                     ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_skb_reason(ptr noundef nonnull %61, i32 noundef 0) #9
  %62 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %rx, align 4
  br label %reset_asix_rx_fixup_info.exit224

reset_asix_rx_fixup_info.exit224:                 ; preds = %if.then.i220, %do.end87.reset_asix_rx_fixup_info.exit224_crit_edge
  %63 = ptrtoint ptr %remaining to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 0, ptr %remaining, align 4
  %64 = ptrtoint ptr %split_head37 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %split_head37, align 2
  br label %cleanup139.sink.split

if.end88:                                         ; preds = %if.end69
  %add.i.i = add nuw nsw i32 %conv59, 2
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %50, i32 noundef %add.i.i, i32 noundef 2592) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end88.netdev_alloc_skb_ip_align.exit_crit_edge, label %if.then.i.i

if.end88.netdev_alloc_skb_ip_align.exit_crit_edge: ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %netdev_alloc_skb_ip_align.exit

if.then.i.i:                                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %65 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %66, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %67 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %68, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  br label %netdev_alloc_skb_ip_align.exit

netdev_alloc_skb_ip_align.exit:                   ; preds = %if.then.i.i, %if.end88.netdev_alloc_skb_ip_align.exit_crit_edge
  %69 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call.i.i, ptr %rx, align 4
  %70 = ptrtoint ptr %remaining to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv58, ptr %remaining, align 4
  br label %if.end93

if.end93:                                         ; preds = %netdev_alloc_skb_ip_align.exit, %while.body.if.end93_crit_edge
  %offset.3 = phi i32 [ %offset.1254, %while.body.if.end93_crit_edge ], [ %offset.2, %netdev_alloc_skb_ip_align.exit ]
  %71 = ptrtoint ptr %remaining to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %remaining, align 4
  %conv95 = zext i16 %72 to i32
  %73 = ptrtoint ptr %len20 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %len20, align 4
  %sub97 = sub i32 %74, %offset.3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub97, i32 %conv95)
  %cmp98 = icmp ult i32 %sub97, %conv95
  %conv103 = trunc i32 %sub97 to i16
  %conv108 = sub i16 %72, %conv103
  %storemerge = select i1 %cmp98, i16 %conv108, i16 0
  %copy_length.0 = select i1 %cmp98, i16 %conv103, i16 %72
  %75 = ptrtoint ptr %remaining to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %storemerge, ptr %remaining, align 4
  %76 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rx, align 4
  %tobool114.not = icmp eq ptr %77, null
  br i1 %tobool114.not, label %if.end93.cleanup_crit_edge, label %if.then115

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then115:                                       ; preds = %if.end93
  %78 = ptrtoint ptr %data43 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data43, align 4
  %add.ptr118 = getelementptr i8, ptr %79, i32 %offset.3
  %conv119 = zext i16 %copy_length.0 to i32
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %77, i32 noundef %conv119) #9
  %80 = call ptr @memcpy(ptr %call.i, ptr %add.ptr118, i32 %conv119)
  %81 = ptrtoint ptr %remaining to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %remaining, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %tobool122.not = icmp eq i16 %82, 0
  br i1 %tobool122.not, label %if.then123, label %if.then115.cleanup_crit_edge

if.then115.cleanup_crit_edge:                     ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then123:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %rx, align 4
  tail call void @usbnet_skb_return(ptr noundef %dev, ptr noundef %84) #9
  %85 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %rx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then123, %if.then115.cleanup_crit_edge, %if.end93.cleanup_crit_edge
  %86 = add i16 %copy_length.0, 1
  %87 = and i16 %86, -2
  %and130 = zext i16 %87 to i32
  %add131 = add i32 %offset.3, %and130
  %add19 = add i32 %add131, 2
  %88 = ptrtoint ptr %len20 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %len20, align 4
  %cmp21.not = icmp ugt i32 %add19, %89
  br i1 %cmp21.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %cleanup.thread234, %if.end18.while.end_crit_edge
  %offset.5 = phi i32 [ %add19255, %cleanup.thread234 ], [ 0, %if.end18.while.end_crit_edge ], [ %add131, %cleanup.while.end_crit_edge ]
  %90 = ptrtoint ptr %len20 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %len20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %offset.5)
  %cmp133.not = icmp eq i32 %91, %offset.5
  br i1 %cmp133.not, label %while.end.cleanup139_crit_edge, label %if.then135

while.end.cleanup139_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup139

if.then135:                                       ; preds = %while.end
  %net136 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %92 = ptrtoint ptr %net136 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %net136, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %93, ptr noundef nonnull @.str.8, i32 noundef %91, i32 noundef %offset.5) #12
  %94 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rx, align 4
  %tobool.not.i225 = icmp eq ptr %95, null
  br i1 %tobool.not.i225, label %if.then135.reset_asix_rx_fixup_info.exit230_crit_edge, label %if.then.i226

if.then135.reset_asix_rx_fixup_info.exit230_crit_edge: ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #11
  br label %reset_asix_rx_fixup_info.exit230

if.then.i226:                                     ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_skb_reason(ptr noundef nonnull %95, i32 noundef 0) #9
  %96 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %rx, align 4
  br label %reset_asix_rx_fixup_info.exit230

reset_asix_rx_fixup_info.exit230:                 ; preds = %if.then.i226, %if.then135.reset_asix_rx_fixup_info.exit230_crit_edge
  %97 = ptrtoint ptr %remaining to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 0, ptr %remaining, align 4
  %split_head.i228 = getelementptr inbounds %struct.asix_rx_fixup_info, ptr %rx, i32 0, i32 3
  %98 = ptrtoint ptr %split_head.i228 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %split_head.i228, align 2
  %header.i229 = getelementptr inbounds %struct.asix_rx_fixup_info, ptr %rx, i32 0, i32 1
  br label %cleanup139.sink.split

cleanup139.sink.split:                            ; preds = %reset_asix_rx_fixup_info.exit230, %reset_asix_rx_fixup_info.exit224, %reset_asix_rx_fixup_info.exit218
  %header47.sink = phi ptr [ %header47, %reset_asix_rx_fixup_info.exit224 ], [ %header47, %reset_asix_rx_fixup_info.exit218 ], [ %header.i229, %reset_asix_rx_fixup_info.exit230 ]
  %99 = ptrtoint ptr %header47.sink to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %header47.sink, align 4
  br label %cleanup139

cleanup139:                                       ; preds = %cleanup139.sink.split, %while.end.cleanup139_crit_edge
  %retval.2 = phi i32 [ 1, %while.end.cleanup139_crit_edge ], [ 0, %cleanup139.sink.split ]
  ret i32 %retval.2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_skb_return(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asix_rx_fixup_common(ptr noundef %dev, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %rx_fixup_info = getelementptr inbounds %struct.asix_common_private, ptr %1, i32 0, i32 4
  %call = tail call i32 @asix_rx_fixup_internal(ptr noundef %dev, ptr noundef %skb, ptr noundef %rx_fixup_info)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @asix_rx_fixup_common_free(ptr noundef %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dp, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_fixup_info = getelementptr inbounds %struct.asix_common_private, ptr %dp, i32 0, i32 4
  %0 = ptrtoint ptr %rx_fixup_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_fixup_info, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_skb_reason(ptr noundef nonnull %1, i32 noundef 0) #9
  %2 = ptrtoint ptr %rx_fixup_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %rx_fixup_info, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @asix_tx_fixup(ptr nocapture noundef readonly %dev, ptr noundef %skb, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not.i = icmp eq i32 %5, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %entry.skb_tailroom.exit_crit_edge

entry.skb_tailroom.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i64 = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i65 = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i66 = sub i32 %sub.ptr.lhs.cast.i64, %sub.ptr.rhs.cast.i65
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %entry.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i66, %cond.false.i ], [ 0, %entry.skb_tailroom.exit_crit_edge ]
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %add = add i32 %11, 4
  %maxpacket = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 16
  %12 = ptrtoint ptr %maxpacket to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %maxpacket, align 4
  %sub = add i32 %13, -1
  %and = and i32 %sub, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 4, i32 0
  %cloned.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %14 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %skb_tailroom.exit.land.lhs.true_crit_edge, label %skb_header_cloned.exit

skb_tailroom.exit.land.lhs.true_crit_edge:        ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

skb_header_cloned.exit:                           ; preds = %skb_tailroom.exit
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %15 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %end.i.i, align 4
  %dataref1.i = getelementptr inbounds %struct.skb_shared_info, ptr %16, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i, i32 noundef 4) #9
  %17 = ptrtoint ptr %dataref1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %dataref1.i, align 4
  %and.i = and i32 %18, 65535
  %shr.i = ashr i32 %18, 16
  %sub.i = sub nsw i32 %and.i, %shr.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp.i.not = icmp eq i32 %sub.i, 1
  br i1 %cmp.i.not, label %skb_header_cloned.exit.land.lhs.true_crit_edge, label %skb_header_cloned.exit.if.else_crit_edge

skb_header_cloned.exit.if.else_crit_edge:         ; preds = %skb_header_cloned.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

skb_header_cloned.exit.land.lhs.true_crit_edge:   ; preds = %skb_header_cloned.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %skb_header_cloned.exit.land.lhs.true_crit_edge, %skb_tailroom.exit.land.lhs.true_crit_edge
  br i1 %tobool.not, label %land.lhs.true5, label %land.lhs.true.land.lhs.true8_crit_edge

land.lhs.true.land.lhs.true8_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %19 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i68 = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i68)
  %tobool.not.i69 = icmp sgt i8 %bf.load.i68, -1
  br i1 %tobool.not.i69, label %land.lhs.true5.land.lhs.true8_crit_edge, label %skb_cloned.exit

land.lhs.true5.land.lhs.true8_crit_edge:          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true8

skb_cloned.exit:                                  ; preds = %land.lhs.true5
  %end.i.i70 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %20 = ptrtoint ptr %end.i.i70 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %end.i.i70, align 4
  %dataref.i = getelementptr inbounds %struct.skb_shared_info, ptr %21, i32 0, i32 10
  %call.i.i.i71 = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i, i32 noundef 4) #9
  %22 = ptrtoint ptr %dataref.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %dataref.i, align 4
  %and.i72 = and i32 %23, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i72)
  %cmp.i73.not = icmp eq i32 %and.i72, 1
  br i1 %cmp.i73.not, label %skb_cloned.exit.land.lhs.true8_crit_edge, label %skb_cloned.exit.if.else_crit_edge

skb_cloned.exit.if.else_crit_edge:                ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

skb_cloned.exit.land.lhs.true8_crit_edge:         ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true8

land.lhs.true8:                                   ; preds = %skb_cloned.exit.land.lhs.true8_crit_edge, %land.lhs.true5.land.lhs.true8_crit_edge, %land.lhs.true.land.lhs.true8_crit_edge
  %add9 = add i32 %cond.i, %sub.ptr.sub.i
  %add10 = add nuw nsw i32 %cond, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add9, i32 %add10)
  %cmp.not = icmp slt i32 %add9, %add10
  br i1 %cmp.not, label %land.lhs.true8.if.else_crit_edge, label %if.then

land.lhs.true8.if.else_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then:                                          ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i)
  %cmp11 = icmp slt i32 %sub.ptr.sub.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %cond)
  %cmp12 = icmp slt i32 %cond.i, %cond
  %or.cond = select i1 %cmp11, i1 true, i1 %cmp12
  br i1 %or.cond, label %if.then13, label %if.then.if.end21_crit_edge

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head.i, align 8
  %add.ptr = getelementptr i8, ptr %25, i32 4
  %26 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i, align 4
  %28 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len, align 4
  %30 = call ptr @memmove(ptr %add.ptr, ptr %27, i32 %29)
  store ptr %add.ptr, ptr %data.i, align 4
  %31 = load i32, ptr %len, align 4
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %31
  %tail.i75 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %32 = ptrtoint ptr %tail.i75 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr.i, ptr %tail.i75, align 8
  br label %if.end21

if.else:                                          ; preds = %land.lhs.true8.if.else_crit_edge, %skb_cloned.exit.if.else_crit_edge, %skb_header_cloned.exit.if.else_crit_edge
  %call17 = tail call ptr @skb_copy_expand(ptr noundef %skb, i32 noundef 4, i32 noundef %cond, i32 noundef %flags) #9
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #9
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.else.cleanup31_crit_edge, label %if.else.if.end21_crit_edge

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.else.cleanup31_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup31

if.end21:                                         ; preds = %if.else.if.end21_crit_edge, %if.then13, %if.then.if.end21_crit_edge
  %skb.addr.0 = phi ptr [ %call17, %if.else.if.end21_crit_edge ], [ %skb, %if.then13 ], [ %skb, %if.then.if.end21_crit_edge ]
  %len22 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 6
  %33 = ptrtoint ptr %len22 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len22, align 4
  %xor = xor i32 %34, -1
  %shl = shl i32 %xor, 16
  %add24 = add i32 %shl, %34
  %call25 = tail call ptr @skb_push(ptr noundef %skb.addr.0, i32 noundef 4) #9
  %35 = tail call i32 @llvm.bswap.i32(i32 %add24) #9
  %36 = ptrtoint ptr %call25 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %35, ptr %call25, align 1
  br i1 %tobool.not, label %if.then27, label %if.end21.if.end30_crit_edge

if.end21.if.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %tail.i76 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 16
  %37 = ptrtoint ptr %tail.i76 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tail.i76, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 65535, ptr %38, align 1
  %call29 = tail call ptr @skb_put(ptr noundef %skb.addr.0, i32 noundef 4) #9
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end21.if.end30_crit_edge
  %packets2.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 3, i32 16
  %40 = ptrtoint ptr %packets2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %packets2.i, align 4
  %length.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 3, i32 12
  %41 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %length.i, align 4
  br label %cleanup31

cleanup31:                                        ; preds = %if.end30, %if.else.cleanup31_crit_edge
  %retval.1 = phi ptr [ %skb.addr.0, %if.end30 ], [ null, %if.else.cleanup31_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy_expand(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asix_set_sw_mii(ptr noundef %dev, i32 noundef %in_pm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end9.i, !prof !93

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 43, 0\0A.popsection", ""() #9, !srcloc !96
  unreachable

do.end9.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_pm)
  %tobool10.not.i = icmp eq i32 %in_pm, 0
  %usbnet_write_cmd.usbnet_write_cmd_nopm.i = select i1 %tobool10.not.i, ptr @usbnet_write_cmd, ptr @usbnet_write_cmd_nopm
  %call.i = tail call i32 %usbnet_write_cmd.usbnet_write_cmd_nopm.i(ptr noundef nonnull %dev, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #9, !callees !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then, label %do.end9.i.if.end_crit_edge, !prof !93

do.end9.i.if.end_crit_edge:                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %net.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %call.i) #12
  %2 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.9) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end9.i.if.end_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asix_set_hw_mii(ptr noundef %dev, i32 noundef %in_pm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end9.i, !prof !93

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 43, 0\0A.popsection", ""() #9, !srcloc !96
  unreachable

do.end9.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_pm)
  %tobool10.not.i = icmp eq i32 %in_pm, 0
  %usbnet_write_cmd.usbnet_write_cmd_nopm.i = select i1 %tobool10.not.i, ptr @usbnet_write_cmd, ptr @usbnet_write_cmd_nopm
  %call.i = tail call i32 %usbnet_write_cmd.usbnet_write_cmd_nopm.i(ptr noundef nonnull %dev, i8 noundef zeroext 10, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #9, !callees !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then, label %do.end9.i.if.end_crit_edge, !prof !93

do.end9.i.if.end_crit_edge:                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %net.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %call.i) #12
  %2 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.10) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end9.i.if.end_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asix_read_phy_addr(ptr noundef %dev, i1 noundef zeroext %internal) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #9
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf, align 1, !annotation !100
  %1 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !100
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end9.i, !prof !93

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 20, 0\0A.popsection", ""() #9, !srcloc !94
  unreachable

do.end9.i:                                        ; preds = %entry
  %call.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 25, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buf, i16 noundef zeroext 2) #9, !callees !95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %asix_read_cmd.exit.thread, label %if.end, !prof !93

asix_read_cmd.exit.thread:                        ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %net.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %3 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef %call.i) #12
  br label %error

if.end:                                           ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp1 = icmp ult i32 %call.i, 2
  br i1 %cmp1, label %if.end.error_crit_edge, label %if.end3

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %cond = zext i1 %internal to i32
  %arrayidx = getelementptr [2 x i8], ptr %buf, i32 0, i32 %cond
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %6 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @asix_read_phy_addr.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@asix_read_phy_addr, %if.then10)) #9
          to label %cleanup [label %if.then10], !srcloc !99

if.then10:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %7 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net, align 4
  %cond13 = select i1 %internal, ptr @.str.13, ptr @.str.14
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @asix_read_phy_addr.__UNIQUE_ID_ddebug357, ptr noundef %8, ptr noundef nonnull @.str.12, ptr noundef nonnull %cond13, i32 noundef %conv) #9
  br label %cleanup

error:                                            ; preds = %if.end.error_crit_edge, %asix_read_cmd.exit.thread
  %ret.0 = phi i32 [ -5, %if.end.error_crit_edge ], [ %call.i, %asix_read_cmd.exit.thread ]
  %net17 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %9 = ptrtoint ptr %net17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net17, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str.15, i32 noundef %ret.0) #12
  br label %cleanup

cleanup:                                          ; preds = %error, %if.then10, %if.end3
  %retval.0 = phi i32 [ %ret.0, %error ], [ %conv, %if.then10 ], [ %conv, %if.end3 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asix_sw_reset(ptr noundef %dev, i8 noundef zeroext %flags, i32 noundef %in_pm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end9.i, !prof !93

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 43, 0\0A.popsection", ""() #9, !srcloc !96
  unreachable

do.end9.i:                                        ; preds = %entry
  %conv = zext i8 %flags to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_pm)
  %tobool10.not.i = icmp eq i32 %in_pm, 0
  %usbnet_write_cmd.usbnet_write_cmd_nopm.i = select i1 %tobool10.not.i, ptr @usbnet_write_cmd, ptr @usbnet_write_cmd_nopm
  %call.i = tail call i32 %usbnet_write_cmd.usbnet_write_cmd_nopm.i(ptr noundef nonnull %dev, i8 noundef zeroext 32, i8 noundef zeroext 64, i16 noundef zeroext %conv, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #9, !callees !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then, label %do.end9.i.if.end_crit_edge, !prof !93

do.end9.i.if.end_crit_edge:                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %net.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %call.i) #12
  %2 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.16, i32 noundef %call.i) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end9.i.if.end_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @asix_read_rx_ctl(ptr noundef %dev, i32 noundef %in_pm) local_unnamed_addr #0 align 64 {
entry:
  %v = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %v) #9
  %0 = ptrtoint ptr %v to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %v, align 2, !annotation !100
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end9.i, !prof !93

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 20, 0\0A.popsection", ""() #9, !srcloc !94
  unreachable

do.end9.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_pm)
  %tobool10.not.i = icmp eq i32 %in_pm, 0
  %usbnet_read_cmd.usbnet_read_cmd_nopm.i = select i1 %tobool10.not.i, ptr @usbnet_read_cmd, ptr @usbnet_read_cmd_nopm
  %call.i = call i32 %usbnet_read_cmd.usbnet_read_cmd_nopm.i(ptr noundef nonnull %dev, i8 noundef zeroext 15, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %v, i16 noundef zeroext 2) #9, !callees !95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then, label %if.end, !prof !93

if.then:                                          ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %net.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %1 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef %call.i) #12
  %3 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.17, i32 noundef %call.i) #12
  br label %out

if.end:                                           ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %v to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %v, align 2
  %7 = call i16 @llvm.bswap.i16(i16 %6)
  %conv = zext i16 %7 to i32
  br label %out

out:                                              ; preds = %if.end, %if.then
  %ret.0 = phi i32 [ %call.i, %if.then ], [ %conv, %if.end ]
  %conv1 = trunc i32 %ret.0 to i16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %v) #9
  ret i16 %conv1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asix_write_rx_ctl(ptr noundef %dev, i16 noundef zeroext %mode, i32 noundef %in_pm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @asix_write_rx_ctl.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@asix_write_rx_ctl, %if.then)) #9
          to label %do.end5 [label %if.then], !srcloc !99

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %conv = zext i16 %mode to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @asix_write_rx_ctl.__UNIQUE_ID_ddebug358, ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %conv) #9
  br label %do.end5

do.end5:                                          ; preds = %if.then, %entry
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end9.i, !prof !93

do.body4.i:                                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 43, 0\0A.popsection", ""() #9, !srcloc !96
  unreachable

do.end9.i:                                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_pm)
  %tobool10.not.i = icmp eq i32 %in_pm, 0
  %usbnet_write_cmd.usbnet_write_cmd_nopm.i = select i1 %tobool10.not.i, ptr @usbnet_write_cmd, ptr @usbnet_write_cmd_nopm
  %call.i = tail call i32 %usbnet_write_cmd.usbnet_write_cmd_nopm.i(ptr noundef nonnull %dev, i8 noundef zeroext 16, i8 noundef zeroext 64, i16 noundef zeroext %mode, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #9, !callees !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then8, label %do.end9.i.if.end11_crit_edge, !prof !93

do.end9.i.if.end11_crit_edge:                     ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then8:                                         ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %net.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %call.i) #12
  %4 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net.i, align 4
  %conv10 = zext i16 %mode to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.20, i32 noundef %conv10, i32 noundef %call.i) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %do.end9.i.if.end11_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @asix_read_medium_status(ptr noundef %dev, i32 noundef %in_pm) local_unnamed_addr #0 align 64 {
entry:
  %v = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %v) #9
  %0 = ptrtoint ptr %v to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %v, align 2, !annotation !100
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end9.i, !prof !93

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 20, 0\0A.popsection", ""() #9, !srcloc !94
  unreachable

do.end9.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_pm)
  %tobool10.not.i = icmp eq i32 %in_pm, 0
  %usbnet_read_cmd.usbnet_read_cmd_nopm.i = select i1 %tobool10.not.i, ptr @usbnet_read_cmd, ptr @usbnet_read_cmd_nopm
  %call.i = call i32 %usbnet_read_cmd.usbnet_read_cmd_nopm.i(ptr noundef nonnull %dev, i8 noundef zeroext 26, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %v, i16 noundef zeroext 2) #9, !callees !95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then, label %if.end, !prof !93

if.then:                                          ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %net.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %1 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef %call.i) #12
  %3 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.21, i32 noundef %call.i) #12
  %conv = trunc i32 %call.i to i16
  br label %cleanup

if.end:                                           ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %v to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %v, align 2
  %7 = call i16 @llvm.bswap.i16(i16 %6)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i16 [ %conv, %if.then ], [ %7, %if.end ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %v) #9
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asix_write_medium_mode(ptr noundef %dev, i16 noundef zeroext %mode, i32 noundef %in_pm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @asix_write_medium_mode.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@asix_write_medium_mode, %if.then)) #9
          to label %do.end5 [label %if.then], !srcloc !99

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %conv = zext i16 %mode to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @asix_write_medium_mode.__UNIQUE_ID_ddebug359, ptr noundef %1, ptr noundef nonnull @.str.23, i32 noundef %conv) #9
  br label %do.end5

do.end5:                                          ; preds = %if.then, %entry
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end9.i, !prof !93

do.body4.i:                                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 43, 0\0A.popsection", ""() #9, !srcloc !96
  unreachable

do.end9.i:                                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_pm)
  %tobool10.not.i = icmp eq i32 %in_pm, 0
  %usbnet_write_cmd.usbnet_write_cmd_nopm.i = select i1 %tobool10.not.i, ptr @usbnet_write_cmd, ptr @usbnet_write_cmd_nopm
  %call.i = tail call i32 %usbnet_write_cmd.usbnet_write_cmd_nopm.i(ptr noundef nonnull %dev, i8 noundef zeroext 27, i8 noundef zeroext 64, i16 noundef zeroext %mode, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #9, !callees !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then8, label %do.end9.i.if.end11_crit_edge, !prof !93

do.end9.i.if.end11_crit_edge:                     ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then8:                                         ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %net.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %call.i) #12
  %4 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net.i, align 4
  %conv10 = zext i16 %mode to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.24, i32 noundef %conv10, i32 noundef %call.i) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %do.end9.i.if.end11_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @asix_adjust_link(ptr noundef %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev1, align 16
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %link = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %link, align 8
  %3 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %duplex = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %spec.select = select i1 %cmp, i16 820, i16 822
  %speed = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %7)
  %cmp4.not = icmp eq i32 %7, 100
  %8 = and i16 %spec.select, 310
  %spec.select19 = select i1 %cmp4.not, i16 %spec.select, i16 %8
  br label %if.end11

if.end11:                                         ; preds = %if.then, %entry.if.end11_crit_edge
  %mode.1 = phi i16 [ 0, %entry.if.end11_crit_edge ], [ %spec.select19, %if.then ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @asix_write_medium_mode.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@asix_adjust_link, %if.then.i)) #9
          to label %do.end5.i [label %if.then.i], !srcloc !99

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %net.i = getelementptr i8, ptr %netdev, i32 2548
  %9 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net.i, align 4
  %conv.i = zext i16 %mode.1 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @asix_write_medium_mode.__UNIQUE_ID_ddebug359, ptr noundef %10, ptr noundef nonnull @.str.23, i32 noundef %conv.i) #9
  br label %do.end5.i

do.end5.i:                                        ; preds = %if.then.i, %if.end11
  %tobool.not.i.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !93

do.body4.i.i:                                     ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 43, 0\0A.popsection", ""() #9, !srcloc !96
  unreachable

do.end9.i.i:                                      ; preds = %do.end5.i
  %call.i.i = tail call i32 @usbnet_write_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 27, i8 noundef zeroext 64, i16 noundef zeroext %mode.1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #9, !callees !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then8.i, label %do.end9.i.i.asix_write_medium_mode.exit_crit_edge, !prof !93

do.end9.i.i.asix_write_medium_mode.exit_crit_edge: ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %asix_write_medium_mode.exit

if.then8.i:                                       ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %net.i.i = getelementptr i8, ptr %netdev, i32 2548
  %11 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %12, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %call.i.i) #12
  %13 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net.i.i, align 4
  %conv10.i = zext i16 %mode.1 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str.24, i32 noundef %conv10.i, i32 noundef %call.i.i) #12
  br label %asix_write_medium_mode.exit

asix_write_medium_mode.exit:                      ; preds = %if.then8.i, %do.end9.i.i.asix_write_medium_mode.exit_crit_edge
  tail call void @phy_print_status(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asix_write_gpio(ptr noundef %dev, i16 noundef zeroext %value, i32 noundef %sleep, i32 noundef %in_pm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @asix_write_gpio.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@asix_write_gpio, %if.then)) #9
          to label %do.end5 [label %if.then], !srcloc !99

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %conv = zext i16 %value to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @asix_write_gpio.__UNIQUE_ID_ddebug360, ptr noundef %1, ptr noundef nonnull @.str.26, i32 noundef %conv) #9
  br label %do.end5

do.end5:                                          ; preds = %if.then, %entry
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end9.i, !prof !93

do.body4.i:                                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 43, 0\0A.popsection", ""() #9, !srcloc !96
  unreachable

do.end9.i:                                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_pm)
  %tobool10.not.i = icmp eq i32 %in_pm, 0
  %usbnet_write_cmd.usbnet_write_cmd_nopm.i = select i1 %tobool10.not.i, ptr @usbnet_write_cmd, ptr @usbnet_write_cmd_nopm
  %call.i = tail call i32 %usbnet_write_cmd.usbnet_write_cmd_nopm.i(ptr noundef nonnull %dev, i8 noundef zeroext 31, i8 noundef zeroext 64, i16 noundef zeroext %value, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #9, !callees !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then8, label %do.end9.i.if.end11_crit_edge, !prof !93

do.end9.i.if.end11_crit_edge:                     ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then8:                                         ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %net.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %call.i) #12
  %4 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net.i, align 4
  %conv10 = zext i16 %value to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.27, i32 noundef %conv10, i32 noundef %call.i) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %do.end9.i.if.end11_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sleep)
  %tobool12.not = icmp eq i32 %sleep, 0
  br i1 %tobool12.not, label %if.end11.if.end14_crit_edge, label %if.then13

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @msleep(i32 noundef %sleep) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end11.if.end14_crit_edge
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @asix_set_multicast(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %data1 = getelementptr i8, ptr %net, i32 2556
  %flags = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end69_crit_edge

entry.if.end69_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.else:                                          ; preds = %entry
  %and4 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %if.else.if.end69_crit_edge

if.else.if.end69_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

lor.lhs.false:                                    ; preds = %if.else
  %mc = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 66, i32 1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %3)
  %cmp = icmp sgt i32 %3, 64
  br i1 %cmp, label %lor.lhs.false.if.end69_crit_edge, label %if.else11

lor.lhs.false.if.end69_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.else11:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp14 = icmp eq i32 %3, 0
  br i1 %cmp14, label %if.else11.if.end69_crit_edge, label %if.else17

if.else11.if.end69_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.else17:                                        ; preds = %if.else11
  %4 = ptrtoint ptr %data1 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 0, ptr %data1, align 1
  %5 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %5)
  %ha.099 = load ptr, ptr %mc, align 4
  %cmp22.not100 = icmp eq ptr %ha.099, %mc
  br i1 %cmp22.not100, label %if.else17.for.end_crit_edge, label %if.else17.cond.end_crit_edge

if.else17.cond.end_crit_edge:                     ; preds = %if.else17
  br label %cond.end

if.else17.for.end_crit_edge:                      ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cond.end:                                         ; preds = %cond.end.cond.end_crit_edge, %if.else17.cond.end_crit_edge
  %ha.0101 = phi ptr [ %ha.0, %cond.end.cond.end_crit_edge ], [ %ha.099, %if.else17.cond.end_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0101, i32 0, i32 2
  %call25 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #13
  %6 = and i32 %call25, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i.i.i, align 1
  %shr50 = lshr i8 %8, 2
  %and51 = and i8 %shr50, 7
  %shl52 = shl i8 1, %and51
  %9 = lshr i8 %8, 5
  %shr54 = zext i8 %9 to i32
  %arrayidx = getelementptr [8 x i8], ptr %data1, i32 0, i32 %shr54
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv57 = or i8 %11, %shl52
  store i8 %conv57, ptr %arrayidx, align 1
  %12 = ptrtoint ptr %ha.0101 to i32
  call void @__asan_load4_noabort(i32 %12)
  %ha.0 = load ptr, ptr %ha.0101, align 4
  %cmp22.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp22.not, label %cond.end.for.end_crit_edge, label %cond.end.cond.end_crit_edge

cond.end.cond.end_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %if.else17.for.end_crit_edge
  %call.i = tail call i32 @usbnet_write_cmd_async(ptr noundef %add.ptr.i, i8 noundef zeroext 22, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %data1, i16 noundef zeroext 8) #9
  br label %if.end69

if.end69:                                         ; preds = %for.end, %if.else11.if.end69_crit_edge, %lor.lhs.false.if.end69_crit_edge, %if.else.if.end69_crit_edge, %entry.if.end69_crit_edge
  %rx_ctl.0 = phi i16 [ 136, %if.else11.if.end69_crit_edge ], [ 152, %for.end ], [ 137, %entry.if.end69_crit_edge ], [ 138, %lor.lhs.false.if.end69_crit_edge ], [ 138, %if.else.if.end69_crit_edge ]
  %call.i98 = tail call i32 @usbnet_write_cmd_async(ptr noundef %add.ptr.i, i8 noundef zeroext 16, i8 noundef zeroext 64, i16 noundef zeroext %rx_ctl.0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #9
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asix_mdio_read(ptr noundef %netdev, i32 noundef %phy_id, i32 noundef %loc) local_unnamed_addr #0 align 64 {
entry:
  %smsr.i = alloca i8, align 1
  %res = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %res) #9
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %res, align 2, !annotation !100
  %phy_mutex = getelementptr i8, ptr %netdev, i32 2376
  tail call void @mutex_lock_nested(ptr noundef %phy_mutex, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %smsr.i) #9
  %1 = ptrtoint ptr %smsr.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %smsr.i, align 1, !annotation !100
  %tobool.not.i.i.i = icmp eq ptr %add.ptr.i, null
  %net.i.i.i = getelementptr i8, ptr %netdev, i32 2548
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %entry.for.body.i_crit_edge, !prof !93

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.026.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %call.i.i.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #9, !callees !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i, label %for.body.i.asix_set_sw_mii.exit.i_crit_edge, !prof !93

for.body.i.asix_set_sw_mii.exit.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %asix_set_sw_mii.exit.i

do.body4.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 43, 0\0A.popsection", ""() #9, !srcloc !96
  unreachable

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %call.i.i.i) #12
  %4 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.9) #12
  br label %asix_set_sw_mii.exit.i

asix_set_sw_mii.exit.i:                           ; preds = %if.then.i.i, %for.body.i.asix_set_sw_mii.exit.i_crit_edge
  %6 = zext i32 %call.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i.i.i, label %do.end9.i.i [
    i32 -19, label %asix_set_sw_mii.exit.i.for.end.i_crit_edge
    i32 -110, label %asix_set_sw_mii.exit.i.for.end.i_crit_edge60
  ]

asix_set_sw_mii.exit.i.for.end.i_crit_edge60:     ; preds = %asix_set_sw_mii.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

asix_set_sw_mii.exit.i.for.end.i_crit_edge:       ; preds = %asix_set_sw_mii.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

do.end9.i.i:                                      ; preds = %asix_set_sw_mii.exit.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #9
  %call.i.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 9, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %smsr.i, i16 noundef zeroext 1) #9, !callees !95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then19.i.i, label %do.end9.i.i.asix_read_cmd.exit.i_crit_edge, !prof !93

do.end9.i.i.asix_read_cmd.exit.i_crit_edge:       ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %asix_read_cmd.exit.i

if.then19.i.i:                                    ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %8, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef %call.i.i) #12
  br label %asix_read_cmd.exit.i

asix_read_cmd.exit.i:                             ; preds = %if.then19.i.i, %do.end9.i.i.asix_read_cmd.exit.i_crit_edge
  %9 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %call.i.i, label %if.else8.i [
    i32 -19, label %asix_read_cmd.exit.i.for.end.i_crit_edge
    i32 0, label %asix_read_cmd.exit.i.for.inc.i_crit_edge
  ]

asix_read_cmd.exit.i.for.inc.i_crit_edge:         ; preds = %asix_read_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

asix_read_cmd.exit.i.for.end.i_crit_edge:         ; preds = %asix_read_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.else8.i:                                       ; preds = %asix_read_cmd.exit.i
  %10 = ptrtoint ptr %smsr.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %smsr.i, align 1
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.else8.i.for.inc.i_crit_edge, label %if.else8.i.for.end.i_crit_edge

if.else8.i.for.end.i_crit_edge:                   ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.else8.i.for.inc.i_crit_edge:                   ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else8.i.for.inc.i_crit_edge, %asix_read_cmd.exit.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 30
  br i1 %exitcond.not.i, label %for.inc.i.asix_check_host_enable.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.asix_check_host_enable.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %asix_check_host_enable.exit.thread

for.end.i:                                        ; preds = %if.else8.i.for.end.i_crit_edge, %asix_read_cmd.exit.i.for.end.i_crit_edge, %asix_set_sw_mii.exit.i.for.end.i_crit_edge, %asix_set_sw_mii.exit.i.for.end.i_crit_edge60
  %ret.1.i = phi i32 [ %call.i.i.i, %asix_set_sw_mii.exit.i.for.end.i_crit_edge ], [ %call.i.i, %asix_read_cmd.exit.i.for.end.i_crit_edge ], [ %call.i.i.i, %asix_set_sw_mii.exit.i.for.end.i_crit_edge60 ], [ %call.i.i, %if.else8.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %i.026.i)
  %cmp13.i = icmp ugt i32 %i.026.i, 29
  br i1 %cmp13.i, label %for.end.i.asix_check_host_enable.exit.thread_crit_edge, label %asix_check_host_enable.exit

for.end.i.asix_check_host_enable.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %asix_check_host_enable.exit.thread

asix_check_host_enable.exit.thread:               ; preds = %for.end.i.asix_check_host_enable.exit.thread_crit_edge, %for.inc.i.asix_check_host_enable.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %smsr.i) #9
  br label %if.then

asix_check_host_enable.exit:                      ; preds = %for.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %smsr.i) #9
  %13 = zext i32 %ret.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %ret.1.i, label %do.end9.i [
    i32 -19, label %asix_check_host_enable.exit.if.then_crit_edge
    i32 -110, label %asix_check_host_enable.exit.if.then_crit_edge61
  ]

asix_check_host_enable.exit.if.then_crit_edge61:  ; preds = %asix_check_host_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

asix_check_host_enable.exit.if.then_crit_edge:    ; preds = %asix_check_host_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %asix_check_host_enable.exit.if.then_crit_edge, %asix_check_host_enable.exit.if.then_crit_edge61, %asix_check_host_enable.exit.thread
  %14 = phi i32 [ -110, %asix_check_host_enable.exit.thread ], [ %ret.1.i, %asix_check_host_enable.exit.if.then_crit_edge ], [ %ret.1.i, %asix_check_host_enable.exit.if.then_crit_edge61 ]
  call void @mutex_unlock(ptr noundef %phy_mutex) #9
  br label %cleanup

do.end9.i:                                        ; preds = %asix_check_host_enable.exit
  %conv = trunc i32 %phy_id to i16
  %conv4 = trunc i32 %loc to i16
  %call.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext %conv, i16 noundef zeroext %conv4, ptr noundef nonnull %res, i16 noundef zeroext 2) #9, !callees !95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %asix_read_cmd.exit.thread, label %do.end9.i.i42, !prof !93

asix_read_cmd.exit.thread:                        ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net.i.i.i, align 4
  %conv.i = and i32 %loc, 65535
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %16, ptr noundef nonnull @.str, i32 noundef %conv.i, i32 noundef %call.i) #12
  br label %out

do.end9.i.i42:                                    ; preds = %do.end9.i
  %call.i.i40 = call i32 @usbnet_write_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 10, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #9, !callees !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i40)
  %cmp.i.i41 = icmp slt i32 %call.i.i40, 0
  br i1 %cmp.i.i41, label %if.then.i, label %do.end9.i.i42.out_crit_edge, !prof !93

do.end9.i.i42.out_crit_edge:                      ; preds = %do.end9.i.i42
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then.i:                                        ; preds = %do.end9.i.i42
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %18, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %call.i.i40) #12
  %19 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %20, ptr noundef nonnull @.str.10) #12
  br label %out

out:                                              ; preds = %if.then.i, %do.end9.i.i42.out_crit_edge, %asix_read_cmd.exit.thread
  %ret.0 = phi i32 [ %call.i, %asix_read_cmd.exit.thread ], [ %call.i.i40, %do.end9.i.i42.out_crit_edge ], [ %call.i.i40, %if.then.i ]
  call void @mutex_unlock(ptr noundef %phy_mutex) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @asix_mdio_read.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@asix_mdio_read, %if.then16)) #9
          to label %do.end20 [label %if.then16], !srcloc !99

if.then16:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net.i.i.i, align 4
  %23 = ptrtoint ptr %res to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %res, align 2
  %25 = call i16 @llvm.bswap.i16(i16 %24)
  %conv17 = zext i16 %25 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @asix_mdio_read.__UNIQUE_ID_ddebug361, ptr noundef %22, ptr noundef nonnull @.str.29, i32 noundef %phy_id, i32 noundef %loc, i32 noundef %conv17) #9
  br label %do.end20

do.end20:                                         ; preds = %if.then16, %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp21 = icmp slt i32 %ret.0, 0
  br i1 %cmp21, label %do.end20.cleanup_crit_edge, label %cond.false

do.end20.cleanup_crit_edge:                       ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.false:                                       ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %res to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %res, align 2
  %28 = call i16 @llvm.bswap.i16(i16 %27)
  %conv23 = zext i16 %28 to i32
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %do.end20.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %14, %if.then ], [ %conv23, %cond.false ], [ %ret.0, %do.end20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %res) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @asix_mdio_write(ptr noundef %netdev, i32 noundef %phy_id, i32 noundef %loc, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__asix_mdio_write(ptr noundef %netdev, i32 noundef %phy_id, i32 noundef %loc, i32 noundef %val)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__asix_mdio_write(ptr noundef %netdev, i32 noundef %phy_id, i32 noundef %loc, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  %smsr.i = alloca i8, align 1
  %res = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %res) #9
  %conv = trunc i32 %val to i16
  %0 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %1 = ptrtoint ptr %res to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %0, ptr %res, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__asix_mdio_write.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__asix_mdio_write, %if.then)) #9
          to label %do.end6 [label %if.then], !srcloc !99

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %net = getelementptr i8, ptr %netdev, i32 2548
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__asix_mdio_write.__UNIQUE_ID_ddebug362, ptr noundef %3, ptr noundef nonnull @.str.33, i32 noundef %phy_id, i32 noundef %loc, i32 noundef %val) #9
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %phy_mutex = getelementptr i8, ptr %netdev, i32 2376
  tail call void @mutex_lock_nested(ptr noundef %phy_mutex, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %smsr.i) #9
  %4 = ptrtoint ptr %smsr.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %smsr.i, align 1, !annotation !100
  %tobool.not.i.i.i = icmp eq ptr %add.ptr.i, null
  %net.i.i.i = getelementptr i8, ptr %netdev, i32 2548
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %do.end6.for.body.i_crit_edge, !prof !93

do.end6.for.body.i_crit_edge:                     ; preds = %do.end6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end6.for.body.i_crit_edge
  %i.026.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %do.end6.for.body.i_crit_edge ]
  %call.i.i.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #9, !callees !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i, label %for.body.i.asix_set_sw_mii.exit.i_crit_edge, !prof !93

for.body.i.asix_set_sw_mii.exit.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %asix_set_sw_mii.exit.i

do.body4.i.i.i:                                   ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 43, 0\0A.popsection", ""() #9, !srcloc !96
  unreachable

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %6, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %call.i.i.i) #12
  %7 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull @.str.9) #12
  br label %asix_set_sw_mii.exit.i

asix_set_sw_mii.exit.i:                           ; preds = %if.then.i.i, %for.body.i.asix_set_sw_mii.exit.i_crit_edge
  %9 = zext i32 %call.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %call.i.i.i, label %do.end9.i.i [
    i32 -19, label %asix_set_sw_mii.exit.i.for.end.i_crit_edge
    i32 -110, label %for.end.i.thread
  ]

asix_set_sw_mii.exit.i.for.end.i_crit_edge:       ; preds = %asix_set_sw_mii.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

do.end9.i.i:                                      ; preds = %asix_set_sw_mii.exit.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #9
  %call.i.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 9, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %smsr.i, i16 noundef zeroext 1) #9, !callees !95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then19.i.i, label %do.end9.i.i.asix_read_cmd.exit.i_crit_edge, !prof !93

do.end9.i.i.asix_read_cmd.exit.i_crit_edge:       ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %asix_read_cmd.exit.i

if.then19.i.i:                                    ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %11, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef %call.i.i) #12
  br label %asix_read_cmd.exit.i

asix_read_cmd.exit.i:                             ; preds = %if.then19.i.i, %do.end9.i.i.asix_read_cmd.exit.i_crit_edge
  %12 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %call.i.i, label %if.else8.i [
    i32 -19, label %asix_read_cmd.exit.i.for.end.i_crit_edge
    i32 0, label %asix_read_cmd.exit.i.for.inc.i_crit_edge
  ]

asix_read_cmd.exit.i.for.inc.i_crit_edge:         ; preds = %asix_read_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

asix_read_cmd.exit.i.for.end.i_crit_edge:         ; preds = %asix_read_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.else8.i:                                       ; preds = %asix_read_cmd.exit.i
  %13 = ptrtoint ptr %smsr.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %smsr.i, align 1
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.else8.i.for.inc.i_crit_edge, label %if.else8.i.for.end.i_crit_edge

if.else8.i.for.end.i_crit_edge:                   ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.else8.i.for.inc.i_crit_edge:                   ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else8.i.for.inc.i_crit_edge, %asix_read_cmd.exit.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 30
  br i1 %exitcond.not.i, label %for.inc.i.asix_check_host_enable.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.asix_check_host_enable.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %asix_check_host_enable.exit.thread

for.end.i:                                        ; preds = %if.else8.i.for.end.i_crit_edge, %asix_read_cmd.exit.i.for.end.i_crit_edge, %asix_set_sw_mii.exit.i.for.end.i_crit_edge
  %ret.1.i.ph = phi i32 [ %call.i.i, %if.else8.i.for.end.i_crit_edge ], [ %call.i.i.i, %asix_set_sw_mii.exit.i.for.end.i_crit_edge ], [ %call.i.i, %asix_read_cmd.exit.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %i.026.i)
  %cmp13.i = icmp ugt i32 %i.026.i, 29
  br i1 %cmp13.i, label %for.end.i.asix_check_host_enable.exit.thread_crit_edge, label %asix_check_host_enable.exit

for.end.i.asix_check_host_enable.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %asix_check_host_enable.exit.thread

for.end.i.thread:                                 ; preds = %asix_set_sw_mii.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %i.026.i)
  %cmp13.i50 = icmp ugt i32 %i.026.i, 29
  br i1 %cmp13.i50, label %for.end.i.thread.asix_check_host_enable.exit.thread_crit_edge, label %asix_check_host_enable.exit.thread52

for.end.i.thread.asix_check_host_enable.exit.thread_crit_edge: ; preds = %for.end.i.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %asix_check_host_enable.exit.thread

asix_check_host_enable.exit.thread52:             ; preds = %for.end.i.thread
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %smsr.i) #9
  br label %do.end9.i

asix_check_host_enable.exit.thread:               ; preds = %for.end.i.thread.asix_check_host_enable.exit.thread_crit_edge, %for.end.i.asix_check_host_enable.exit.thread_crit_edge, %for.inc.i.asix_check_host_enable.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %smsr.i) #9
  br label %do.end9.i

asix_check_host_enable.exit:                      ; preds = %for.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %smsr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %ret.1.i.ph)
  %cmp = icmp eq i32 %ret.1.i.ph, -19
  br i1 %cmp, label %asix_check_host_enable.exit.out_crit_edge, label %asix_check_host_enable.exit.do.end9.i_crit_edge

asix_check_host_enable.exit.do.end9.i_crit_edge:  ; preds = %asix_check_host_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i

asix_check_host_enable.exit.out_crit_edge:        ; preds = %asix_check_host_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end9.i:                                        ; preds = %asix_check_host_enable.exit.do.end9.i_crit_edge, %asix_check_host_enable.exit.thread, %asix_check_host_enable.exit.thread52
  %conv11 = trunc i32 %phy_id to i16
  %conv12 = trunc i32 %loc to i16
  %call.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 8, i8 noundef zeroext 64, i16 noundef zeroext %conv11, i16 noundef zeroext %conv12, ptr noundef nonnull %res, i16 noundef zeroext 2) #9, !callees !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %asix_write_cmd.exit.thread, label %do.end9.i.i36, !prof !93

asix_write_cmd.exit.thread:                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net.i.i.i, align 4
  %conv.i = and i32 %loc, 65535
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %17, ptr noundef nonnull @.str.1, i32 noundef %conv.i, i32 noundef %call.i) #12
  br label %out

do.end9.i.i36:                                    ; preds = %do.end9.i
  %call.i.i34 = call i32 @usbnet_write_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 10, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #9, !callees !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i34)
  %cmp.i.i35 = icmp slt i32 %call.i.i34, 0
  br i1 %cmp.i.i35, label %if.then.i, label %do.end9.i.i36.out_crit_edge, !prof !93

do.end9.i.i36.out_crit_edge:                      ; preds = %do.end9.i.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then.i:                                        ; preds = %do.end9.i.i36
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %19, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %call.i.i34) #12
  %20 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %21, ptr noundef nonnull @.str.10) #12
  br label %out

out:                                              ; preds = %if.then.i, %do.end9.i.i36.out_crit_edge, %asix_write_cmd.exit.thread, %asix_check_host_enable.exit.out_crit_edge
  %22 = phi i32 [ 0, %do.end9.i.i36.out_crit_edge ], [ %call.i.i34, %if.then.i ], [ %call.i, %asix_write_cmd.exit.thread ], [ -19, %asix_check_host_enable.exit.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %phy_mutex) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %res) #9
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asix_mdio_bus_read(ptr nocapture noundef readonly %bus, i32 noundef %phy_id, i32 noundef %regnum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %net = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %call = tail call i32 @asix_mdio_read(ptr noundef %3, i32 noundef %phy_id, i32 noundef %regnum)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asix_mdio_bus_write(ptr nocapture noundef readonly %bus, i32 noundef %phy_id, i32 noundef %regnum, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %net = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %conv = zext i16 %val to i32
  %call = tail call fastcc i32 @__asix_mdio_write(ptr noundef %3, i32 noundef %phy_id, i32 noundef %regnum, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asix_mdio_read_nopm(ptr noundef %netdev, i32 noundef %phy_id, i32 noundef %loc) local_unnamed_addr #0 align 64 {
entry:
  %smsr.i = alloca i8, align 1
  %res = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %res) #9
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %res, align 2, !annotation !100
  %phy_mutex = getelementptr i8, ptr %netdev, i32 2376
  tail call void @mutex_lock_nested(ptr noundef %phy_mutex, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %smsr.i) #9
  %1 = ptrtoint ptr %smsr.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %smsr.i, align 1, !annotation !100
  %tobool.not.i.i.i = icmp eq ptr %add.ptr.i, null
  %net.i.i.i = getelementptr i8, ptr %netdev, i32 2548
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %entry.for.body.i_crit_edge, !prof !93

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.026.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %call.i.i.i = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #9, !callees !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i, label %for.body.i.asix_set_sw_mii.exit.i_crit_edge, !prof !93

for.body.i.asix_set_sw_mii.exit.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %asix_set_sw_mii.exit.i

do.body4.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 43, 0\0A.popsection", ""() #9, !srcloc !96
  unreachable

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %call.i.i.i) #12
  %4 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.9) #12
  br label %asix_set_sw_mii.exit.i

asix_set_sw_mii.exit.i:                           ; preds = %if.then.i.i, %for.body.i.asix_set_sw_mii.exit.i_crit_edge
  %6 = zext i32 %call.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %call.i.i.i, label %do.end9.i.i [
    i32 -19, label %asix_set_sw_mii.exit.i.for.end.i_crit_edge
    i32 -110, label %asix_set_sw_mii.exit.i.for.end.i_crit_edge51
  ]

asix_set_sw_mii.exit.i.for.end.i_crit_edge51:     ; preds = %asix_set_sw_mii.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

asix_set_sw_mii.exit.i.for.end.i_crit_edge:       ; preds = %asix_set_sw_mii.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

do.end9.i.i:                                      ; preds = %asix_set_sw_mii.exit.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #9
  %call.i.i = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 9, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %smsr.i, i16 noundef zeroext 1) #9, !callees !95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then19.i.i, label %do.end9.i.i.asix_read_cmd.exit.i_crit_edge, !prof !93

do.end9.i.i.asix_read_cmd.exit.i_crit_edge:       ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %asix_read_cmd.exit.i

if.then19.i.i:                                    ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %8, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef %call.i.i) #12
  br label %asix_read_cmd.exit.i

asix_read_cmd.exit.i:                             ; preds = %if.then19.i.i, %do.end9.i.i.asix_read_cmd.exit.i_crit_edge
  %9 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %call.i.i, label %if.else8.i [
    i32 -19, label %asix_read_cmd.exit.i.for.end.i_crit_edge
    i32 0, label %asix_read_cmd.exit.i.for.inc.i_crit_edge
  ]

asix_read_cmd.exit.i.for.inc.i_crit_edge:         ; preds = %asix_read_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

asix_read_cmd.exit.i.for.end.i_crit_edge:         ; preds = %asix_read_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.else8.i:                                       ; preds = %asix_read_cmd.exit.i
  %10 = ptrtoint ptr %smsr.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %smsr.i, align 1
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.else8.i.for.inc.i_crit_edge, label %if.else8.i.for.end.i_crit_edge

if.else8.i.for.end.i_crit_edge:                   ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.else8.i.for.inc.i_crit_edge:                   ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else8.i.for.inc.i_crit_edge, %asix_read_cmd.exit.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 30
  br i1 %exitcond.not.i, label %for.inc.i.asix_check_host_enable.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.asix_check_host_enable.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %asix_check_host_enable.exit.thread

for.end.i:                                        ; preds = %if.else8.i.for.end.i_crit_edge, %asix_read_cmd.exit.i.for.end.i_crit_edge, %asix_set_sw_mii.exit.i.for.end.i_crit_edge, %asix_set_sw_mii.exit.i.for.end.i_crit_edge51
  %ret.1.i = phi i32 [ %call.i.i.i, %asix_set_sw_mii.exit.i.for.end.i_crit_edge ], [ %call.i.i, %asix_read_cmd.exit.i.for.end.i_crit_edge ], [ %call.i.i.i, %asix_set_sw_mii.exit.i.for.end.i_crit_edge51 ], [ %call.i.i, %if.else8.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %i.026.i)
  %cmp13.i = icmp ugt i32 %i.026.i, 29
  br i1 %cmp13.i, label %for.end.i.asix_check_host_enable.exit.thread_crit_edge, label %asix_check_host_enable.exit

for.end.i.asix_check_host_enable.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %asix_check_host_enable.exit.thread

asix_check_host_enable.exit.thread:               ; preds = %for.end.i.asix_check_host_enable.exit.thread_crit_edge, %for.inc.i.asix_check_host_enable.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %smsr.i) #9
  br label %if.then

asix_check_host_enable.exit:                      ; preds = %for.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %smsr.i) #9
  %13 = zext i32 %ret.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %ret.1.i, label %do.end9.i [
    i32 -19, label %asix_check_host_enable.exit.if.then_crit_edge
    i32 -110, label %asix_check_host_enable.exit.if.then_crit_edge52
  ]

asix_check_host_enable.exit.if.then_crit_edge52:  ; preds = %asix_check_host_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

asix_check_host_enable.exit.if.then_crit_edge:    ; preds = %asix_check_host_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %asix_check_host_enable.exit.if.then_crit_edge, %asix_check_host_enable.exit.if.then_crit_edge52, %asix_check_host_enable.exit.thread
  %14 = phi i32 [ -110, %asix_check_host_enable.exit.thread ], [ %ret.1.i, %asix_check_host_enable.exit.if.then_crit_edge ], [ %ret.1.i, %asix_check_host_enable.exit.if.then_crit_edge52 ]
  call void @mutex_unlock(ptr noundef %phy_mutex) #9
  br label %cleanup

do.end9.i:                                        ; preds = %asix_check_host_enable.exit
  %conv = trunc i32 %phy_id to i16
  %conv4 = trunc i32 %loc to i16
  %call.i = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext %conv, i16 noundef zeroext %conv4, ptr noundef nonnull %res, i16 noundef zeroext 2) #9, !callees !95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then19.i, label %do.end9.i.do.end9.i.i33_crit_edge, !prof !93

do.end9.i.do.end9.i.i33_crit_edge:                ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i.i33

if.then19.i:                                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net.i.i.i, align 4
  %conv.i = and i32 %loc, 65535
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %16, ptr noundef nonnull @.str, i32 noundef %conv.i, i32 noundef %call.i) #12
  br label %do.end9.i.i33

do.end9.i.i33:                                    ; preds = %if.then19.i, %do.end9.i.do.end9.i.i33_crit_edge
  %call.i.i31 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 10, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #9, !callees !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i31)
  %cmp.i.i32 = icmp slt i32 %call.i.i31, 0
  br i1 %cmp.i.i32, label %if.then.i, label %do.end9.i.i33.asix_set_hw_mii.exit_crit_edge, !prof !93

do.end9.i.i33.asix_set_hw_mii.exit_crit_edge:     ; preds = %do.end9.i.i33
  call void @__sanitizer_cov_trace_pc() #11
  br label %asix_set_hw_mii.exit

if.then.i:                                        ; preds = %do.end9.i.i33
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %18, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %call.i.i31) #12
  %19 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %20, ptr noundef nonnull @.str.10) #12
  br label %asix_set_hw_mii.exit

asix_set_hw_mii.exit:                             ; preds = %if.then.i, %do.end9.i.i33.asix_set_hw_mii.exit_crit_edge
  call void @mutex_unlock(ptr noundef %phy_mutex) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @asix_mdio_read_nopm.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@asix_mdio_read_nopm, %if.then12)) #9
          to label %do.end16 [label %if.then12], !srcloc !99

if.then12:                                        ; preds = %asix_set_hw_mii.exit
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net.i.i.i, align 4
  %23 = ptrtoint ptr %res to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %res, align 2
  %25 = call i16 @llvm.bswap.i16(i16 %24)
  %conv13 = zext i16 %25 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @asix_mdio_read_nopm.__UNIQUE_ID_ddebug363, ptr noundef %22, ptr noundef nonnull @.str.31, i32 noundef %phy_id, i32 noundef %loc, i32 noundef %conv13) #9
  br label %do.end16

do.end16:                                         ; preds = %if.then12, %asix_set_hw_mii.exit
  %26 = ptrtoint ptr %res to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %res, align 2
  %28 = call i16 @llvm.bswap.i16(i16 %27)
  %conv17 = zext i16 %28 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %if.then
  %retval.0 = phi i32 [ %14, %if.then ], [ %conv17, %do.end16 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %res) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @asix_mdio_write_nopm(ptr noundef %netdev, i32 noundef %phy_id, i32 noundef %loc, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  %smsr.i = alloca i8, align 1
  %res = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %res) #9
  %conv = trunc i32 %val to i16
  %0 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %1 = ptrtoint ptr %res to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %0, ptr %res, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @asix_mdio_write_nopm.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@asix_mdio_write_nopm, %if.then)) #9
          to label %do.end6 [label %if.then], !srcloc !99

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %net = getelementptr i8, ptr %netdev, i32 2548
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @asix_mdio_write_nopm.__UNIQUE_ID_ddebug364, ptr noundef %3, ptr noundef nonnull @.str.33, i32 noundef %phy_id, i32 noundef %loc, i32 noundef %val) #9
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %phy_mutex = getelementptr i8, ptr %netdev, i32 2376
  tail call void @mutex_lock_nested(ptr noundef %phy_mutex, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %smsr.i) #9
  %4 = ptrtoint ptr %smsr.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %smsr.i, align 1, !annotation !100
  %tobool.not.i.i.i = icmp eq ptr %add.ptr.i, null
  %net.i.i.i = getelementptr i8, ptr %netdev, i32 2548
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %do.end6.for.body.i_crit_edge, !prof !93

do.end6.for.body.i_crit_edge:                     ; preds = %do.end6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end6.for.body.i_crit_edge
  %i.026.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %do.end6.for.body.i_crit_edge ]
  %call.i.i.i = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #9, !callees !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i, label %for.body.i.asix_set_sw_mii.exit.i_crit_edge, !prof !93

for.body.i.asix_set_sw_mii.exit.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %asix_set_sw_mii.exit.i

do.body4.i.i.i:                                   ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 43, 0\0A.popsection", ""() #9, !srcloc !96
  unreachable

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %6, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %call.i.i.i) #12
  %7 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull @.str.9) #12
  br label %asix_set_sw_mii.exit.i

asix_set_sw_mii.exit.i:                           ; preds = %if.then.i.i, %for.body.i.asix_set_sw_mii.exit.i_crit_edge
  %9 = zext i32 %call.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %call.i.i.i, label %do.end9.i.i [
    i32 -19, label %asix_set_sw_mii.exit.i.for.end.i_crit_edge
    i32 -110, label %for.end.i.thread
  ]

asix_set_sw_mii.exit.i.for.end.i_crit_edge:       ; preds = %asix_set_sw_mii.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

do.end9.i.i:                                      ; preds = %asix_set_sw_mii.exit.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #9
  %call.i.i = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 9, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %smsr.i, i16 noundef zeroext 1) #9, !callees !95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then19.i.i, label %do.end9.i.i.asix_read_cmd.exit.i_crit_edge, !prof !93

do.end9.i.i.asix_read_cmd.exit.i_crit_edge:       ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %asix_read_cmd.exit.i

if.then19.i.i:                                    ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %11, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef %call.i.i) #12
  br label %asix_read_cmd.exit.i

asix_read_cmd.exit.i:                             ; preds = %if.then19.i.i, %do.end9.i.i.asix_read_cmd.exit.i_crit_edge
  %12 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %call.i.i, label %if.else8.i [
    i32 -19, label %asix_read_cmd.exit.i.for.end.i_crit_edge
    i32 0, label %asix_read_cmd.exit.i.for.inc.i_crit_edge
  ]

asix_read_cmd.exit.i.for.inc.i_crit_edge:         ; preds = %asix_read_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

asix_read_cmd.exit.i.for.end.i_crit_edge:         ; preds = %asix_read_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.else8.i:                                       ; preds = %asix_read_cmd.exit.i
  %13 = ptrtoint ptr %smsr.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %smsr.i, align 1
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.else8.i.for.inc.i_crit_edge, label %if.else8.i.for.end.i_crit_edge

if.else8.i.for.end.i_crit_edge:                   ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.else8.i.for.inc.i_crit_edge:                   ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else8.i.for.inc.i_crit_edge, %asix_read_cmd.exit.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 30
  br i1 %exitcond.not.i, label %for.inc.i.asix_check_host_enable.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.asix_check_host_enable.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %asix_check_host_enable.exit.thread

for.end.i:                                        ; preds = %if.else8.i.for.end.i_crit_edge, %asix_read_cmd.exit.i.for.end.i_crit_edge, %asix_set_sw_mii.exit.i.for.end.i_crit_edge
  %ret.1.i.ph = phi i32 [ %call.i.i, %if.else8.i.for.end.i_crit_edge ], [ %call.i.i.i, %asix_set_sw_mii.exit.i.for.end.i_crit_edge ], [ %call.i.i, %asix_read_cmd.exit.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %i.026.i)
  %cmp13.i = icmp ugt i32 %i.026.i, 29
  br i1 %cmp13.i, label %for.end.i.asix_check_host_enable.exit.thread_crit_edge, label %asix_check_host_enable.exit

for.end.i.asix_check_host_enable.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %asix_check_host_enable.exit.thread

for.end.i.thread:                                 ; preds = %asix_set_sw_mii.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %i.026.i)
  %cmp13.i42 = icmp ugt i32 %i.026.i, 29
  br i1 %cmp13.i42, label %for.end.i.thread.asix_check_host_enable.exit.thread_crit_edge, label %asix_check_host_enable.exit.thread44

for.end.i.thread.asix_check_host_enable.exit.thread_crit_edge: ; preds = %for.end.i.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %asix_check_host_enable.exit.thread

asix_check_host_enable.exit.thread44:             ; preds = %for.end.i.thread
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %smsr.i) #9
  br label %do.end9.i

asix_check_host_enable.exit.thread:               ; preds = %for.end.i.thread.asix_check_host_enable.exit.thread_crit_edge, %for.end.i.asix_check_host_enable.exit.thread_crit_edge, %for.inc.i.asix_check_host_enable.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %smsr.i) #9
  br label %do.end9.i

asix_check_host_enable.exit:                      ; preds = %for.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %smsr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %ret.1.i.ph)
  %cmp = icmp eq i32 %ret.1.i.ph, -19
  br i1 %cmp, label %asix_check_host_enable.exit.cleanup_crit_edge, label %asix_check_host_enable.exit.do.end9.i_crit_edge

asix_check_host_enable.exit.do.end9.i_crit_edge:  ; preds = %asix_check_host_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i

asix_check_host_enable.exit.cleanup_crit_edge:    ; preds = %asix_check_host_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end9.i:                                        ; preds = %asix_check_host_enable.exit.do.end9.i_crit_edge, %asix_check_host_enable.exit.thread, %asix_check_host_enable.exit.thread44
  %conv12 = trunc i32 %phy_id to i16
  %conv13 = trunc i32 %loc to i16
  %call.i = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 8, i8 noundef zeroext 64, i16 noundef zeroext %conv12, i16 noundef zeroext %conv13, ptr noundef nonnull %res, i16 noundef zeroext 2) #9, !callees !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then19.i, label %do.end9.i.do.end9.i.i31_crit_edge, !prof !93

do.end9.i.do.end9.i.i31_crit_edge:                ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i.i31

if.then19.i:                                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net.i.i.i, align 4
  %conv.i = and i32 %loc, 65535
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %17, ptr noundef nonnull @.str.1, i32 noundef %conv.i, i32 noundef %call.i) #12
  br label %do.end9.i.i31

do.end9.i.i31:                                    ; preds = %if.then19.i, %do.end9.i.do.end9.i.i31_crit_edge
  %call.i.i29 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 10, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #9, !callees !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i29)
  %cmp.i.i30 = icmp slt i32 %call.i.i29, 0
  br i1 %cmp.i.i30, label %if.then.i, label %do.end9.i.i31.cleanup_crit_edge, !prof !93

do.end9.i.i31.cleanup_crit_edge:                  ; preds = %do.end9.i.i31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %do.end9.i.i31
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %19, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %call.i.i29) #12
  %20 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %21, ptr noundef nonnull @.str.10) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %do.end9.i.i31.cleanup_crit_edge, %asix_check_host_enable.exit.cleanup_crit_edge
  call void @mutex_unlock(ptr noundef %phy_mutex) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %res) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @asix_get_wol(ptr noundef %net, ptr nocapture noundef %wolinfo) local_unnamed_addr #0 align 64 {
entry:
  %opt = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %opt) #9
  %0 = ptrtoint ptr %opt to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %opt, align 1, !annotation !100
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end9.i, !prof !93

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 20, 0\0A.popsection", ""() #9, !srcloc !94
  unreachable

do.end9.i:                                        ; preds = %entry
  %call.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 28, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %opt, i16 noundef zeroext 1) #9, !callees !95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then, label %if.end, !prof !93

if.then:                                          ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %net.i = getelementptr i8, ptr %net, i32 2548
  %1 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef %call.i) #12
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wolinfo, i32 0, i32 1
  %3 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %supported, align 4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wolinfo, i32 0, i32 2
  %4 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wolopts, align 4
  br label %cleanup

if.end:                                           ; preds = %do.end9.i
  %supported2 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wolinfo, i32 0, i32 1
  %5 = ptrtoint ptr %supported2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 33, ptr %supported2, align 4
  %wolopts3 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wolinfo, i32 0, i32 2
  %6 = ptrtoint ptr %opt to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %opt, align 1
  %8 = lshr i8 %7, 1
  %.lobit = and i8 %8, 1
  %9 = zext i8 %.lobit to i32
  %10 = ptrtoint ptr %wolopts3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %wolopts3, align 4
  %11 = and i8 %7, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9.not = icmp eq i8 %11, 0
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.then10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %or12 = or i32 %9, 32
  %12 = ptrtoint ptr %wolopts3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or12, ptr %wolopts3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %opt) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asix_set_wol(ptr noundef %net, ptr nocapture noundef readonly %wolinfo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wolinfo, i32 0, i32 2
  %0 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wolopts, align 4
  %and = and i32 %1, -34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end9.i, !prof !93

do.body4.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 43, 0\0A.popsection", ""() #9, !srcloc !96
  unreachable

do.end9.i:                                        ; preds = %if.end
  %2 = trunc i32 %1 to i8
  %3 = lshr i8 %2, 3
  %4 = and i8 %3, 4
  %5 = shl nuw nsw i8 %2, 1
  %6 = and i8 %5, 2
  %7 = or i8 %4, %6
  %conv15 = zext i8 %7 to i16
  %call.i = tail call i32 @usbnet_write_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 29, i8 noundef zeroext 64, i16 noundef zeroext %conv15, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #9, !callees !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then19.i, label %do.end9.i.cleanup_crit_edge, !prof !93

do.end9.i.cleanup_crit_edge:                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then19.i:                                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %net.i = getelementptr i8, ptr %net, i32 2548
  %8 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %9, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %call.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then19.i, %do.end9.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end9.i.cleanup_crit_edge ], [ -22, %if.then19.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @asix_get_eeprom_len(ptr nocapture noundef readnone %net) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 512
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asix_get_eeprom(ptr noundef %net, ptr nocapture noundef %eeprom, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %2 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -559038737, ptr %magic, align 4
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offset, align 4
  %shr = lshr i32 %4, 1
  %add = add i32 %1, -1
  %sub = add i32 %add, %4
  %shr3 = lshr i32 %sub, 1
  %sub4 = sub nsw i32 %shr3, %shr
  %add5 = add i32 %sub4, 1
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add5, i32 2) #9
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %if.end.cleanup_crit_edge, label %if.end7.i, !prof !93

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.i:                                        ; preds = %if.end
  %7 = extractvalue { i32, i1 } %5, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3264) #14
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %if.end7.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr3, i32 %shr)
  %cmp9.not40 = icmp ult i32 %shr3, %shr
  br i1 %cmp9.not40, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %do.body4.i, label %for.body.lr.ph.for.body_crit_edge, !prof !93

for.body.lr.ph.for.body_crit_edge:                ; preds = %for.body.lr.ph
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add i32 %i.041, 1
  %cmp9.not = icmp sgt i32 %inc, %shr3
  br i1 %cmp9.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph.for.body_crit_edge
  %i.041 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ %shr, %for.body.lr.ph.for.body_crit_edge ]
  %sub10 = sub i32 %i.041, %shr
  %arrayidx = getelementptr i16, ptr %call8.i, i32 %sub10
  %conv = trunc i32 %i.041 to i16
  %call.i = tail call i32 @usbnet_read_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 11, i8 noundef zeroext -64, i16 noundef zeroext %conv, i16 noundef zeroext 0, ptr noundef %arrayidx, i16 noundef zeroext 2) #9, !callees !95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then14, label %for.cond, !prof !93

do.body4.i:                                       ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 20, 0\0A.popsection", ""() #9, !srcloc !94
  unreachable

if.then14:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %net.i = getelementptr i8, ptr %net, i32 2548
  %8 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %9, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef %call.i) #12
  br label %cleanup.sink.split

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %and = and i32 %11, 1
  %add.ptr = getelementptr i8, ptr %call8.i, i32 %and
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %14 = call ptr @memcpy(ptr %data, ptr %add.ptr, i32 %13)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.end, %if.then14
  %retval.0.ph = phi i32 [ 0, %for.end ], [ -5, %if.then14 ]
  tail call void @kfree(ptr noundef nonnull %call8.i) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end7.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end7.i.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asix_set_eeprom(ptr noundef %net, ptr nocapture noundef readonly %eeprom, ptr nocapture noundef readonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @asix_set_eeprom.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@asix_set_eeprom, %if.then)) #9
          to label %do.end6 [label %if.then], !srcloc !99

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %4 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %magic, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @asix_set_eeprom.__UNIQUE_ID_ddebug365, ptr noundef %net, ptr noundef nonnull @.str.35, i32 noundef %1, i32 noundef %3, i32 noundef %5) #9
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %len7 = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %6 = ptrtoint ptr %len7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %do.end6.cleanup_crit_edge, label %if.end9

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %do.end6
  %magic10 = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %8 = ptrtoint ptr %magic10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %magic10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559038737, i32 %9)
  %cmp11.not = icmp eq i32 %9, -559038737
  br i1 %cmp11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %offset14 = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %10 = ptrtoint ptr %offset14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset14, align 4
  %shr = lshr i32 %11, 1
  %add = add i32 %7, -1
  %sub = add i32 %add, %11
  %shr17 = lshr i32 %sub, 1
  %sub18 = sub nsw i32 %shr17, %shr
  %add19 = add i32 %sub18, 1
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add19, i32 2) #9
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %if.end13.cleanup_crit_edge, label %if.end7.i, !prof !93

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.i:                                        ; preds = %if.end13
  %14 = extractvalue { i32, i1 } %12, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3264) #14
  %tobool21.not = icmp eq ptr %call8.i, null
  br i1 %tobool21.not, label %if.end7.i.cleanup_crit_edge, label %if.end23

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %if.end7.i
  %15 = ptrtoint ptr %offset14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset14, align 4
  %and = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.end23.if.end32_crit_edge, label %if.then26

if.end23.if.end32_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then26:                                        ; preds = %if.end23
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end9.i, !prof !93

do.body4.i:                                       ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 20, 0\0A.popsection", ""() #9, !srcloc !94
  unreachable

do.end9.i:                                        ; preds = %if.then26
  %conv = trunc i32 %shr to i16
  %call.i = tail call i32 @usbnet_read_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 11, i8 noundef zeroext -64, i16 noundef zeroext %conv, i16 noundef zeroext 0, ptr noundef nonnull %call8.i, i16 noundef zeroext 2) #9, !callees !95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then30, label %do.end9.i.if.end32_crit_edge, !prof !93

do.end9.i.if.end32_crit_edge:                     ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then30:                                        ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %net.i = getelementptr i8, ptr %net, i32 2548
  %17 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %18, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef %call.i) #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %net, ptr noundef nonnull @.str.36, i32 noundef %shr) #12
  br label %free

if.end32:                                         ; preds = %do.end9.i.if.end32_crit_edge, %if.end23.if.end32_crit_edge
  %19 = ptrtoint ptr %offset14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset14, align 4
  %21 = ptrtoint ptr %len7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len7, align 4
  %add35 = add i32 %22, %20
  %and36 = and i32 %add35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end47, label %if.then38

if.then38:                                        ; preds = %if.end32
  %tobool.not.i152 = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i152, label %do.body4.i153, label %do.end9.i156, !prof !93

do.body4.i153:                                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 20, 0\0A.popsection", ""() #9, !srcloc !94
  unreachable

do.end9.i156:                                     ; preds = %if.then38
  %arrayidx41 = getelementptr i16, ptr %call8.i, i32 %sub18
  %conv39 = trunc i32 %shr17 to i16
  %call.i154 = tail call i32 @usbnet_read_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 11, i8 noundef zeroext -64, i16 noundef zeroext %conv39, i16 noundef zeroext 0, ptr noundef %arrayidx41, i16 noundef zeroext 2) #9, !callees !95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154)
  %cmp.i155 = icmp slt i32 %call.i154, 0
  br i1 %cmp.i155, label %if.then45, label %if.end47.thread, !prof !93

if.end47.thread:                                  ; preds = %do.end9.i156
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %offset14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset14, align 4
  %and49191 = and i32 %24, 1
  %add.ptr192 = getelementptr i8, ptr %call8.i, i32 %and49191
  %25 = ptrtoint ptr %len7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len7, align 4
  %27 = call ptr @memcpy(ptr %add.ptr192, ptr %data, i32 %26)
  br label %do.end9.i164

if.then45:                                        ; preds = %do.end9.i156
  call void @__sanitizer_cov_trace_pc() #11
  %net.i157 = getelementptr i8, ptr %net, i32 2548
  %28 = ptrtoint ptr %net.i157 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %net.i157, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %29, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef %call.i154) #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %net, ptr noundef nonnull @.str.36, i32 noundef %shr17) #12
  br label %free

if.end47:                                         ; preds = %if.end32
  %30 = ptrtoint ptr %offset14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %offset14, align 4
  %and49 = and i32 %31, 1
  %add.ptr = getelementptr i8, ptr %call8.i, i32 %and49
  %32 = ptrtoint ptr %len7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len7, align 4
  %34 = call ptr @memcpy(ptr %add.ptr, ptr %data, i32 %33)
  %tobool.not.i160 = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i160, label %do.body4.i161, label %if.end47.do.end9.i164_crit_edge, !prof !93

if.end47.do.end9.i164_crit_edge:                  ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i164

do.body4.i161:                                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/asix_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 43, 0\0A.popsection", ""() #9, !srcloc !96
  unreachable

do.end9.i164:                                     ; preds = %if.end47.do.end9.i164_crit_edge, %if.end47.thread
  %call.i162 = tail call i32 @usbnet_write_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 13, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #9, !callees !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i162)
  %cmp.i163 = icmp slt i32 %call.i162, 0
  br i1 %cmp.i163, label %if.then54, label %if.end55, !prof !93

if.then54:                                        ; preds = %do.end9.i164
  call void @__sanitizer_cov_trace_pc() #11
  %net.i165 = getelementptr i8, ptr %net, i32 2548
  %35 = ptrtoint ptr %net.i165 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %net.i165, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %36, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %call.i162) #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %net, ptr noundef nonnull @.str.37) #12
  br label %free

if.end55:                                         ; preds = %do.end9.i164
  tail call void @msleep(i32 noundef 20) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %shr17, i32 %shr)
  %cmp56.not196 = icmp ult i32 %shr17, %shr
  br i1 %cmp56.not196, label %if.end55.do.end9.i179_crit_edge, label %if.end55.do.body59_crit_edge

if.end55.do.body59_crit_edge:                     ; preds = %if.end55
  br label %do.body59

if.end55.do.end9.i179_crit_edge:                  ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i179

do.body59:                                        ; preds = %if.end87.do.body59_crit_edge, %if.end55.do.body59_crit_edge
  %i.0197 = phi i32 [ %inc, %if.end87.do.body59_crit_edge ], [ %shr, %if.end55.do.body59_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @asix_set_eeprom.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@asix_set_eeprom, %if.then71)) #9
          to label %do.end9.i171 [label %if.then71], !srcloc !99

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #11
  %sub72 = sub i32 %i.0197, %shr
  %arrayidx73 = getelementptr i16, ptr %call8.i, i32 %sub72
  %37 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx73, align 2
  %conv74 = zext i16 %38 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @asix_set_eeprom.__UNIQUE_ID_ddebug366, ptr noundef %net, ptr noundef nonnull @.str.38, i32 noundef %i.0197, i32 noundef %conv74) #9
  br label %do.end9.i171

do.end9.i171:                                     ; preds = %if.then71, %do.body59
  %conv80 = trunc i32 %i.0197 to i16
  %sub81 = sub i32 %i.0197, %shr
  %arrayidx82 = getelementptr i16, ptr %call8.i, i32 %sub81
  %39 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx82, align 2
  %call.i169 = tail call i32 @usbnet_write_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 12, i8 noundef zeroext 64, i16 noundef zeroext %conv80, i16 noundef zeroext %40, ptr noundef null, i16 noundef zeroext 0) #9, !callees !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i169)
  %cmp.i170 = icmp slt i32 %call.i169, 0
  br i1 %cmp.i170, label %if.then86, label %if.end87, !prof !93

if.then86:                                        ; preds = %do.end9.i171
  call void @__sanitizer_cov_trace_pc() #11
  %net.i172 = getelementptr i8, ptr %net, i32 2548
  %41 = ptrtoint ptr %net.i172 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %net.i172, align 4
  %conv.i = zext i16 %40 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %42, ptr noundef nonnull @.str.1, i32 noundef %conv.i, i32 noundef %call.i169) #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %net, ptr noundef nonnull @.str.39, i32 noundef %i.0197) #12
  br label %free

if.end87:                                         ; preds = %do.end9.i171
  tail call void @msleep(i32 noundef 20) #9
  %inc = add i32 %i.0197, 1
  %cmp56.not = icmp sgt i32 %inc, %shr17
  br i1 %cmp56.not, label %if.end87.do.end9.i179_crit_edge, label %if.end87.do.body59_crit_edge

if.end87.do.body59_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body59

if.end87.do.end9.i179_crit_edge:                  ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i179

do.end9.i179:                                     ; preds = %if.end87.do.end9.i179_crit_edge, %if.end55.do.end9.i179_crit_edge
  %call.i177 = tail call i32 @usbnet_write_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #9, !callees !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i177)
  %cmp.i178 = icmp slt i32 %call.i177, 0
  br i1 %cmp.i178, label %if.then91, label %do.end9.i179.free_crit_edge, !prof !93

do.end9.i179.free_crit_edge:                      ; preds = %do.end9.i179
  call void @__sanitizer_cov_trace_pc() #11
  br label %free

if.then91:                                        ; preds = %do.end9.i179
  call void @__sanitizer_cov_trace_pc() #11
  %net.i180 = getelementptr i8, ptr %net, i32 2548
  %43 = ptrtoint ptr %net.i180 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %net.i180, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %44, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %call.i177) #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %net, ptr noundef nonnull @.str.40) #12
  br label %free

free:                                             ; preds = %if.then91, %do.end9.i179.free_crit_edge, %if.then86, %if.then54, %if.then45, %if.then30
  %ret.0 = phi i32 [ %call.i, %if.then30 ], [ %call.i154, %if.then45 ], [ %call.i162, %if.then54 ], [ %call.i169, %if.then86 ], [ %call.i177, %if.then91 ], [ 0, %do.end9.i179.free_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i) #9
  br label %cleanup

cleanup:                                          ; preds = %free, %if.end7.i.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %free ], [ -22, %do.end6.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -12, %if.end7.i.cleanup_crit_edge ], [ -12, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @asix_get_drvinfo(ptr noundef %net, ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usbnet_get_drvinfo(ptr noundef %net, ptr noundef %info) #9
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str.4, i32 noundef 32) #9
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call2 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.41, i32 noundef 32) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_get_drvinfo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asix_set_mac_address(ptr noundef %net, ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 6
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
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end5

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dev_addr_mod(ptr noundef %net, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #9
  %mac_addr = getelementptr i8, ptr %net, i32 2564
  %7 = call ptr @memcpy(ptr %mac_addr, ptr %sa_data, i32 6)
  %call.i = tail call i32 @usbnet_write_cmd_async(ptr noundef %add.ptr.i, i8 noundef zeroext 20, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %mac_addr, i16 noundef zeroext 6) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %is_valid_ether_addr.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -16, %entry.cleanup_crit_edge ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -99, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readonly willreturn }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !18, !20, !22, !23, !24, !25, !26, !28, !30, !32, !34, !35, !36, !38, !40, !42, !43, !44, !46, !48, !49, !50, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !72, !74, !75, !77, !79, !81, !83}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/usb/asix_common.c", i32 31, i32 25}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/usb/asix_common.c", i32 54, i32 25}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/usb/asix_common.c", i32 134, i32 25}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/usb/asix_common.c", i32 166, i32 26}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/usb/asix_common.c", i32 172, i32 5}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @asix_rx_fixup_internal.__UNIQUE_ID_ddebug356, !9, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/usb/asix_common.c", i32 209, i32 24}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/usb/asix_common.c", i32 303, i32 24}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/usb/asix_common.c", i32 312, i32 24}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/usb/asix_common.c", i32 333, i32 2}
!22 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @asix_read_phy_addr.__UNIQUE_ID_ddebug357, !21, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!24 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/usb/asix_common.c", i32 339, i32 23}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/usb/asix_common.c", i32 350, i32 24}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/usb/asix_common.c", i32 361, i32 24}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/usb/asix_common.c", i32 373, i32 2}
!34 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @asix_write_rx_ctl.__UNIQUE_ID_ddebug358, !33, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/usb/asix_common.c", i32 376, i32 24}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/usb/asix_common.c", i32 389, i32 24}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/usb/asix_common.c", i32 402, i32 2}
!42 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @asix_write_medium_mode.__UNIQUE_ID_ddebug359, !41, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/usb/asix_common.c", i32 406, i32 24}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/usb/asix_common.c", i32 437, i32 2}
!48 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @asix_write_gpio.__UNIQUE_ID_ddebug360, !47, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/usb/asix_common.c", i32 440, i32 24}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/usb/asix_common.c", i32 514, i32 2}
!54 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @asix_mdio_read.__UNIQUE_ID_ddebug361, !53, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/usb/asix_common.c", i32 587, i32 2}
!58 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @asix_mdio_read_nopm.__UNIQUE_ID_ddebug363, !57, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/usb/asix_common.c", i32 600, i32 2}
!62 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @asix_mdio_write_nopm.__UNIQUE_ID_ddebug364, !61, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/usb/asix_common.c", i32 705, i32 2}
!66 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @asix_set_eeprom.__UNIQUE_ID_ddebug365, !65, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/usb/asix_common.c", i32 728, i32 20}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/usb/asix_common.c", i32 747, i32 19}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/usb/asix_common.c", i32 753, i32 3}
!74 = !{ptr @asix_set_eeprom.__UNIQUE_ID_ddebug366, !73, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/usb/asix_common.c", i32 758, i32 20}
!77 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/usb/asix_common.c", i32 767, i32 19}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/usb/asix_common.c", i32 782, i32 25}
!81 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/usb/asix_common.c", i32 527, i32 2}
!83 = !{ptr @__asix_mdio_write.__UNIQUE_ID_ddebug362, !82, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{!"branch_weights", i32 1, i32 2000}
!94 = !{i64 2156707535, i64 2156708028, i64 2156707572, i64 2156707628, i64 2156707662, i64 2156707686, i64 2156707727, i64 2156707748, i64 2156707776, i64 2156707810}
!95 = !{ptr @usbnet_read_cmd, ptr @usbnet_read_cmd_nopm}
!96 = !{i64 2156709183, i64 2156709676, i64 2156709220, i64 2156709276, i64 2156709310, i64 2156709334, i64 2156709375, i64 2156709396, i64 2156709424, i64 2156709458}
!97 = !{ptr @usbnet_write_cmd, ptr @usbnet_write_cmd_nopm}
!98 = !{i8 0, i8 2}
!99 = !{i64 2148979267, i64 2148979272, i64 2148979285, i64 2148979329, i64 2148979363, i64 2148979384}
!100 = !{!"auto-init"}
