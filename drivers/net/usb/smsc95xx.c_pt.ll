; ModuleID = '/llk/IR_all_yes/drivers/net/usb/smsc95xx.c_pt.bc'
source_filename = "../drivers/net/usb/smsc95xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
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
%struct.atomic_t = type { i32 }
%struct.driver_info = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usbnet = type { ptr, ptr, ptr, ptr, ptr, %struct.wait_queue_head, %struct.mutex, i8, i8, i8, i16, i16, i8, i32, i32, ptr, i32, %struct.timer_list, ptr, ptr, i32, [5 x i32], i32, i32, i32, %struct.mii_if_info, i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, i32, %struct.mutex, %struct.usb_anchor, %struct.tasklet_struct, %struct.work_struct, i32 }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.121, i32 }
%union.anon.121 = type { ptr }
%struct.smsc95xx_priv = type { i32, i32, i32, i32, %struct.spinlock, i8, i8, ptr, ptr }
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
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
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
%struct.anon.53 = type { i16, i16 }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }

@__param_str_turbo_mode = internal constant [20 x i8] c"smsc95xx.turbo_mode\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@turbo_mode = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_turbo_mode = internal constant %struct.kernel_param { ptr @__param_str_turbo_mode, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @turbo_mode } }, section "__param", align 4
@__UNIQUE_ID_turbo_modetype354 = internal constant [34 x i8] c"smsc95xx.parmtype=turbo_mode:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_turbo_mode355 = internal constant [67 x i8] c"smsc95xx.parm=turbo_mode:Enable multiple frames per Rx transaction\00", section ".modinfo", align 1
@__initcall__kmod_smsc95xx__386_2094_smsc95xx_driver_init6 = internal global ptr @smsc95xx_driver_init, section ".initcall6.init", align 4
@smsc95xx_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @usbnet_probe, ptr @usbnet_disconnect, ptr null, ptr @smsc95xx_suspend, ptr @smsc95xx_resume, ptr @smsc95xx_reset_resume, ptr null, ptr null, ptr @products, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 96 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_smsc95xx_driver_exit = internal global ptr @smsc95xx_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author387 = internal constant [26 x i8] c"smsc95xx.author=Nancy Lin\00", section ".modinfo", align 1
@__UNIQUE_ID_author388 = internal constant [66 x i8] c"smsc95xx.author=Steve Glendinning <steve.glendinning@shawell.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description389 = internal constant [55 x i8] c"smsc95xx.description=SMSC95XX USB 2.0 Ethernet Devices\00", section ".modinfo", align 1
@__UNIQUE_ID_file390 = internal constant [39 x i8] c"smsc95xx.file=drivers/net/usb/smsc95xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license391 = internal constant [21 x i8] c"smsc95xx.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"smsc95xx\00", [23 x i8] zeroinitializer }, align 32
@products = internal constant { [19 x %struct.usb_device_id], [120 x i8] } { [19 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1060, i16 -27392, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @smsc95xx_info to i32) }, %struct.usb_device_id { i16 3, i16 1060, i16 -27387, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @smsc95xx_info to i32) }, %struct.usb_device_id { i16 3, i16 1060, i16 -25088, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @smsc95xx_info to i32) }, %struct.usb_device_id { i16 3, i16 1060, i16 -25087, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @smsc95xx_info to i32) }, %struct.usb_device_id { i16 3, i16 1060, i16 -5120, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @smsc95xx_info to i32) }, %struct.usb_device_id { i16 3, i16 1060, i16 -26368, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @smsc95xx_info to i32) }, %struct.usb_device_id { i16 3, i16 1060, i16 -26367, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @smsc95xx_info to i32) }, %struct.usb_device_id { i16 3, i16 1060, i16 -26366, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @smsc95xx_info to i32) }, %struct.usb_device_id { i16 3, i16 1060, i16 -26365, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @smsc95xx_info to i32) }, %struct.usb_device_id { i16 3, i16 1060, i16 -26364, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @smsc95xx_info to i32) }, %struct.usb_device_id { i16 3, i16 1060, i16 -26363, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @smsc95xx_info to i32) }, %struct.usb_device_id { i16 3, i16 1060, i16 -26362, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @smsc95xx_info to i32) }, %struct.usb_device_id { i16 3, i16 1060, i16 -26361, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @smsc95xx_info to i32) }, %struct.usb_device_id { i16 3, i16 1060, i16 -26360, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @smsc95xx_info to i32) }, %struct.usb_device_id { i16 3, i16 1060, i16 -26359, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @smsc95xx_info to i32) }, %struct.usb_device_id { i16 3, i16 1060, i16 -27344, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @smsc95xx_info to i32) }, %struct.usb_device_id { i16 3, i16 1060, i16 -26832, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @smsc95xx_info to i32) }, %struct.usb_device_id { i16 3, i16 1060, i16 -25080, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @smsc95xx_info to i32) }, %struct.usb_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usbnet_suspend error\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error during last resume\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"entering SUSPEND2 mode\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error enabling PHY wakeup ints\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"entering SUSPEND1 mode\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to allocate filter_mask\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"enabling broadcast detection\0A\00", [34 x i8] zeroinitializer }, align 32
@__const.smsc95xx_suspend.mcast = private unnamed_addr constant [3 x i8] c"\01\00^", align 1
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"enabling multicast detection\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"enabling ARP detection\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"enabling unicast detection\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"enabling pattern match wakeup\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"disabling pattern match wakeup\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"enabling magic packet wakeup\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"disabling magic packet wakeup\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"entering SUSPEND0 mode\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: MII is busy\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.__smsc95xx_mdio_read = private unnamed_addr constant [21 x i8] c"__smsc95xx_mdio_read\00", align 1
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error writing MII_ADDR\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Timed out reading MII reg %02X\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error reading MII_DATA\0A\00", [40 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error reading MII_ACCESS\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to write reg index 0x%08x: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to read reg index 0x%08x: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@smsc95xx_autosuspend.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.24, ptr @.str.25, i8 1, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"smsc95xx_autosuspend\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/net/usb/smsc95xx.c\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"autosuspend entering SUSPEND2\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EDPD not supported\0A\00", [44 x i8] zeroinitializer }, align 32
@smsc95xx_autosuspend.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.24, ptr @.str.27, i8 1, i8 104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"autosuspend entering SUSPEND1\0A\00", [33 x i8] zeroinitializer }, align 32
@smsc95xx_autosuspend.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.24, ptr @.str.28, i8 1, i8 109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"autosuspend entering SUSPEND3\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"rx fifo not empty in autosuspend\0A\00", [62 x i8] zeroinitializer }, align 32
@smsc95xx_enable_phy_wakeup_interrupts.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.24, ptr @.str.31, i8 1, i8 53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"smsc95xx_enable_phy_wakeup_interrupts\00", [58 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"enabling PHY wakeup interrupts\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.__smsc95xx_mdio_write = private unnamed_addr constant [22 x i8] c"__smsc95xx_mdio_write\00", align 1
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error writing MII_DATA\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Timed out writing MII reg %02X\0A\00", [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@smsc95xx_resume.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.24, ptr @.str.35, i8 1, i8 -78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"smsc95xx_resume\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"resume suspend_flags=0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"usbnet_resume error\0A\00", [43 x i8] zeroinitializer }, align 32
@smsc95xx_reset.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.24, ptr @.str.38, i8 0, i8 -44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"smsc95xx_reset\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"entering smsc95xx_reset\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"timeout waiting for completion of Lite Reset\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"timeout waiting for PHY Reset\0A\00", [33 x i8] zeroinitializer }, align 32
@smsc95xx_reset.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.24, ptr @.str.41, i8 0, i8 -33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MAC Address: %pM\0A\00", [46 x i8] zeroinitializer }, align 32
@smsc95xx_reset.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.24, ptr @.str.42, i8 0, i8 -32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Read Value from HW_CFG : 0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@smsc95xx_reset.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.24, ptr @.str.43, i8 0, i8 -28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Read Value from HW_CFG after writing HW_CFG_BIR_: 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@smsc95xx_reset.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.24, ptr @.str.44, i8 0, i8 -25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_urb_size=%ld\0A\00", [47 x i8] zeroinitializer }, align 32
@smsc95xx_reset.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.24, ptr @.str.45, i8 0, i8 -22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Read Value from BURST_CAP after writing: 0x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@smsc95xx_reset.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.24, ptr @.str.46, i8 0, i8 -19, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Read Value from BULK_IN_DLY after writing: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@smsc95xx_reset.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.24, ptr @.str.47, i8 0, i8 -17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Read Value from HW_CFG: 0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@smsc95xx_reset.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.24, ptr @.str.48, i8 0, i8 -12, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Read Value from HW_CFG after writing: 0x%08x\0A\00", [50 x i8] zeroinitializer }, align 32
@smsc95xx_reset.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.24, ptr @.str.49, i8 0, i8 -10, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ID_REV = 0x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to set checksum offload features\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to start TX path\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to start RX path\0A\00", [39 x i8] zeroinitializer }, align 32
@smsc95xx_reset.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.24, ptr @.str.53, i8 1, i8 5, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"smsc95xx_reset, return 0\0A\00", [38 x i8] zeroinitializer }, align 32
@smsc95xx_set_features.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.24, ptr @.str.55, i8 0, i8 -95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"smsc95xx_set_features\00", [42 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"COE_CR = 0x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@smsc95xx_set_multicast.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.24, ptr @.str.57, i8 0, i8 120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"smsc95xx_set_multicast\00", [41 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"promiscuous mode enabled\0A\00", [38 x i8] zeroinitializer }, align 32
@smsc95xx_set_multicast.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.24, ptr @.str.58, i8 0, i8 121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"receive all multicast enabled\0A\00", [33 x i8] zeroinitializer }, align 32
@smsc95xx_set_multicast.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.24, ptr @.str.59, i8 0, i8 126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"HASHH=0x%08X, HASHL=0x%08X\0A\00", [36 x i8] zeroinitializer }, align 32
@smsc95xx_set_multicast.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.24, ptr @.str.60, i8 0, i8 127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"receive own packets only\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to initiate async write to HASHH\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to initiate async write to HASHL\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to initiate async write to MAC_CR\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error write async cmd, sts=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@smsc95xx_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.65, i32 2592, ptr @smsc95xx_bind, ptr @smsc95xx_unbind, ptr @smsc95xx_reset, ptr @smsc95xx_stop, ptr @smsc95xx_start_phy, ptr @smsc95xx_manage_power, ptr @smsc95xx_status, ptr @smsc95xx_link_reset, ptr @smsc95xx_rx_fixup, ptr @smsc95xx_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"smsc95xx USB 2.0 Ethernet\00", [38 x i8] zeroinitializer }, align 32
@smsc95xx_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.24, i32 1080, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016smsc95xx v2.0.0\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"smsc95xx_bind\00", [18 x i8] zeroinitializer }, align 32
@smsc95xx_bind._entry_ptr = internal global ptr @smsc95xx_bind._entry, section ".printk_index", align 4
@.str.68 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"usbnet_get_endpoints failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@smsc95xx_bind.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&pdata->mac_cr_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"smsc95xx-mdiobus\00", [47 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usb-%03d:%03d\00", [18 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Could not register MDIO bus\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"no PHY found\0A\00", [18 x i8] zeroinitializer }, align 32
@smsc95xx_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @usbnet_open, ptr @usbnet_stop, ptr @usbnet_start_xmit, ptr null, ptr null, ptr null, ptr @smsc95xx_set_multicast, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @smsc95xx_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_change_mtu, ptr null, ptr @usbnet_tx_timeout, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smsc95xx_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@smsc95xx_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @usbnet_get_drvinfo, ptr @smsc95xx_ethtool_getregslen, ptr @smsc95xx_ethtool_getregs, ptr @smsc95xx_ethtool_get_wol, ptr @smsc95xx_ethtool_set_wol, ptr @usbnet_get_msglevel, ptr @usbnet_set_msglevel, ptr @phy_ethtool_nway_reset, ptr @smsc95xx_get_link, ptr null, ptr @smsc95xx_ethtool_get_eeprom_len, ptr @smsc95xx_ethtool_get_eeprom, ptr @smsc95xx_ethtool_set_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"can't attach PHY to %s\0A\00", [40 x i8] zeroinitializer }, align 32
@smsc95xx_init_mac_address.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.24, ptr @.str.76, i8 0, i8 -62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"smsc95xx_init_mac_address\00", [38 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"MAC address read from the device tree\0A\00", [57 x i8] zeroinitializer }, align 32
@smsc95xx_init_mac_address.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.24, ptr @.str.77, i8 0, i8 -60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MAC address read from EEPROM\0A\00", [34 x i8] zeroinitializer }, align 32
@smsc95xx_init_mac_address.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.24, ptr @.str.78, i8 0, i8 -58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"MAC address set to eth_random_addr\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error writing E2P_CMD\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error reading E2P_DATA\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error reading E2P_CMD\0A\00", [41 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EEPROM is busy\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"EEPROM read operation timeout\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"REGS: cannot read ID_REV\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"REGS: cannot read reg[%x]\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"device_set_wakeup_enable error %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"EEPROM: magic value mismatch, magic = 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error writing E2P_DATA\0A\00", [40 x i8] zeroinitializer }, align 32
@smsc95xx_unbind.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.24, ptr @.str.90, i8 1, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"smsc95xx_unbind\00", [16 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"free pdata\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"hardware isn't capable of remote wakeup\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unexpected urb length %d\0A\00", [38 x i8] zeroinitializer }, align 32
@smsc95xx_status.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.24, ptr @.str.94, i8 0, i8 -104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"smsc95xx_status\00", [16 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"intdata: 0x%08X\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unexpected interrupt, intdata=0x%08X\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Error updating PHY flow control\0A\00", [63 x i8] zeroinitializer }, align 32
@smsc95xx_phy_update_flowcontrol.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.24, ptr @.str.98, i8 0, i8 -118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"smsc95xx_phy_update_flowcontrol\00", [32 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rx pause %s, tx pause %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@smsc95xx_phy_update_flowcontrol.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.24, ptr @.str.101, i8 0, i8 -117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"half duplex\0A\00", [19 x i8] zeroinitializer }, align 32
@smsc95xx_rx_fixup.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.102, ptr @.str.24, ptr @.str.103, i8 1, i8 -58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"smsc95xx_rx_fixup\00", [46 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Error header=0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@smsc95xx_rx_fixup.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.102, ptr @.str.24, ptr @.str.104, i8 1, i8 -54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"size err header=0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Error allocating skb\0A\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 16, i64 38192, i64 38704, i64 40448, i64 40456, i64 60416]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 128]
@___asan_gen_.107 = private unnamed_addr constant [11 x i8] c"turbo_mode\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 66, i32 13 }
@___asan_gen_.110 = private unnamed_addr constant [16 x i8] c"smsc95xx_driver\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 2082, i32 26 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 2094, i32 1 }
@___asan_gen_.116 = private unnamed_addr constant [9 x i8] c"products\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1987, i32 35 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1475, i32 25 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1480, i32 25 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1499, i32 25 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1530, i32 26 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1538, i32 26 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1555, i32 26 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1566, i32 26 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1579, i32 26 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1592, i32 26 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1604, i32 26 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1673, i32 25 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1676, i32 25 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1681, i32 25 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1684, i32 25 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1711, i32 24 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 193, i32 25 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 202, i32 26 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 208, i32 25 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 215, i32 26 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 166, i32 26 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 121, i32 25 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 89, i32 26 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1426, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1436, i32 26 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1440, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1462, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1391, i32 25 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1237, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 249, i32 26 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 264, i32 25 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1737, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1769, i32 25 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 849, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 865, i32 25 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 883, i32 25 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 891, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 898, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 911, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 926, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 937, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 949, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 957, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 976, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 986, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1018, i32 25 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1037, i32 25 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1043, i32 25 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1047, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 644, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 483, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 487, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 505, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 508, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 518, i32 25 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 522, i32 25 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 526, i32 25 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 457, i32 25 }
@___asan_gen_.311 = private unnamed_addr constant [14 x i8] c"smsc95xx_info\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1972, i32 33 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1973, i32 17 }
@___asan_gen_.317 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1080, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1084, i32 25 }
@___asan_gen_.329 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1094, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1135, i32 25 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1139, i32 4 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1143, i32 24 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1149, i32 24 }
@___asan_gen_.347 = private unnamed_addr constant [20 x i8] c"smsc95xx_netdev_ops\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1051, i32 36 }
@___asan_gen_.350 = private unnamed_addr constant [21 x i8] c"smsc95xx_ethtool_ops\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 742, i32 33 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1182, i32 24 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 776, i32 4 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 786, i32 4 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 793, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 368, i32 26 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 378, i32 26 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 337, i32 26 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 347, i32 24 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 321, i32 25 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 694, i32 23 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 701, i32 24 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 731, i32 25 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 669, i32 25 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 406, i32 25 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1208, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1962, i32 24 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 603, i32 25 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 609, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 614, i32 25 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 593, i32 25 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 552, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 556, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1815, i32 4 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1833, i32 5 }
@___asan_gen_.446 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.447 = private constant [30 x i8] c"../drivers/net/usb/smsc95xx.c\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1850, i32 27 }
@llvm.compiler.used = appending global [126 x ptr] [ptr @__UNIQUE_ID_author387, ptr @__UNIQUE_ID_author388, ptr @__UNIQUE_ID_description389, ptr @__UNIQUE_ID_file390, ptr @__UNIQUE_ID_license391, ptr @__UNIQUE_ID_turbo_mode355, ptr @__UNIQUE_ID_turbo_modetype354, ptr @__exitcall_smsc95xx_driver_exit, ptr @__initcall__kmod_smsc95xx__386_2094_smsc95xx_driver_init6, ptr @__param_turbo_mode, ptr @smsc95xx_bind._entry, ptr @smsc95xx_bind._entry_ptr, ptr @smsc95xx_driver_exit, ptr @turbo_mode, ptr @smsc95xx_driver, ptr @.str, ptr @products, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @smsc95xx_info, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @smsc95xx_bind.__key, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @smsc95xx_netdev_ops, ptr @smsc95xx_ethtool_ops, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105], section "llvm.metadata"
@0 = internal global [114 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @turbo_mode to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc95xx_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @products to i32), i32 456, i32 576, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc95xx_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc95xx_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc95xx_bind.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc95xx_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc95xx_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc95xx_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @smsc95xx_driver, ptr noundef null, ptr noundef nonnull @.str) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @smsc95xx_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_deregister(ptr noundef nonnull @smsc95xx_driver) #11
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc95xx_suspend(ptr noundef %intf, [1 x i32] %message.coerce) #2 align 64 {
entry:
  %buf.i.i670 = alloca i32, align 4
  %buf.i.i659 = alloca i32, align 4
  %buf.i.i647 = alloca i32, align 4
  %buf.i.i635 = alloca i32, align 4
  %buf.i.i624 = alloca i32, align 4
  %buf.i.i613 = alloca i32, align 4
  %buf.i.i602 = alloca i32, align 4
  %buf.i.i591 = alloca i32, align 4
  %buf.i.i526 = alloca i32, align 4
  %buf.i.i519 = alloca i32, align 4
  %buf.i.i = alloca i32, align 4
  %val = alloca i32, align 4
  %command = alloca [2 x i32], align 8
  %offset = alloca [2 x i32], align 8
  %crc = alloca [4 x i32], align 4
  %bcast = alloca [6 x i8], align 1
  %mcast = alloca [3 x i8], align 1
  %arp = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %message.coerce.fca.0.extract = extractvalue [1 x i32] %message.coerce, 0
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !272
  %call2 = tail call i32 @usbnet_suspend(ptr noundef %intf, [1 x i32] %message.coerce) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %net = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %5 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %6, ptr noundef nonnull @.str.1) #14
  br label %cleanup353

if.end:                                           ; preds = %entry
  %suspend_flags = getelementptr inbounds %struct.smsc95xx_priv, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %suspend_flags to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %suspend_flags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %net4 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %9 = ptrtoint ptr %net4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net4, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %10, ptr noundef nonnull @.str.2) #14
  %11 = ptrtoint ptr %suspend_flags to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %suspend_flags, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %call.i = tail call fastcc i32 @smsc95xx_mdio_read_nopm(ptr noundef %1, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end6.smsc95xx_link_ok_nopm.exit_crit_edge, label %if.end.i

if.end6.smsc95xx_link_ok_nopm.exit_crit_edge:     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %smsc95xx_link_ok_nopm.exit

if.end.i:                                         ; preds = %if.end6
  %call1.i = tail call fastcc i32 @smsc95xx_mdio_read_nopm(ptr noundef %1, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i.smsc95xx_link_ok_nopm.exit_crit_edge, label %if.end4.i

if.end.i.smsc95xx_link_ok_nopm.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %smsc95xx_link_ok_nopm.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %and.i = lshr i32 %call1.i, 2
  %and.lobit.i = and i32 %and.i, 1
  br label %smsc95xx_link_ok_nopm.exit

smsc95xx_link_ok_nopm.exit:                       ; preds = %if.end4.i, %if.end.i.smsc95xx_link_ok_nopm.exit_crit_edge, %if.end6.smsc95xx_link_ok_nopm.exit_crit_edge
  %retval.0.i = phi i32 [ %and.lobit.i, %if.end4.i ], [ %call.i, %if.end6.smsc95xx_link_ok_nopm.exit_crit_edge ], [ %call1.i, %if.end.i.smsc95xx_link_ok_nopm.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1026, i32 %message.coerce.fca.0.extract)
  %cmp8 = icmp eq i32 %message.coerce.fca.0.extract, 1026
  br i1 %cmp8, label %land.lhs.true, label %smsc95xx_link_ok_nopm.exit.if.end12_crit_edge

smsc95xx_link_ok_nopm.exit.if.end12_crit_edge:    ; preds = %smsc95xx_link_ok_nopm.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

land.lhs.true:                                    ; preds = %smsc95xx_link_ok_nopm.exit
  %features = getelementptr inbounds %struct.smsc95xx_priv, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %features to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %features, align 4
  %14 = and i8 %13, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool9.not = icmp eq i8 %14, 0
  br i1 %tobool9.not, label %land.lhs.true.if.end12_crit_edge, label %if.then10

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = tail call fastcc i32 @smsc95xx_autosuspend(ptr noundef %1, i32 noundef %retval.0.i)
  br label %done

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %smsc95xx_link_ok_nopm.exit.if.end12_crit_edge
  %wolopts = getelementptr inbounds %struct.smsc95xx_priv, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wolopts, align 4
  %and13 = and i32 %16, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.then20_crit_edge, label %lor.lhs.false

if.end12.if.then20_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20

lor.lhs.false:                                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool15.not = icmp eq i32 %retval.0.i, 0
  %and18 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %or.cond = select i1 %tobool15.not, i1 %tobool19.not, i1 false
  br i1 %or.cond, label %lor.lhs.false.if.then20_crit_edge, label %if.end45

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20

if.then20:                                        ; preds = %lor.lhs.false.if.then20_crit_edge, %if.end12.if.then20_crit_edge
  %net21 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %17 = ptrtoint ptr %net21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net21, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %18, ptr noundef nonnull @.str.3) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #11
  %19 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %buf.i.i, align 4, !annotation !272
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !273

do.body4.i.i:                                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #11, !srcloc !274
  unreachable

do.end9.i.i:                                      ; preds = %if.then20
  %call.i.i = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 300, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #11, !callees !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then14.i.i, label %do.end9.i.i524

if.then14.i.i:                                    ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i)
  %cmp15.not.i.i = icmp eq i32 %call.i.i, -19
  br i1 %cmp15.not.i.i, label %if.then14.i.i.smsc95xx_read_reg_nopm.exit.thread_crit_edge, label %if.then17.i.i

if.then14.i.i.smsc95xx_read_reg_nopm.exit.thread_crit_edge: ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %smsc95xx_read_reg_nopm.exit.thread

if.then17.i.i:                                    ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %net21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net21, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %21, ptr noundef nonnull @.str.22, i32 noundef 300, i32 noundef %call.i.i) #14
  br label %smsc95xx_read_reg_nopm.exit.thread

smsc95xx_read_reg_nopm.exit.thread:               ; preds = %if.then17.i.i, %if.then14.i.i.smsc95xx_read_reg_nopm.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #11
  br label %done

do.end9.i.i524:                                   ; preds = %do.end9.i.i
  %22 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buf.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #11
  %24 = and i32 %23, -100663297
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %val, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i519) #11
  %27 = ptrtoint ptr %buf.i.i519 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %24, ptr %buf.i.i519, align 4
  %call.i.i522 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 300, ptr noundef nonnull %buf.i.i519, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i522)
  %cmp.i.i523 = icmp sgt i32 %call.i.i522, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i522)
  %cmp14.not.i.i = icmp eq i32 %call.i.i522, -19
  %or.cond.i.i = or i1 %cmp.i.i523, %cmp14.not.i.i
  br i1 %or.cond.i.i, label %smsc95xx_write_reg_nopm.exit, label %smsc95xx_write_reg_nopm.exit.thread

smsc95xx_write_reg_nopm.exit.thread:              ; preds = %do.end9.i.i524
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %net21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %net21, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %29, ptr noundef nonnull @.str.21, i32 noundef 300, i32 noundef %call.i.i522) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i519) #11
  br label %done

smsc95xx_write_reg_nopm.exit:                     ; preds = %do.end9.i.i524
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i519) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i522)
  %cmp29 = icmp slt i32 %call.i.i522, 0
  br i1 %cmp29, label %smsc95xx_write_reg_nopm.exit.done_crit_edge, label %do.end9.i.i531

smsc95xx_write_reg_nopm.exit.done_crit_edge:      ; preds = %smsc95xx_write_reg_nopm.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

do.end9.i.i531:                                   ; preds = %smsc95xx_write_reg_nopm.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i526) #11
  %30 = ptrtoint ptr %buf.i.i526 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %buf.i.i526, align 4, !annotation !272
  %call.i.i529 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 32, ptr noundef nonnull %buf.i.i526, i16 noundef zeroext 4) #11, !callees !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i529)
  %cmp.i.i530 = icmp slt i32 %call.i.i529, 0
  br i1 %cmp.i.i530, label %if.then14.i.i533, label %if.end37

if.then14.i.i533:                                 ; preds = %do.end9.i.i531
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i529)
  %cmp15.not.i.i532 = icmp eq i32 %call.i.i529, -19
  br i1 %cmp15.not.i.i532, label %if.then14.i.i533.smsc95xx_read_reg_nopm.exit537.thread_crit_edge, label %if.then17.i.i535

if.then14.i.i533.smsc95xx_read_reg_nopm.exit537.thread_crit_edge: ; preds = %if.then14.i.i533
  call void @__sanitizer_cov_trace_pc() #13
  br label %smsc95xx_read_reg_nopm.exit537.thread

if.then17.i.i535:                                 ; preds = %if.then14.i.i533
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %net21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %net21, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %32, ptr noundef nonnull @.str.22, i32 noundef 32, i32 noundef %call.i.i529) #14
  br label %smsc95xx_read_reg_nopm.exit537.thread

smsc95xx_read_reg_nopm.exit537.thread:            ; preds = %if.then17.i.i535, %if.then14.i.i533.smsc95xx_read_reg_nopm.exit537.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i526) #11
  br label %done

if.end37:                                         ; preds = %do.end9.i.i531
  %33 = ptrtoint ptr %buf.i.i526 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %buf.i.i526, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i526) #11
  %35 = and i32 %34, -201326593
  %36 = call i32 @llvm.bswap.i32(i32 %35)
  %37 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %val, align 4
  %call39 = call fastcc i32 @smsc95xx_write_reg_nopm(ptr noundef nonnull %1, i32 noundef 32, i32 noundef %36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.end37.done_crit_edge, label %if.end43

if.end37.done_crit_edge:                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %call44 = call fastcc i32 @smsc95xx_enter_suspend2(ptr noundef nonnull %1)
  br label %done

if.end45:                                         ; preds = %lor.lhs.false
  br i1 %tobool19.not, label %if.end45.if.end61_crit_edge, label %if.then49

if.end45.if.end61_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.then49:                                        ; preds = %if.end45
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc95xx_enable_phy_wakeup_interrupts.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc95xx_suspend, %if.then.i)) #11
          to label %do.end5.i [label %if.then.i], !srcloc !277

if.then.i:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  %net.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %38 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %net.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc95xx_enable_phy_wakeup_interrupts.__UNIQUE_ID_ddebug379, ptr noundef %39, ptr noundef nonnull @.str.31) #11
  br label %do.end5.i

do.end5.i:                                        ; preds = %if.then.i, %if.then49
  %call6.i = tail call fastcc i32 @smsc95xx_mdio_read_nopm(ptr noundef %1, i32 noundef 29) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i538 = icmp slt i32 %call6.i, 0
  br i1 %cmp.i538, label %do.end5.i.if.then53_crit_edge, label %if.end8.i

do.end5.i.if.then53_crit_edge:                    ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then53

if.end8.i:                                        ; preds = %do.end5.i
  %call9.i = tail call fastcc i32 @smsc95xx_mdio_read_nopm(ptr noundef %1, i32 noundef 30) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.end8.i.if.then53_crit_edge, label %if.end55

if.end8.i.if.then53_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then53

if.then53:                                        ; preds = %if.end8.i.if.then53_crit_edge, %do.end5.i.if.then53_crit_edge
  %retval.0.i539.ph = phi i32 [ %call9.i, %if.end8.i.if.then53_crit_edge ], [ %call6.i, %do.end5.i.if.then53_crit_edge ]
  %net54 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %40 = ptrtoint ptr %net54 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %net54, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %41, ptr noundef nonnull @.str.4) #14
  br label %done

if.end55:                                         ; preds = %if.end8.i
  %or.i = or i32 %call9.i, 80
  tail call fastcc void @smsc95xx_mdio_write_nopm(ptr noundef %1, i32 noundef 30, i32 noundef %or.i) #11
  br i1 %tobool15.not, label %if.then57, label %if.end55.if.end61_crit_edge

if.end55.if.end61_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.then57:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  %net58 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %42 = ptrtoint ptr %net58 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %net58, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %43, ptr noundef nonnull @.str.5) #14
  %call59 = tail call fastcc i32 @smsc95xx_enter_suspend1(ptr noundef %1)
  br label %done

if.end61:                                         ; preds = %if.end55.if.end61_crit_edge, %if.end45.if.end61_crit_edge
  %44 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %wolopts, align 4
  %and63 = and i32 %45, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end61.if.end278_crit_edge, label %if.then65

if.end61.if.end278_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end278

if.then65:                                        ; preds = %if.end61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %46 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %46, i32 noundef 3520, i32 noundef 128) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %command) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %offset) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %crc) #11
  %features67 = getelementptr inbounds %struct.smsc95xx_priv, ptr %3, i32 0, i32 5
  %47 = ptrtoint ptr %features67 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %features67, align 4
  %49 = and i8 %48, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool70.not = icmp eq i8 %49, 0
  %cond = select i1 %tobool70.not, i32 4, i32 8
  %tobool71.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool71.not, label %if.then72, label %if.end74

if.then72:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  %net73 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %50 = ptrtoint ptr %net73 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %net73, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %51, ptr noundef nonnull @.str.6) #14
  br label %cleanup.thread

if.end74:                                         ; preds = %if.then65
  %52 = ptrtoint ptr %command to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 0, ptr %command, align 8
  %53 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 0, ptr %offset, align 8
  %54 = call ptr @memset(ptr %crc, i32 0, i32 16)
  %55 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %wolopts, align 4
  %and78 = and i32 %56, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.end74.if.end103_crit_edge, label %if.then80

if.end74.if.end103_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103

if.then80:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bcast) #11
  %57 = call ptr @memset(ptr %bcast, i32 255, i32 6)
  %net81 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %58 = ptrtoint ptr %net81 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %net81, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %59, ptr noundef nonnull @.str.7) #14
  %60 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 63, ptr %call7.i.i.i, align 8
  %arrayidx83 = getelementptr i32, ptr %call7.i.i.i, i32 1
  %61 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %arrayidx83, align 4
  %arrayidx86 = getelementptr i32, ptr %call7.i.i.i, i32 2
  %62 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %arrayidx86, align 8
  %arrayidx89 = getelementptr i32, ptr %call7.i.i.i, i32 3
  %63 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %arrayidx89, align 4
  %64 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %command, align 8
  %or = or i32 %65, 5
  store i32 %or, ptr %command, align 8
  %call.i540 = call zeroext i16 @crc16(i16 noundef zeroext -1, ptr noundef nonnull %bcast, i32 noundef 6) #11
  %66 = and i16 %call.i540, 255
  %idxprom.i.i.i = zext i16 %66 to i32
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.i
  %67 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv2.i.i = zext i8 %68 to i32
  %shl.i.i = shl nuw nsw i32 %conv2.i.i, 8
  %69 = lshr i16 %call.i540, 8
  %conv4.i.i = zext i16 %69 to i32
  %arrayidx.i10.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i
  %70 = ptrtoint ptr %arrayidx.i10.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.i10.i.i, align 1
  %conv6.i.i = zext i8 %71 to i32
  %or.i.i = or i32 %shl.i.i, %conv6.i.i
  %72 = ptrtoint ptr %crc to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %crc, align 4
  %or102 = or i32 %73, %or.i.i
  store i32 %or102, ptr %crc, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bcast) #11
  br label %if.end103

if.end103:                                        ; preds = %if.then80, %if.end74.if.end103_crit_edge
  %filter.0 = phi i32 [ 1, %if.then80 ], [ 0, %if.end74.if.end103_crit_edge ]
  %74 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %wolopts, align 4
  %and105 = and i32 %75, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.end103.if.end138_crit_edge, label %if.then107

if.end103.if.end138_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end138

if.then107:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %mcast) #11
  %76 = call ptr @memcpy(ptr %mcast, ptr @__const.smsc95xx_suspend.mcast, i32 3)
  %net108 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %77 = ptrtoint ptr %net108 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %net108, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %78, ptr noundef nonnull @.str.8) #14
  %mul109 = shl nuw nsw i32 %filter.0, 2
  %arrayidx110 = getelementptr i32, ptr %call7.i.i.i, i32 %mul109
  %79 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 7, ptr %arrayidx110, align 8
  %add112 = or i32 %mul109, 1
  %arrayidx113 = getelementptr i32, ptr %call7.i.i.i, i32 %add112
  %80 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %arrayidx113, align 4
  %add115 = or i32 %mul109, 2
  %arrayidx116 = getelementptr i32, ptr %call7.i.i.i, i32 %add115
  %81 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %arrayidx116, align 8
  %add118 = or i32 %mul109, 3
  %arrayidx119 = getelementptr i32, ptr %call7.i.i.i, i32 %add118
  %82 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %arrayidx119, align 4
  %mul121 = shl nuw nsw i32 %filter.0, 3
  %shl122 = shl nuw nsw i32 9, %mul121
  %83 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %command, align 8
  %or125 = or i32 %84, %shl122
  store i32 %or125, ptr %command, align 8
  %call.i541 = call zeroext i16 @crc16(i16 noundef zeroext -1, ptr noundef nonnull %mcast, i32 noundef 3) #11
  %85 = and i16 %call.i541, 255
  %idxprom.i.i.i544 = zext i16 %85 to i32
  %arrayidx.i.i.i545 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.i544
  %86 = ptrtoint ptr %arrayidx.i.i.i545 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx.i.i.i545, align 1
  %conv2.i.i546 = zext i8 %87 to i32
  %shl.i.i547 = shl nuw nsw i32 %conv2.i.i546, 8
  %88 = lshr i16 %call.i541, 8
  %conv4.i.i548 = zext i16 %88 to i32
  %arrayidx.i10.i.i549 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i548
  %89 = ptrtoint ptr %arrayidx.i10.i.i549 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx.i10.i.i549, align 1
  %conv6.i.i550 = zext i8 %90 to i32
  %or.i.i551 = or i32 %shl.i.i547, %conv6.i.i550
  %mul.i = shl nuw nsw i32 %filter.0, 4
  %shl30.i = shl nuw i32 %or.i.i551, %mul.i
  %91 = ptrtoint ptr %crc to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %crc, align 4
  %or136 = or i32 %shl30.i, %92
  store i32 %or136, ptr %crc, align 4
  %inc137 = add nuw nsw i32 %filter.0, 1
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %mcast) #11
  br label %if.end138

if.end138:                                        ; preds = %if.then107, %if.end103.if.end138_crit_edge
  %filter.1 = phi i32 [ %inc137, %if.then107 ], [ %filter.0, %if.end103.if.end138_crit_edge ]
  %93 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %wolopts, align 4
  %and140 = and i32 %94, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %if.end138.if.end173_crit_edge, label %if.then142

if.end138.if.end173_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end173

if.then142:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %arp) #11
  %95 = ptrtoint ptr %arp to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 2054, ptr %arp, align 2
  %net143 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %96 = ptrtoint ptr %net143 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %net143, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %97, ptr noundef nonnull @.str.9) #14
  %mul144 = shl nuw nsw i32 %filter.1, 2
  %arrayidx145 = getelementptr i32, ptr %call7.i.i.i, i32 %mul144
  %98 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 3, ptr %arrayidx145, align 8
  %add147 = or i32 %mul144, 1
  %arrayidx148 = getelementptr i32, ptr %call7.i.i.i, i32 %add147
  %99 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %arrayidx148, align 4
  %add150 = or i32 %mul144, 2
  %arrayidx151 = getelementptr i32, ptr %call7.i.i.i, i32 %add150
  %100 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %arrayidx151, align 8
  %add153 = or i32 %mul144, 3
  %arrayidx154 = getelementptr i32, ptr %call7.i.i.i, i32 %add153
  %101 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %arrayidx154, align 4
  %rem155703704 = shl nuw nsw i32 %filter.1, 3
  %mul156 = and i32 %rem155703704, 24
  %shl157 = shl nuw nsw i32 5, %mul156
  %102 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %command, align 8
  %or160 = or i32 %103, %shl157
  store i32 %or160, ptr %command, align 8
  %shl163 = shl nuw nsw i32 12, %mul156
  %104 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %offset, align 8
  %or166 = or i32 %105, %shl163
  store i32 %or166, ptr %offset, align 8
  %call.i556 = call zeroext i16 @crc16(i16 noundef zeroext -1, ptr noundef nonnull %arp, i32 noundef 2) #11
  %106 = and i16 %call.i556, 255
  %idxprom.i.i.i559 = zext i16 %106 to i32
  %arrayidx.i.i.i560 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.i559
  %107 = ptrtoint ptr %arrayidx.i.i.i560 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx.i.i.i560, align 1
  %conv2.i.i561 = zext i8 %108 to i32
  %shl.i.i562 = shl nuw nsw i32 %conv2.i.i561, 8
  %109 = lshr i16 %call.i556, 8
  %conv4.i.i563 = zext i16 %109 to i32
  %arrayidx.i10.i.i564 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i563
  %110 = ptrtoint ptr %arrayidx.i10.i.i564 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx.i10.i.i564, align 1
  %conv6.i.i565 = zext i8 %111 to i32
  %or.i.i566 = or i32 %shl.i.i562, %conv6.i.i565
  %rem.i705706 = shl nuw nsw i32 %filter.1, 4
  %mul.i570 = and i32 %rem.i705706, 16
  %shl30.i571 = shl nuw i32 %or.i.i566, %mul.i570
  %div169707708709 = lshr i32 %filter.1, 1
  %arrayidx170 = getelementptr [4 x i32], ptr %crc, i32 0, i32 %div169707708709
  %112 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx170, align 4
  %or171 = or i32 %shl30.i571, %113
  store i32 %or171, ptr %arrayidx170, align 4
  %inc172 = add nuw nsw i32 %filter.1, 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %arp) #11
  br label %if.end173

if.end173:                                        ; preds = %if.then142, %if.end138.if.end173_crit_edge
  %filter.2 = phi i32 [ %inc172, %if.then142 ], [ %filter.1, %if.end138.if.end173_crit_edge ]
  %114 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %wolopts, align 4
  %and175 = and i32 %115, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175)
  %tobool176.not = icmp eq i32 %and175, 0
  br i1 %tobool176.not, label %if.end173.if.end208_crit_edge, label %if.then177

if.end173.if.end208_crit_edge:                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end208

if.then177:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #13
  %net178 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %116 = ptrtoint ptr %net178 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %net178, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %117, ptr noundef nonnull @.str.10) #14
  %mul179 = shl nuw nsw i32 %filter.2, 2
  %arrayidx180 = getelementptr i32, ptr %call7.i.i.i, i32 %mul179
  %118 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 63, ptr %arrayidx180, align 8
  %add182 = or i32 %mul179, 1
  %arrayidx183 = getelementptr i32, ptr %call7.i.i.i, i32 %add182
  %119 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %arrayidx183, align 4
  %add185 = or i32 %mul179, 2
  %arrayidx186 = getelementptr i32, ptr %call7.i.i.i, i32 %add185
  %120 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %arrayidx186, align 8
  %add188 = or i32 %mul179, 3
  %arrayidx189 = getelementptr i32, ptr %call7.i.i.i, i32 %add188
  %121 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %arrayidx189, align 4
  %rem190695696 = shl nuw nsw i32 %filter.2, 3
  %mul191 = and i32 %rem190695696, 24
  %shl192 = shl nuw nsw i32 1, %mul191
  %122 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %command, align 8
  %or195 = or i32 %123, %shl192
  store i32 %or195, ptr %command, align 8
  %124 = ptrtoint ptr %net178 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %net178, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %125, i32 0, i32 86
  %126 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev_addr, align 64
  %call.i573 = call zeroext i16 @crc16(i16 noundef zeroext -1, ptr noundef %127, i32 noundef 6) #11
  %128 = and i16 %call.i573, 255
  %idxprom.i.i.i576 = zext i16 %128 to i32
  %arrayidx.i.i.i577 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.i576
  %129 = ptrtoint ptr %arrayidx.i.i.i577 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx.i.i.i577, align 1
  %conv2.i.i578 = zext i8 %130 to i32
  %shl.i.i579 = shl nuw nsw i32 %conv2.i.i578, 8
  %131 = lshr i16 %call.i573, 8
  %conv4.i.i580 = zext i16 %131 to i32
  %arrayidx.i10.i.i581 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i580
  %132 = ptrtoint ptr %arrayidx.i10.i.i581 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx.i10.i.i581, align 1
  %conv6.i.i582 = zext i8 %133 to i32
  %or.i.i583 = or i32 %shl.i.i579, %conv6.i.i582
  %rem.i587699700 = shl nuw nsw i32 %filter.2, 4
  %mul.i588 = and i32 %rem.i587699700, 16
  %shl30.i589 = shl nuw i32 %or.i.i583, %mul.i588
  %div204701702711 = lshr i32 %filter.2, 1
  %arrayidx205 = getelementptr [4 x i32], ptr %crc, i32 0, i32 %div204701702711
  %134 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx205, align 4
  %or206 = or i32 %shl30.i589, %135
  store i32 %or206, ptr %arrayidx205, align 4
  br label %if.end208

if.end208:                                        ; preds = %if.then177, %if.end173.if.end208_crit_edge
  %mul209 = shl nuw nsw i32 %cond, 2
  %tobool.not.i.i592 = icmp eq ptr %1, null
  br label %for.body

for.cond:                                         ; preds = %smsc95xx_write_reg_nopm.exit601
  %inc218 = add nuw nsw i32 %i.0722, 1
  %exitcond.not = icmp eq i32 %inc218, %mul209
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end208
  %i.0722 = phi i32 [ 0, %if.end208 ], [ %inc218, %for.cond.for.body_crit_edge ]
  %arrayidx212 = getelementptr i32, ptr %call7.i.i.i, i32 %i.0722
  %136 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx212, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i591) #11
  br i1 %tobool.not.i.i592, label %do.body4.i.i593, label %do.end9.i.i598, !prof !273

do.body4.i.i593:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #11, !srcloc !278
  unreachable

do.end9.i.i598:                                   ; preds = %for.body
  %138 = call i32 @llvm.bswap.i32(i32 %137) #11
  %139 = ptrtoint ptr %buf.i.i591 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %buf.i.i591, align 4
  %call.i.i594 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 296, ptr noundef nonnull %buf.i.i591, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i594)
  %cmp.i.i595 = icmp sgt i32 %call.i.i594, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i594)
  %cmp14.not.i.i596 = icmp eq i32 %call.i.i594, -19
  %or.cond.i.i597 = or i1 %cmp.i.i595, %cmp14.not.i.i596
  br i1 %or.cond.i.i597, label %smsc95xx_write_reg_nopm.exit601, label %smsc95xx_write_reg_nopm.exit601.thread

smsc95xx_write_reg_nopm.exit601.thread:           ; preds = %do.end9.i.i598
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i599 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %140 = ptrtoint ptr %net.i.i599 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %net.i.i599, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %141, ptr noundef nonnull @.str.21, i32 noundef 296, i32 noundef %call.i.i594) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i591) #11
  br label %if.then216

smsc95xx_write_reg_nopm.exit601:                  ; preds = %do.end9.i.i598
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i591) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i594)
  %cmp214 = icmp slt i32 %call.i.i594, 0
  br i1 %cmp214, label %smsc95xx_write_reg_nopm.exit601.if.then216_crit_edge, label %for.cond

smsc95xx_write_reg_nopm.exit601.if.then216_crit_edge: ; preds = %smsc95xx_write_reg_nopm.exit601
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then216

if.then216:                                       ; preds = %smsc95xx_write_reg_nopm.exit601.if.then216_crit_edge, %smsc95xx_write_reg_nopm.exit601.thread
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %cleanup.thread

for.end:                                          ; preds = %for.cond
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  %div220515 = lshr exact i32 %cond, 2
  %umax737 = call i32 @llvm.umax.i32(i32 %div220515, i32 1)
  %142 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %command, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i602) #11
  %144 = call i32 @llvm.bswap.i32(i32 %143) #11
  %145 = ptrtoint ptr %buf.i.i602 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %buf.i.i602, align 4
  %call.i.i605 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 296, ptr noundef nonnull %buf.i.i602, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i605)
  %cmp.i.i606 = icmp sgt i32 %call.i.i605, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i605)
  %cmp14.not.i.i607 = icmp eq i32 %call.i.i605, -19
  %or.cond.i.i608 = or i1 %cmp.i.i606, %cmp14.not.i.i607
  br i1 %or.cond.i.i608, label %smsc95xx_write_reg_nopm.exit612, label %for.end.smsc95xx_write_reg_nopm.exit612.thread_crit_edge

for.end.smsc95xx_write_reg_nopm.exit612.thread_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %smsc95xx_write_reg_nopm.exit612.thread

for.cond219:                                      ; preds = %smsc95xx_write_reg_nopm.exit612
  br i1 %tobool70.not, label %for.cond219.for.body237_crit_edge, label %do.end9.i.i609.1

for.cond219.for.body237_crit_edge:                ; preds = %for.cond219
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body237

do.end9.i.i609.1:                                 ; preds = %for.cond219
  %arrayidx224.1 = getelementptr inbounds [2 x i32], ptr %command, i32 0, i32 1
  %146 = ptrtoint ptr %arrayidx224.1 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx224.1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i602) #11
  %148 = call i32 @llvm.bswap.i32(i32 %147) #11
  %149 = ptrtoint ptr %buf.i.i602 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %buf.i.i602, align 4
  %call.i.i605.1 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 296, ptr noundef nonnull %buf.i.i602, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i605.1)
  %cmp.i.i606.1 = icmp sgt i32 %call.i.i605.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i605.1)
  %cmp14.not.i.i607.1 = icmp eq i32 %call.i.i605.1, -19
  %or.cond.i.i608.1 = or i1 %cmp.i.i606.1, %cmp14.not.i.i607.1
  br i1 %or.cond.i.i608.1, label %smsc95xx_write_reg_nopm.exit612.1, label %do.end9.i.i609.1.smsc95xx_write_reg_nopm.exit612.thread_crit_edge

do.end9.i.i609.1.smsc95xx_write_reg_nopm.exit612.thread_crit_edge: ; preds = %do.end9.i.i609.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %smsc95xx_write_reg_nopm.exit612.thread

smsc95xx_write_reg_nopm.exit612.1:                ; preds = %do.end9.i.i609.1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i602) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i605.1)
  %cmp226.1 = icmp slt i32 %call.i.i605.1, 0
  br i1 %cmp226.1, label %smsc95xx_write_reg_nopm.exit612.1.cleanup.thread_crit_edge, label %for.cond219.1

smsc95xx_write_reg_nopm.exit612.1.cleanup.thread_crit_edge: ; preds = %smsc95xx_write_reg_nopm.exit612.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

for.cond219.1:                                    ; preds = %smsc95xx_write_reg_nopm.exit612.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %umax737)
  %exitcond738.not.1 = icmp eq i32 %umax737, 2
  br i1 %exitcond738.not.1, label %for.cond219.1.for.body237_crit_edge, label %do.end9.i.i609.2

for.cond219.1.for.body237_crit_edge:              ; preds = %for.cond219.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body237

do.end9.i.i609.2:                                 ; preds = %for.cond219.1
  %arrayidx224.2 = getelementptr inbounds [2 x i32], ptr %command, i32 0, i32 2
  %150 = ptrtoint ptr %arrayidx224.2 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx224.2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i602) #11
  %152 = call i32 @llvm.bswap.i32(i32 %151) #11
  %153 = ptrtoint ptr %buf.i.i602 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %buf.i.i602, align 4
  %call.i.i605.2 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 296, ptr noundef nonnull %buf.i.i602, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i605.2)
  %cmp.i.i606.2 = icmp sgt i32 %call.i.i605.2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i605.2)
  %cmp14.not.i.i607.2 = icmp eq i32 %call.i.i605.2, -19
  %or.cond.i.i608.2 = or i1 %cmp.i.i606.2, %cmp14.not.i.i607.2
  br i1 %or.cond.i.i608.2, label %smsc95xx_write_reg_nopm.exit612.2, label %do.end9.i.i609.2.smsc95xx_write_reg_nopm.exit612.thread_crit_edge

do.end9.i.i609.2.smsc95xx_write_reg_nopm.exit612.thread_crit_edge: ; preds = %do.end9.i.i609.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %smsc95xx_write_reg_nopm.exit612.thread

smsc95xx_write_reg_nopm.exit612.2:                ; preds = %do.end9.i.i609.2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i602) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i605.2)
  %cmp226.2 = icmp slt i32 %call.i.i605.2, 0
  br i1 %cmp226.2, label %smsc95xx_write_reg_nopm.exit612.2.cleanup.thread_crit_edge, label %smsc95xx_write_reg_nopm.exit612.2.for.body237_crit_edge

smsc95xx_write_reg_nopm.exit612.2.for.body237_crit_edge: ; preds = %smsc95xx_write_reg_nopm.exit612.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body237

smsc95xx_write_reg_nopm.exit612.2.cleanup.thread_crit_edge: ; preds = %smsc95xx_write_reg_nopm.exit612.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

smsc95xx_write_reg_nopm.exit612.thread:           ; preds = %do.end9.i.i609.2.smsc95xx_write_reg_nopm.exit612.thread_crit_edge, %do.end9.i.i609.1.smsc95xx_write_reg_nopm.exit612.thread_crit_edge, %for.end.smsc95xx_write_reg_nopm.exit612.thread_crit_edge
  %call.i.i605.lcssa = phi i32 [ %call.i.i605, %for.end.smsc95xx_write_reg_nopm.exit612.thread_crit_edge ], [ %call.i.i605.1, %do.end9.i.i609.1.smsc95xx_write_reg_nopm.exit612.thread_crit_edge ], [ %call.i.i605.2, %do.end9.i.i609.2.smsc95xx_write_reg_nopm.exit612.thread_crit_edge ]
  %net.i.i610 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %154 = ptrtoint ptr %net.i.i610 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %net.i.i610, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %155, ptr noundef nonnull @.str.21, i32 noundef 296, i32 noundef %call.i.i605.lcssa) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i602) #11
  br label %cleanup.thread

smsc95xx_write_reg_nopm.exit612:                  ; preds = %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i602) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i605)
  %cmp226 = icmp slt i32 %call.i.i605, 0
  br i1 %cmp226, label %smsc95xx_write_reg_nopm.exit612.cleanup.thread_crit_edge, label %for.cond219

smsc95xx_write_reg_nopm.exit612.cleanup.thread_crit_edge: ; preds = %smsc95xx_write_reg_nopm.exit612
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

for.cond233:                                      ; preds = %smsc95xx_write_reg_nopm.exit623
  br i1 %tobool70.not, label %for.cond233.for.cond247.preheader.split_crit_edge, label %for.body237.1

for.cond233.for.cond247.preheader.split_crit_edge: ; preds = %for.cond233
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond247.preheader.split

for.body237.1:                                    ; preds = %for.cond233
  %arrayidx238.1 = getelementptr inbounds [2 x i32], ptr %offset, i32 0, i32 1
  %156 = ptrtoint ptr %arrayidx238.1 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx238.1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i613) #11
  %158 = call i32 @llvm.bswap.i32(i32 %157) #11
  %159 = ptrtoint ptr %buf.i.i613 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %buf.i.i613, align 4
  %call.i.i616.1 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 296, ptr noundef nonnull %buf.i.i613, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i616.1)
  %cmp.i.i617.1 = icmp sgt i32 %call.i.i616.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i616.1)
  %cmp14.not.i.i618.1 = icmp eq i32 %call.i.i616.1, -19
  %or.cond.i.i619.1 = or i1 %cmp.i.i617.1, %cmp14.not.i.i618.1
  br i1 %or.cond.i.i619.1, label %smsc95xx_write_reg_nopm.exit623.1, label %for.body237.1.smsc95xx_write_reg_nopm.exit623.thread_crit_edge

for.body237.1.smsc95xx_write_reg_nopm.exit623.thread_crit_edge: ; preds = %for.body237.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %smsc95xx_write_reg_nopm.exit623.thread

smsc95xx_write_reg_nopm.exit623.1:                ; preds = %for.body237.1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i613) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i616.1)
  %cmp240.1 = icmp slt i32 %call.i.i616.1, 0
  br i1 %cmp240.1, label %smsc95xx_write_reg_nopm.exit623.1.cleanup.thread_crit_edge, label %for.cond233.1

smsc95xx_write_reg_nopm.exit623.1.cleanup.thread_crit_edge: ; preds = %smsc95xx_write_reg_nopm.exit623.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

for.cond233.1:                                    ; preds = %smsc95xx_write_reg_nopm.exit623.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %umax737)
  %exitcond739.not.1 = icmp eq i32 %umax737, 2
  br i1 %exitcond739.not.1, label %for.cond233.1.for.cond247.preheader.split_crit_edge, label %for.body237.2

for.cond233.1.for.cond247.preheader.split_crit_edge: ; preds = %for.cond233.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond247.preheader.split

for.body237.2:                                    ; preds = %for.cond233.1
  %arrayidx238.2 = getelementptr inbounds [2 x i32], ptr %offset, i32 0, i32 2
  %160 = ptrtoint ptr %arrayidx238.2 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx238.2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i613) #11
  %162 = call i32 @llvm.bswap.i32(i32 %161) #11
  %163 = ptrtoint ptr %buf.i.i613 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %buf.i.i613, align 4
  %call.i.i616.2 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 296, ptr noundef nonnull %buf.i.i613, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i616.2)
  %cmp.i.i617.2 = icmp sgt i32 %call.i.i616.2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i616.2)
  %cmp14.not.i.i618.2 = icmp eq i32 %call.i.i616.2, -19
  %or.cond.i.i619.2 = or i1 %cmp.i.i617.2, %cmp14.not.i.i618.2
  br i1 %or.cond.i.i619.2, label %smsc95xx_write_reg_nopm.exit623.2, label %for.body237.2.smsc95xx_write_reg_nopm.exit623.thread_crit_edge

for.body237.2.smsc95xx_write_reg_nopm.exit623.thread_crit_edge: ; preds = %for.body237.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %smsc95xx_write_reg_nopm.exit623.thread

smsc95xx_write_reg_nopm.exit623.2:                ; preds = %for.body237.2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i613) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i616.2)
  %cmp240.2 = icmp slt i32 %call.i.i616.2, 0
  br i1 %cmp240.2, label %smsc95xx_write_reg_nopm.exit623.2.cleanup.thread_crit_edge, label %smsc95xx_write_reg_nopm.exit623.2.for.cond247.preheader.split_crit_edge

smsc95xx_write_reg_nopm.exit623.2.for.cond247.preheader.split_crit_edge: ; preds = %smsc95xx_write_reg_nopm.exit623.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond247.preheader.split

smsc95xx_write_reg_nopm.exit623.2.cleanup.thread_crit_edge: ; preds = %smsc95xx_write_reg_nopm.exit623.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

for.cond247.preheader.split:                      ; preds = %smsc95xx_write_reg_nopm.exit623.2.for.cond247.preheader.split_crit_edge, %for.cond233.1.for.cond247.preheader.split_crit_edge, %for.cond233.for.cond247.preheader.split_crit_edge
  %div248516 = lshr exact i32 %cond, 1
  %umax740 = call i32 @llvm.umax.i32(i32 %div248516, i32 1)
  %164 = ptrtoint ptr %crc to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %crc, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i624) #11
  %166 = call i32 @llvm.bswap.i32(i32 %165) #11
  %167 = ptrtoint ptr %buf.i.i624 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %buf.i.i624, align 4
  %call.i.i627 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 296, ptr noundef nonnull %buf.i.i624, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i627)
  %cmp.i.i628 = icmp sgt i32 %call.i.i627, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i627)
  %cmp14.not.i.i629 = icmp eq i32 %call.i.i627, -19
  %or.cond.i.i630 = or i1 %cmp.i.i628, %cmp14.not.i.i629
  br i1 %or.cond.i.i630, label %smsc95xx_write_reg_nopm.exit634, label %for.cond247.preheader.split.smsc95xx_write_reg_nopm.exit634.thread_crit_edge

for.cond247.preheader.split.smsc95xx_write_reg_nopm.exit634.thread_crit_edge: ; preds = %for.cond247.preheader.split
  call void @__sanitizer_cov_trace_pc() #13
  br label %smsc95xx_write_reg_nopm.exit634.thread

for.body237:                                      ; preds = %smsc95xx_write_reg_nopm.exit612.2.for.body237_crit_edge, %for.cond219.1.for.body237_crit_edge, %for.cond219.for.body237_crit_edge
  %168 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %offset, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i613) #11
  %170 = call i32 @llvm.bswap.i32(i32 %169) #11
  %171 = ptrtoint ptr %buf.i.i613 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %170, ptr %buf.i.i613, align 4
  %call.i.i616 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 296, ptr noundef nonnull %buf.i.i613, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i616)
  %cmp.i.i617 = icmp sgt i32 %call.i.i616, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i616)
  %cmp14.not.i.i618 = icmp eq i32 %call.i.i616, -19
  %or.cond.i.i619 = or i1 %cmp.i.i617, %cmp14.not.i.i618
  br i1 %or.cond.i.i619, label %smsc95xx_write_reg_nopm.exit623, label %for.body237.smsc95xx_write_reg_nopm.exit623.thread_crit_edge

for.body237.smsc95xx_write_reg_nopm.exit623.thread_crit_edge: ; preds = %for.body237
  call void @__sanitizer_cov_trace_pc() #13
  br label %smsc95xx_write_reg_nopm.exit623.thread

smsc95xx_write_reg_nopm.exit623.thread:           ; preds = %for.body237.smsc95xx_write_reg_nopm.exit623.thread_crit_edge, %for.body237.2.smsc95xx_write_reg_nopm.exit623.thread_crit_edge, %for.body237.1.smsc95xx_write_reg_nopm.exit623.thread_crit_edge
  %call.i.i616.lcssa = phi i32 [ %call.i.i616, %for.body237.smsc95xx_write_reg_nopm.exit623.thread_crit_edge ], [ %call.i.i616.1, %for.body237.1.smsc95xx_write_reg_nopm.exit623.thread_crit_edge ], [ %call.i.i616.2, %for.body237.2.smsc95xx_write_reg_nopm.exit623.thread_crit_edge ]
  %net.i.i621 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %172 = ptrtoint ptr %net.i.i621 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %net.i.i621, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %173, ptr noundef nonnull @.str.21, i32 noundef 296, i32 noundef %call.i.i616.lcssa) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i613) #11
  br label %cleanup.thread

smsc95xx_write_reg_nopm.exit623:                  ; preds = %for.body237
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i613) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i616)
  %cmp240 = icmp slt i32 %call.i.i616, 0
  br i1 %cmp240, label %smsc95xx_write_reg_nopm.exit623.cleanup.thread_crit_edge, label %for.cond233

smsc95xx_write_reg_nopm.exit623.cleanup.thread_crit_edge: ; preds = %smsc95xx_write_reg_nopm.exit623
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

for.body251.1:                                    ; preds = %smsc95xx_write_reg_nopm.exit634
  %arrayidx252.1 = getelementptr inbounds [4 x i32], ptr %crc, i32 0, i32 1
  %174 = ptrtoint ptr %arrayidx252.1 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx252.1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i624) #11
  %176 = call i32 @llvm.bswap.i32(i32 %175) #11
  %177 = ptrtoint ptr %buf.i.i624 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %buf.i.i624, align 4
  %call.i.i627.1 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 296, ptr noundef nonnull %buf.i.i624, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i627.1)
  %cmp.i.i628.1 = icmp sgt i32 %call.i.i627.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i627.1)
  %cmp14.not.i.i629.1 = icmp eq i32 %call.i.i627.1, -19
  %or.cond.i.i630.1 = or i1 %cmp.i.i628.1, %cmp14.not.i.i629.1
  br i1 %or.cond.i.i630.1, label %smsc95xx_write_reg_nopm.exit634.1, label %for.body251.1.smsc95xx_write_reg_nopm.exit634.thread_crit_edge

for.body251.1.smsc95xx_write_reg_nopm.exit634.thread_crit_edge: ; preds = %for.body251.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %smsc95xx_write_reg_nopm.exit634.thread

smsc95xx_write_reg_nopm.exit634.1:                ; preds = %for.body251.1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i624) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i627.1)
  %cmp254.1 = icmp slt i32 %call.i.i627.1, 0
  br i1 %cmp254.1, label %smsc95xx_write_reg_nopm.exit634.1.cleanup.thread_crit_edge, label %for.cond247.1

smsc95xx_write_reg_nopm.exit634.1.cleanup.thread_crit_edge: ; preds = %smsc95xx_write_reg_nopm.exit634.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

for.cond247.1:                                    ; preds = %smsc95xx_write_reg_nopm.exit634.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %umax740)
  %exitcond741.not.1 = icmp eq i32 %umax740, 2
  br i1 %exitcond741.not.1, label %for.cond247.1.do.end9.i.i640_crit_edge, label %for.body251.2

for.cond247.1.do.end9.i.i640_crit_edge:           ; preds = %for.cond247.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i.i640

for.body251.2:                                    ; preds = %for.cond247.1
  %arrayidx252.2 = getelementptr inbounds [4 x i32], ptr %crc, i32 0, i32 2
  %178 = ptrtoint ptr %arrayidx252.2 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx252.2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i624) #11
  %180 = call i32 @llvm.bswap.i32(i32 %179) #11
  %181 = ptrtoint ptr %buf.i.i624 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %180, ptr %buf.i.i624, align 4
  %call.i.i627.2 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 296, ptr noundef nonnull %buf.i.i624, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i627.2)
  %cmp.i.i628.2 = icmp sgt i32 %call.i.i627.2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i627.2)
  %cmp14.not.i.i629.2 = icmp eq i32 %call.i.i627.2, -19
  %or.cond.i.i630.2 = or i1 %cmp.i.i628.2, %cmp14.not.i.i629.2
  br i1 %or.cond.i.i630.2, label %smsc95xx_write_reg_nopm.exit634.2, label %for.body251.2.smsc95xx_write_reg_nopm.exit634.thread_crit_edge

for.body251.2.smsc95xx_write_reg_nopm.exit634.thread_crit_edge: ; preds = %for.body251.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %smsc95xx_write_reg_nopm.exit634.thread

smsc95xx_write_reg_nopm.exit634.2:                ; preds = %for.body251.2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i624) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i627.2)
  %cmp254.2 = icmp slt i32 %call.i.i627.2, 0
  br i1 %cmp254.2, label %smsc95xx_write_reg_nopm.exit634.2.cleanup.thread_crit_edge, label %for.cond247.2

smsc95xx_write_reg_nopm.exit634.2.cleanup.thread_crit_edge: ; preds = %smsc95xx_write_reg_nopm.exit634.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

for.cond247.2:                                    ; preds = %smsc95xx_write_reg_nopm.exit634.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %umax740)
  %exitcond741.not.2 = icmp eq i32 %umax740, 3
  br i1 %exitcond741.not.2, label %for.cond247.2.do.end9.i.i640_crit_edge, label %for.body251.3

for.cond247.2.do.end9.i.i640_crit_edge:           ; preds = %for.cond247.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i.i640

for.body251.3:                                    ; preds = %for.cond247.2
  %arrayidx252.3 = getelementptr inbounds [4 x i32], ptr %crc, i32 0, i32 3
  %182 = ptrtoint ptr %arrayidx252.3 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx252.3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i624) #11
  %184 = call i32 @llvm.bswap.i32(i32 %183) #11
  %185 = ptrtoint ptr %buf.i.i624 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %184, ptr %buf.i.i624, align 4
  %call.i.i627.3 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 296, ptr noundef nonnull %buf.i.i624, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i627.3)
  %cmp.i.i628.3 = icmp sgt i32 %call.i.i627.3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i627.3)
  %cmp14.not.i.i629.3 = icmp eq i32 %call.i.i627.3, -19
  %or.cond.i.i630.3 = or i1 %cmp.i.i628.3, %cmp14.not.i.i629.3
  br i1 %or.cond.i.i630.3, label %smsc95xx_write_reg_nopm.exit634.3, label %for.body251.3.smsc95xx_write_reg_nopm.exit634.thread_crit_edge

for.body251.3.smsc95xx_write_reg_nopm.exit634.thread_crit_edge: ; preds = %for.body251.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %smsc95xx_write_reg_nopm.exit634.thread

smsc95xx_write_reg_nopm.exit634.3:                ; preds = %for.body251.3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i624) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i627.3)
  %cmp254.3 = icmp slt i32 %call.i.i627.3, 0
  br i1 %cmp254.3, label %smsc95xx_write_reg_nopm.exit634.3.cleanup.thread_crit_edge, label %for.cond247.3

smsc95xx_write_reg_nopm.exit634.3.cleanup.thread_crit_edge: ; preds = %smsc95xx_write_reg_nopm.exit634.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

for.cond247.3:                                    ; preds = %smsc95xx_write_reg_nopm.exit634.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %umax740)
  %exitcond741.not.3 = icmp eq i32 %umax740, 4
  br i1 %exitcond741.not.3, label %for.cond247.3.do.end9.i.i640_crit_edge, label %for.body251.4

for.cond247.3.do.end9.i.i640_crit_edge:           ; preds = %for.cond247.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i.i640

for.body251.4:                                    ; preds = %for.cond247.3
  %arrayidx252.4 = getelementptr inbounds [4 x i32], ptr %crc, i32 0, i32 4
  %186 = ptrtoint ptr %arrayidx252.4 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx252.4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i624) #11
  %188 = call i32 @llvm.bswap.i32(i32 %187) #11
  %189 = ptrtoint ptr %buf.i.i624 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %188, ptr %buf.i.i624, align 4
  %call.i.i627.4 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 296, ptr noundef nonnull %buf.i.i624, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i627.4)
  %cmp.i.i628.4 = icmp sgt i32 %call.i.i627.4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i627.4)
  %cmp14.not.i.i629.4 = icmp eq i32 %call.i.i627.4, -19
  %or.cond.i.i630.4 = or i1 %cmp.i.i628.4, %cmp14.not.i.i629.4
  br i1 %or.cond.i.i630.4, label %smsc95xx_write_reg_nopm.exit634.4, label %for.body251.4.smsc95xx_write_reg_nopm.exit634.thread_crit_edge

for.body251.4.smsc95xx_write_reg_nopm.exit634.thread_crit_edge: ; preds = %for.body251.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %smsc95xx_write_reg_nopm.exit634.thread

smsc95xx_write_reg_nopm.exit634.4:                ; preds = %for.body251.4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i624) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i627.4)
  %cmp254.4 = icmp slt i32 %call.i.i627.4, 0
  br i1 %cmp254.4, label %smsc95xx_write_reg_nopm.exit634.4.cleanup.thread_crit_edge, label %for.cond247.4

smsc95xx_write_reg_nopm.exit634.4.cleanup.thread_crit_edge: ; preds = %smsc95xx_write_reg_nopm.exit634.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

for.cond247.4:                                    ; preds = %smsc95xx_write_reg_nopm.exit634.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %umax740)
  %exitcond741.not.4 = icmp eq i32 %umax740, 5
  br i1 %exitcond741.not.4, label %for.cond247.4.do.end9.i.i640_crit_edge, label %for.body251.5

for.cond247.4.do.end9.i.i640_crit_edge:           ; preds = %for.cond247.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i.i640

for.body251.5:                                    ; preds = %for.cond247.4
  %arrayidx252.5 = getelementptr [4 x i32], ptr %crc, i32 0, i32 5
  %190 = ptrtoint ptr %arrayidx252.5 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %arrayidx252.5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i624) #11
  %192 = call i32 @llvm.bswap.i32(i32 %191) #11
  %193 = ptrtoint ptr %buf.i.i624 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %192, ptr %buf.i.i624, align 4
  %call.i.i627.5 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 296, ptr noundef nonnull %buf.i.i624, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i627.5)
  %cmp.i.i628.5 = icmp sgt i32 %call.i.i627.5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i627.5)
  %cmp14.not.i.i629.5 = icmp eq i32 %call.i.i627.5, -19
  %or.cond.i.i630.5 = or i1 %cmp.i.i628.5, %cmp14.not.i.i629.5
  br i1 %or.cond.i.i630.5, label %smsc95xx_write_reg_nopm.exit634.5, label %for.body251.5.smsc95xx_write_reg_nopm.exit634.thread_crit_edge

for.body251.5.smsc95xx_write_reg_nopm.exit634.thread_crit_edge: ; preds = %for.body251.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %smsc95xx_write_reg_nopm.exit634.thread

smsc95xx_write_reg_nopm.exit634.5:                ; preds = %for.body251.5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i624) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i627.5)
  %cmp254.5 = icmp slt i32 %call.i.i627.5, 0
  br i1 %cmp254.5, label %smsc95xx_write_reg_nopm.exit634.5.cleanup.thread_crit_edge, label %smsc95xx_write_reg_nopm.exit634.5.do.end9.i.i640_crit_edge

smsc95xx_write_reg_nopm.exit634.5.do.end9.i.i640_crit_edge: ; preds = %smsc95xx_write_reg_nopm.exit634.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i.i640

smsc95xx_write_reg_nopm.exit634.5.cleanup.thread_crit_edge: ; preds = %smsc95xx_write_reg_nopm.exit634.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

smsc95xx_write_reg_nopm.exit634.thread:           ; preds = %for.body251.5.smsc95xx_write_reg_nopm.exit634.thread_crit_edge, %for.body251.4.smsc95xx_write_reg_nopm.exit634.thread_crit_edge, %for.body251.3.smsc95xx_write_reg_nopm.exit634.thread_crit_edge, %for.body251.2.smsc95xx_write_reg_nopm.exit634.thread_crit_edge, %for.body251.1.smsc95xx_write_reg_nopm.exit634.thread_crit_edge, %for.cond247.preheader.split.smsc95xx_write_reg_nopm.exit634.thread_crit_edge
  %call.i.i627.lcssa = phi i32 [ %call.i.i627, %for.cond247.preheader.split.smsc95xx_write_reg_nopm.exit634.thread_crit_edge ], [ %call.i.i627.1, %for.body251.1.smsc95xx_write_reg_nopm.exit634.thread_crit_edge ], [ %call.i.i627.2, %for.body251.2.smsc95xx_write_reg_nopm.exit634.thread_crit_edge ], [ %call.i.i627.3, %for.body251.3.smsc95xx_write_reg_nopm.exit634.thread_crit_edge ], [ %call.i.i627.4, %for.body251.4.smsc95xx_write_reg_nopm.exit634.thread_crit_edge ], [ %call.i.i627.5, %for.body251.5.smsc95xx_write_reg_nopm.exit634.thread_crit_edge ]
  %net.i.i632 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %194 = ptrtoint ptr %net.i.i632 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %net.i.i632, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %195, ptr noundef nonnull @.str.21, i32 noundef 296, i32 noundef %call.i.i627.lcssa) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i624) #11
  br label %cleanup.thread

smsc95xx_write_reg_nopm.exit634:                  ; preds = %for.cond247.preheader.split
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i624) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i627)
  %cmp254 = icmp slt i32 %call.i.i627, 0
  br i1 %cmp254, label %smsc95xx_write_reg_nopm.exit634.cleanup.thread_crit_edge, label %for.body251.1

smsc95xx_write_reg_nopm.exit634.cleanup.thread_crit_edge: ; preds = %smsc95xx_write_reg_nopm.exit634
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

do.end9.i.i640:                                   ; preds = %smsc95xx_write_reg_nopm.exit634.5.do.end9.i.i640_crit_edge, %for.cond247.4.do.end9.i.i640_crit_edge, %for.cond247.3.do.end9.i.i640_crit_edge, %for.cond247.2.do.end9.i.i640_crit_edge, %for.cond247.1.do.end9.i.i640_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i635) #11
  %196 = ptrtoint ptr %buf.i.i635 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 -1, ptr %buf.i.i635, align 4, !annotation !272
  %call.i.i638 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 300, ptr noundef nonnull %buf.i.i635, i16 noundef zeroext 4) #11, !callees !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i638)
  %cmp.i.i639 = icmp slt i32 %call.i.i638, 0
  br i1 %cmp.i.i639, label %if.then14.i.i642, label %if.end265

if.then14.i.i642:                                 ; preds = %do.end9.i.i640
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i638)
  %cmp15.not.i.i641 = icmp eq i32 %call.i.i638, -19
  br i1 %cmp15.not.i.i641, label %if.then14.i.i642.smsc95xx_read_reg_nopm.exit646.thread_crit_edge, label %if.then17.i.i644

if.then14.i.i642.smsc95xx_read_reg_nopm.exit646.thread_crit_edge: ; preds = %if.then14.i.i642
  call void @__sanitizer_cov_trace_pc() #13
  br label %smsc95xx_read_reg_nopm.exit646.thread

if.then17.i.i644:                                 ; preds = %if.then14.i.i642
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i643 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %197 = ptrtoint ptr %net.i.i643 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %net.i.i643, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %198, ptr noundef nonnull @.str.22, i32 noundef 300, i32 noundef %call.i.i638) #14
  br label %smsc95xx_read_reg_nopm.exit646.thread

smsc95xx_read_reg_nopm.exit646.thread:            ; preds = %if.then17.i.i644, %if.then14.i.i642.smsc95xx_read_reg_nopm.exit646.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i635) #11
  br label %cleanup.thread

if.end265:                                        ; preds = %do.end9.i.i640
  %199 = ptrtoint ptr %buf.i.i635 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %buf.i.i635, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i635) #11
  %201 = or i32 %200, 1073741824
  %202 = call i32 @llvm.bswap.i32(i32 %201)
  %203 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %202, ptr %val, align 4
  %call267 = call fastcc i32 @smsc95xx_write_reg_nopm(ptr noundef nonnull %1, i32 noundef 300, i32 noundef %202)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call267)
  %cmp268 = icmp slt i32 %call267, 0
  br i1 %cmp268, label %if.end265.cleanup.thread_crit_edge, label %cleanup

if.end265.cleanup.thread_crit_edge:               ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end265.cleanup.thread_crit_edge, %smsc95xx_read_reg_nopm.exit646.thread, %smsc95xx_write_reg_nopm.exit634.cleanup.thread_crit_edge, %smsc95xx_write_reg_nopm.exit634.thread, %smsc95xx_write_reg_nopm.exit634.5.cleanup.thread_crit_edge, %smsc95xx_write_reg_nopm.exit634.4.cleanup.thread_crit_edge, %smsc95xx_write_reg_nopm.exit634.3.cleanup.thread_crit_edge, %smsc95xx_write_reg_nopm.exit634.2.cleanup.thread_crit_edge, %smsc95xx_write_reg_nopm.exit634.1.cleanup.thread_crit_edge, %smsc95xx_write_reg_nopm.exit623.cleanup.thread_crit_edge, %smsc95xx_write_reg_nopm.exit623.thread, %smsc95xx_write_reg_nopm.exit623.2.cleanup.thread_crit_edge, %smsc95xx_write_reg_nopm.exit623.1.cleanup.thread_crit_edge, %smsc95xx_write_reg_nopm.exit612.cleanup.thread_crit_edge, %smsc95xx_write_reg_nopm.exit612.thread, %smsc95xx_write_reg_nopm.exit612.2.cleanup.thread_crit_edge, %smsc95xx_write_reg_nopm.exit612.1.cleanup.thread_crit_edge, %if.then216, %if.then72
  %ret.0.ph = phi i32 [ %call.i.i638, %smsc95xx_read_reg_nopm.exit646.thread ], [ %call.i.i627.lcssa, %smsc95xx_write_reg_nopm.exit634.thread ], [ %call.i.i616.lcssa, %smsc95xx_write_reg_nopm.exit623.thread ], [ %call.i.i605.lcssa, %smsc95xx_write_reg_nopm.exit612.thread ], [ -12, %if.then72 ], [ %call.i.i594, %if.then216 ], [ %call267, %if.end265.cleanup.thread_crit_edge ], [ %call.i.i627, %smsc95xx_write_reg_nopm.exit634.cleanup.thread_crit_edge ], [ %call.i.i627.1, %smsc95xx_write_reg_nopm.exit634.1.cleanup.thread_crit_edge ], [ %call.i.i627.2, %smsc95xx_write_reg_nopm.exit634.2.cleanup.thread_crit_edge ], [ %call.i.i627.3, %smsc95xx_write_reg_nopm.exit634.3.cleanup.thread_crit_edge ], [ %call.i.i627.4, %smsc95xx_write_reg_nopm.exit634.4.cleanup.thread_crit_edge ], [ %call.i.i627.5, %smsc95xx_write_reg_nopm.exit634.5.cleanup.thread_crit_edge ], [ %call.i.i616, %smsc95xx_write_reg_nopm.exit623.cleanup.thread_crit_edge ], [ %call.i.i616.1, %smsc95xx_write_reg_nopm.exit623.1.cleanup.thread_crit_edge ], [ %call.i.i616.2, %smsc95xx_write_reg_nopm.exit623.2.cleanup.thread_crit_edge ], [ %call.i.i605, %smsc95xx_write_reg_nopm.exit612.cleanup.thread_crit_edge ], [ %call.i.i605.1, %smsc95xx_write_reg_nopm.exit612.1.cleanup.thread_crit_edge ], [ %call.i.i605.2, %smsc95xx_write_reg_nopm.exit612.2.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %crc) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offset) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %command) #11
  br label %done

cleanup:                                          ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %crc) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offset) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %command) #11
  br label %if.end278

if.end278:                                        ; preds = %cleanup, %if.end61.if.end278_crit_edge
  %204 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %wolopts, align 4
  %and280 = and i32 %205, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and280)
  %tobool281.not = icmp eq i32 %and280, 0
  br i1 %tobool281.not, label %if.end294, label %if.then282

if.then282:                                       ; preds = %if.end278
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i647) #11
  %206 = ptrtoint ptr %buf.i.i647 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 -1, ptr %buf.i.i647, align 4, !annotation !272
  %tobool.not.i.i648 = icmp eq ptr %1, null
  br i1 %tobool.not.i.i648, label %do.body4.i.i649, label %do.end9.i.i652, !prof !273

do.body4.i.i649:                                  ; preds = %if.then282
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #11, !srcloc !274
  unreachable

do.end9.i.i652:                                   ; preds = %if.then282
  %call.i.i650 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 300, ptr noundef nonnull %buf.i.i647, i16 noundef zeroext 4) #11, !callees !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i650)
  %cmp.i.i651 = icmp slt i32 %call.i.i650, 0
  br i1 %cmp.i.i651, label %if.then14.i.i654, label %do.end9.i.i666

if.then14.i.i654:                                 ; preds = %do.end9.i.i652
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i650)
  %cmp15.not.i.i653 = icmp eq i32 %call.i.i650, -19
  br i1 %cmp15.not.i.i653, label %if.then14.i.i654.smsc95xx_read_reg_nopm.exit658.thread_crit_edge, label %if.then17.i.i656

if.then14.i.i654.smsc95xx_read_reg_nopm.exit658.thread_crit_edge: ; preds = %if.then14.i.i654
  call void @__sanitizer_cov_trace_pc() #13
  br label %smsc95xx_read_reg_nopm.exit658.thread

if.then17.i.i656:                                 ; preds = %if.then14.i.i654
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i655 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %207 = ptrtoint ptr %net.i.i655 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %net.i.i655, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %208, ptr noundef nonnull @.str.22, i32 noundef 300, i32 noundef %call.i.i650) #14
  br label %smsc95xx_read_reg_nopm.exit658.thread

smsc95xx_read_reg_nopm.exit658.thread:            ; preds = %if.then17.i.i656, %if.then14.i.i654.smsc95xx_read_reg_nopm.exit658.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i647) #11
  br label %done

do.end9.i.i666:                                   ; preds = %do.end9.i.i652
  %209 = ptrtoint ptr %buf.i.i647 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %buf.i.i647, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i647) #11
  %211 = or i32 %210, 536870912
  %212 = call i32 @llvm.bswap.i32(i32 %211)
  %213 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %212, ptr %val, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i659) #11
  %214 = ptrtoint ptr %buf.i.i659 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %211, ptr %buf.i.i659, align 4
  %call.i.i662 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 300, ptr noundef nonnull %buf.i.i659, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i662)
  %cmp.i.i663 = icmp sgt i32 %call.i.i662, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i662)
  %cmp14.not.i.i664 = icmp eq i32 %call.i.i662, -19
  %or.cond.i.i665 = or i1 %cmp.i.i663, %cmp14.not.i.i664
  br i1 %or.cond.i.i665, label %smsc95xx_write_reg_nopm.exit669, label %smsc95xx_write_reg_nopm.exit669.thread

smsc95xx_write_reg_nopm.exit669.thread:           ; preds = %do.end9.i.i666
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i667 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %215 = ptrtoint ptr %net.i.i667 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %net.i.i667, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %216, ptr noundef nonnull @.str.21, i32 noundef 300, i32 noundef %call.i.i662) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i659) #11
  br label %done

smsc95xx_write_reg_nopm.exit669:                  ; preds = %do.end9.i.i666
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i659) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i662)
  %cmp290 = icmp slt i32 %call.i.i662, 0
  br i1 %cmp290, label %smsc95xx_write_reg_nopm.exit669.done_crit_edge, label %if.end294.thread

smsc95xx_write_reg_nopm.exit669.done_crit_edge:   ; preds = %smsc95xx_write_reg_nopm.exit669
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end294.thread:                                 ; preds = %smsc95xx_write_reg_nopm.exit669
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i670) #11
  %217 = ptrtoint ptr %buf.i.i670 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 -1, ptr %buf.i.i670, align 4, !annotation !272
  br label %do.end9.i.i675

if.end294:                                        ; preds = %if.end278
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i670) #11
  %218 = ptrtoint ptr %buf.i.i670 to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 -1, ptr %buf.i.i670, align 4, !annotation !272
  %tobool.not.i.i671 = icmp eq ptr %1, null
  br i1 %tobool.not.i.i671, label %do.body4.i.i672, label %if.end294.do.end9.i.i675_crit_edge, !prof !273

if.end294.do.end9.i.i675_crit_edge:               ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i.i675

do.body4.i.i672:                                  ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #11, !srcloc !274
  unreachable

do.end9.i.i675:                                   ; preds = %if.end294.do.end9.i.i675_crit_edge, %if.end294.thread
  %call.i.i673 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 300, ptr noundef nonnull %buf.i.i670, i16 noundef zeroext 4) #11, !callees !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i673)
  %cmp.i.i674 = icmp slt i32 %call.i.i673, 0
  br i1 %cmp.i.i674, label %if.then14.i.i677, label %if.end299

if.then14.i.i677:                                 ; preds = %do.end9.i.i675
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i673)
  %cmp15.not.i.i676 = icmp eq i32 %call.i.i673, -19
  br i1 %cmp15.not.i.i676, label %if.then14.i.i677.smsc95xx_read_reg_nopm.exit681.thread_crit_edge, label %if.then17.i.i679

if.then14.i.i677.smsc95xx_read_reg_nopm.exit681.thread_crit_edge: ; preds = %if.then14.i.i677
  call void @__sanitizer_cov_trace_pc() #13
  br label %smsc95xx_read_reg_nopm.exit681.thread

if.then17.i.i679:                                 ; preds = %if.then14.i.i677
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i678 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %219 = ptrtoint ptr %net.i.i678 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %net.i.i678, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %220, ptr noundef nonnull @.str.22, i32 noundef 300, i32 noundef %call.i.i673) #14
  br label %smsc95xx_read_reg_nopm.exit681.thread

smsc95xx_read_reg_nopm.exit681.thread:            ; preds = %if.then17.i.i679, %if.then14.i.i677.smsc95xx_read_reg_nopm.exit681.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i670) #11
  br label %done

if.end299:                                        ; preds = %do.end9.i.i675
  %221 = ptrtoint ptr %buf.i.i670 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %buf.i.i670, align 4
  %223 = call i32 @llvm.bswap.i32(i32 %222) #11
  %224 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %223, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i670) #11
  %225 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %wolopts, align 4
  %and301 = and i32 %226, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and301)
  %tobool302.not = icmp eq i32 %and301, 0
  %net306 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %227 = ptrtoint ptr %net306 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %net306, align 4
  br i1 %tobool302.not, label %if.else, label %if.then303

if.then303:                                       ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %228, ptr noundef nonnull @.str.11) #14
  %229 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %val, align 4
  %or305 = or i32 %230, 4
  br label %if.end308

if.else:                                          ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %228, ptr noundef nonnull @.str.12) #14
  %231 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %val, align 4
  %and307 = and i32 %232, -5
  br label %if.end308

if.end308:                                        ; preds = %if.else, %if.then303
  %storemerge = phi i32 [ %and307, %if.else ], [ %or305, %if.then303 ]
  %233 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %storemerge, ptr %val, align 4
  %234 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %wolopts, align 4
  %and310 = and i32 %235, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and310)
  %tobool311.not = icmp eq i32 %and310, 0
  %net316 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %236 = ptrtoint ptr %net316 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %net316, align 4
  br i1 %tobool311.not, label %if.else315, label %if.then312

if.then312:                                       ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %237, ptr noundef nonnull @.str.13) #14
  %238 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %val, align 4
  %or314 = or i32 %239, 2
  br label %if.end318

if.else315:                                       ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %237, ptr noundef nonnull @.str.14) #14
  %240 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %val, align 4
  %and317 = and i32 %241, -3
  br label %if.end318

if.end318:                                        ; preds = %if.else315, %if.then312
  %storemerge514 = phi i32 [ %and317, %if.else315 ], [ %or314, %if.then312 ]
  %242 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %storemerge514, ptr %val, align 4
  %call319 = call fastcc i32 @smsc95xx_write_reg_nopm(ptr noundef nonnull %1, i32 noundef 300, i32 noundef %storemerge514)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call319)
  %cmp320 = icmp slt i32 %call319, 0
  br i1 %cmp320, label %if.end318.done_crit_edge, label %if.end323

if.end318.done_crit_edge:                         ; preds = %if.end318
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end323:                                        ; preds = %if.end318
  %call324 = call fastcc i32 @smsc95xx_read_reg_nopm(ptr noundef nonnull %1, i32 noundef 32, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call324)
  %cmp325 = icmp slt i32 %call324, 0
  br i1 %cmp325, label %if.end323.done_crit_edge, label %if.end328

if.end323.done_crit_edge:                         ; preds = %if.end323
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end328:                                        ; preds = %if.end323
  %243 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %val, align 4
  %or329 = or i32 %244, 8
  store i32 %or329, ptr %val, align 4
  %245 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %wolopts, align 4
  %and331 = and i32 %246, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and331)
  %tobool332.not = icmp eq i32 %and331, 0
  br i1 %tobool332.not, label %if.end328.if.end335_crit_edge, label %if.then333

if.end328.if.end335_crit_edge:                    ; preds = %if.end328
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end335

if.then333:                                       ; preds = %if.end328
  call void @__sanitizer_cov_trace_pc() #13
  %or334 = or i32 %244, 12
  %247 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %or334, ptr %val, align 4
  br label %if.end335

if.end335:                                        ; preds = %if.then333, %if.end328.if.end335_crit_edge
  %248 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %val, align 4
  %call336 = call fastcc i32 @smsc95xx_write_reg_nopm(ptr noundef nonnull %1, i32 noundef 32, i32 noundef %249)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call336)
  %cmp337 = icmp slt i32 %call336, 0
  br i1 %cmp337, label %if.end335.done_crit_edge, label %if.end340

if.end335.done_crit_edge:                         ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end340:                                        ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #13
  %call341 = call fastcc i32 @smsc95xx_start_rx_path(ptr noundef nonnull %1, i32 noundef 1)
  %net342 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %250 = ptrtoint ptr %net342 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %net342, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %251, ptr noundef nonnull @.str.15) #14
  %call343 = call fastcc i32 @smsc95xx_enter_suspend0(ptr noundef nonnull %1)
  br label %done

done:                                             ; preds = %if.end340, %if.end335.done_crit_edge, %if.end323.done_crit_edge, %if.end318.done_crit_edge, %smsc95xx_read_reg_nopm.exit681.thread, %smsc95xx_write_reg_nopm.exit669.done_crit_edge, %smsc95xx_write_reg_nopm.exit669.thread, %smsc95xx_read_reg_nopm.exit658.thread, %cleanup.thread, %if.then57, %if.then53, %if.end43, %if.end37.done_crit_edge, %smsc95xx_read_reg_nopm.exit537.thread, %smsc95xx_write_reg_nopm.exit.done_crit_edge, %smsc95xx_write_reg_nopm.exit.thread, %smsc95xx_read_reg_nopm.exit.thread, %if.then10
  %ret.1 = phi i32 [ %call11, %if.then10 ], [ %retval.0.i539.ph, %if.then53 ], [ %call.i.i662, %smsc95xx_write_reg_nopm.exit669.done_crit_edge ], [ %call319, %if.end318.done_crit_edge ], [ %call324, %if.end323.done_crit_edge ], [ %call336, %if.end335.done_crit_edge ], [ %call343, %if.end340 ], [ %call59, %if.then57 ], [ %call.i.i522, %smsc95xx_write_reg_nopm.exit.done_crit_edge ], [ %call39, %if.end37.done_crit_edge ], [ %call44, %if.end43 ], [ %call.i.i, %smsc95xx_read_reg_nopm.exit.thread ], [ %call.i.i522, %smsc95xx_write_reg_nopm.exit.thread ], [ %call.i.i529, %smsc95xx_read_reg_nopm.exit537.thread ], [ %ret.0.ph, %cleanup.thread ], [ %call.i.i650, %smsc95xx_read_reg_nopm.exit658.thread ], [ %call.i.i662, %smsc95xx_write_reg_nopm.exit669.thread ], [ %call.i.i673, %smsc95xx_read_reg_nopm.exit681.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool344.not = icmp eq i32 %ret.1, 0
  %and347 = and i32 %message.coerce.fca.0.extract, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and347)
  %cmp348.not = icmp eq i32 %and347, 0
  %or.cond518 = select i1 %tobool344.not, i1 true, i1 %cmp348.not
  br i1 %or.cond518, label %done.cleanup353_crit_edge, label %if.then350

done.cleanup353_crit_edge:                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup353

if.then350:                                       ; preds = %done
  call void @__sanitizer_cov_trace_pc() #13
  %call351 = call i32 @usbnet_resume(ptr noundef %intf) #11
  br label %cleanup353

cleanup353:                                       ; preds = %if.then350, %done.cleanup353_crit_edge, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %ret.1, %if.then350 ], [ %ret.1, %done.cleanup353_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc95xx_resume(ptr noundef %intf) #2 align 64 {
entry:
  %buf.i.i103 = alloca i32, align 4
  %buf.i.i91 = alloca i32, align 4
  %buf.i.i84 = alloca i32, align 4
  %buf.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !273

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1733, 0\0A.popsection", ""() #11, !srcloc !279
  unreachable

do.end9:                                          ; preds = %entry
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %suspend_flags10 = getelementptr inbounds %struct.smsc95xx_priv, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %suspend_flags10 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %suspend_flags10, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc95xx_resume.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc95xx_resume, %if.then21)) #11
          to label %do.end26 [label %if.then21], !srcloc !277

if.then21:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  %net = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net, align 4
  %conv = zext i8 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc95xx_resume.__UNIQUE_ID_ddebug383, ptr noundef %7, ptr noundef nonnull @.str.35, i32 noundef %conv) #11
  br label %do.end26

do.end26:                                         ; preds = %if.then21, %do.end9
  %8 = ptrtoint ptr %suspend_flags10 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %suspend_flags10, align 1
  %9 = and i8 %5, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool29.not = icmp eq i8 %9, 0
  br i1 %tobool29.not, label %do.end26.if.end52_crit_edge, label %do.end9.i.i

do.end26.if.end52_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

do.end9.i.i:                                      ; preds = %do.end26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #11
  %10 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %buf.i.i, align 4, !annotation !272
  %call.i.i = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 300, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #11, !callees !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then14.i.i, label %do.end9.i.i89

if.then14.i.i:                                    ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i)
  %cmp15.not.i.i = icmp eq i32 %call.i.i, -19
  br i1 %cmp15.not.i.i, label %if.then14.i.i.smsc95xx_read_reg_nopm.exit.thread_crit_edge, label %if.then17.i.i

if.then14.i.i.smsc95xx_read_reg_nopm.exit.thread_crit_edge: ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %smsc95xx_read_reg_nopm.exit.thread

if.then17.i.i:                                    ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %11 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %12, ptr noundef nonnull @.str.22, i32 noundef 300, i32 noundef %call.i.i) #14
  br label %smsc95xx_read_reg_nopm.exit.thread

smsc95xx_read_reg_nopm.exit.thread:               ; preds = %if.then17.i.i, %if.then14.i.i.smsc95xx_read_reg_nopm.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #11
  br label %cleanup

do.end9.i.i89:                                    ; preds = %do.end9.i.i
  %13 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buf.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #11
  %15 = and i32 %14, -100663297
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i84) #11
  %16 = ptrtoint ptr %buf.i.i84 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %buf.i.i84, align 4
  %call.i.i87 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 300, ptr noundef nonnull %buf.i.i84, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i87)
  %cmp.i.i88 = icmp sgt i32 %call.i.i87, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i87)
  %cmp14.not.i.i = icmp eq i32 %call.i.i87, -19
  %or.cond.i.i = or i1 %cmp.i.i88, %cmp14.not.i.i
  br i1 %or.cond.i.i, label %smsc95xx_write_reg_nopm.exit, label %smsc95xx_write_reg_nopm.exit.thread

smsc95xx_write_reg_nopm.exit.thread:              ; preds = %do.end9.i.i89
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i90 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %17 = ptrtoint ptr %net.i.i90 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net.i.i90, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %18, ptr noundef nonnull @.str.21, i32 noundef 300, i32 noundef %call.i.i87) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i84) #11
  br label %cleanup

smsc95xx_write_reg_nopm.exit:                     ; preds = %do.end9.i.i89
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i84) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i87)
  %cmp37 = icmp slt i32 %call.i.i87, 0
  br i1 %cmp37, label %smsc95xx_write_reg_nopm.exit.cleanup_crit_edge, label %do.end9.i.i96

smsc95xx_write_reg_nopm.exit.cleanup_crit_edge:   ; preds = %smsc95xx_write_reg_nopm.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end9.i.i96:                                    ; preds = %smsc95xx_write_reg_nopm.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i91) #11
  %19 = ptrtoint ptr %buf.i.i91 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %buf.i.i91, align 4, !annotation !272
  %call.i.i94 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 32, ptr noundef nonnull %buf.i.i91, i16 noundef zeroext 4) #11, !callees !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i94)
  %cmp.i.i95 = icmp slt i32 %call.i.i94, 0
  br i1 %cmp.i.i95, label %if.then14.i.i98, label %do.end9.i.i110

if.then14.i.i98:                                  ; preds = %do.end9.i.i96
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i94)
  %cmp15.not.i.i97 = icmp eq i32 %call.i.i94, -19
  br i1 %cmp15.not.i.i97, label %if.then14.i.i98.smsc95xx_read_reg_nopm.exit102.thread_crit_edge, label %if.then17.i.i100

if.then14.i.i98.smsc95xx_read_reg_nopm.exit102.thread_crit_edge: ; preds = %if.then14.i.i98
  call void @__sanitizer_cov_trace_pc() #13
  br label %smsc95xx_read_reg_nopm.exit102.thread

if.then17.i.i100:                                 ; preds = %if.then14.i.i98
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i99 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %20 = ptrtoint ptr %net.i.i99 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net.i.i99, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %21, ptr noundef nonnull @.str.22, i32 noundef 32, i32 noundef %call.i.i94) #14
  br label %smsc95xx_read_reg_nopm.exit102.thread

smsc95xx_read_reg_nopm.exit102.thread:            ; preds = %if.then17.i.i100, %if.then14.i.i98.smsc95xx_read_reg_nopm.exit102.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i91) #11
  br label %cleanup

do.end9.i.i110:                                   ; preds = %do.end9.i.i96
  %22 = ptrtoint ptr %buf.i.i91 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buf.i.i91, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i91) #11
  %24 = and i32 %23, -184549377
  %25 = or i32 %24, 50331648
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i103) #11
  %26 = ptrtoint ptr %buf.i.i103 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %buf.i.i103, align 4
  %call.i.i106 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 32, ptr noundef nonnull %buf.i.i103, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i106)
  %cmp.i.i107 = icmp sgt i32 %call.i.i106, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i106)
  %cmp14.not.i.i108 = icmp eq i32 %call.i.i106, -19
  %or.cond.i.i109 = or i1 %cmp.i.i107, %cmp14.not.i.i108
  br i1 %or.cond.i.i109, label %smsc95xx_write_reg_nopm.exit113, label %smsc95xx_write_reg_nopm.exit113.thread

smsc95xx_write_reg_nopm.exit113.thread:           ; preds = %do.end9.i.i110
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i111 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %27 = ptrtoint ptr %net.i.i111 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net.i.i111, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %28, ptr noundef nonnull @.str.21, i32 noundef 32, i32 noundef %call.i.i106) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i103) #11
  br label %cleanup

smsc95xx_write_reg_nopm.exit113:                  ; preds = %do.end9.i.i110
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i103) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i106)
  %cmp48 = icmp slt i32 %call.i.i106, 0
  br i1 %cmp48, label %smsc95xx_write_reg_nopm.exit113.cleanup_crit_edge, label %smsc95xx_write_reg_nopm.exit113.if.end52_crit_edge

smsc95xx_write_reg_nopm.exit113.if.end52_crit_edge: ; preds = %smsc95xx_write_reg_nopm.exit113
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

smsc95xx_write_reg_nopm.exit113.cleanup_crit_edge: ; preds = %smsc95xx_write_reg_nopm.exit113
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end52:                                         ; preds = %smsc95xx_write_reg_nopm.exit113.if.end52_crit_edge, %do.end26.if.end52_crit_edge
  %call53 = call i32 @usbnet_resume(ptr noundef %intf) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.then56, label %if.end52.if.end58_crit_edge

if.end52.if.end58_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  %net57 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %29 = ptrtoint ptr %net57 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net57, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %30, ptr noundef nonnull @.str.36) #14
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.end52.if.end58_crit_edge
  %phydev = getelementptr inbounds %struct.smsc95xx_priv, ptr %3, i32 0, i32 8
  %31 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %phydev, align 4
  %call59 = call i32 @phy_init_hw(ptr noundef %32) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %smsc95xx_write_reg_nopm.exit113.cleanup_crit_edge, %smsc95xx_write_reg_nopm.exit113.thread, %smsc95xx_read_reg_nopm.exit102.thread, %smsc95xx_write_reg_nopm.exit.cleanup_crit_edge, %smsc95xx_write_reg_nopm.exit.thread, %smsc95xx_read_reg_nopm.exit.thread
  %retval.0 = phi i32 [ %call53, %if.end58 ], [ %call.i.i87, %smsc95xx_write_reg_nopm.exit.cleanup_crit_edge ], [ %call.i.i106, %smsc95xx_write_reg_nopm.exit113.cleanup_crit_edge ], [ %call.i.i, %smsc95xx_read_reg_nopm.exit.thread ], [ %call.i.i87, %smsc95xx_write_reg_nopm.exit.thread ], [ %call.i.i94, %smsc95xx_read_reg_nopm.exit102.thread ], [ %call.i.i106, %smsc95xx_write_reg_nopm.exit113.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc95xx_reset_resume(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @smsc95xx_reset(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 @smsc95xx_resume(ptr noundef %intf)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_suspend(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc95xx_autosuspend(ptr noundef %dev, i32 noundef %link_up) unnamed_addr #2 align 64 {
entry:
  %buf.i.i53.i = alloca i32, align 4
  %buf.i.i46.i = alloca i32, align 4
  %buf.i.i34.i = alloca i32, align 4
  %buf.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %do.body1, label %if.end10

do.body1:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc95xx_autosuspend.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc95xx_autosuspend, %if.then5)) #11
          to label %do.end8 [label %if.then5], !srcloc !277

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc95xx_autosuspend.__UNIQUE_ID_ddebug380, ptr noundef %7, ptr noundef nonnull @.str.25) #11
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1
  %call9 = tail call fastcc i32 @smsc95xx_enter_suspend2(ptr noundef %dev)
  br label %cleanup

if.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %link_up)
  %tobool11.not = icmp eq i32 %link_up, 0
  br i1 %tobool11.not, label %if.then12, label %if.end44

if.then12:                                        ; preds = %if.end10
  %features = getelementptr inbounds %struct.smsc95xx_priv, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %features to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %features, align 4
  %10 = and i8 %9, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool13.not = icmp eq i8 %10, 0
  br i1 %tobool13.not, label %if.then14, label %do.body18

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %3, ptr noundef nonnull @.str.26) #14
  br label %cleanup

do.body18:                                        ; preds = %if.then12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc95xx_autosuspend.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc95xx_autosuspend, %if.then30)) #11
          to label %do.end36 [label %if.then30], !srcloc !277

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc95xx_autosuspend.__UNIQUE_ID_ddebug381, ptr noundef %12, ptr noundef nonnull @.str.27) #11
  br label %do.end36

do.end36:                                         ; preds = %if.then30, %do.body18
  %call37 = tail call fastcc i32 @smsc95xx_enable_phy_wakeup_interrupts(ptr noundef %dev, i16 noundef zeroext 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp = icmp slt i32 %call37, 0
  %13 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net, align 4
  br i1 %cmp, label %if.then39, label %if.end41

if.then39:                                        ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %14, ptr noundef nonnull @.str.4) #14
  br label %cleanup

if.end41:                                         ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %14, ptr noundef nonnull @.str.5) #14
  %call43 = tail call fastcc i32 @smsc95xx_enter_suspend1(ptr noundef %dev)
  br label %cleanup

if.end44:                                         ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc95xx_enable_phy_wakeup_interrupts.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc95xx_autosuspend, %if.then.i)) #11
          to label %do.end5.i [label %if.then.i], !srcloc !277

if.then.i:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc95xx_enable_phy_wakeup_interrupts.__UNIQUE_ID_ddebug379, ptr noundef %16, ptr noundef nonnull @.str.31) #11
  br label %do.end5.i

do.end5.i:                                        ; preds = %if.then.i, %if.end44
  %call6.i = tail call fastcc i32 @smsc95xx_mdio_read_nopm(ptr noundef %dev, i32 noundef 29) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp slt i32 %call6.i, 0
  br i1 %cmp.i, label %do.end5.i.if.then48_crit_edge, label %if.end8.i

do.end5.i.if.then48_crit_edge:                    ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then48

if.end8.i:                                        ; preds = %do.end5.i
  %call9.i = tail call fastcc i32 @smsc95xx_mdio_read_nopm(ptr noundef %dev, i32 noundef 30) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.end8.i.if.then48_crit_edge, label %do.body52

if.end8.i.if.then48_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then48

if.then48:                                        ; preds = %if.end8.i.if.then48_crit_edge, %do.end5.i.if.then48_crit_edge
  %retval.0.i95.ph = phi i32 [ %call9.i, %if.end8.i.if.then48_crit_edge ], [ %call6.i, %do.end5.i.if.then48_crit_edge ]
  %17 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %18, ptr noundef nonnull @.str.4) #14
  br label %cleanup

do.body52:                                        ; preds = %if.end8.i
  %or.i = or i32 %call9.i, 16
  tail call fastcc void @smsc95xx_mdio_write_nopm(ptr noundef %dev, i32 noundef 30, i32 noundef %or.i) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc95xx_autosuspend.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc95xx_autosuspend, %if.then64)) #11
          to label %do.end70 [label %if.then64], !srcloc !277

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc95xx_autosuspend.__UNIQUE_ID_ddebug382, ptr noundef %20, ptr noundef nonnull @.str.28) #11
  br label %do.end70

do.end70:                                         ; preds = %if.then64, %do.body52
  %21 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i) #11
  %23 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %buf.i.i.i, align 4, !annotation !272
  %tobool.not.i.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %do.end9.i.i.i, !prof !273

do.body4.i.i.i:                                   ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #11, !srcloc !274
  unreachable

do.end9.i.i.i:                                    ; preds = %do.end70
  %call.i.i.i = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 24, ptr noundef nonnull %buf.i.i.i, i16 noundef zeroext 4) #11, !callees !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then14.i.i.i, label %if.end.i

if.then14.i.i.i:                                  ; preds = %do.end9.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i.i)
  %cmp15.not.i.i.i = icmp eq i32 %call.i.i.i, -19
  br i1 %cmp15.not.i.i.i, label %if.then14.i.i.i.smsc95xx_read_reg_nopm.exit.thread.i_crit_edge, label %if.then17.i.i.i

if.then14.i.i.i.smsc95xx_read_reg_nopm.exit.thread.i_crit_edge: ; preds = %if.then14.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %smsc95xx_read_reg_nopm.exit.thread.i

if.then17.i.i.i:                                  ; preds = %if.then14.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %25, ptr noundef nonnull @.str.22, i32 noundef 24, i32 noundef %call.i.i.i) #14
  br label %smsc95xx_read_reg_nopm.exit.thread.i

smsc95xx_read_reg_nopm.exit.thread.i:             ; preds = %if.then17.i.i.i, %if.then14.i.i.i.smsc95xx_read_reg_nopm.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #11
  br label %cleanup

if.end.i:                                         ; preds = %do.end9.i.i.i
  %26 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buf.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %27)
  %tobool.not.i = icmp ult i32 %27, 65536
  br i1 %tobool.not.i, label %do.end9.i.i39.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %29, ptr noundef nonnull @.str.29) #14
  br label %cleanup

do.end9.i.i39.i:                                  ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i34.i) #11
  %30 = ptrtoint ptr %buf.i.i34.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %buf.i.i34.i, align 4, !annotation !272
  %call.i.i37.i = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 32, ptr noundef nonnull %buf.i.i34.i, i16 noundef zeroext 4) #11, !callees !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i37.i)
  %cmp.i.i38.i = icmp slt i32 %call.i.i37.i, 0
  br i1 %cmp.i.i38.i, label %if.then14.i.i41.i, label %do.end9.i.i51.i

if.then14.i.i41.i:                                ; preds = %do.end9.i.i39.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i37.i)
  %cmp15.not.i.i40.i = icmp eq i32 %call.i.i37.i, -19
  br i1 %cmp15.not.i.i40.i, label %if.then14.i.i41.i.smsc95xx_read_reg_nopm.exit45.thread.i_crit_edge, label %if.then17.i.i43.i

if.then14.i.i41.i.smsc95xx_read_reg_nopm.exit45.thread.i_crit_edge: ; preds = %if.then14.i.i41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %smsc95xx_read_reg_nopm.exit45.thread.i

if.then17.i.i43.i:                                ; preds = %if.then14.i.i41.i
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %32, ptr noundef nonnull @.str.22, i32 noundef 32, i32 noundef %call.i.i37.i) #14
  br label %smsc95xx_read_reg_nopm.exit45.thread.i

smsc95xx_read_reg_nopm.exit45.thread.i:           ; preds = %if.then17.i.i43.i, %if.then14.i.i41.i.smsc95xx_read_reg_nopm.exit45.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i34.i) #11
  br label %cleanup

do.end9.i.i51.i:                                  ; preds = %do.end9.i.i39.i
  %33 = ptrtoint ptr %buf.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %buf.i.i34.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i34.i) #11
  %35 = and i32 %34, -1929510913
  %36 = or i32 %35, 1610743808
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i46.i) #11
  %37 = ptrtoint ptr %buf.i.i46.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %buf.i.i46.i, align 4
  %call.i.i49.i = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 32, ptr noundef nonnull %buf.i.i46.i, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i49.i)
  %cmp.i.i50.i = icmp sgt i32 %call.i.i49.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i49.i)
  %cmp14.not.i.i.i = icmp eq i32 %call.i.i49.i, -19
  %or.cond.i.i.i = or i1 %cmp.i.i50.i, %cmp14.not.i.i.i
  br i1 %or.cond.i.i.i, label %smsc95xx_write_reg_nopm.exit.i, label %smsc95xx_write_reg_nopm.exit.thread.i

smsc95xx_write_reg_nopm.exit.thread.i:            ; preds = %do.end9.i.i51.i
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %39, ptr noundef nonnull @.str.21, i32 noundef 32, i32 noundef %call.i.i49.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i46.i) #11
  br label %cleanup

smsc95xx_write_reg_nopm.exit.i:                   ; preds = %do.end9.i.i51.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i46.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i49.i)
  %cmp9.i = icmp slt i32 %call.i.i49.i, 0
  br i1 %cmp9.i, label %smsc95xx_write_reg_nopm.exit.i.cleanup_crit_edge, label %do.end9.i.i60.i

smsc95xx_write_reg_nopm.exit.i.cleanup_crit_edge: ; preds = %smsc95xx_write_reg_nopm.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end9.i.i60.i:                                  ; preds = %smsc95xx_write_reg_nopm.exit.i
  %40 = or i32 %35, 1644298240
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i53.i) #11
  %41 = ptrtoint ptr %buf.i.i53.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %buf.i.i53.i, align 4
  %call.i.i56.i = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 32, ptr noundef nonnull %buf.i.i53.i, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i56.i)
  %cmp.i.i57.i = icmp sgt i32 %call.i.i56.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i56.i)
  %cmp14.not.i.i58.i = icmp eq i32 %call.i.i56.i, -19
  %or.cond.i.i59.i = or i1 %cmp.i.i57.i, %cmp14.not.i.i58.i
  br i1 %or.cond.i.i59.i, label %smsc95xx_write_reg_nopm.exit63.i, label %smsc95xx_write_reg_nopm.exit63.thread.i

smsc95xx_write_reg_nopm.exit63.thread.i:          ; preds = %do.end9.i.i60.i
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %43, ptr noundef nonnull @.str.21, i32 noundef 32, i32 noundef %call.i.i56.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i53.i) #11
  br label %cleanup

smsc95xx_write_reg_nopm.exit63.i:                 ; preds = %do.end9.i.i60.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i53.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i56.i)
  %cmp15.i = icmp slt i32 %call.i.i56.i, 0
  br i1 %cmp15.i, label %smsc95xx_write_reg_nopm.exit63.i.cleanup_crit_edge, label %if.end17.i

smsc95xx_write_reg_nopm.exit63.i.cleanup_crit_edge: ; preds = %smsc95xx_write_reg_nopm.exit63.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17.i:                                       ; preds = %smsc95xx_write_reg_nopm.exit63.i
  call void @__sanitizer_cov_trace_pc() #13
  %suspend_flags.i = getelementptr inbounds %struct.smsc95xx_priv, ptr %22, i32 0, i32 6
  %44 = ptrtoint ptr %suspend_flags.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %suspend_flags.i, align 1
  %46 = or i8 %45, 8
  store i8 %46, ptr %suspend_flags.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end17.i, %smsc95xx_write_reg_nopm.exit63.i.cleanup_crit_edge, %smsc95xx_write_reg_nopm.exit63.thread.i, %smsc95xx_write_reg_nopm.exit.i.cleanup_crit_edge, %smsc95xx_write_reg_nopm.exit.thread.i, %smsc95xx_read_reg_nopm.exit45.thread.i, %if.then1.i, %smsc95xx_read_reg_nopm.exit.thread.i, %if.then48, %if.end41, %if.then39, %if.then14, %do.end8
  %retval.0 = phi i32 [ %retval.0.i95.ph, %if.then48 ], [ %call37, %if.then39 ], [ %call43, %if.end41 ], [ -16, %if.then14 ], [ %call9, %do.end8 ], [ -16, %if.then1.i ], [ 0, %if.end17.i ], [ %call.i.i49.i, %smsc95xx_write_reg_nopm.exit.i.cleanup_crit_edge ], [ %call.i.i56.i, %smsc95xx_write_reg_nopm.exit63.i.cleanup_crit_edge ], [ %call.i.i.i, %smsc95xx_read_reg_nopm.exit.thread.i ], [ %call.i.i37.i, %smsc95xx_read_reg_nopm.exit45.thread.i ], [ %call.i.i49.i, %smsc95xx_write_reg_nopm.exit.thread.i ], [ %call.i.i56.i, %smsc95xx_write_reg_nopm.exit63.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc95xx_read_reg_nopm(ptr noundef %dev, i32 noundef %index, ptr nocapture noundef writeonly %data) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #11
  %0 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %buf.i, align 4, !annotation !272
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end9.i, !prof !273

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #11, !srcloc !274
  unreachable

do.end9.i:                                        ; preds = %entry
  %conv.i = trunc i32 %index to i16
  %call.i = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext %conv.i, ptr noundef nonnull %buf.i, i16 noundef zeroext 4) #11, !callees !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then14.i, label %if.end19.i

if.then14.i:                                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i)
  %cmp15.not.i = icmp eq i32 %call.i, -19
  br i1 %cmp15.not.i, label %if.then14.i.__smsc95xx_read_reg.exit_crit_edge, label %if.then17.i

if.then14.i.__smsc95xx_read_reg.exit_crit_edge:   ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__smsc95xx_read_reg.exit

if.then17.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #13
  %net.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %1 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %2, ptr noundef nonnull @.str.22, i32 noundef %index, i32 noundef %call.i) #14
  br label %__smsc95xx_read_reg.exit

if.end19.i:                                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %buf.i, align 4
  %5 = call i32 @llvm.bswap.i32(i32 %4) #11
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %data, align 4
  br label %__smsc95xx_read_reg.exit

__smsc95xx_read_reg.exit:                         ; preds = %if.end19.i, %if.then17.i, %if.then14.i.__smsc95xx_read_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc95xx_write_reg_nopm(ptr noundef %dev, i32 noundef %index, i32 noundef %data) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #11
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end9.i, !prof !273

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #11, !srcloc !278
  unreachable

do.end9.i:                                        ; preds = %entry
  %0 = tail call i32 @llvm.bswap.i32(i32 %data) #11
  %1 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %buf.i, align 4
  %conv.i = trunc i32 %index to i16
  %call.i = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv.i, ptr noundef nonnull %buf.i, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i)
  %cmp14.not.i = icmp eq i32 %call.i, -19
  %or.cond.i = or i1 %cmp.i, %cmp14.not.i
  br i1 %or.cond.i, label %do.end9.i.__smsc95xx_write_reg.exit_crit_edge, label %if.then16.i

do.end9.i.__smsc95xx_write_reg.exit_crit_edge:    ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__smsc95xx_write_reg.exit

if.then16.i:                                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  %net.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %3, ptr noundef nonnull @.str.21, i32 noundef %index, i32 noundef %call.i) #14
  br label %__smsc95xx_write_reg.exit

__smsc95xx_write_reg.exit:                        ; preds = %if.then16.i, %do.end9.i.__smsc95xx_write_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc95xx_enter_suspend2(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %buf.i.i14 = alloca i32, align 4
  %buf.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #11
  %2 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %buf.i.i, align 4, !annotation !272
  %tobool.not.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !273

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #11, !srcloc !274
  unreachable

do.end9.i.i:                                      ; preds = %entry
  %call.i.i = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 32, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #11, !callees !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then14.i.i, label %do.end9.i.i19

if.then14.i.i:                                    ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i)
  %cmp15.not.i.i = icmp eq i32 %call.i.i, -19
  br i1 %cmp15.not.i.i, label %if.then14.i.i.smsc95xx_read_reg_nopm.exit.thread_crit_edge, label %if.then17.i.i

if.then14.i.i.smsc95xx_read_reg_nopm.exit.thread_crit_edge: ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %smsc95xx_read_reg_nopm.exit.thread

if.then17.i.i:                                    ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %3 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %4, ptr noundef nonnull @.str.22, i32 noundef 32, i32 noundef %call.i.i) #14
  br label %smsc95xx_read_reg_nopm.exit.thread

smsc95xx_read_reg_nopm.exit.thread:               ; preds = %if.then17.i.i, %if.then14.i.i.smsc95xx_read_reg_nopm.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #11
  br label %cleanup

do.end9.i.i19:                                    ; preds = %do.end9.i.i
  %5 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %buf.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #11
  %7 = and i32 %6, -1929379841
  %8 = or i32 %7, 1073741824
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i14) #11
  %9 = ptrtoint ptr %buf.i.i14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %buf.i.i14, align 4
  %call.i.i17 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 32, ptr noundef nonnull %buf.i.i14, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i17)
  %cmp.i.i18 = icmp sgt i32 %call.i.i17, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i17)
  %cmp14.not.i.i = icmp eq i32 %call.i.i17, -19
  %or.cond.i.i = or i1 %cmp.i.i18, %cmp14.not.i.i
  br i1 %or.cond.i.i, label %smsc95xx_write_reg_nopm.exit, label %smsc95xx_write_reg_nopm.exit.thread

smsc95xx_write_reg_nopm.exit.thread:              ; preds = %do.end9.i.i19
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i20 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %10 = ptrtoint ptr %net.i.i20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net.i.i20, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %11, ptr noundef nonnull @.str.21, i32 noundef 32, i32 noundef %call.i.i17) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i14) #11
  br label %cleanup

smsc95xx_write_reg_nopm.exit:                     ; preds = %do.end9.i.i19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i17)
  %cmp2 = icmp slt i32 %call.i.i17, 0
  br i1 %cmp2, label %smsc95xx_write_reg_nopm.exit.cleanup_crit_edge, label %if.end4

smsc95xx_write_reg_nopm.exit.cleanup_crit_edge:   ; preds = %smsc95xx_write_reg_nopm.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %smsc95xx_write_reg_nopm.exit
  call void @__sanitizer_cov_trace_pc() #13
  %suspend_flags = getelementptr inbounds %struct.smsc95xx_priv, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %suspend_flags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %suspend_flags, align 1
  %14 = or i8 %13, 4
  store i8 %14, ptr %suspend_flags, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %smsc95xx_write_reg_nopm.exit.cleanup_crit_edge, %smsc95xx_write_reg_nopm.exit.thread, %smsc95xx_read_reg_nopm.exit.thread
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call.i.i17, %smsc95xx_write_reg_nopm.exit.cleanup_crit_edge ], [ %call.i.i, %smsc95xx_read_reg_nopm.exit.thread ], [ %call.i.i17, %smsc95xx_write_reg_nopm.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc95xx_enable_phy_wakeup_interrupts(ptr noundef %dev, i16 noundef zeroext %mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc95xx_enable_phy_wakeup_interrupts.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc95xx_enable_phy_wakeup_interrupts, %if.then)) #11
          to label %do.end5 [label %if.then], !srcloc !277

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc95xx_enable_phy_wakeup_interrupts.__UNIQUE_ID_ddebug379, ptr noundef %1, ptr noundef nonnull @.str.31) #11
  br label %do.end5

do.end5:                                          ; preds = %if.then, %entry
  %call6 = tail call fastcc i32 @smsc95xx_mdio_read_nopm(ptr noundef %dev, i32 noundef 29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end5.cleanup_crit_edge, label %if.end8

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %do.end5
  %call9 = tail call fastcc i32 @smsc95xx_mdio_read_nopm(ptr noundef %dev, i32 noundef 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i16 %mask to i32
  %or = or i32 %call9, %conv
  tail call fastcc void @smsc95xx_mdio_write_nopm(ptr noundef %dev, i32 noundef 30, i32 noundef %or)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end8.cleanup_crit_edge, %do.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ %call6, %do.end5.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc95xx_enter_suspend1(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %buf.i.i51 = alloca i32, align 4
  %buf.i.i44 = alloca i32, align 4
  %buf.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %features = getelementptr inbounds %struct.smsc95xx_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %features to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %features, align 4
  %4 = and i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @smsc95xx_mdio_write_nopm(ptr noundef %dev, i32 noundef 16, i32 noundef 45056)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call fastcc i32 @smsc95xx_mdio_read_nopm(ptr noundef %dev, i32 noundef 17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %or = or i32 %call, 8192
  tail call fastcc void @smsc95xx_mdio_write_nopm(ptr noundef %dev, i32 noundef 17, i32 noundef %or)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #11
  %5 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %buf.i.i, align 4, !annotation !272
  %tobool.not.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !273

do.body4.i.i:                                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #11, !srcloc !274
  unreachable

do.end9.i.i:                                      ; preds = %if.end3
  %call.i.i = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 32, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #11, !callees !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then14.i.i, label %do.end9.i.i49

if.then14.i.i:                                    ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i)
  %cmp15.not.i.i = icmp eq i32 %call.i.i, -19
  br i1 %cmp15.not.i.i, label %if.then14.i.i.smsc95xx_read_reg_nopm.exit.thread_crit_edge, label %if.then17.i.i

if.then14.i.i.smsc95xx_read_reg_nopm.exit.thread_crit_edge: ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %smsc95xx_read_reg_nopm.exit.thread

if.then17.i.i:                                    ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %6 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %7, ptr noundef nonnull @.str.22, i32 noundef 32, i32 noundef %call.i.i) #14
  br label %smsc95xx_read_reg_nopm.exit.thread

smsc95xx_read_reg_nopm.exit.thread:               ; preds = %if.then17.i.i, %if.then14.i.i.smsc95xx_read_reg_nopm.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #11
  br label %cleanup

do.end9.i.i49:                                    ; preds = %do.end9.i.i
  %8 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buf.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #11
  %10 = and i32 %9, -1929379841
  %11 = or i32 %10, 536870912
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i44) #11
  %12 = ptrtoint ptr %buf.i.i44 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %buf.i.i44, align 4
  %call.i.i47 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 32, ptr noundef nonnull %buf.i.i44, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i47)
  %cmp.i.i48 = icmp sgt i32 %call.i.i47, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i47)
  %cmp14.not.i.i = icmp eq i32 %call.i.i47, -19
  %or.cond.i.i = or i1 %cmp.i.i48, %cmp14.not.i.i
  br i1 %or.cond.i.i, label %smsc95xx_write_reg_nopm.exit, label %smsc95xx_write_reg_nopm.exit.thread

smsc95xx_write_reg_nopm.exit.thread:              ; preds = %do.end9.i.i49
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i50 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %13 = ptrtoint ptr %net.i.i50 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net.i.i50, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %14, ptr noundef nonnull @.str.21, i32 noundef 32, i32 noundef %call.i.i47) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i44) #11
  br label %cleanup

smsc95xx_write_reg_nopm.exit:                     ; preds = %do.end9.i.i49
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i44) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i47)
  %cmp12 = icmp slt i32 %call.i.i47, 0
  br i1 %cmp12, label %smsc95xx_write_reg_nopm.exit.cleanup_crit_edge, label %do.end9.i.i58

smsc95xx_write_reg_nopm.exit.cleanup_crit_edge:   ; preds = %smsc95xx_write_reg_nopm.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end9.i.i58:                                    ; preds = %smsc95xx_write_reg_nopm.exit
  %15 = or i32 %10, 620756992
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i51) #11
  %16 = ptrtoint ptr %buf.i.i51 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %buf.i.i51, align 4
  %call.i.i54 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 32, ptr noundef nonnull %buf.i.i51, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i54)
  %cmp.i.i55 = icmp sgt i32 %call.i.i54, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i54)
  %cmp14.not.i.i56 = icmp eq i32 %call.i.i54, -19
  %or.cond.i.i57 = or i1 %cmp.i.i55, %cmp14.not.i.i56
  br i1 %or.cond.i.i57, label %smsc95xx_write_reg_nopm.exit61, label %smsc95xx_write_reg_nopm.exit61.thread

smsc95xx_write_reg_nopm.exit61.thread:            ; preds = %do.end9.i.i58
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i59 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %17 = ptrtoint ptr %net.i.i59 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net.i.i59, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %18, ptr noundef nonnull @.str.21, i32 noundef 32, i32 noundef %call.i.i54) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i51) #11
  br label %cleanup

smsc95xx_write_reg_nopm.exit61:                   ; preds = %do.end9.i.i58
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i51) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i54)
  %cmp19 = icmp slt i32 %call.i.i54, 0
  br i1 %cmp19, label %smsc95xx_write_reg_nopm.exit61.cleanup_crit_edge, label %if.end22

smsc95xx_write_reg_nopm.exit61.cleanup_crit_edge: ; preds = %smsc95xx_write_reg_nopm.exit61
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22:                                         ; preds = %smsc95xx_write_reg_nopm.exit61
  call void @__sanitizer_cov_trace_pc() #13
  %suspend_flags = getelementptr inbounds %struct.smsc95xx_priv, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %suspend_flags to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %suspend_flags, align 1
  %21 = or i8 %20, 2
  store i8 %21, ptr %suspend_flags, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %smsc95xx_write_reg_nopm.exit61.cleanup_crit_edge, %smsc95xx_write_reg_nopm.exit61.thread, %smsc95xx_write_reg_nopm.exit.cleanup_crit_edge, %smsc95xx_write_reg_nopm.exit.thread, %smsc95xx_read_reg_nopm.exit.thread, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ %call, %if.end.cleanup_crit_edge ], [ %call.i.i47, %smsc95xx_write_reg_nopm.exit.cleanup_crit_edge ], [ %call.i.i54, %smsc95xx_write_reg_nopm.exit61.cleanup_crit_edge ], [ %call.i.i, %smsc95xx_read_reg_nopm.exit.thread ], [ %call.i.i47, %smsc95xx_write_reg_nopm.exit.thread ], [ %call.i.i54, %smsc95xx_write_reg_nopm.exit61.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc95xx_start_rx_path(ptr noundef %dev, i32 noundef %in_pm) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %mac_cr_lock = getelementptr inbounds %struct.smsc95xx_priv, ptr %1, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mac_cr_lock) #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %or = or i32 %3, 4
  store i32 %or, ptr %1, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mac_cr_lock, i32 noundef %call2) #11
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #11
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end9.i, !prof !273

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #11, !srcloc !278
  unreachable

do.end9.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_pm)
  %tobool10.not.i = icmp eq i32 %in_pm, 0
  %usbnet_write_cmd.usbnet_write_cmd_nopm.i = select i1 %tobool10.not.i, ptr @usbnet_write_cmd, ptr @usbnet_write_cmd_nopm
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #11
  %7 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %buf.i, align 4
  %call.i = call i32 %usbnet_write_cmd.usbnet_write_cmd_nopm.i(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 256, ptr noundef nonnull %buf.i, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i)
  %cmp14.not.i = icmp eq i32 %call.i, -19
  %or.cond.i = or i1 %cmp.i, %cmp14.not.i
  br i1 %or.cond.i, label %do.end9.i.__smsc95xx_write_reg.exit_crit_edge, label %if.then16.i

do.end9.i.__smsc95xx_write_reg.exit_crit_edge:    ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__smsc95xx_write_reg.exit

if.then16.i:                                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  %net.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %8 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %9, ptr noundef nonnull @.str.21, i32 noundef 256, i32 noundef %call.i) #14
  br label %__smsc95xx_write_reg.exit

__smsc95xx_write_reg.exit:                        ; preds = %if.then16.i, %do.end9.i.__smsc95xx_write_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc95xx_enter_suspend0(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %buf.i.i53 = alloca i32, align 4
  %buf.i.i42 = alloca i32, align 4
  %buf.i.i35 = alloca i32, align 4
  %buf.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #11
  %2 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %buf.i.i, align 4, !annotation !272
  %tobool.not.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !273

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #11, !srcloc !274
  unreachable

do.end9.i.i:                                      ; preds = %entry
  %call.i.i = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 32, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #11, !callees !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then14.i.i, label %do.end9.i.i40

if.then14.i.i:                                    ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i)
  %cmp15.not.i.i = icmp eq i32 %call.i.i, -19
  br i1 %cmp15.not.i.i, label %if.then14.i.i.smsc95xx_read_reg_nopm.exit.thread_crit_edge, label %if.then17.i.i

if.then14.i.i.smsc95xx_read_reg_nopm.exit.thread_crit_edge: ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %smsc95xx_read_reg_nopm.exit.thread

if.then17.i.i:                                    ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %3 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %4, ptr noundef nonnull @.str.22, i32 noundef 32, i32 noundef %call.i.i) #14
  br label %smsc95xx_read_reg_nopm.exit.thread

smsc95xx_read_reg_nopm.exit.thread:               ; preds = %if.then17.i.i, %if.then14.i.i.smsc95xx_read_reg_nopm.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #11
  br label %cleanup

do.end9.i.i40:                                    ; preds = %do.end9.i.i
  %5 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %buf.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #11
  %7 = and i32 %6, -1929379841
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i35) #11
  %8 = ptrtoint ptr %buf.i.i35 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %buf.i.i35, align 4
  %call.i.i38 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 32, ptr noundef nonnull %buf.i.i35, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i38)
  %cmp.i.i39 = icmp sgt i32 %call.i.i38, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i38)
  %cmp14.not.i.i = icmp eq i32 %call.i.i38, -19
  %or.cond.i.i = or i1 %cmp.i.i39, %cmp14.not.i.i
  br i1 %or.cond.i.i, label %smsc95xx_write_reg_nopm.exit, label %smsc95xx_write_reg_nopm.exit.thread

smsc95xx_write_reg_nopm.exit.thread:              ; preds = %do.end9.i.i40
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i41 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %9 = ptrtoint ptr %net.i.i41 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net.i.i41, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %10, ptr noundef nonnull @.str.21, i32 noundef 32, i32 noundef %call.i.i38) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i35) #11
  br label %cleanup

smsc95xx_write_reg_nopm.exit:                     ; preds = %do.end9.i.i40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i35) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i38)
  %cmp2 = icmp slt i32 %call.i.i38, 0
  br i1 %cmp2, label %smsc95xx_write_reg_nopm.exit.cleanup_crit_edge, label %if.end4

smsc95xx_write_reg_nopm.exit.cleanup_crit_edge:   ; preds = %smsc95xx_write_reg_nopm.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %smsc95xx_write_reg_nopm.exit
  %wolopts = getelementptr inbounds %struct.smsc95xx_priv, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wolopts, align 4
  %and7 = and i32 %12, 1
  %13 = or i32 %7, 33554432
  %14 = call i32 @llvm.bswap.i32(i32 %13)
  %spec.select = or i32 %14, %and7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i42) #11
  %15 = call i32 @llvm.bswap.i32(i32 %spec.select) #11
  %16 = ptrtoint ptr %buf.i.i42 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %buf.i.i42, align 4
  %call.i.i45 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 32, ptr noundef nonnull %buf.i.i42, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i45)
  %cmp.i.i46 = icmp sgt i32 %call.i.i45, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i45)
  %cmp14.not.i.i47 = icmp eq i32 %call.i.i45, -19
  %or.cond.i.i48 = or i1 %cmp.i.i46, %cmp14.not.i.i47
  br i1 %or.cond.i.i48, label %smsc95xx_write_reg_nopm.exit52, label %smsc95xx_write_reg_nopm.exit52.thread

smsc95xx_write_reg_nopm.exit52.thread:            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i50 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %17 = ptrtoint ptr %net.i.i50 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net.i.i50, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %18, ptr noundef nonnull @.str.21, i32 noundef 32, i32 noundef %call.i.i45) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i42) #11
  br label %cleanup

smsc95xx_write_reg_nopm.exit52:                   ; preds = %if.end4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i42) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i45)
  %cmp12 = icmp slt i32 %call.i.i45, 0
  br i1 %cmp12, label %smsc95xx_write_reg_nopm.exit52.cleanup_crit_edge, label %do.end9.i.i58

smsc95xx_write_reg_nopm.exit52.cleanup_crit_edge: ; preds = %smsc95xx_write_reg_nopm.exit52
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end9.i.i58:                                    ; preds = %smsc95xx_write_reg_nopm.exit52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i53) #11
  %19 = ptrtoint ptr %buf.i.i53 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %buf.i.i53, align 4, !annotation !272
  %call.i.i56 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 32, ptr noundef nonnull %buf.i.i53, i16 noundef zeroext 4) #11, !callees !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i56)
  %cmp.i.i57 = icmp slt i32 %call.i.i56, 0
  br i1 %cmp.i.i57, label %if.then14.i.i60, label %if.end18

if.then14.i.i60:                                  ; preds = %do.end9.i.i58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i56)
  %cmp15.not.i.i59 = icmp eq i32 %call.i.i56, -19
  br i1 %cmp15.not.i.i59, label %if.then14.i.i60.smsc95xx_read_reg_nopm.exit64.thread_crit_edge, label %if.then17.i.i62

if.then14.i.i60.smsc95xx_read_reg_nopm.exit64.thread_crit_edge: ; preds = %if.then14.i.i60
  call void @__sanitizer_cov_trace_pc() #13
  br label %smsc95xx_read_reg_nopm.exit64.thread

if.then17.i.i62:                                  ; preds = %if.then14.i.i60
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i61 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %20 = ptrtoint ptr %net.i.i61 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net.i.i61, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %21, ptr noundef nonnull @.str.22, i32 noundef 32, i32 noundef %call.i.i56) #14
  br label %smsc95xx_read_reg_nopm.exit64.thread

smsc95xx_read_reg_nopm.exit64.thread:             ; preds = %if.then17.i.i62, %if.then14.i.i60.smsc95xx_read_reg_nopm.exit64.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i53) #11
  br label %cleanup

if.end18:                                         ; preds = %do.end9.i.i58
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i53) #11
  %suspend_flags = getelementptr inbounds %struct.smsc95xx_priv, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %suspend_flags to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %suspend_flags, align 1
  %24 = or i8 %23, 1
  store i8 %24, ptr %suspend_flags, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %smsc95xx_read_reg_nopm.exit64.thread, %smsc95xx_write_reg_nopm.exit52.cleanup_crit_edge, %smsc95xx_write_reg_nopm.exit52.thread, %smsc95xx_write_reg_nopm.exit.cleanup_crit_edge, %smsc95xx_write_reg_nopm.exit.thread, %smsc95xx_read_reg_nopm.exit.thread
  %retval.0 = phi i32 [ 0, %if.end18 ], [ %call.i.i38, %smsc95xx_write_reg_nopm.exit.cleanup_crit_edge ], [ %call.i.i45, %smsc95xx_write_reg_nopm.exit52.cleanup_crit_edge ], [ %call.i.i, %smsc95xx_read_reg_nopm.exit.thread ], [ %call.i.i38, %smsc95xx_write_reg_nopm.exit.thread ], [ %call.i.i45, %smsc95xx_write_reg_nopm.exit52.thread ], [ %call.i.i56, %smsc95xx_read_reg_nopm.exit64.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc95xx_mdio_read_nopm(ptr noundef %dev, i32 noundef %idx) unnamed_addr #2 align 64 {
entry:
  %buf.i74.i = alloca i32, align 4
  %buf.i.i52.i = alloca i32, align 4
  %buf.i.i = alloca i32, align 4
  %buf.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %phydev = getelementptr inbounds %struct.smsc95xx_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 4
  %addr = getelementptr inbounds %struct.mdio_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr, align 8
  %phy_mutex.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %phy_mutex.i, i32 noundef 0) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %tobool.not.i.i.i = icmp eq ptr %dev, null
  %add.i.i = add i32 %6, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i) #11
  %7 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %buf.i.i.i, align 4, !annotation !272
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %do.end9.i.i.preheader.i, !prof !273

do.end9.i.i.preheader.i:                          ; preds = %entry
  %call.i.i101.i = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 276, ptr noundef nonnull %buf.i.i.i, i16 noundef zeroext 4) #11, !callees !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i101.i)
  %cmp.i.i102.i = icmp slt i32 %call.i.i101.i, 0
  br i1 %cmp.i.i102.i, label %do.end9.i.i.preheader.i.if.then14.i.i.i_crit_edge, label %do.end9.i.i.preheader.i.if.end3.i.i_crit_edge

do.end9.i.i.preheader.i.if.end3.i.i_crit_edge:    ; preds = %do.end9.i.i.preheader.i
  br label %if.end3.i.i

do.end9.i.i.preheader.i.if.then14.i.i.i_crit_edge: ; preds = %do.end9.i.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14.i.i.i

do.body4.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #11, !srcloc !274
  unreachable

do.end9.i.critedge.i.i:                           ; preds = %do.cond.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i) #11
  %8 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %buf.i.i.i, align 4, !annotation !272
  %call.i.i.i = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 276, ptr noundef nonnull %buf.i.i.i, i16 noundef zeroext 4) #11, !callees !275
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end9.i.critedge.i.i.if.then14.i.i.i_crit_edge, label %do.end9.i.critedge.i.i.if.end3.i.i_crit_edge

do.end9.i.critedge.i.i.if.end3.i.i_crit_edge:     ; preds = %do.end9.i.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i.i

do.end9.i.critedge.i.i.if.then14.i.i.i_crit_edge: ; preds = %do.end9.i.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14.i.i.i

if.then14.i.i.i:                                  ; preds = %do.end9.i.critedge.i.i.if.then14.i.i.i_crit_edge, %do.end9.i.i.preheader.i.if.then14.i.i.i_crit_edge
  %call.i.i.lcssa.i = phi i32 [ %call.i.i101.i, %do.end9.i.i.preheader.i.if.then14.i.i.i_crit_edge ], [ %call.i.i.i, %do.end9.i.critedge.i.i.if.then14.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i.lcssa.i)
  %cmp15.not.i.i.i = icmp eq i32 %call.i.i.lcssa.i, -19
  br i1 %cmp15.not.i.i.i, label %if.then.thread.i.i, label %if.end.i.i

if.then.thread.i.i:                               ; preds = %if.then14.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #11
  br label %do.end9.i.i

if.end.i.i:                                       ; preds = %if.then14.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %9 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %10, ptr noundef nonnull @.str.22, i32 noundef 276, i32 noundef %call.i.i.lcssa.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #11
  %11 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %12, ptr noundef nonnull @.str.20) #14
  br label %if.then.i

if.end3.i.i:                                      ; preds = %do.end9.i.critedge.i.i.if.end3.i.i_crit_edge, %do.end9.i.i.preheader.i.if.end3.i.i_crit_edge
  %13 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buf.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #11
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i, label %if.end3.i.i.do.end9.i.i_crit_edge, label %do.cond.i.i

if.end3.i.i.do.end9.i.i_crit_edge:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i.i

do.cond.i.i:                                      ; preds = %if.end3.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i)
  %cmp6.i.i = icmp sgt i32 %sub.i.i, -1
  br i1 %cmp6.i.i, label %do.end9.i.critedge.i.i, label %do.cond.i.i.if.then.i_crit_edge

do.cond.i.i.if.then.i_crit_edge:                  ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %do.cond.i.i.if.then.i_crit_edge, %if.end.i.i
  %retval.0.i.ph.i = phi i32 [ %call.i.i.lcssa.i, %if.end.i.i ], [ -5, %do.cond.i.i.if.then.i_crit_edge ]
  %net.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %17 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %18, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.__smsc95xx_mdio_read) #14
  br label %done.i

do.end9.i.i:                                      ; preds = %if.end3.i.i.do.end9.i.i_crit_edge, %if.then.thread.i.i
  %and.i.i = shl i32 %5, 11
  %shl.i.i = and i32 %and.i.i, 63488
  %and1.i.i = shl i32 %idx, 6
  %shl2.i.i = and i32 %and1.i.i, 1984
  %or.i.i = or i32 %shl2.i.i, %shl.i.i
  %or3.i.i = or i32 %or.i.i, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #11
  %19 = call i32 @llvm.bswap.i32(i32 %or3.i.i) #11
  %20 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %buf.i.i, align 4
  %call.i.i = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 276, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i)
  %cmp14.not.i.i = icmp eq i32 %call.i.i, -19
  %or.cond.i.i = or i1 %cmp.i.i, %cmp14.not.i.i
  br i1 %or.cond.i.i, label %__smsc95xx_write_reg.exit.i, label %__smsc95xx_write_reg.exit.thread.i

__smsc95xx_write_reg.exit.thread.i:               ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %21 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %22, ptr noundef nonnull @.str.21, i32 noundef 276, i32 noundef %call.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #11
  br label %if.then4.i

__smsc95xx_write_reg.exit.i:                      ; preds = %do.end9.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i, label %__smsc95xx_write_reg.exit.i.if.then4.i_crit_edge, label %if.end9.i

__smsc95xx_write_reg.exit.i.if.then4.i_crit_edge: ; preds = %__smsc95xx_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4.i

if.then4.i:                                       ; preds = %__smsc95xx_write_reg.exit.i.if.then4.i_crit_edge, %__smsc95xx_write_reg.exit.thread.i
  br i1 %cmp14.not.i.i, label %if.then4.i.done.thread.i_crit_edge, label %if.then6.i

if.then4.i.done.thread.i_crit_edge:               ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %done.thread.i

if.then6.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  %net7.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %23 = ptrtoint ptr %net7.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %net7.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %24, ptr noundef nonnull @.str.17) #14
  br label %done.i

if.end9.i:                                        ; preds = %__smsc95xx_write_reg.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %add.i56.i = add i32 %25, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i52.i) #11
  %26 = ptrtoint ptr %buf.i.i52.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %buf.i.i52.i, align 4
  %call.i.i59103.i = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 276, ptr noundef nonnull %buf.i.i52.i, i16 noundef zeroext 4) #11, !callees !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i59103.i)
  %cmp.i.i60104.i = icmp slt i32 %call.i.i59103.i, 0
  br i1 %cmp.i.i60104.i, label %if.end9.i.if.then14.i.i63.i_crit_edge, label %if.end9.i.if.end3.i68.i_crit_edge

if.end9.i.if.end3.i68.i_crit_edge:                ; preds = %if.end9.i
  br label %if.end3.i68.i

if.end9.i.if.then14.i.i63.i_crit_edge:            ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14.i.i63.i

do.end9.i.critedge.i58.i:                         ; preds = %do.cond.i71.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i52.i) #11
  %27 = ptrtoint ptr %buf.i.i52.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %buf.i.i52.i, align 4
  %call.i.i59.i = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 276, ptr noundef nonnull %buf.i.i52.i, i16 noundef zeroext 4) #11, !callees !275
  %cmp.i.i60.i = icmp slt i32 %call.i.i59.i, 0
  br i1 %cmp.i.i60.i, label %do.end9.i.critedge.i58.i.if.then14.i.i63.i_crit_edge, label %do.end9.i.critedge.i58.i.if.end3.i68.i_crit_edge

do.end9.i.critedge.i58.i.if.end3.i68.i_crit_edge: ; preds = %do.end9.i.critedge.i58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i68.i

do.end9.i.critedge.i58.i.if.then14.i.i63.i_crit_edge: ; preds = %do.end9.i.critedge.i58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14.i.i63.i

if.then14.i.i63.i:                                ; preds = %do.end9.i.critedge.i58.i.if.then14.i.i63.i_crit_edge, %if.end9.i.if.then14.i.i63.i_crit_edge
  %call.i.i59.lcssa.i = phi i32 [ %call.i.i59103.i, %if.end9.i.if.then14.i.i63.i_crit_edge ], [ %call.i.i59.i, %do.end9.i.critedge.i58.i.if.then14.i.i63.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i59.lcssa.i)
  %cmp15.not.i.i62.i = icmp eq i32 %call.i.i59.lcssa.i, -19
  br i1 %cmp15.not.i.i62.i, label %if.then.thread.i64.i, label %if.end.i66.i

if.then.thread.i64.i:                             ; preds = %if.then14.i.i63.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i52.i) #11
  br label %do.end9.i80.i

if.end.i66.i:                                     ; preds = %if.then14.i.i63.i
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i65.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %28 = ptrtoint ptr %net.i.i65.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %net.i.i65.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %29, ptr noundef nonnull @.str.22, i32 noundef 276, i32 noundef %call.i.i59.lcssa.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i52.i) #11
  %30 = ptrtoint ptr %net.i.i65.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %net.i.i65.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %31, ptr noundef nonnull @.str.20) #14
  br label %if.then12.i

if.end3.i68.i:                                    ; preds = %do.end9.i.critedge.i58.i.if.end3.i68.i_crit_edge, %if.end9.i.if.end3.i68.i_crit_edge
  %32 = ptrtoint ptr %buf.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf.i.i52.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i52.i) #11
  %34 = and i32 %33, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i67.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i67.i, label %if.end3.i68.i.do.end9.i80.i_crit_edge, label %do.cond.i71.i

if.end3.i68.i.do.end9.i80.i_crit_edge:            ; preds = %if.end3.i68.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i80.i

do.cond.i71.i:                                    ; preds = %if.end3.i68.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %sub.i69.i = sub i32 %add.i56.i, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i69.i)
  %cmp6.i70.i = icmp sgt i32 %sub.i69.i, -1
  br i1 %cmp6.i70.i, label %do.end9.i.critedge.i58.i, label %do.cond.i71.i.if.then12.i_crit_edge

do.cond.i71.i.if.then12.i_crit_edge:              ; preds = %do.cond.i71.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12.i

if.then12.i:                                      ; preds = %do.cond.i71.i.if.then12.i_crit_edge, %if.end.i66.i
  %retval.0.i72.ph.i = phi i32 [ %call.i.i59.lcssa.i, %if.end.i66.i ], [ -5, %do.cond.i71.i.if.then12.i_crit_edge ]
  %net13.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %36 = ptrtoint ptr %net13.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %net13.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %37, ptr noundef nonnull @.str.18, i32 noundef %idx) #14
  br label %done.i

do.end9.i80.i:                                    ; preds = %if.end3.i68.i.do.end9.i80.i_crit_edge, %if.then.thread.i64.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i74.i) #11
  %38 = ptrtoint ptr %buf.i74.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %buf.i74.i, align 4, !annotation !272
  %call.i78.i = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 280, ptr noundef nonnull %buf.i74.i, i16 noundef zeroext 4) #11, !callees !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78.i)
  %cmp.i79.i = icmp slt i32 %call.i78.i, 0
  br i1 %cmp.i79.i, label %if.then14.i.i, label %done.thread93.i

if.then14.i.i:                                    ; preds = %do.end9.i80.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i78.i)
  %cmp15.not.i.i = icmp eq i32 %call.i78.i, -19
  br i1 %cmp15.not.i.i, label %if.then17.thread.i, label %if.then19.i

if.then17.thread.i:                               ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i74.i) #11
  br label %done.thread.i

if.then19.i:                                      ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net.i81.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %39 = ptrtoint ptr %net.i81.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %net.i81.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %40, ptr noundef nonnull @.str.22, i32 noundef 280, i32 noundef %call.i78.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i74.i) #11
  %41 = ptrtoint ptr %net.i81.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %net.i81.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %42, ptr noundef nonnull @.str.19) #14
  br label %done.i

done.thread93.i:                                  ; preds = %do.end9.i80.i
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %buf.i74.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %buf.i74.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i74.i) #11
  %45 = and i32 %44, -65536
  %46 = call i32 @llvm.bswap.i32(i32 %45) #11
  call void @mutex_unlock(ptr noundef %phy_mutex.i) #11
  br label %__smsc95xx_mdio_read.exit

done.thread.i:                                    ; preds = %if.then17.thread.i, %if.then4.i.done.thread.i_crit_edge
  call void @mutex_unlock(ptr noundef %phy_mutex.i) #11
  br label %47

done.i:                                           ; preds = %if.then19.i, %if.then12.i, %if.then6.i, %if.then.i
  %ret.0.i = phi i32 [ %retval.0.i.ph.i, %if.then.i ], [ %call.i.i, %if.then6.i ], [ %retval.0.i72.ph.i, %if.then12.i ], [ %call.i78.i, %if.then19.i ]
  call void @mutex_unlock(ptr noundef %phy_mutex.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %ret.0.i)
  %cmp25.i = icmp eq i32 %ret.0.i, -19
  br i1 %cmp25.i, label %done.i._crit_edge, label %done.i.__smsc95xx_mdio_read.exit_crit_edge

done.i.__smsc95xx_mdio_read.exit_crit_edge:       ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__smsc95xx_mdio_read.exit

done.i._crit_edge:                                ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %47

47:                                               ; preds = %done.i._crit_edge, %done.thread.i
  br label %__smsc95xx_mdio_read.exit

__smsc95xx_mdio_read.exit:                        ; preds = %47, %done.i.__smsc95xx_mdio_read.exit_crit_edge, %done.thread93.i
  %48 = phi i32 [ 0, %47 ], [ %ret.0.i, %done.i.__smsc95xx_mdio_read.exit_crit_edge ], [ %46, %done.thread93.i ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_write_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_write_cmd_nopm(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_read_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_read_cmd_nopm(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smsc95xx_mdio_write_nopm(ptr noundef %dev, i32 noundef %idx, i32 noundef %regval) unnamed_addr #2 align 64 {
entry:
  %buf.i.i56.i = alloca i32, align 4
  %buf.i43.i = alloca i32, align 4
  %buf.i.i = alloca i32, align 4
  %buf.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %phydev = getelementptr inbounds %struct.smsc95xx_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 4
  %addr = getelementptr inbounds %struct.mdio_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr, align 8
  %phy_mutex.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %phy_mutex.i, i32 noundef 0) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %tobool.not.i.i.i = icmp eq ptr %dev, null
  %add.i.i = add i32 %6, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i) #11
  %7 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %buf.i.i.i, align 4, !annotation !272
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %do.end9.i.i.preheader.i, !prof !273

do.end9.i.i.preheader.i:                          ; preds = %entry
  %call.i.i89.i = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 276, ptr noundef nonnull %buf.i.i.i, i16 noundef zeroext 4) #11, !callees !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i89.i)
  %cmp.i.i90.i = icmp slt i32 %call.i.i89.i, 0
  br i1 %cmp.i.i90.i, label %do.end9.i.i.preheader.i.if.then14.i.i.i_crit_edge, label %do.end9.i.i.preheader.i.if.end3.i.i_crit_edge

do.end9.i.i.preheader.i.if.end3.i.i_crit_edge:    ; preds = %do.end9.i.i.preheader.i
  br label %if.end3.i.i

do.end9.i.i.preheader.i.if.then14.i.i.i_crit_edge: ; preds = %do.end9.i.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14.i.i.i

do.body4.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #11, !srcloc !274
  unreachable

do.end9.i.critedge.i.i:                           ; preds = %do.cond.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i) #11
  %8 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %buf.i.i.i, align 4, !annotation !272
  %call.i.i.i = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 276, ptr noundef nonnull %buf.i.i.i, i16 noundef zeroext 4) #11, !callees !275
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end9.i.critedge.i.i.if.then14.i.i.i_crit_edge, label %do.end9.i.critedge.i.i.if.end3.i.i_crit_edge

do.end9.i.critedge.i.i.if.end3.i.i_crit_edge:     ; preds = %do.end9.i.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i.i

do.end9.i.critedge.i.i.if.then14.i.i.i_crit_edge: ; preds = %do.end9.i.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14.i.i.i

if.then14.i.i.i:                                  ; preds = %do.end9.i.critedge.i.i.if.then14.i.i.i_crit_edge, %do.end9.i.i.preheader.i.if.then14.i.i.i_crit_edge
  %call.i.i.lcssa.i = phi i32 [ %call.i.i89.i, %do.end9.i.i.preheader.i.if.then14.i.i.i_crit_edge ], [ %call.i.i.i, %do.end9.i.critedge.i.i.if.then14.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i.lcssa.i)
  %cmp15.not.i.i.i = icmp eq i32 %call.i.i.lcssa.i, -19
  br i1 %cmp15.not.i.i.i, label %if.then.thread.i.i, label %if.end.i.i

if.then.thread.i.i:                               ; preds = %if.then14.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #11
  br label %do.end9.i.i

if.end.i.i:                                       ; preds = %if.then14.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %9 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %10, ptr noundef nonnull @.str.22, i32 noundef 276, i32 noundef %call.i.i.lcssa.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #11
  %11 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %12, ptr noundef nonnull @.str.20) #14
  br label %if.then.i

if.end3.i.i:                                      ; preds = %do.end9.i.critedge.i.i.if.end3.i.i_crit_edge, %do.end9.i.i.preheader.i.if.end3.i.i_crit_edge
  %13 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buf.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #11
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i, label %if.end3.i.i.do.end9.i.i_crit_edge, label %do.cond.i.i

if.end3.i.i.do.end9.i.i_crit_edge:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i.i

do.cond.i.i:                                      ; preds = %if.end3.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i)
  %cmp6.i.i = icmp sgt i32 %sub.i.i, -1
  br i1 %cmp6.i.i, label %do.end9.i.critedge.i.i, label %do.cond.i.i.if.then.i_crit_edge

do.cond.i.i.if.then.i_crit_edge:                  ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %do.cond.i.i.if.then.i_crit_edge, %if.end.i.i
  %net.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %17 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %18, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.__smsc95xx_mdio_write) #14
  br label %__smsc95xx_mdio_write.exit

do.end9.i.i:                                      ; preds = %if.end3.i.i.do.end9.i.i_crit_edge, %if.then.thread.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #11
  %19 = call i32 @llvm.bswap.i32(i32 %regval) #11
  %20 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %buf.i.i, align 4
  %call.i.i = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 280, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i)
  %cmp14.not.i.i = icmp eq i32 %call.i.i, -19
  %or.cond.i.i = or i1 %cmp.i.i, %cmp14.not.i.i
  br i1 %or.cond.i.i, label %__smsc95xx_write_reg.exit.i, label %__smsc95xx_write_reg.exit.thread.i

__smsc95xx_write_reg.exit.thread.i:               ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %21 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %22, ptr noundef nonnull @.str.21, i32 noundef 280, i32 noundef %call.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #11
  br label %if.then3.i

__smsc95xx_write_reg.exit.i:                      ; preds = %do.end9.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i, label %__smsc95xx_write_reg.exit.i.if.then3.i_crit_edge, label %do.end9.i52.i

__smsc95xx_write_reg.exit.i.if.then3.i_crit_edge: ; preds = %__smsc95xx_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3.i

if.then3.i:                                       ; preds = %__smsc95xx_write_reg.exit.i.if.then3.i_crit_edge, %__smsc95xx_write_reg.exit.thread.i
  br i1 %cmp14.not.i.i, label %if.then3.i.__smsc95xx_mdio_write.exit_crit_edge, label %if.then5.i

if.then3.i.__smsc95xx_mdio_write.exit_crit_edge:  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__smsc95xx_mdio_write.exit

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  %net6.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %23 = ptrtoint ptr %net6.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %net6.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %24, ptr noundef nonnull @.str.32) #14
  br label %__smsc95xx_mdio_write.exit

do.end9.i52.i:                                    ; preds = %__smsc95xx_write_reg.exit.i
  %and.i.i = shl i32 %5, 11
  %shl.i.i = and i32 %and.i.i, 63488
  %and1.i.i = shl i32 %idx, 6
  %shl2.i.i = and i32 %and1.i.i, 1984
  %or.i.i = or i32 %shl2.i.i, %shl.i.i
  %or3.i.i = or i32 %or.i.i, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i43.i) #11
  %25 = call i32 @llvm.bswap.i32(i32 %or3.i.i) #11
  %26 = ptrtoint ptr %buf.i43.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %buf.i43.i, align 4
  %call.i48.i = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 276, ptr noundef nonnull %buf.i43.i, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i48.i)
  %cmp.i49.i = icmp sgt i32 %call.i48.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i48.i)
  %cmp14.not.i50.i = icmp eq i32 %call.i48.i, -19
  %or.cond.i51.i = or i1 %cmp.i49.i, %cmp14.not.i50.i
  br i1 %or.cond.i51.i, label %__smsc95xx_write_reg.exit55.i, label %__smsc95xx_write_reg.exit55.thread.i

__smsc95xx_write_reg.exit55.thread.i:             ; preds = %do.end9.i52.i
  call void @__sanitizer_cov_trace_pc() #13
  %net.i53.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %27 = ptrtoint ptr %net.i53.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net.i53.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %28, ptr noundef nonnull @.str.21, i32 noundef 276, i32 noundef %call.i48.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i43.i) #11
  br label %if.then12.i

__smsc95xx_write_reg.exit55.i:                    ; preds = %do.end9.i52.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i43.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48.i)
  %cmp11.i = icmp slt i32 %call.i48.i, 0
  br i1 %cmp11.i, label %__smsc95xx_write_reg.exit55.i.if.then12.i_crit_edge, label %if.end17.i

__smsc95xx_write_reg.exit55.i.if.then12.i_crit_edge: ; preds = %__smsc95xx_write_reg.exit55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12.i

if.then12.i:                                      ; preds = %__smsc95xx_write_reg.exit55.i.if.then12.i_crit_edge, %__smsc95xx_write_reg.exit55.thread.i
  br i1 %cmp14.not.i50.i, label %if.then12.i.__smsc95xx_mdio_write.exit_crit_edge, label %if.then14.i

if.then12.i.__smsc95xx_mdio_write.exit_crit_edge: ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__smsc95xx_mdio_write.exit

if.then14.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #13
  %net15.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %29 = ptrtoint ptr %net15.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net15.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %30, ptr noundef nonnull @.str.17) #14
  br label %__smsc95xx_mdio_write.exit

if.end17.i:                                       ; preds = %__smsc95xx_write_reg.exit55.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %add.i60.i = add i32 %31, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i56.i) #11
  %32 = ptrtoint ptr %buf.i.i56.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %buf.i.i56.i, align 4
  %call.i.i6391.i = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 276, ptr noundef nonnull %buf.i.i56.i, i16 noundef zeroext 4) #11, !callees !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i6391.i)
  %cmp.i.i6492.i = icmp slt i32 %call.i.i6391.i, 0
  br i1 %cmp.i.i6492.i, label %if.end17.i.if.then14.i.i67.i_crit_edge, label %if.end17.i.if.end3.i72.i_crit_edge

if.end17.i.if.end3.i72.i_crit_edge:               ; preds = %if.end17.i
  br label %if.end3.i72.i

if.end17.i.if.then14.i.i67.i_crit_edge:           ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14.i.i67.i

do.end9.i.critedge.i62.i:                         ; preds = %do.cond.i75.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i56.i) #11
  %33 = ptrtoint ptr %buf.i.i56.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %buf.i.i56.i, align 4
  %call.i.i63.i = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 276, ptr noundef nonnull %buf.i.i56.i, i16 noundef zeroext 4) #11, !callees !275
  %cmp.i.i64.i = icmp slt i32 %call.i.i63.i, 0
  br i1 %cmp.i.i64.i, label %do.end9.i.critedge.i62.i.if.then14.i.i67.i_crit_edge, label %do.end9.i.critedge.i62.i.if.end3.i72.i_crit_edge

do.end9.i.critedge.i62.i.if.end3.i72.i_crit_edge: ; preds = %do.end9.i.critedge.i62.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i72.i

do.end9.i.critedge.i62.i.if.then14.i.i67.i_crit_edge: ; preds = %do.end9.i.critedge.i62.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14.i.i67.i

if.then14.i.i67.i:                                ; preds = %do.end9.i.critedge.i62.i.if.then14.i.i67.i_crit_edge, %if.end17.i.if.then14.i.i67.i_crit_edge
  %call.i.i63.lcssa.i = phi i32 [ %call.i.i6391.i, %if.end17.i.if.then14.i.i67.i_crit_edge ], [ %call.i.i63.i, %do.end9.i.critedge.i62.i.if.then14.i.i67.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i63.lcssa.i)
  %cmp15.not.i.i66.i = icmp eq i32 %call.i.i63.lcssa.i, -19
  br i1 %cmp15.not.i.i66.i, label %if.then.thread.i68.i, label %if.end.i70.i

if.then.thread.i68.i:                             ; preds = %if.then14.i.i67.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i56.i) #11
  br label %__smsc95xx_mdio_write.exit

if.end.i70.i:                                     ; preds = %if.then14.i.i67.i
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i69.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %34 = ptrtoint ptr %net.i.i69.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %net.i.i69.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %35, ptr noundef nonnull @.str.22, i32 noundef 276, i32 noundef %call.i.i63.lcssa.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i56.i) #11
  %36 = ptrtoint ptr %net.i.i69.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %net.i.i69.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %37, ptr noundef nonnull @.str.20) #14
  br label %if.then20.i

if.end3.i72.i:                                    ; preds = %do.end9.i.critedge.i62.i.if.end3.i72.i_crit_edge, %if.end17.i.if.end3.i72.i_crit_edge
  %38 = ptrtoint ptr %buf.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %buf.i.i56.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i56.i) #11
  %40 = and i32 %39, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i71.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i71.i, label %if.end3.i72.i.__smsc95xx_mdio_write.exit_crit_edge, label %do.cond.i75.i

if.end3.i72.i.__smsc95xx_mdio_write.exit_crit_edge: ; preds = %if.end3.i72.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__smsc95xx_mdio_write.exit

do.cond.i75.i:                                    ; preds = %if.end3.i72.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %sub.i73.i = sub i32 %add.i60.i, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i73.i)
  %cmp6.i74.i = icmp sgt i32 %sub.i73.i, -1
  br i1 %cmp6.i74.i, label %do.end9.i.critedge.i62.i, label %do.cond.i75.i.if.then20.i_crit_edge

do.cond.i75.i.if.then20.i_crit_edge:              ; preds = %do.cond.i75.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20.i

if.then20.i:                                      ; preds = %do.cond.i75.i.if.then20.i_crit_edge, %if.end.i70.i
  %net21.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %42 = ptrtoint ptr %net21.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %net21.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %43, ptr noundef nonnull @.str.33, i32 noundef %idx) #14
  br label %__smsc95xx_mdio_write.exit

__smsc95xx_mdio_write.exit:                       ; preds = %if.then20.i, %if.end3.i72.i.__smsc95xx_mdio_write.exit_crit_edge, %if.then.thread.i68.i, %if.then14.i, %if.then12.i.__smsc95xx_mdio_write.exit_crit_edge, %if.then5.i, %if.then3.i.__smsc95xx_mdio_write.exit_crit_edge, %if.then.i
  call void @mutex_unlock(ptr noundef %phy_mutex.i) #11
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc16(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc95xx_reset(ptr noundef %dev) #2 align 64 {
entry:
  %buf.i.i625 = alloca i32, align 4
  %buf.i.i614 = alloca i32, align 4
  %buf.i.i602 = alloca i32, align 4
  %buf.i.i39.i = alloca i32, align 4
  %buf.i.i.i = alloca i32, align 4
  %buf.i.i589 = alloca i32, align 4
  %buf.i.i578 = alloca i32, align 4
  %buf.i.i571 = alloca i32, align 4
  %buf.i.i = alloca i32, align 4
  %read_buf = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_buf) #11
  %2 = ptrtoint ptr %read_buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %read_buf, align 4, !annotation !272
  %msg_enable = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 20
  %3 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msg_enable, align 4
  %and = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.body1

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc95xx_reset.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc95xx_reset, %if.then5)) #11
          to label %do.end8 [label %if.then5], !srcloc !277

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %5 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc95xx_reset.__UNIQUE_ID_ddebug367, ptr noundef %6, ptr noundef nonnull @.str.38) #11
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %entry.do.end8_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #11
  %tobool.not.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !273

do.body4.i.i:                                     ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #11, !srcloc !278
  unreachable

do.end9.i.i:                                      ; preds = %do.end8
  %7 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 134217728, ptr %buf.i.i, align 4
  %call.i.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i)
  %cmp14.not.i.i = icmp eq i32 %call.i.i, -19
  %or.cond.i.i = or i1 %cmp.i.i, %cmp14.not.i.i
  br i1 %or.cond.i.i, label %smsc95xx_write_reg.exit, label %smsc95xx_write_reg.exit.thread

smsc95xx_write_reg.exit.thread:                   ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %8 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %9, ptr noundef nonnull @.str.21, i32 noundef 20, i32 noundef %call.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #11
  br label %cleanup

smsc95xx_write_reg.exit:                          ; preds = %do.end9.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %smsc95xx_write_reg.exit.cleanup_crit_edge, label %smsc95xx_write_reg.exit.do.end9.i.i576_crit_edge

smsc95xx_write_reg.exit.do.end9.i.i576_crit_edge: ; preds = %smsc95xx_write_reg.exit
  br label %do.end9.i.i576

smsc95xx_write_reg.exit.cleanup_crit_edge:        ; preds = %smsc95xx_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end9.i.i576:                                   ; preds = %if.end16.do.end9.i.i576_crit_edge, %smsc95xx_write_reg.exit.do.end9.i.i576_crit_edge
  %timeout.0 = phi i32 [ %inc, %if.end16.do.end9.i.i576_crit_edge ], [ 0, %smsc95xx_write_reg.exit.do.end9.i.i576_crit_edge ]
  call void @msleep(i32 noundef 10) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i571) #11
  %10 = ptrtoint ptr %buf.i.i571 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %buf.i.i571, align 4, !annotation !272
  %call.i.i574 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %buf.i.i571, i16 noundef zeroext 4) #11, !callees !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i574)
  %cmp.i.i575 = icmp slt i32 %call.i.i574, 0
  br i1 %cmp.i.i575, label %if.then14.i.i, label %if.end16

if.then14.i.i:                                    ; preds = %do.end9.i.i576
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i574)
  %cmp15.not.i.i = icmp eq i32 %call.i.i574, -19
  br i1 %cmp15.not.i.i, label %if.then14.i.i.smsc95xx_read_reg.exit.thread_crit_edge, label %if.then17.i.i

if.then14.i.i.smsc95xx_read_reg.exit.thread_crit_edge: ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %smsc95xx_read_reg.exit.thread

if.then17.i.i:                                    ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i577 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %11 = ptrtoint ptr %net.i.i577 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net.i.i577, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %12, ptr noundef nonnull @.str.22, i32 noundef 20, i32 noundef %call.i.i574) #14
  br label %smsc95xx_read_reg.exit.thread

smsc95xx_read_reg.exit.thread:                    ; preds = %if.then17.i.i, %if.then14.i.i.smsc95xx_read_reg.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i571) #11
  br label %cleanup

if.end16:                                         ; preds = %do.end9.i.i576
  %13 = ptrtoint ptr %buf.i.i571 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buf.i.i571, align 4
  %15 = call i32 @llvm.bswap.i32(i32 %14) #11
  %16 = ptrtoint ptr %read_buf to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %read_buf, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i571) #11
  %inc = add nuw nsw i32 %timeout.0, 1
  %and18 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp ne i32 %and18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %timeout.0)
  %cmp20 = icmp ult i32 %timeout.0, 99
  %or.cond = select i1 %tobool19.not, i1 %cmp20, i1 false
  br i1 %or.cond, label %if.end16.do.end9.i.i576_crit_edge, label %do.end21

if.end16.do.end9.i.i576_crit_edge:                ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i.i576

do.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 98, i32 %timeout.0)
  %cmp22 = icmp ugt i32 %timeout.0, 98
  br i1 %cmp22, label %if.then23, label %do.end9.i.i585

if.then23:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #13
  %net24 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %17 = ptrtoint ptr %net24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net24, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %18, ptr noundef nonnull @.str.39) #14
  br label %cleanup

do.end9.i.i585:                                   ; preds = %do.end21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i578) #11
  %19 = ptrtoint ptr %buf.i.i578 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 268435456, ptr %buf.i.i578, align 4
  %call.i.i581 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 32, ptr noundef nonnull %buf.i.i578, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i581)
  %cmp.i.i582 = icmp sgt i32 %call.i.i581, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i581)
  %cmp14.not.i.i583 = icmp eq i32 %call.i.i581, -19
  %or.cond.i.i584 = or i1 %cmp.i.i582, %cmp14.not.i.i583
  br i1 %or.cond.i.i584, label %smsc95xx_write_reg.exit588, label %smsc95xx_write_reg.exit588.thread

smsc95xx_write_reg.exit588.thread:                ; preds = %do.end9.i.i585
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i586 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %20 = ptrtoint ptr %net.i.i586 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net.i.i586, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %21, ptr noundef nonnull @.str.21, i32 noundef 32, i32 noundef %call.i.i581) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i578) #11
  br label %cleanup

smsc95xx_write_reg.exit588:                       ; preds = %do.end9.i.i585
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i578) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i581)
  %cmp27 = icmp slt i32 %call.i.i581, 0
  br i1 %cmp27, label %smsc95xx_write_reg.exit588.cleanup_crit_edge, label %smsc95xx_write_reg.exit588.do.end9.i.i594_crit_edge

smsc95xx_write_reg.exit588.do.end9.i.i594_crit_edge: ; preds = %smsc95xx_write_reg.exit588
  br label %do.end9.i.i594

smsc95xx_write_reg.exit588.cleanup_crit_edge:     ; preds = %smsc95xx_write_reg.exit588
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end9.i.i594:                                   ; preds = %if.end34.do.end9.i.i594_crit_edge, %smsc95xx_write_reg.exit588.do.end9.i.i594_crit_edge
  %timeout.1 = phi i32 [ %inc35, %if.end34.do.end9.i.i594_crit_edge ], [ 0, %smsc95xx_write_reg.exit588.do.end9.i.i594_crit_edge ]
  call void @msleep(i32 noundef 10) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i589) #11
  %22 = ptrtoint ptr %buf.i.i589 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %buf.i.i589, align 4, !annotation !272
  %call.i.i592 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 32, ptr noundef nonnull %buf.i.i589, i16 noundef zeroext 4) #11, !callees !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i592)
  %cmp.i.i593 = icmp slt i32 %call.i.i592, 0
  br i1 %cmp.i.i593, label %if.then14.i.i596, label %if.end34

if.then14.i.i596:                                 ; preds = %do.end9.i.i594
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i592)
  %cmp15.not.i.i595 = icmp eq i32 %call.i.i592, -19
  br i1 %cmp15.not.i.i595, label %if.then14.i.i596.smsc95xx_read_reg.exit600.thread_crit_edge, label %if.then17.i.i598

if.then14.i.i596.smsc95xx_read_reg.exit600.thread_crit_edge: ; preds = %if.then14.i.i596
  call void @__sanitizer_cov_trace_pc() #13
  br label %smsc95xx_read_reg.exit600.thread

if.then17.i.i598:                                 ; preds = %if.then14.i.i596
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i597 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %23 = ptrtoint ptr %net.i.i597 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %net.i.i597, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %24, ptr noundef nonnull @.str.22, i32 noundef 32, i32 noundef %call.i.i592) #14
  br label %smsc95xx_read_reg.exit600.thread

smsc95xx_read_reg.exit600.thread:                 ; preds = %if.then17.i.i598, %if.then14.i.i596.smsc95xx_read_reg.exit600.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i589) #11
  br label %cleanup

if.end34:                                         ; preds = %do.end9.i.i594
  %25 = ptrtoint ptr %buf.i.i589 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buf.i.i589, align 4
  %27 = call i32 @llvm.bswap.i32(i32 %26) #11
  %28 = ptrtoint ptr %read_buf to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %read_buf, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i589) #11
  %inc35 = add nuw nsw i32 %timeout.1, 1
  %and37 = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp ne i32 %and37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %timeout.1)
  %cmp40 = icmp ult i32 %timeout.1, 99
  %or.cond540 = select i1 %tobool38.not, i1 %cmp40, i1 false
  br i1 %or.cond540, label %if.end34.do.end9.i.i594_crit_edge, label %do.end42

if.end34.do.end9.i.i594_crit_edge:                ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i.i594

do.end42:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 98, i32 %timeout.1)
  %cmp43 = icmp ugt i32 %timeout.1, 98
  %net45 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %29 = ptrtoint ptr %net45 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net45, align 4
  br i1 %cmp43, label %if.then44, label %do.end9.i.i.i

if.then44:                                        ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %30, ptr noundef nonnull @.str.40) #14
  br label %cleanup

do.end9.i.i.i:                                    ; preds = %do.end42
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 86
  %31 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_addr.i, align 64
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 1
  %arrayidx3.i = getelementptr i8, ptr %32, i32 1
  %35 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx3.i, align 1
  %arrayidx7.i = getelementptr i8, ptr %32, i32 2
  %37 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx7.i, align 1
  %arrayidx13.i = getelementptr i8, ptr %32, i32 3
  %39 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx13.i, align 1
  %arrayidx19.i = getelementptr i8, ptr %32, i32 4
  %41 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx19.i, align 1
  %arrayidx23.i = getelementptr i8, ptr %32, i32 5
  %43 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx23.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i) #11
  %conv4.i = zext i8 %36 to i32
  %shl.i = shl nuw nsw i32 %conv4.i, 8
  %conv.i = zext i8 %34 to i32
  %or.i = or i32 %shl.i, %conv.i
  %conv8.i = zext i8 %38 to i32
  %shl9.i = shl nuw nsw i32 %conv8.i, 16
  %or10.i = or i32 %or.i, %shl9.i
  %conv14.i = zext i8 %40 to i32
  %shl15.i = shl nuw i32 %conv14.i, 24
  %or16.i = or i32 %or10.i, %shl15.i
  %45 = call i32 @llvm.bswap.i32(i32 %or16.i) #11
  %46 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %buf.i.i.i, align 4
  %call.i.i.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 264, ptr noundef nonnull %buf.i.i.i, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %cmp.i.i.i = icmp sgt i32 %call.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i.i)
  %cmp14.not.i.i.i = icmp eq i32 %call.i.i.i, -19
  %or.cond.i.i.i = or i1 %cmp.i.i.i, %cmp14.not.i.i.i
  br i1 %or.cond.i.i.i, label %smsc95xx_write_reg.exit.i, label %smsc95xx_write_reg.exit.thread.i

smsc95xx_write_reg.exit.thread.i:                 ; preds = %do.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %net45 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %net45, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %48, ptr noundef nonnull @.str.21, i32 noundef 264, i32 noundef %call.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #11
  br label %cleanup

smsc95xx_write_reg.exit.i:                        ; preds = %do.end9.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %smsc95xx_write_reg.exit.i.cleanup_crit_edge, label %do.end9.i.i46.i

smsc95xx_write_reg.exit.i.cleanup_crit_edge:      ; preds = %smsc95xx_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end9.i.i46.i:                                  ; preds = %smsc95xx_write_reg.exit.i
  %conv20.i = zext i8 %42 to i32
  %conv24.i = zext i8 %44 to i32
  %shl25.i = shl nuw nsw i32 %conv24.i, 8
  %or26.i = or i32 %shl25.i, %conv20.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i39.i) #11
  %49 = call i32 @llvm.bswap.i32(i32 %or26.i) #11
  %50 = ptrtoint ptr %buf.i.i39.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %buf.i.i39.i, align 4
  %call.i.i42.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 260, ptr noundef nonnull %buf.i.i39.i, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i42.i)
  %cmp.i.i43.i = icmp sgt i32 %call.i.i42.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i42.i)
  %cmp14.not.i.i44.i = icmp eq i32 %call.i.i42.i, -19
  %or.cond.i.i45.i = or i1 %cmp.i.i43.i, %cmp14.not.i.i44.i
  br i1 %or.cond.i.i45.i, label %smsc95xx_set_mac_address.exit, label %smsc95xx_set_mac_address.exit.thread642

smsc95xx_set_mac_address.exit.thread642:          ; preds = %do.end9.i.i46.i
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %net45 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %net45, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %52, ptr noundef nonnull @.str.21, i32 noundef 260, i32 noundef %call.i.i42.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i39.i) #11
  br label %cleanup

smsc95xx_set_mac_address.exit:                    ; preds = %do.end9.i.i46.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i39.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i42.i)
  %cmp48 = icmp slt i32 %call.i.i42.i, 0
  br i1 %cmp48, label %smsc95xx_set_mac_address.exit.cleanup_crit_edge, label %do.body51

smsc95xx_set_mac_address.exit.cleanup_crit_edge:  ; preds = %smsc95xx_set_mac_address.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body51:                                        ; preds = %smsc95xx_set_mac_address.exit
  %53 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %msg_enable, align 4
  %and53 = and i32 %54, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %do.body51.do.end9.i.i607_crit_edge, label %do.body56

do.body51.do.end9.i.i607_crit_edge:               ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i.i607

do.body56:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc95xx_reset.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc95xx_reset, %if.then68)) #11
          to label %do.end9.i.i607 [label %if.then68], !srcloc !277

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %net45 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %net45, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %56, i32 0, i32 86
  %57 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev_addr, align 64
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc95xx_reset.__UNIQUE_ID_ddebug368, ptr noundef %56, ptr noundef nonnull @.str.41, ptr noundef %58) #11
  br label %do.end9.i.i607

do.end9.i.i607:                                   ; preds = %if.then68, %do.body56, %do.body51.do.end9.i.i607_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i602) #11
  %59 = ptrtoint ptr %buf.i.i602 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %buf.i.i602, align 4, !annotation !272
  %call.i.i605 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %buf.i.i602, i16 noundef zeroext 4) #11, !callees !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i605)
  %cmp.i.i606 = icmp slt i32 %call.i.i605, 0
  br i1 %cmp.i.i606, label %if.then14.i.i609, label %do.body81

if.then14.i.i609:                                 ; preds = %do.end9.i.i607
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i605)
  %cmp15.not.i.i608 = icmp eq i32 %call.i.i605, -19
  br i1 %cmp15.not.i.i608, label %if.then14.i.i609.smsc95xx_read_reg.exit613.thread_crit_edge, label %if.then17.i.i611

if.then14.i.i609.smsc95xx_read_reg.exit613.thread_crit_edge: ; preds = %if.then14.i.i609
  call void @__sanitizer_cov_trace_pc() #13
  br label %smsc95xx_read_reg.exit613.thread

if.then17.i.i611:                                 ; preds = %if.then14.i.i609
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %net45 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %net45, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %61, ptr noundef nonnull @.str.22, i32 noundef 20, i32 noundef %call.i.i605) #14
  br label %smsc95xx_read_reg.exit613.thread

smsc95xx_read_reg.exit613.thread:                 ; preds = %if.then17.i.i611, %if.then14.i.i609.smsc95xx_read_reg.exit613.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i602) #11
  br label %cleanup

do.body81:                                        ; preds = %do.end9.i.i607
  %62 = ptrtoint ptr %buf.i.i602 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %buf.i.i602, align 4
  %64 = call i32 @llvm.bswap.i32(i32 %63) #11
  %65 = ptrtoint ptr %read_buf to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %read_buf, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i602) #11
  %66 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %msg_enable, align 4
  %and83 = and i32 %67, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %do.body81.do.end9.i.i621_crit_edge, label %do.body86

do.body81.do.end9.i.i621_crit_edge:               ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i.i621

do.body86:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc95xx_reset.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc95xx_reset, %if.then98)) #11
          to label %do.end9.i.i621 [label %if.then98], !srcloc !277

if.then98:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %net45 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %net45, align 4
  %70 = ptrtoint ptr %read_buf to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %read_buf, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc95xx_reset.__UNIQUE_ID_ddebug369, ptr noundef %69, ptr noundef nonnull @.str.42, i32 noundef %71) #11
  br label %do.end9.i.i621

do.end9.i.i621:                                   ; preds = %if.then98, %do.body86, %do.body81.do.end9.i.i621_crit_edge
  %72 = ptrtoint ptr %read_buf to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %read_buf, align 4
  %or = or i32 %73, 4096
  store i32 %or, ptr %read_buf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i614) #11
  %74 = call i32 @llvm.bswap.i32(i32 %or) #11
  %75 = ptrtoint ptr %buf.i.i614 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %buf.i.i614, align 4
  %call.i.i617 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %buf.i.i614, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i617)
  %cmp.i.i618 = icmp sgt i32 %call.i.i617, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i617)
  %cmp14.not.i.i619 = icmp eq i32 %call.i.i617, -19
  %or.cond.i.i620 = or i1 %cmp.i.i618, %cmp14.not.i.i619
  br i1 %or.cond.i.i620, label %smsc95xx_write_reg.exit624, label %smsc95xx_write_reg.exit624.thread

smsc95xx_write_reg.exit624.thread:                ; preds = %do.end9.i.i621
  call void @__sanitizer_cov_trace_pc() #13
  %76 = ptrtoint ptr %net45 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %net45, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %77, ptr noundef nonnull @.str.21, i32 noundef 20, i32 noundef %call.i.i617) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i614) #11
  br label %cleanup

smsc95xx_write_reg.exit624:                       ; preds = %do.end9.i.i621
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i614) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i617)
  %cmp107 = icmp slt i32 %call.i.i617, 0
  br i1 %cmp107, label %smsc95xx_write_reg.exit624.cleanup_crit_edge, label %do.end9.i.i630

smsc95xx_write_reg.exit624.cleanup_crit_edge:     ; preds = %smsc95xx_write_reg.exit624
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end9.i.i630:                                   ; preds = %smsc95xx_write_reg.exit624
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i625) #11
  %78 = ptrtoint ptr %buf.i.i625 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -1, ptr %buf.i.i625, align 4, !annotation !272
  %call.i.i628 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %buf.i.i625, i16 noundef zeroext 4) #11, !callees !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i628)
  %cmp.i.i629 = icmp slt i32 %call.i.i628, 0
  br i1 %cmp.i.i629, label %if.then14.i.i632, label %do.body114

if.then14.i.i632:                                 ; preds = %do.end9.i.i630
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i628)
  %cmp15.not.i.i631 = icmp eq i32 %call.i.i628, -19
  br i1 %cmp15.not.i.i631, label %if.then14.i.i632.smsc95xx_read_reg.exit636.thread_crit_edge, label %if.then17.i.i634

if.then14.i.i632.smsc95xx_read_reg.exit636.thread_crit_edge: ; preds = %if.then14.i.i632
  call void @__sanitizer_cov_trace_pc() #13
  br label %smsc95xx_read_reg.exit636.thread

if.then17.i.i634:                                 ; preds = %if.then14.i.i632
  call void @__sanitizer_cov_trace_pc() #13
  %79 = ptrtoint ptr %net45 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %net45, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %80, ptr noundef nonnull @.str.22, i32 noundef 20, i32 noundef %call.i.i628) #14
  br label %smsc95xx_read_reg.exit636.thread

smsc95xx_read_reg.exit636.thread:                 ; preds = %if.then17.i.i634, %if.then14.i.i632.smsc95xx_read_reg.exit636.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i625) #11
  br label %cleanup

do.body114:                                       ; preds = %do.end9.i.i630
  %81 = ptrtoint ptr %buf.i.i625 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %buf.i.i625, align 4
  %83 = call i32 @llvm.bswap.i32(i32 %82) #11
  %84 = ptrtoint ptr %read_buf to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %read_buf, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i625) #11
  %85 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %msg_enable, align 4
  %and116 = and i32 %86, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %do.body114.do.end138_crit_edge, label %do.body119

do.body114.do.end138_crit_edge:                   ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end138

do.body119:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc95xx_reset.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc95xx_reset, %if.then131)) #11
          to label %do.end138 [label %if.then131], !srcloc !277

if.then131:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #13
  %87 = ptrtoint ptr %net45 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %net45, align 4
  %89 = ptrtoint ptr %read_buf to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %read_buf, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc95xx_reset.__UNIQUE_ID_ddebug370, ptr noundef %88, ptr noundef nonnull @.str.43, i32 noundef %90) #11
  br label %do.end138

do.end138:                                        ; preds = %if.then131, %do.body119, %do.body114.do.end138_crit_edge
  %91 = load i8, ptr @turbo_mode, align 1, !range !280
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool139.not = icmp eq i8 %91, 0
  br i1 %tobool139.not, label %if.then140, label %if.else

if.then140:                                       ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #13
  %rx_urb_size = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 24
  %92 = ptrtoint ptr %rx_urb_size to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 2048, ptr %rx_urb_size, align 4
  br label %do.body148

if.else:                                          ; preds = %do.end138
  %93 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev, align 4
  %speed = getelementptr inbounds %struct.usb_device, ptr %94, i32 0, i32 4
  %95 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %96)
  %cmp141 = icmp eq i32 %96, 3
  %rx_urb_size143 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 24
  br i1 %cmp141, label %if.then142, label %if.else144

if.then142:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %97 = ptrtoint ptr %rx_urb_size143 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 18944, ptr %rx_urb_size143, align 4
  br label %do.body148

if.else144:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %98 = ptrtoint ptr %rx_urb_size143 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 8256, ptr %rx_urb_size143, align 4
  br label %do.body148

do.body148:                                       ; preds = %if.else144, %if.then142, %if.then140
  %burst_cap.0 = phi i32 [ 37, %if.then142 ], [ 129, %if.else144 ], [ 0, %if.then140 ]
  %99 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %msg_enable, align 4
  %and150 = and i32 %100, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  br i1 %tobool151.not, label %do.body148.do.end173_crit_edge, label %do.body153

do.body148.do.end173_crit_edge:                   ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end173

do.body153:                                       ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc95xx_reset.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc95xx_reset, %if.then165)) #11
          to label %do.end173 [label %if.then165], !srcloc !277

if.then165:                                       ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #13
  %101 = ptrtoint ptr %net45 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %net45, align 4
  %rx_urb_size167 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 24
  %103 = ptrtoint ptr %rx_urb_size167 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rx_urb_size167, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc95xx_reset.__UNIQUE_ID_ddebug371, ptr noundef %102, ptr noundef nonnull @.str.44, i32 noundef %104) #11
  br label %do.end173

do.end173:                                        ; preds = %if.then165, %do.body153, %do.body148.do.end173_crit_edge
  %call174 = call fastcc i32 @smsc95xx_write_reg(ptr noundef nonnull %dev, i32 noundef 56, i32 noundef %burst_cap.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174)
  %cmp175 = icmp slt i32 %call174, 0
  br i1 %cmp175, label %do.end173.cleanup_crit_edge, label %if.end177

do.end173.cleanup_crit_edge:                      ; preds = %do.end173
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end177:                                        ; preds = %do.end173
  %call178 = call fastcc i32 @smsc95xx_read_reg(ptr noundef nonnull %dev, i32 noundef 56, ptr noundef nonnull %read_buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %cmp179 = icmp slt i32 %call178, 0
  br i1 %cmp179, label %if.end177.cleanup_crit_edge, label %do.body182

if.end177.cleanup_crit_edge:                      ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body182:                                       ; preds = %if.end177
  %105 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %msg_enable, align 4
  %and184 = and i32 %106, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and184)
  %tobool185.not = icmp eq i32 %and184, 0
  br i1 %tobool185.not, label %do.body182.do.end206_crit_edge, label %do.body187

do.body182.do.end206_crit_edge:                   ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end206

do.body187:                                       ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc95xx_reset.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc95xx_reset, %if.then199)) #11
          to label %do.end206 [label %if.then199], !srcloc !277

if.then199:                                       ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #13
  %107 = ptrtoint ptr %net45 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %net45, align 4
  %109 = ptrtoint ptr %read_buf to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %read_buf, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc95xx_reset.__UNIQUE_ID_ddebug372, ptr noundef %108, ptr noundef nonnull @.str.45, i32 noundef %110) #11
  br label %do.end206

do.end206:                                        ; preds = %if.then199, %do.body187, %do.body182.do.end206_crit_edge
  %call207 = call fastcc i32 @smsc95xx_write_reg(ptr noundef nonnull %dev, i32 noundef 108, i32 noundef 8192)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207)
  %cmp208 = icmp slt i32 %call207, 0
  br i1 %cmp208, label %do.end206.cleanup_crit_edge, label %if.end210

do.end206.cleanup_crit_edge:                      ; preds = %do.end206
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end210:                                        ; preds = %do.end206
  %call211 = call fastcc i32 @smsc95xx_read_reg(ptr noundef nonnull %dev, i32 noundef 108, ptr noundef nonnull %read_buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call211)
  %cmp212 = icmp slt i32 %call211, 0
  br i1 %cmp212, label %if.end210.cleanup_crit_edge, label %do.body215

if.end210.cleanup_crit_edge:                      ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body215:                                       ; preds = %if.end210
  %111 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %msg_enable, align 4
  %and217 = and i32 %112, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and217)
  %tobool218.not = icmp eq i32 %and217, 0
  br i1 %tobool218.not, label %do.body215.do.end239_crit_edge, label %do.body220

do.body215.do.end239_crit_edge:                   ; preds = %do.body215
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end239

do.body220:                                       ; preds = %do.body215
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc95xx_reset.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc95xx_reset, %if.then232)) #11
          to label %do.end239 [label %if.then232], !srcloc !277

if.then232:                                       ; preds = %do.body220
  call void @__sanitizer_cov_trace_pc() #13
  %113 = ptrtoint ptr %net45 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %net45, align 4
  %115 = ptrtoint ptr %read_buf to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %read_buf, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc95xx_reset.__UNIQUE_ID_ddebug373, ptr noundef %114, ptr noundef nonnull @.str.46, i32 noundef %116) #11
  br label %do.end239

do.end239:                                        ; preds = %if.then232, %do.body220, %do.body215.do.end239_crit_edge
  %call240 = call fastcc i32 @smsc95xx_read_reg(ptr noundef nonnull %dev, i32 noundef 20, ptr noundef nonnull %read_buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call240)
  %cmp241 = icmp slt i32 %call240, 0
  br i1 %cmp241, label %do.end239.cleanup_crit_edge, label %do.body244

do.end239.cleanup_crit_edge:                      ; preds = %do.end239
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body244:                                       ; preds = %do.end239
  %117 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %msg_enable, align 4
  %and246 = and i32 %118, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and246)
  %tobool247.not = icmp eq i32 %and246, 0
  br i1 %tobool247.not, label %do.body244.do.end268_crit_edge, label %do.body249

do.body244.do.end268_crit_edge:                   ; preds = %do.body244
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end268

do.body249:                                       ; preds = %do.body244
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc95xx_reset.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc95xx_reset, %if.then261)) #11
          to label %do.end268 [label %if.then261], !srcloc !277

if.then261:                                       ; preds = %do.body249
  call void @__sanitizer_cov_trace_pc() #13
  %119 = ptrtoint ptr %net45 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %net45, align 4
  %121 = ptrtoint ptr %read_buf to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %read_buf, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc95xx_reset.__UNIQUE_ID_ddebug374, ptr noundef %120, ptr noundef nonnull @.str.47, i32 noundef %122) #11
  br label %do.end268

do.end268:                                        ; preds = %if.then261, %do.body249, %do.body244.do.end268_crit_edge
  %123 = load i8, ptr @turbo_mode, align 1, !range !280
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool269.not = icmp eq i8 %123, 0
  br i1 %tobool269.not, label %do.end268.if.end272_crit_edge, label %if.then270

do.end268.if.end272_crit_edge:                    ; preds = %do.end268
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end272

if.then270:                                       ; preds = %do.end268
  call void @__sanitizer_cov_trace_pc() #13
  %124 = ptrtoint ptr %read_buf to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %read_buf, align 4
  %or271 = or i32 %125, 34
  store i32 %or271, ptr %read_buf, align 4
  br label %if.end272

if.end272:                                        ; preds = %if.then270, %do.end268.if.end272_crit_edge
  %126 = ptrtoint ptr %read_buf to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %read_buf, align 4
  %and273 = and i32 %127, -1537
  %or274 = or i32 %and273, 1024
  store i32 %or274, ptr %read_buf, align 4
  %call275 = call fastcc i32 @smsc95xx_write_reg(ptr noundef nonnull %dev, i32 noundef 20, i32 noundef %or274)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call275)
  %cmp276 = icmp slt i32 %call275, 0
  br i1 %cmp276, label %if.end272.cleanup_crit_edge, label %if.end278

if.end272.cleanup_crit_edge:                      ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end278:                                        ; preds = %if.end272
  %call279 = call fastcc i32 @smsc95xx_read_reg(ptr noundef nonnull %dev, i32 noundef 20, ptr noundef nonnull %read_buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call279)
  %cmp280 = icmp slt i32 %call279, 0
  br i1 %cmp280, label %if.end278.cleanup_crit_edge, label %do.body283

if.end278.cleanup_crit_edge:                      ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body283:                                       ; preds = %if.end278
  %128 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %msg_enable, align 4
  %and285 = and i32 %129, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and285)
  %tobool286.not = icmp eq i32 %and285, 0
  br i1 %tobool286.not, label %do.body283.do.end307_crit_edge, label %do.body288

do.body283.do.end307_crit_edge:                   ; preds = %do.body283
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end307

do.body288:                                       ; preds = %do.body283
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc95xx_reset.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc95xx_reset, %if.then300)) #11
          to label %do.end307 [label %if.then300], !srcloc !277

if.then300:                                       ; preds = %do.body288
  call void @__sanitizer_cov_trace_pc() #13
  %130 = ptrtoint ptr %net45 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %net45, align 4
  %132 = ptrtoint ptr %read_buf to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %read_buf, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc95xx_reset.__UNIQUE_ID_ddebug375, ptr noundef %131, ptr noundef nonnull @.str.48, i32 noundef %133) #11
  br label %do.end307

do.end307:                                        ; preds = %if.then300, %do.body288, %do.body283.do.end307_crit_edge
  %call308 = call fastcc i32 @smsc95xx_write_reg(ptr noundef nonnull %dev, i32 noundef 8, i32 noundef -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call308)
  %cmp309 = icmp slt i32 %call308, 0
  br i1 %cmp309, label %do.end307.cleanup_crit_edge, label %if.end311

do.end307.cleanup_crit_edge:                      ; preds = %do.end307
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end311:                                        ; preds = %do.end307
  %call312 = call fastcc i32 @smsc95xx_read_reg(ptr noundef nonnull %dev, i32 noundef 0, ptr noundef nonnull %read_buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call312)
  %cmp313 = icmp slt i32 %call312, 0
  br i1 %cmp313, label %if.end311.cleanup_crit_edge, label %do.body316

if.end311.cleanup_crit_edge:                      ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body316:                                       ; preds = %if.end311
  %134 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %msg_enable, align 4
  %and318 = and i32 %135, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and318)
  %tobool319.not = icmp eq i32 %and318, 0
  br i1 %tobool319.not, label %do.body316.do.end340_crit_edge, label %do.body321

do.body316.do.end340_crit_edge:                   ; preds = %do.body316
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end340

do.body321:                                       ; preds = %do.body316
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc95xx_reset.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc95xx_reset, %if.then333)) #11
          to label %do.end340 [label %if.then333], !srcloc !277

if.then333:                                       ; preds = %do.body321
  call void @__sanitizer_cov_trace_pc() #13
  %136 = ptrtoint ptr %net45 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %net45, align 4
  %138 = ptrtoint ptr %read_buf to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %read_buf, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc95xx_reset.__UNIQUE_ID_ddebug376, ptr noundef %137, ptr noundef nonnull @.str.49, i32 noundef %139) #11
  br label %do.end340

do.end340:                                        ; preds = %if.then333, %do.body321, %do.body316.do.end340_crit_edge
  %call341 = call fastcc i32 @smsc95xx_write_reg(ptr noundef nonnull %dev, i32 noundef 36, i32 noundef 17891328)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call341)
  %cmp342 = icmp slt i32 %call341, 0
  br i1 %cmp342, label %do.end340.cleanup_crit_edge, label %if.end344

do.end340.cleanup_crit_edge:                      ; preds = %do.end340
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end344:                                        ; preds = %do.end340
  %call345 = call fastcc i32 @smsc95xx_write_reg(ptr noundef nonnull %dev, i32 noundef 284, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call345)
  %cmp346 = icmp slt i32 %call345, 0
  br i1 %cmp346, label %if.end344.cleanup_crit_edge, label %if.end348

if.end344.cleanup_crit_edge:                      ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end348:                                        ; preds = %if.end344
  %call349 = call fastcc i32 @smsc95xx_write_reg(ptr noundef nonnull %dev, i32 noundef 44, i32 noundef 16265377)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call349)
  %cmp350 = icmp slt i32 %call349, 0
  br i1 %cmp350, label %if.end348.cleanup_crit_edge, label %if.end352

if.end348.cleanup_crit_edge:                      ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end352:                                        ; preds = %if.end348
  %call353 = call fastcc i32 @smsc95xx_read_reg(ptr noundef nonnull %dev, i32 noundef 256, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call353)
  %cmp354 = icmp slt i32 %call353, 0
  br i1 %cmp354, label %if.end352.cleanup_crit_edge, label %if.end356

if.end352.cleanup_crit_edge:                      ; preds = %if.end352
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end356:                                        ; preds = %if.end352
  %call357 = call fastcc i32 @smsc95xx_write_reg(ptr noundef nonnull %dev, i32 noundef 288, i32 noundef 33024)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call357)
  %cmp358 = icmp slt i32 %call357, 0
  br i1 %cmp358, label %if.end356.cleanup_crit_edge, label %if.end360

if.end356.cleanup_crit_edge:                      ; preds = %if.end356
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end360:                                        ; preds = %if.end356
  %140 = ptrtoint ptr %net45 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %net45, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %141, i32 0, i32 23
  %142 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %features, align 16
  %call363 = call i32 @smsc95xx_set_features(ptr noundef %141, i64 noundef %143)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call363)
  %cmp364 = icmp slt i32 %call363, 0
  %144 = ptrtoint ptr %net45 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %net45, align 4
  br i1 %cmp364, label %if.then365, label %if.end367

if.then365:                                       ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %145, ptr noundef nonnull @.str.50) #14
  br label %cleanup

if.end367:                                        ; preds = %if.end360
  call void @smsc95xx_set_multicast(ptr noundef %145)
  %call369 = call fastcc i32 @smsc95xx_read_reg(ptr noundef nonnull %dev, i32 noundef 104, ptr noundef nonnull %read_buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call369)
  %cmp370 = icmp slt i32 %call369, 0
  br i1 %cmp370, label %if.end367.cleanup_crit_edge, label %if.end372

if.end367.cleanup_crit_edge:                      ; preds = %if.end367
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end372:                                        ; preds = %if.end367
  %146 = ptrtoint ptr %read_buf to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %read_buf, align 4
  %or373 = or i32 %147, 32768
  store i32 %or373, ptr %read_buf, align 4
  %call374 = call fastcc i32 @smsc95xx_write_reg(ptr noundef nonnull %dev, i32 noundef 104, i32 noundef %or373)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call374)
  %cmp375 = icmp slt i32 %call374, 0
  br i1 %cmp375, label %if.end372.cleanup_crit_edge, label %if.end377

if.end372.cleanup_crit_edge:                      ; preds = %if.end372
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end377:                                        ; preds = %if.end372
  %call378 = call fastcc i32 @smsc95xx_start_tx_path(ptr noundef nonnull %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call378)
  %cmp379 = icmp slt i32 %call378, 0
  br i1 %cmp379, label %if.then380, label %if.end382

if.then380:                                       ; preds = %if.end377
  call void @__sanitizer_cov_trace_pc() #13
  %148 = ptrtoint ptr %net45 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %net45, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %149, ptr noundef nonnull @.str.51) #14
  br label %cleanup

if.end382:                                        ; preds = %if.end377
  %call383 = call fastcc i32 @smsc95xx_start_rx_path(ptr noundef nonnull %dev, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call383)
  %cmp384 = icmp slt i32 %call383, 0
  br i1 %cmp384, label %if.then385, label %do.body388

if.then385:                                       ; preds = %if.end382
  call void @__sanitizer_cov_trace_pc() #13
  %150 = ptrtoint ptr %net45 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %net45, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %151, ptr noundef nonnull @.str.52) #14
  br label %cleanup

do.body388:                                       ; preds = %if.end382
  %152 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %msg_enable, align 4
  %and390 = and i32 %153, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and390)
  %tobool391.not = icmp eq i32 %and390, 0
  br i1 %tobool391.not, label %do.body388.cleanup_crit_edge, label %do.body393

do.body388.cleanup_crit_edge:                     ; preds = %do.body388
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body393:                                       ; preds = %do.body388
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc95xx_reset.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc95xx_reset, %if.then405)) #11
          to label %cleanup [label %if.then405], !srcloc !277

if.then405:                                       ; preds = %do.body393
  call void @__sanitizer_cov_trace_pc() #13
  %154 = ptrtoint ptr %net45 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %net45, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc95xx_reset.__UNIQUE_ID_ddebug377, ptr noundef %155, ptr noundef nonnull @.str.53) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then405, %do.body393, %do.body388.cleanup_crit_edge, %if.then385, %if.then380, %if.end372.cleanup_crit_edge, %if.end367.cleanup_crit_edge, %if.then365, %if.end356.cleanup_crit_edge, %if.end352.cleanup_crit_edge, %if.end348.cleanup_crit_edge, %if.end344.cleanup_crit_edge, %do.end340.cleanup_crit_edge, %if.end311.cleanup_crit_edge, %do.end307.cleanup_crit_edge, %if.end278.cleanup_crit_edge, %if.end272.cleanup_crit_edge, %do.end239.cleanup_crit_edge, %if.end210.cleanup_crit_edge, %do.end206.cleanup_crit_edge, %if.end177.cleanup_crit_edge, %do.end173.cleanup_crit_edge, %smsc95xx_read_reg.exit636.thread, %smsc95xx_write_reg.exit624.cleanup_crit_edge, %smsc95xx_write_reg.exit624.thread, %smsc95xx_read_reg.exit613.thread, %smsc95xx_set_mac_address.exit.cleanup_crit_edge, %smsc95xx_set_mac_address.exit.thread642, %smsc95xx_write_reg.exit.i.cleanup_crit_edge, %smsc95xx_write_reg.exit.thread.i, %if.then44, %smsc95xx_read_reg.exit600.thread, %smsc95xx_write_reg.exit588.cleanup_crit_edge, %smsc95xx_write_reg.exit588.thread, %if.then23, %smsc95xx_read_reg.exit.thread, %smsc95xx_write_reg.exit.cleanup_crit_edge, %smsc95xx_write_reg.exit.thread
  %retval.0 = phi i32 [ %call.i.i574, %if.then23 ], [ %call.i.i592, %if.then44 ], [ %call363, %if.then365 ], [ %call378, %if.then380 ], [ %call383, %if.then385 ], [ %call.i.i, %smsc95xx_write_reg.exit.cleanup_crit_edge ], [ %call.i.i581, %smsc95xx_write_reg.exit588.cleanup_crit_edge ], [ %call.i.i42.i, %smsc95xx_set_mac_address.exit.cleanup_crit_edge ], [ %call.i.i617, %smsc95xx_write_reg.exit624.cleanup_crit_edge ], [ %call174, %do.end173.cleanup_crit_edge ], [ %call178, %if.end177.cleanup_crit_edge ], [ %call207, %do.end206.cleanup_crit_edge ], [ %call211, %if.end210.cleanup_crit_edge ], [ %call240, %do.end239.cleanup_crit_edge ], [ %call275, %if.end272.cleanup_crit_edge ], [ %call279, %if.end278.cleanup_crit_edge ], [ %call308, %do.end307.cleanup_crit_edge ], [ %call312, %if.end311.cleanup_crit_edge ], [ %call341, %do.end340.cleanup_crit_edge ], [ %call345, %if.end344.cleanup_crit_edge ], [ %call349, %if.end348.cleanup_crit_edge ], [ %call353, %if.end352.cleanup_crit_edge ], [ %call357, %if.end356.cleanup_crit_edge ], [ %call369, %if.end367.cleanup_crit_edge ], [ %call374, %if.end372.cleanup_crit_edge ], [ 0, %if.then405 ], [ 0, %do.body388.cleanup_crit_edge ], [ %call.i.i, %smsc95xx_write_reg.exit.thread ], [ %call.i.i574, %smsc95xx_read_reg.exit.thread ], [ %call.i.i581, %smsc95xx_write_reg.exit588.thread ], [ %call.i.i592, %smsc95xx_read_reg.exit600.thread ], [ %call.i.i42.i, %smsc95xx_set_mac_address.exit.thread642 ], [ %call.i.i605, %smsc95xx_read_reg.exit613.thread ], [ %call.i.i617, %smsc95xx_write_reg.exit624.thread ], [ %call.i.i628, %smsc95xx_read_reg.exit636.thread ], [ 0, %do.body393 ], [ %call.i.i.i, %smsc95xx_write_reg.exit.i.cleanup_crit_edge ], [ %call.i.i.i, %smsc95xx_write_reg.exit.thread.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_buf) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc95xx_write_reg(ptr noundef %dev, i32 noundef %index, i32 noundef %data) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #11
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end9.i, !prof !273

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #11, !srcloc !278
  unreachable

do.end9.i:                                        ; preds = %entry
  %0 = tail call i32 @llvm.bswap.i32(i32 %data) #11
  %1 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %buf.i, align 4
  %conv.i = trunc i32 %index to i16
  %call.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv.i, ptr noundef nonnull %buf.i, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i)
  %cmp14.not.i = icmp eq i32 %call.i, -19
  %or.cond.i = or i1 %cmp.i, %cmp14.not.i
  br i1 %or.cond.i, label %do.end9.i.__smsc95xx_write_reg.exit_crit_edge, label %if.then16.i

do.end9.i.__smsc95xx_write_reg.exit_crit_edge:    ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__smsc95xx_write_reg.exit

if.then16.i:                                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  %net.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %3, ptr noundef nonnull @.str.21, i32 noundef %index, i32 noundef %call.i) #14
  br label %__smsc95xx_write_reg.exit

__smsc95xx_write_reg.exit:                        ; preds = %if.then16.i, %do.end9.i.__smsc95xx_write_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #11
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc95xx_read_reg(ptr noundef %dev, i32 noundef %index, ptr nocapture noundef writeonly %data) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #11
  %0 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %buf.i, align 4, !annotation !272
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end9.i, !prof !273

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #11, !srcloc !274
  unreachable

do.end9.i:                                        ; preds = %entry
  %conv.i = trunc i32 %index to i16
  %call.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext %conv.i, ptr noundef nonnull %buf.i, i16 noundef zeroext 4) #11, !callees !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then14.i, label %if.end19.i

if.then14.i:                                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i)
  %cmp15.not.i = icmp eq i32 %call.i, -19
  br i1 %cmp15.not.i, label %if.then14.i.__smsc95xx_read_reg.exit_crit_edge, label %if.then17.i

if.then14.i.__smsc95xx_read_reg.exit_crit_edge:   ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__smsc95xx_read_reg.exit

if.then17.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #13
  %net.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %1 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %2, ptr noundef nonnull @.str.22, i32 noundef %index, i32 noundef %call.i) #14
  br label %__smsc95xx_read_reg.exit

if.end19.i:                                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %buf.i, align 4
  %5 = call i32 @llvm.bswap.i32(i32 %4) #11
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %data, align 4
  br label %__smsc95xx_read_reg.exit

__smsc95xx_read_reg.exit:                         ; preds = %if.end19.i, %if.then17.i, %if.then14.i.__smsc95xx_read_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc95xx_set_features(ptr noundef %netdev, i64 noundef %features) #2 align 64 {
entry:
  %buf.i.i39 = alloca i32, align 4
  %buf.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #11
  %0 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %buf.i.i, align 4, !annotation !272
  %tobool.not.i.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !273

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #11, !srcloc !274
  unreachable

do.end9.i.i:                                      ; preds = %entry
  %call.i.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 304, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #11, !callees !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then14.i.i, label %if.end

if.then14.i.i:                                    ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i)
  %cmp15.not.i.i = icmp eq i32 %call.i.i, -19
  br i1 %cmp15.not.i.i, label %if.then14.i.i.smsc95xx_read_reg.exit.thread_crit_edge, label %if.then17.i.i

if.then14.i.i.smsc95xx_read_reg.exit.thread_crit_edge: ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %smsc95xx_read_reg.exit.thread

if.then17.i.i:                                    ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i = getelementptr i8, ptr %netdev, i32 2548
  %1 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %2, ptr noundef nonnull @.str.22, i32 noundef 304, i32 noundef %call.i.i) #14
  br label %smsc95xx_read_reg.exit.thread

smsc95xx_read_reg.exit.thread:                    ; preds = %if.then17.i.i, %if.then14.i.i.smsc95xx_read_reg.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #11
  br label %cleanup

if.end:                                           ; preds = %do.end9.i.i
  %3 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %buf.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #11
  %5 = trunc i64 %features to i32
  %6 = shl i32 %5, 15
  %7 = and i32 %6, 65536
  %8 = and i32 %4, -16777473
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  %and5 = lshr i64 %features, 40
  %10 = trunc i64 %and5 to i32
  %11 = and i32 %10, 1
  %and10 = or i32 %11, %7
  %storemerge38 = or i32 %and10, %9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i39) #11
  %12 = call i32 @llvm.bswap.i32(i32 %storemerge38) #11
  %13 = ptrtoint ptr %buf.i.i39 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %buf.i.i39, align 4
  %call.i.i42 = call i32 @usbnet_write_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 304, ptr noundef nonnull %buf.i.i39, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i42)
  %cmp.i.i43 = icmp sgt i32 %call.i.i42, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i42)
  %cmp14.not.i.i = icmp eq i32 %call.i.i42, -19
  %or.cond.i.i = or i1 %cmp.i.i43, %cmp14.not.i.i
  br i1 %or.cond.i.i, label %smsc95xx_write_reg.exit, label %smsc95xx_write_reg.exit.thread

smsc95xx_write_reg.exit.thread:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i45 = getelementptr i8, ptr %netdev, i32 2548
  %14 = ptrtoint ptr %net.i.i45 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net.i.i45, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %15, ptr noundef nonnull @.str.21, i32 noundef 304, i32 noundef %call.i.i42) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i39) #11
  br label %cleanup

smsc95xx_write_reg.exit:                          ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i39) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i42)
  %cmp13 = icmp slt i32 %call.i.i42, 0
  br i1 %cmp13, label %smsc95xx_write_reg.exit.cleanup_crit_edge, label %do.body

smsc95xx_write_reg.exit.cleanup_crit_edge:        ; preds = %smsc95xx_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %smsc95xx_write_reg.exit
  %msg_enable = getelementptr i8, ptr %netdev, i32 2552
  %16 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable, align 4
  %and16 = and i32 %17, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body.cleanup_crit_edge, label %do.body19

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc95xx_set_features.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc95xx_set_features, %if.then24)) #11
          to label %cleanup [label %if.then24], !srcloc !277

if.then24:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #13
  %net = getelementptr i8, ptr %netdev, i32 2548
  %18 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc95xx_set_features.__UNIQUE_ID_ddebug363, ptr noundef %19, ptr noundef nonnull @.str.55, i32 noundef %storemerge38) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %do.body19, %do.body.cleanup_crit_edge, %smsc95xx_write_reg.exit.cleanup_crit_edge, %smsc95xx_write_reg.exit.thread, %smsc95xx_read_reg.exit.thread
  %retval.0 = phi i32 [ %call.i.i42, %smsc95xx_write_reg.exit.cleanup_crit_edge ], [ 0, %if.then24 ], [ 0, %do.body.cleanup_crit_edge ], [ %call.i.i, %smsc95xx_read_reg.exit.thread ], [ %call.i.i42, %smsc95xx_write_reg.exit.thread ], [ 0, %do.body19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smsc95xx_set_multicast(ptr noundef %netdev) #2 align 64 {
entry:
  %buf.i232 = alloca i32, align 4
  %buf.i226 = alloca i32, align 4
  %buf.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %driver_priv = getelementptr i8, ptr %netdev, i32 2320
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %hash_hi = getelementptr inbounds %struct.smsc95xx_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hash_hi to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %hash_hi, align 4
  %hash_lo = getelementptr inbounds %struct.smsc95xx_priv, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %hash_lo to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %hash_lo, align 4
  %mac_cr_lock = getelementptr inbounds %struct.smsc95xx_priv, ptr %1, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mac_cr_lock) #11
  %net = getelementptr i8, ptr %netdev, i32 2548
  %4 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net, align 4
  %flags6 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags6, align 8
  %and = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %do.body7

do.body7:                                         ; preds = %entry
  %msg_enable = getelementptr i8, ptr %netdev, i32 2552
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 4
  %and8 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.body7.do.end23_crit_edge, label %do.body11

do.body7.do.end23_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23

do.body11:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc95xx_set_multicast.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc95xx_set_multicast, %if.then17)) #11
          to label %do.end23 [label %if.then17], !srcloc !277

if.then17:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc95xx_set_multicast.__UNIQUE_ID_ddebug356, ptr noundef %11, ptr noundef nonnull @.str.57) #11
  br label %do.end23

do.end23:                                         ; preds = %if.then17, %do.body11, %do.body7.do.end23_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  %or = and i32 %13, -794625
  %and25 = or i32 %or, 262144
  store i32 %and25, ptr %1, align 4
  br label %if.end151

if.else:                                          ; preds = %entry
  %and28 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.else60, label %do.body31

do.body31:                                        ; preds = %if.else
  %msg_enable32 = getelementptr i8, ptr %netdev, i32 2552
  %14 = ptrtoint ptr %msg_enable32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_enable32, align 4
  %and33 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %do.body31.do.end55_crit_edge, label %do.body36

do.body31.do.end55_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end55

do.body36:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc95xx_set_multicast.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc95xx_set_multicast, %if.then48)) #11
          to label %do.end55 [label %if.then48], !srcloc !277

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc95xx_set_multicast.__UNIQUE_ID_ddebug357, ptr noundef %17, ptr noundef nonnull @.str.58) #11
  br label %do.end55

do.end55:                                         ; preds = %if.then48, %do.body36, %do.body31.do.end55_crit_edge
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 4
  %or57 = and i32 %19, -794625
  %and59 = or i32 %or57, 524288
  store i32 %and59, ptr %1, align 4
  br label %if.end151

if.else60:                                        ; preds = %if.else
  %count = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 66, i32 1
  %20 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp62 = icmp eq i32 %21, 0
  br i1 %cmp62, label %do.body122, label %if.then64

if.then64:                                        ; preds = %if.else60
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 4
  %or66 = and i32 %23, -794625
  %and68 = or i32 %or66, 8192
  store i32 %and68, ptr %1, align 4
  %mc69 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66
  %24 = ptrtoint ptr %mc69 to i32
  call void @__asan_load4_noabort(i32 %24)
  %ha.0242 = load ptr, ptr %mc69, align 4
  %cmp74.not243 = icmp eq ptr %ha.0242, %mc69
  br i1 %cmp74.not243, label %if.then64.do.body94_crit_edge, label %if.then64.smsc95xx_hash.exit_crit_edge

if.then64.smsc95xx_hash.exit_crit_edge:           ; preds = %if.then64
  br label %smsc95xx_hash.exit

if.then64.do.body94_crit_edge:                    ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body94

smsc95xx_hash.exit:                               ; preds = %smsc95xx_hash.exit.smsc95xx_hash.exit_crit_edge, %if.then64.smsc95xx_hash.exit_crit_edge
  %ha.0244 = phi ptr [ %ha.0, %smsc95xx_hash.exit.smsc95xx_hash.exit_crit_edge ], [ %ha.0242, %if.then64.smsc95xx_hash.exit_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0244, i32 0, i32 2
  %call.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #16
  %25 = and i32 %call.i, 255
  %arrayidx.i.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %conv2.i.i.i = zext i8 %27 to i32
  %shr22.i = lshr i32 %conv2.i.i.i, 2
  %and79 = and i32 %shr22.i, 31
  %shl = shl nuw i32 1, %and79
  %.mask = and i32 %conv2.i.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool81.not246.not = icmp eq i32 %.mask, 0
  %hash_lo.hash_hi = select i1 %tobool81.not246.not, ptr %hash_lo, ptr %hash_hi
  %28 = ptrtoint ptr %hash_lo.hash_hi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hash_lo.hash_hi, align 4
  %or87 = or i32 %29, %shl
  store i32 %or87, ptr %hash_lo.hash_hi, align 4
  %30 = ptrtoint ptr %ha.0244 to i32
  call void @__asan_load4_noabort(i32 %30)
  %ha.0 = load ptr, ptr %ha.0244, align 4
  %cmp74.not = icmp eq ptr %ha.0, %mc69
  br i1 %cmp74.not, label %smsc95xx_hash.exit.do.body94_crit_edge, label %smsc95xx_hash.exit.smsc95xx_hash.exit_crit_edge

smsc95xx_hash.exit.smsc95xx_hash.exit_crit_edge:  ; preds = %smsc95xx_hash.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %smsc95xx_hash.exit

smsc95xx_hash.exit.do.body94_crit_edge:           ; preds = %smsc95xx_hash.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body94

do.body94:                                        ; preds = %smsc95xx_hash.exit.do.body94_crit_edge, %if.then64.do.body94_crit_edge
  %msg_enable95 = getelementptr i8, ptr %netdev, i32 2552
  %31 = ptrtoint ptr %msg_enable95 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %msg_enable95, align 4
  %and96 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %do.body94.if.end151_crit_edge, label %do.body99

do.body94.if.end151_crit_edge:                    ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end151

do.body99:                                        ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc95xx_set_multicast.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc95xx_set_multicast, %if.then111)) #11
          to label %if.end151 [label %if.then111], !srcloc !277

if.then111:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %net, align 4
  %35 = ptrtoint ptr %hash_hi to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hash_hi, align 4
  %37 = ptrtoint ptr %hash_lo to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %hash_lo, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc95xx_set_multicast.__UNIQUE_ID_ddebug358, ptr noundef %34, ptr noundef nonnull @.str.59, i32 noundef %36, i32 noundef %38) #11
  br label %if.end151

do.body122:                                       ; preds = %if.else60
  %msg_enable123 = getelementptr i8, ptr %netdev, i32 2552
  %39 = ptrtoint ptr %msg_enable123 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %msg_enable123, align 4
  %and124 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %do.body122.do.end146_crit_edge, label %do.body127

do.body122.do.end146_crit_edge:                   ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end146

do.body127:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc95xx_set_multicast.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc95xx_set_multicast, %if.then139)) #11
          to label %do.end146 [label %if.then139], !srcloc !277

if.then139:                                       ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc95xx_set_multicast.__UNIQUE_ID_ddebug359, ptr noundef %42, ptr noundef nonnull @.str.60) #11
  br label %do.end146

do.end146:                                        ; preds = %if.then139, %do.body127, %do.body122.do.end146_crit_edge
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %1, align 4
  %and148 = and i32 %44, -794625
  store i32 %and148, ptr %1, align 4
  br label %if.end151

if.end151:                                        ; preds = %do.end146, %if.then111, %do.body99, %do.body94.if.end151_crit_edge, %do.end55, %do.end23
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mac_cr_lock, i32 noundef %call3) #11
  %45 = ptrtoint ptr %hash_hi to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %hash_hi, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #11
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #11
  %48 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %buf.i, align 4
  %call.i225 = call i32 @usbnet_write_cmd_async(ptr noundef %add.ptr.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 268, ptr noundef nonnull %buf.i, i16 noundef zeroext 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i225)
  %cmp.i = icmp slt i32 %call.i225, 0
  br i1 %cmp.i, label %if.then157, label %smsc95xx_write_reg_async.exit

smsc95xx_write_reg_async.exit:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #11
  br label %if.end159

if.then157:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %50, ptr noundef nonnull @.str.64, i32 noundef %call.i225) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #11
  %51 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %52, ptr noundef nonnull @.str.61) #14
  br label %if.end159

if.end159:                                        ; preds = %if.then157, %smsc95xx_write_reg_async.exit
  %53 = ptrtoint ptr %hash_lo to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %hash_lo, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i226) #11
  %55 = call i32 @llvm.bswap.i32(i32 %54) #11
  %56 = ptrtoint ptr %buf.i226 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %buf.i226, align 4
  %call.i227 = call i32 @usbnet_write_cmd_async(ptr noundef %add.ptr.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 272, ptr noundef nonnull %buf.i226, i16 noundef zeroext 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i227)
  %cmp.i228 = icmp slt i32 %call.i227, 0
  br i1 %cmp.i228, label %if.then164, label %smsc95xx_write_reg_async.exit231

smsc95xx_write_reg_async.exit231:                 ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i226) #11
  br label %if.end166

if.then164:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %58, ptr noundef nonnull @.str.64, i32 noundef %call.i227) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i226) #11
  %59 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %60, ptr noundef nonnull @.str.62) #14
  br label %if.end166

if.end166:                                        ; preds = %if.then164, %smsc95xx_write_reg_async.exit231
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i232) #11
  %63 = call i32 @llvm.bswap.i32(i32 %62) #11
  %64 = ptrtoint ptr %buf.i232 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %buf.i232, align 4
  %call.i233 = call i32 @usbnet_write_cmd_async(ptr noundef %add.ptr.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 256, ptr noundef nonnull %buf.i232, i16 noundef zeroext 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i233)
  %cmp.i234 = icmp slt i32 %call.i233, 0
  br i1 %cmp.i234, label %if.then171, label %smsc95xx_write_reg_async.exit237

smsc95xx_write_reg_async.exit237:                 ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i232) #11
  br label %if.end173

if.then171:                                       ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #13
  %65 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %66, ptr noundef nonnull @.str.64, i32 noundef %call.i233) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i232) #11
  %67 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %68, ptr noundef nonnull @.str.63) #14
  br label %if.end173

if.end173:                                        ; preds = %if.then171, %smsc95xx_write_reg_async.exit237
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc95xx_start_tx_path(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %buf.i.i19 = alloca i32, align 4
  %buf.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %mac_cr_lock = getelementptr inbounds %struct.smsc95xx_priv, ptr %1, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mac_cr_lock) #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %or = or i32 %3, 8
  store i32 %or, ptr %1, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mac_cr_lock, i32 noundef %call2) #11
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #11
  %tobool.not.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !273

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #11, !srcloc !278
  unreachable

do.end9.i.i:                                      ; preds = %entry
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #11
  %7 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %buf.i.i, align 4
  %call.i.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 256, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i)
  %cmp14.not.i.i = icmp eq i32 %call.i.i, -19
  %or.cond.i.i = or i1 %cmp.i.i, %cmp14.not.i.i
  br i1 %or.cond.i.i, label %smsc95xx_write_reg.exit, label %smsc95xx_write_reg.exit.thread

smsc95xx_write_reg.exit.thread:                   ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %8 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %9, ptr noundef nonnull @.str.21, i32 noundef 256, i32 noundef %call.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #11
  br label %cleanup

smsc95xx_write_reg.exit:                          ; preds = %do.end9.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp8 = icmp slt i32 %call.i.i, 0
  br i1 %cmp8, label %smsc95xx_write_reg.exit.cleanup_crit_edge, label %do.end9.i.i26

smsc95xx_write_reg.exit.cleanup_crit_edge:        ; preds = %smsc95xx_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end9.i.i26:                                    ; preds = %smsc95xx_write_reg.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i19) #11
  %10 = ptrtoint ptr %buf.i.i19 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 67108864, ptr %buf.i.i19, align 4
  %call.i.i22 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef nonnull %buf.i.i19, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i22)
  %cmp.i.i23 = icmp sgt i32 %call.i.i22, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i22)
  %cmp14.not.i.i24 = icmp eq i32 %call.i.i22, -19
  %or.cond.i.i25 = or i1 %cmp.i.i23, %cmp14.not.i.i24
  br i1 %or.cond.i.i25, label %do.end9.i.i26.smsc95xx_write_reg.exit29_crit_edge, label %if.then16.i.i28

do.end9.i.i26.smsc95xx_write_reg.exit29_crit_edge: ; preds = %do.end9.i.i26
  call void @__sanitizer_cov_trace_pc() #13
  br label %smsc95xx_write_reg.exit29

if.then16.i.i28:                                  ; preds = %do.end9.i.i26
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i27 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %11 = ptrtoint ptr %net.i.i27 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net.i.i27, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %12, ptr noundef nonnull @.str.21, i32 noundef 16, i32 noundef %call.i.i22) #14
  br label %smsc95xx_write_reg.exit29

smsc95xx_write_reg.exit29:                        ; preds = %if.then16.i.i28, %do.end9.i.i26.smsc95xx_write_reg.exit29_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i19) #11
  br label %cleanup

cleanup:                                          ; preds = %smsc95xx_write_reg.exit29, %smsc95xx_write_reg.exit.cleanup_crit_edge, %smsc95xx_write_reg.exit.thread
  %retval.0 = phi i32 [ %call.i.i22, %smsc95xx_write_reg.exit29 ], [ %call.i.i, %smsc95xx_write_reg.exit.cleanup_crit_edge ], [ %call.i.i, %smsc95xx_write_reg.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_write_cmd_async(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc95xx_bind(ptr noundef %dev, ptr noundef %intf) #2 align 64 {
entry:
  %buf.i.i172 = alloca i32, align 4
  %buf.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #14
  %call1 = tail call i32 @usbnet_get_endpoints(ptr noundef %dev, ptr noundef %intf) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %1, ptr noundef nonnull @.str.68, i32 noundef %call1) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 72) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %3 = ptrtoint ptr %driver_priv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %driver_priv, align 4
  %mac_cr_lock = getelementptr inbounds %struct.smsc95xx_priv, ptr %call7.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %mac_cr_lock, ptr noundef nonnull @.str.69, ptr noundef nonnull @smsc95xx_bind.__key, i16 noundef signext 3) #11
  %net9 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %4 = ptrtoint ptr %net9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net9, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %features, align 16
  %or = or i64 %7, 2
  store i64 %or, ptr %features, align 16
  %8 = load ptr, ptr %net9, align 4
  %features11 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 23
  %9 = ptrtoint ptr %features11 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %features11, align 16
  %or12 = or i64 %10, 1099511627776
  store i64 %or12, ptr %features11, align 16
  %11 = load ptr, ptr %net9, align 4
  %hw_features = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 24
  %12 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 1099511627778, ptr %hw_features, align 8
  %flags = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 38
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags) #11
  tail call fastcc void @smsc95xx_init_mac_address(ptr noundef %dev)
  %call14 = tail call i32 @smsc95xx_reset(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end4.free_pdata_crit_edge

if.end4.free_pdata_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_pdata

if.end17:                                         ; preds = %if.end4
  %call.i = tail call ptr @mdiobus_alloc_size(i32 noundef 0) #11
  %mdiobus = getelementptr inbounds %struct.smsc95xx_priv, ptr %call7.i.i, i32 0, i32 7
  %13 = ptrtoint ptr %mdiobus to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %mdiobus, align 8
  %tobool20.not = icmp eq ptr %call.i, null
  br i1 %tobool20.not, label %if.end17.free_pdata_crit_edge, label %if.end22

if.end17.free_pdata_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_pdata

if.end22:                                         ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #11
  %14 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %buf.i.i, align 4, !annotation !272
  %tobool.not.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !273

do.body4.i.i:                                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #11, !srcloc !274
  unreachable

do.end9.i.i:                                      ; preds = %if.end22
  %call.i.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #11, !callees !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then14.i.i, label %if.end26

if.then14.i.i:                                    ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i)
  %cmp15.not.i.i = icmp eq i32 %call.i.i, -19
  br i1 %cmp15.not.i.i, label %if.then14.i.i.smsc95xx_read_reg.exit.thread_crit_edge, label %if.then17.i.i

if.then14.i.i.smsc95xx_read_reg.exit.thread_crit_edge: ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %smsc95xx_read_reg.exit.thread

if.then17.i.i:                                    ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %net9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net9, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %16, ptr noundef nonnull @.str.22, i32 noundef 20, i32 noundef %call.i.i) #14
  br label %smsc95xx_read_reg.exit.thread

smsc95xx_read_reg.exit.thread:                    ; preds = %if.then17.i.i, %if.then14.i.i.smsc95xx_read_reg.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #11
  br label %free_mdio

if.end26:                                         ; preds = %do.end9.i.i
  %17 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %buf.i.i, align 4
  %19 = lshr i32 %18, 24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #11
  %and = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %if.then29, label %if.end26.if.end31_crit_edge

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %mdiobus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mdiobus, align 8
  %phy_mask = getelementptr inbounds %struct.mii_bus, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %phy_mask to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -3, ptr %phy_mask, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end26.if.end31_crit_edge
  %23 = ptrtoint ptr %mdiobus to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mdiobus, align 8
  %priv = getelementptr inbounds %struct.mii_bus, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev, ptr %priv, align 8
  %26 = load ptr, ptr %mdiobus, align 8
  %read = getelementptr inbounds %struct.mii_bus, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @smsc95xx_mdiobus_read, ptr %read, align 4
  %28 = load ptr, ptr %mdiobus, align 8
  %write = getelementptr inbounds %struct.mii_bus, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @smsc95xx_mdiobus_write, ptr %write, align 8
  %30 = load ptr, ptr %mdiobus, align 8
  %name = getelementptr inbounds %struct.mii_bus, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.70, ptr %name, align 4
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %dev36 = getelementptr inbounds %struct.usb_device, ptr %33, i32 0, i32 15
  %34 = load ptr, ptr %mdiobus, align 8
  %parent = getelementptr inbounds %struct.mii_bus, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %dev36, ptr %parent, align 4
  %36 = load ptr, ptr %mdiobus, align 8
  %id = getelementptr inbounds %struct.mii_bus, ptr %36, i32 0, i32 2
  %37 = load ptr, ptr %dev, align 4
  %bus = getelementptr inbounds %struct.usb_device, ptr %37, i32 0, i32 12
  %38 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bus, align 8
  %busnum = getelementptr inbounds %struct.usb_bus, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %busnum to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %busnum, align 4
  %42 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %37, align 8
  %call41 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef 61, ptr noundef nonnull @.str.71, i32 noundef %41, i32 noundef %43)
  %44 = ptrtoint ptr %mdiobus to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mdiobus, align 8
  %call43 = call i32 @__mdiobus_register(ptr noundef %45, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end47, label %if.then45

if.then45:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %net9 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %net9, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %47, ptr noundef nonnull @.str.72) #14
  br label %free_mdio

if.end47:                                         ; preds = %if.end31
  %48 = ptrtoint ptr %mdiobus to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mdiobus, align 8
  %call49 = call ptr @phy_find_first(ptr noundef %49) #11
  %phydev = getelementptr inbounds %struct.smsc95xx_priv, ptr %call7.i.i, i32 0, i32 8
  %50 = ptrtoint ptr %phydev to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call49, ptr %phydev, align 4
  %tobool51.not = icmp eq ptr %call49, null
  br i1 %tobool51.not, label %if.then52, label %do.end9.i.i177

if.then52:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %net9 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %net9, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %52, ptr noundef nonnull @.str.73) #14
  br label %unregister_mdio

do.end9.i.i177:                                   ; preds = %if.end47
  %is_internal = getelementptr inbounds %struct.phy_device, ptr %call49, i32 0, i32 4
  %53 = trunc i32 %and to i16
  %54 = ptrtoint ptr %is_internal to i32
  call void @__asan_load2_noabort(i32 %54)
  %bf.load = load i16, ptr %is_internal, align 8
  %bf.value = shl nuw nsw i16 %53, 12
  %bf.clear = and i16 %bf.load, -16385
  %55 = or i16 %bf.clear, %bf.value
  %bf.set = xor i16 %55, 16384
  store i16 %bf.set, ptr %is_internal, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i172) #11
  %56 = ptrtoint ptr %buf.i.i172 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %buf.i.i172, align 4, !annotation !272
  %call.i.i175 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buf.i.i172, i16 noundef zeroext 4) #11, !callees !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i175)
  %cmp.i.i176 = icmp slt i32 %call.i.i175, 0
  br i1 %cmp.i.i176, label %if.then14.i.i179, label %if.end61

if.then14.i.i179:                                 ; preds = %do.end9.i.i177
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i175)
  %cmp15.not.i.i178 = icmp eq i32 %call.i.i175, -19
  br i1 %cmp15.not.i.i178, label %if.then14.i.i179.smsc95xx_read_reg.exit183.thread_crit_edge, label %if.then17.i.i181

if.then14.i.i179.smsc95xx_read_reg.exit183.thread_crit_edge: ; preds = %if.then14.i.i179
  call void @__sanitizer_cov_trace_pc() #13
  br label %smsc95xx_read_reg.exit183.thread

if.then17.i.i181:                                 ; preds = %if.then14.i.i179
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %net9 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %net9, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %58, ptr noundef nonnull @.str.22, i32 noundef 0, i32 noundef %call.i.i175) #14
  br label %smsc95xx_read_reg.exit183.thread

smsc95xx_read_reg.exit183.thread:                 ; preds = %if.then17.i.i181, %if.then14.i.i179.smsc95xx_read_reg.exit183.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i172) #11
  br label %unregister_mdio

if.end61:                                         ; preds = %do.end9.i.i177
  %59 = ptrtoint ptr %buf.i.i172 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %buf.i.i172, align 4
  %61 = call i32 @llvm.bswap.i32(i32 %60) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i172) #11
  %shr = lshr i32 %61, 16
  %trunc = trunc i32 %shr to i16
  %62 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %if.end61.if.end79_crit_edge [
    i16 -25088, label %if.end61.if.end79.sink.split_crit_edge
    i16 -27344, label %if.end61.if.end79.sink.split_crit_edge187
    i16 -25080, label %if.end61.if.end79.sink.split_crit_edge188
    i16 -26832, label %if.end61.if.end79.sink.split_crit_edge189
    i16 -5120, label %if.then76
  ]

if.end61.if.end79.sink.split_crit_edge189:        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79.sink.split

if.end61.if.end79.sink.split_crit_edge188:        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79.sink.split

if.end61.if.end79.sink.split_crit_edge187:        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79.sink.split

if.end61.if.end79.sink.split_crit_edge:           ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79.sink.split

if.end61.if.end79_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79

if.then76:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79.sink.split

if.end79.sink.split:                              ; preds = %if.then76, %if.end61.if.end79.sink.split_crit_edge, %if.end61.if.end79.sink.split_crit_edge187, %if.end61.if.end79.sink.split_crit_edge188, %if.end61.if.end79.sink.split_crit_edge189
  %.sink = phi i8 [ 1, %if.then76 ], [ 7, %if.end61.if.end79.sink.split_crit_edge ], [ 7, %if.end61.if.end79.sink.split_crit_edge187 ], [ 7, %if.end61.if.end79.sink.split_crit_edge188 ], [ 7, %if.end61.if.end79.sink.split_crit_edge189 ]
  %features77 = getelementptr inbounds %struct.smsc95xx_priv, ptr %call7.i.i, i32 0, i32 5
  %63 = ptrtoint ptr %features77 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %.sink, ptr %features77, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.end79.sink.split, %if.end61.if.end79_crit_edge
  %64 = ptrtoint ptr %net9 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %net9, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %65, i32 0, i32 16
  %66 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @smsc95xx_netdev_ops, ptr %netdev_ops, align 8
  %67 = load ptr, ptr %net9, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %67, i32 0, i32 44
  %68 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @smsc95xx_ethtool_ops, ptr %ethtool_ops, align 16
  %69 = load ptr, ptr %net9, align 4
  %flags83 = getelementptr inbounds %struct.net_device, ptr %69, i32 0, i32 14
  %70 = ptrtoint ptr %flags83 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags83, align 8
  %or84 = or i32 %71, 4096
  store i32 %or84, ptr %flags83, align 8
  %72 = load ptr, ptr %net9, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %72, i32 0, i32 19
  %73 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %hard_header_len, align 2
  %add = add i16 %74, 12
  store i16 %add, ptr %hard_header_len, align 2
  %75 = load ptr, ptr %net9, align 4
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %75, i32 0, i32 30
  %76 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 68, ptr %min_mtu, align 8
  %77 = load ptr, ptr %net9, align 4
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %77, i32 0, i32 31
  %78 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1500, ptr %max_mtu, align 4
  %79 = load ptr, ptr %net9, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %79, i32 0, i32 20
  %80 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %mtu, align 4
  %hard_header_len92 = getelementptr inbounds %struct.net_device, ptr %79, i32 0, i32 19
  %82 = ptrtoint ptr %hard_header_len92 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %hard_header_len92, align 2
  %conv93 = zext i16 %83 to i32
  %add94 = add i32 %81, %conv93
  %hard_mtu = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 23
  %84 = ptrtoint ptr %hard_mtu to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %add94, ptr %hard_mtu, align 4
  %85 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %phydev, align 4
  %call97 = call i32 @phy_connect_direct(ptr noundef %79, ptr noundef %86, ptr noundef nonnull @smsc95xx_handle_link_change, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  %87 = ptrtoint ptr %net9 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %net9, align 4
  br i1 %tobool98.not, label %if.end104, label %if.then99

if.then99:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  %89 = ptrtoint ptr %mdiobus to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %mdiobus, align 8
  %id102 = getelementptr inbounds %struct.mii_bus, ptr %90, i32 0, i32 2
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %88, ptr noundef nonnull @.str.74, ptr noundef %id102) #14
  br label %unregister_mdio

if.end104:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  %phydev106 = getelementptr inbounds %struct.net_device, ptr %88, i32 0, i32 145
  %91 = ptrtoint ptr %phydev106 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %phydev106, align 16
  call void @phy_attached_info(ptr noundef %92) #11
  br label %cleanup

unregister_mdio:                                  ; preds = %if.then99, %smsc95xx_read_reg.exit183.thread, %if.then52
  %ret.0 = phi i32 [ %call97, %if.then99 ], [ -19, %if.then52 ], [ %call.i.i175, %smsc95xx_read_reg.exit183.thread ]
  %93 = ptrtoint ptr %mdiobus to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mdiobus, align 8
  call void @mdiobus_unregister(ptr noundef %94) #11
  br label %free_mdio

free_mdio:                                        ; preds = %unregister_mdio, %if.then45, %smsc95xx_read_reg.exit.thread
  %ret.1 = phi i32 [ %call43, %if.then45 ], [ %ret.0, %unregister_mdio ], [ %call.i.i, %smsc95xx_read_reg.exit.thread ]
  %95 = ptrtoint ptr %mdiobus to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mdiobus, align 8
  call void @mdiobus_free(ptr noundef %96) #11
  br label %free_pdata

free_pdata:                                       ; preds = %free_mdio, %if.end17.free_pdata_crit_edge, %if.end4.free_pdata_crit_edge
  %ret.2 = phi i32 [ %call14, %if.end4.free_pdata_crit_edge ], [ %ret.1, %free_mdio ], [ -12, %if.end17.free_pdata_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %free_pdata, %if.end104, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %ret.2, %free_pdata ], [ 0, %if.end104 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smsc95xx_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %phydev = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 145
  %4 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phydev, align 16
  tail call void @phy_disconnect(ptr noundef %5) #11
  %mdiobus = getelementptr inbounds %struct.smsc95xx_priv, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %mdiobus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdiobus, align 4
  tail call void @mdiobus_unregister(ptr noundef %7) #11
  %8 = ptrtoint ptr %mdiobus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdiobus, align 4
  tail call void @mdiobus_free(ptr noundef %9) #11
  %msg_enable = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 20
  %10 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_enable, align 4
  %and = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body2

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc95xx_unbind.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc95xx_unbind, %if.then6)) #11
          to label %do.end10 [label %if.then6], !srcloc !277

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc95xx_unbind.__UNIQUE_ID_ddebug378, ptr noundef %13, ptr noundef nonnull @.str.90) #11
  br label %do.end10

do.end10:                                         ; preds = %if.then6, %do.body2, %entry.do.end10_crit_edge
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc95xx_stop(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %phydev = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 145
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @phy_stop(ptr noundef nonnull %3) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc95xx_start_phy(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %phydev = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 145
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 16
  tail call void @phy_start(ptr noundef %3) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc95xx_manage_power(ptr nocapture noundef readonly %dev, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %intf = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %needs_remote_wakeup = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 6
  %4 = trunc i32 %on to i8
  %5 = ptrtoint ptr %needs_remote_wakeup to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %needs_remote_wakeup, align 8
  %bf.value = shl i8 %4, 4
  %bf.shl = and i8 %bf.value, 16
  %bf.clear = and i8 %bf.load, -17
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %needs_remote_wakeup, align 8
  %features = getelementptr inbounds %struct.smsc95xx_priv, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %features to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %features, align 4
  %8 = and i8 %7, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %9 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %10, ptr noundef nonnull @.str.91) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool1.not = icmp eq i32 %on, 0
  %11 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %intf, align 4
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_autopm_get_interface_no_resume(ptr noundef %12) #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_autopm_put_interface(ptr noundef %12) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then2, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smsc95xx_status(ptr noundef %dev, ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %0 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.not = icmp eq i32 %1, 4
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %3, ptr noundef nonnull @.str.92, i32 noundef %1) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %4 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %transfer_buffer, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %5, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #11
  %msg_enable = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 20
  %9 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_enable, align 4
  %and = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.do.end13_crit_edge, label %do.body3

if.end.do.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end13

do.body3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc95xx_status.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc95xx_status, %if.then8)) #11
          to label %do.end13 [label %if.then8], !srcloc !277

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #13
  %net9 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %11 = ptrtoint ptr %net9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net9, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc95xx_status.__UNIQUE_ID_ddebug362, ptr noundef %12, ptr noundef nonnull @.str.94, i32 noundef %8) #11
  br label %do.end13

do.end13:                                         ; preds = %if.then8, %do.body3, %if.end.do.end13_crit_edge
  %and14 = and i32 %8, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usbnet_defer_kevent(ptr noundef %dev, i32 noundef 4) #11
  br label %cleanup

if.else:                                          ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #13
  %net17 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %13 = ptrtoint ptr %net17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net17, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %14, ptr noundef nonnull @.str.95, i32 noundef %8) #14
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then16, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc95xx_link_reset(ptr noundef %dev) #2 align 64 {
entry:
  %buf.i.i46 = alloca i32, align 4
  %buf.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #11
  %tobool.not.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !273

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #11, !srcloc !278
  unreachable

do.end9.i.i:                                      ; preds = %entry
  %2 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %buf.i.i, align 4
  %call.i.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 8, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i)
  %cmp14.not.i.i = icmp eq i32 %call.i.i, -19
  %or.cond.i.i = or i1 %cmp.i.i, %cmp14.not.i.i
  br i1 %or.cond.i.i, label %smsc95xx_write_reg.exit, label %smsc95xx_write_reg.exit.thread

smsc95xx_write_reg.exit.thread:                   ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %3 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %4, ptr noundef nonnull @.str.21, i32 noundef 8, i32 noundef %call.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #11
  br label %cleanup

smsc95xx_write_reg.exit:                          ; preds = %do.end9.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %smsc95xx_write_reg.exit.cleanup_crit_edge, label %do.body1

smsc95xx_write_reg.exit.cleanup_crit_edge:        ; preds = %smsc95xx_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body1:                                         ; preds = %smsc95xx_write_reg.exit
  %mac_cr_lock = getelementptr inbounds %struct.smsc95xx_priv, ptr %1, i32 0, i32 4
  %call4 = call i32 @_raw_spin_lock_irqsave(ptr noundef %mac_cr_lock) #11
  %phydev = getelementptr inbounds %struct.smsc95xx_priv, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phydev, align 4
  %duplex = getelementptr inbounds %struct.phy_device, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp7.not = icmp eq i32 %8, 1
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  %and12 = and i32 %10, -9437185
  %. = select i1 %cmp7.not, i32 1048576, i32 8388608
  %or = or i32 %and12, %.
  store i32 %or, ptr %1, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %mac_cr_lock, i32 noundef %call4) #11
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i46) #11
  %13 = call i32 @llvm.bswap.i32(i32 %12) #11
  %14 = ptrtoint ptr %buf.i.i46 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %buf.i.i46, align 4
  %call.i.i49 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 256, ptr noundef nonnull %buf.i.i46, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i49)
  %cmp.i.i50 = icmp sgt i32 %call.i.i49, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i49)
  %cmp14.not.i.i51 = icmp eq i32 %call.i.i49, -19
  %or.cond.i.i52 = or i1 %cmp.i.i50, %cmp14.not.i.i51
  br i1 %or.cond.i.i52, label %smsc95xx_write_reg.exit56, label %smsc95xx_write_reg.exit56.thread

smsc95xx_write_reg.exit56.thread:                 ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i54 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %15 = ptrtoint ptr %net.i.i54 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net.i.i54, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %16, ptr noundef nonnull @.str.21, i32 noundef 256, i32 noundef %call.i.i49) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i46) #11
  br label %cleanup

smsc95xx_write_reg.exit56:                        ; preds = %do.body1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i46) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i49)
  %cmp19 = icmp slt i32 %call.i.i49, 0
  br i1 %cmp19, label %smsc95xx_write_reg.exit56.cleanup_crit_edge, label %if.end22

smsc95xx_write_reg.exit56.cleanup_crit_edge:      ; preds = %smsc95xx_write_reg.exit56
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22:                                         ; preds = %smsc95xx_write_reg.exit56
  %call23 = call fastcc i32 @smsc95xx_phy_update_flowcontrol(ptr noundef nonnull %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then26, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %17 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %18, ptr noundef nonnull @.str.96) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end22.cleanup_crit_edge, %smsc95xx_write_reg.exit56.cleanup_crit_edge, %smsc95xx_write_reg.exit56.thread, %smsc95xx_write_reg.exit.cleanup_crit_edge, %smsc95xx_write_reg.exit.thread
  %retval.0 = phi i32 [ %call.i.i, %smsc95xx_write_reg.exit.cleanup_crit_edge ], [ %call.i.i49, %smsc95xx_write_reg.exit56.cleanup_crit_edge ], [ %call23, %if.then26 ], [ %call23, %if.end22.cleanup_crit_edge ], [ %call.i.i, %smsc95xx_write_reg.exit.thread ], [ %call.i.i49, %smsc95xx_write_reg.exit56.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc95xx_rx_fixup(ptr noundef %dev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp = icmp ult i32 %1, %conv
  br i1 %cmp, label %entry.return_crit_edge, label %while.cond.preheader

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

while.cond.preheader:                             ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %msg_enable = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 20
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3.not237 = icmp eq i32 %7, 0
  br i1 %cmp3.not237, label %while.cond.preheader.return_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.return_crit_edge:            ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %9, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #11
  %call5 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 6) #11
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %and = lshr i32 %12, 16
  %conv7 = and i32 %and, 16383
  %sub = sub nsw i32 2, %and
  %rem9 = and i32 %sub, 3
  %and10 = and i32 %12, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool.not = icmp eq i32 %and10, 0
  br i1 %tobool.not, label %if.else59, label %do.body, !prof !281

do.body:                                          ; preds = %while.body
  %15 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg_enable, align 4
  %and14 = and i32 %16, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %do.body.do.end31_crit_edge, label %do.body17

do.body.do.end31_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end31

do.body17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc95xx_rx_fixup.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc95xx_rx_fixup, %if.then26)) #11
          to label %do.end31 [label %if.then26], !srcloc !277

if.then26:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc95xx_rx_fixup.__UNIQUE_ID_ddebug384, ptr noundef %18, ptr noundef nonnull @.str.103, i32 noundef %12) #11
  br label %do.end31

do.end31:                                         ; preds = %if.then26, %do.body17, %do.body.do.end31_crit_edge
  %19 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net, align 4
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 36, i32 4
  %21 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_errors, align 8
  %inc = add i32 %22, 1
  store i32 %inc, ptr %rx_errors, align 8
  %23 = load ptr, ptr %net, align 4
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 36, i32 6
  %24 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_dropped, align 8
  %inc35 = add i32 %25, 1
  store i32 %inc35, ptr %rx_dropped, align 8
  %and36 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net, align 4
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 36, i32 12
  %28 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_crc_errors, align 8
  %inc41 = add i32 %29, 1
  store i32 %inc41, ptr %rx_crc_errors, align 8
  br label %if.end139

if.else:                                          ; preds = %do.end31
  %and42 = and i32 %12, 2176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.else.if.end48_crit_edge, label %if.then44

if.else.if.end48_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then44:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %net, align 4
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 36, i32 13
  %32 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_frame_errors, align 4
  %inc47 = add i32 %33, 1
  store i32 %inc47, ptr %rx_frame_errors, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then44, %if.else.if.end48_crit_edge
  %34 = and i32 %12, 4128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %34)
  %35 = icmp eq i32 %34, 4096
  br i1 %35, label %if.then53, label %if.end48.if.end139_crit_edge

if.end48.if.end139_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end139

if.then53:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %net, align 4
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 36, i32 10
  %38 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx_length_errors, align 8
  %inc56 = add i32 %39, 1
  store i32 %inc56, ptr %rx_length_errors, align 8
  br label %if.end139

if.else59:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1526, i32 %conv7)
  %cmp61 = icmp ugt i32 %conv7, 1526
  br i1 %cmp61, label %do.body70, label %if.end95, !prof !273

do.body70:                                        ; preds = %if.else59
  %40 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %msg_enable, align 4
  %and72 = and i32 %41, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %do.body70.return_crit_edge, label %do.body75

do.body70.return_crit_edge:                       ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.body75:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc95xx_rx_fixup.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc95xx_rx_fixup, %if.then87)) #11
          to label %return [label %if.then87], !srcloc !277

if.then87:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc95xx_rx_fixup.__UNIQUE_ID_ddebug385, ptr noundef %43, ptr noundef nonnull @.str.104, i32 noundef %12) #11
  br label %return

if.end95:                                         ; preds = %if.else59
  %44 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %conv7)
  %cmp98 = icmp eq i32 %45, %conv7
  br i1 %cmp98, label %if.then100, label %if.end110

if.then100:                                       ; preds = %if.end95
  %46 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %net, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %47, i32 0, i32 23
  %48 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %features, align 16
  %and102 = and i64 %49, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and102)
  %tobool103.not = icmp eq i64 %and102, 0
  br i1 %tobool103.not, label %if.then100.if.end105_crit_edge, label %if.then104

if.then100.if.end105_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end105

if.then104:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #13
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %50 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %51, i32 -2
  %52 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %53 to i32
  %54 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv.i, ptr %54, align 8
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %56 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  %bf.set.i = or i16 %bf.clear.i, 1024
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  %sub.i = add nsw i32 %conv7, -2
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub.i) #11
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %if.then100.if.end105_crit_edge
  %57 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len, align 4
  %sub107 = add i32 %58, -4
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub107) #11
  %add109 = add nuw nsw i32 %conv7, 200
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %59 = ptrtoint ptr %truesize to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %add109, ptr %truesize, align 8
  br label %return

if.end110:                                        ; preds = %if.end95
  %call111 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #11
  %tobool112.not = icmp eq ptr %call111, null
  br i1 %tobool112.not, label %if.then121, label %if.end123, !prof !273

if.then121:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %61, ptr noundef nonnull @.str.105) #14
  br label %return

if.end123:                                        ; preds = %if.end110
  %len125 = getelementptr inbounds %struct.sk_buff, ptr %call111, i32 0, i32 6
  %62 = ptrtoint ptr %len125 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %conv7, ptr %len125, align 4
  %data126 = getelementptr inbounds %struct.sk_buff, ptr %call111, i32 0, i32 19
  %63 = ptrtoint ptr %data126 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %14, ptr %data126, align 4
  %add.ptr.i202 = getelementptr i8, ptr %14, i32 %conv7
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call111, i32 0, i32 16
  %64 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %add.ptr.i202, ptr %tail.i, align 8
  %65 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %net, align 4
  %features129 = getelementptr inbounds %struct.net_device, ptr %66, i32 0, i32 23
  %67 = ptrtoint ptr %features129 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %features129, align 16
  %and130 = and i64 %68, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and130)
  %tobool131.not = icmp eq i64 %and130, 0
  br i1 %tobool131.not, label %if.end123.if.end133_crit_edge, label %if.then132

if.end123.if.end133_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end133

if.then132:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i204 = getelementptr i8, ptr %add.ptr.i202, i32 -2
  %69 = ptrtoint ptr %add.ptr.i204 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %add.ptr.i204, align 2
  %conv.i205 = zext i16 %70 to i32
  %71 = getelementptr inbounds %struct.sk_buff, ptr %call111, i32 0, i32 15, i32 0, i32 5
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %conv.i205, ptr %71, align 8
  %ip_summed.i206 = getelementptr inbounds %struct.sk_buff, ptr %call111, i32 0, i32 15
  %73 = ptrtoint ptr %ip_summed.i206 to i32
  call void @__asan_load2_noabort(i32 %73)
  %bf.load.i207 = load i16, ptr %ip_summed.i206, align 8
  %bf.clear.i208 = and i16 %bf.load.i207, -1537
  %bf.set.i209 = or i16 %bf.clear.i208, 1024
  store i16 %bf.set.i209, ptr %ip_summed.i206, align 8
  %sub.i211 = add nsw i32 %conv7, -2
  tail call void @skb_trim(ptr noundef nonnull %call111, i32 noundef %sub.i211) #11
  br label %if.end133

if.end133:                                        ; preds = %if.then132, %if.end123.if.end133_crit_edge
  %74 = ptrtoint ptr %len125 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len125, align 4
  %sub135 = add i32 %75, -4
  tail call void @skb_trim(ptr noundef nonnull %call111, i32 noundef %sub135) #11
  %add137 = add nuw nsw i32 %conv7, 200
  %truesize138 = getelementptr inbounds %struct.sk_buff, ptr %call111, i32 0, i32 20
  %76 = ptrtoint ptr %truesize138 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %add137, ptr %truesize138, align 8
  tail call void @usbnet_skb_return(ptr noundef %dev, ptr noundef nonnull %call111) #11
  br label %if.end139

if.end139:                                        ; preds = %if.end133, %if.then53, %if.end48.if.end139_crit_edge, %if.then38
  %call141 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %conv7) #11
  %77 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool143.not = icmp eq i32 %78, 0
  br i1 %tobool143.not, label %if.end139.while.cond.backedge_crit_edge, label %if.then144

if.end139.while.cond.backedge_crit_edge:          ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

if.then144:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #13
  %call145 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %rem9) #11
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then144, %if.end139.while.cond.backedge_crit_edge
  %79 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %len, align 4
  %cmp3.not = icmp eq i32 %80, 0
  br i1 %cmp3.not, label %while.cond.backedge.return_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.cond.backedge.return_crit_edge:             ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

return:                                           ; preds = %while.cond.backedge.return_crit_edge, %if.then121, %if.end105, %if.then87, %do.body75, %do.body70.return_crit_edge, %while.cond.preheader.return_crit_edge, %entry.return_crit_edge
  %retval.2 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %if.then87 ], [ 0, %if.then121 ], [ 1, %if.end105 ], [ 0, %do.body70.return_crit_edge ], [ 0, %do.body75 ], [ 1, %while.cond.preheader.return_crit_edge ], [ 1, %while.cond.backedge.return_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @smsc95xx_tx_fixup(ptr nocapture noundef readnone %dev, ptr noundef %skb, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %0 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %ip_summed, align 8
  %1 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %1)
  %cmp = icmp eq i16 %1, 1536
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nr_frags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %do.end11, label %do.body6, !prof !281

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1909, 0\0A.popsection", ""() #11, !srcloc !282
  unreachable

do.end11:                                         ; preds = %entry
  %cond = select i1 %cmp, i32 12, i32 8
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %6 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %do.end11.skb_header_cloned.exit.i_crit_edge, label %if.end.i.i

do.end11.skb_header_cloned.exit.i_crit_edge:      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_header_cloned.exit.i

if.end.i.i:                                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #13
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #11
  %7 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %dataref1.i.i, align 4
  %and.i.i = and i32 %8, 65535
  %shr.i.i = ashr i32 %8, 16
  %sub.i.i = sub nsw i32 %and.i.i, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 1
  br label %skb_header_cloned.exit.i

skb_header_cloned.exit.i:                         ; preds = %if.end.i.i, %do.end11.skb_header_cloned.exit.i_crit_edge
  %retval.0.i.i = phi i1 [ %cmp.i.not.i, %if.end.i.i ], [ true, %do.end11.skb_header_cloned.exit.i_crit_edge ]
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %11 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %cond)
  %tobool.not.i3.i = icmp uge i32 %sub.ptr.sub.i.i.i, %cond
  %or.cond.i.i = and i1 %retval.0.i.i, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_header_cloned.exit.i.if.end15_crit_edge, label %skb_cow_head.exit

skb_header_cloned.exit.i.if.end15_crit_edge:      ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

skb_cow_head.exit:                                ; preds = %skb_header_cloned.exit.i
  %13 = tail call i32 @llvm.usub.sat.i32(i32 %cond, i32 %sub.ptr.sub.i.i.i) #11
  %add.i.i = add nuw nsw i32 %13, 127
  %and.i4.i = and i32 %add.i.i, 128
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool13.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool13.not, label %skb_cow_head.exit.if.end15_crit_edge, label %if.then14

skb_cow_head.exit.if.end15_crit_edge:             ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then14:                                        ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #11
  br label %cleanup

if.end15:                                         ; preds = %skb_cow_head.exit.if.end15_crit_edge, %skb_header_cloned.exit.i.if.end15_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %or16 = or i32 %15, 12288
  br i1 %cmp, label %if.then18, label %if.end15.if.end34_crit_edge

if.end15.if.end34_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %15)
  %cmp.i = icmp ult i32 %15, 46
  br i1 %cmp.i, label %if.then18.if.then20_crit_edge, label %smsc95xx_can_tx_checksum.exit

if.then18.if.then20_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20

smsc95xx_can_tx_checksum.exit:                    ; preds = %if.then18
  %16 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %16, align 8
  %conv.i.i = zext i16 %18 to i32
  %19 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i65 = ptrtoint ptr %20 to i32
  %21 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.rhs.cast.i.i.i67 = ptrtoint ptr %22 to i32
  %csum_offset.i = getelementptr inbounds %struct.anon.53, ptr %16, i32 0, i32 1
  %23 = ptrtoint ptr %csum_offset.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %csum_offset.i, align 2
  %conv.i = zext i16 %24 to i32
  %.neg = add i32 %15, -5
  %25 = add i32 %.neg, %sub.ptr.lhs.cast.i.i.i65
  %26 = add i32 %conv.i.i, %sub.ptr.rhs.cast.i.i.i67
  %sub3.i = sub i32 %25, %26
  call void @__sanitizer_cov_trace_cmp4(i32 %sub3.i, i32 %conv.i)
  %cmp4.i = icmp ugt i32 %sub3.i, %conv.i
  br i1 %cmp4.i, label %if.else, label %smsc95xx_can_tx_checksum.exit.if.then20_crit_edge

smsc95xx_can_tx_checksum.exit.if.then20_crit_edge: ; preds = %smsc95xx_can_tx_checksum.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20

if.then20:                                        ; preds = %smsc95xx_can_tx_checksum.exit.if.then20_crit_edge, %if.then18.if.then20_crit_edge
  %27 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %27, align 8
  %conv.i68 = zext i16 %29 to i32
  %30 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i.i.i, align 4
  %32 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %31 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %33 to i32
  %sub.ptr.sub.i.neg.i = sub i32 %conv.i68, %sub.ptr.lhs.cast.i.i
  %sub.i = add i32 %sub.ptr.sub.i.neg.i, %sub.ptr.rhs.cast.i.i
  %add.ptr = getelementptr i8, ptr %31, i32 %sub.i
  %sub = sub i32 %15, %sub.i
  %call23 = tail call i32 @csum_partial(ptr noundef %add.ptr, i32 noundef %sub, i32 noundef 0) #11
  %34 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call23) #17, !srcloc !283
  %neg.i = xor i32 %34, -1
  %shr.i = lshr i32 %neg.i, 16
  %conv.i69 = trunc i32 %shr.i to i16
  %35 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr26 = getelementptr i8, ptr %36, i32 %sub.i
  %csum_offset = getelementptr inbounds %struct.anon.53, ptr %27, i32 0, i32 1
  %37 = ptrtoint ptr %csum_offset to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %csum_offset, align 2
  %conv27 = zext i16 %38 to i32
  %add.ptr28 = getelementptr i8, ptr %add.ptr26, i32 %conv27
  %39 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv.i69, ptr %add.ptr28, align 2
  br label %if.end34

if.else:                                          ; preds = %smsc95xx_can_tx_checksum.exit
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %16 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %16, align 8
  %conv.i.i70 = zext i16 %41 to i32
  %42 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i.i.i, align 4
  %44 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i73 = ptrtoint ptr %43 to i32
  %sub.ptr.rhs.cast.i.i.i74 = ptrtoint ptr %45 to i32
  %sub.ptr.sub.i.neg.i.i = sub i32 %conv.i.i70, %sub.ptr.lhs.cast.i.i.i73
  %sub.i.i75 = add i32 %sub.ptr.sub.i.neg.i.i, %sub.ptr.rhs.cast.i.i.i74
  %conv1.i = and i32 %sub.i.i75, 65535
  %46 = ptrtoint ptr %csum_offset.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %csum_offset.i, align 2
  %48 = trunc i32 %sub.i.i75 to i16
  %conv3.i = add i16 %47, %48
  %conv4.i = zext i16 %conv3.i to i32
  %shl.i = shl nuw i32 %conv4.i, 16
  %or.i = or i32 %shl.i, %conv1.i
  %call30 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 4) #11
  %49 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  %50 = ptrtoint ptr %call30 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %49, ptr %call30, align 1
  %add = add i32 %or16, 4
  %add31 = add i32 %15, 4
  %or32 = or i32 %add31, 16384
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then20, %if.end15.if.end34_crit_edge
  %tx_cmd_a.0 = phi i32 [ %add, %if.else ], [ %or16, %if.then20 ], [ %or16, %if.end15.if.end34_crit_edge ]
  %tx_cmd_b.0 = phi i32 [ %or32, %if.else ], [ %15, %if.then20 ], [ %15, %if.end15.if.end34_crit_edge ]
  %call35 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #11
  %51 = tail call i32 @llvm.bswap.i32(i32 %tx_cmd_a.0) #11
  %52 = ptrtoint ptr %call35 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %51, ptr %call35, align 1
  %add.ptr36 = getelementptr i8, ptr %call35, i32 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %tx_cmd_b.0) #11
  %54 = ptrtoint ptr %add.ptr36 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %53, ptr %add.ptr36, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then14
  %retval.0 = phi ptr [ null, %if.then14 ], [ %skb, %if.end34 ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_endpoints(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smsc95xx_init_mac_address(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #11
  %0 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 15
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %3 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net, align 4
  %call = tail call i32 @platform_get_ethdev_address(ptr noundef %dev1, ptr noundef %4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end18_crit_edge

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 86
  %7 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_addr, align 64
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.then.if.end18_crit_edge

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

is_valid_ether_addr.exit:                         ; preds = %if.then
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %13 to i32
  %or.i.i = or i32 %10, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.end18_crit_edge, label %do.body

is_valid_ether_addr.exit.if.end18_crit_edge:      ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

do.body:                                          ; preds = %is_valid_ether_addr.exit
  %msg_enable = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 20
  %14 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_enable, align 4
  %and = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %do.body7

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc95xx_init_mac_address.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc95xx_init_mac_address, %if.then12)) #11
          to label %cleanup [label %if.then12], !srcloc !277

if.then12:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc95xx_init_mac_address.__UNIQUE_ID_ddebug364, ptr noundef %17, ptr noundef nonnull @.str.76) #11
  br label %cleanup

if.end18:                                         ; preds = %is_valid_ether_addr.exit.if.end18_crit_edge, %if.then.if.end18_crit_edge, %entry.if.end18_crit_edge
  %call19 = call fastcc i32 @smsc95xx_read_eeprom(ptr noundef %dev, i32 noundef 1, i32 noundef 6, ptr noundef nonnull %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp eq i32 %call19, 0
  br i1 %cmp, label %if.then20, label %if.end18.if.end53_crit_edge

if.end18.if.end53_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.then20:                                        ; preds = %if.end18
  %18 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net, align 4
  call void @dev_addr_mod(ptr noundef %19, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #11
  %20 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net, align 4
  %dev_addr24 = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 86
  %22 = ptrtoint ptr %dev_addr24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_addr24, align 64
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %26 = and i32 %25, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.i.not.i98 = icmp eq i32 %26, 0
  br i1 %tobool.i.not.i98, label %is_valid_ether_addr.exit104, label %if.then20.if.end53_crit_edge

if.then20.if.end53_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

is_valid_ether_addr.exit104:                      ; preds = %if.then20
  %add.ptr.i.i99 = getelementptr i8, ptr %23, i32 4
  %27 = ptrtoint ptr %add.ptr.i.i99 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr.i.i99, align 2
  %conv.i.i100 = zext i16 %28 to i32
  %or.i.i101 = or i32 %25, %conv.i.i100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i101)
  %cmp.i.i102.not = icmp eq i32 %or.i.i101, 0
  br i1 %cmp.i.i102.not, label %is_valid_ether_addr.exit104.if.end53_crit_edge, label %do.body27

is_valid_ether_addr.exit104.if.end53_crit_edge:   ; preds = %is_valid_ether_addr.exit104
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

do.body27:                                        ; preds = %is_valid_ether_addr.exit104
  %msg_enable28 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 20
  %29 = ptrtoint ptr %msg_enable28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %msg_enable28, align 4
  %and29 = and i32 %30, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.body27.cleanup_crit_edge, label %do.body32

do.body27.cleanup_crit_edge:                      ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body32:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc95xx_init_mac_address.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc95xx_init_mac_address, %if.then44)) #11
          to label %cleanup [label %if.then44], !srcloc !277

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc95xx_init_mac_address.__UNIQUE_ID_ddebug365, ptr noundef %32, ptr noundef nonnull @.str.77) #11
  br label %cleanup

if.end53:                                         ; preds = %is_valid_ether_addr.exit104.if.end53_crit_edge, %if.then20.if.end53_crit_edge, %if.end18.if.end53_crit_edge
  %33 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %net, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #11
  %35 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #11
  %36 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %addr.i, align 1
  %38 = and i8 %37, -4
  %39 = or i8 %38, 2
  store i8 %39, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef %34, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #11
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 55
  %40 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #11
  %msg_enable56 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 20
  %41 = ptrtoint ptr %msg_enable56 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %msg_enable56, align 4
  %and57 = and i32 %42, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end53.cleanup_crit_edge, label %do.body60

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body60:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc95xx_init_mac_address.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc95xx_init_mac_address, %if.then72)) #11
          to label %cleanup [label %if.then72], !srcloc !277

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc95xx_init_mac_address.__UNIQUE_ID_ddebug366, ptr noundef %44, ptr noundef nonnull @.str.78) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then72, %do.body60, %if.end53.cleanup_crit_edge, %if.then44, %do.body32, %do.body27.cleanup_crit_edge, %if.then12, %do.body7, %do.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc95xx_mdiobus_read(ptr nocapture noundef readonly %bus, i32 noundef %phy_id, i32 noundef %idx) #2 align 64 {
entry:
  %buf.i74.i = alloca i32, align 4
  %buf.i.i52.i = alloca i32, align 4
  %buf.i.i = alloca i32, align 4
  %buf.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %phy_mutex.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %phy_mutex.i, i32 noundef 0) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %tobool.not.i.i.i = icmp eq ptr %1, null
  %add.i.i = add i32 %2, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i) #11
  %3 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %buf.i.i.i, align 4, !annotation !272
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %do.end9.i.i.preheader.i, !prof !273

do.end9.i.i.preheader.i:                          ; preds = %entry
  %call.i.i101.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %1, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 276, ptr noundef nonnull %buf.i.i.i, i16 noundef zeroext 4) #11, !callees !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i101.i)
  %cmp.i.i102.i = icmp slt i32 %call.i.i101.i, 0
  br i1 %cmp.i.i102.i, label %do.end9.i.i.preheader.i.if.then14.i.i.i_crit_edge, label %do.end9.i.i.preheader.i.if.end3.i.i_crit_edge

do.end9.i.i.preheader.i.if.end3.i.i_crit_edge:    ; preds = %do.end9.i.i.preheader.i
  br label %if.end3.i.i

do.end9.i.i.preheader.i.if.then14.i.i.i_crit_edge: ; preds = %do.end9.i.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14.i.i.i

do.body4.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #11, !srcloc !274
  unreachable

do.end9.i.critedge.i.i:                           ; preds = %do.cond.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i) #11
  %4 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %buf.i.i.i, align 4, !annotation !272
  %call.i.i.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %1, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 276, ptr noundef nonnull %buf.i.i.i, i16 noundef zeroext 4) #11, !callees !275
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end9.i.critedge.i.i.if.then14.i.i.i_crit_edge, label %do.end9.i.critedge.i.i.if.end3.i.i_crit_edge

do.end9.i.critedge.i.i.if.end3.i.i_crit_edge:     ; preds = %do.end9.i.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i.i

do.end9.i.critedge.i.i.if.then14.i.i.i_crit_edge: ; preds = %do.end9.i.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14.i.i.i

if.then14.i.i.i:                                  ; preds = %do.end9.i.critedge.i.i.if.then14.i.i.i_crit_edge, %do.end9.i.i.preheader.i.if.then14.i.i.i_crit_edge
  %call.i.i.lcssa.i = phi i32 [ %call.i.i101.i, %do.end9.i.i.preheader.i.if.then14.i.i.i_crit_edge ], [ %call.i.i.i, %do.end9.i.critedge.i.i.if.then14.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i.lcssa.i)
  %cmp15.not.i.i.i = icmp eq i32 %call.i.i.lcssa.i, -19
  br i1 %cmp15.not.i.i.i, label %if.then.thread.i.i, label %if.end.i.i

if.then.thread.i.i:                               ; preds = %if.then14.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #11
  br label %do.end9.i.i

if.end.i.i:                                       ; preds = %if.then14.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %5 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %6, ptr noundef nonnull @.str.22, i32 noundef 276, i32 noundef %call.i.i.lcssa.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #11
  %7 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %8, ptr noundef nonnull @.str.20) #14
  br label %if.then.i

if.end3.i.i:                                      ; preds = %do.end9.i.critedge.i.i.if.end3.i.i_crit_edge, %do.end9.i.i.preheader.i.if.end3.i.i_crit_edge
  %9 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buf.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #11
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %if.end3.i.i.do.end9.i.i_crit_edge, label %do.cond.i.i

if.end3.i.i.do.end9.i.i_crit_edge:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i.i

do.cond.i.i:                                      ; preds = %if.end3.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i)
  %cmp6.i.i = icmp sgt i32 %sub.i.i, -1
  br i1 %cmp6.i.i, label %do.end9.i.critedge.i.i, label %do.cond.i.i.if.then.i_crit_edge

do.cond.i.i.if.then.i_crit_edge:                  ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %do.cond.i.i.if.then.i_crit_edge, %if.end.i.i
  %retval.0.i.ph.i = phi i32 [ %call.i.i.lcssa.i, %if.end.i.i ], [ -5, %do.cond.i.i.if.then.i_crit_edge ]
  %net.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %13 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %14, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.__smsc95xx_mdio_read) #14
  br label %done.i

do.end9.i.i:                                      ; preds = %if.end3.i.i.do.end9.i.i_crit_edge, %if.then.thread.i.i
  %and.i.i = shl i32 %phy_id, 11
  %shl.i.i = and i32 %and.i.i, 63488
  %and1.i.i = shl i32 %idx, 6
  %shl2.i.i = and i32 %and1.i.i, 1984
  %or.i.i = or i32 %shl.i.i, %shl2.i.i
  %or3.i.i = or i32 %or.i.i, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #11
  %15 = call i32 @llvm.bswap.i32(i32 %or3.i.i) #11
  %16 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %buf.i.i, align 4
  %call.i.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %1, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 276, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i)
  %cmp14.not.i.i = icmp eq i32 %call.i.i, -19
  %or.cond.i.i = or i1 %cmp.i.i, %cmp14.not.i.i
  br i1 %or.cond.i.i, label %__smsc95xx_write_reg.exit.i, label %__smsc95xx_write_reg.exit.thread.i

__smsc95xx_write_reg.exit.thread.i:               ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %17 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %18, ptr noundef nonnull @.str.21, i32 noundef 276, i32 noundef %call.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #11
  br label %if.then4.i

__smsc95xx_write_reg.exit.i:                      ; preds = %do.end9.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i, label %__smsc95xx_write_reg.exit.i.if.then4.i_crit_edge, label %if.end9.i

__smsc95xx_write_reg.exit.i.if.then4.i_crit_edge: ; preds = %__smsc95xx_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4.i

if.then4.i:                                       ; preds = %__smsc95xx_write_reg.exit.i.if.then4.i_crit_edge, %__smsc95xx_write_reg.exit.thread.i
  br i1 %cmp14.not.i.i, label %if.then4.i.done.thread.i_crit_edge, label %if.then6.i

if.then4.i.done.thread.i_crit_edge:               ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %done.thread.i

if.then6.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  %net7.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %19 = ptrtoint ptr %net7.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net7.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %20, ptr noundef nonnull @.str.17) #14
  br label %done.i

if.end9.i:                                        ; preds = %__smsc95xx_write_reg.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %add.i56.i = add i32 %21, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i52.i) #11
  %22 = ptrtoint ptr %buf.i.i52.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %buf.i.i52.i, align 4
  %call.i.i59103.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %1, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 276, ptr noundef nonnull %buf.i.i52.i, i16 noundef zeroext 4) #11, !callees !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i59103.i)
  %cmp.i.i60104.i = icmp slt i32 %call.i.i59103.i, 0
  br i1 %cmp.i.i60104.i, label %if.end9.i.if.then14.i.i63.i_crit_edge, label %if.end9.i.if.end3.i68.i_crit_edge

if.end9.i.if.end3.i68.i_crit_edge:                ; preds = %if.end9.i
  br label %if.end3.i68.i

if.end9.i.if.then14.i.i63.i_crit_edge:            ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14.i.i63.i

do.end9.i.critedge.i58.i:                         ; preds = %do.cond.i71.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i52.i) #11
  %23 = ptrtoint ptr %buf.i.i52.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %buf.i.i52.i, align 4
  %call.i.i59.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %1, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 276, ptr noundef nonnull %buf.i.i52.i, i16 noundef zeroext 4) #11, !callees !275
  %cmp.i.i60.i = icmp slt i32 %call.i.i59.i, 0
  br i1 %cmp.i.i60.i, label %do.end9.i.critedge.i58.i.if.then14.i.i63.i_crit_edge, label %do.end9.i.critedge.i58.i.if.end3.i68.i_crit_edge

do.end9.i.critedge.i58.i.if.end3.i68.i_crit_edge: ; preds = %do.end9.i.critedge.i58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i68.i

do.end9.i.critedge.i58.i.if.then14.i.i63.i_crit_edge: ; preds = %do.end9.i.critedge.i58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14.i.i63.i

if.then14.i.i63.i:                                ; preds = %do.end9.i.critedge.i58.i.if.then14.i.i63.i_crit_edge, %if.end9.i.if.then14.i.i63.i_crit_edge
  %call.i.i59.lcssa.i = phi i32 [ %call.i.i59103.i, %if.end9.i.if.then14.i.i63.i_crit_edge ], [ %call.i.i59.i, %do.end9.i.critedge.i58.i.if.then14.i.i63.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i59.lcssa.i)
  %cmp15.not.i.i62.i = icmp eq i32 %call.i.i59.lcssa.i, -19
  br i1 %cmp15.not.i.i62.i, label %if.then.thread.i64.i, label %if.end.i66.i

if.then.thread.i64.i:                             ; preds = %if.then14.i.i63.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i52.i) #11
  br label %do.end9.i80.i

if.end.i66.i:                                     ; preds = %if.then14.i.i63.i
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i65.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %24 = ptrtoint ptr %net.i.i65.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net.i.i65.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %25, ptr noundef nonnull @.str.22, i32 noundef 276, i32 noundef %call.i.i59.lcssa.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i52.i) #11
  %26 = ptrtoint ptr %net.i.i65.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net.i.i65.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %27, ptr noundef nonnull @.str.20) #14
  br label %if.then12.i

if.end3.i68.i:                                    ; preds = %do.end9.i.critedge.i58.i.if.end3.i68.i_crit_edge, %if.end9.i.if.end3.i68.i_crit_edge
  %28 = ptrtoint ptr %buf.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %buf.i.i52.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i52.i) #11
  %30 = and i32 %29, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i67.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i67.i, label %if.end3.i68.i.do.end9.i80.i_crit_edge, label %do.cond.i71.i

if.end3.i68.i.do.end9.i80.i_crit_edge:            ; preds = %if.end3.i68.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i80.i

do.cond.i71.i:                                    ; preds = %if.end3.i68.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %sub.i69.i = sub i32 %add.i56.i, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i69.i)
  %cmp6.i70.i = icmp sgt i32 %sub.i69.i, -1
  br i1 %cmp6.i70.i, label %do.end9.i.critedge.i58.i, label %do.cond.i71.i.if.then12.i_crit_edge

do.cond.i71.i.if.then12.i_crit_edge:              ; preds = %do.cond.i71.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12.i

if.then12.i:                                      ; preds = %do.cond.i71.i.if.then12.i_crit_edge, %if.end.i66.i
  %retval.0.i72.ph.i = phi i32 [ %call.i.i59.lcssa.i, %if.end.i66.i ], [ -5, %do.cond.i71.i.if.then12.i_crit_edge ]
  %net13.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %32 = ptrtoint ptr %net13.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %net13.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %33, ptr noundef nonnull @.str.18, i32 noundef %idx) #14
  br label %done.i

do.end9.i80.i:                                    ; preds = %if.end3.i68.i.do.end9.i80.i_crit_edge, %if.then.thread.i64.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i74.i) #11
  %34 = ptrtoint ptr %buf.i74.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %buf.i74.i, align 4, !annotation !272
  %call.i78.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %1, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 280, ptr noundef nonnull %buf.i74.i, i16 noundef zeroext 4) #11, !callees !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78.i)
  %cmp.i79.i = icmp slt i32 %call.i78.i, 0
  br i1 %cmp.i79.i, label %if.then14.i.i, label %done.thread93.i

if.then14.i.i:                                    ; preds = %do.end9.i80.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i78.i)
  %cmp15.not.i.i = icmp eq i32 %call.i78.i, -19
  br i1 %cmp15.not.i.i, label %if.then17.thread.i, label %if.then19.i

if.then17.thread.i:                               ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i74.i) #11
  br label %done.thread.i

if.then19.i:                                      ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net.i81.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %35 = ptrtoint ptr %net.i81.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %net.i81.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %36, ptr noundef nonnull @.str.22, i32 noundef 280, i32 noundef %call.i78.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i74.i) #11
  %37 = ptrtoint ptr %net.i81.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %net.i81.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %38, ptr noundef nonnull @.str.19) #14
  br label %done.i

done.thread93.i:                                  ; preds = %do.end9.i80.i
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %buf.i74.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %buf.i74.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i74.i) #11
  %41 = and i32 %40, -65536
  %42 = call i32 @llvm.bswap.i32(i32 %41) #11
  call void @mutex_unlock(ptr noundef %phy_mutex.i) #11
  br label %__smsc95xx_mdio_read.exit

done.thread.i:                                    ; preds = %if.then17.thread.i, %if.then4.i.done.thread.i_crit_edge
  call void @mutex_unlock(ptr noundef %phy_mutex.i) #11
  br label %43

done.i:                                           ; preds = %if.then19.i, %if.then12.i, %if.then6.i, %if.then.i
  %ret.0.i = phi i32 [ %retval.0.i.ph.i, %if.then.i ], [ %call.i.i, %if.then6.i ], [ %retval.0.i72.ph.i, %if.then12.i ], [ %call.i78.i, %if.then19.i ]
  call void @mutex_unlock(ptr noundef %phy_mutex.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %ret.0.i)
  %cmp25.i = icmp eq i32 %ret.0.i, -19
  br i1 %cmp25.i, label %done.i._crit_edge, label %done.i.__smsc95xx_mdio_read.exit_crit_edge

done.i.__smsc95xx_mdio_read.exit_crit_edge:       ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__smsc95xx_mdio_read.exit

done.i._crit_edge:                                ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %43

43:                                               ; preds = %done.i._crit_edge, %done.thread.i
  br label %__smsc95xx_mdio_read.exit

__smsc95xx_mdio_read.exit:                        ; preds = %43, %done.i.__smsc95xx_mdio_read.exit_crit_edge, %done.thread93.i
  %44 = phi i32 [ 0, %43 ], [ %ret.0.i, %done.i.__smsc95xx_mdio_read.exit_crit_edge ], [ %42, %done.thread93.i ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc95xx_mdiobus_write(ptr nocapture noundef readonly %bus, i32 noundef %phy_id, i32 noundef %idx, i16 noundef zeroext %regval) #2 align 64 {
entry:
  %buf.i.i56.i = alloca i32, align 4
  %buf.i43.i = alloca i32, align 4
  %buf.i.i = alloca i32, align 4
  %buf.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %conv = zext i16 %regval to i32
  %phy_mutex.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %phy_mutex.i, i32 noundef 0) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %tobool.not.i.i.i = icmp eq ptr %1, null
  %add.i.i = add i32 %2, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i) #11
  %3 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %buf.i.i.i, align 4, !annotation !272
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %do.end9.i.i.preheader.i, !prof !273

do.end9.i.i.preheader.i:                          ; preds = %entry
  %call.i.i89.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %1, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 276, ptr noundef nonnull %buf.i.i.i, i16 noundef zeroext 4) #11, !callees !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i89.i)
  %cmp.i.i90.i = icmp slt i32 %call.i.i89.i, 0
  br i1 %cmp.i.i90.i, label %do.end9.i.i.preheader.i.if.then14.i.i.i_crit_edge, label %do.end9.i.i.preheader.i.if.end3.i.i_crit_edge

do.end9.i.i.preheader.i.if.end3.i.i_crit_edge:    ; preds = %do.end9.i.i.preheader.i
  br label %if.end3.i.i

do.end9.i.i.preheader.i.if.then14.i.i.i_crit_edge: ; preds = %do.end9.i.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14.i.i.i

do.body4.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #11, !srcloc !274
  unreachable

do.end9.i.critedge.i.i:                           ; preds = %do.cond.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i) #11
  %4 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %buf.i.i.i, align 4, !annotation !272
  %call.i.i.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %1, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 276, ptr noundef nonnull %buf.i.i.i, i16 noundef zeroext 4) #11, !callees !275
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end9.i.critedge.i.i.if.then14.i.i.i_crit_edge, label %do.end9.i.critedge.i.i.if.end3.i.i_crit_edge

do.end9.i.critedge.i.i.if.end3.i.i_crit_edge:     ; preds = %do.end9.i.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i.i

do.end9.i.critedge.i.i.if.then14.i.i.i_crit_edge: ; preds = %do.end9.i.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14.i.i.i

if.then14.i.i.i:                                  ; preds = %do.end9.i.critedge.i.i.if.then14.i.i.i_crit_edge, %do.end9.i.i.preheader.i.if.then14.i.i.i_crit_edge
  %call.i.i.lcssa.i = phi i32 [ %call.i.i89.i, %do.end9.i.i.preheader.i.if.then14.i.i.i_crit_edge ], [ %call.i.i.i, %do.end9.i.critedge.i.i.if.then14.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i.lcssa.i)
  %cmp15.not.i.i.i = icmp eq i32 %call.i.i.lcssa.i, -19
  br i1 %cmp15.not.i.i.i, label %if.then.thread.i.i, label %if.end.i.i

if.then.thread.i.i:                               ; preds = %if.then14.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #11
  br label %do.end9.i.i

if.end.i.i:                                       ; preds = %if.then14.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %5 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %6, ptr noundef nonnull @.str.22, i32 noundef 276, i32 noundef %call.i.i.lcssa.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #11
  %7 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %8, ptr noundef nonnull @.str.20) #14
  br label %if.then.i

if.end3.i.i:                                      ; preds = %do.end9.i.critedge.i.i.if.end3.i.i_crit_edge, %do.end9.i.i.preheader.i.if.end3.i.i_crit_edge
  %9 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buf.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #11
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %if.end3.i.i.do.end9.i.i_crit_edge, label %do.cond.i.i

if.end3.i.i.do.end9.i.i_crit_edge:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i.i

do.cond.i.i:                                      ; preds = %if.end3.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i)
  %cmp6.i.i = icmp sgt i32 %sub.i.i, -1
  br i1 %cmp6.i.i, label %do.end9.i.critedge.i.i, label %do.cond.i.i.if.then.i_crit_edge

do.cond.i.i.if.then.i_crit_edge:                  ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %do.cond.i.i.if.then.i_crit_edge, %if.end.i.i
  %net.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %13 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %14, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.__smsc95xx_mdio_write) #14
  br label %__smsc95xx_mdio_write.exit

do.end9.i.i:                                      ; preds = %if.end3.i.i.do.end9.i.i_crit_edge, %if.then.thread.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #11
  %15 = call i32 @llvm.bswap.i32(i32 %conv) #11
  %16 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %buf.i.i, align 4
  %call.i.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %1, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 280, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i)
  %cmp14.not.i.i = icmp eq i32 %call.i.i, -19
  %or.cond.i.i = or i1 %cmp.i.i, %cmp14.not.i.i
  br i1 %or.cond.i.i, label %__smsc95xx_write_reg.exit.i, label %__smsc95xx_write_reg.exit.thread.i

__smsc95xx_write_reg.exit.thread.i:               ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %17 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %18, ptr noundef nonnull @.str.21, i32 noundef 280, i32 noundef %call.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #11
  br label %if.then3.i

__smsc95xx_write_reg.exit.i:                      ; preds = %do.end9.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i, label %__smsc95xx_write_reg.exit.i.if.then3.i_crit_edge, label %do.end9.i52.i

__smsc95xx_write_reg.exit.i.if.then3.i_crit_edge: ; preds = %__smsc95xx_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3.i

if.then3.i:                                       ; preds = %__smsc95xx_write_reg.exit.i.if.then3.i_crit_edge, %__smsc95xx_write_reg.exit.thread.i
  br i1 %cmp14.not.i.i, label %if.then3.i.__smsc95xx_mdio_write.exit_crit_edge, label %if.then5.i

if.then3.i.__smsc95xx_mdio_write.exit_crit_edge:  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__smsc95xx_mdio_write.exit

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  %net6.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %19 = ptrtoint ptr %net6.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net6.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %20, ptr noundef nonnull @.str.32) #14
  br label %__smsc95xx_mdio_write.exit

do.end9.i52.i:                                    ; preds = %__smsc95xx_write_reg.exit.i
  %and.i.i = shl i32 %phy_id, 11
  %shl.i.i = and i32 %and.i.i, 63488
  %and1.i.i = shl i32 %idx, 6
  %shl2.i.i = and i32 %and1.i.i, 1984
  %or.i.i = or i32 %shl.i.i, %shl2.i.i
  %or3.i.i = or i32 %or.i.i, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i43.i) #11
  %21 = call i32 @llvm.bswap.i32(i32 %or3.i.i) #11
  %22 = ptrtoint ptr %buf.i43.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %buf.i43.i, align 4
  %call.i48.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %1, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 276, ptr noundef nonnull %buf.i43.i, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i48.i)
  %cmp.i49.i = icmp sgt i32 %call.i48.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i48.i)
  %cmp14.not.i50.i = icmp eq i32 %call.i48.i, -19
  %or.cond.i51.i = or i1 %cmp.i49.i, %cmp14.not.i50.i
  br i1 %or.cond.i51.i, label %__smsc95xx_write_reg.exit55.i, label %__smsc95xx_write_reg.exit55.thread.i

__smsc95xx_write_reg.exit55.thread.i:             ; preds = %do.end9.i52.i
  call void @__sanitizer_cov_trace_pc() #13
  %net.i53.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %23 = ptrtoint ptr %net.i53.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %net.i53.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %24, ptr noundef nonnull @.str.21, i32 noundef 276, i32 noundef %call.i48.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i43.i) #11
  br label %if.then12.i

__smsc95xx_write_reg.exit55.i:                    ; preds = %do.end9.i52.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i43.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48.i)
  %cmp11.i = icmp slt i32 %call.i48.i, 0
  br i1 %cmp11.i, label %__smsc95xx_write_reg.exit55.i.if.then12.i_crit_edge, label %if.end17.i

__smsc95xx_write_reg.exit55.i.if.then12.i_crit_edge: ; preds = %__smsc95xx_write_reg.exit55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12.i

if.then12.i:                                      ; preds = %__smsc95xx_write_reg.exit55.i.if.then12.i_crit_edge, %__smsc95xx_write_reg.exit55.thread.i
  br i1 %cmp14.not.i50.i, label %if.then12.i.__smsc95xx_mdio_write.exit_crit_edge, label %if.then14.i

if.then12.i.__smsc95xx_mdio_write.exit_crit_edge: ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__smsc95xx_mdio_write.exit

if.then14.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #13
  %net15.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %25 = ptrtoint ptr %net15.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %net15.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %26, ptr noundef nonnull @.str.17) #14
  br label %__smsc95xx_mdio_write.exit

if.end17.i:                                       ; preds = %__smsc95xx_write_reg.exit55.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %add.i60.i = add i32 %27, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i56.i) #11
  %28 = ptrtoint ptr %buf.i.i56.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %buf.i.i56.i, align 4
  %call.i.i6391.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %1, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 276, ptr noundef nonnull %buf.i.i56.i, i16 noundef zeroext 4) #11, !callees !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i6391.i)
  %cmp.i.i6492.i = icmp slt i32 %call.i.i6391.i, 0
  br i1 %cmp.i.i6492.i, label %if.end17.i.if.then14.i.i67.i_crit_edge, label %if.end17.i.if.end3.i72.i_crit_edge

if.end17.i.if.end3.i72.i_crit_edge:               ; preds = %if.end17.i
  br label %if.end3.i72.i

if.end17.i.if.then14.i.i67.i_crit_edge:           ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14.i.i67.i

do.end9.i.critedge.i62.i:                         ; preds = %do.cond.i75.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i56.i) #11
  %29 = ptrtoint ptr %buf.i.i56.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %buf.i.i56.i, align 4
  %call.i.i63.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %1, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 276, ptr noundef nonnull %buf.i.i56.i, i16 noundef zeroext 4) #11, !callees !275
  %cmp.i.i64.i = icmp slt i32 %call.i.i63.i, 0
  br i1 %cmp.i.i64.i, label %do.end9.i.critedge.i62.i.if.then14.i.i67.i_crit_edge, label %do.end9.i.critedge.i62.i.if.end3.i72.i_crit_edge

do.end9.i.critedge.i62.i.if.end3.i72.i_crit_edge: ; preds = %do.end9.i.critedge.i62.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i72.i

do.end9.i.critedge.i62.i.if.then14.i.i67.i_crit_edge: ; preds = %do.end9.i.critedge.i62.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14.i.i67.i

if.then14.i.i67.i:                                ; preds = %do.end9.i.critedge.i62.i.if.then14.i.i67.i_crit_edge, %if.end17.i.if.then14.i.i67.i_crit_edge
  %call.i.i63.lcssa.i = phi i32 [ %call.i.i6391.i, %if.end17.i.if.then14.i.i67.i_crit_edge ], [ %call.i.i63.i, %do.end9.i.critedge.i62.i.if.then14.i.i67.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i63.lcssa.i)
  %cmp15.not.i.i66.i = icmp eq i32 %call.i.i63.lcssa.i, -19
  br i1 %cmp15.not.i.i66.i, label %if.then.thread.i68.i, label %if.end.i70.i

if.then.thread.i68.i:                             ; preds = %if.then14.i.i67.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i56.i) #11
  br label %__smsc95xx_mdio_write.exit

if.end.i70.i:                                     ; preds = %if.then14.i.i67.i
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i69.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %30 = ptrtoint ptr %net.i.i69.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %net.i.i69.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %31, ptr noundef nonnull @.str.22, i32 noundef 276, i32 noundef %call.i.i63.lcssa.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i56.i) #11
  %32 = ptrtoint ptr %net.i.i69.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %net.i.i69.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %33, ptr noundef nonnull @.str.20) #14
  br label %if.then20.i

if.end3.i72.i:                                    ; preds = %do.end9.i.critedge.i62.i.if.end3.i72.i_crit_edge, %if.end17.i.if.end3.i72.i_crit_edge
  %34 = ptrtoint ptr %buf.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %buf.i.i56.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i56.i) #11
  %36 = and i32 %35, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i71.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i71.i, label %if.end3.i72.i.__smsc95xx_mdio_write.exit_crit_edge, label %do.cond.i75.i

if.end3.i72.i.__smsc95xx_mdio_write.exit_crit_edge: ; preds = %if.end3.i72.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__smsc95xx_mdio_write.exit

do.cond.i75.i:                                    ; preds = %if.end3.i72.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %sub.i73.i = sub i32 %add.i60.i, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i73.i)
  %cmp6.i74.i = icmp sgt i32 %sub.i73.i, -1
  br i1 %cmp6.i74.i, label %do.end9.i.critedge.i62.i, label %do.cond.i75.i.if.then20.i_crit_edge

do.cond.i75.i.if.then20.i_crit_edge:              ; preds = %do.cond.i75.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20.i

if.then20.i:                                      ; preds = %do.cond.i75.i.if.then20.i_crit_edge, %if.end.i70.i
  %net21.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %38 = ptrtoint ptr %net21.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %net21.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %39, ptr noundef nonnull @.str.33, i32 noundef %idx) #14
  br label %__smsc95xx_mdio_write.exit

__smsc95xx_mdio_write.exit:                       ; preds = %if.then20.i, %if.end3.i72.i.__smsc95xx_mdio_write.exit_crit_edge, %if.then.thread.i68.i, %if.then14.i, %if.then12.i.__smsc95xx_mdio_write.exit_crit_edge, %if.then5.i, %if.then3.i.__smsc95xx_mdio_write.exit_crit_edge, %if.then.i
  call void @mutex_unlock(ptr noundef %phy_mutex.i) #11
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_find_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_connect_direct(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smsc95xx_handle_link_change(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %phydev = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  tail call void @phy_print_status(ptr noundef %1) #11
  tail call void @usbnet_defer_kevent(ptr noundef %add.ptr.i, i32 noundef 11) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_attached_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc95xx_read_eeprom(ptr noundef %dev, i32 noundef %offset, i32 noundef %length, ptr noundef writeonly %data) unnamed_addr #2 align 64 {
entry:
  %buf.i.i67 = alloca i32, align 4
  %buf.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !273

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 357, 0\0A.popsection", ""() #11, !srcloc !284
  unreachable

do.body10:                                        ; preds = %entry
  %tobool11.not = icmp eq ptr %data, null
  br i1 %tobool11.not, label %do.body21, label %do.end29, !prof !273

do.body21:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 358, 0\0A.popsection", ""() #11, !srcloc !285
  unreachable

do.end29:                                         ; preds = %do.body10
  %call = tail call fastcc i32 @smsc95xx_eeprom_confirm_not_busy(ptr noundef nonnull %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool30.not = icmp eq i32 %call, 0
  br i1 %tobool30.not, label %for.cond.preheader, label %do.end29.cleanup_crit_edge

do.end29.cleanup_crit_edge:                       ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %do.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp79.not = icmp eq i32 %length, 0
  br i1 %cmp79.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.do.end9.i.i_crit_edge

for.cond.preheader.do.end9.i.i_crit_edge:         ; preds = %for.cond.preheader
  br label %do.end9.i.i

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end9.i.i:                                      ; preds = %if.end45.do.end9.i.i_crit_edge, %for.cond.preheader.do.end9.i.i_crit_edge
  %i.081 = phi i32 [ %inc47, %if.end45.do.end9.i.i_crit_edge ], [ 0, %for.cond.preheader.do.end9.i.i_crit_edge ]
  %offset.addr.080 = phi i32 [ %inc, %if.end45.do.end9.i.i_crit_edge ], [ %offset, %for.cond.preheader.do.end9.i.i_crit_edge ]
  %and = and i32 %offset.addr.080, 511
  %or = or i32 %and, -2147483648
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #11
  %0 = call i32 @llvm.bswap.i32(i32 %or) #11
  %1 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %buf.i.i, align 4
  %call.i.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 48, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i)
  %cmp14.not.i.i = icmp eq i32 %call.i.i, -19
  %or.cond.i.i = or i1 %cmp.i.i, %cmp14.not.i.i
  br i1 %or.cond.i.i, label %smsc95xx_write_reg.exit, label %smsc95xx_write_reg.exit.thread

smsc95xx_write_reg.exit.thread:                   ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %3, ptr noundef nonnull @.str.21, i32 noundef 48, i32 noundef %call.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #11
  br label %cleanup.sink.split

smsc95xx_write_reg.exit:                          ; preds = %do.end9.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp34 = icmp slt i32 %call.i.i, 0
  br i1 %cmp34, label %smsc95xx_write_reg.exit.cleanup.sink.split_crit_edge, label %if.end36

smsc95xx_write_reg.exit.cleanup.sink.split_crit_edge: ; preds = %smsc95xx_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end36:                                         ; preds = %smsc95xx_write_reg.exit
  %call37 = call fastcc i32 @smsc95xx_wait_eeprom(ptr noundef nonnull %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end36.cleanup_crit_edge, label %do.end9.i.i72

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end9.i.i72:                                    ; preds = %if.end36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i67) #11
  %4 = ptrtoint ptr %buf.i.i67 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %buf.i.i67, align 4, !annotation !272
  %call.i.i70 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 52, ptr noundef nonnull %buf.i.i67, i16 noundef zeroext 4) #11, !callees !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i70)
  %cmp.i.i71 = icmp slt i32 %call.i.i70, 0
  br i1 %cmp.i.i71, label %if.then14.i.i, label %if.end45

if.then14.i.i:                                    ; preds = %do.end9.i.i72
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i70)
  %cmp15.not.i.i = icmp eq i32 %call.i.i70, -19
  br i1 %cmp15.not.i.i, label %if.then14.i.i.if.then43_crit_edge, label %if.then17.i.i

if.then14.i.i.if.then43_crit_edge:                ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then43

if.then17.i.i:                                    ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i73 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %5 = ptrtoint ptr %net.i.i73 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net.i.i73, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %6, ptr noundef nonnull @.str.22, i32 noundef 52, i32 noundef %call.i.i70) #14
  br label %if.then43

if.then43:                                        ; preds = %if.then17.i.i, %if.then14.i.i.if.then43_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i67) #11
  br label %cleanup.sink.split

if.end45:                                         ; preds = %do.end9.i.i72
  %7 = ptrtoint ptr %buf.i.i67 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buf.i.i67, align 4
  %9 = lshr i32 %8, 24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i67) #11
  %conv = trunc i32 %9 to i8
  %arrayidx = getelementptr i8, ptr %data, i32 %i.081
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %arrayidx, align 1
  %inc = add i32 %offset.addr.080, 1
  %inc47 = add nuw i32 %i.081, 1
  %exitcond.not = icmp eq i32 %inc47, %length
  br i1 %exitcond.not, label %if.end45.cleanup_crit_edge, label %if.end45.do.end9.i.i_crit_edge

if.end45.do.end9.i.i_crit_edge:                   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i.i

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then43, %smsc95xx_write_reg.exit.cleanup.sink.split_crit_edge, %smsc95xx_write_reg.exit.thread
  %.str.80.sink = phi ptr [ @.str.80, %if.then43 ], [ @.str.79, %smsc95xx_write_reg.exit.thread ], [ @.str.79, %smsc95xx_write_reg.exit.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i.i70, %if.then43 ], [ %call.i.i, %smsc95xx_write_reg.exit.thread ], [ %call.i.i, %smsc95xx_write_reg.exit.cleanup.sink.split_crit_edge ]
  %net44 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %11 = ptrtoint ptr %net44 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net44, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %12, ptr noundef nonnull %.str.80.sink) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end45.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %do.end29.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end29.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ %call37, %if.end36.cleanup_crit_edge ], [ 0, %if.end45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc95xx_eeprom_confirm_not_busy(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %buf.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %tobool.not.i.i = icmp eq ptr %dev, null
  %add = add i32 %0, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #11
  %1 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %buf.i.i, align 4, !annotation !272
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i.preheader, !prof !273

do.end9.i.i.preheader:                            ; preds = %entry
  %call.i.i20 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 48, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #11, !callees !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i20)
  %cmp.i.i21 = icmp slt i32 %call.i.i20, 0
  br i1 %cmp.i.i21, label %do.end9.i.i.preheader.if.then14.i.i_crit_edge, label %do.end9.i.i.preheader.if.end_crit_edge

do.end9.i.i.preheader.if.end_crit_edge:           ; preds = %do.end9.i.i.preheader
  br label %if.end

do.end9.i.i.preheader.if.then14.i.i_crit_edge:    ; preds = %do.end9.i.i.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14.i.i

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #11, !srcloc !274
  unreachable

do.end9.i.i.critedge:                             ; preds = %if.end2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #11
  %2 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %buf.i.i, align 4, !annotation !272
  %call.i.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 48, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #11, !callees !275
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end9.i.i.critedge.if.then14.i.i_crit_edge, label %do.end9.i.i.critedge.if.end_crit_edge

do.end9.i.i.critedge.if.end_crit_edge:            ; preds = %do.end9.i.i.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end9.i.i.critedge.if.then14.i.i_crit_edge:     ; preds = %do.end9.i.i.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14.i.i

if.then14.i.i:                                    ; preds = %do.end9.i.i.critedge.if.then14.i.i_crit_edge, %do.end9.i.i.preheader.if.then14.i.i_crit_edge
  %call.i.i.lcssa = phi i32 [ %call.i.i20, %do.end9.i.i.preheader.if.then14.i.i_crit_edge ], [ %call.i.i, %do.end9.i.i.critedge.if.then14.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i.lcssa)
  %cmp15.not.i.i = icmp eq i32 %call.i.i.lcssa, -19
  br i1 %cmp15.not.i.i, label %if.then14.i.i.if.then_crit_edge, label %if.then17.i.i

if.then14.i.i.if.then_crit_edge:                  ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then17.i.i:                                    ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %3 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %4, ptr noundef nonnull @.str.22, i32 noundef 48, i32 noundef %call.i.i.lcssa) #14
  br label %if.then

if.then:                                          ; preds = %if.then17.i.i, %if.then14.i.i.if.then_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #11
  br label %cleanup.sink.split

if.end:                                           ; preds = %do.end9.i.i.critedge.if.end_crit_edge, %do.end9.i.i.preheader.if.end_crit_edge
  %5 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %buf.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #11
  %.mask = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool.not = icmp eq i32 %.mask, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %7(i32 noundef 8589920) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp3 = icmp sgt i32 %sub, -1
  br i1 %cmp3, label %do.end9.i.i.critedge, label %if.end2.cleanup.sink.split_crit_edge

if.end2.cleanup.sink.split_crit_edge:             ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end2.cleanup.sink.split_crit_edge, %if.then
  %.str.82.sink = phi ptr [ @.str.81, %if.then ], [ @.str.82, %if.end2.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i.i.lcssa, %if.then ], [ -5, %if.end2.cleanup.sink.split_crit_edge ]
  %net4 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %9 = ptrtoint ptr %net4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net4, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %10, ptr noundef nonnull %.str.82.sink) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.ph, %cleanup.sink.split ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc95xx_wait_eeprom(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %buf.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %tobool.not.i.i = icmp eq ptr %dev, null
  %add = add i32 %0, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #11
  %1 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %buf.i.i, align 4, !annotation !272
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i.preheader, !prof !273

do.end9.i.i.preheader:                            ; preds = %entry
  %call.i.i29 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 48, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #11, !callees !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i29)
  %cmp.i.i30 = icmp slt i32 %call.i.i29, 0
  br i1 %cmp.i.i30, label %do.end9.i.i.preheader.if.then14.i.i_crit_edge, label %do.end9.i.i.preheader.if.end_crit_edge

do.end9.i.i.preheader.if.end_crit_edge:           ; preds = %do.end9.i.i.preheader
  br label %if.end

do.end9.i.i.preheader.if.then14.i.i_crit_edge:    ; preds = %do.end9.i.i.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14.i.i

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #11, !srcloc !274
  unreachable

do.end9.i.i.critedge:                             ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #11
  %2 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %buf.i.i, align 4, !annotation !272
  %call.i.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 48, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #11, !callees !275
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end9.i.i.critedge.if.then14.i.i_crit_edge, label %do.end9.i.i.critedge.if.end_crit_edge

do.end9.i.i.critedge.if.end_crit_edge:            ; preds = %do.end9.i.i.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end9.i.i.critedge.if.then14.i.i_crit_edge:     ; preds = %do.end9.i.i.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14.i.i

if.then14.i.i:                                    ; preds = %do.end9.i.i.critedge.if.then14.i.i_crit_edge, %do.end9.i.i.preheader.if.then14.i.i_crit_edge
  %call.i.i.lcssa = phi i32 [ %call.i.i29, %do.end9.i.i.preheader.if.then14.i.i_crit_edge ], [ %call.i.i, %do.end9.i.i.critedge.if.then14.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i.lcssa)
  %cmp15.not.i.i = icmp eq i32 %call.i.i.lcssa, -19
  br i1 %cmp15.not.i.i, label %if.then14.i.i.if.then_crit_edge, label %if.then17.i.i

if.then14.i.i.if.then_crit_edge:                  ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then17.i.i:                                    ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %3 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %4, ptr noundef nonnull @.str.22, i32 noundef 48, i32 noundef %call.i.i.lcssa) #14
  br label %if.then

if.then:                                          ; preds = %if.then17.i.i, %if.then14.i.i.if.then_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #11
  br label %cleanup.sink.split

if.end:                                           ; preds = %do.end9.i.i.critedge.if.end_crit_edge, %do.end9.i.i.preheader.if.end_crit_edge
  %5 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %buf.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #11
  %7 = and i32 %6, 262272
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %7, label %if.end.cleanup.sink.split_crit_edge [
    i32 128, label %if.end4
    i32 0, label %if.end.cleanup_crit_edge
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 8589920) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp5 = icmp sgt i32 %sub, -1
  br i1 %cmp5, label %do.end9.i.i.critedge, label %if.end4.cleanup.sink.split_crit_edge

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end4.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge, %if.then
  %.str.83.sink = phi ptr [ @.str.81, %if.then ], [ @.str.83, %if.end.cleanup.sink.split_crit_edge ], [ @.str.83, %if.end4.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i.i.lcssa, %if.then ], [ -5, %if.end.cleanup.sink.split_crit_edge ], [ -5, %if.end4.cleanup.sink.split_crit_edge ]
  %net9 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %11 = ptrtoint ptr %net9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net9, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %12, ptr noundef nonnull %.str.83.sink) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.ph, %cleanup.sink.split ], [ %7, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_open(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_stop(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_start_xmit(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc95xx_ioctl(ptr noundef %netdev, ptr noundef %rq, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %phydev = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 145
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 16
  %call1 = tail call i32 @phy_mii_ioctl(ptr noundef %3, ptr noundef %rq, i32 noundef %cmd) #11
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_change_mtu(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_tx_timeout(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_get_tstats64(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mii_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_get_drvinfo(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smsc95xx_ethtool_getregslen(ptr nocapture noundef readnone %netdev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 308
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smsc95xx_ethtool_getregs(ptr noundef %netdev, ptr nocapture noundef writeonly %regs, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %buf.i.i19 = alloca i32, align 4
  %buf.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #11
  %0 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %buf.i.i, align 4, !annotation !272
  %tobool.not.i.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !273

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #11, !srcloc !274
  unreachable

do.end9.i.i:                                      ; preds = %entry
  %call.i.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #11, !callees !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then14.i.i, label %smsc95xx_read_reg.exit

if.then14.i.i:                                    ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i)
  %cmp15.not.i.i = icmp eq i32 %call.i.i, -19
  br i1 %cmp15.not.i.i, label %if.then14.i.i.if.then_crit_edge, label %if.then17.i.i

if.then14.i.i.if.then_crit_edge:                  ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then17.i.i:                                    ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i = getelementptr i8, ptr %netdev, i32 2548
  %1 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %2, ptr noundef nonnull @.str.22, i32 noundef 0, i32 noundef %call.i.i) #14
  br label %if.then

smsc95xx_read_reg.exit:                           ; preds = %do.end9.i.i
  %3 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %buf.i.i, align 4
  %5 = call i32 @llvm.bswap.i32(i32 %4) #11
  %6 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %version, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #11
  br label %do.end9.i.i24

if.then:                                          ; preds = %if.then17.i.i, %if.then14.i.i.if.then_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #11
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.84) #14
  br label %cleanup

do.end9.i.i24:                                    ; preds = %for.inc.do.end9.i.i24_crit_edge, %smsc95xx_read_reg.exit
  %j.034 = phi i32 [ 0, %smsc95xx_read_reg.exit ], [ %inc, %for.inc.do.end9.i.i24_crit_edge ]
  %i.033 = phi i32 [ 0, %smsc95xx_read_reg.exit ], [ %add, %for.inc.do.end9.i.i24_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i19) #11
  %7 = ptrtoint ptr %buf.i.i19 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %buf.i.i19, align 4, !annotation !272
  %conv.i.i = trunc i32 %i.033 to i16
  %call.i.i22 = call i32 @usbnet_read_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext %conv.i.i, ptr noundef nonnull %buf.i.i19, i16 noundef zeroext 4) #11, !callees !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i22)
  %cmp.i.i23 = icmp slt i32 %call.i.i22, 0
  br i1 %cmp.i.i23, label %if.then14.i.i26, label %for.inc

if.then14.i.i26:                                  ; preds = %do.end9.i.i24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i22)
  %cmp15.not.i.i25 = icmp eq i32 %call.i.i22, -19
  br i1 %cmp15.not.i.i25, label %if.then14.i.i26.if.then5_crit_edge, label %if.then17.i.i28

if.then14.i.i26.if.then5_crit_edge:               ; preds = %if.then14.i.i26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5

if.then17.i.i28:                                  ; preds = %if.then14.i.i26
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i27 = getelementptr i8, ptr %netdev, i32 2548
  %8 = ptrtoint ptr %net.i.i27 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net.i.i27, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %9, ptr noundef nonnull @.str.22, i32 noundef %i.033, i32 noundef %call.i.i22) #14
  br label %if.then5

if.then5:                                         ; preds = %if.then17.i.i28, %if.then14.i.i26.if.then5_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i19) #11
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.85, i32 noundef %i.033) #14
  br label %cleanup

for.inc:                                          ; preds = %do.end9.i.i24
  %arrayidx = getelementptr i32, ptr %buf, i32 %j.034
  %10 = ptrtoint ptr %buf.i.i19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf.i.i19, align 4
  %12 = call i32 @llvm.bswap.i32(i32 %11) #11
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i19) #11
  %add = add nuw nsw i32 %i.033, 4
  %inc = add nuw nsw i32 %j.034, 1
  %exitcond.not = icmp eq i32 %inc, 77
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.do.end9.i.i24_crit_edge

for.inc.do.end9.i.i24_crit_edge:                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i.i24

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then5, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @smsc95xx_ethtool_get_wol(ptr nocapture noundef readonly %net, ptr nocapture noundef writeonly %wolinfo) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr i8, ptr %net, i32 2320
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wolinfo, i32 0, i32 1
  %2 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 63, ptr %supported, align 4
  %wolopts = getelementptr inbounds %struct.smsc95xx_priv, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wolopts, align 4
  %wolopts1 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wolinfo, i32 0, i32 2
  %5 = ptrtoint ptr %wolopts1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %wolopts1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc95xx_ethtool_set_wol(ptr nocapture noundef readonly %net, ptr nocapture noundef readonly %wolinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wolinfo, i32 0, i32 2
  %0 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wolopts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %tobool.not = icmp ult i32 %1, 64
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %driver_priv = getelementptr i8, ptr %net, i32 2320
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %wolopts3 = getelementptr inbounds %struct.smsc95xx_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %wolopts3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %1, ptr %wolopts3, align 4
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 4
  %dev4 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool6 = icmp ne i32 %1, 0
  %call7 = tail call i32 @device_set_wakeup_enable(ptr noundef %dev4, i1 noundef zeroext %tobool6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.then8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %net9 = getelementptr i8, ptr %net, i32 2548
  %7 = ptrtoint ptr %net9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net9, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %8, ptr noundef nonnull @.str.86, i32 noundef %call7) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call7, %if.then8 ], [ %call7, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_msglevel(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_set_msglevel(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_nway_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc95xx_get_link(ptr nocapture noundef readonly %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %drv.i = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.phy_read_status.exit_crit_edge, label %if.end.i

entry.phy_read_status.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %phy_read_status.exit

if.end.i:                                         ; preds = %entry
  %read_status.i = getelementptr inbounds %struct.phy_driver, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %read_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_status.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 %5(ptr noundef %1) #11
  br label %phy_read_status.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i = tail call i32 @genphy_read_status(ptr noundef %1) #11
  br label %phy_read_status.exit

phy_read_status.exit:                             ; preds = %if.else.i, %if.then3.i, %entry.phy_read_status.exit_crit_edge
  %6 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phydev, align 16
  %link = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load = load i16, ptr %link, align 8
  %bf.lshr = lshr i16 %bf.load, 2
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  ret i32 %bf.cast
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smsc95xx_ethtool_get_eeprom_len(ptr nocapture noundef readnone %net) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 512
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc95xx_ethtool_get_eeprom(ptr noundef %netdev, ptr nocapture noundef %ee, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 1
  %0 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 38144, ptr %magic, align 4
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 2
  %1 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %offset, align 4
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 3
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  %call1 = tail call fastcc i32 @smsc95xx_read_eeprom(ptr noundef %add.ptr.i, i32 noundef %2, i32 noundef %4, ptr noundef %data)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc95xx_ethtool_set_eeprom(ptr noundef %netdev, ptr nocapture noundef readonly %ee, ptr noundef readonly %data) #2 align 64 {
entry:
  %buf.i.i98.i = alloca i32, align 4
  %buf.i.i87.i = alloca i32, align 4
  %buf.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 1
  %0 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %magic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38144, i32 %1)
  %cmp.not = icmp eq i32 %1, 38144
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %net = getelementptr i8, ptr %netdev, i32 2548
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %3, ptr noundef nonnull @.str.87, i32 noundef %1) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 2
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 3
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.body10.i, !prof !273

do.body4.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 395, 0\0A.popsection", ""() #11, !srcloc !286
  unreachable

do.body10.i:                                      ; preds = %if.end
  %tobool11.not.i = icmp eq ptr %data, null
  br i1 %tobool11.not.i, label %do.body21.i, label %do.end29.i, !prof !273

do.body21.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 396, 0\0A.popsection", ""() #11, !srcloc !287
  unreachable

do.end29.i:                                       ; preds = %do.body10.i
  %call.i = tail call fastcc i32 @smsc95xx_eeprom_confirm_not_busy(ptr noundef nonnull %add.ptr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool30.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool30.not.i, label %do.end9.i.i.i, label %do.end29.i.cleanup_crit_edge

do.end29.i.cleanup_crit_edge:                     ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end9.i.i.i:                                    ; preds = %do.end29.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i) #11
  %8 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 160, ptr %buf.i.i.i, align 4
  %call.i.i.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 48, ptr noundef nonnull %buf.i.i.i, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %cmp.i.i.i = icmp sgt i32 %call.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i.i)
  %cmp14.not.i.i.i = icmp eq i32 %call.i.i.i, -19
  %or.cond.i.i.i = or i1 %cmp.i.i.i, %cmp14.not.i.i.i
  br i1 %or.cond.i.i.i, label %smsc95xx_write_reg.exit.i, label %smsc95xx_write_reg.exit.thread.i

smsc95xx_write_reg.exit.thread.i:                 ; preds = %do.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i.i = getelementptr i8, ptr %netdev, i32 2548
  %9 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %10, ptr noundef nonnull @.str.21, i32 noundef 48, i32 noundef %call.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #11
  br label %cleanup.sink.split.i

smsc95xx_write_reg.exit.i:                        ; preds = %do.end9.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %smsc95xx_write_reg.exit.i.cleanup.sink.split.i_crit_edge, label %if.end35.i

smsc95xx_write_reg.exit.i.cleanup.sink.split.i_crit_edge: ; preds = %smsc95xx_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

if.end35.i:                                       ; preds = %smsc95xx_write_reg.exit.i
  %call36.i = call fastcc i32 @smsc95xx_wait_eeprom(ptr noundef nonnull %add.ptr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %cmp37.i = icmp slt i32 %call36.i, 0
  br i1 %cmp37.i, label %if.end35.i.cleanup_crit_edge, label %for.cond.preheader.i

if.end35.i.cleanup_crit_edge:                     ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp40118.not.i = icmp eq i32 %7, 0
  br i1 %cmp40118.not.i, label %for.cond.preheader.i.cleanup_crit_edge, label %for.cond.preheader.i.do.end9.i.i94.i_crit_edge

for.cond.preheader.i.do.end9.i.i94.i_crit_edge:   ; preds = %for.cond.preheader.i
  br label %do.end9.i.i94.i

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end9.i.i94.i:                                  ; preds = %if.end57.i.do.end9.i.i94.i_crit_edge, %for.cond.preheader.i.do.end9.i.i94.i_crit_edge
  %i.0120.i = phi i32 [ %inc58.i, %if.end57.i.do.end9.i.i94.i_crit_edge ], [ 0, %for.cond.preheader.i.do.end9.i.i94.i_crit_edge ]
  %offset.addr.0119.i = phi i32 [ %inc.i, %if.end57.i.do.end9.i.i94.i_crit_edge ], [ %5, %for.cond.preheader.i.do.end9.i.i94.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %data, i32 %i.0120.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %12 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i87.i) #11
  %13 = shl nuw i32 %conv.i, 24
  %14 = ptrtoint ptr %buf.i.i87.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %buf.i.i87.i, align 4
  %call.i.i90.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 52, ptr noundef nonnull %buf.i.i87.i, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i90.i)
  %cmp.i.i91.i = icmp sgt i32 %call.i.i90.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i90.i)
  %cmp14.not.i.i92.i = icmp eq i32 %call.i.i90.i, -19
  %or.cond.i.i93.i = or i1 %cmp.i.i91.i, %cmp14.not.i.i92.i
  br i1 %or.cond.i.i93.i, label %smsc95xx_write_reg.exit97.i, label %smsc95xx_write_reg.exit97.thread.i

smsc95xx_write_reg.exit97.thread.i:               ; preds = %do.end9.i.i94.i
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i95.i = getelementptr i8, ptr %netdev, i32 2548
  %15 = ptrtoint ptr %net.i.i95.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net.i.i95.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %16, ptr noundef nonnull @.str.21, i32 noundef 52, i32 noundef %call.i.i90.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i87.i) #11
  br label %cleanup.sink.split.i

smsc95xx_write_reg.exit97.i:                      ; preds = %do.end9.i.i94.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i87.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i90.i)
  %cmp42.i = icmp slt i32 %call.i.i90.i, 0
  br i1 %cmp42.i, label %smsc95xx_write_reg.exit97.i.cleanup.sink.split.i_crit_edge, label %do.end9.i.i105.i

smsc95xx_write_reg.exit97.i.cleanup.sink.split.i_crit_edge: ; preds = %smsc95xx_write_reg.exit97.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

do.end9.i.i105.i:                                 ; preds = %smsc95xx_write_reg.exit97.i
  %and.i = and i32 %offset.addr.0119.i, 511
  %or.i = or i32 %and.i, -1342177280
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i98.i) #11
  %17 = call i32 @llvm.bswap.i32(i32 %or.i) #11
  %18 = ptrtoint ptr %buf.i.i98.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %buf.i.i98.i, align 4
  %call.i.i101.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 48, ptr noundef nonnull %buf.i.i98.i, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i101.i)
  %cmp.i.i102.i = icmp sgt i32 %call.i.i101.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i101.i)
  %cmp14.not.i.i103.i = icmp eq i32 %call.i.i101.i, -19
  %or.cond.i.i104.i = or i1 %cmp.i.i102.i, %cmp14.not.i.i103.i
  br i1 %or.cond.i.i104.i, label %smsc95xx_write_reg.exit108.i, label %smsc95xx_write_reg.exit108.thread.i

smsc95xx_write_reg.exit108.thread.i:              ; preds = %do.end9.i.i105.i
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i106.i = getelementptr i8, ptr %netdev, i32 2548
  %19 = ptrtoint ptr %net.i.i106.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net.i.i106.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %20, ptr noundef nonnull @.str.21, i32 noundef 48, i32 noundef %call.i.i101.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i98.i) #11
  br label %cleanup.sink.split.i

smsc95xx_write_reg.exit108.i:                     ; preds = %do.end9.i.i105.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i98.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i101.i)
  %cmp48.i = icmp slt i32 %call.i.i101.i, 0
  br i1 %cmp48.i, label %smsc95xx_write_reg.exit108.i.cleanup.sink.split.i_crit_edge, label %if.end52.i

smsc95xx_write_reg.exit108.i.cleanup.sink.split.i_crit_edge: ; preds = %smsc95xx_write_reg.exit108.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

if.end52.i:                                       ; preds = %smsc95xx_write_reg.exit108.i
  %call53.i = call fastcc i32 @smsc95xx_wait_eeprom(ptr noundef nonnull %add.ptr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %cmp54.i = icmp slt i32 %call53.i, 0
  br i1 %cmp54.i, label %if.end52.i.cleanup_crit_edge, label %if.end57.i

if.end52.i.cleanup_crit_edge:                     ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end57.i:                                       ; preds = %if.end52.i
  %inc.i = add i32 %offset.addr.0119.i, 1
  %inc58.i = add nuw i32 %i.0120.i, 1
  %exitcond.not.i = icmp eq i32 %inc58.i, %7
  br i1 %exitcond.not.i, label %if.end57.i.cleanup_crit_edge, label %if.end57.i.do.end9.i.i94.i_crit_edge

if.end57.i.do.end9.i.i94.i_crit_edge:             ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i.i94.i

if.end57.i.cleanup_crit_edge:                     ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.sink.split.i:                             ; preds = %smsc95xx_write_reg.exit108.i.cleanup.sink.split.i_crit_edge, %smsc95xx_write_reg.exit108.thread.i, %smsc95xx_write_reg.exit97.i.cleanup.sink.split.i_crit_edge, %smsc95xx_write_reg.exit97.thread.i, %smsc95xx_write_reg.exit.i.cleanup.sink.split.i_crit_edge, %smsc95xx_write_reg.exit.thread.i
  %.str.79.sink.i = phi ptr [ @.str.88, %smsc95xx_write_reg.exit.thread.i ], [ @.str.88, %smsc95xx_write_reg.exit.i.cleanup.sink.split.i_crit_edge ], [ @.str.88, %smsc95xx_write_reg.exit97.thread.i ], [ @.str.79, %smsc95xx_write_reg.exit108.thread.i ], [ @.str.79, %smsc95xx_write_reg.exit108.i.cleanup.sink.split.i_crit_edge ], [ @.str.88, %smsc95xx_write_reg.exit97.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i.i.i, %smsc95xx_write_reg.exit.thread.i ], [ %call.i.i.i, %smsc95xx_write_reg.exit.i.cleanup.sink.split.i_crit_edge ], [ %call.i.i90.i, %smsc95xx_write_reg.exit97.thread.i ], [ %call.i.i101.i, %smsc95xx_write_reg.exit108.thread.i ], [ %call.i.i101.i, %smsc95xx_write_reg.exit108.i.cleanup.sink.split.i_crit_edge ], [ %call.i.i90.i, %smsc95xx_write_reg.exit97.i.cleanup.sink.split.i_crit_edge ]
  %net51.i = getelementptr i8, ptr %netdev, i32 2548
  %21 = ptrtoint ptr %net51.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net51.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %22, ptr noundef nonnull %.str.79.sink.i) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %if.end57.i.cleanup_crit_edge, %if.end52.i.cleanup_crit_edge, %for.cond.preheader.i.cleanup_crit_edge, %if.end35.i.cleanup_crit_edge, %do.end29.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call.i, %do.end29.i.cleanup_crit_edge ], [ %call36.i, %if.end35.i.cleanup_crit_edge ], [ 0, %for.cond.preheader.i.cleanup_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ], [ 0, %if.end57.i.cleanup_crit_edge ], [ %call53.i, %if.end52.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_defer_kevent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_get_interface_no_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc95xx_phy_update_flowcontrol(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %buf.i.i86 = alloca i32, align 4
  %buf.i.i79 = alloca i32, align 4
  %buf.i.i = alloca i32, align 4
  %tx_pause = alloca i8, align 1
  %rx_pause = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tx_pause) #11
  %2 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %tx_pause, align 1, !annotation !272
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_pause) #11
  %3 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %rx_pause, align 1, !annotation !272
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #11
  %4 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %buf.i.i, align 4, !annotation !272
  %tobool.not.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !273

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #11, !srcloc !274
  unreachable

do.end9.i.i:                                      ; preds = %entry
  %call.i.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 44, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #11, !callees !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then14.i.i, label %if.end

if.then14.i.i:                                    ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i)
  %cmp15.not.i.i = icmp eq i32 %call.i.i, -19
  br i1 %cmp15.not.i.i, label %if.then14.i.i.smsc95xx_read_reg.exit.thread_crit_edge, label %if.then17.i.i

if.then14.i.i.smsc95xx_read_reg.exit.thread_crit_edge: ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %smsc95xx_read_reg.exit.thread

if.then17.i.i:                                    ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %5 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %6, ptr noundef nonnull @.str.22, i32 noundef 44, i32 noundef %call.i.i) #14
  br label %smsc95xx_read_reg.exit.thread

smsc95xx_read_reg.exit.thread:                    ; preds = %if.then17.i.i, %if.then14.i.i.smsc95xx_read_reg.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #11
  br label %cleanup

if.end:                                           ; preds = %do.end9.i.i
  %7 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buf.i.i, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #11
  %phydev = getelementptr inbounds %struct.smsc95xx_priv, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phydev, align 4
  %duplex = getelementptr inbounds %struct.phy_device, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp1 = icmp eq i32 %13, 1
  br i1 %cmp1, label %if.then2, label %do.body27

if.then2:                                         ; preds = %if.end
  call void @phy_get_pause(ptr noundef %11, ptr noundef nonnull %tx_pause, ptr noundef nonnull %rx_pause) #11
  %14 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rx_pause, align 1, !range !280
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -65534
  %16 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tx_pause, align 1, !range !280
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool6.not = icmp eq i8 %17, 0
  %and = and i32 %9, -16
  %or8 = or i32 %spec.select, -65536
  %masksel = select i1 %tobool6.not, i32 0, i32 15
  %afc_cfg.1 = or i32 %masksel, %and
  %flow.1 = select i1 %tobool6.not, i32 %spec.select, i32 %or8
  %msg_enable = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 20
  %18 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msg_enable, align 4
  %and10 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.then2.do.end9.i.i84_crit_edge, label %do.body13

if.then2.do.end9.i.i84_crit_edge:                 ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i.i84

do.body13:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc95xx_phy_update_flowcontrol.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc95xx_phy_update_flowcontrol, %if.then18)) #11
          to label %do.end9.i.i84 [label %if.then18], !srcloc !277

if.then18:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %20 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net, align 4
  %22 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %rx_pause, align 1, !range !280
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool19.not = icmp eq i8 %23, 0
  %cond = select i1 %tobool19.not, ptr @.str.100, ptr @.str.99
  %24 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %tx_pause, align 1, !range !280
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool20.not = icmp eq i8 %25, 0
  %cond21 = select i1 %tobool20.not, ptr @.str.100, ptr @.str.99
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc95xx_phy_update_flowcontrol.__UNIQUE_ID_ddebug360, ptr noundef %21, ptr noundef nonnull @.str.98, ptr noundef nonnull %cond, ptr noundef nonnull %cond21) #11
  br label %do.end9.i.i84

do.body27:                                        ; preds = %if.end
  %msg_enable28 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 20
  %26 = ptrtoint ptr %msg_enable28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %msg_enable28, align 4
  %and29 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.body27.do.end51_crit_edge, label %do.body32

do.body27.do.end51_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end51

do.body32:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc95xx_phy_update_flowcontrol.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc95xx_phy_update_flowcontrol, %if.then44)) #11
          to label %do.end51 [label %if.then44], !srcloc !277

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #13
  %net45 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %28 = ptrtoint ptr %net45 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %net45, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc95xx_phy_update_flowcontrol.__UNIQUE_ID_ddebug361, ptr noundef %29, ptr noundef nonnull @.str.101) #11
  br label %do.end51

do.end51:                                         ; preds = %if.then44, %do.body32, %do.body27.do.end51_crit_edge
  %or52 = or i32 %9, 15
  br label %do.end9.i.i84

do.end9.i.i84:                                    ; preds = %do.end51, %if.then18, %do.body13, %if.then2.do.end9.i.i84_crit_edge
  %afc_cfg.2 = phi i32 [ %afc_cfg.1, %if.then2.do.end9.i.i84_crit_edge ], [ %afc_cfg.1, %if.then18 ], [ %or52, %do.end51 ], [ %afc_cfg.1, %do.body13 ]
  %flow.2 = phi i32 [ %flow.1, %if.then2.do.end9.i.i84_crit_edge ], [ %flow.1, %if.then18 ], [ 0, %do.end51 ], [ %flow.1, %do.body13 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i79) #11
  %30 = call i32 @llvm.bswap.i32(i32 %flow.2) #11
  %31 = ptrtoint ptr %buf.i.i79 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %buf.i.i79, align 4
  %call.i.i82 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 284, ptr noundef nonnull %buf.i.i79, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i82)
  %cmp.i.i83 = icmp sgt i32 %call.i.i82, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i82)
  %cmp14.not.i.i = icmp eq i32 %call.i.i82, -19
  %or.cond.i.i = or i1 %cmp.i.i83, %cmp14.not.i.i
  br i1 %or.cond.i.i, label %smsc95xx_write_reg.exit, label %smsc95xx_write_reg.exit.thread

smsc95xx_write_reg.exit.thread:                   ; preds = %do.end9.i.i84
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i85 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %32 = ptrtoint ptr %net.i.i85 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %net.i.i85, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %33, ptr noundef nonnull @.str.21, i32 noundef 284, i32 noundef %call.i.i82) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i79) #11
  br label %cleanup

smsc95xx_write_reg.exit:                          ; preds = %do.end9.i.i84
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i79) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i82)
  %cmp55 = icmp slt i32 %call.i.i82, 0
  br i1 %cmp55, label %smsc95xx_write_reg.exit.cleanup_crit_edge, label %do.end9.i.i93

smsc95xx_write_reg.exit.cleanup_crit_edge:        ; preds = %smsc95xx_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end9.i.i93:                                    ; preds = %smsc95xx_write_reg.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i86) #11
  %34 = call i32 @llvm.bswap.i32(i32 %afc_cfg.2) #11
  %35 = ptrtoint ptr %buf.i.i86 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %buf.i.i86, align 4
  %call.i.i89 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 44, ptr noundef nonnull %buf.i.i86, i16 noundef zeroext 4) #11, !callees !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i89)
  %cmp.i.i90 = icmp sgt i32 %call.i.i89, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i.i89)
  %cmp14.not.i.i91 = icmp eq i32 %call.i.i89, -19
  %or.cond.i.i92 = or i1 %cmp.i.i90, %cmp14.not.i.i91
  br i1 %or.cond.i.i92, label %do.end9.i.i93.smsc95xx_write_reg.exit96_crit_edge, label %if.then16.i.i95

do.end9.i.i93.smsc95xx_write_reg.exit96_crit_edge: ; preds = %do.end9.i.i93
  call void @__sanitizer_cov_trace_pc() #13
  br label %smsc95xx_write_reg.exit96

if.then16.i.i95:                                  ; preds = %do.end9.i.i93
  call void @__sanitizer_cov_trace_pc() #13
  %net.i.i94 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %36 = ptrtoint ptr %net.i.i94 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %net.i.i94, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %37, ptr noundef nonnull @.str.21, i32 noundef 44, i32 noundef %call.i.i89) #14
  br label %smsc95xx_write_reg.exit96

smsc95xx_write_reg.exit96:                        ; preds = %if.then16.i.i95, %do.end9.i.i93.smsc95xx_write_reg.exit96_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i86) #11
  br label %cleanup

cleanup:                                          ; preds = %smsc95xx_write_reg.exit96, %smsc95xx_write_reg.exit.cleanup_crit_edge, %smsc95xx_write_reg.exit.thread, %smsc95xx_read_reg.exit.thread
  %retval.0 = phi i32 [ %call.i.i89, %smsc95xx_write_reg.exit96 ], [ %call.i.i82, %smsc95xx_write_reg.exit.cleanup_crit_edge ], [ %call.i.i, %smsc95xx_read_reg.exit.thread ], [ %call.i.i82, %smsc95xx_write_reg.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_pause) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tx_pause) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_get_pause(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_skb_return(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_load8_noabort(i32)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 114)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 114)
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
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind readonly willreturn }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !72, !73, !74, !76, !78, !79, !81, !82, !84, !86, !87, !88, !90, !92, !94, !96, !97, !98, !100, !102, !103, !104, !106, !108, !110, !111, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !135, !137, !139, !141, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !157, !158, !160, !161, !163, !165, !167, !169, !171, !173, !175, !177, !178, !179, !180, !182, !184, !185, !187, !189, !191, !193, !195, !197, !198, !199, !201, !202, !204, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !232, !233, !235, !237, !239, !240, !241, !243, !245, !247, !248, !249, !250, !251, !253, !254, !256, !257, !258, !260, !261}
!llvm.module.flags = !{!263, !264, !265, !266, !267, !268, !269, !270}
!llvm.ident = !{!271}

!0 = !{ptr @__param_turbo_mode, !1, !"__param_turbo_mode", i1 false, i1 false}
!1 = !{!"../drivers/net/usb/smsc95xx.c", i32 67, i32 1}
!2 = !{ptr @__UNIQUE_ID_turbo_modetype354, !1, !"__UNIQUE_ID_turbo_modetype354", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_turbo_mode355, !4, !"__UNIQUE_ID_turbo_mode355", i1 false, i1 false}
!4 = !{!"../drivers/net/usb/smsc95xx.c", i32 68, i32 1}
!5 = !{ptr @__initcall__kmod_smsc95xx__386_2094_smsc95xx_driver_init6, !6, !"__initcall__kmod_smsc95xx__386_2094_smsc95xx_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/net/usb/smsc95xx.c", i32 2094, i32 1}
!7 = !{ptr @__exitcall_smsc95xx_driver_exit, !6, !"__exitcall_smsc95xx_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author387, !9, !"__UNIQUE_ID_author387", i1 false, i1 false}
!9 = !{!"../drivers/net/usb/smsc95xx.c", i32 2096, i32 1}
!10 = !{ptr @__UNIQUE_ID_author388, !11, !"__UNIQUE_ID_author388", i1 false, i1 false}
!11 = !{!"../drivers/net/usb/smsc95xx.c", i32 2097, i32 1}
!12 = !{ptr @__UNIQUE_ID_description389, !13, !"__UNIQUE_ID_description389", i1 false, i1 false}
!13 = !{!"../drivers/net/usb/smsc95xx.c", i32 2098, i32 1}
!14 = !{ptr @__UNIQUE_ID_file390, !15, !"__UNIQUE_ID_file390", i1 false, i1 false}
!15 = !{!"../drivers/net/usb/smsc95xx.c", i32 2099, i32 1}
!16 = !{ptr @__UNIQUE_ID_license391, !15, !"__UNIQUE_ID_license391", i1 false, i1 false}
!17 = !{ptr @__param_str_turbo_mode, !1, !"__param_str_turbo_mode", i1 false, i1 false}
!18 = !{ptr @turbo_mode, !19, !"turbo_mode", i1 false, i1 false}
!19 = !{!"../drivers/net/usb/smsc95xx.c", i32 66, i32 13}
!20 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @smsc95xx_driver, !22, !"smsc95xx_driver", i1 false, i1 false}
!22 = !{!"../drivers/net/usb/smsc95xx.c", i32 2082, i32 26}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/usb/smsc95xx.c", i32 1475, i32 25}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/usb/smsc95xx.c", i32 1480, i32 25}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/usb/smsc95xx.c", i32 1499, i32 25}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/usb/smsc95xx.c", i32 1530, i32 26}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/usb/smsc95xx.c", i32 1538, i32 26}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/usb/smsc95xx.c", i32 1555, i32 26}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/usb/smsc95xx.c", i32 1566, i32 26}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/usb/smsc95xx.c", i32 1579, i32 26}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/usb/smsc95xx.c", i32 1592, i32 26}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/usb/smsc95xx.c", i32 1604, i32 26}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/usb/smsc95xx.c", i32 1673, i32 25}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/usb/smsc95xx.c", i32 1676, i32 25}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/usb/smsc95xx.c", i32 1681, i32 25}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/usb/smsc95xx.c", i32 1684, i32 25}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/usb/smsc95xx.c", i32 1711, i32 24}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/usb/smsc95xx.c", i32 193, i32 25}
!55 = !{ptr @__func__.__smsc95xx_mdio_read, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/usb/smsc95xx.c", i32 193, i32 46}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/usb/smsc95xx.c", i32 202, i32 26}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/usb/smsc95xx.c", i32 208, i32 25}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/usb/smsc95xx.c", i32 215, i32 26}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/usb/smsc95xx.c", i32 166, i32 26}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/usb/smsc95xx.c", i32 121, i32 25}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/usb/smsc95xx.c", i32 89, i32 26}
!69 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/usb/smsc95xx.c", i32 1426, i32 3}
!71 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @smsc95xx_autosuspend.__UNIQUE_ID_ddebug380, !70, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!74 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/usb/smsc95xx.c", i32 1436, i32 26}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/usb/smsc95xx.c", i32 1440, i32 3}
!78 = !{ptr @smsc95xx_autosuspend.__UNIQUE_ID_ddebug381, !77, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/usb/smsc95xx.c", i32 1462, i32 2}
!81 = !{ptr @smsc95xx_autosuspend.__UNIQUE_ID_ddebug382, !80, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!82 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/usb/smsc95xx.c", i32 1391, i32 25}
!84 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/usb/smsc95xx.c", i32 1237, i32 2}
!86 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @smsc95xx_enable_phy_wakeup_interrupts.__UNIQUE_ID_ddebug379, !85, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!88 = !{ptr @__func__.__smsc95xx_mdio_write, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/usb/smsc95xx.c", i32 241, i32 46}
!90 = !{ptr @.str.32, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/usb/smsc95xx.c", i32 249, i32 26}
!92 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/usb/smsc95xx.c", i32 264, i32 25}
!94 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/usb/smsc95xx.c", i32 1737, i32 2}
!96 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @smsc95xx_resume.__UNIQUE_ID_ddebug383, !95, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!98 = !{ptr @.str.36, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/usb/smsc95xx.c", i32 1769, i32 25}
!100 = !{ptr @.str.37, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/usb/smsc95xx.c", i32 849, i32 2}
!102 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @smsc95xx_reset.__UNIQUE_ID_ddebug367, !101, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!104 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/usb/smsc95xx.c", i32 865, i32 25}
!106 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/usb/smsc95xx.c", i32 883, i32 25}
!108 = !{ptr @.str.41, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/usb/smsc95xx.c", i32 891, i32 2}
!110 = !{ptr @smsc95xx_reset.__UNIQUE_ID_ddebug368, !109, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!111 = !{ptr @.str.42, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/usb/smsc95xx.c", i32 898, i32 2}
!113 = !{ptr @smsc95xx_reset.__UNIQUE_ID_ddebug369, !112, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!114 = !{ptr @.str.43, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/usb/smsc95xx.c", i32 911, i32 2}
!116 = !{ptr @smsc95xx_reset.__UNIQUE_ID_ddebug370, !115, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!117 = !{ptr @.str.44, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/usb/smsc95xx.c", i32 926, i32 2}
!119 = !{ptr @smsc95xx_reset.__UNIQUE_ID_ddebug371, !118, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!120 = !{ptr @.str.45, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/usb/smsc95xx.c", i32 937, i32 2}
!122 = !{ptr @smsc95xx_reset.__UNIQUE_ID_ddebug372, !121, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!123 = !{ptr @.str.46, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/usb/smsc95xx.c", i32 949, i32 2}
!125 = !{ptr @smsc95xx_reset.__UNIQUE_ID_ddebug373, !124, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!126 = !{ptr @.str.47, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/usb/smsc95xx.c", i32 957, i32 2}
!128 = !{ptr @smsc95xx_reset.__UNIQUE_ID_ddebug374, !127, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!129 = !{ptr @.str.48, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/usb/smsc95xx.c", i32 976, i32 2}
!131 = !{ptr @smsc95xx_reset.__UNIQUE_ID_ddebug375, !130, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!132 = !{ptr @.str.49, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/usb/smsc95xx.c", i32 986, i32 2}
!134 = !{ptr @smsc95xx_reset.__UNIQUE_ID_ddebug376, !133, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!135 = !{ptr @.str.50, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/usb/smsc95xx.c", i32 1018, i32 25}
!137 = !{ptr @.str.51, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/usb/smsc95xx.c", i32 1037, i32 25}
!139 = !{ptr @.str.52, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/usb/smsc95xx.c", i32 1043, i32 25}
!141 = !{ptr @.str.53, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/usb/smsc95xx.c", i32 1047, i32 2}
!143 = !{ptr @smsc95xx_reset.__UNIQUE_ID_ddebug377, !142, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!144 = !{ptr @.str.54, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/usb/smsc95xx.c", i32 644, i32 2}
!146 = !{ptr @.str.55, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @smsc95xx_set_features.__UNIQUE_ID_ddebug363, !145, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!148 = !{ptr @.str.56, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/usb/smsc95xx.c", i32 483, i32 3}
!150 = !{ptr @.str.57, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @smsc95xx_set_multicast.__UNIQUE_ID_ddebug356, !149, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!152 = !{ptr @.str.58, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/usb/smsc95xx.c", i32 487, i32 3}
!154 = !{ptr @smsc95xx_set_multicast.__UNIQUE_ID_ddebug357, !153, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!155 = !{ptr @.str.59, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/usb/smsc95xx.c", i32 505, i32 3}
!157 = !{ptr @smsc95xx_set_multicast.__UNIQUE_ID_ddebug358, !156, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!158 = !{ptr @.str.60, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/usb/smsc95xx.c", i32 508, i32 3}
!160 = !{ptr @smsc95xx_set_multicast.__UNIQUE_ID_ddebug359, !159, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!161 = !{ptr @.str.61, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/usb/smsc95xx.c", i32 518, i32 25}
!163 = !{ptr @.str.62, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/usb/smsc95xx.c", i32 522, i32 25}
!165 = !{ptr @.str.63, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/usb/smsc95xx.c", i32 526, i32 25}
!167 = !{ptr @.str.64, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/usb/smsc95xx.c", i32 457, i32 25}
!169 = !{ptr @products, !170, !"products", i1 false, i1 false}
!170 = !{!"../drivers/net/usb/smsc95xx.c", i32 1987, i32 35}
!171 = !{ptr @.str.65, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/usb/smsc95xx.c", i32 1973, i32 17}
!173 = !{ptr @smsc95xx_info, !174, !"smsc95xx_info", i1 false, i1 false}
!174 = !{!"../drivers/net/usb/smsc95xx.c", i32 1972, i32 33}
!175 = !{ptr @.str.66, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/usb/smsc95xx.c", i32 1080, i32 2}
!177 = !{ptr @.str.67, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @smsc95xx_bind._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @smsc95xx_bind._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.68, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/usb/smsc95xx.c", i32 1084, i32 25}
!182 = !{ptr @smsc95xx_bind.__key, !183, !"__key", i1 false, i1 false}
!183 = !{!"../drivers/net/usb/smsc95xx.c", i32 1094, i32 2}
!184 = !{ptr @.str.69, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @.str.70, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/usb/smsc95xx.c", i32 1135, i32 25}
!187 = !{ptr @.str.71, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/usb/smsc95xx.c", i32 1139, i32 4}
!189 = !{ptr @.str.72, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/usb/smsc95xx.c", i32 1143, i32 24}
!191 = !{ptr @.str.73, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/usb/smsc95xx.c", i32 1149, i32 24}
!193 = !{ptr @.str.74, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/usb/smsc95xx.c", i32 1182, i32 24}
!195 = !{ptr @.str.75, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/usb/smsc95xx.c", i32 776, i32 4}
!197 = !{ptr @.str.76, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @smsc95xx_init_mac_address.__UNIQUE_ID_ddebug364, !196, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!199 = !{ptr @.str.77, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/usb/smsc95xx.c", i32 786, i32 4}
!201 = !{ptr @smsc95xx_init_mac_address.__UNIQUE_ID_ddebug365, !200, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!202 = !{ptr @.str.78, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/usb/smsc95xx.c", i32 793, i32 2}
!204 = !{ptr @smsc95xx_init_mac_address.__UNIQUE_ID_ddebug366, !203, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!205 = !{ptr @.str.79, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/usb/smsc95xx.c", i32 368, i32 26}
!207 = !{ptr @.str.80, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/usb/smsc95xx.c", i32 378, i32 26}
!209 = !{ptr @.str.81, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/usb/smsc95xx.c", i32 337, i32 26}
!211 = !{ptr @.str.82, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/usb/smsc95xx.c", i32 347, i32 24}
!213 = !{ptr @.str.83, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/usb/smsc95xx.c", i32 321, i32 25}
!215 = !{ptr @smsc95xx_netdev_ops, !216, !"smsc95xx_netdev_ops", i1 false, i1 false}
!216 = !{!"../drivers/net/usb/smsc95xx.c", i32 1051, i32 36}
!217 = !{ptr @smsc95xx_ethtool_ops, !218, !"smsc95xx_ethtool_ops", i1 false, i1 false}
!218 = !{!"../drivers/net/usb/smsc95xx.c", i32 742, i32 33}
!219 = !{ptr @.str.84, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/usb/smsc95xx.c", i32 694, i32 23}
!221 = !{ptr @.str.85, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/usb/smsc95xx.c", i32 701, i32 24}
!223 = !{ptr @.str.86, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/usb/smsc95xx.c", i32 731, i32 25}
!225 = !{ptr @.str.87, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/usb/smsc95xx.c", i32 669, i32 25}
!227 = !{ptr @.str.88, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/usb/smsc95xx.c", i32 406, i32 25}
!229 = !{ptr @.str.89, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/usb/smsc95xx.c", i32 1208, i32 2}
!231 = !{ptr @.str.90, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @smsc95xx_unbind.__UNIQUE_ID_ddebug378, !230, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!233 = !{ptr @.str.91, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/usb/smsc95xx.c", i32 1962, i32 24}
!235 = !{ptr @.str.92, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/usb/smsc95xx.c", i32 603, i32 25}
!237 = !{ptr @.str.93, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/usb/smsc95xx.c", i32 609, i32 2}
!239 = !{ptr @.str.94, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @smsc95xx_status.__UNIQUE_ID_ddebug362, !238, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!241 = !{ptr @.str.95, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/usb/smsc95xx.c", i32 614, i32 25}
!243 = !{ptr @.str.96, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/usb/smsc95xx.c", i32 593, i32 25}
!245 = !{ptr @.str.97, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/usb/smsc95xx.c", i32 552, i32 3}
!247 = !{ptr @.str.98, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @smsc95xx_phy_update_flowcontrol.__UNIQUE_ID_ddebug360, !246, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!249 = !{ptr @.str.99, !246, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @.str.100, !246, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @.str.101, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/usb/smsc95xx.c", i32 556, i32 3}
!253 = !{ptr @smsc95xx_phy_update_flowcontrol.__UNIQUE_ID_ddebug361, !252, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!254 = !{ptr @.str.102, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/usb/smsc95xx.c", i32 1815, i32 4}
!256 = !{ptr @.str.103, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @smsc95xx_rx_fixup.__UNIQUE_ID_ddebug384, !255, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!258 = !{ptr @.str.104, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/usb/smsc95xx.c", i32 1833, i32 5}
!260 = !{ptr @smsc95xx_rx_fixup.__UNIQUE_ID_ddebug385, !259, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!261 = !{ptr @.str.105, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/usb/smsc95xx.c", i32 1850, i32 27}
!263 = !{i32 1, !"wchar_size", i32 2}
!264 = !{i32 1, !"min_enum_size", i32 4}
!265 = !{i32 8, !"branch-target-enforcement", i32 0}
!266 = !{i32 8, !"sign-return-address", i32 0}
!267 = !{i32 8, !"sign-return-address-all", i32 0}
!268 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!269 = !{i32 7, !"uwtable", i32 1}
!270 = !{i32 7, !"frame-pointer", i32 2}
!271 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!272 = !{!"auto-init"}
!273 = !{!"branch_weights", i32 1, i32 2000}
!274 = !{i64 2156758598, i64 2156759088, i64 2156758635, i64 2156758691, i64 2156758725, i64 2156758749, i64 2156758790, i64 2156758811, i64 2156758839, i64 2156758873}
!275 = !{ptr @usbnet_read_cmd, ptr @usbnet_read_cmd_nopm}
!276 = !{ptr @usbnet_write_cmd, ptr @usbnet_write_cmd_nopm}
!277 = !{i64 2149003807, i64 2149003812, i64 2149003825, i64 2149003869, i64 2149003903, i64 2149003924}
!278 = !{i64 2156760287, i64 2156760778, i64 2156760324, i64 2156760380, i64 2156760414, i64 2156760438, i64 2156760479, i64 2156760500, i64 2156760528, i64 2156760562}
!279 = !{i64 2156856063, i64 2156856555, i64 2156856100, i64 2156856156, i64 2156856190, i64 2156856214, i64 2156856255, i64 2156856276, i64 2156856304, i64 2156856338}
!280 = !{i8 0, i8 2}
!281 = !{!"branch_weights", i32 2000, i32 1}
!282 = !{i64 2156870111, i64 2156870603, i64 2156870148, i64 2156870204, i64 2156870238, i64 2156870262, i64 2156870303, i64 2156870324, i64 2156870352, i64 2156870386}
!283 = !{i64 7061645}
!284 = !{i64 2156764723, i64 2156765214, i64 2156764760, i64 2156764816, i64 2156764850, i64 2156764874, i64 2156764915, i64 2156764936, i64 2156764964, i64 2156764998}
!285 = !{i64 2156766310, i64 2156766801, i64 2156766347, i64 2156766403, i64 2156766437, i64 2156766461, i64 2156766502, i64 2156766523, i64 2156766551, i64 2156766585}
!286 = !{i64 2156767948, i64 2156768439, i64 2156767985, i64 2156768041, i64 2156768075, i64 2156768099, i64 2156768140, i64 2156768161, i64 2156768189, i64 2156768223}
!287 = !{i64 2156769535, i64 2156770026, i64 2156769572, i64 2156769628, i64 2156769662, i64 2156769686, i64 2156769727, i64 2156769748, i64 2156769776, i64 2156769810}
