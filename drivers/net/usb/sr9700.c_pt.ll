; ModuleID = '/llk/IR_all_yes/drivers/net/usb/sr9700.c_pt.bc'
source_filename = "../drivers/net/usb/sr9700.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.driver_info = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.usbnet = type { ptr, ptr, ptr, ptr, ptr, %struct.wait_queue_head, %struct.mutex, i8, i8, i8, i16, i16, i8, i32, i32, ptr, i32, %struct.timer_list, ptr, ptr, i32, [5 x i32], i32, i32, i32, %struct.mii_if_info, i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, i32, %struct.mutex, %struct.usb_anchor, %struct.tasklet_struct, %struct.work_struct, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.121, i32 }
%union.anon.121 = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
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
%struct.ethtool_cmd = type { i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i32, i32, i16, i8, i8, i32, [2 x i32] }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
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
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ifreq = type { %union.anon.104, %union.anon.105 }
%union.anon.104 = type { [16 x i8] }
%union.anon.105 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }

@__initcall__kmod_sr9700__351_554_sr9700_usb_driver_init6 = internal global ptr @sr9700_usb_driver_init, section ".initcall6.init", align 4
@sr9700_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @usbnet_probe, ptr @usbnet_disconnect, ptr null, ptr @usbnet_suspend, ptr @usbnet_resume, ptr null, ptr null, ptr null, ptr @products, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 32 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sr9700_usb_driver_exit = internal global ptr @sr9700_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author352 = internal constant [46 x i8] c"sr9700.author=liujl <liujunliang_ljl@163.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description353 = internal constant [99 x i8] c"sr9700.description=SR9700 one chip USB 1.1 USB to Ethernet device from http://www.corechip-sz.com/\00", section ".modinfo", align 1
@__UNIQUE_ID_file354 = internal constant [35 x i8] c"sr9700.file=drivers/net/usb/sr9700\00", section ".modinfo", align 1
@__UNIQUE_ID_license355 = internal constant [19 x i8] c"sr9700.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sr9700\00", [25 x i8] zeroinitializer }, align 32
@products = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 4070, i16 -26880, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @sr9700_driver_info to i32) }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sr9700_driver_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.1, i32 32, ptr @sr9700_bind, ptr null, ptr @sr9700_link_reset, ptr null, ptr null, ptr null, ptr @sr9700_status, ptr @sr9700_link_reset, ptr @sr9700_rx_fixup, ptr @sr9700_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CoreChip SR9700 USB Ethernet\00", [35 x i8] zeroinitializer }, align 32
@sr9700_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @usbnet_open, ptr @usbnet_stop, ptr @usbnet_start_xmit, ptr null, ptr null, ptr null, ptr @sr9700_set_multicast, ptr @sr9700_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @sr9700_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_change_mtu, ptr null, ptr @usbnet_tx_timeout, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@sr9700_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @usbnet_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_get_msglevel, ptr @usbnet_set_msglevel, ptr @usbnet_nway_reset, ptr @sr9700_get_link, ptr null, ptr @sr9700_get_eeprom_len, ptr @sr9700_get_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_get_link_ksettings_mii, ptr @usbnet_set_link_ksettings_mii, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error reading MAC address\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"not setting invalid mac address %pM\0A\00", [59 x i8] zeroinitializer }, align 32
@sr_share_read_word.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sr_share_read_word\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/net/usb/sr9700.c\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"read shared %d 0x%02x returned 0x%04x, %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s write timed out!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"eeprom\00", [25 x i8] zeroinitializer }, align 32
@sr_mdio_read.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.5, ptr @.str.11, i8 0, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sr_mdio_read\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Only internal phy supported\0A\00", [35 x i8] zeroinitializer }, align 32
@sr_mdio_read.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.5, ptr @.str.12, i8 0, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"sr_mdio_read() phy_id=0x%02x, loc=0x%02x, returns=0x%04x\0A\00", [38 x i8] zeroinitializer }, align 32
@sr_mdio_write.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.5, ptr @.str.11, i8 0, i8 53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sr_mdio_write\00", [18 x i8] zeroinitializer }, align 32
@sr_mdio_write.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.5, ptr @.str.14, i8 0, i8 55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"sr_mdio_write() phy_id=0x%02x, loc=0x%02x, val=0x%04x\0A\00", [41 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@sr9700_link_reset.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.5, ptr @.str.16, i8 0, i8 -127, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sr9700_link_reset\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"link_reset() speed: %d duplex: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@sr9700_status.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.5, ptr @.str.18, i8 0, i8 126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sr9700_status\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Link Status is: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unexpected tiny rx frame\0A\00", [38 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"sr9700_usb_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 544, i32 26 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 554, i32 1 }
@___asan_gen_.26 = private unnamed_addr constant [9 x i8] c"products\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 534, i32 35 }
@___asan_gen_.29 = private unnamed_addr constant [19 x i8] c"sr9700_driver_info\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 523, i32 33 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 524, i32 17 }
@___asan_gen_.35 = private unnamed_addr constant [18 x i8] c"sr9700_netdev_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 306, i32 36 }
@___asan_gen_.38 = private unnamed_addr constant [19 x i8] c"sr9700_ethtool_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 246, i32 33 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 355, i32 22 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 295, i32 22 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 112, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 90, i32 23 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 90, i32 54 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 90, i32 62 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 184, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 202, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 215, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 219, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 517, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 506, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private constant [28 x i8] c"../drivers/net/usb/sr9700.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 404, i32 24 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_author352, ptr @__UNIQUE_ID_description353, ptr @__UNIQUE_ID_file354, ptr @__UNIQUE_ID_license355, ptr @__exitcall_sr9700_usb_driver_exit, ptr @__initcall__kmod_sr9700__351_554_sr9700_usb_driver_init6, ptr @sr9700_usb_driver_exit, ptr @sr9700_usb_driver, ptr @.str, ptr @products, ptr @sr9700_driver_info, ptr @.str.1, ptr @sr9700_netdev_ops, ptr @sr9700_ethtool_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr9700_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @products to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr9700_driver_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr9700_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr9700_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sr9700_usb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @sr9700_usb_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sr9700_usb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_deregister(ptr noundef nonnull @sr9700_usb_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_probe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_disconnect(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr9700_bind(ptr noundef %dev, ptr noundef %intf) #2 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #8
  %0 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %call = tail call i32 @usbnet_get_endpoints(ptr noundef %dev, ptr noundef %intf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %1 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %net, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 16
  %3 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @sr9700_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 44
  %4 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @sr9700_ethtool_ops, ptr %ethtool_ops, align 16
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 19
  %5 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %hard_header_len, align 2
  %add = add i16 %6, 2
  store i16 %add, ptr %hard_header_len, align 2
  %mtu = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 20
  %7 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mtu, align 4
  %conv3 = zext i16 %add to i32
  %add4 = add i32 %8, %conv3
  %hard_mtu = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 23
  %9 = ptrtoint ptr %hard_mtu to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add4, ptr %hard_mtu, align 4
  %rx_urb_size = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 24
  %10 = ptrtoint ptr %rx_urb_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3072, ptr %rx_urb_size, align 4
  %dev6 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 5
  %11 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %dev6, align 4
  %mdio_read = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 6
  %12 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @sr_mdio_read, ptr %mdio_read, align 4
  %mdio_write = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 7
  %13 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @sr_mdio_write, ptr %mdio_write, align 4
  %phy_id_mask = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 2
  %14 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 31, ptr %phy_id_mask, align 4
  %reg_num_mask = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 3
  %15 = ptrtoint ptr %reg_num_mask to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 31, ptr %reg_num_mask, align 4
  %call.i = tail call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 4294960) #8
  %call.i43 = call i32 @usbnet_read_cmd(ptr noundef %dev, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef nonnull %addr, i16 noundef zeroext 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i43)
  %cmp.not.i.not = icmp eq i32 %call.i43, 6
  br i1 %cmp.not.i.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #11
  br label %out

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %mii5 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25
  call void @dev_addr_mod(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #8
  %call.i44 = call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 31, ptr noundef null, i16 noundef zeroext 0) #8
  call void @msleep(i32 noundef 20) #8
  %call.i45 = call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 31, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %17(i32 noundef 429496000) #8
  call void @sr9700_set_multicast(ptr noundef %2)
  %18 = ptrtoint ptr %mii5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mii5, align 4
  call void @sr_mdio_write(ptr noundef %2, i32 noundef %19, i32 noundef 0, i32 noundef 32768)
  %20 = ptrtoint ptr %mii5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mii5, align 4
  call void @sr_mdio_write(ptr noundef %2, i32 noundef %21, i32 noundef 4, i32 noundef 1505)
  %call16 = call i32 @mii_nway_restart(ptr noundef %mii5) #8
  br label %out

out:                                              ; preds = %if.end11, %if.then10, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call, %entry.out_crit_edge ], [ -19, %if.then10 ], [ 0, %if.end11 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr9700_link_reset(ptr noundef %dev) #2 align 64 {
entry:
  %ecmd = alloca %struct.ethtool_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %ecmd) #8
  %0 = call ptr @memset(ptr %ecmd, i32 255, i32 44)
  %mii = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25
  %call = tail call i32 @mii_check_media(ptr noundef %mii, i32 noundef 1, i32 noundef 1) #8
  call void @mii_ethtool_gset(ptr noundef %mii, ptr noundef nonnull %ecmd) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sr9700_link_reset.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sr9700_link_reset, %if.then)) #8
          to label %do.end8 [label %if.then], !srcloc !70

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %1 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %net, align 4
  %speed = getelementptr inbounds %struct.ethtool_cmd, ptr %ecmd, i32 0, i32 3
  %3 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %speed, align 4
  %conv = zext i16 %4 to i32
  %duplex = getelementptr inbounds %struct.ethtool_cmd, ptr %ecmd, i32 0, i32 4
  %5 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %duplex, align 2
  %conv6 = zext i8 %6 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sr9700_link_reset.__UNIQUE_ID_ddebug350, ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef %conv, i32 noundef %conv6) #8
  br label %do.end8

do.end8:                                          ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %ecmd) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sr9700_status(ptr noundef %dev, ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %0 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp = icmp ult i32 %1, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_buffer, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %6 = and i8 %5, 64
  %.lobit = lshr exact i8 %6, 6
  %7 = zext i8 %.lobit to i32
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %8 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %12 = trunc i32 %11 to i8
  %13 = lshr i8 %12, 2
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %.lobit, i8 %15)
  %cmp3.not = icmp eq i8 %.lobit, %15
  br i1 %cmp3.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool = icmp ne i8 %6, 0
  tail call void @usbnet_link_change(ptr noundef %dev, i1 noundef zeroext %tobool, i1 noundef zeroext true) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sr9700_status.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sr9700_status, %if.then15)) #8
          to label %cleanup [label %if.then15], !srcloc !70

if.then15:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sr9700_status.__UNIQUE_ID_ddebug349, ptr noundef %17, ptr noundef nonnull @.str.18, i32 noundef %7) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr9700_rx_fixup(ptr noundef %dev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp = icmp ult i32 %1, 7
  br i1 %cmp, label %if.then, label %while.cond.preheader, !prof !71

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp472.not = icmp eq i32 %1, 7
  br i1 %cmp472.not, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %while.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.19) #11
  br label %cleanup

while.body:                                       ; preds = %if.end32.while.body_crit_edge, %while.body.lr.ph
  %4 = phi i32 [ %1, %while.body.lr.ph ], [ %.pr, %if.end32.while.body_crit_edge ]
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %8)
  %cmp5.not = icmp eq i8 %8, 64
  br i1 %cmp5.not, label %if.end8, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %while.body
  %arrayidx10 = getelementptr i8, ptr %6, i32 1
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %10 to i32
  %arrayidx13 = getelementptr i8, ptr %6, i32 2
  %11 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %12 to i32
  %shl = shl nuw nsw i32 %conv14, 8
  %or = or i32 %shl, %conv11
  %sub = add nsw i32 %or, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1518, i32 %or)
  %cmp15 = icmp ugt i32 %or, 1518
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %4)
  %cmp18 = icmp ugt i32 %sub, %4
  %or.cond = select i1 %cmp15, i1 true, i1 %cmp18
  br i1 %or.cond, label %if.end8.cleanup_crit_edge, label %if.end21

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21:                                         ; preds = %if.end8
  %add = add nuw nsw i32 %or, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %add)
  %cmp23 = icmp eq i32 %4, %add
  br i1 %cmp23, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 3) #8
  %13 = ptrtoint ptr %len1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub, ptr %len1, align 4
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %sub
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %16 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr.i, ptr %tail.i, align 8
  %add27 = add nuw nsw i32 %or, 196
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %17 = ptrtoint ptr %truesize to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add27, ptr %truesize, align 8
  br label %cleanup

if.end28:                                         ; preds = %if.end21
  %call29 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #8
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %if.end28.cleanup_crit_edge, label %if.end32

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  %len33 = getelementptr inbounds %struct.sk_buff, ptr %call29, i32 0, i32 6
  %18 = ptrtoint ptr %len33 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub, ptr %len33, align 4
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 3
  %data35 = getelementptr inbounds %struct.sk_buff, ptr %call29, i32 0, i32 19
  %21 = ptrtoint ptr %data35 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr, ptr %data35, align 4
  %add.ptr.i70 = getelementptr i8, ptr %add.ptr, i32 %sub
  %tail.i71 = getelementptr inbounds %struct.sk_buff, ptr %call29, i32 0, i32 16
  %22 = ptrtoint ptr %tail.i71 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.i70, ptr %tail.i71, align 8
  %add36 = add nuw nsw i32 %or, 196
  %truesize37 = getelementptr inbounds %struct.sk_buff, ptr %call29, i32 0, i32 20
  %23 = ptrtoint ptr %truesize37 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add36, ptr %truesize37, align 8
  tail call void @usbnet_skb_return(ptr noundef %dev, ptr noundef nonnull %call29) #8
  %call39 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %add) #8
  %24 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr = load i32, ptr %len1, align 4
  %cmp4 = icmp ugt i32 %.pr, 7
  br i1 %cmp4, label %if.end32.while.body_crit_edge, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end32.while.body_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup:                                          ; preds = %if.end32.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.then25, %if.end8.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.then, %while.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then25 ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ 0, %if.end32.cleanup_crit_edge ], [ 0, %if.end28.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sr9700_tx_fixup(ptr nocapture noundef readonly %dev, ptr noundef %skb, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1, align 4
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %2 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %skb_header_cloned.exit.thread.i, label %skb_header_cloned.exit.i

skb_header_cloned.exit.i:                         ; preds = %entry
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %3 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %4, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #8
  %5 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %dataref1.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %9 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %8 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.ptr.sub.i.i.i)
  %cmp.i1.i = icmp ult i32 %sub.ptr.sub.i.i.i, 2
  br i1 %cmp.i1.i, label %skb_header_cloned.exit.i.if.end.thread.i.i_crit_edge, label %if.end.i2.i

skb_header_cloned.exit.i.if.end.thread.i.i_crit_edge: ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread.i.i

skb_header_cloned.exit.thread.i:                  ; preds = %entry
  %data.i.i5.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %11 = ptrtoint ptr %data.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i.i5.i, align 4
  %head.i.i6.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %13 = ptrtoint ptr %head.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i.i6.i, align 8
  %sub.ptr.lhs.cast.i.i7.i = ptrtoint ptr %12 to i32
  %sub.ptr.rhs.cast.i.i8.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i.i9.i = sub i32 %sub.ptr.lhs.cast.i.i7.i, %sub.ptr.rhs.cast.i.i8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.ptr.sub.i.i9.i)
  %cmp.i110.i = icmp ult i32 %sub.ptr.sub.i.i9.i, 2
  br i1 %cmp.i110.i, label %skb_header_cloned.exit.thread.i.if.end.thread.i.i_crit_edge, label %skb_header_cloned.exit.thread.i.if.end_crit_edge

skb_header_cloned.exit.thread.i.if.end_crit_edge: ; preds = %skb_header_cloned.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

skb_header_cloned.exit.thread.i.if.end.thread.i.i_crit_edge: ; preds = %skb_header_cloned.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread.i.i

if.end.thread.i.i:                                ; preds = %skb_header_cloned.exit.thread.i.if.end.thread.i.i_crit_edge, %skb_header_cloned.exit.i.if.end.thread.i.i_crit_edge
  %sub.ptr.sub.i.i12.i = phi i32 [ %sub.ptr.sub.i.i9.i, %skb_header_cloned.exit.thread.i.if.end.thread.i.i_crit_edge ], [ %sub.ptr.sub.i.i.i, %skb_header_cloned.exit.i.if.end.thread.i.i_crit_edge ]
  %phi.bo.i.i = sub nuw nsw i32 129, %sub.ptr.sub.i.i12.i
  %phi.bo11.i.i = and i32 %phi.bo.i.i, -128
  br label %skb_cow_head.exit

if.end.i2.i:                                      ; preds = %skb_header_cloned.exit.i
  %and.i.i = and i32 %6, 65535
  %shr.i.i = ashr i32 %6, 16
  %sub.i.i = sub nsw i32 %and.i.i, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 1
  br i1 %cmp.i.not.i, label %if.end.i2.i.if.end_crit_edge, label %if.end.i2.i.skb_cow_head.exit_crit_edge

if.end.i2.i.skb_cow_head.exit_crit_edge:          ; preds = %if.end.i2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_cow_head.exit

if.end.i2.i.if.end_crit_edge:                     ; preds = %if.end.i2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

skb_cow_head.exit:                                ; preds = %if.end.i2.i.skb_cow_head.exit_crit_edge, %if.end.thread.i.i
  %delta.010.i.i = phi i32 [ %phi.bo11.i.i, %if.end.thread.i.i ], [ 0, %if.end.i2.i.skb_cow_head.exit_crit_edge ]
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %delta.010.i.i, i32 noundef 0, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not, label %skb_cow_head.exit.if.end_crit_edge, label %if.then

skb_cow_head.exit.if.end_crit_edge:               ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #8
  br label %cleanup

if.end:                                           ; preds = %skb_cow_head.exit.if.end_crit_edge, %if.end.i2.i.if.end_crit_edge, %skb_header_cloned.exit.thread.i.if.end_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 -2
  store ptr %add.ptr.i, ptr %data.i, align 4
  %17 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len1, align 4
  %add.i = add i32 %18, 2
  store i32 %add.i, ptr %len1, align 4
  %maxpacket = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 16
  %19 = ptrtoint ptr %maxpacket to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %maxpacket, align 4
  %rem = urem i32 %add.i, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp = icmp eq i32 %rem, 0
  %inc = zext i1 %cmp to i32
  %spec.select = add i32 %1, %inc
  %conv = trunc i32 %spec.select to i8
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv, ptr %add.ptr.i, align 1
  %22 = lshr i32 %spec.select, 8
  %conv6 = trunc i32 %22 to i8
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 4
  %arrayidx8 = getelementptr i8, ptr %24, i32 1
  %25 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv6, ptr %arrayidx8, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ %skb, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_endpoints(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr_mdio_read(ptr noundef %netdev, i32 noundef %phy_id, i32 noundef %loc) #2 align 64 {
entry:
  %res = alloca i16, align 2
  %value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %res) #8
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %res, align 2, !annotation !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phy_id)
  %tobool.not = icmp eq i32 %phy_id, 0
  br i1 %tobool.not, label %if.end9, label %do.body1

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sr_mdio_read.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sr_mdio_read, %if.then6)) #8
          to label %cleanup [label %if.then6], !srcloc !70

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sr_mdio_read.__UNIQUE_ID_ddebug345, ptr noundef %netdev, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %loc)
  %cmp = icmp eq i32 %loc, 1
  br i1 %cmp, label %if.then10, label %if.end9.if.else_crit_edge

if.end9.if.else_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then10:                                        ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #8
  %1 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %value, align 1, !annotation !72
  %call.i.i = call i32 @usbnet_read_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef nonnull %value, i16 noundef zeroext 1) #8
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %value, align 1
  %4 = and i8 %3, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool12.not = icmp eq i8 %4, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #8
  br i1 %tobool12.not, label %if.then10.if.else_crit_edge, label %if.then20

if.then10.if.else_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then20:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = call fastcc i32 @sr_share_read_word(ptr noundef %add.ptr.i, i32 noundef 1, i8 noundef zeroext 1, ptr noundef nonnull %res)
  %5 = ptrtoint ptr %res to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %res, align 2
  %7 = or i16 %6, 1024
  br label %do.body28

if.else:                                          ; preds = %if.then10.if.else_crit_edge, %if.end9.if.else_crit_edge
  %conv1661 = trunc i32 %loc to i8
  %call1762 = call fastcc i32 @sr_share_read_word(ptr noundef %add.ptr.i, i32 noundef 1, i8 noundef zeroext %conv1661, ptr noundef nonnull %res)
  %8 = ptrtoint ptr %res to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %res, align 2
  %10 = and i16 %9, -1025
  br label %do.body28

do.body28:                                        ; preds = %if.else, %if.then20
  %.sink = phi i16 [ %10, %if.else ], [ %7, %if.then20 ]
  %11 = call i16 @llvm.bswap.i16(i16 %.sink)
  %12 = ptrtoint ptr %res to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %res, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sr_mdio_read.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sr_mdio_read, %if.then40)) #8
          to label %do.end46 [label %if.then40], !srcloc !70

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %res to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %res, align 2
  %conv41 = zext i16 %14 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sr_mdio_read.__UNIQUE_ID_ddebug346, ptr noundef %netdev, ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef %loc, i32 noundef %conv41) #8
  br label %do.end46

do.end46:                                         ; preds = %if.then40, %do.body28
  %15 = ptrtoint ptr %res to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %res, align 2
  %conv47 = zext i16 %16 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end46, %if.then6, %do.body1
  %retval.0 = phi i32 [ %conv47, %do.end46 ], [ 0, %if.then6 ], [ 0, %do.body1 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %res) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sr_mdio_write(ptr noundef %netdev, i32 noundef %phy_id, i32 noundef %loc, i32 noundef %val) #2 align 64 {
entry:
  %tmp.i.i = alloca i8, align 1
  %value.addr.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %conv = trunc i32 %val to i16
  %0 = tail call i16 @llvm.bswap.i16(i16 %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phy_id)
  %tobool.not = icmp eq i32 %phy_id, 0
  br i1 %tobool.not, label %do.body11, label %do.body1

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sr_mdio_write.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sr_mdio_write, %if.then6)) #8
          to label %cleanup [label %if.then6], !srcloc !70

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sr_mdio_write.__UNIQUE_ID_ddebug347, ptr noundef %netdev, ptr noundef nonnull @.str.11) #8
  br label %cleanup

do.body11:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sr_mdio_write.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sr_mdio_write, %if.then23)) #8
          to label %do.end28 [label %if.then23], !srcloc !70

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sr_mdio_write.__UNIQUE_ID_ddebug348, ptr noundef %netdev, ptr noundef nonnull @.str.14, i32 noundef 0, i32 noundef %loc, i32 noundef %val) #8
  br label %do.end28

do.end28:                                         ; preds = %if.then23, %do.body11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value.addr.i)
  %1 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %0, ptr %value.addr.i, align 2
  %phy_mutex.i = getelementptr i8, ptr %netdev, i32 2376
  tail call void @mutex_lock_nested(ptr noundef %phy_mutex.i, i32 noundef 0) #8
  %call.i.i = call i32 @usbnet_write_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 13, ptr noundef nonnull %value.addr.i, i16 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 2
  %spec.store.select.i.i = select i1 %cmp3.i.i, i32 -2147483648, i32 %call.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i.i = icmp slt i32 %call.i.i, 0
  %err.0.i.i = select i1 %cmp1.i.i, i32 %call.i.i, i32 %spec.store.select.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i)
  %cmp.i = icmp slt i32 %err.0.i.i, 0
  br i1 %cmp.i, label %do.end28.sr_share_write_word.exit_crit_edge, label %cond.end.i

do.end28.sr_share_write_word.exit_crit_edge:      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %sr_share_write_word.exit

cond.end.i:                                       ; preds = %do.end28
  %conv29 = trunc i32 %loc to i8
  %2 = or i8 %conv29, 64
  %conv.i.i = zext i8 %2 to i16
  %call.i1.i = call i32 @usbnet_write_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i, i16 noundef zeroext 12, ptr noundef null, i16 noundef zeroext 0) #8
  %call.i2.i = call i32 @usbnet_write_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 26, i16 noundef zeroext 11, ptr noundef null, i16 noundef zeroext 0) #8
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %cleanup.i.i
  %inc.i.i = add nuw nsw i32 %i.016.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 1000
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %cond.end.i
  %i.016.i.i = phi i32 [ 0, %cond.end.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i) #8
  %3 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %tmp.i.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %4(i32 noundef 214748) #8
  %call.i.i.i.i = call i32 @usbnet_read_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 11, ptr noundef nonnull %tmp.i.i, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i.i)
  %cmp.not.i.i.not.i.i = icmp eq i32 %call.i.i.i.i, 1
  br i1 %cmp.not.i.i.not.i.i, label %cleanup.i.i, label %cleanup.thread.i.i

cleanup.thread.i.i:                               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i) #8
  br label %sr_share_write_word.exit

cleanup.i.i:                                      ; preds = %for.body.i.i
  %5 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tmp.i.i, align 1
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i = icmp eq i8 %7, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i) #8
  br i1 %tobool.not.i.i, label %if.end12.i, label %for.cond.i.i

for.end.i.i:                                      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %net.i.i = getelementptr i8, ptr %netdev, i32 2548
  %8 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #11
  br label %sr_share_write_word.exit

if.end12.i:                                       ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i3.i = call i32 @usbnet_write_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 11, ptr noundef null, i16 noundef zeroext 0) #8
  br label %sr_share_write_word.exit

sr_share_write_word.exit:                         ; preds = %if.end12.i, %for.end.i.i, %cleanup.thread.i.i, %do.end28.sr_share_write_word.exit_crit_edge
  call void @mutex_unlock(ptr noundef %phy_mutex.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.addr.i)
  br label %cleanup

cleanup:                                          ; preds = %sr_share_write_word.exit, %if.then6, %do.body1
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sr9700_set_multicast(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr i8, ptr %netdev, i32 2556
  %0 = ptrtoint ptr %data to i32
  call void @__asan_storeN_noabort(i32 %0, i32 8)
  store i64 128, ptr %data, align 1
  %flags = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 8
  %and = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end64_crit_edge

entry.if.end64_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.else:                                          ; preds = %entry
  %and6 = and i32 %2, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %if.else.if.end64_crit_edge

if.else.if.end64_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

lor.lhs.false:                                    ; preds = %if.else
  %mc = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66, i32 1
  %3 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %4)
  %cmp = icmp sgt i32 %4, 64
  br i1 %cmp, label %lor.lhs.false.if.end64_crit_edge, label %if.else13

lor.lhs.false.if.end64_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.else13:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp16 = icmp eq i32 %4, 0
  br i1 %cmp16, label %if.else13.if.end64_crit_edge, label %for.cond.preheader

if.else13.if.end64_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

for.cond.preheader:                               ; preds = %if.else13
  %5 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %5)
  %ha.094 = load ptr, ptr %mc, align 4
  %cmp23.not95 = icmp eq ptr %ha.094, %mc
  br i1 %cmp23.not95, label %for.cond.preheader.if.end64_crit_edge, label %for.cond.preheader.cond.end_crit_edge

for.cond.preheader.cond.end_crit_edge:            ; preds = %for.cond.preheader
  br label %cond.end

for.cond.preheader.if.end64_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

cond.end:                                         ; preds = %cond.end.cond.end_crit_edge, %for.cond.preheader.cond.end_crit_edge
  %ha.096 = phi ptr [ %ha.0, %cond.end.cond.end_crit_edge ], [ %ha.094, %for.cond.preheader.cond.end_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.096, i32 0, i32 2
  %call25 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #12
  %6 = and i32 %call25, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i.i.i, align 1
  %shr50 = lshr i8 %8, 2
  %and51 = and i8 %shr50, 7
  %shl52 = shl i8 1, %and51
  %9 = lshr i8 %8, 5
  %shr53 = zext i8 %9 to i32
  %arrayidx54 = getelementptr i8, ptr %data, i32 %shr53
  %10 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx54, align 1
  %conv57 = or i8 %11, %shl52
  store i8 %conv57, ptr %arrayidx54, align 1
  %12 = ptrtoint ptr %ha.096 to i32
  call void @__asan_load4_noabort(i32 %12)
  %ha.0 = load ptr, ptr %ha.096, align 4
  %cmp23.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp23.not, label %cond.end.if.end64_crit_edge, label %cond.end.cond.end_crit_edge

cond.end.cond.end_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.end.if.end64_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.end64:                                         ; preds = %cond.end.if.end64_crit_edge, %for.cond.preheader.if.end64_crit_edge, %if.else13.if.end64_crit_edge, %lor.lhs.false.if.end64_crit_edge, %if.else.if.end64_crit_edge, %entry.if.end64_crit_edge
  %rx_ctl.0 = phi i8 [ 49, %if.else13.if.end64_crit_edge ], [ 51, %entry.if.end64_crit_edge ], [ 53, %lor.lhs.false.if.end64_crit_edge ], [ 53, %if.else.if.end64_crit_edge ], [ 49, %for.cond.preheader.if.end64_crit_edge ], [ 49, %cond.end.if.end64_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %call.i = tail call i32 @usbnet_write_cmd_async(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 22, ptr noundef %data, i16 noundef zeroext 8) #8
  %conv.i = zext i8 %rx_ctl.0 to i16
  %call.i93 = tail call i32 @usbnet_write_cmd_async(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext 5, ptr noundef null, i16 noundef zeroext 0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_nway_restart(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_open(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_stop(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_start_xmit(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr9700_set_mac_address(ptr noundef %netdev, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sa_data, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %or.i.i = or i32 %1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.then_crit_edge, label %if.end

is_valid_ether_addr.exit.if.then_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %is_valid_ether_addr.exit.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.3, ptr noundef %sa_data) #11
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dev_addr_mod(ptr noundef %netdev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 86
  %5 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_addr, align 64
  %call.i = tail call i32 @usbnet_write_cmd_async(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef %6, i16 noundef zeroext 6) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr9700_ioctl(ptr noundef %netdev, ptr noundef %rq, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %netdev, i32 2588
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1
  %call2 = tail call i32 @generic_mii_ioctl(ptr noundef %mii, ptr noundef %ifr_ifru.i, i32 noundef %cmd, ptr noundef null) #8
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_change_mtu(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_tx_timeout(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_get_tstats64(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_write_cmd_async(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_mii_ioctl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_get_drvinfo(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_msglevel(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_set_msglevel(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_nway_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr9700_get_link(ptr noundef %netdev) #2 align 64 {
entry:
  %value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #8
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %value, align 1
  %call.i.i = call i32 @usbnet_read_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef nonnull %value, i16 noundef zeroext 1) #8
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %value, align 1
  %3 = lshr i8 %2, 6
  %.lobit = and i8 %3, 1
  %4 = zext i8 %.lobit to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #8
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sr9700_get_eeprom_len(ptr nocapture noundef readnone %netdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 256
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr9700_get_eeprom(ptr noundef %netdev, ptr nocapture noundef readonly %eeprom, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %and1 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %for.cond.preheader, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp24.not = icmp ult i32 %5, 2
  br i1 %cmp24.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.025, 1
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %div21 = lshr i32 %7, 1
  %cmp = icmp ult i32 %inc, %div21
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.025 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  %div522 = lshr i32 %9, 1
  %add = add nuw i32 %div522, %i.025
  %conv = trunc i32 %add to i8
  %add.ptr = getelementptr i16, ptr %data, i32 %i.025
  %call.i = tail call fastcc i32 @sr_share_read_word(ptr noundef %add.ptr.i, i32 noundef 0, i8 noundef zeroext %conv, ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7 = icmp slt i32 %call.i, 0
  br i1 %cmp7, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %call.i, %for.cond.cleanup_crit_edge ], [ %call.i, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_link_ksettings_mii(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_set_link_ksettings_mii(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sr_share_read_word(ptr noundef %dev, i32 noundef %phy, i8 noundef zeroext %reg, ptr noundef %value) unnamed_addr #2 align 64 {
entry:
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_mutex = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %phy_mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phy)
  %tobool.not = icmp eq i32 %phy, 0
  %or = or i8 %reg, 64
  %cond = select i1 %tobool.not, i8 %reg, i8 %or
  %conv.i = zext i8 %cond to i16
  %call.i = tail call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext 12, ptr noundef null, i16 noundef zeroext 0) #8
  %conv.i38 = select i1 %tobool.not, i16 4, i16 12
  %call.i39 = tail call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %conv.i38, i16 noundef zeroext 11, ptr noundef null, i16 noundef zeroext 0) #8
  br label %for.body.i

for.cond.i:                                       ; preds = %cleanup.i
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %for.end.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry
  %i.016.i = phi i32 [ 0, %entry ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #8
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %tmp.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %1(i32 noundef 214748) #8
  %call.i.i.i = call i32 @usbnet_read_cmd(ptr noundef %dev, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 11, ptr noundef nonnull %tmp.i, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.not.i.i.not.i = icmp eq i32 %call.i.i.i, 1
  br i1 %cmp.not.i.i.not.i, label %cleanup.i, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %cmp3.i.i.le.i = icmp sgt i32 %call.i.i.i, -1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #8
  %spec.select = select i1 %cmp3.i.i.le.i, i32 -22, i32 %call.i.i.i
  br label %out_unlock

cleanup.i:                                        ; preds = %for.body.i
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tmp.i, align 1
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #8
  br i1 %tobool.not.i, label %if.end, label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %net.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %5 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net.i, align 4
  %cond.i = select i1 %tobool.not, ptr @.str.9, ptr @.str.8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.7, ptr noundef nonnull %cond.i) #11
  br label %out_unlock

if.end:                                           ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i40 = call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 11, ptr noundef null, i16 noundef zeroext 0) #8
  %call.i41 = call i32 @usbnet_read_cmd(ptr noundef %dev, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 13, ptr noundef %value, i16 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i41)
  %cmp.not.i = icmp eq i32 %call.i41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i41)
  %cmp3.i = icmp sgt i32 %call.i41, -1
  %spec.store.select.i = select i1 %cmp3.i, i32 -22, i32 %call.i41
  %err.0.i = select i1 %cmp.not.i, i32 2, i32 %spec.store.select.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sr_share_read_word.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sr_share_read_word, %if.then16)) #8
          to label %out_unlock [label %if.then16], !srcloc !70

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %7 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net, align 4
  %conv17 = zext i8 %reg to i32
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %value, align 2
  %conv18 = zext i16 %10 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sr_share_read_word.__UNIQUE_ID_ddebug344, ptr noundef %8, ptr noundef nonnull @.str.6, i32 noundef %phy, i32 noundef %conv17, i32 noundef %conv18, i32 noundef %err.0.i) #8
  br label %out_unlock

out_unlock:                                       ; preds = %if.then16, %if.end, %for.end.i, %cleanup.thread.i
  %ret.0 = phi i32 [ %err.0.i, %if.then16 ], [ %err.0.i, %if.end ], [ -5, %for.end.i ], [ %spec.select, %cleanup.thread.i ]
  call void @mutex_unlock(ptr noundef %phy_mutex) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_write_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_read_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_check_media(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_gset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_link_change(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_skb_return(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !30, !31, !32, !34, !36, !38, !40, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !55, !57, !58, !59}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__initcall__kmod_sr9700__351_554_sr9700_usb_driver_init6, !1, !"__initcall__kmod_sr9700__351_554_sr9700_usb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/usb/sr9700.c", i32 554, i32 1}
!2 = !{ptr @__exitcall_sr9700_usb_driver_exit, !1, !"__exitcall_sr9700_usb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author352, !4, !"__UNIQUE_ID_author352", i1 false, i1 false}
!4 = !{!"../drivers/net/usb/sr9700.c", i32 556, i32 1}
!5 = !{ptr @__UNIQUE_ID_description353, !6, !"__UNIQUE_ID_description353", i1 false, i1 false}
!6 = !{!"../drivers/net/usb/sr9700.c", i32 557, i32 1}
!7 = !{ptr @__UNIQUE_ID_file354, !8, !"__UNIQUE_ID_file354", i1 false, i1 false}
!8 = !{!"../drivers/net/usb/sr9700.c", i32 558, i32 1}
!9 = !{ptr @__UNIQUE_ID_license355, !8, !"__UNIQUE_ID_license355", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @sr9700_usb_driver, !12, !"sr9700_usb_driver", i1 false, i1 false}
!12 = !{!"../drivers/net/usb/sr9700.c", i32 544, i32 26}
!13 = !{ptr @products, !14, !"products", i1 false, i1 false}
!14 = !{!"../drivers/net/usb/sr9700.c", i32 534, i32 35}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/usb/sr9700.c", i32 524, i32 17}
!17 = !{ptr @sr9700_driver_info, !18, !"sr9700_driver_info", i1 false, i1 false}
!18 = !{!"../drivers/net/usb/sr9700.c", i32 523, i32 33}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/usb/sr9700.c", i32 355, i32 22}
!21 = !{ptr @sr9700_netdev_ops, !22, !"sr9700_netdev_ops", i1 false, i1 false}
!22 = !{!"../drivers/net/usb/sr9700.c", i32 306, i32 36}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/usb/sr9700.c", i32 295, i32 22}
!25 = !{ptr @sr9700_ethtool_ops, !26, !"sr9700_ethtool_ops", i1 false, i1 false}
!26 = !{!"../drivers/net/usb/sr9700.c", i32 246, i32 33}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/usb/sr9700.c", i32 112, i32 2}
!29 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @sr_share_read_word.__UNIQUE_ID_ddebug344, !28, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/usb/sr9700.c", i32 90, i32 23}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/usb/sr9700.c", i32 90, i32 54}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/usb/sr9700.c", i32 90, i32 62}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/usb/sr9700.c", i32 184, i32 3}
!40 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @sr_mdio_read.__UNIQUE_ID_ddebug345, !39, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/usb/sr9700.c", i32 202, i32 2}
!44 = !{ptr @sr_mdio_read.__UNIQUE_ID_ddebug346, !43, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/usb/sr9700.c", i32 215, i32 3}
!47 = !{ptr @sr_mdio_write.__UNIQUE_ID_ddebug347, !46, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/usb/sr9700.c", i32 219, i32 2}
!50 = !{ptr @sr_mdio_write.__UNIQUE_ID_ddebug348, !49, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/usb/sr9700.c", i32 517, i32 2}
!53 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @sr9700_link_reset.__UNIQUE_ID_ddebug350, !52, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/usb/sr9700.c", i32 506, i32 3}
!57 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @sr9700_status.__UNIQUE_ID_ddebug349, !56, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/usb/sr9700.c", i32 404, i32 24}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{i64 2148964729, i64 2148964734, i64 2148964747, i64 2148964791, i64 2148964825, i64 2148964846}
!71 = !{!"branch_weights", i32 1, i32 2000}
!72 = !{!"auto-init"}
