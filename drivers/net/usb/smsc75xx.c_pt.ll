; ModuleID = '/llk/IR_all_yes/drivers/net/usb/smsc75xx.c_pt.bc'
source_filename = "../drivers/net/usb/smsc75xx.c"
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
%struct.smsc75xx_priv = type { ptr, i32, i32, [16 x i32], %struct.mutex, %struct.spinlock, %struct.work_struct, i8 }
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
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.ethtool_cmd = type { i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i32, i32, i16, i8, i8, i32, [2 x i32] }
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
%struct.ifreq = type { %union.anon.104, %union.anon.105 }
%union.anon.104 = type { [16 x i8] }
%union.anon.105 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }

@__param_str_turbo_mode = internal constant [20 x i8] c"smsc75xx.turbo_mode\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@turbo_mode = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_turbo_mode = internal constant %struct.kernel_param { ptr @__param_str_turbo_mode, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @turbo_mode } }, section "__param", align 4
@__UNIQUE_ID_turbo_modetype354 = internal constant [34 x i8] c"smsc75xx.parmtype=turbo_mode:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_turbo_mode355 = internal constant [67 x i8] c"smsc75xx.parm=turbo_mode:Enable multiple frames per Rx transaction\00", section ".modinfo", align 1
@__initcall__kmod_smsc75xx__400_2340_smsc75xx_driver_init6 = internal global ptr @smsc75xx_driver_init, section ".initcall6.init", align 4
@smsc75xx_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @usbnet_probe, ptr @usbnet_disconnect, ptr null, ptr @smsc75xx_suspend, ptr @smsc75xx_resume, ptr @smsc75xx_resume, ptr null, ptr null, ptr @products, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 96 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_smsc75xx_driver_exit = internal global ptr @smsc75xx_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author401 = internal constant [26 x i8] c"smsc75xx.author=Nancy Lin\00", section ".modinfo", align 1
@__UNIQUE_ID_author402 = internal constant [66 x i8] c"smsc75xx.author=Steve Glendinning <steve.glendinning@shawell.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description403 = internal constant [63 x i8] c"smsc75xx.description=SMSC75XX USB 2.0 Gigabit Ethernet Devices\00", section ".modinfo", align 1
@__UNIQUE_ID_file404 = internal constant [39 x i8] c"smsc75xx.file=drivers/net/usb/smsc75xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license405 = internal constant [21 x i8] c"smsc75xx.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"smsc75xx\00", [23 x i8] zeroinitializer }, align 32
@products = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1060, i16 29952, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @smsc75xx_info to i32) }, %struct.usb_device_id { i16 3, i16 1060, i16 29957, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @smsc75xx_info to i32) }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usbnet_suspend error\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error during last resume\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"entering SUSPEND2 mode\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Error reading WUCSR\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Error writing WUCSR\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error reading PMT_CTL\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error writing PMT_CTL\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error enabling PHY wakeup ints\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"entering SUSPEND1 mode\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Error reading PHY_MODE_CTRL_STS\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error writing WUF_CFGX\0A\00", [40 x i8] zeroinitializer }, align 32
@__const.smsc75xx_suspend.mcast = private unnamed_addr constant [3 x i8] c"\01\00^", align 1
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"enabling multicast detection\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error writing wakeup filter\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"enabling ARP detection\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"enabling packet match detection\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"disabling packet match detection\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"enabling PHY wakeup\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"enabling magic packet wakeup\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"enabling broadcast detection\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"enabling unicast detection\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to read MAC_RX: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to write MAC_RX: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"entering SUSPEND0 mode\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error reading MII_BMSR\0A\00", [40 x i8] zeroinitializer }, align 32
@smsc75xx_autosuspend.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.26, ptr @.str.27, i8 1, i8 -72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"smsc75xx_autosuspend\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/net/usb/smsc75xx.c\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"autosuspend entering SUSPEND2\0A\00", [33 x i8] zeroinitializer }, align 32
@smsc75xx_autosuspend.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.26, ptr @.str.28, i8 1, i8 -71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"autosuspend entering SUSPEND1\0A\00", [33 x i8] zeroinitializer }, align 32
@smsc75xx_autosuspend.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.26, ptr @.str.29, i8 1, i8 -65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"autosuspend entering SUSPEND3\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error reading FCT_RX_CTL\0A\00", [38 x i8] zeroinitializer }, align 32
@smsc75xx_enter_suspend3.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.26, ptr @.str.32, i8 1, i8 -94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"smsc75xx_enter_suspend3\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"rx fifo not empty in autosuspend\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to read reg index 0x%08x: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to write reg index 0x%08x: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@smsc75xx_enable_phy_wakeup_interrupts.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.26, ptr @.str.36, i8 1, i8 -85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"smsc75xx_enable_phy_wakeup_interrupts\00", [58 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"enabling PHY wakeup interrupts\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error reading PHY_INT_SRC\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Error reading PHY_INT_MASK\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"MII is busy in smsc75xx_mdio_read\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error writing MII_ACCESS\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Timed out reading MII reg %02X\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error reading MII_DATA\0A\00", [40 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error reading MII_ACCESS\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"MII is busy in smsc75xx_mdio_write\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error writing MII_DATA\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Timed out writing MII reg %02X\0A\00", [32 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error writing WUF_MASKX\0A\00", [39 x i8] zeroinitializer }, align 32
@smsc75xx_resume.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.26, ptr @.str.49, i8 2, i8 13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"smsc75xx_resume\00", [16 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"resume suspend_flags=0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"resuming from SUSPEND2\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"device not ready in smsc75xx_resume\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to read PMT_CTL: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"timeout waiting for device ready\0A\00", [62 x i8] zeroinitializer }, align 32
@smsc75xx_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.54, i32 2592, ptr @smsc75xx_bind, ptr @smsc75xx_unbind, ptr @smsc75xx_reset, ptr null, ptr null, ptr @smsc75xx_manage_power, ptr @smsc75xx_status, ptr @smsc75xx_link_reset, ptr @smsc75xx_rx_fixup, ptr @smsc75xx_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"smsc75xx USB 2.0 Gigabit Ethernet\00", [62 x i8] zeroinitializer }, align 32
@smsc75xx_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.26, i32 1453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016smsc75xx v1.0.0\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"smsc75xx_bind\00", [18 x i8] zeroinitializer }, align 32
@smsc75xx_bind._entry_ptr = internal global ptr @smsc75xx_bind._entry, section ".printk_index", align 4
@.str.57 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"usbnet_get_endpoints failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@smsc75xx_bind.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&pdata->rfe_ctl_lock\00", [43 x i8] zeroinitializer }, align 32
@smsc75xx_bind.__key.59 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&pdata->dataport_mutex\00", [41 x i8] zeroinitializer }, align 32
@smsc75xx_bind.__key.61 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.62 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&pdata->set_multicast)\00", [55 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"device not ready in smsc75xx_bind\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"smsc75xx_reset error %d\0A\00", [39 x i8] zeroinitializer }, align 32
@smsc75xx_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @usbnet_open, ptr @usbnet_stop, ptr @usbnet_start_xmit, ptr null, ptr null, ptr null, ptr @smsc75xx_set_multicast, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @smsc75xx_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @smsc75xx_change_mtu, ptr null, ptr @usbnet_tx_timeout, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smsc75xx_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@smsc75xx_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @usbnet_get_drvinfo, ptr null, ptr null, ptr @smsc75xx_ethtool_get_wol, ptr @smsc75xx_ethtool_set_wol, ptr @usbnet_get_msglevel, ptr @usbnet_set_msglevel, ptr @usbnet_nway_reset, ptr @usbnet_get_link, ptr null, ptr @smsc75xx_ethtool_get_eeprom_len, ptr @smsc75xx_ethtool_get_eeprom, ptr @smsc75xx_ethtool_set_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_get_link_ksettings_mii, ptr @usbnet_set_link_ksettings_mii, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@smsc75xx_deferred_multicast_write.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.26, ptr @.str.66, i8 0, i8 -124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"smsc75xx_deferred_multicast_write\00", [62 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"deferred multicast write 0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error writing RFE_CRL\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"smsc75xx_dataport_write busy on entry\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Error reading DP_SEL\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Error writing DP_SEL\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error writing DP_ADDR\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error writing DP_DATA\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Error writing DP_CMD\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"smsc75xx_dataport_write timeout\0A\00", [63 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.75 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"smsc75xx_dataport_wait_not_busy timed out\0A\00", [53 x i8] zeroinitializer }, align 32
@smsc75xx_init_mac_address.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.76, ptr @.str.26, ptr @.str.77, i8 0, i8 -65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"smsc75xx_init_mac_address\00", [38 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"MAC address read from the device tree\0A\00", [57 x i8] zeroinitializer }, align 32
@smsc75xx_init_mac_address.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.76, ptr @.str.26, ptr @.str.78, i8 0, i8 -62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MAC address read from EEPROM\0A\00", [34 x i8] zeroinitializer }, align 32
@smsc75xx_init_mac_address.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.76, ptr @.str.26, ptr @.str.79, i8 0, i8 -60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"MAC address set to eth_random_addr\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error writing E2P_CMD\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error reading E2P_DATA\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error reading E2P_CMD\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EEPROM is busy\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"EEPROM read operation timeout\0A\00", [33 x i8] zeroinitializer }, align 32
@smsc75xx_set_multicast.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.26, ptr @.str.86, i8 0, i8 -117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"smsc75xx_set_multicast\00", [41 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"promiscuous mode enabled\0A\00", [38 x i8] zeroinitializer }, align 32
@smsc75xx_set_multicast.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.26, ptr @.str.87, i8 0, i8 -116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"receive all multicast enabled\0A\00", [33 x i8] zeroinitializer }, align 32
@smsc75xx_set_multicast.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.26, ptr @.str.88, i8 0, i8 -115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"receive multicast hash filter\0A\00", [33 x i8] zeroinitializer }, align 32
@smsc75xx_set_multicast.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.26, ptr @.str.89, i8 0, i8 -112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"receive own packets only\0A\00", [38 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.90 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to set mac rx frame length\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error writing RFE_CTL\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"device_set_wakeup_enable error %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"EEPROM: magic value mismatch: 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error writing E2P_DATA\0A\00", [40 x i8] zeroinitializer }, align 32
@smsc75xx_unbind.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.26, ptr @.str.96, i8 1, i8 124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"smsc75xx_unbind\00", [16 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"free pdata\0A\00", [20 x i8] zeroinitializer }, align 32
@smsc75xx_reset.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.26, ptr @.str.98, i8 1, i8 6, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"smsc75xx_reset\00", [17 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"entering smsc75xx_reset\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"device not ready in smsc75xx_reset\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to read HW_CFG: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to write HW_CFG: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"timeout on completion of Lite Reset\0A\00", [59 x i8] zeroinitializer }, align 32
@smsc75xx_reset.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.26, ptr @.str.103, i8 1, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Lite reset complete, resetting PHY\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to write PMT_CTL: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"timeout waiting for PHY Reset\0A\00", [33 x i8] zeroinitializer }, align 32
@smsc75xx_reset.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.26, ptr @.str.106, i8 1, i8 24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PHY reset complete\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to set mac address\0A\00", [37 x i8] zeroinitializer }, align 32
@smsc75xx_reset.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.26, ptr @.str.108, i8 1, i8 26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MAC Address: %pM\0A\00", [46 x i8] zeroinitializer }, align 32
@smsc75xx_reset.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.26, ptr @.str.109, i8 1, i8 28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Read Value from HW_CFG : 0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@smsc75xx_reset.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.26, ptr @.str.110, i8 1, i8 32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Read Value from HW_CFG after writing HW_CFG_BIR: 0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@smsc75xx_reset.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.26, ptr @.str.111, i8 1, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_urb_size=%ld\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to write BURST_CAP: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to read BURST_CAP: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@smsc75xx_reset.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.26, ptr @.str.114, i8 1, i8 40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Read Value from BURST_CAP after writing: 0x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to write BULK_IN_DLY: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read BULK_IN_DLY: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@smsc75xx_reset.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.26, ptr @.str.117, i8 1, i8 43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Read Value from BULK_IN_DLY after writing: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@smsc75xx_reset.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.26, ptr @.str.118, i8 1, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HW_CFG: 0x%08x\0A\00", [16 x i8] zeroinitializer }, align 32
@smsc75xx_reset.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.26, ptr @.str.118, i8 1, i8 50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to write FCT_RX_FIFO_END: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@smsc75xx_reset.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.26, ptr @.str.120, i8 1, i8 52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"FCT_RX_FIFO_END set to 0x%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to write FCT_TX_FIFO_END: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@smsc75xx_reset.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.26, ptr @.str.122, i8 1, i8 55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"FCT_TX_FIFO_END set to 0x%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to write INT_STS: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to read ID_REV: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@smsc75xx_reset.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.26, ptr @.str.125, i8 1, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ID_REV = 0x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to read E2P_CMD: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to read LED_GPIO_CFG: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to write LED_GPIO_CFG: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to write FLOW: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to write FCT_FLOW: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to read RFE_CTL: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to write RFE_CTL: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@smsc75xx_reset.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.26, ptr @.str.133, i8 1, i8 73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RFE_CTL set to 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to initialize PHY: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to read INT_EP_CTL: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to write INT_EP_CTL: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to read MAC_CR: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to write MAC_CR: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to read MAC_TX: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to write MAC_TX: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@smsc75xx_reset.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.26, ptr @.str.141, i8 1, i8 87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.141 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MAC_TX set to 0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to read FCT_TX_CTL: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to write FCT_TX_CTL: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@smsc75xx_reset.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.26, ptr @.str.144, i8 1, i8 91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.144 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"FCT_TX_CTL set to 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to set max rx frame length\0A\00", [61 x i8] zeroinitializer }, align 32
@smsc75xx_reset.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.26, ptr @.str.146, i8 1, i8 97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.146 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MAC_RX set to 0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to read FCT_RX_CTL: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to write FCT_RX_CTL: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@smsc75xx_reset.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.26, ptr @.str.149, i8 1, i8 101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.149 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"FCT_RX_CTL set to 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@smsc75xx_reset.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.26, ptr @.str.150, i8 1, i8 101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.150 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"smsc75xx_reset, return 0\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to write RX_ADDRH: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to write RX_ADDRL: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to write ADDR_FILTX: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to write ADDR_FILTX+4: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error reading MII_BMCR\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"timeout on PHY Reset\0A\00", [42 x i8] zeroinitializer }, align 32
@smsc75xx_phy_initialize.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.157, ptr @.str.26, ptr @.str.158, i8 0, i8 -38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.157 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"smsc75xx_phy_initialize\00", [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"phy initialised successfully\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Timeout waiting for PHY link up\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unexpected urb length %d\0A\00", [38 x i8] zeroinitializer }, align 32
@smsc75xx_status.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.161, ptr @.str.26, ptr @.str.162, i8 0, i8 -90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.161 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"smsc75xx_status\00", [16 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"intdata: 0x%08X\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unexpected interrupt, intdata=0x%08X\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error writing INT_STS\0A\00", [41 x i8] zeroinitializer }, align 32
@smsc75xx_link_reset.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.165, ptr @.str.26, ptr @.str.166, i8 0, i8 -94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.165 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"smsc75xx_link_reset\00", [44 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"speed: %u duplex: %d lcladv: %04x rmtadv: %04x\0A\00", [48 x i8] zeroinitializer }, align 32
@smsc75xx_update_flowcontrol.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.167, ptr @.str.26, ptr @.str.168, i8 0, i8 -105, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.167 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"smsc75xx_update_flowcontrol\00", [36 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rx pause %s, tx pause %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@smsc75xx_update_flowcontrol.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.167, ptr @.str.26, ptr @.str.171, i8 0, i8 -104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.171 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"half duplex\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Error writing FLOW\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error writing FCT_FLOW\0A\00", [40 x i8] zeroinitializer }, align 32
@smsc75xx_rx_fixup.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.174, ptr @.str.26, ptr @.str.175, i8 2, i8 39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.174 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"smsc75xx_rx_fixup\00", [46 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error rx_cmd_a=0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@smsc75xx_rx_fixup.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.174, ptr @.str.26, ptr @.str.176, i8 2, i8 42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.176 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"size err rx_cmd_a=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Error allocating skb\0A\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 128]
@___asan_gen_.178 = private unnamed_addr constant [11 x i8] c"turbo_mode\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 69, i32 13 }
@___asan_gen_.181 = private unnamed_addr constant [16 x i8] c"smsc75xx_driver\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 2328, i32 26 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 2340, i32 1 }
@___asan_gen_.187 = private unnamed_addr constant [9 x i8] c"products\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 2313, i32 35 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1802, i32 25 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1807, i32 25 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1825, i32 25 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1830, i32 26 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1838, i32 26 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1844, i32 26 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1852, i32 26 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1864, i32 26 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1873, i32 26 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1879, i32 27 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1901, i32 27 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1908, i32 26 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1914, i32 27 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1921, i32 26 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1947, i32 25 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1962, i32 25 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1994, i32 25 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 2014, i32 25 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 2032, i32 25 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 2049, i32 25 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 2068, i32 25 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 2076, i32 25 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 2081, i32 24 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1742, i32 25 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1761, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1767, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1789, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1667, i32 25 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1672, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 94, i32 25 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 126, i32 25 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1711, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1716, i32 25 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1723, i32 25 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 191, i32 25 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 203, i32 25 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 209, i32 25 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 215, i32 25 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 168, i32 26 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 238, i32 25 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 245, i32 25 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 263, i32 25 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1546, i32 25 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 2102, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 2142, i32 25 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 2161, i32 25 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 973, i32 26 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 984, i32 24 }
@___asan_gen_.349 = private unnamed_addr constant [14 x i8] c"smsc75xx_info\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 2300, i32 33 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 2301, i32 17 }
@___asan_gen_.355 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1453, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1457, i32 25 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1470, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1471, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1473, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1486, i32 25 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1495, i32 25 }
@___asan_gen_.391 = private unnamed_addr constant [20 x i8] c"smsc75xx_netdev_ops\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1434, i32 36 }
@___asan_gen_.394 = private unnamed_addr constant [21 x i8] c"smsc75xx_ethtool_ops\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 733, i32 33 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 530, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 538, i32 25 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 468, i32 25 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 474, i32 25 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 482, i32 25 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 489, i32 26 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 495, i32 26 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 501, i32 26 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 507, i32 26 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 452, i32 24 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 766, i32 4 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 776, i32 4 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 784, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 360, i32 26 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 370, i32 26 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 329, i32 26 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 339, i32 24 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 313, i32 25 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 558, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 561, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 566, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 576, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 928, i32 25 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 956, i32 25 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 728, i32 25 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 696, i32 25 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 412, i32 26 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1520, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1050, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1054, i32 25 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1060, i32 25 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1068, i32 25 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1084, i32 25 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1088, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1100, i32 25 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1116, i32 25 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1120, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1124, i32 25 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1128, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1137, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1154, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1168, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1173, i32 25 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1179, i32 25 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1183, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1188, i32 25 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1194, i32 25 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1198, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1208, i32 3 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1231, i32 25 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1235, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1240, i32 25 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1244, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1248, i32 25 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1254, i32 25 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1258, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1262, i32 25 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1270, i32 26 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1279, i32 26 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1286, i32 25 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1292, i32 25 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1299, i32 25 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1307, i32 25 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1317, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1327, i32 25 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1333, i32 25 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1342, i32 25 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1349, i32 25 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1356, i32 25 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1362, i32 25 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1370, i32 25 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1374, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1378, i32 25 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1386, i32 25 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1390, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1394, i32 25 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1412, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1416, i32 25 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1424, i32 25 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1428, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1430, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 795, i32 25 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 801, i32 25 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 808, i32 25 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 814, i32 25 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 839, i32 26 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 846, i32 25 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 872, i32 2 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 1005, i32 25 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 659, i32 25 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 666, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 671, i32 25 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 639, i32 25 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 648, i32 2 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 604, i32 3 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 608, i32 3 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 613, i32 25 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 619, i32 25 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 2204, i32 4 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 2216, i32 5 }
@___asan_gen_.733 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.734 = private constant [30 x i8] c"../drivers/net/usb/smsc75xx.c\00", align 1
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.734, i32 2235, i32 27 }
@llvm.compiler.used = appending global [198 x ptr] [ptr @__UNIQUE_ID_author401, ptr @__UNIQUE_ID_author402, ptr @__UNIQUE_ID_description403, ptr @__UNIQUE_ID_file404, ptr @__UNIQUE_ID_license405, ptr @__UNIQUE_ID_turbo_mode355, ptr @__UNIQUE_ID_turbo_modetype354, ptr @__exitcall_smsc75xx_driver_exit, ptr @__initcall__kmod_smsc75xx__400_2340_smsc75xx_driver_init6, ptr @__param_turbo_mode, ptr @smsc75xx_bind._entry, ptr @smsc75xx_bind._entry_ptr, ptr @smsc75xx_driver_exit, ptr @turbo_mode, ptr @smsc75xx_driver, ptr @.str, ptr @products, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @smsc75xx_info, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @smsc75xx_bind.__key, ptr @.str.58, ptr @smsc75xx_bind.__key.59, ptr @.str.60, ptr @smsc75xx_bind.__key.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @smsc75xx_netdev_ops, ptr @smsc75xx_ethtool_ops, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177], section "llvm.metadata"
@0 = internal global [186 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @turbo_mode to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc75xx_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @products to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc75xx_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc75xx_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc75xx_bind.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc75xx_bind.__key.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc75xx_bind.__key.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc75xx_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc75xx_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc75xx_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @smsc75xx_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @smsc75xx_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_deregister(ptr noundef nonnull @smsc75xx_driver) #10
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
define internal i32 @smsc75xx_suspend(ptr noundef %intf, [1 x i32] %message.coerce) #2 align 64 {
entry:
  %buf.i.i441 = alloca i32, align 4
  %buf.i.i432 = alloca i32, align 4
  %buf.i.i422 = alloca i32, align 4
  %buf.i.i414 = alloca i32, align 4
  %buf.i.i = alloca i32, align 4
  %val = alloca i32, align 4
  %mcast = alloca [3 x i8], align 1
  %arp = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %message.coerce.fca.0.extract = extractvalue [1 x i32] %message.coerce, 0
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %data = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %4 = inttoptr i32 %3 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %val, align 4, !annotation !420
  %call2 = tail call i32 @usbnet_suspend(ptr noundef %intf, [1 x i32] %message.coerce) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %net = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %7, ptr noundef nonnull @.str.1) #13
  br label %cleanup274

if.end:                                           ; preds = %entry
  %suspend_flags = getelementptr inbounds %struct.smsc75xx_priv, ptr %4, i32 0, i32 7
  %8 = ptrtoint ptr %suspend_flags to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %suspend_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %net4 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %10 = ptrtoint ptr %net4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net4, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %11, ptr noundef nonnull @.str.2) #13
  %12 = ptrtoint ptr %suspend_flags to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %suspend_flags, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %mii1.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 25
  %net.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %13 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net.i, align 4
  %15 = ptrtoint ptr %mii1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mii1.i, align 4
  %call.i = tail call fastcc i32 @smsc75xx_mdio_read_nopm(ptr noundef %14, i32 noundef %16, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  %17 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %18, ptr noundef nonnull @.str.24) #13
  br label %smsc75xx_link_ok_nopm.exit

if.end.i:                                         ; preds = %if.end6
  %19 = ptrtoint ptr %mii1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mii1.i, align 4
  %call5.i = tail call fastcc i32 @smsc75xx_mdio_read_nopm(ptr noundef %18, i32 noundef %20, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.then7.i, label %if.end9.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %22, ptr noundef nonnull @.str.24) #13
  br label %smsc75xx_link_ok_nopm.exit

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %and.i = lshr i32 %call5.i, 2
  %and.lobit.i = and i32 %and.i, 1
  br label %smsc75xx_link_ok_nopm.exit

smsc75xx_link_ok_nopm.exit:                       ; preds = %if.end9.i, %if.then7.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call5.i, %if.then7.i ], [ %and.lobit.i, %if.end9.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1026, i32 %message.coerce.fca.0.extract)
  %cmp8 = icmp eq i32 %message.coerce.fca.0.extract, 1026
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %smsc75xx_link_ok_nopm.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = tail call fastcc i32 @smsc75xx_autosuspend(ptr noundef %1, i32 noundef %retval.0.i)
  br label %done

if.end11:                                         ; preds = %smsc75xx_link_ok_nopm.exit
  %wolopts = getelementptr inbounds %struct.smsc75xx_priv, ptr %4, i32 0, i32 2
  %23 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %wolopts, align 4
  %and = and i32 %24, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end11.if.then18_crit_edge, label %lor.lhs.false

if.end11.if.then18_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

lor.lhs.false:                                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool13.not = icmp eq i32 %retval.0.i, 0
  %and16 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %or.cond = select i1 %tobool13.not, i1 %tobool17.not, i1 false
  br i1 %or.cond, label %lor.lhs.false.if.then18_crit_edge, label %if.end43

lor.lhs.false.if.then18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

if.then18:                                        ; preds = %lor.lhs.false.if.then18_crit_edge, %if.end11.if.then18_crit_edge
  %25 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %net.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %26, ptr noundef nonnull @.str.3) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #10
  %27 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %buf.i.i, align 4, !annotation !420
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !421

do.body4.i.i:                                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #10, !srcloc !422
  unreachable

do.end9.i.i:                                      ; preds = %if.then18
  %call.i.i = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 320, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then22, label %do.end9.i.i419, !prof !421

if.then22:                                        ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %29, ptr noundef nonnull @.str.33, i32 noundef 320, i32 noundef %call.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #10
  %30 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %31, ptr noundef nonnull @.str.4) #13
  br label %done

do.end9.i.i419:                                   ; preds = %do.end9.i.i
  %32 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #10
  %34 = and i32 %33, -100663297
  %35 = call i32 @llvm.bswap.i32(i32 %34)
  %36 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %val, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i414) #10
  %37 = ptrtoint ptr %buf.i.i414 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %34, ptr %buf.i.i414, align 4
  %call.i.i417 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 320, ptr noundef nonnull %buf.i.i414, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i417)
  %cmp.i.i418 = icmp slt i32 %call.i.i417, 0
  br i1 %cmp.i.i418, label %if.then28, label %do.end9.i.i427, !prof !421

if.then28:                                        ; preds = %do.end9.i.i419
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %39, ptr noundef nonnull @.str.34, i32 noundef 320, i32 noundef %call.i.i417) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i414) #10
  %40 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %41, ptr noundef nonnull @.str.5) #13
  br label %done

do.end9.i.i427:                                   ; preds = %do.end9.i.i419
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i414) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i422) #10
  %42 = ptrtoint ptr %buf.i.i422 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %buf.i.i422, align 4, !annotation !420
  %call.i.i425 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %buf.i.i422, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i425)
  %cmp.i.i426 = icmp slt i32 %call.i.i425, 0
  br i1 %cmp.i.i426, label %if.then33, label %do.end9.i.i437, !prof !421

if.then33:                                        ; preds = %do.end9.i.i427
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %44, ptr noundef nonnull @.str.33, i32 noundef 20, i32 noundef %call.i.i425) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i422) #10
  %45 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %46, ptr noundef nonnull @.str.6) #13
  br label %done

do.end9.i.i437:                                   ; preds = %do.end9.i.i427
  %47 = ptrtoint ptr %buf.i.i422 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %buf.i.i422, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i422) #10
  %49 = and i32 %48, -201326593
  %50 = call i32 @llvm.bswap.i32(i32 %49)
  %51 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %val, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i432) #10
  %52 = ptrtoint ptr %buf.i.i432 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %49, ptr %buf.i.i432, align 4
  %call.i.i435 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %buf.i.i432, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i435)
  %cmp.i.i436 = icmp slt i32 %call.i.i435, 0
  br i1 %cmp.i.i436, label %if.then39, label %if.end41, !prof !421

if.then39:                                        ; preds = %do.end9.i.i437
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %54, ptr noundef nonnull @.str.34, i32 noundef 20, i32 noundef %call.i.i435) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i432) #10
  %55 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %56, ptr noundef nonnull @.str.7) #13
  br label %done

if.end41:                                         ; preds = %do.end9.i.i437
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i432) #10
  %call42 = call fastcc i32 @smsc75xx_enter_suspend2(ptr noundef nonnull %1)
  br label %done

if.end43:                                         ; preds = %lor.lhs.false
  br i1 %tobool17.not, label %if.end43.if.end67_crit_edge, label %if.then47

if.end43.if.end67_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.then47:                                        ; preds = %if.end43
  %call48 = tail call fastcc i32 @smsc75xx_enable_phy_wakeup_interrupts(ptr noundef %1, i16 noundef zeroext 80)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %net.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %58, ptr noundef nonnull @.str.8) #13
  br label %done

if.end52:                                         ; preds = %if.then47
  br i1 %tobool13.not, label %if.then54, label %if.end52.if.end67_crit_edge

if.end52.if.end67_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.then54:                                        ; preds = %if.end52
  %59 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %net.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %60, ptr noundef nonnull @.str.9) #13
  %61 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %net.i, align 4
  %63 = ptrtoint ptr %mii1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mii1.i, align 4
  %call58 = tail call fastcc i32 @smsc75xx_mdio_read_nopm(ptr noundef %62, i32 noundef %64, i32 noundef 17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %if.then60, label %if.end62

if.then60:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %net.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %66, ptr noundef nonnull @.str.10) #13
  br label %done

if.end62:                                         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %call58, 8192
  %67 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %net.i, align 4
  %69 = ptrtoint ptr %mii1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mii1.i, align 4
  tail call fastcc void @smsc75xx_mdio_write_nopm(ptr noundef %68, i32 noundef %70, i32 noundef 17, i32 noundef %or)
  %call65 = tail call fastcc i32 @smsc75xx_enter_suspend1(ptr noundef %1)
  br label %done

if.end67:                                         ; preds = %if.end52.if.end67_crit_edge, %if.end43.if.end67_crit_edge
  %71 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %wolopts, align 4
  %and69 = and i32 %72, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end67
  %tobool.not.i.i442 = icmp eq ptr %1, null
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i441) #10
  br i1 %tobool.not.i.i442, label %do.body4.i.i443, label %do.end9.i.i446, !prof !421

do.body4.i.i443:                                  ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !425
  unreachable

do.end9.i.i446:                                   ; preds = %for.cond.preheader
  %73 = ptrtoint ptr %buf.i.i441 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %buf.i.i441, align 4
  %call.i.i444 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 324, ptr noundef nonnull %buf.i.i441, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i444)
  %cmp.i.i445 = icmp slt i32 %call.i.i444, 0
  br i1 %cmp.i.i445, label %do.end9.i.i446.if.then75_crit_edge, label %do.end9.i.i446.1, !prof !421

do.end9.i.i446.if.then75_crit_edge:               ; preds = %do.end9.i.i446
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then75

if.then75:                                        ; preds = %do.end9.i.i446.7.if.then75_crit_edge, %do.end9.i.i446.6.if.then75_crit_edge, %do.end9.i.i446.5.if.then75_crit_edge, %do.end9.i.i446.4.if.then75_crit_edge, %do.end9.i.i446.3.if.then75_crit_edge, %do.end9.i.i446.2.if.then75_crit_edge, %do.end9.i.i446.1.if.then75_crit_edge, %do.end9.i.i446.if.then75_crit_edge
  %add.lcssa = phi i32 [ 324, %do.end9.i.i446.if.then75_crit_edge ], [ 328, %do.end9.i.i446.1.if.then75_crit_edge ], [ 332, %do.end9.i.i446.2.if.then75_crit_edge ], [ 336, %do.end9.i.i446.3.if.then75_crit_edge ], [ 340, %do.end9.i.i446.4.if.then75_crit_edge ], [ 344, %do.end9.i.i446.5.if.then75_crit_edge ], [ 348, %do.end9.i.i446.6.if.then75_crit_edge ], [ 352, %do.end9.i.i446.7.if.then75_crit_edge ]
  %call.i.i444.lcssa = phi i32 [ %call.i.i444, %do.end9.i.i446.if.then75_crit_edge ], [ %call.i.i444.1, %do.end9.i.i446.1.if.then75_crit_edge ], [ %call.i.i444.2, %do.end9.i.i446.2.if.then75_crit_edge ], [ %call.i.i444.3, %do.end9.i.i446.3.if.then75_crit_edge ], [ %call.i.i444.4, %do.end9.i.i446.4.if.then75_crit_edge ], [ %call.i.i444.5, %do.end9.i.i446.5.if.then75_crit_edge ], [ %call.i.i444.6, %do.end9.i.i446.6.if.then75_crit_edge ], [ %call.i.i444.7, %do.end9.i.i446.7.if.then75_crit_edge ]
  %74 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %75, ptr noundef nonnull @.str.34, i32 noundef %add.lcssa, i32 noundef %call.i.i444.lcssa) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i441) #10
  %76 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %77, ptr noundef nonnull @.str.11) #13
  br label %done

do.end9.i.i446.1:                                 ; preds = %do.end9.i.i446
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i441) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i441) #10
  %78 = ptrtoint ptr %buf.i.i441 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %buf.i.i441, align 4
  %call.i.i444.1 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 328, ptr noundef nonnull %buf.i.i441, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i444.1)
  %cmp.i.i445.1 = icmp slt i32 %call.i.i444.1, 0
  br i1 %cmp.i.i445.1, label %do.end9.i.i446.1.if.then75_crit_edge, label %do.end9.i.i446.2, !prof !421

do.end9.i.i446.1.if.then75_crit_edge:             ; preds = %do.end9.i.i446.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then75

do.end9.i.i446.2:                                 ; preds = %do.end9.i.i446.1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i441) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i441) #10
  %79 = ptrtoint ptr %buf.i.i441 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %buf.i.i441, align 4
  %call.i.i444.2 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 332, ptr noundef nonnull %buf.i.i441, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i444.2)
  %cmp.i.i445.2 = icmp slt i32 %call.i.i444.2, 0
  br i1 %cmp.i.i445.2, label %do.end9.i.i446.2.if.then75_crit_edge, label %do.end9.i.i446.3, !prof !421

do.end9.i.i446.2.if.then75_crit_edge:             ; preds = %do.end9.i.i446.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then75

do.end9.i.i446.3:                                 ; preds = %do.end9.i.i446.2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i441) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i441) #10
  %80 = ptrtoint ptr %buf.i.i441 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %buf.i.i441, align 4
  %call.i.i444.3 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 336, ptr noundef nonnull %buf.i.i441, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i444.3)
  %cmp.i.i445.3 = icmp slt i32 %call.i.i444.3, 0
  br i1 %cmp.i.i445.3, label %do.end9.i.i446.3.if.then75_crit_edge, label %do.end9.i.i446.4, !prof !421

do.end9.i.i446.3.if.then75_crit_edge:             ; preds = %do.end9.i.i446.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then75

do.end9.i.i446.4:                                 ; preds = %do.end9.i.i446.3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i441) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i441) #10
  %81 = ptrtoint ptr %buf.i.i441 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %buf.i.i441, align 4
  %call.i.i444.4 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 340, ptr noundef nonnull %buf.i.i441, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i444.4)
  %cmp.i.i445.4 = icmp slt i32 %call.i.i444.4, 0
  br i1 %cmp.i.i445.4, label %do.end9.i.i446.4.if.then75_crit_edge, label %do.end9.i.i446.5, !prof !421

do.end9.i.i446.4.if.then75_crit_edge:             ; preds = %do.end9.i.i446.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then75

do.end9.i.i446.5:                                 ; preds = %do.end9.i.i446.4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i441) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i441) #10
  %82 = ptrtoint ptr %buf.i.i441 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %buf.i.i441, align 4
  %call.i.i444.5 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 344, ptr noundef nonnull %buf.i.i441, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i444.5)
  %cmp.i.i445.5 = icmp slt i32 %call.i.i444.5, 0
  br i1 %cmp.i.i445.5, label %do.end9.i.i446.5.if.then75_crit_edge, label %do.end9.i.i446.6, !prof !421

do.end9.i.i446.5.if.then75_crit_edge:             ; preds = %do.end9.i.i446.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then75

do.end9.i.i446.6:                                 ; preds = %do.end9.i.i446.5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i441) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i441) #10
  %83 = ptrtoint ptr %buf.i.i441 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %buf.i.i441, align 4
  %call.i.i444.6 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 348, ptr noundef nonnull %buf.i.i441, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i444.6)
  %cmp.i.i445.6 = icmp slt i32 %call.i.i444.6, 0
  br i1 %cmp.i.i445.6, label %do.end9.i.i446.6.if.then75_crit_edge, label %do.end9.i.i446.7, !prof !421

do.end9.i.i446.6.if.then75_crit_edge:             ; preds = %do.end9.i.i446.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then75

do.end9.i.i446.7:                                 ; preds = %do.end9.i.i446.6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i441) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i441) #10
  %84 = ptrtoint ptr %buf.i.i441 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %buf.i.i441, align 4
  %call.i.i444.7 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 352, ptr noundef nonnull %buf.i.i441, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i444.7)
  %cmp.i.i445.7 = icmp slt i32 %call.i.i444.7, 0
  br i1 %cmp.i.i445.7, label %do.end9.i.i446.7.if.then75_crit_edge, label %for.inc.7, !prof !421

do.end9.i.i446.7.if.then75_crit_edge:             ; preds = %do.end9.i.i446.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then75

for.inc.7:                                        ; preds = %do.end9.i.i446.7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i441) #10
  %85 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %wolopts, align 4
  %and79 = and i32 %86, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %for.inc.7.if.end93_crit_edge, label %if.then81

for.inc.7.if.end93_crit_edge:                     ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

if.then81:                                        ; preds = %for.inc.7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %mcast) #10
  %87 = call ptr @memcpy(ptr %mcast, ptr @__const.smsc75xx_suspend.mcast, i32 3)
  %88 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %89, ptr noundef nonnull @.str.12) #13
  %call83 = call fastcc zeroext i16 @smsc_crc(ptr noundef nonnull %mcast, i32 noundef 3)
  %conv = zext i16 %call83 to i32
  %or84 = or i32 %conv, -2113929216
  %90 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %or84, ptr %val, align 4
  %call86 = call fastcc i32 @smsc75xx_write_wuff(ptr noundef nonnull %1, i32 noundef 0, i32 noundef %or84, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87 = icmp slt i32 %call86, 0
  br i1 %cmp87, label %cleanup92.thread, label %cleanup92

cleanup92.thread:                                 ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  %91 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %92, ptr noundef nonnull @.str.13) #13
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %mcast) #10
  br label %done

cleanup92:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %mcast) #10
  br label %if.end93

if.end93:                                         ; preds = %cleanup92, %for.inc.7.if.end93_crit_edge
  %filter.0 = phi i32 [ 1, %cleanup92 ], [ 0, %for.inc.7.if.end93_crit_edge ]
  %93 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %wolopts, align 4
  %and95 = and i32 %94, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.end93.if.end113_crit_edge, label %if.then97

if.end93.if.end113_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.then97:                                        ; preds = %if.end93
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %arp) #10
  %95 = ptrtoint ptr %arp to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 2054, ptr %arp, align 2
  %96 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %97, ptr noundef nonnull @.str.14) #13
  %call100 = call fastcc zeroext i16 @smsc_crc(ptr noundef nonnull %arp, i32 noundef 2)
  %conv101 = zext i16 %call100 to i32
  %or102 = or i32 %conv101, -2096365568
  %98 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %or102, ptr %val, align 4
  %call104 = call fastcc i32 @smsc75xx_write_wuff(ptr noundef nonnull %1, i32 noundef %filter.0, i32 noundef %or102, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp105 = icmp slt i32 %call104, 0
  br i1 %cmp105, label %cleanup110.thread, label %cleanup110

cleanup110.thread:                                ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #12
  %99 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %100, ptr noundef nonnull @.str.13) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %arp) #10
  br label %done

cleanup110:                                       ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %arp) #10
  br label %if.end113

if.end113:                                        ; preds = %cleanup110, %if.end93.if.end113_crit_edge
  %call114 = call fastcc i32 @smsc75xx_read_reg_nopm(ptr noundef nonnull %1, i32 noundef 320, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %cmp115 = icmp slt i32 %call114, 0
  br i1 %cmp115, label %if.then117, label %if.end119

if.then117:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  %101 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %102, ptr noundef nonnull @.str.4) #13
  br label %done

if.end119:                                        ; preds = %if.end113
  %103 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %val, align 4
  %or120 = or i32 %104, 64
  store i32 %or120, ptr %val, align 4
  %call121 = call fastcc i32 @smsc75xx_write_reg_nopm(ptr noundef nonnull %1, i32 noundef 320, i32 noundef %or120)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %cmp122 = icmp slt i32 %call121, 0
  %105 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %net.i, align 4
  br i1 %cmp122, label %if.then124, label %if.end126

if.then124:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %106, ptr noundef nonnull @.str.5) #13
  br label %done

if.end126:                                        ; preds = %if.end119
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %106, ptr noundef nonnull @.str.15) #13
  %call128 = call fastcc i32 @smsc75xx_read_reg_nopm(ptr noundef nonnull %1, i32 noundef 320, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %cmp129 = icmp slt i32 %call128, 0
  br i1 %cmp129, label %if.then131, label %if.end133

if.then131:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #12
  %107 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %108, ptr noundef nonnull @.str.4) #13
  br label %done

if.end133:                                        ; preds = %if.end126
  %109 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %val, align 4
  %or134 = or i32 %110, 4
  store i32 %or134, ptr %val, align 4
  %call135 = call fastcc i32 @smsc75xx_write_reg_nopm(ptr noundef nonnull %1, i32 noundef 320, i32 noundef %or134)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %cmp136 = icmp slt i32 %call135, 0
  br i1 %cmp136, label %if.then138, label %if.end133.if.end159_crit_edge

if.end133.if.end159_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end159

if.then138:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #12
  %111 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %112, ptr noundef nonnull @.str.5) #13
  br label %done

if.else:                                          ; preds = %if.end67
  %113 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %net.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %114, ptr noundef nonnull @.str.16) #13
  %call146 = call fastcc i32 @smsc75xx_read_reg_nopm(ptr noundef %1, i32 noundef 320, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %cmp147 = icmp slt i32 %call146, 0
  br i1 %cmp147, label %if.then149, label %if.end151

if.then149:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %115 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %net.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %116, ptr noundef nonnull @.str.4) #13
  br label %done

if.end151:                                        ; preds = %if.else
  %117 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %val, align 4
  %and152 = and i32 %118, -5
  store i32 %and152, ptr %val, align 4
  %call153 = tail call fastcc i32 @smsc75xx_write_reg_nopm(ptr noundef %1, i32 noundef 320, i32 noundef %and152)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %cmp154 = icmp slt i32 %call153, 0
  br i1 %cmp154, label %if.then156, label %if.end151.if.end159_crit_edge

if.end151.if.end159_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end159

if.then156:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #12
  %119 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %net.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %120, ptr noundef nonnull @.str.5) #13
  br label %done

if.end159:                                        ; preds = %if.end151.if.end159_crit_edge, %if.end133.if.end159_crit_edge
  %call160 = call fastcc i32 @smsc75xx_read_reg_nopm(ptr noundef %1, i32 noundef 320, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %cmp161 = icmp slt i32 %call160, 0
  br i1 %cmp161, label %if.then163, label %if.end165

if.then163:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #12
  %121 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %122, ptr noundef nonnull @.str.4) #13
  br label %done

if.end165:                                        ; preds = %if.end159
  %123 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %val, align 4
  %and166 = and i32 %124, -12
  store i32 %and166, ptr %val, align 4
  %call167 = call fastcc i32 @smsc75xx_write_reg_nopm(ptr noundef %1, i32 noundef 320, i32 noundef %and166)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %cmp168 = icmp slt i32 %call167, 0
  br i1 %cmp168, label %if.then170, label %if.end172

if.then170:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #12
  %125 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %126, ptr noundef nonnull @.str.5) #13
  br label %done

if.end172:                                        ; preds = %if.end165
  %127 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %wolopts, align 4
  %and174 = and i32 %128, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and174)
  %tobool175.not = icmp eq i32 %and174, 0
  br i1 %tobool175.not, label %if.end172.if.end192_crit_edge, label %if.then176

if.end172.if.end192_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end192

if.then176:                                       ; preds = %if.end172
  %129 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %130, ptr noundef nonnull @.str.17) #13
  %call178 = call fastcc i32 @smsc75xx_read_reg_nopm(ptr noundef %1, i32 noundef 20, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %cmp179 = icmp slt i32 %call178, 0
  br i1 %cmp179, label %if.then181, label %if.end183

if.then181:                                       ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #12
  %131 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %132, ptr noundef nonnull @.str.6) #13
  br label %done

if.end183:                                        ; preds = %if.then176
  %133 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %val, align 4
  %and184 = and i32 %134, -8
  %or185 = or i32 %and184, 5
  store i32 %or185, ptr %val, align 4
  %call186 = call fastcc i32 @smsc75xx_write_reg_nopm(ptr noundef %1, i32 noundef 20, i32 noundef %or185)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %cmp187 = icmp slt i32 %call186, 0
  br i1 %cmp187, label %if.then189, label %if.end183.if.end192_crit_edge

if.end183.if.end192_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end192

if.then189:                                       ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #12
  %135 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %136, ptr noundef nonnull @.str.7) #13
  br label %done

if.end192:                                        ; preds = %if.end183.if.end192_crit_edge, %if.end172.if.end192_crit_edge
  %137 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %wolopts, align 4
  %and194 = and i32 %138, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and194)
  %tobool195.not = icmp eq i32 %and194, 0
  br i1 %tobool195.not, label %if.end192.if.end211_crit_edge, label %if.then196

if.end192.if.end211_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end211

if.then196:                                       ; preds = %if.end192
  %139 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %140, ptr noundef nonnull @.str.18) #13
  %call198 = call fastcc i32 @smsc75xx_read_reg_nopm(ptr noundef %1, i32 noundef 320, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call198)
  %cmp199 = icmp slt i32 %call198, 0
  br i1 %cmp199, label %if.then201, label %if.end203

if.then201:                                       ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #12
  %141 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %142, ptr noundef nonnull @.str.4) #13
  br label %done

if.end203:                                        ; preds = %if.then196
  %143 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %val, align 4
  %or204 = or i32 %144, 34
  store i32 %or204, ptr %val, align 4
  %call205 = call fastcc i32 @smsc75xx_write_reg_nopm(ptr noundef %1, i32 noundef 320, i32 noundef %or204)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call205)
  %cmp206 = icmp slt i32 %call205, 0
  br i1 %cmp206, label %if.then208, label %if.end203.if.end211_crit_edge

if.end203.if.end211_crit_edge:                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end211

if.then208:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #12
  %145 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %146, ptr noundef nonnull @.str.5) #13
  br label %done

if.end211:                                        ; preds = %if.end203.if.end211_crit_edge, %if.end192.if.end211_crit_edge
  %147 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %wolopts, align 4
  %and213 = and i32 %148, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and213)
  %tobool214.not = icmp eq i32 %and213, 0
  br i1 %tobool214.not, label %if.end211.if.end230_crit_edge, label %if.then215

if.end211.if.end230_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end230

if.then215:                                       ; preds = %if.end211
  %149 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %150, ptr noundef nonnull @.str.19) #13
  %call217 = call fastcc i32 @smsc75xx_read_reg_nopm(ptr noundef %1, i32 noundef 320, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call217)
  %cmp218 = icmp slt i32 %call217, 0
  br i1 %cmp218, label %if.then220, label %if.end222

if.then220:                                       ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #12
  %151 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %152, ptr noundef nonnull @.str.4) #13
  br label %done

if.end222:                                        ; preds = %if.then215
  %153 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %val, align 4
  %or223 = or i32 %154, 17
  store i32 %or223, ptr %val, align 4
  %call224 = call fastcc i32 @smsc75xx_write_reg_nopm(ptr noundef %1, i32 noundef 320, i32 noundef %or223)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call224)
  %cmp225 = icmp slt i32 %call224, 0
  br i1 %cmp225, label %if.then227, label %if.end222.if.end230_crit_edge

if.end222.if.end230_crit_edge:                    ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end230

if.then227:                                       ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #12
  %155 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %156, ptr noundef nonnull @.str.5) #13
  br label %done

if.end230:                                        ; preds = %if.end222.if.end230_crit_edge, %if.end211.if.end230_crit_edge
  %157 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %wolopts, align 4
  %and232 = and i32 %158, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and232)
  %tobool233.not = icmp eq i32 %and232, 0
  br i1 %tobool233.not, label %if.end230.if.end249_crit_edge, label %if.then234

if.end230.if.end249_crit_edge:                    ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end249

if.then234:                                       ; preds = %if.end230
  %159 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %160, ptr noundef nonnull @.str.20) #13
  %call236 = call fastcc i32 @smsc75xx_read_reg_nopm(ptr noundef %1, i32 noundef 320, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call236)
  %cmp237 = icmp slt i32 %call236, 0
  br i1 %cmp237, label %if.then239, label %if.end241

if.then239:                                       ; preds = %if.then234
  call void @__sanitizer_cov_trace_pc() #12
  %161 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %162, ptr noundef nonnull @.str.4) #13
  br label %done

if.end241:                                        ; preds = %if.then234
  %163 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %val, align 4
  %or242 = or i32 %164, 72
  store i32 %or242, ptr %val, align 4
  %call243 = call fastcc i32 @smsc75xx_write_reg_nopm(ptr noundef %1, i32 noundef 320, i32 noundef %or242)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call243)
  %cmp244 = icmp slt i32 %call243, 0
  br i1 %cmp244, label %if.then246, label %if.end241.if.end249_crit_edge

if.end241.if.end249_crit_edge:                    ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end249

if.then246:                                       ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #12
  %165 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %166, ptr noundef nonnull @.str.5) #13
  br label %done

if.end249:                                        ; preds = %if.end241.if.end249_crit_edge, %if.end230.if.end249_crit_edge
  %call250 = call fastcc i32 @smsc75xx_read_reg_nopm(ptr noundef %1, i32 noundef 260, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call250)
  %cmp251 = icmp slt i32 %call250, 0
  br i1 %cmp251, label %if.then253, label %if.end255

if.then253:                                       ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #12
  %167 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %168, ptr noundef nonnull @.str.21, i32 noundef %call250) #13
  br label %done

if.end255:                                        ; preds = %if.end249
  %169 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %val, align 4
  %or256 = or i32 %170, 1
  store i32 %or256, ptr %val, align 4
  %call257 = call fastcc i32 @smsc75xx_write_reg_nopm(ptr noundef %1, i32 noundef 260, i32 noundef %or256)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call257)
  %cmp258 = icmp slt i32 %call257, 0
  %171 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %net.i, align 4
  br i1 %cmp258, label %if.then260, label %if.end262

if.then260:                                       ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %172, ptr noundef nonnull @.str.22, i32 noundef %call257) #13
  br label %done

if.end262:                                        ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %172, ptr noundef nonnull @.str.23) #13
  %call264 = call fastcc i32 @smsc75xx_enter_suspend0(ptr noundef %1)
  br label %done

done:                                             ; preds = %if.end262, %if.then260, %if.then253, %if.then246, %if.then239, %if.then227, %if.then220, %if.then208, %if.then201, %if.then189, %if.then181, %if.then170, %if.then163, %if.then156, %if.then149, %if.then138, %if.then131, %if.then124, %if.then117, %cleanup110.thread, %cleanup92.thread, %if.then75, %if.end62, %if.then60, %if.then50, %if.end41, %if.then39, %if.then33, %if.then28, %if.then22, %if.then9
  %ret.2 = phi i32 [ %call10, %if.then9 ], [ %call48, %if.then50 ], [ %call160, %if.then163 ], [ %call167, %if.then170 ], [ %call178, %if.then181 ], [ %call186, %if.then189 ], [ %call198, %if.then201 ], [ %call205, %if.then208 ], [ %call217, %if.then220 ], [ %call224, %if.then227 ], [ %call236, %if.then239 ], [ %call243, %if.then246 ], [ %call250, %if.then253 ], [ %call257, %if.then260 ], [ %call264, %if.end262 ], [ %call146, %if.then149 ], [ %call153, %if.then156 ], [ %call.i.i, %if.then22 ], [ %call.i.i417, %if.then28 ], [ %call.i.i425, %if.then33 ], [ %call.i.i435, %if.then39 ], [ %call42, %if.end41 ], [ %call58, %if.then60 ], [ %call65, %if.end62 ], [ %call104, %cleanup110.thread ], [ %call86, %cleanup92.thread ], [ %call135, %if.then138 ], [ %call128, %if.then131 ], [ %call121, %if.then124 ], [ %call114, %if.then117 ], [ %call.i.i444.lcssa, %if.then75 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool266.not = icmp eq i32 %ret.2, 0
  %and268 = and i32 %message.coerce.fca.0.extract, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and268)
  %cmp269.not = icmp eq i32 %and268, 0
  %or.cond413 = select i1 %tobool266.not, i1 true, i1 %cmp269.not
  br i1 %or.cond413, label %done.cleanup274_crit_edge, label %if.then271

done.cleanup274_crit_edge:                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup274

if.then271:                                       ; preds = %done
  call void @__sanitizer_cov_trace_pc() #12
  %call272 = call i32 @usbnet_resume(ptr noundef %intf) #10
  br label %cleanup274

cleanup274:                                       ; preds = %if.then271, %done.cleanup274_crit_edge, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %ret.2, %if.then271 ], [ %ret.2, %done.cleanup274_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc75xx_resume(ptr noundef %intf) #2 align 64 {
entry:
  %buf.i.i147 = alloca i32, align 4
  %buf.i.i138 = alloca i32, align 4
  %buf.i.i128 = alloca i32, align 4
  %buf.i.i119 = alloca i32, align 4
  %buf.i.i109 = alloca i32, align 4
  %buf.i.i101 = alloca i32, align 4
  %buf.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %data = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %4 = inttoptr i32 %3 to ptr
  %suspend_flags1 = getelementptr inbounds %struct.smsc75xx_priv, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %suspend_flags1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %suspend_flags1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc75xx_resume.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc75xx_resume, %if.then)) #10
          to label %do.end7 [label %if.then], !srcloc !426

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %net = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %7 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net, align 4
  %conv = zext i8 %6 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc75xx_resume.__UNIQUE_ID_ddebug395, ptr noundef %8, ptr noundef nonnull @.str.49, i32 noundef %conv) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  %9 = ptrtoint ptr %suspend_flags1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %suspend_flags1, align 4
  %conv9 = zext i8 %6 to i32
  %and = and i32 %conv9, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %do.end7.if.end37_crit_edge, label %if.then11

do.end7.if.end37_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then11:                                        ; preds = %do.end7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #10
  %10 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %buf.i.i, align 4, !annotation !420
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !421

do.body4.i.i:                                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #10, !srcloc !422
  unreachable

do.end9.i.i:                                      ; preds = %if.then11
  %call.i.i = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 320, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then14, label %do.end9.i.i106, !prof !421

if.then14:                                        ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %11 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %12, ptr noundef nonnull @.str.33, i32 noundef 320, i32 noundef %call.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #10
  %13 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %14, ptr noundef nonnull @.str.4) #13
  br label %cleanup

do.end9.i.i106:                                   ; preds = %do.end9.i.i
  %15 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %buf.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #10
  %17 = and i32 %16, -251658241
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i101) #10
  %18 = ptrtoint ptr %buf.i.i101 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %buf.i.i101, align 4
  %call.i.i104 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 320, ptr noundef nonnull %buf.i.i101, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i104)
  %cmp.i.i105 = icmp slt i32 %call.i.i104, 0
  br i1 %cmp.i.i105, label %if.then21, label %do.end9.i.i114, !prof !421

if.then21:                                        ; preds = %do.end9.i.i106
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i107 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %19 = ptrtoint ptr %net.i.i107 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net.i.i107, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %20, ptr noundef nonnull @.str.34, i32 noundef 320, i32 noundef %call.i.i104) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i101) #10
  %21 = ptrtoint ptr %net.i.i107 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net.i.i107, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %22, ptr noundef nonnull @.str.5) #13
  br label %cleanup

do.end9.i.i114:                                   ; preds = %do.end9.i.i106
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i101) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i109) #10
  %23 = ptrtoint ptr %buf.i.i109 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %buf.i.i109, align 4, !annotation !420
  %call.i.i112 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %buf.i.i109, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i112)
  %cmp.i.i113 = icmp slt i32 %call.i.i112, 0
  br i1 %cmp.i.i113, label %if.then27, label %do.end9.i.i124, !prof !421

if.then27:                                        ; preds = %do.end9.i.i114
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i115 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %24 = ptrtoint ptr %net.i.i115 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net.i.i115, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %25, ptr noundef nonnull @.str.33, i32 noundef 20, i32 noundef %call.i.i112) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i109) #10
  %26 = ptrtoint ptr %net.i.i115 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net.i.i115, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %27, ptr noundef nonnull @.str.6) #13
  br label %cleanup

do.end9.i.i124:                                   ; preds = %do.end9.i.i114
  %28 = ptrtoint ptr %buf.i.i109 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %buf.i.i109, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i109) #10
  %30 = and i32 %29, -184549377
  %31 = or i32 %30, 50331648
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i119) #10
  %32 = ptrtoint ptr %buf.i.i119 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %buf.i.i119, align 4
  %call.i.i122 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %buf.i.i119, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i122)
  %cmp.i.i123 = icmp slt i32 %call.i.i122, 0
  br i1 %cmp.i.i123, label %if.then34, label %smsc75xx_write_reg_nopm.exit127, !prof !421

smsc75xx_write_reg_nopm.exit127:                  ; preds = %do.end9.i.i124
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i119) #10
  br label %if.end37

if.then34:                                        ; preds = %do.end9.i.i124
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i125 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %33 = ptrtoint ptr %net.i.i125 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %net.i.i125, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %34, ptr noundef nonnull @.str.34, i32 noundef 20, i32 noundef %call.i.i122) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i119) #10
  %35 = ptrtoint ptr %net.i.i125 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %net.i.i125, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %36, ptr noundef nonnull @.str.7) #13
  br label %cleanup

if.end37:                                         ; preds = %smsc75xx_write_reg_nopm.exit127, %do.end7.if.end37_crit_edge
  %and39 = and i32 %conv9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end37.if.end56_crit_edge, label %if.then41

if.end37.if.end56_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then41:                                        ; preds = %if.end37
  %net42 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %37 = ptrtoint ptr %net42 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %net42, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %38, ptr noundef nonnull @.str.50) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i128) #10
  %39 = ptrtoint ptr %buf.i.i128 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %buf.i.i128, align 4, !annotation !420
  %tobool.not.i.i129 = icmp eq ptr %1, null
  br i1 %tobool.not.i.i129, label %do.body4.i.i130, label %do.end9.i.i133, !prof !421

do.body4.i.i130:                                  ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #10, !srcloc !422
  unreachable

do.end9.i.i133:                                   ; preds = %if.then41
  %call.i.i131 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %buf.i.i128, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i131)
  %cmp.i.i132 = icmp slt i32 %call.i.i131, 0
  br i1 %cmp.i.i132, label %if.then46, label %do.end9.i.i143, !prof !421

if.then46:                                        ; preds = %do.end9.i.i133
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %net42 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %net42, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %41, ptr noundef nonnull @.str.33, i32 noundef 20, i32 noundef %call.i.i131) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i128) #10
  %42 = ptrtoint ptr %net42 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %net42, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %43, ptr noundef nonnull @.str.6) #13
  br label %cleanup

do.end9.i.i143:                                   ; preds = %do.end9.i.i133
  %44 = ptrtoint ptr %buf.i.i128 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %buf.i.i128, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i128) #10
  %46 = or i32 %45, 262144
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i138) #10
  %47 = ptrtoint ptr %buf.i.i138 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %buf.i.i138, align 4
  %call.i.i141 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %buf.i.i138, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i141)
  %cmp.i.i142 = icmp slt i32 %call.i.i141, 0
  br i1 %cmp.i.i142, label %if.then53, label %smsc75xx_write_reg_nopm.exit146, !prof !421

smsc75xx_write_reg_nopm.exit146:                  ; preds = %do.end9.i.i143
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i138) #10
  br label %if.end56

if.then53:                                        ; preds = %do.end9.i.i143
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %net42 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %net42, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %49, ptr noundef nonnull @.str.34, i32 noundef 20, i32 noundef %call.i.i141) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i138) #10
  %50 = ptrtoint ptr %net42 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %net42, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %51, ptr noundef nonnull @.str.7) #13
  br label %cleanup

if.end56:                                         ; preds = %smsc75xx_write_reg_nopm.exit146, %if.end37.if.end56_crit_edge
  %tobool.not.i.i148 = icmp eq ptr %1, null
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end56
  %timeout.0.i = phi i32 [ 0, %if.end56 ], [ %inc.i, %do.cond.i.do.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i147) #10
  %52 = ptrtoint ptr %buf.i.i147 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %buf.i.i147, align 4, !annotation !420
  br i1 %tobool.not.i.i148, label %do.body4.i.i149, label %do.end9.i.i152, !prof !421

do.body4.i.i149:                                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #10, !srcloc !422
  unreachable

do.end9.i.i152:                                   ; preds = %do.body.i
  %call.i.i150 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %buf.i.i147, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i150)
  %cmp.i.i151 = icmp slt i32 %call.i.i150, 0
  br i1 %cmp.i.i151, label %if.then.i, label %if.end.i, !prof !421

if.then.i:                                        ; preds = %do.end9.i.i152
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i153 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %53 = ptrtoint ptr %net.i.i153 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %net.i.i153, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %54, ptr noundef nonnull @.str.33, i32 noundef 20, i32 noundef %call.i.i150) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i147) #10
  %55 = ptrtoint ptr %net.i.i153 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %net.i.i153, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %56, ptr noundef nonnull @.str.52, i32 noundef %call.i.i150) #13
  br label %if.then60

if.end.i:                                         ; preds = %do.end9.i.i152
  %57 = ptrtoint ptr %buf.i.i147 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %buf.i.i147, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i147) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %tobool.not.i = icmp sgt i32 %58, -1
  br i1 %tobool.not.i, label %do.cond.i, label %if.end62

do.cond.i:                                        ; preds = %if.end.i
  call void @msleep(i32 noundef 10) #10
  %inc.i = add nuw nsw i32 %timeout.0.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %do.end.i, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.end.i:                                         ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %net5.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %59 = ptrtoint ptr %net5.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %net5.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %60, ptr noundef nonnull @.str.53) #13
  br label %if.then60

if.then60:                                        ; preds = %do.end.i, %if.then.i
  %retval.2.i.ph = phi i32 [ %call.i.i150, %if.then.i ], [ -5, %do.end.i ]
  %net61 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %61 = ptrtoint ptr %net61 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %net61, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %62, ptr noundef nonnull @.str.51) #13
  br label %cleanup

if.end62:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call63 = call i32 @usbnet_resume(ptr noundef %intf) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.then60, %if.then53, %if.then46, %if.then34, %if.then27, %if.then21, %if.then14
  %retval.0 = phi i32 [ %call.i.i, %if.then14 ], [ %call.i.i104, %if.then21 ], [ %call.i.i112, %if.then27 ], [ %call.i.i122, %if.then34 ], [ %call.i.i131, %if.then46 ], [ %call.i.i141, %if.then53 ], [ %retval.2.i.ph, %if.then60 ], [ %call63, %if.end62 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_suspend(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc75xx_autosuspend(ptr noundef %dev, i32 noundef %link_up) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %do.body1, label %if.end10

do.body1:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc75xx_autosuspend.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc75xx_autosuspend, %if.then5)) #10
          to label %do.end8 [label %if.then5], !srcloc !426

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc75xx_autosuspend.__UNIQUE_ID_ddebug392, ptr noundef %5, ptr noundef nonnull @.str.27) #10
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1
  %call9 = tail call fastcc i32 @smsc75xx_enter_suspend2(ptr noundef %dev)
  br label %cleanup

if.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %link_up)
  %tobool11.not = icmp eq i32 %link_up, 0
  br i1 %tobool11.not, label %do.body14, label %if.end39

do.body14:                                        ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc75xx_autosuspend.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc75xx_autosuspend, %if.then26)) #10
          to label %do.end32 [label %if.then26], !srcloc !426

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc75xx_autosuspend.__UNIQUE_ID_ddebug393, ptr noundef %7, ptr noundef nonnull @.str.28) #10
  br label %do.end32

do.end32:                                         ; preds = %if.then26, %do.body14
  %call33 = tail call fastcc i32 @smsc75xx_enable_phy_wakeup_interrupts(ptr noundef %dev, i16 noundef zeroext 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp = icmp slt i32 %call33, 0
  %8 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net, align 4
  br i1 %cmp, label %if.then34, label %if.end36

if.then34:                                        ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %9, ptr noundef nonnull @.str.8) #13
  br label %cleanup

if.end36:                                         ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %9, ptr noundef nonnull @.str.9) #13
  %call38 = tail call fastcc i32 @smsc75xx_enter_suspend1(ptr noundef %dev)
  br label %cleanup

if.end39:                                         ; preds = %if.end10
  %call40 = tail call fastcc i32 @smsc75xx_enable_phy_wakeup_interrupts(ptr noundef %dev, i16 noundef zeroext 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.then42, label %do.body46

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %11, ptr noundef nonnull @.str.8) #13
  br label %cleanup

do.body46:                                        ; preds = %if.end39
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc75xx_autosuspend.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc75xx_autosuspend, %if.then58)) #10
          to label %do.end64 [label %if.then58], !srcloc !426

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc75xx_autosuspend.__UNIQUE_ID_ddebug394, ptr noundef %13, ptr noundef nonnull @.str.29) #10
  br label %do.end64

do.end64:                                         ; preds = %if.then58, %do.body46
  %call65 = tail call fastcc i32 @smsc75xx_enter_suspend3(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %do.end64, %if.then42, %if.end36, %if.then34, %do.end8
  %retval.0 = phi i32 [ %call40, %if.then42 ], [ %call65, %do.end64 ], [ %call33, %if.then34 ], [ %call38, %if.end36 ], [ %call9, %do.end8 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc75xx_read_reg_nopm(ptr noundef %dev, i32 noundef %index, ptr nocapture noundef writeonly %data) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #10
  %0 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %buf.i, align 4, !annotation !420
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end9.i, !prof !421

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #10, !srcloc !422
  unreachable

do.end9.i:                                        ; preds = %entry
  %conv.i = trunc i32 %index to i16
  %call.i = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext %conv.i, ptr noundef nonnull %buf.i, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then20.i, label %if.end21.i, !prof !421

if.then20.i:                                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %1 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %2, ptr noundef nonnull @.str.33, i32 noundef %index, i32 noundef %call.i) #13
  br label %__smsc75xx_read_reg.exit

if.end21.i:                                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %buf.i, align 4
  %5 = call i32 @llvm.bswap.i32(i32 %4) #10
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %data, align 4
  br label %__smsc75xx_read_reg.exit

__smsc75xx_read_reg.exit:                         ; preds = %if.end21.i, %if.then20.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc75xx_write_reg_nopm(ptr noundef %dev, i32 noundef %index, i32 noundef %data) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #10
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end9.i, !prof !421

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !425
  unreachable

do.end9.i:                                        ; preds = %entry
  %0 = tail call i32 @llvm.bswap.i32(i32 %data) #10
  %1 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %buf.i, align 4
  %conv.i = trunc i32 %index to i16
  %call.i = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv.i, ptr noundef nonnull %buf.i, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then20.i, label %do.end9.i.__smsc75xx_write_reg.exit_crit_edge, !prof !421

do.end9.i.__smsc75xx_write_reg.exit_crit_edge:    ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__smsc75xx_write_reg.exit

if.then20.i:                                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %3, ptr noundef nonnull @.str.34, i32 noundef %index, i32 noundef %call.i) #13
  br label %__smsc75xx_write_reg.exit

__smsc75xx_write_reg.exit:                        ; preds = %if.then20.i, %do.end9.i.__smsc75xx_write_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc75xx_enter_suspend2(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %buf.i.i17 = alloca i32, align 4
  %buf.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #10
  %3 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %buf.i.i, align 4, !annotation !420
  %tobool.not.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !421

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #10, !srcloc !422
  unreachable

do.end9.i.i:                                      ; preds = %entry
  %call.i.i = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %do.end9.i.i22, !prof !421

if.then:                                          ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %4 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %5, ptr noundef nonnull @.str.33, i32 noundef 20, i32 noundef %call.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #10
  %6 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %7, ptr noundef nonnull @.str.6) #13
  br label %cleanup

do.end9.i.i22:                                    ; preds = %do.end9.i.i
  %8 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buf.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #10
  %10 = and i32 %9, -1929379841
  %11 = or i32 %10, 1073741824
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i17) #10
  %12 = ptrtoint ptr %buf.i.i17 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %buf.i.i17, align 4
  %call.i.i20 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %buf.i.i17, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i20)
  %cmp.i.i21 = icmp slt i32 %call.i.i20, 0
  br i1 %cmp.i.i21, label %if.then3, label %if.end5, !prof !421

if.then3:                                         ; preds = %do.end9.i.i22
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i23 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %13 = ptrtoint ptr %net.i.i23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net.i.i23, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %14, ptr noundef nonnull @.str.34, i32 noundef 20, i32 noundef %call.i.i20) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i17) #10
  %15 = ptrtoint ptr %net.i.i23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net.i.i23, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %16, ptr noundef nonnull @.str.7) #13
  br label %cleanup

if.end5:                                          ; preds = %do.end9.i.i22
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i17) #10
  %suspend_flags = getelementptr inbounds %struct.smsc75xx_priv, ptr %2, i32 0, i32 7
  %17 = ptrtoint ptr %suspend_flags to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %suspend_flags, align 4
  %19 = or i8 %18, 4
  store i8 %19, ptr %suspend_flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %if.then
  %retval.0 = phi i32 [ %call.i.i, %if.then ], [ %call.i.i20, %if.then3 ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc75xx_enable_phy_wakeup_interrupts(ptr nocapture noundef readonly %dev, i16 noundef zeroext %mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mii1 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc75xx_enable_phy_wakeup_interrupts.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc75xx_enable_phy_wakeup_interrupts, %if.then)) #10
          to label %do.end6 [label %if.then], !srcloc !426

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc75xx_enable_phy_wakeup_interrupts.__UNIQUE_ID_ddebug391, ptr noundef %1, ptr noundef nonnull @.str.36) #10
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %net7 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %net7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net7, align 4
  %4 = ptrtoint ptr %mii1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mii1, align 4
  %call8 = tail call fastcc i32 @smsc75xx_mdio_read_nopm(ptr noundef %3, i32 noundef %5, i32 noundef 29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  %6 = ptrtoint ptr %net7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net7, align 4
  br i1 %cmp, label %if.then9, label %if.end11

if.then9:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %7, ptr noundef nonnull @.str.37) #13
  br label %cleanup

if.end11:                                         ; preds = %do.end6
  %8 = ptrtoint ptr %mii1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mii1, align 4
  %call14 = tail call fastcc i32 @smsc75xx_mdio_read_nopm(ptr noundef %7, i32 noundef %9, i32 noundef 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %net7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net7, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %11, ptr noundef nonnull @.str.38) #13
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i16 %mask to i32
  %or = or i32 %call14, %conv
  %12 = ptrtoint ptr %net7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net7, align 4
  %14 = ptrtoint ptr %mii1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mii1, align 4
  tail call fastcc void @smsc75xx_mdio_write_nopm(ptr noundef %13, i32 noundef %15, i32 noundef 30, i32 noundef %or)
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then16, %if.then9
  %retval.0 = phi i32 [ %call8, %if.then9 ], [ %call14, %if.then16 ], [ 0, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc75xx_mdio_read_nopm(ptr noundef %netdev, i32 noundef %phy_id, i32 noundef %idx) unnamed_addr #2 align 64 {
entry:
  %buf.i68.i = alloca i32, align 4
  %buf.i.i49.i = alloca i32, align 4
  %buf.i.i = alloca i32, align 4
  %buf.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %phy_mutex.i = getelementptr i8, ptr %netdev, i32 2376
  tail call void @mutex_lock_nested(ptr noundef %phy_mutex.i, i32 noundef 0) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %tobool.not.i.i.i = icmp eq ptr %add.ptr.i.i, null
  %add.i.i = add i32 %0, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i) #10
  %1 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %buf.i.i.i, align 4, !annotation !420
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %do.end9.i.i.preheader.i, !prof !421

do.end9.i.i.preheader.i:                          ; preds = %entry
  %call.i.i89.i = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %add.ptr.i.i, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 288, ptr noundef nonnull %buf.i.i.i, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i89.i)
  %cmp.i.i90.i = icmp slt i32 %call.i.i89.i, 0
  br i1 %cmp.i.i90.i, label %do.end9.i.i.preheader.i.if.then.i.i_crit_edge, label %do.end9.i.i.preheader.i.if.end.i.i_crit_edge, !prof !421

do.end9.i.i.preheader.i.if.end.i.i_crit_edge:     ; preds = %do.end9.i.i.preheader.i
  br label %if.end.i.i

do.end9.i.i.preheader.i.if.then.i.i_crit_edge:    ; preds = %do.end9.i.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

do.body4.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #10, !srcloc !422
  unreachable

do.end9.i.critedge.i.i:                           ; preds = %do.cond.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i) #10
  %2 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %buf.i.i.i, align 4, !annotation !420
  %call.i.i.i = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %add.ptr.i.i, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 288, ptr noundef nonnull %buf.i.i.i, i16 noundef zeroext 4) #10, !callees !423
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end9.i.critedge.i.i.if.then.i.i_crit_edge, label %do.end9.i.critedge.i.i.if.end.i.i_crit_edge, !prof !421

do.end9.i.critedge.i.i.if.end.i.i_crit_edge:      ; preds = %do.end9.i.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

do.end9.i.critedge.i.i.if.then.i.i_crit_edge:     ; preds = %do.end9.i.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %do.end9.i.critedge.i.i.if.then.i.i_crit_edge, %do.end9.i.i.preheader.i.if.then.i.i_crit_edge
  %call.i.i.lcssa.i = phi i32 [ %call.i.i89.i, %do.end9.i.i.preheader.i.if.then.i.i_crit_edge ], [ %call.i.i.i, %do.end9.i.critedge.i.i.if.then.i.i_crit_edge ]
  %net.i.i.i = getelementptr i8, ptr %netdev, i32 2548
  %3 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %4, ptr noundef nonnull @.str.33, i32 noundef 288, i32 noundef %call.i.i.lcssa.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #10
  %5 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %6, ptr noundef nonnull @.str.43) #13
  br label %if.then.i

if.end.i.i:                                       ; preds = %do.end9.i.critedge.i.i.if.end.i.i_crit_edge, %do.end9.i.i.preheader.i.if.end.i.i_crit_edge
  %7 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buf.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #10
  %9 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %do.end9.i.i, label %do.cond.i.i

do.cond.i.i:                                      ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i)
  %cmp3.i.i = icmp sgt i32 %sub.i.i, -1
  br i1 %cmp3.i.i, label %do.end9.i.critedge.i.i, label %do.cond.i.i.if.then.i_crit_edge

do.cond.i.i.if.then.i_crit_edge:                  ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %do.cond.i.i.if.then.i_crit_edge, %if.then.i.i
  %retval.0.i.ph.i = phi i32 [ %call.i.i.lcssa.i, %if.then.i.i ], [ -5, %do.cond.i.i.if.then.i_crit_edge ]
  %net.i = getelementptr i8, ptr %netdev, i32 2548
  %11 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %12, ptr noundef nonnull @.str.39) #13
  br label %__smsc75xx_mdio_read.exit

do.end9.i.i:                                      ; preds = %if.end.i.i
  %phy_id_mask.i = getelementptr i8, ptr %netdev, i32 2596
  %13 = ptrtoint ptr %phy_id_mask.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %phy_id_mask.i, align 4
  %and.i = and i32 %14, %phy_id
  %reg_num_mask.i = getelementptr i8, ptr %netdev, i32 2600
  %15 = ptrtoint ptr %reg_num_mask.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg_num_mask.i, align 4
  %and3.i = and i32 %16, %idx
  %shl.i = shl i32 %and.i, 11
  %and4.i = and i32 %shl.i, 63488
  %shl5.i = shl i32 %and3.i, 6
  %and6.i = and i32 %shl5.i, 1984
  %or.i = or i32 %and4.i, %and6.i
  %or8.i = or i32 %or.i, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #10
  %17 = call i32 @llvm.bswap.i32(i32 %or8.i) #10
  %18 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %buf.i.i, align 4
  %call.i.i = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %add.ptr.i.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 288, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then11.i, label %if.end13.i, !prof !421

if.then11.i:                                      ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i = getelementptr i8, ptr %netdev, i32 2548
  %19 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %20, ptr noundef nonnull @.str.34, i32 noundef 288, i32 noundef %call.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #10
  %21 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %22, ptr noundef nonnull @.str.40) #13
  br label %__smsc75xx_mdio_read.exit

if.end13.i:                                       ; preds = %do.end9.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %add.i53.i = add i32 %23, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i49.i) #10
  %24 = ptrtoint ptr %buf.i.i49.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %buf.i.i49.i, align 4
  %call.i.i5691.i = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %add.ptr.i.i, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 288, ptr noundef nonnull %buf.i.i49.i, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i5691.i)
  %cmp.i.i5792.i = icmp slt i32 %call.i.i5691.i, 0
  br i1 %cmp.i.i5792.i, label %if.end13.i.if.then.i60.i_crit_edge, label %if.end13.i.if.end.i62.i_crit_edge, !prof !421

if.end13.i.if.end.i62.i_crit_edge:                ; preds = %if.end13.i
  br label %if.end.i62.i

if.end13.i.if.then.i60.i_crit_edge:               ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i60.i

do.end9.i.critedge.i55.i:                         ; preds = %do.cond.i65.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i49.i) #10
  %25 = ptrtoint ptr %buf.i.i49.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %buf.i.i49.i, align 4
  %call.i.i56.i = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %add.ptr.i.i, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 288, ptr noundef nonnull %buf.i.i49.i, i16 noundef zeroext 4) #10, !callees !423
  %cmp.i.i57.i = icmp slt i32 %call.i.i56.i, 0
  br i1 %cmp.i.i57.i, label %do.end9.i.critedge.i55.i.if.then.i60.i_crit_edge, label %do.end9.i.critedge.i55.i.if.end.i62.i_crit_edge, !prof !421

do.end9.i.critedge.i55.i.if.end.i62.i_crit_edge:  ; preds = %do.end9.i.critedge.i55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i62.i

do.end9.i.critedge.i55.i.if.then.i60.i_crit_edge: ; preds = %do.end9.i.critedge.i55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i60.i

if.then.i60.i:                                    ; preds = %do.end9.i.critedge.i55.i.if.then.i60.i_crit_edge, %if.end13.i.if.then.i60.i_crit_edge
  %call.i.i56.lcssa.i = phi i32 [ %call.i.i5691.i, %if.end13.i.if.then.i60.i_crit_edge ], [ %call.i.i56.i, %do.end9.i.critedge.i55.i.if.then.i60.i_crit_edge ]
  %net.i.i59.i = getelementptr i8, ptr %netdev, i32 2548
  %26 = ptrtoint ptr %net.i.i59.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net.i.i59.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %27, ptr noundef nonnull @.str.33, i32 noundef 288, i32 noundef %call.i.i56.lcssa.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i49.i) #10
  %28 = ptrtoint ptr %net.i.i59.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %net.i.i59.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %29, ptr noundef nonnull @.str.43) #13
  br label %if.then16.i

if.end.i62.i:                                     ; preds = %do.end9.i.critedge.i55.i.if.end.i62.i_crit_edge, %if.end13.i.if.end.i62.i_crit_edge
  %30 = ptrtoint ptr %buf.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %buf.i.i49.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i49.i) #10
  %32 = and i32 %31, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i61.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i61.i, label %do.end9.i74.i, label %do.cond.i65.i

do.cond.i65.i:                                    ; preds = %if.end.i62.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %sub.i63.i = sub i32 %add.i53.i, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i63.i)
  %cmp3.i64.i = icmp sgt i32 %sub.i63.i, -1
  br i1 %cmp3.i64.i, label %do.end9.i.critedge.i55.i, label %do.cond.i65.i.if.then16.i_crit_edge

do.cond.i65.i.if.then16.i_crit_edge:              ; preds = %do.cond.i65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16.i

if.then16.i:                                      ; preds = %do.cond.i65.i.if.then16.i_crit_edge, %if.then.i60.i
  %retval.0.i66.ph.i = phi i32 [ %call.i.i56.lcssa.i, %if.then.i60.i ], [ -5, %do.cond.i65.i.if.then16.i_crit_edge ]
  %net17.i = getelementptr i8, ptr %netdev, i32 2548
  %34 = ptrtoint ptr %net17.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %net17.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %35, ptr noundef nonnull @.str.41, i32 noundef %and3.i) #13
  br label %__smsc75xx_mdio_read.exit

do.end9.i74.i:                                    ; preds = %if.end.i62.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i68.i) #10
  %36 = ptrtoint ptr %buf.i68.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %buf.i68.i, align 4, !annotation !420
  %call.i72.i = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %add.ptr.i.i, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 292, ptr noundef nonnull %buf.i68.i, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72.i)
  %cmp.i73.i = icmp slt i32 %call.i72.i, 0
  br i1 %cmp.i73.i, label %if.then21.i, label %if.end23.i, !prof !421

if.then21.i:                                      ; preds = %do.end9.i74.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i75.i = getelementptr i8, ptr %netdev, i32 2548
  %37 = ptrtoint ptr %net.i75.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %net.i75.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %38, ptr noundef nonnull @.str.33, i32 noundef 292, i32 noundef %call.i72.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i68.i) #10
  %39 = ptrtoint ptr %net.i75.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %net.i75.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %40, ptr noundef nonnull @.str.42) #13
  br label %__smsc75xx_mdio_read.exit

if.end23.i:                                       ; preds = %do.end9.i74.i
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %buf.i68.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %buf.i68.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i68.i) #10
  %43 = and i32 %42, -65536
  %44 = call i32 @llvm.bswap.i32(i32 %43) #10
  br label %__smsc75xx_mdio_read.exit

__smsc75xx_mdio_read.exit:                        ; preds = %if.end23.i, %if.then21.i, %if.then16.i, %if.then11.i, %if.then.i
  %ret.0.i = phi i32 [ %retval.0.i.ph.i, %if.then.i ], [ %call.i.i, %if.then11.i ], [ %retval.0.i66.ph.i, %if.then16.i ], [ %call.i72.i, %if.then21.i ], [ %44, %if.end23.i ]
  call void @mutex_unlock(ptr noundef %phy_mutex.i) #10
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smsc75xx_mdio_write_nopm(ptr noundef %netdev, i32 noundef %phy_id, i32 noundef %idx, i32 noundef %regval) unnamed_addr #2 align 64 {
entry:
  %buf.i.i57.i = alloca i32, align 4
  %buf.i46.i = alloca i32, align 4
  %buf.i.i = alloca i32, align 4
  %buf.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %phy_mutex.i = getelementptr i8, ptr %netdev, i32 2376
  tail call void @mutex_lock_nested(ptr noundef %phy_mutex.i, i32 noundef 0) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %tobool.not.i.i.i = icmp eq ptr %add.ptr.i.i, null
  %add.i.i = add i32 %0, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i) #10
  %1 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %buf.i.i.i, align 4, !annotation !420
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %do.end9.i.i.preheader.i, !prof !421

do.end9.i.i.preheader.i:                          ; preds = %entry
  %call.i.i85.i = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %add.ptr.i.i, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 288, ptr noundef nonnull %buf.i.i.i, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i85.i)
  %cmp.i.i86.i = icmp slt i32 %call.i.i85.i, 0
  br i1 %cmp.i.i86.i, label %do.end9.i.i.preheader.i.if.then.i.i_crit_edge, label %do.end9.i.i.preheader.i.if.end.i.i_crit_edge, !prof !421

do.end9.i.i.preheader.i.if.end.i.i_crit_edge:     ; preds = %do.end9.i.i.preheader.i
  br label %if.end.i.i

do.end9.i.i.preheader.i.if.then.i.i_crit_edge:    ; preds = %do.end9.i.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

do.body4.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #10, !srcloc !422
  unreachable

do.end9.i.critedge.i.i:                           ; preds = %do.cond.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i) #10
  %2 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %buf.i.i.i, align 4, !annotation !420
  %call.i.i.i = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %add.ptr.i.i, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 288, ptr noundef nonnull %buf.i.i.i, i16 noundef zeroext 4) #10, !callees !423
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end9.i.critedge.i.i.if.then.i.i_crit_edge, label %do.end9.i.critedge.i.i.if.end.i.i_crit_edge, !prof !421

do.end9.i.critedge.i.i.if.end.i.i_crit_edge:      ; preds = %do.end9.i.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

do.end9.i.critedge.i.i.if.then.i.i_crit_edge:     ; preds = %do.end9.i.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %do.end9.i.critedge.i.i.if.then.i.i_crit_edge, %do.end9.i.i.preheader.i.if.then.i.i_crit_edge
  %call.i.i.lcssa.i = phi i32 [ %call.i.i85.i, %do.end9.i.i.preheader.i.if.then.i.i_crit_edge ], [ %call.i.i.i, %do.end9.i.critedge.i.i.if.then.i.i_crit_edge ]
  %net.i.i.i = getelementptr i8, ptr %netdev, i32 2548
  %3 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %4, ptr noundef nonnull @.str.33, i32 noundef 288, i32 noundef %call.i.i.lcssa.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #10
  %5 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %6, ptr noundef nonnull @.str.43) #13
  br label %if.then.i

if.end.i.i:                                       ; preds = %do.end9.i.critedge.i.i.if.end.i.i_crit_edge, %do.end9.i.i.preheader.i.if.end.i.i_crit_edge
  %7 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buf.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #10
  %9 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %do.end9.i.i, label %do.cond.i.i

do.cond.i.i:                                      ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i)
  %cmp3.i.i = icmp sgt i32 %sub.i.i, -1
  br i1 %cmp3.i.i, label %do.end9.i.critedge.i.i, label %do.cond.i.i.if.then.i_crit_edge

do.cond.i.i.if.then.i_crit_edge:                  ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %do.cond.i.i.if.then.i_crit_edge, %if.then.i.i
  %net.i = getelementptr i8, ptr %netdev, i32 2548
  %11 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %12, ptr noundef nonnull @.str.44) #13
  br label %__smsc75xx_mdio_write.exit

do.end9.i.i:                                      ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #10
  %13 = call i32 @llvm.bswap.i32(i32 %regval) #10
  %14 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %buf.i.i, align 4
  %call.i.i = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %add.ptr.i.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 292, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then4.i, label %do.end9.i53.i, !prof !421

if.then4.i:                                       ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i = getelementptr i8, ptr %netdev, i32 2548
  %15 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %16, ptr noundef nonnull @.str.34, i32 noundef 292, i32 noundef %call.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #10
  %17 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %18, ptr noundef nonnull @.str.45) #13
  br label %__smsc75xx_mdio_write.exit

do.end9.i53.i:                                    ; preds = %do.end9.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #10
  %phy_id_mask.i = getelementptr i8, ptr %netdev, i32 2596
  %19 = ptrtoint ptr %phy_id_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %phy_id_mask.i, align 4
  %and.i = and i32 %20, %phy_id
  %reg_num_mask.i = getelementptr i8, ptr %netdev, i32 2600
  %21 = ptrtoint ptr %reg_num_mask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg_num_mask.i, align 4
  %and8.i = and i32 %22, %idx
  %shl.i = shl i32 %and.i, 11
  %and9.i = and i32 %shl.i, 63488
  %shl10.i = shl i32 %and8.i, 6
  %and11.i = and i32 %shl10.i, 1984
  %or.i = or i32 %and9.i, %and11.i
  %or13.i = or i32 %or.i, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i46.i) #10
  %23 = call i32 @llvm.bswap.i32(i32 %or13.i) #10
  %24 = ptrtoint ptr %buf.i46.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %buf.i46.i, align 4
  %call.i51.i = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %add.ptr.i.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 288, ptr noundef nonnull %buf.i46.i, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.i)
  %cmp.i52.i = icmp slt i32 %call.i51.i, 0
  br i1 %cmp.i52.i, label %if.then16.i, label %if.end18.i, !prof !421

if.then16.i:                                      ; preds = %do.end9.i53.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i54.i = getelementptr i8, ptr %netdev, i32 2548
  %25 = ptrtoint ptr %net.i54.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %net.i54.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %26, ptr noundef nonnull @.str.34, i32 noundef 288, i32 noundef %call.i51.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i46.i) #10
  %27 = ptrtoint ptr %net.i54.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net.i54.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %28, ptr noundef nonnull @.str.40) #13
  br label %__smsc75xx_mdio_write.exit

if.end18.i:                                       ; preds = %do.end9.i53.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i46.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %add.i61.i = add i32 %29, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i57.i) #10
  %30 = ptrtoint ptr %buf.i.i57.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %buf.i.i57.i, align 4
  %call.i.i6487.i = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %add.ptr.i.i, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 288, ptr noundef nonnull %buf.i.i57.i, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i6487.i)
  %cmp.i.i6588.i = icmp slt i32 %call.i.i6487.i, 0
  br i1 %cmp.i.i6588.i, label %if.end18.i.if.then.i68.i_crit_edge, label %if.end18.i.if.end.i70.i_crit_edge, !prof !421

if.end18.i.if.end.i70.i_crit_edge:                ; preds = %if.end18.i
  br label %if.end.i70.i

if.end18.i.if.then.i68.i_crit_edge:               ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i68.i

do.end9.i.critedge.i63.i:                         ; preds = %do.cond.i73.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i57.i) #10
  %31 = ptrtoint ptr %buf.i.i57.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %buf.i.i57.i, align 4
  %call.i.i64.i = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %add.ptr.i.i, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 288, ptr noundef nonnull %buf.i.i57.i, i16 noundef zeroext 4) #10, !callees !423
  %cmp.i.i65.i = icmp slt i32 %call.i.i64.i, 0
  br i1 %cmp.i.i65.i, label %do.end9.i.critedge.i63.i.if.then.i68.i_crit_edge, label %do.end9.i.critedge.i63.i.if.end.i70.i_crit_edge, !prof !421

do.end9.i.critedge.i63.i.if.end.i70.i_crit_edge:  ; preds = %do.end9.i.critedge.i63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i70.i

do.end9.i.critedge.i63.i.if.then.i68.i_crit_edge: ; preds = %do.end9.i.critedge.i63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i68.i

if.then.i68.i:                                    ; preds = %do.end9.i.critedge.i63.i.if.then.i68.i_crit_edge, %if.end18.i.if.then.i68.i_crit_edge
  %call.i.i64.lcssa.i = phi i32 [ %call.i.i6487.i, %if.end18.i.if.then.i68.i_crit_edge ], [ %call.i.i64.i, %do.end9.i.critedge.i63.i.if.then.i68.i_crit_edge ]
  %net.i.i67.i = getelementptr i8, ptr %netdev, i32 2548
  %32 = ptrtoint ptr %net.i.i67.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %net.i.i67.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %33, ptr noundef nonnull @.str.33, i32 noundef 288, i32 noundef %call.i.i64.lcssa.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i57.i) #10
  %34 = ptrtoint ptr %net.i.i67.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %net.i.i67.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %35, ptr noundef nonnull @.str.43) #13
  br label %if.then21.i

if.end.i70.i:                                     ; preds = %do.end9.i.critedge.i63.i.if.end.i70.i_crit_edge, %if.end18.i.if.end.i70.i_crit_edge
  %36 = ptrtoint ptr %buf.i.i57.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %buf.i.i57.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i57.i) #10
  %38 = and i32 %37, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i69.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i69.i, label %if.end.i70.i.__smsc75xx_mdio_write.exit_crit_edge, label %do.cond.i73.i

if.end.i70.i.__smsc75xx_mdio_write.exit_crit_edge: ; preds = %if.end.i70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__smsc75xx_mdio_write.exit

do.cond.i73.i:                                    ; preds = %if.end.i70.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %sub.i71.i = sub i32 %add.i61.i, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i71.i)
  %cmp3.i72.i = icmp sgt i32 %sub.i71.i, -1
  br i1 %cmp3.i72.i, label %do.end9.i.critedge.i63.i, label %do.cond.i73.i.if.then21.i_crit_edge

do.cond.i73.i.if.then21.i_crit_edge:              ; preds = %do.cond.i73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21.i

if.then21.i:                                      ; preds = %do.cond.i73.i.if.then21.i_crit_edge, %if.then.i68.i
  %net22.i = getelementptr i8, ptr %netdev, i32 2548
  %40 = ptrtoint ptr %net22.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %net22.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %41, ptr noundef nonnull @.str.46, i32 noundef %and8.i) #13
  br label %__smsc75xx_mdio_write.exit

__smsc75xx_mdio_write.exit:                       ; preds = %if.then21.i, %if.end.i70.i.__smsc75xx_mdio_write.exit_crit_edge, %if.then16.i, %if.then4.i, %if.then.i
  call void @mutex_unlock(ptr noundef %phy_mutex.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc75xx_enter_suspend1(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %buf.i.i36 = alloca i32, align 4
  %buf.i.i28 = alloca i32, align 4
  %buf.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #10
  %3 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %buf.i.i, align 4, !annotation !420
  %tobool.not.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !421

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #10, !srcloc !422
  unreachable

do.end9.i.i:                                      ; preds = %entry
  %call.i.i = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %do.end9.i.i33, !prof !421

if.then:                                          ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %4 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %5, ptr noundef nonnull @.str.33, i32 noundef 20, i32 noundef %call.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #10
  %6 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %7, ptr noundef nonnull @.str.6) #13
  br label %cleanup

do.end9.i.i33:                                    ; preds = %do.end9.i.i
  %8 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buf.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #10
  %10 = and i32 %9, -1929379841
  %11 = or i32 %10, 536870912
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i28) #10
  %12 = ptrtoint ptr %buf.i.i28 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %buf.i.i28, align 4
  %call.i.i31 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %buf.i.i28, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i31)
  %cmp.i.i32 = icmp slt i32 %call.i.i31, 0
  br i1 %cmp.i.i32, label %if.then3, label %do.end9.i.i41, !prof !421

if.then3:                                         ; preds = %do.end9.i.i33
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i34 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %13 = ptrtoint ptr %net.i.i34 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net.i.i34, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %14, ptr noundef nonnull @.str.34, i32 noundef 20, i32 noundef %call.i.i31) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i28) #10
  %15 = ptrtoint ptr %net.i.i34 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net.i.i34, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %16, ptr noundef nonnull @.str.7) #13
  br label %cleanup

do.end9.i.i41:                                    ; preds = %do.end9.i.i33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i28) #10
  %17 = or i32 %10, 620756992
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i36) #10
  %18 = ptrtoint ptr %buf.i.i36 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %buf.i.i36, align 4
  %call.i.i39 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %buf.i.i36, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i39)
  %cmp.i.i40 = icmp slt i32 %call.i.i39, 0
  br i1 %cmp.i.i40, label %if.then10, label %if.end12, !prof !421

if.then10:                                        ; preds = %do.end9.i.i41
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i42 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %19 = ptrtoint ptr %net.i.i42 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net.i.i42, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %20, ptr noundef nonnull @.str.34, i32 noundef 20, i32 noundef %call.i.i39) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i36) #10
  %21 = ptrtoint ptr %net.i.i42 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net.i.i42, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %22, ptr noundef nonnull @.str.7) #13
  br label %cleanup

if.end12:                                         ; preds = %do.end9.i.i41
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i36) #10
  %suspend_flags = getelementptr inbounds %struct.smsc75xx_priv, ptr %2, i32 0, i32 7
  %23 = ptrtoint ptr %suspend_flags to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %suspend_flags, align 4
  %25 = or i8 %24, 2
  store i8 %25, ptr %suspend_flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then10, %if.then3, %if.then
  %retval.0 = phi i32 [ %call.i.i, %if.then ], [ %call.i.i31, %if.then3 ], [ %call.i.i39, %if.then10 ], [ 0, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @smsc_crc(ptr noundef %buffer, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i16 @crc16(i16 noundef zeroext -1, ptr noundef %buffer, i32 noundef %len) #10
  %0 = and i16 %call, 255
  %idxprom.i.i = zext i16 %0 to i32
  %arrayidx.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx.i.i, align 1
  %conv2.i = zext i8 %2 to i16
  %shl.i = shl nuw i16 %conv2.i, 8
  %3 = lshr i16 %call, 8
  %conv4.i = zext i16 %3 to i32
  %arrayidx.i10.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i
  %4 = ptrtoint ptr %arrayidx.i10.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i10.i, align 1
  %conv6.i = zext i8 %5 to i16
  %or.i = or i16 %shl.i, %conv6.i
  ret i16 %or.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc75xx_write_wuff(ptr noundef %dev, i32 noundef %filter, i32 noundef %wuf_cfg, i32 noundef %wuf_mask1) unnamed_addr #2 align 64 {
entry:
  %buf.i.i80 = alloca i32, align 4
  %buf.i.i70 = alloca i32, align 4
  %buf.i.i60 = alloca i32, align 4
  %buf.i.i50 = alloca i32, align 4
  %buf.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %filter, 2
  %add = add i32 %mul, 324
  %mul1 = shl i32 %filter, 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #10
  %tobool.not.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !421

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !425
  unreachable

do.end9.i.i:                                      ; preds = %entry
  %0 = tail call i32 @llvm.bswap.i32(i32 %wuf_cfg) #10
  %1 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %buf.i.i, align 4
  %conv.i.i = trunc i32 %add to i16
  %call.i.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv.i.i, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %do.end9.i.i56, !prof !421

if.then:                                          ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %3, ptr noundef nonnull @.str.34, i32 noundef %add, i32 noundef %call.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #10
  %4 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %5, ptr noundef nonnull @.str.11) #13
  br label %cleanup

do.end9.i.i56:                                    ; preds = %do.end9.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #10
  %add2 = add i32 %mul1, 368
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i50) #10
  %6 = call i32 @llvm.bswap.i32(i32 %wuf_mask1) #10
  %7 = ptrtoint ptr %buf.i.i50 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %buf.i.i50, align 4
  %conv.i.i53 = trunc i32 %add2 to i16
  %call.i.i54 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv.i.i53, ptr noundef nonnull %buf.i.i50, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i54)
  %cmp.i.i55 = icmp slt i32 %call.i.i54, 0
  br i1 %cmp.i.i55, label %if.then5, label %do.end9.i.i66, !prof !421

if.then5:                                         ; preds = %do.end9.i.i56
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i57 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %8 = ptrtoint ptr %net.i.i57 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net.i.i57, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %9, ptr noundef nonnull @.str.34, i32 noundef %add2, i32 noundef %call.i.i54) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i50) #10
  %10 = ptrtoint ptr %net.i.i57 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net.i.i57, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %11, ptr noundef nonnull @.str.47) #13
  br label %cleanup

do.end9.i.i66:                                    ; preds = %do.end9.i.i56
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i50) #10
  %add8 = add i32 %mul1, 372
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i60) #10
  %12 = ptrtoint ptr %buf.i.i60 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %buf.i.i60, align 4
  %conv.i.i63 = trunc i32 %add8 to i16
  %call.i.i64 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv.i.i63, ptr noundef nonnull %buf.i.i60, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i64)
  %cmp.i.i65 = icmp slt i32 %call.i.i64, 0
  br i1 %cmp.i.i65, label %if.then11, label %do.end9.i.i76, !prof !421

if.then11:                                        ; preds = %do.end9.i.i66
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i67 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %13 = ptrtoint ptr %net.i.i67 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net.i.i67, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %14, ptr noundef nonnull @.str.34, i32 noundef %add8, i32 noundef %call.i.i64) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i60) #10
  %15 = ptrtoint ptr %net.i.i67 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net.i.i67, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %16, ptr noundef nonnull @.str.47) #13
  br label %cleanup

do.end9.i.i76:                                    ; preds = %do.end9.i.i66
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i60) #10
  %add14 = add i32 %mul1, 376
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i70) #10
  %17 = ptrtoint ptr %buf.i.i70 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %buf.i.i70, align 4
  %conv.i.i73 = trunc i32 %add14 to i16
  %call.i.i74 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv.i.i73, ptr noundef nonnull %buf.i.i70, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i74)
  %cmp.i.i75 = icmp slt i32 %call.i.i74, 0
  br i1 %cmp.i.i75, label %if.then17, label %do.end9.i.i86, !prof !421

if.then17:                                        ; preds = %do.end9.i.i76
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i77 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %18 = ptrtoint ptr %net.i.i77 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net.i.i77, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %19, ptr noundef nonnull @.str.34, i32 noundef %add14, i32 noundef %call.i.i74) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i70) #10
  %20 = ptrtoint ptr %net.i.i77 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net.i.i77, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %21, ptr noundef nonnull @.str.47) #13
  br label %cleanup

do.end9.i.i86:                                    ; preds = %do.end9.i.i76
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i70) #10
  %add20 = add i32 %mul1, 380
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i80) #10
  %22 = ptrtoint ptr %buf.i.i80 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %buf.i.i80, align 4
  %conv.i.i83 = trunc i32 %add20 to i16
  %call.i.i84 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv.i.i83, ptr noundef nonnull %buf.i.i80, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i84)
  %cmp.i.i85 = icmp slt i32 %call.i.i84, 0
  br i1 %cmp.i.i85, label %if.then23, label %smsc75xx_write_reg.exit89, !prof !421

smsc75xx_write_reg.exit89:                        ; preds = %do.end9.i.i86
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i80) #10
  br label %cleanup

if.then23:                                        ; preds = %do.end9.i.i86
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i87 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %23 = ptrtoint ptr %net.i.i87 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %net.i.i87, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %24, ptr noundef nonnull @.str.34, i32 noundef %add20, i32 noundef %call.i.i84) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i80) #10
  %25 = ptrtoint ptr %net.i.i87 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %net.i.i87, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %26, ptr noundef nonnull @.str.47) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %smsc75xx_write_reg.exit89, %if.then17, %if.then11, %if.then5, %if.then
  %retval.0 = phi i32 [ %call.i.i, %if.then ], [ %call.i.i54, %if.then5 ], [ %call.i.i64, %if.then11 ], [ %call.i.i74, %if.then17 ], [ %call.i.i84, %if.then23 ], [ 0, %smsc75xx_write_reg.exit89 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc75xx_enter_suspend0(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %buf.i.i17 = alloca i32, align 4
  %buf.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #10
  %3 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %buf.i.i, align 4, !annotation !420
  %tobool.not.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !421

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #10, !srcloc !422
  unreachable

do.end9.i.i:                                      ; preds = %entry
  %call.i.i = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %do.end9.i.i22, !prof !421

if.then:                                          ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %4 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %5, ptr noundef nonnull @.str.33, i32 noundef 20, i32 noundef %call.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #10
  %6 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %7, ptr noundef nonnull @.str.6) #13
  br label %cleanup

do.end9.i.i22:                                    ; preds = %do.end9.i.i
  %8 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buf.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #10
  %10 = and i32 %9, -2063597569
  %11 = or i32 %10, 184549376
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i17) #10
  %12 = ptrtoint ptr %buf.i.i17 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %buf.i.i17, align 4
  %call.i.i20 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %buf.i.i17, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i20)
  %cmp.i.i21 = icmp slt i32 %call.i.i20, 0
  br i1 %cmp.i.i21, label %if.then3, label %if.end5, !prof !421

if.then3:                                         ; preds = %do.end9.i.i22
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i23 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %13 = ptrtoint ptr %net.i.i23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net.i.i23, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %14, ptr noundef nonnull @.str.34, i32 noundef 20, i32 noundef %call.i.i20) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i17) #10
  %15 = ptrtoint ptr %net.i.i23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net.i.i23, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %16, ptr noundef nonnull @.str.7) #13
  br label %cleanup

if.end5:                                          ; preds = %do.end9.i.i22
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i17) #10
  %suspend_flags = getelementptr inbounds %struct.smsc75xx_priv, ptr %2, i32 0, i32 7
  %17 = ptrtoint ptr %suspend_flags to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %suspend_flags, align 4
  %19 = or i8 %18, 1
  store i8 %19, ptr %suspend_flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %if.then
  %retval.0 = phi i32 [ %call.i.i, %if.then ], [ %call.i.i20, %if.then3 ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc75xx_enter_suspend3(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %buf.i.i69 = alloca i32, align 4
  %buf.i.i61 = alloca i32, align 4
  %buf.i.i51 = alloca i32, align 4
  %buf.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #10
  %3 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %buf.i.i, align 4, !annotation !420
  %tobool.not.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !421

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #10, !srcloc !422
  unreachable

do.end9.i.i:                                      ; preds = %entry
  %call.i.i = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 144, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %if.end, !prof !421

if.then:                                          ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %4 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %5, ptr noundef nonnull @.str.33, i32 noundef 144, i32 noundef %call.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #10
  %6 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %7, ptr noundef nonnull @.str.30) #13
  br label %cleanup

if.end:                                           ; preds = %do.end9.i.i
  %8 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buf.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %9)
  %tobool.not = icmp ult i32 %9, 65536
  br i1 %tobool.not, label %do.end9.i.i56, label %do.body2

do.body2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc75xx_enter_suspend3.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc75xx_enter_suspend3, %if.then7)) #10
          to label %cleanup [label %if.then7], !srcloc !426

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  %net8 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %10 = ptrtoint ptr %net8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net8, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc75xx_enter_suspend3.__UNIQUE_ID_ddebug390, ptr noundef %11, ptr noundef nonnull @.str.32) #10
  br label %cleanup

do.end9.i.i56:                                    ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i51) #10
  %12 = ptrtoint ptr %buf.i.i51 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %buf.i.i51, align 4, !annotation !420
  %call.i.i54 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %buf.i.i51, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i54)
  %cmp.i.i55 = icmp slt i32 %call.i.i54, 0
  br i1 %cmp.i.i55, label %if.then15, label %do.end9.i.i66, !prof !421

if.then15:                                        ; preds = %do.end9.i.i56
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i57 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %13 = ptrtoint ptr %net.i.i57 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net.i.i57, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %14, ptr noundef nonnull @.str.33, i32 noundef 20, i32 noundef %call.i.i54) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i51) #10
  %15 = ptrtoint ptr %net.i.i57 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net.i.i57, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %16, ptr noundef nonnull @.str.6) #13
  br label %cleanup

do.end9.i.i66:                                    ; preds = %do.end9.i.i56
  %17 = ptrtoint ptr %buf.i.i51 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %buf.i.i51, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i51) #10
  %19 = and i32 %18, -1929445377
  %20 = or i32 %19, 1610678272
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i61) #10
  %21 = ptrtoint ptr %buf.i.i61 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %buf.i.i61, align 4
  %call.i.i64 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %buf.i.i61, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i64)
  %cmp.i.i65 = icmp slt i32 %call.i.i64, 0
  br i1 %cmp.i.i65, label %if.then21, label %do.end9.i.i74, !prof !421

if.then21:                                        ; preds = %do.end9.i.i66
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i67 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %22 = ptrtoint ptr %net.i.i67 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net.i.i67, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %23, ptr noundef nonnull @.str.34, i32 noundef 20, i32 noundef %call.i.i64) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i61) #10
  %24 = ptrtoint ptr %net.i.i67 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net.i.i67, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %25, ptr noundef nonnull @.str.7) #13
  br label %cleanup

do.end9.i.i74:                                    ; preds = %do.end9.i.i66
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i61) #10
  %26 = or i32 %19, 1644232704
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i69) #10
  %27 = ptrtoint ptr %buf.i.i69 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %buf.i.i69, align 4
  %call.i.i72 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %buf.i.i69, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i72)
  %cmp.i.i73 = icmp slt i32 %call.i.i72, 0
  br i1 %cmp.i.i73, label %if.then28, label %if.end30, !prof !421

if.then28:                                        ; preds = %do.end9.i.i74
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i75 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %28 = ptrtoint ptr %net.i.i75 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %net.i.i75, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %29, ptr noundef nonnull @.str.34, i32 noundef 20, i32 noundef %call.i.i72) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i69) #10
  %30 = ptrtoint ptr %net.i.i75 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %net.i.i75, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %31, ptr noundef nonnull @.str.7) #13
  br label %cleanup

if.end30:                                         ; preds = %do.end9.i.i74
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i69) #10
  %suspend_flags = getelementptr inbounds %struct.smsc75xx_priv, ptr %2, i32 0, i32 7
  %32 = ptrtoint ptr %suspend_flags to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %suspend_flags, align 4
  %34 = or i8 %33, 8
  store i8 %34, ptr %suspend_flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then28, %if.then21, %if.then15, %if.then7, %do.body2, %if.then
  %retval.0 = phi i32 [ %call.i.i, %if.then ], [ %call.i.i54, %if.then15 ], [ %call.i.i64, %if.then21 ], [ %call.i.i72, %if.then28 ], [ 0, %if.end30 ], [ -16, %if.then7 ], [ -16, %do.body2 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_read_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_read_cmd_nopm(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_write_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_write_cmd_nopm(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc16(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc75xx_bind(ptr noundef %dev, ptr noundef %intf) #2 align 64 {
entry:
  %buf.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #13
  %call1 = tail call i32 @usbnet_get_endpoints(ptr noundef %dev, ptr noundef %intf) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %1, ptr noundef nonnull @.str.57, i32 noundef %call1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 260) #14
  %3 = ptrtoint ptr %call7.i.i to i32
  %data = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %data, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %call7.i.i, align 8
  %rfe_ctl_lock = getelementptr inbounds %struct.smsc75xx_priv, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %rfe_ctl_lock, ptr noundef nonnull @.str.58, ptr noundef nonnull @smsc75xx_bind.__key, i16 noundef signext 3) #10
  %dataport_mutex = getelementptr inbounds %struct.smsc75xx_priv, ptr %call7.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %dataport_mutex, ptr noundef nonnull @.str.60, ptr noundef nonnull @smsc75xx_bind.__key.59) #10
  %set_multicast = getelementptr inbounds %struct.smsc75xx_priv, ptr %call7.i.i, i32 0, i32 6
  tail call void @__init_work(ptr noundef %set_multicast, i32 noundef 0) #10
  %6 = ptrtoint ptr %set_multicast to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %set_multicast, align 4
  %lockdep_map = getelementptr inbounds %struct.smsc75xx_priv, ptr %call7.i.i, i32 0, i32 6, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.62, ptr noundef nonnull @smsc75xx_bind.__key.61, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry20 = getelementptr inbounds %struct.smsc75xx_priv, ptr %call7.i.i, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %entry20 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry20, ptr %entry20, align 8
  %prev.i = getelementptr inbounds %struct.smsc75xx_priv, ptr %call7.i.i, i32 0, i32 6, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry20, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.smsc75xx_priv, ptr %call7.i.i, i32 0, i32 6, i32 2
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @smsc75xx_deferred_multicast_write, ptr %func, align 8
  %net24 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %10 = ptrtoint ptr %net24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net24, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 23
  %12 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %features, align 16
  %or = or i64 %13, 18
  store i64 %or, ptr %features, align 16
  %14 = load ptr, ptr %net24, align 4
  %features26 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 23
  %15 = ptrtoint ptr %features26 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %features26, align 16
  %or27 = or i64 %16, 1099511627776
  store i64 %or27, ptr %features26, align 16
  %17 = load ptr, ptr %net24, align 4
  %hw_features = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 24
  %18 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 1099511627794, ptr %hw_features, align 8
  %tobool.not.i.i = icmp eq ptr %dev, null
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end6
  %timeout.0.i = phi i32 [ 0, %if.end6 ], [ %inc.i, %do.cond.i.do.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #10
  %19 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %buf.i.i, align 4, !annotation !420
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !421

do.body4.i.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #10, !srcloc !422
  unreachable

do.end9.i.i:                                      ; preds = %do.body.i
  %call.i.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i, !prof !421

if.then.i:                                        ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %net24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net24, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %21, ptr noundef nonnull @.str.33, i32 noundef 20, i32 noundef %call.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #10
  %22 = ptrtoint ptr %net24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net24, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %23, ptr noundef nonnull @.str.52, i32 noundef %call.i.i) #13
  br label %if.then31

if.end.i:                                         ; preds = %do.end9.i.i
  %24 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buf.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %tobool.not.i = icmp sgt i32 %25, -1
  br i1 %tobool.not.i, label %do.cond.i, label %if.end33

do.cond.i:                                        ; preds = %if.end.i
  call void @msleep(i32 noundef 10) #10
  %inc.i = add nuw nsw i32 %timeout.0.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %do.end.i, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.end.i:                                         ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %net24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net24, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %27, ptr noundef nonnull @.str.53) #13
  br label %if.then31

if.then31:                                        ; preds = %do.end.i, %if.then.i
  %retval.2.i.ph = phi i32 [ %call.i.i, %if.then.i ], [ -5, %do.end.i ]
  %28 = ptrtoint ptr %net24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %net24, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %29, ptr noundef nonnull @.str.63) #13
  br label %free_pdata

if.end33:                                         ; preds = %if.end.i
  call fastcc void @smsc75xx_init_mac_address(ptr noundef nonnull %dev)
  %call34 = call i32 @smsc75xx_reset(ptr noundef nonnull %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  %30 = ptrtoint ptr %net24 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %net24, align 4
  br i1 %cmp35, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %31, ptr noundef nonnull @.str.64, i32 noundef %call34) #13
  %call52 = call zeroext i1 @cancel_work_sync(ptr noundef %set_multicast) #10
  br label %free_pdata

if.end38:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 16
  %32 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @smsc75xx_netdev_ops, ptr %netdev_ops, align 8
  %33 = ptrtoint ptr %net24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %net24, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 44
  %35 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @smsc75xx_ethtool_ops, ptr %ethtool_ops, align 16
  %36 = load ptr, ptr %net24, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 14
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags, align 8
  %or42 = or i32 %38, 4096
  store i32 %or42, ptr %flags, align 8
  %39 = load ptr, ptr %net24, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 19
  %40 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %hard_header_len, align 2
  %add = add i16 %41, 8
  store i16 %add, ptr %hard_header_len, align 2
  %42 = load ptr, ptr %net24, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 20
  %43 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mtu, align 4
  %hard_header_len47 = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 19
  %45 = ptrtoint ptr %hard_header_len47 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %hard_header_len47, align 2
  %conv48 = zext i16 %46 to i32
  %add49 = add i32 %44, %conv48
  %hard_mtu = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 23
  %47 = ptrtoint ptr %hard_mtu to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %add49, ptr %hard_mtu, align 4
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 31
  %48 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 9000, ptr %max_mtu, align 4
  br label %cleanup

free_pdata:                                       ; preds = %if.then36, %if.then31
  %ret.0 = phi i32 [ %retval.2.i.ph, %if.then31 ], [ %call34, %if.then36 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  %49 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %free_pdata, %if.end38, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %ret.0, %free_pdata ], [ 0, %if.end38 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smsc75xx_unbind(ptr nocapture noundef %dev, ptr nocapture noundef readnone %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then:                                          ; preds = %entry
  %set_multicast = getelementptr inbounds %struct.smsc75xx_priv, ptr %2, i32 0, i32 6
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %set_multicast) #10
  %msg_enable = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 20
  %3 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msg_enable, align 4
  %and = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then.do.end11_crit_edge, label %do.body3

if.then.do.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11

do.body3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc75xx_unbind.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc75xx_unbind, %if.then8)) #10
          to label %do.end11 [label %if.then8], !srcloc !426

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %5 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc75xx_unbind.__UNIQUE_ID_ddebug389, ptr noundef %6, ptr noundef nonnull @.str.96) #10
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %do.body3, %if.then.do.end11_crit_edge
  tail call void @kfree(ptr noundef nonnull %2) #10
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %data, align 4
  br label %if.end14

if.end14:                                         ; preds = %do.end11, %entry.if.end14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc75xx_reset(ptr noundef %dev) #2 align 64 {
entry:
  %buf.i.i1473 = alloca i32, align 4
  %buf.i.i1463 = alloca i32, align 4
  %buf.i.i1454 = alloca i32, align 4
  %buf.i.i1444 = alloca i32, align 4
  %buf.i.i1435 = alloca i32, align 4
  %buf.i.i1425 = alloca i32, align 4
  %buf.i.i1416 = alloca i32, align 4
  %buf.i.i1406 = alloca i32, align 4
  %buf.i.i1397 = alloca i32, align 4
  %buf.i.i1387 = alloca i32, align 4
  %buf.i.i1378 = alloca i32, align 4
  %buf.i.i1368 = alloca i32, align 4
  %buf.i.i1358 = alloca i32, align 4
  %buf.i.i1349 = alloca i32, align 4
  %buf.i.i1339 = alloca i32, align 4
  %buf.i.i1330 = alloca i32, align 4
  %buf.i.i1321 = alloca i32, align 4
  %buf.i.i1312 = alloca i32, align 4
  %buf.i.i1302 = alloca i32, align 4
  %buf.i.i1292 = alloca i32, align 4
  %buf.i.i1282 = alloca i32, align 4
  %buf.i.i1273 = alloca i32, align 4
  %buf.i.i1264 = alloca i32, align 4
  %buf.i.i1255 = alloca i32, align 4
  %buf.i.i1245 = alloca i32, align 4
  %buf.i.i1236 = alloca i32, align 4
  %buf.i.i1226 = alloca i32, align 4
  %buf.i.i1216 = alloca i32, align 4
  %buf.i.i1207 = alloca i32, align 4
  %buf.i.i1197 = alloca i32, align 4
  %buf.i.i1188 = alloca i32, align 4
  %buf.i.i1178 = alloca i32, align 4
  %buf.i.i1169 = alloca i32, align 4
  %buf.i.i1159 = alloca i32, align 4
  %buf.i.i95.i = alloca i32, align 4
  %buf.i.i86.i = alloca i32, align 4
  %buf.i.i77.i = alloca i32, align 4
  %buf.i.i.i = alloca i32, align 4
  %buf.i.i1147 = alloca i32, align 4
  %buf.i.i1138 = alloca i32, align 4
  %buf.i.i1128 = alloca i32, align 4
  %buf.i.i1118 = alloca i32, align 4
  %buf.i.i1110 = alloca i32, align 4
  %buf.i.i1103 = alloca i32, align 4
  %buf.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %2 = inttoptr i32 %1 to ptr
  %msg_enable = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 20
  %3 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msg_enable, align 4
  %and = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.body1

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc75xx_reset.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc75xx_reset, %if.then5)) #10
          to label %do.end8 [label %if.then5], !srcloc !426

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %5 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc75xx_reset.__UNIQUE_ID_ddebug369, ptr noundef %6, ptr noundef nonnull @.str.98) #10
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %entry.do.end8_crit_edge
  %tobool.not.i.i = icmp eq ptr %dev, null
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %do.end8
  %timeout.0.i = phi i32 [ 0, %do.end8 ], [ %inc.i, %do.cond.i.do.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #10
  %7 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %buf.i.i, align 4, !annotation !420
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !421

do.body4.i.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #10, !srcloc !422
  unreachable

do.end9.i.i:                                      ; preds = %do.body.i
  %call.i.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i, !prof !421

if.then.i:                                        ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %8 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %9, ptr noundef nonnull @.str.33, i32 noundef 20, i32 noundef %call.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #10
  %10 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %11, ptr noundef nonnull @.str.52, i32 noundef %call.i.i) #13
  br label %if.then10

if.end.i:                                         ; preds = %do.end9.i.i
  %12 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buf.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %tobool.not.i = icmp sgt i32 %13, -1
  br i1 %tobool.not.i, label %do.cond.i, label %do.end9.i.i1108

do.cond.i:                                        ; preds = %if.end.i
  call void @msleep(i32 noundef 10) #10
  %inc.i = add nuw nsw i32 %timeout.0.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %do.end.i, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.end.i:                                         ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %net5.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %14 = ptrtoint ptr %net5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net5.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %15, ptr noundef nonnull @.str.53) #13
  br label %if.then10

if.then10:                                        ; preds = %do.end.i, %if.then.i
  %retval.2.i.ph = phi i32 [ %call.i.i, %if.then.i ], [ -5, %do.end.i ]
  %net11 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %16 = ptrtoint ptr %net11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net11, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %17, ptr noundef nonnull @.str.99) #13
  br label %cleanup

do.end9.i.i1108:                                  ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i1103) #10
  %18 = ptrtoint ptr %buf.i.i1103 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %buf.i.i1103, align 4, !annotation !420
  %call.i.i1106 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef nonnull %buf.i.i1103, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1106)
  %cmp.i.i1107 = icmp slt i32 %call.i.i1106, 0
  br i1 %cmp.i.i1107, label %if.then15, label %do.end9.i.i1115, !prof !421

if.then15:                                        ; preds = %do.end9.i.i1108
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i1109 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %19 = ptrtoint ptr %net.i.i1109 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net.i.i1109, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %20, ptr noundef nonnull @.str.33, i32 noundef 16, i32 noundef %call.i.i1106) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1103) #10
  %21 = ptrtoint ptr %net.i.i1109 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net.i.i1109, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %22, ptr noundef nonnull @.str.100, i32 noundef %call.i.i1106) #13
  br label %cleanup

do.end9.i.i1115:                                  ; preds = %do.end9.i.i1108
  %23 = ptrtoint ptr %buf.i.i1103 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buf.i.i1103, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1103) #10
  %25 = or i32 %24, 33554432
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i1110) #10
  %26 = ptrtoint ptr %buf.i.i1110 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %buf.i.i1110, align 4
  %call.i.i1113 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef nonnull %buf.i.i1110, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1113)
  %cmp.i.i1114 = icmp slt i32 %call.i.i1113, 0
  br i1 %cmp.i.i1114, label %if.then20, label %smsc75xx_write_reg.exit, !prof !421

smsc75xx_write_reg.exit:                          ; preds = %do.end9.i.i1115
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1110) #10
  br label %do.end9.i.i1123

if.then20:                                        ; preds = %do.end9.i.i1115
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i1116 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %27 = ptrtoint ptr %net.i.i1116 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net.i.i1116, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %28, ptr noundef nonnull @.str.34, i32 noundef 16, i32 noundef %call.i.i1113) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1110) #10
  %29 = ptrtoint ptr %net.i.i1116 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net.i.i1116, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %30, ptr noundef nonnull @.str.101, i32 noundef %call.i.i1113) #13
  br label %cleanup

do.end9.i.i1123:                                  ; preds = %if.end28.do.end9.i.i1123_crit_edge, %smsc75xx_write_reg.exit
  %timeout.0 = phi i32 [ 0, %smsc75xx_write_reg.exit ], [ %inc, %if.end28.do.end9.i.i1123_crit_edge ]
  call void @msleep(i32 noundef 10) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i1118) #10
  %31 = ptrtoint ptr %buf.i.i1118 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %buf.i.i1118, align 4, !annotation !420
  %call.i.i1121 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef nonnull %buf.i.i1118, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1121)
  %cmp.i.i1122 = icmp slt i32 %call.i.i1121, 0
  br i1 %cmp.i.i1122, label %if.then26, label %if.end28, !prof !421

if.then26:                                        ; preds = %do.end9.i.i1123
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i1124 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %32 = ptrtoint ptr %net.i.i1124 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %net.i.i1124, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %33, ptr noundef nonnull @.str.33, i32 noundef 16, i32 noundef %call.i.i1121) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1118) #10
  %34 = ptrtoint ptr %net.i.i1124 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %net.i.i1124, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %35, ptr noundef nonnull @.str.100, i32 noundef %call.i.i1121) #13
  br label %cleanup

if.end28:                                         ; preds = %do.end9.i.i1123
  %36 = ptrtoint ptr %buf.i.i1118 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %buf.i.i1118, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1118) #10
  %inc = add nuw nsw i32 %timeout.0, 1
  %38 = and i32 %37, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool31.not = icmp ne i32 %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %timeout.0)
  %cmp32 = icmp ult i32 %timeout.0, 99
  %or.cond = select i1 %tobool31.not, i1 %cmp32, i1 false
  br i1 %or.cond, label %if.end28.do.end9.i.i1123_crit_edge, label %do.end33

if.end28.do.end9.i.i1123_crit_edge:               ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i1123

do.end33:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 98, i32 %timeout.0)
  %cmp34 = icmp ugt i32 %timeout.0, 98
  br i1 %cmp34, label %if.then35, label %do.body38

if.then35:                                        ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #12
  %net36 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %39 = ptrtoint ptr %net36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %net36, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %40, ptr noundef nonnull @.str.102) #13
  br label %cleanup

do.body38:                                        ; preds = %do.end33
  %41 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %msg_enable, align 4
  %and40 = and i32 %42, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %do.body38.do.end9.i.i1133_crit_edge, label %do.body43

do.body38.do.end9.i.i1133_crit_edge:              ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i1133

do.body43:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc75xx_reset.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc75xx_reset, %if.then55)) #10
          to label %do.end9.i.i1133 [label %if.then55], !srcloc !426

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #12
  %net56 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %43 = ptrtoint ptr %net56 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %net56, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc75xx_reset.__UNIQUE_ID_ddebug370, ptr noundef %44, ptr noundef nonnull @.str.103) #10
  br label %do.end9.i.i1133

do.end9.i.i1133:                                  ; preds = %if.then55, %do.body43, %do.body38.do.end9.i.i1133_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i1128) #10
  %45 = ptrtoint ptr %buf.i.i1128 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %buf.i.i1128, align 4, !annotation !420
  %call.i.i1131 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %buf.i.i1128, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1131)
  %cmp.i.i1132 = icmp slt i32 %call.i.i1131, 0
  br i1 %cmp.i.i1132, label %if.then65, label %do.end9.i.i1143, !prof !421

if.then65:                                        ; preds = %do.end9.i.i1133
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i1134 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %46 = ptrtoint ptr %net.i.i1134 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %net.i.i1134, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %47, ptr noundef nonnull @.str.33, i32 noundef 20, i32 noundef %call.i.i1131) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1128) #10
  %48 = ptrtoint ptr %net.i.i1134 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %net.i.i1134, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %49, ptr noundef nonnull @.str.52, i32 noundef %call.i.i1131) #13
  br label %cleanup

do.end9.i.i1143:                                  ; preds = %do.end9.i.i1133
  %50 = ptrtoint ptr %buf.i.i1128 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %buf.i.i1128, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1128) #10
  %52 = or i32 %51, 268435456
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i1138) #10
  %53 = ptrtoint ptr %buf.i.i1138 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %buf.i.i1138, align 4
  %call.i.i1141 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %buf.i.i1138, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1141)
  %cmp.i.i1142 = icmp slt i32 %call.i.i1141, 0
  br i1 %cmp.i.i1142, label %if.then71, label %smsc75xx_write_reg.exit1146, !prof !421

smsc75xx_write_reg.exit1146:                      ; preds = %do.end9.i.i1143
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1138) #10
  br label %do.end9.i.i1152

if.then71:                                        ; preds = %do.end9.i.i1143
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i1144 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %54 = ptrtoint ptr %net.i.i1144 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %net.i.i1144, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %55, ptr noundef nonnull @.str.34, i32 noundef 20, i32 noundef %call.i.i1141) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1138) #10
  %56 = ptrtoint ptr %net.i.i1144 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %net.i.i1144, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %57, ptr noundef nonnull @.str.104, i32 noundef %call.i.i1141) #13
  br label %cleanup

do.end9.i.i1152:                                  ; preds = %if.end79.do.end9.i.i1152_crit_edge, %smsc75xx_write_reg.exit1146
  %timeout.1 = phi i32 [ 0, %smsc75xx_write_reg.exit1146 ], [ %inc80, %if.end79.do.end9.i.i1152_crit_edge ]
  call void @msleep(i32 noundef 10) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i1147) #10
  %58 = ptrtoint ptr %buf.i.i1147 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -1, ptr %buf.i.i1147, align 4, !annotation !420
  %call.i.i1150 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %buf.i.i1147, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1150)
  %cmp.i.i1151 = icmp slt i32 %call.i.i1150, 0
  br i1 %cmp.i.i1151, label %if.then77, label %if.end79, !prof !421

if.then77:                                        ; preds = %do.end9.i.i1152
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i1153 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %59 = ptrtoint ptr %net.i.i1153 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %net.i.i1153, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %60, ptr noundef nonnull @.str.33, i32 noundef 20, i32 noundef %call.i.i1150) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1147) #10
  %61 = ptrtoint ptr %net.i.i1153 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %net.i.i1153, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %62, ptr noundef nonnull @.str.52, i32 noundef %call.i.i1150) #13
  br label %cleanup

if.end79:                                         ; preds = %do.end9.i.i1152
  %63 = ptrtoint ptr %buf.i.i1147 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %buf.i.i1147, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1147) #10
  %inc80 = add nuw nsw i32 %timeout.1, 1
  %65 = and i32 %64, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool83.not = icmp ne i32 %65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %timeout.1)
  %cmp85 = icmp ult i32 %timeout.1, 99
  %or.cond1045 = select i1 %tobool83.not, i1 %cmp85, i1 false
  br i1 %or.cond1045, label %if.end79.do.end9.i.i1152_crit_edge, label %do.end87

if.end79.do.end9.i.i1152_crit_edge:               ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i1152

do.end87:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_const_cmp4(i32 98, i32 %timeout.1)
  %cmp88 = icmp ugt i32 %timeout.1, 98
  br i1 %cmp88, label %if.then89, label %do.body92

if.then89:                                        ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #12
  %net90 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %66 = ptrtoint ptr %net90 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %net90, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %67, ptr noundef nonnull @.str.105) #13
  br label %cleanup

do.body92:                                        ; preds = %do.end87
  %68 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %msg_enable, align 4
  %and94 = and i32 %69, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %do.body92.do.end9.i.i.i_crit_edge, label %do.body97

do.body92.do.end9.i.i.i_crit_edge:                ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i.i

do.body97:                                        ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc75xx_reset.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc75xx_reset, %if.then109)) #10
          to label %do.end9.i.i.i [label %if.then109], !srcloc !426

if.then109:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #12
  %net110 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %70 = ptrtoint ptr %net110 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %net110, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc75xx_reset.__UNIQUE_ID_ddebug371, ptr noundef %71, ptr noundef nonnull @.str.106) #10
  br label %do.end9.i.i.i

do.end9.i.i.i:                                    ; preds = %if.then109, %do.body97, %do.body92.do.end9.i.i.i_crit_edge
  %net.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %72 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %net.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %73, i32 0, i32 86
  %74 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev_addr.i, align 64
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %75, align 1
  %arrayidx3.i = getelementptr i8, ptr %75, i32 1
  %78 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx3.i, align 1
  %arrayidx7.i = getelementptr i8, ptr %75, i32 2
  %80 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx7.i, align 1
  %arrayidx13.i = getelementptr i8, ptr %75, i32 3
  %82 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx13.i, align 1
  %arrayidx19.i = getelementptr i8, ptr %75, i32 4
  %84 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx19.i, align 1
  %conv20.i = zext i8 %85 to i32
  %arrayidx23.i = getelementptr i8, ptr %75, i32 5
  %86 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx23.i, align 1
  %conv24.i = zext i8 %87 to i32
  %shl25.i = shl nuw nsw i32 %conv24.i, 8
  %or26.i = or i32 %shl25.i, %conv20.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i) #10
  %88 = call i32 @llvm.bswap.i32(i32 %or26.i) #10
  %89 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %buf.i.i.i, align 4
  %call.i.i.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 280, ptr noundef nonnull %buf.i.i.i, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i1157, label %do.end9.i.i82.i, !prof !421

if.then.i1157:                                    ; preds = %do.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %90 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %91, ptr noundef nonnull @.str.34, i32 noundef 280, i32 noundef %call.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #10
  %92 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %93, ptr noundef nonnull @.str.151, i32 noundef %call.i.i.i) #13
  br label %if.then119

do.end9.i.i82.i:                                  ; preds = %do.end9.i.i.i
  %conv4.i = zext i8 %79 to i32
  %shl.i = shl nuw nsw i32 %conv4.i, 8
  %conv.i = zext i8 %77 to i32
  %or.i = or i32 %shl.i, %conv.i
  %conv8.i = zext i8 %81 to i32
  %shl9.i = shl nuw nsw i32 %conv8.i, 16
  %or10.i = or i32 %or.i, %shl9.i
  %conv14.i = zext i8 %83 to i32
  %shl15.i = shl nuw i32 %conv14.i, 24
  %or16.i = or i32 %or10.i, %shl15.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i77.i) #10
  %94 = call i32 @llvm.bswap.i32(i32 %or16.i) #10
  %95 = ptrtoint ptr %buf.i.i77.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %buf.i.i77.i, align 4
  %call.i.i80.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 284, ptr noundef nonnull %buf.i.i77.i, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i80.i)
  %cmp.i.i81.i = icmp slt i32 %call.i.i80.i, 0
  br i1 %cmp.i.i81.i, label %if.then32.i, label %do.end9.i.i91.i, !prof !421

if.then32.i:                                      ; preds = %do.end9.i.i82.i
  call void @__sanitizer_cov_trace_pc() #12
  %96 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %97, ptr noundef nonnull @.str.34, i32 noundef 284, i32 noundef %call.i.i80.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i77.i) #10
  %98 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %99, ptr noundef nonnull @.str.152, i32 noundef %call.i.i80.i) #13
  br label %if.then119

do.end9.i.i91.i:                                  ; preds = %do.end9.i.i82.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i77.i) #10
  %or35.i = or i32 %or26.i, -2147483648
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i86.i) #10
  %100 = call i32 @llvm.bswap.i32(i32 %or35.i) #10
  %101 = ptrtoint ptr %buf.i.i86.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %buf.i.i86.i, align 4
  %call.i.i89.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 768, ptr noundef nonnull %buf.i.i86.i, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i89.i)
  %cmp.i.i90.i = icmp slt i32 %call.i.i89.i, 0
  br i1 %cmp.i.i90.i, label %if.then39.i, label %do.end9.i.i100.i, !prof !421

if.then39.i:                                      ; preds = %do.end9.i.i91.i
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %103, ptr noundef nonnull @.str.34, i32 noundef 768, i32 noundef %call.i.i89.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i86.i) #10
  %104 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %105, ptr noundef nonnull @.str.153, i32 noundef %call.i.i89.i) #13
  br label %if.then119

do.end9.i.i100.i:                                 ; preds = %do.end9.i.i91.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i86.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i95.i) #10
  %106 = ptrtoint ptr %buf.i.i95.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %94, ptr %buf.i.i95.i, align 4
  %call.i.i98.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 772, ptr noundef nonnull %buf.i.i95.i, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i98.i)
  %cmp.i.i99.i = icmp slt i32 %call.i.i98.i, 0
  br i1 %cmp.i.i99.i, label %if.then45.i, label %do.body122, !prof !421

if.then45.i:                                      ; preds = %do.end9.i.i100.i
  call void @__sanitizer_cov_trace_pc() #12
  %107 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %108, ptr noundef nonnull @.str.34, i32 noundef 772, i32 noundef %call.i.i98.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i95.i) #10
  %109 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %110, ptr noundef nonnull @.str.154, i32 noundef %call.i.i98.i) #13
  br label %if.then119

if.then119:                                       ; preds = %if.then45.i, %if.then39.i, %if.then32.i, %if.then.i1157
  %retval.0.i1158.ph = phi i32 [ %call.i.i98.i, %if.then45.i ], [ %call.i.i89.i, %if.then39.i ], [ %call.i.i80.i, %if.then32.i ], [ %call.i.i.i, %if.then.i1157 ]
  %111 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %112, ptr noundef nonnull @.str.107) #13
  br label %cleanup

do.body122:                                       ; preds = %do.end9.i.i100.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i95.i) #10
  %113 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %msg_enable, align 4
  %and124 = and i32 %114, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %do.body122.do.end9.i.i1164_crit_edge, label %do.body127

do.body122.do.end9.i.i1164_crit_edge:             ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i1164

do.body127:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc75xx_reset.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc75xx_reset, %if.then139)) #10
          to label %do.end9.i.i1164 [label %if.then139], !srcloc !426

if.then139:                                       ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #12
  %115 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %net.i, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %116, i32 0, i32 86
  %117 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev_addr, align 64
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc75xx_reset.__UNIQUE_ID_ddebug372, ptr noundef %116, ptr noundef nonnull @.str.108, ptr noundef %118) #10
  br label %do.end9.i.i1164

do.end9.i.i1164:                                  ; preds = %if.then139, %do.body127, %do.body122.do.end9.i.i1164_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i1159) #10
  %119 = ptrtoint ptr %buf.i.i1159 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 -1, ptr %buf.i.i1159, align 4, !annotation !420
  %call.i.i1162 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef nonnull %buf.i.i1159, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1162)
  %cmp.i.i1163 = icmp slt i32 %call.i.i1162, 0
  br i1 %cmp.i.i1163, label %if.then150, label %do.body153, !prof !421

if.then150:                                       ; preds = %do.end9.i.i1164
  call void @__sanitizer_cov_trace_pc() #12
  %120 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %121, ptr noundef nonnull @.str.33, i32 noundef 16, i32 noundef %call.i.i1162) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1159) #10
  %122 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %123, ptr noundef nonnull @.str.100, i32 noundef %call.i.i1162) #13
  br label %cleanup

do.body153:                                       ; preds = %do.end9.i.i1164
  %124 = ptrtoint ptr %buf.i.i1159 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %buf.i.i1159, align 4
  %126 = call i32 @llvm.bswap.i32(i32 %125) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1159) #10
  %127 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %msg_enable, align 4
  %and155 = and i32 %128, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155)
  %tobool156.not = icmp eq i32 %and155, 0
  br i1 %tobool156.not, label %do.body153.do.end9.i.i1174_crit_edge, label %do.body158

do.body153.do.end9.i.i1174_crit_edge:             ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i1174

do.body158:                                       ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc75xx_reset.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc75xx_reset, %if.then170)) #10
          to label %do.end9.i.i1174 [label %if.then170], !srcloc !426

if.then170:                                       ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #12
  %129 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc75xx_reset.__UNIQUE_ID_ddebug373, ptr noundef %130, ptr noundef nonnull @.str.109, i32 noundef %126) #10
  br label %do.end9.i.i1174

do.end9.i.i1174:                                  ; preds = %if.then170, %do.body158, %do.body153.do.end9.i.i1174_crit_edge
  %or178 = or i32 %126, 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i1169) #10
  %131 = call i32 @llvm.bswap.i32(i32 %or178) #10
  %132 = ptrtoint ptr %buf.i.i1169 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %buf.i.i1169, align 4
  %call.i.i1172 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef nonnull %buf.i.i1169, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1172)
  %cmp.i.i1173 = icmp slt i32 %call.i.i1172, 0
  br i1 %cmp.i.i1173, label %if.then181, label %do.end9.i.i1183, !prof !421

if.then181:                                       ; preds = %do.end9.i.i1174
  call void @__sanitizer_cov_trace_pc() #12
  %133 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %134, ptr noundef nonnull @.str.34, i32 noundef 16, i32 noundef %call.i.i1172) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1169) #10
  %135 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %136, ptr noundef nonnull @.str.101, i32 noundef %call.i.i1172) #13
  br label %cleanup

do.end9.i.i1183:                                  ; preds = %do.end9.i.i1174
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1169) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i1178) #10
  %137 = ptrtoint ptr %buf.i.i1178 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 -1, ptr %buf.i.i1178, align 4, !annotation !420
  %call.i.i1181 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef nonnull %buf.i.i1178, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1181)
  %cmp.i.i1182 = icmp slt i32 %call.i.i1181, 0
  br i1 %cmp.i.i1182, label %if.then186, label %do.body189, !prof !421

if.then186:                                       ; preds = %do.end9.i.i1183
  call void @__sanitizer_cov_trace_pc() #12
  %138 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %139, ptr noundef nonnull @.str.33, i32 noundef 16, i32 noundef %call.i.i1181) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1178) #10
  %140 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %141, ptr noundef nonnull @.str.100, i32 noundef %call.i.i1181) #13
  br label %cleanup

do.body189:                                       ; preds = %do.end9.i.i1183
  %142 = ptrtoint ptr %buf.i.i1178 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %buf.i.i1178, align 4
  %144 = call i32 @llvm.bswap.i32(i32 %143) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1178) #10
  %145 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %msg_enable, align 4
  %and191 = and i32 %146, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and191)
  %tobool192.not = icmp eq i32 %and191, 0
  br i1 %tobool192.not, label %do.body189.do.end213_crit_edge, label %do.body194

do.body189.do.end213_crit_edge:                   ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end213

do.body194:                                       ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc75xx_reset.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc75xx_reset, %if.then206)) #10
          to label %do.end213 [label %if.then206], !srcloc !426

if.then206:                                       ; preds = %do.body194
  call void @__sanitizer_cov_trace_pc() #12
  %147 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc75xx_reset.__UNIQUE_ID_ddebug374, ptr noundef %148, ptr noundef nonnull @.str.110, i32 noundef %144) #10
  br label %do.end213

do.end213:                                        ; preds = %if.then206, %do.body194, %do.body189.do.end213_crit_edge
  %149 = load i8, ptr @turbo_mode, align 1, !range !427
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool214.not = icmp eq i8 %149, 0
  br i1 %tobool214.not, label %if.then215, label %if.else

if.then215:                                       ; preds = %do.end213
  call void @__sanitizer_cov_trace_pc() #12
  %rx_urb_size = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 24
  %150 = ptrtoint ptr %rx_urb_size to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 9000, ptr %rx_urb_size, align 4
  br label %do.body223

if.else:                                          ; preds = %do.end213
  %151 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dev, align 4
  %speed = getelementptr inbounds %struct.usb_device, ptr %152, i32 0, i32 4
  %153 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %154)
  %cmp216 = icmp eq i32 %154, 3
  %rx_urb_size218 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 24
  br i1 %cmp216, label %if.then217, label %if.else219

if.then217:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %155 = ptrtoint ptr %rx_urb_size218 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 18944, ptr %rx_urb_size218, align 4
  br label %do.body223

if.else219:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %156 = ptrtoint ptr %rx_urb_size218 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 8256, ptr %rx_urb_size218, align 4
  br label %do.body223

do.body223:                                       ; preds = %if.else219, %if.then217, %if.then215
  %buf.8 = phi i32 [ 0, %if.then215 ], [ 620756992, %if.then217 ], [ -2130706432, %if.else219 ]
  %157 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %msg_enable, align 4
  %and225 = and i32 %158, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and225)
  %tobool226.not = icmp eq i32 %and225, 0
  br i1 %tobool226.not, label %do.body223.do.end9.i.i1193_crit_edge, label %do.body228

do.body223.do.end9.i.i1193_crit_edge:             ; preds = %do.body223
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i1193

do.body228:                                       ; preds = %do.body223
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc75xx_reset.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc75xx_reset, %if.then240)) #10
          to label %do.end9.i.i1193 [label %if.then240], !srcloc !426

if.then240:                                       ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #12
  %159 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %net.i, align 4
  %rx_urb_size242 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 24
  %161 = ptrtoint ptr %rx_urb_size242 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %rx_urb_size242, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc75xx_reset.__UNIQUE_ID_ddebug375, ptr noundef %160, ptr noundef nonnull @.str.111, i32 noundef %162) #10
  br label %do.end9.i.i1193

do.end9.i.i1193:                                  ; preds = %if.then240, %do.body228, %do.body223.do.end9.i.i1193_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i1188) #10
  %163 = ptrtoint ptr %buf.i.i1188 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %buf.8, ptr %buf.i.i1188, align 4
  %call.i.i1191 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 52, ptr noundef nonnull %buf.i.i1188, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1191)
  %cmp.i.i1192 = icmp slt i32 %call.i.i1191, 0
  br i1 %cmp.i.i1192, label %if.then251, label %do.end9.i.i1202, !prof !421

if.then251:                                       ; preds = %do.end9.i.i1193
  call void @__sanitizer_cov_trace_pc() #12
  %164 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %165, ptr noundef nonnull @.str.34, i32 noundef 52, i32 noundef %call.i.i1191) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1188) #10
  %166 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %167, ptr noundef nonnull @.str.112, i32 noundef %call.i.i1191) #13
  br label %cleanup

do.end9.i.i1202:                                  ; preds = %do.end9.i.i1193
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1188) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i1197) #10
  %168 = ptrtoint ptr %buf.i.i1197 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 -1, ptr %buf.i.i1197, align 4, !annotation !420
  %call.i.i1200 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 52, ptr noundef nonnull %buf.i.i1197, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1200)
  %cmp.i.i1201 = icmp slt i32 %call.i.i1200, 0
  br i1 %cmp.i.i1201, label %if.then256, label %do.body259, !prof !421

if.then256:                                       ; preds = %do.end9.i.i1202
  call void @__sanitizer_cov_trace_pc() #12
  %169 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %170, ptr noundef nonnull @.str.33, i32 noundef 52, i32 noundef %call.i.i1200) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1197) #10
  %171 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %172, ptr noundef nonnull @.str.113, i32 noundef %call.i.i1200) #13
  br label %cleanup

do.body259:                                       ; preds = %do.end9.i.i1202
  %173 = ptrtoint ptr %buf.i.i1197 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %buf.i.i1197, align 4
  %175 = call i32 @llvm.bswap.i32(i32 %174) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1197) #10
  %176 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %msg_enable, align 4
  %and261 = and i32 %177, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and261)
  %tobool262.not = icmp eq i32 %and261, 0
  br i1 %tobool262.not, label %do.body259.do.end9.i.i1212_crit_edge, label %do.body264

do.body259.do.end9.i.i1212_crit_edge:             ; preds = %do.body259
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i1212

do.body264:                                       ; preds = %do.body259
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc75xx_reset.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc75xx_reset, %if.then276)) #10
          to label %do.end9.i.i1212 [label %if.then276], !srcloc !426

if.then276:                                       ; preds = %do.body264
  call void @__sanitizer_cov_trace_pc() #12
  %178 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc75xx_reset.__UNIQUE_ID_ddebug376, ptr noundef %179, ptr noundef nonnull @.str.114, i32 noundef %175) #10
  br label %do.end9.i.i1212

do.end9.i.i1212:                                  ; preds = %if.then276, %do.body264, %do.body259.do.end9.i.i1212_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i1207) #10
  %180 = ptrtoint ptr %buf.i.i1207 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 2097152, ptr %buf.i.i1207, align 4
  %call.i.i1210 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 60, ptr noundef nonnull %buf.i.i1207, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1210)
  %cmp.i.i1211 = icmp slt i32 %call.i.i1210, 0
  br i1 %cmp.i.i1211, label %if.then286, label %do.end9.i.i1221, !prof !421

if.then286:                                       ; preds = %do.end9.i.i1212
  call void @__sanitizer_cov_trace_pc() #12
  %181 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %182, ptr noundef nonnull @.str.34, i32 noundef 60, i32 noundef %call.i.i1210) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1207) #10
  %183 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %184, ptr noundef nonnull @.str.115, i32 noundef %call.i.i1210) #13
  br label %cleanup

do.end9.i.i1221:                                  ; preds = %do.end9.i.i1212
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1207) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i1216) #10
  %185 = ptrtoint ptr %buf.i.i1216 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 -1, ptr %buf.i.i1216, align 4, !annotation !420
  %call.i.i1219 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 60, ptr noundef nonnull %buf.i.i1216, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1219)
  %cmp.i.i1220 = icmp slt i32 %call.i.i1219, 0
  br i1 %cmp.i.i1220, label %if.then291, label %do.body294, !prof !421

if.then291:                                       ; preds = %do.end9.i.i1221
  call void @__sanitizer_cov_trace_pc() #12
  %186 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %187, ptr noundef nonnull @.str.33, i32 noundef 60, i32 noundef %call.i.i1219) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1216) #10
  %188 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %189, ptr noundef nonnull @.str.116, i32 noundef %call.i.i1219) #13
  br label %cleanup

do.body294:                                       ; preds = %do.end9.i.i1221
  %190 = ptrtoint ptr %buf.i.i1216 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %buf.i.i1216, align 4
  %192 = call i32 @llvm.bswap.i32(i32 %191) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1216) #10
  %193 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %msg_enable, align 4
  %and296 = and i32 %194, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and296)
  %tobool297.not = icmp eq i32 %and296, 0
  br i1 %tobool297.not, label %do.body294.do.end318_crit_edge, label %do.body299

do.body294.do.end318_crit_edge:                   ; preds = %do.body294
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end318

do.body299:                                       ; preds = %do.body294
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc75xx_reset.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc75xx_reset, %if.then311)) #10
          to label %do.end318 [label %if.then311], !srcloc !426

if.then311:                                       ; preds = %do.body299
  call void @__sanitizer_cov_trace_pc() #12
  %195 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc75xx_reset.__UNIQUE_ID_ddebug377, ptr noundef %196, ptr noundef nonnull @.str.117, i32 noundef %192) #10
  br label %do.end318

do.end318:                                        ; preds = %if.then311, %do.body299, %do.body294.do.end318_crit_edge
  %197 = load i8, ptr @turbo_mode, align 1, !range !427
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %tobool319.not = icmp eq i8 %197, 0
  br i1 %tobool319.not, label %do.end318.do.end9.i.i1260_crit_edge, label %do.end9.i.i1231

do.end318.do.end9.i.i1260_crit_edge:              ; preds = %do.end318
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i1260

do.end9.i.i1231:                                  ; preds = %do.end318
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i1226) #10
  %198 = ptrtoint ptr %buf.i.i1226 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 -1, ptr %buf.i.i1226, align 4, !annotation !420
  %call.i.i1229 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef nonnull %buf.i.i1226, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1229)
  %cmp.i.i1230 = icmp slt i32 %call.i.i1229, 0
  br i1 %cmp.i.i1230, label %if.then323, label %do.body326, !prof !421

if.then323:                                       ; preds = %do.end9.i.i1231
  call void @__sanitizer_cov_trace_pc() #12
  %199 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %200, ptr noundef nonnull @.str.33, i32 noundef 16, i32 noundef %call.i.i1229) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1226) #10
  %201 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %202, ptr noundef nonnull @.str.100, i32 noundef %call.i.i1229) #13
  br label %cleanup

do.body326:                                       ; preds = %do.end9.i.i1231
  %203 = ptrtoint ptr %buf.i.i1226 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %buf.i.i1226, align 4
  %205 = call i32 @llvm.bswap.i32(i32 %204) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1226) #10
  %206 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %msg_enable, align 4
  %and328 = and i32 %207, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and328)
  %tobool329.not = icmp eq i32 %and328, 0
  br i1 %tobool329.not, label %do.body326.do.end9.i.i1241_crit_edge, label %do.body331

do.body326.do.end9.i.i1241_crit_edge:             ; preds = %do.body326
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i1241

do.body331:                                       ; preds = %do.body326
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc75xx_reset.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc75xx_reset, %if.then343)) #10
          to label %do.end9.i.i1241 [label %if.then343], !srcloc !426

if.then343:                                       ; preds = %do.body331
  call void @__sanitizer_cov_trace_pc() #12
  %208 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc75xx_reset.__UNIQUE_ID_ddebug378, ptr noundef %209, ptr noundef nonnull @.str.118, i32 noundef %205) #10
  br label %do.end9.i.i1241

do.end9.i.i1241:                                  ; preds = %if.then343, %do.body331, %do.body326.do.end9.i.i1241_crit_edge
  %or351 = or i32 %205, 20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i1236) #10
  %210 = call i32 @llvm.bswap.i32(i32 %or351) #10
  %211 = ptrtoint ptr %buf.i.i1236 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %210, ptr %buf.i.i1236, align 4
  %call.i.i1239 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef nonnull %buf.i.i1236, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1239)
  %cmp.i.i1240 = icmp slt i32 %call.i.i1239, 0
  br i1 %cmp.i.i1240, label %if.then354, label %do.end9.i.i1250, !prof !421

if.then354:                                       ; preds = %do.end9.i.i1241
  call void @__sanitizer_cov_trace_pc() #12
  %212 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %213, ptr noundef nonnull @.str.34, i32 noundef 16, i32 noundef %call.i.i1239) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1236) #10
  %214 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %215, ptr noundef nonnull @.str.101, i32 noundef %call.i.i1239) #13
  br label %cleanup

do.end9.i.i1250:                                  ; preds = %do.end9.i.i1241
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1236) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i1245) #10
  %216 = ptrtoint ptr %buf.i.i1245 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 -1, ptr %buf.i.i1245, align 4, !annotation !420
  %call.i.i1248 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef nonnull %buf.i.i1245, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1248)
  %cmp.i.i1249 = icmp slt i32 %call.i.i1248, 0
  br i1 %cmp.i.i1249, label %if.then359, label %do.body362, !prof !421

if.then359:                                       ; preds = %do.end9.i.i1250
  call void @__sanitizer_cov_trace_pc() #12
  %217 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %218, ptr noundef nonnull @.str.33, i32 noundef 16, i32 noundef %call.i.i1248) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1245) #10
  %219 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %220, ptr noundef nonnull @.str.100, i32 noundef %call.i.i1248) #13
  br label %cleanup

do.body362:                                       ; preds = %do.end9.i.i1250
  %221 = ptrtoint ptr %buf.i.i1245 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %buf.i.i1245, align 4
  %223 = call i32 @llvm.bswap.i32(i32 %222) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1245) #10
  %224 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %msg_enable, align 4
  %and364 = and i32 %225, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and364)
  %tobool365.not = icmp eq i32 %and364, 0
  br i1 %tobool365.not, label %do.body362.do.end9.i.i1260_crit_edge, label %do.body367

do.body362.do.end9.i.i1260_crit_edge:             ; preds = %do.body362
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i1260

do.body367:                                       ; preds = %do.body362
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc75xx_reset.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc75xx_reset, %if.then379)) #10
          to label %do.end9.i.i1260 [label %if.then379], !srcloc !426

if.then379:                                       ; preds = %do.body367
  call void @__sanitizer_cov_trace_pc() #12
  %226 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc75xx_reset.__UNIQUE_ID_ddebug379, ptr noundef %227, ptr noundef nonnull @.str.118, i32 noundef %223) #10
  br label %do.end9.i.i1260

do.end9.i.i1260:                                  ; preds = %if.then379, %do.body367, %do.body362.do.end9.i.i1260_crit_edge, %do.end318.do.end9.i.i1260_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i1255) #10
  %228 = ptrtoint ptr %buf.i.i1255 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 654311424, ptr %buf.i.i1255, align 4
  %call.i.i1258 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 152, ptr noundef nonnull %buf.i.i1255, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1258)
  %cmp.i.i1259 = icmp slt i32 %call.i.i1258, 0
  br i1 %cmp.i.i1259, label %if.then390, label %do.body393, !prof !421

if.then390:                                       ; preds = %do.end9.i.i1260
  call void @__sanitizer_cov_trace_pc() #12
  %229 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %230, ptr noundef nonnull @.str.34, i32 noundef 152, i32 noundef %call.i.i1258) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1255) #10
  %231 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %232, ptr noundef nonnull @.str.119, i32 noundef %call.i.i1258) #13
  br label %cleanup

do.body393:                                       ; preds = %do.end9.i.i1260
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1255) #10
  %233 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %msg_enable, align 4
  %and395 = and i32 %234, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and395)
  %tobool396.not = icmp eq i32 %and395, 0
  br i1 %tobool396.not, label %do.body393.do.end9.i.i1269_crit_edge, label %do.body398

do.body393.do.end9.i.i1269_crit_edge:             ; preds = %do.body393
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i1269

do.body398:                                       ; preds = %do.body393
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc75xx_reset.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc75xx_reset, %if.then410)) #10
          to label %do.end9.i.i1269 [label %if.then410], !srcloc !426

if.then410:                                       ; preds = %do.body398
  call void @__sanitizer_cov_trace_pc() #12
  %235 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc75xx_reset.__UNIQUE_ID_ddebug380, ptr noundef %236, ptr noundef nonnull @.str.120, i32 noundef 39) #10
  br label %do.end9.i.i1269

do.end9.i.i1269:                                  ; preds = %if.then410, %do.body398, %do.body393.do.end9.i.i1269_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i1264) #10
  %237 = ptrtoint ptr %buf.i.i1264 to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 385875968, ptr %buf.i.i1264, align 4
  %call.i.i1267 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 156, ptr noundef nonnull %buf.i.i1264, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1267)
  %cmp.i.i1268 = icmp slt i32 %call.i.i1267, 0
  br i1 %cmp.i.i1268, label %if.then420, label %do.body423, !prof !421

if.then420:                                       ; preds = %do.end9.i.i1269
  call void @__sanitizer_cov_trace_pc() #12
  %238 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %239, ptr noundef nonnull @.str.34, i32 noundef 156, i32 noundef %call.i.i1267) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1264) #10
  %240 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %241, ptr noundef nonnull @.str.121, i32 noundef %call.i.i1267) #13
  br label %cleanup

do.body423:                                       ; preds = %do.end9.i.i1269
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1264) #10
  %242 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %msg_enable, align 4
  %and425 = and i32 %243, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and425)
  %tobool426.not = icmp eq i32 %and425, 0
  br i1 %tobool426.not, label %do.body423.do.end9.i.i1278_crit_edge, label %do.body428

do.body423.do.end9.i.i1278_crit_edge:             ; preds = %do.body423
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i1278

do.body428:                                       ; preds = %do.body423
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc75xx_reset.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc75xx_reset, %if.then440)) #10
          to label %do.end9.i.i1278 [label %if.then440], !srcloc !426

if.then440:                                       ; preds = %do.body428
  call void @__sanitizer_cov_trace_pc() #12
  %244 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc75xx_reset.__UNIQUE_ID_ddebug381, ptr noundef %245, ptr noundef nonnull @.str.122, i32 noundef 23) #10
  br label %do.end9.i.i1278

do.end9.i.i1278:                                  ; preds = %if.then440, %do.body428, %do.body423.do.end9.i.i1278_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i1273) #10
  %246 = ptrtoint ptr %buf.i.i1273 to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 -1, ptr %buf.i.i1273, align 4
  %call.i.i1276 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 12, ptr noundef nonnull %buf.i.i1273, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1276)
  %cmp.i.i1277 = icmp slt i32 %call.i.i1276, 0
  br i1 %cmp.i.i1277, label %if.then450, label %do.end9.i.i1287, !prof !421

if.then450:                                       ; preds = %do.end9.i.i1278
  call void @__sanitizer_cov_trace_pc() #12
  %247 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %248, ptr noundef nonnull @.str.34, i32 noundef 12, i32 noundef %call.i.i1276) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1273) #10
  %249 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %250, ptr noundef nonnull @.str.123, i32 noundef %call.i.i1276) #13
  br label %cleanup

do.end9.i.i1287:                                  ; preds = %do.end9.i.i1278
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1273) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i1282) #10
  %251 = ptrtoint ptr %buf.i.i1282 to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 -1, ptr %buf.i.i1282, align 4, !annotation !420
  %call.i.i1285 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buf.i.i1282, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1285)
  %cmp.i.i1286 = icmp slt i32 %call.i.i1285, 0
  br i1 %cmp.i.i1286, label %if.then455, label %do.body458, !prof !421

if.then455:                                       ; preds = %do.end9.i.i1287
  call void @__sanitizer_cov_trace_pc() #12
  %252 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %253, ptr noundef nonnull @.str.33, i32 noundef 0, i32 noundef %call.i.i1285) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1282) #10
  %254 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %255, ptr noundef nonnull @.str.124, i32 noundef %call.i.i1285) #13
  br label %cleanup

do.body458:                                       ; preds = %do.end9.i.i1287
  %256 = ptrtoint ptr %buf.i.i1282 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %buf.i.i1282, align 4
  %258 = call i32 @llvm.bswap.i32(i32 %257) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1282) #10
  %259 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %msg_enable, align 4
  %and460 = and i32 %260, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and460)
  %tobool461.not = icmp eq i32 %and460, 0
  br i1 %tobool461.not, label %do.body458.do.end9.i.i1297_crit_edge, label %do.body463

do.body458.do.end9.i.i1297_crit_edge:             ; preds = %do.body458
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i1297

do.body463:                                       ; preds = %do.body458
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc75xx_reset.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc75xx_reset, %if.then475)) #10
          to label %do.end9.i.i1297 [label %if.then475], !srcloc !426

if.then475:                                       ; preds = %do.body463
  call void @__sanitizer_cov_trace_pc() #12
  %261 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc75xx_reset.__UNIQUE_ID_ddebug382, ptr noundef %262, ptr noundef nonnull @.str.125, i32 noundef %258) #10
  br label %do.end9.i.i1297

do.end9.i.i1297:                                  ; preds = %if.then475, %do.body463, %do.body458.do.end9.i.i1297_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i1292) #10
  %263 = ptrtoint ptr %buf.i.i1292 to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 -1, ptr %buf.i.i1292, align 4, !annotation !420
  %call.i.i1295 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 64, ptr noundef nonnull %buf.i.i1292, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1295)
  %cmp.i.i1296 = icmp slt i32 %call.i.i1295, 0
  br i1 %cmp.i.i1296, label %if.then485, label %if.end487, !prof !421

if.then485:                                       ; preds = %do.end9.i.i1297
  call void @__sanitizer_cov_trace_pc() #12
  %264 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %265, ptr noundef nonnull @.str.33, i32 noundef 64, i32 noundef %call.i.i1295) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1292) #10
  %266 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %267, ptr noundef nonnull @.str.126, i32 noundef %call.i.i1295) #13
  br label %cleanup

if.end487:                                        ; preds = %do.end9.i.i1297
  %268 = ptrtoint ptr %buf.i.i1292 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %buf.i.i1292, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1292) #10
  %270 = and i32 %269, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %270)
  %tobool489.not = icmp eq i32 %270, 0
  br i1 %tobool489.not, label %do.end9.i.i1307, label %if.end487.do.end9.i.i1326_crit_edge

if.end487.do.end9.i.i1326_crit_edge:              ; preds = %if.end487
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i1326

do.end9.i.i1307:                                  ; preds = %if.end487
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i1302) #10
  %271 = ptrtoint ptr %buf.i.i1302 to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 -1, ptr %buf.i.i1302, align 4, !annotation !420
  %call.i.i1305 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 24, ptr noundef nonnull %buf.i.i1302, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1305)
  %cmp.i.i1306 = icmp slt i32 %call.i.i1305, 0
  br i1 %cmp.i.i1306, label %if.then493, label %do.end9.i.i1317, !prof !421

if.then493:                                       ; preds = %do.end9.i.i1307
  call void @__sanitizer_cov_trace_pc() #12
  %272 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %273, ptr noundef nonnull @.str.33, i32 noundef 24, i32 noundef %call.i.i1305) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1302) #10
  %274 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %275, ptr noundef nonnull @.str.127, i32 noundef %call.i.i1305) #13
  br label %cleanup

do.end9.i.i1317:                                  ; preds = %do.end9.i.i1307
  %276 = ptrtoint ptr %buf.i.i1302 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %buf.i.i1302, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1302) #10
  %278 = and i32 %277, -15728833
  %279 = or i32 %278, 15728768
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i1312) #10
  %280 = ptrtoint ptr %buf.i.i1312 to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 %279, ptr %buf.i.i1312, align 4
  %call.i.i1315 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 24, ptr noundef nonnull %buf.i.i1312, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1315)
  %cmp.i.i1316 = icmp slt i32 %call.i.i1315, 0
  br i1 %cmp.i.i1316, label %if.then500, label %smsc75xx_write_reg.exit1320, !prof !421

smsc75xx_write_reg.exit1320:                      ; preds = %do.end9.i.i1317
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1312) #10
  br label %do.end9.i.i1326

if.then500:                                       ; preds = %do.end9.i.i1317
  call void @__sanitizer_cov_trace_pc() #12
  %281 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %282, ptr noundef nonnull @.str.34, i32 noundef 24, i32 noundef %call.i.i1315) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1312) #10
  %283 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %284, ptr noundef nonnull @.str.128, i32 noundef %call.i.i1315) #13
  br label %cleanup

do.end9.i.i1326:                                  ; preds = %smsc75xx_write_reg.exit1320, %if.end487.do.end9.i.i1326_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i1321) #10
  %285 = ptrtoint ptr %buf.i.i1321 to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 0, ptr %buf.i.i1321, align 4
  %call.i.i1324 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 268, ptr noundef nonnull %buf.i.i1321, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1324)
  %cmp.i.i1325 = icmp slt i32 %call.i.i1324, 0
  br i1 %cmp.i.i1325, label %if.then506, label %do.end9.i.i1335, !prof !421

if.then506:                                       ; preds = %do.end9.i.i1326
  call void @__sanitizer_cov_trace_pc() #12
  %286 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %287, ptr noundef nonnull @.str.34, i32 noundef 268, i32 noundef %call.i.i1324) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1321) #10
  %288 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %289, ptr noundef nonnull @.str.129, i32 noundef %call.i.i1324) #13
  br label %cleanup

do.end9.i.i1335:                                  ; preds = %do.end9.i.i1326
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1321) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i1330) #10
  %290 = ptrtoint ptr %buf.i.i1330 to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 0, ptr %buf.i.i1330, align 4
  %call.i.i1333 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 160, ptr noundef nonnull %buf.i.i1330, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1333)
  %cmp.i.i1334 = icmp slt i32 %call.i.i1333, 0
  br i1 %cmp.i.i1334, label %if.then511, label %do.end9.i.i1344, !prof !421

if.then511:                                       ; preds = %do.end9.i.i1335
  call void @__sanitizer_cov_trace_pc() #12
  %291 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %292, ptr noundef nonnull @.str.34, i32 noundef 160, i32 noundef %call.i.i1333) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1330) #10
  %293 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %294, ptr noundef nonnull @.str.130, i32 noundef %call.i.i1333) #13
  br label %cleanup

do.end9.i.i1344:                                  ; preds = %do.end9.i.i1335
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1330) #10
  %rfe_ctl = getelementptr inbounds %struct.smsc75xx_priv, ptr %2, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i1339) #10
  %295 = ptrtoint ptr %buf.i.i1339 to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 -1, ptr %buf.i.i1339, align 4, !annotation !420
  %call.i.i1342 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 96, ptr noundef nonnull %buf.i.i1339, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1342)
  %cmp.i.i1343 = icmp slt i32 %call.i.i1342, 0
  br i1 %cmp.i.i1343, label %if.then516, label %do.end9.i.i1354, !prof !421

if.then516:                                       ; preds = %do.end9.i.i1344
  call void @__sanitizer_cov_trace_pc() #12
  %296 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %297, ptr noundef nonnull @.str.33, i32 noundef 96, i32 noundef %call.i.i1342) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1339) #10
  %298 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %299, ptr noundef nonnull @.str.131, i32 noundef %call.i.i1342) #13
  br label %cleanup

do.end9.i.i1354:                                  ; preds = %do.end9.i.i1344
  %300 = ptrtoint ptr %buf.i.i1339 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %buf.i.i1339, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1339) #10
  %302 = or i32 %301, 33816576
  %303 = call i32 @llvm.bswap.i32(i32 %302)
  %304 = ptrtoint ptr %rfe_ctl to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 %303, ptr %rfe_ctl, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i1349) #10
  %305 = ptrtoint ptr %buf.i.i1349 to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 %302, ptr %buf.i.i1349, align 4
  %call.i.i1352 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 96, ptr noundef nonnull %buf.i.i1349, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1352)
  %cmp.i.i1353 = icmp slt i32 %call.i.i1352, 0
  br i1 %cmp.i.i1353, label %if.then524, label %do.end9.i.i1363, !prof !421

if.then524:                                       ; preds = %do.end9.i.i1354
  call void @__sanitizer_cov_trace_pc() #12
  %306 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %307, ptr noundef nonnull @.str.34, i32 noundef 96, i32 noundef %call.i.i1352) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1349) #10
  %308 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %309, ptr noundef nonnull @.str.132, i32 noundef %call.i.i1352) #13
  br label %cleanup

do.end9.i.i1363:                                  ; preds = %do.end9.i.i1354
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1349) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i1358) #10
  %310 = ptrtoint ptr %buf.i.i1358 to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 -1, ptr %buf.i.i1358, align 4, !annotation !420
  %call.i.i1361 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 96, ptr noundef nonnull %buf.i.i1358, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1361)
  %cmp.i.i1362 = icmp slt i32 %call.i.i1361, 0
  br i1 %cmp.i.i1362, label %if.then530, label %do.body533, !prof !421

if.then530:                                       ; preds = %do.end9.i.i1363
  call void @__sanitizer_cov_trace_pc() #12
  %311 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %312, ptr noundef nonnull @.str.33, i32 noundef 96, i32 noundef %call.i.i1361) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1358) #10
  %313 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %314, ptr noundef nonnull @.str.131, i32 noundef %call.i.i1361) #13
  br label %cleanup

do.body533:                                       ; preds = %do.end9.i.i1363
  %315 = ptrtoint ptr %buf.i.i1358 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %buf.i.i1358, align 4
  %317 = call i32 @llvm.bswap.i32(i32 %316) #10
  %318 = ptrtoint ptr %rfe_ctl to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 %317, ptr %rfe_ctl, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1358) #10
  %319 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %msg_enable, align 4
  %and535 = and i32 %320, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and535)
  %tobool536.not = icmp eq i32 %and535, 0
  br i1 %tobool536.not, label %do.body533.do.end558_crit_edge, label %do.body538

do.body533.do.end558_crit_edge:                   ; preds = %do.body533
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end558

do.body538:                                       ; preds = %do.body533
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc75xx_reset.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc75xx_reset, %if.then550)) #10
          to label %do.end558 [label %if.then550], !srcloc !426

if.then550:                                       ; preds = %do.body538
  call void @__sanitizer_cov_trace_pc() #12
  %321 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %net.i, align 4
  %323 = ptrtoint ptr %rfe_ctl to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %rfe_ctl, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc75xx_reset.__UNIQUE_ID_ddebug383, ptr noundef %322, ptr noundef nonnull @.str.133, i32 noundef %324) #10
  br label %do.end558

do.end558:                                        ; preds = %if.then550, %do.body538, %do.body533.do.end558_crit_edge
  %325 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %net.i, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %326, i32 0, i32 23
  %327 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %327)
  %328 = load i64, ptr %features, align 16
  %call561 = call i32 @smsc75xx_set_features(ptr noundef %326, i64 noundef %328)
  %329 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %net.i, align 4
  call void @smsc75xx_set_multicast(ptr noundef %330)
  %call563 = call fastcc i32 @smsc75xx_phy_initialize(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call563)
  %cmp564 = icmp slt i32 %call563, 0
  br i1 %cmp564, label %if.then565, label %do.end9.i.i1373

if.then565:                                       ; preds = %do.end558
  call void @__sanitizer_cov_trace_pc() #12
  %331 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %332, ptr noundef nonnull @.str.134, i32 noundef %call563) #13
  br label %cleanup

do.end9.i.i1373:                                  ; preds = %do.end558
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i1368) #10
  %333 = ptrtoint ptr %buf.i.i1368 to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 -1, ptr %buf.i.i1368, align 4, !annotation !420
  %call.i.i1371 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 56, ptr noundef nonnull %buf.i.i1368, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1371)
  %cmp.i.i1372 = icmp slt i32 %call.i.i1371, 0
  br i1 %cmp.i.i1372, label %if.then570, label %do.end9.i.i1383, !prof !421

if.then570:                                       ; preds = %do.end9.i.i1373
  call void @__sanitizer_cov_trace_pc() #12
  %334 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %335, ptr noundef nonnull @.str.33, i32 noundef 56, i32 noundef %call.i.i1371) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1368) #10
  %336 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %337, ptr noundef nonnull @.str.135, i32 noundef %call.i.i1371) #13
  br label %cleanup

do.end9.i.i1383:                                  ; preds = %do.end9.i.i1373
  %338 = ptrtoint ptr %buf.i.i1368 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %buf.i.i1368, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1368) #10
  %340 = or i32 %339, 512
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i1378) #10
  %341 = ptrtoint ptr %buf.i.i1378 to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 %340, ptr %buf.i.i1378, align 4
  %call.i.i1381 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 56, ptr noundef nonnull %buf.i.i1378, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1381)
  %cmp.i.i1382 = icmp slt i32 %call.i.i1381, 0
  br i1 %cmp.i.i1382, label %if.then576, label %do.end9.i.i1392, !prof !421

if.then576:                                       ; preds = %do.end9.i.i1383
  call void @__sanitizer_cov_trace_pc() #12
  %342 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %343, ptr noundef nonnull @.str.34, i32 noundef 56, i32 noundef %call.i.i1381) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1378) #10
  %344 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %345, ptr noundef nonnull @.str.136, i32 noundef %call.i.i1381) #13
  br label %cleanup

do.end9.i.i1392:                                  ; preds = %do.end9.i.i1383
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1378) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i1387) #10
  %346 = ptrtoint ptr %buf.i.i1387 to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 -1, ptr %buf.i.i1387, align 4, !annotation !420
  %call.i.i1390 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 256, ptr noundef nonnull %buf.i.i1387, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1390)
  %cmp.i.i1391 = icmp slt i32 %call.i.i1390, 0
  br i1 %cmp.i.i1391, label %if.then581, label %do.end9.i.i1402, !prof !421

if.then581:                                       ; preds = %do.end9.i.i1392
  call void @__sanitizer_cov_trace_pc() #12
  %347 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %348, ptr noundef nonnull @.str.33, i32 noundef 256, i32 noundef %call.i.i1390) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1387) #10
  %349 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %350, ptr noundef nonnull @.str.137, i32 noundef %call.i.i1390) #13
  br label %cleanup

do.end9.i.i1402:                                  ; preds = %do.end9.i.i1392
  %351 = ptrtoint ptr %buf.i.i1387 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %buf.i.i1387, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1387) #10
  %353 = or i32 %352, 1572864
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i1397) #10
  %354 = ptrtoint ptr %buf.i.i1397 to i32
  call void @__asan_store4_noabort(i32 %354)
  store i32 %353, ptr %buf.i.i1397, align 4
  %call.i.i1400 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 256, ptr noundef nonnull %buf.i.i1397, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1400)
  %cmp.i.i1401 = icmp slt i32 %call.i.i1400, 0
  br i1 %cmp.i.i1401, label %if.then587, label %do.end9.i.i1411, !prof !421

if.then587:                                       ; preds = %do.end9.i.i1402
  call void @__sanitizer_cov_trace_pc() #12
  %355 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %356, ptr noundef nonnull @.str.34, i32 noundef 256, i32 noundef %call.i.i1400) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1397) #10
  %357 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %358, ptr noundef nonnull @.str.138, i32 noundef %call.i.i1400) #13
  br label %cleanup

do.end9.i.i1411:                                  ; preds = %do.end9.i.i1402
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1397) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i1406) #10
  %359 = ptrtoint ptr %buf.i.i1406 to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 -1, ptr %buf.i.i1406, align 4, !annotation !420
  %call.i.i1409 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 264, ptr noundef nonnull %buf.i.i1406, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1409)
  %cmp.i.i1410 = icmp slt i32 %call.i.i1409, 0
  br i1 %cmp.i.i1410, label %if.then592, label %do.end9.i.i1421, !prof !421

if.then592:                                       ; preds = %do.end9.i.i1411
  call void @__sanitizer_cov_trace_pc() #12
  %360 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %361, ptr noundef nonnull @.str.33, i32 noundef 264, i32 noundef %call.i.i1409) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1406) #10
  %362 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %363, ptr noundef nonnull @.str.139, i32 noundef %call.i.i1409) #13
  br label %cleanup

do.end9.i.i1421:                                  ; preds = %do.end9.i.i1411
  %364 = ptrtoint ptr %buf.i.i1406 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %buf.i.i1406, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1406) #10
  %366 = or i32 %365, 16777216
  %367 = call i32 @llvm.bswap.i32(i32 %366)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i1416) #10
  %368 = ptrtoint ptr %buf.i.i1416 to i32
  call void @__asan_store4_noabort(i32 %368)
  store i32 %366, ptr %buf.i.i1416, align 4
  %call.i.i1419 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 264, ptr noundef nonnull %buf.i.i1416, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1419)
  %cmp.i.i1420 = icmp slt i32 %call.i.i1419, 0
  br i1 %cmp.i.i1420, label %if.then598, label %do.body601, !prof !421

if.then598:                                       ; preds = %do.end9.i.i1421
  call void @__sanitizer_cov_trace_pc() #12
  %369 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %370, ptr noundef nonnull @.str.34, i32 noundef 264, i32 noundef %call.i.i1419) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1416) #10
  %371 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %372, ptr noundef nonnull @.str.140, i32 noundef %call.i.i1419) #13
  br label %cleanup

do.body601:                                       ; preds = %do.end9.i.i1421
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1416) #10
  %373 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %msg_enable, align 4
  %and603 = and i32 %374, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and603)
  %tobool604.not = icmp eq i32 %and603, 0
  br i1 %tobool604.not, label %do.body601.do.end9.i.i1430_crit_edge, label %do.body606

do.body601.do.end9.i.i1430_crit_edge:             ; preds = %do.body601
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i1430

do.body606:                                       ; preds = %do.body601
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc75xx_reset.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc75xx_reset, %if.then618)) #10
          to label %do.end9.i.i1430 [label %if.then618], !srcloc !426

if.then618:                                       ; preds = %do.body606
  call void @__sanitizer_cov_trace_pc() #12
  %375 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc75xx_reset.__UNIQUE_ID_ddebug384, ptr noundef %376, ptr noundef nonnull @.str.141, i32 noundef %367) #10
  br label %do.end9.i.i1430

do.end9.i.i1430:                                  ; preds = %if.then618, %do.body606, %do.body601.do.end9.i.i1430_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i1425) #10
  %377 = ptrtoint ptr %buf.i.i1425 to i32
  call void @__asan_store4_noabort(i32 %377)
  store i32 -1, ptr %buf.i.i1425, align 4, !annotation !420
  %call.i.i1428 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 148, ptr noundef nonnull %buf.i.i1425, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1428)
  %cmp.i.i1429 = icmp slt i32 %call.i.i1428, 0
  br i1 %cmp.i.i1429, label %if.then628, label %do.end9.i.i1440, !prof !421

if.then628:                                       ; preds = %do.end9.i.i1430
  call void @__sanitizer_cov_trace_pc() #12
  %378 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %379, ptr noundef nonnull @.str.33, i32 noundef 148, i32 noundef %call.i.i1428) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1425) #10
  %380 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %381, ptr noundef nonnull @.str.142, i32 noundef %call.i.i1428) #13
  br label %cleanup

do.end9.i.i1440:                                  ; preds = %do.end9.i.i1430
  %382 = ptrtoint ptr %buf.i.i1425 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %buf.i.i1425, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1425) #10
  %384 = or i32 %383, 128
  %385 = call i32 @llvm.bswap.i32(i32 %384)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i1435) #10
  %386 = ptrtoint ptr %buf.i.i1435 to i32
  call void @__asan_store4_noabort(i32 %386)
  store i32 %384, ptr %buf.i.i1435, align 4
  %call.i.i1438 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 148, ptr noundef nonnull %buf.i.i1435, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1438)
  %cmp.i.i1439 = icmp slt i32 %call.i.i1438, 0
  br i1 %cmp.i.i1439, label %if.then634, label %do.body637, !prof !421

if.then634:                                       ; preds = %do.end9.i.i1440
  call void @__sanitizer_cov_trace_pc() #12
  %387 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %388, ptr noundef nonnull @.str.34, i32 noundef 148, i32 noundef %call.i.i1438) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1435) #10
  %389 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %390, ptr noundef nonnull @.str.143, i32 noundef %call.i.i1438) #13
  br label %cleanup

do.body637:                                       ; preds = %do.end9.i.i1440
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1435) #10
  %391 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %msg_enable, align 4
  %and639 = and i32 %392, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and639)
  %tobool640.not = icmp eq i32 %and639, 0
  br i1 %tobool640.not, label %do.body637.do.end661_crit_edge, label %do.body642

do.body637.do.end661_crit_edge:                   ; preds = %do.body637
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end661

do.body642:                                       ; preds = %do.body637
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc75xx_reset.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc75xx_reset, %if.then654)) #10
          to label %do.end661 [label %if.then654], !srcloc !426

if.then654:                                       ; preds = %do.body642
  call void @__sanitizer_cov_trace_pc() #12
  %393 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc75xx_reset.__UNIQUE_ID_ddebug385, ptr noundef %394, ptr noundef nonnull @.str.144, i32 noundef %385) #10
  br label %do.end661

do.end661:                                        ; preds = %if.then654, %do.body642, %do.body637.do.end661_crit_edge
  %395 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %net.i, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %396, i32 0, i32 20
  %397 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %mtu, align 4
  %add = add i32 %398, 14
  %call663 = call fastcc i32 @smsc75xx_set_rx_max_frame_length(ptr noundef %dev, i32 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call663)
  %cmp664 = icmp slt i32 %call663, 0
  br i1 %cmp664, label %if.then665, label %do.end9.i.i1449

if.then665:                                       ; preds = %do.end661
  call void @__sanitizer_cov_trace_pc() #12
  %399 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %400, ptr noundef nonnull @.str.145) #13
  br label %cleanup

do.end9.i.i1449:                                  ; preds = %do.end661
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i1444) #10
  %401 = ptrtoint ptr %buf.i.i1444 to i32
  call void @__asan_store4_noabort(i32 %401)
  store i32 -1, ptr %buf.i.i1444, align 4, !annotation !420
  %call.i.i1447 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 260, ptr noundef nonnull %buf.i.i1444, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1447)
  %cmp.i.i1448 = icmp slt i32 %call.i.i1447, 0
  br i1 %cmp.i.i1448, label %if.then670, label %do.end9.i.i1459, !prof !421

if.then670:                                       ; preds = %do.end9.i.i1449
  call void @__sanitizer_cov_trace_pc() #12
  %402 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %403, ptr noundef nonnull @.str.33, i32 noundef 260, i32 noundef %call.i.i1447) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1444) #10
  %404 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %405, ptr noundef nonnull @.str.21, i32 noundef %call.i.i1447) #13
  br label %cleanup

do.end9.i.i1459:                                  ; preds = %do.end9.i.i1449
  %406 = ptrtoint ptr %buf.i.i1444 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %buf.i.i1444, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1444) #10
  %408 = or i32 %407, 16777216
  %409 = call i32 @llvm.bswap.i32(i32 %408)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i1454) #10
  %410 = ptrtoint ptr %buf.i.i1454 to i32
  call void @__asan_store4_noabort(i32 %410)
  store i32 %408, ptr %buf.i.i1454, align 4
  %call.i.i1457 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 260, ptr noundef nonnull %buf.i.i1454, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1457)
  %cmp.i.i1458 = icmp slt i32 %call.i.i1457, 0
  br i1 %cmp.i.i1458, label %if.then676, label %do.body679, !prof !421

if.then676:                                       ; preds = %do.end9.i.i1459
  call void @__sanitizer_cov_trace_pc() #12
  %411 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %412, ptr noundef nonnull @.str.34, i32 noundef 260, i32 noundef %call.i.i1457) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1454) #10
  %413 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %414, ptr noundef nonnull @.str.22, i32 noundef %call.i.i1457) #13
  br label %cleanup

do.body679:                                       ; preds = %do.end9.i.i1459
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1454) #10
  %415 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %msg_enable, align 4
  %and681 = and i32 %416, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and681)
  %tobool682.not = icmp eq i32 %and681, 0
  br i1 %tobool682.not, label %do.body679.do.end9.i.i1468_crit_edge, label %do.body684

do.body679.do.end9.i.i1468_crit_edge:             ; preds = %do.body679
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i1468

do.body684:                                       ; preds = %do.body679
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc75xx_reset.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc75xx_reset, %if.then696)) #10
          to label %do.end9.i.i1468 [label %if.then696], !srcloc !426

if.then696:                                       ; preds = %do.body684
  call void @__sanitizer_cov_trace_pc() #12
  %417 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc75xx_reset.__UNIQUE_ID_ddebug386, ptr noundef %418, ptr noundef nonnull @.str.146, i32 noundef %409) #10
  br label %do.end9.i.i1468

do.end9.i.i1468:                                  ; preds = %if.then696, %do.body684, %do.body679.do.end9.i.i1468_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i1463) #10
  %419 = ptrtoint ptr %buf.i.i1463 to i32
  call void @__asan_store4_noabort(i32 %419)
  store i32 -1, ptr %buf.i.i1463, align 4, !annotation !420
  %call.i.i1466 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 144, ptr noundef nonnull %buf.i.i1463, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1466)
  %cmp.i.i1467 = icmp slt i32 %call.i.i1466, 0
  br i1 %cmp.i.i1467, label %if.then706, label %do.end9.i.i1478, !prof !421

if.then706:                                       ; preds = %do.end9.i.i1468
  call void @__sanitizer_cov_trace_pc() #12
  %420 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %421, ptr noundef nonnull @.str.33, i32 noundef 144, i32 noundef %call.i.i1466) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1463) #10
  %422 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %423, ptr noundef nonnull @.str.147, i32 noundef %call.i.i1466) #13
  br label %cleanup

do.end9.i.i1478:                                  ; preds = %do.end9.i.i1468
  %424 = ptrtoint ptr %buf.i.i1463 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %buf.i.i1463, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1463) #10
  %426 = or i32 %425, 128
  %427 = call i32 @llvm.bswap.i32(i32 %426)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i1473) #10
  %428 = ptrtoint ptr %buf.i.i1473 to i32
  call void @__asan_store4_noabort(i32 %428)
  store i32 %426, ptr %buf.i.i1473, align 4
  %call.i.i1476 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 144, ptr noundef nonnull %buf.i.i1473, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1476)
  %cmp.i.i1477 = icmp slt i32 %call.i.i1476, 0
  br i1 %cmp.i.i1477, label %if.then712, label %do.body715, !prof !421

if.then712:                                       ; preds = %do.end9.i.i1478
  call void @__sanitizer_cov_trace_pc() #12
  %429 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %430, ptr noundef nonnull @.str.34, i32 noundef 144, i32 noundef %call.i.i1476) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1473) #10
  %431 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %432, ptr noundef nonnull @.str.148, i32 noundef %call.i.i1476) #13
  br label %cleanup

do.body715:                                       ; preds = %do.end9.i.i1478
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1473) #10
  %433 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %msg_enable, align 4
  %and717 = and i32 %434, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and717)
  %tobool718.not = icmp eq i32 %and717, 0
  br i1 %tobool718.not, label %do.body715.do.body740_crit_edge, label %do.body720

do.body715.do.body740_crit_edge:                  ; preds = %do.body715
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body740

do.body720:                                       ; preds = %do.body715
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc75xx_reset.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc75xx_reset, %if.then732)) #10
          to label %do.body740 [label %if.then732], !srcloc !426

if.then732:                                       ; preds = %do.body720
  call void @__sanitizer_cov_trace_pc() #12
  %435 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc75xx_reset.__UNIQUE_ID_ddebug387, ptr noundef %436, ptr noundef nonnull @.str.149, i32 noundef %427) #10
  br label %do.body740

do.body740:                                       ; preds = %if.then732, %do.body720, %do.body715.do.body740_crit_edge
  %437 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load i32, ptr %msg_enable, align 4
  %and742 = and i32 %438, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and742)
  %tobool743.not = icmp eq i32 %and742, 0
  br i1 %tobool743.not, label %do.body740.cleanup_crit_edge, label %do.body745

do.body740.cleanup_crit_edge:                     ; preds = %do.body740
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body745:                                       ; preds = %do.body740
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc75xx_reset.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc75xx_reset, %if.then757)) #10
          to label %cleanup [label %if.then757], !srcloc !426

if.then757:                                       ; preds = %do.body745
  call void @__sanitizer_cov_trace_pc() #12
  %439 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc75xx_reset.__UNIQUE_ID_ddebug388, ptr noundef %440, ptr noundef nonnull @.str.150) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then757, %do.body745, %do.body740.cleanup_crit_edge, %if.then712, %if.then706, %if.then676, %if.then670, %if.then665, %if.then634, %if.then628, %if.then598, %if.then592, %if.then587, %if.then581, %if.then576, %if.then570, %if.then565, %if.then530, %if.then524, %if.then516, %if.then511, %if.then506, %if.then500, %if.then493, %if.then485, %if.then455, %if.then450, %if.then420, %if.then390, %if.then359, %if.then354, %if.then323, %if.then291, %if.then286, %if.then256, %if.then251, %if.then186, %if.then181, %if.then150, %if.then119, %if.then89, %if.then77, %if.then71, %if.then65, %if.then35, %if.then26, %if.then20, %if.then15, %if.then10
  %retval.0 = phi i32 [ %retval.2.i.ph, %if.then10 ], [ %call.i.i1106, %if.then15 ], [ %call.i.i1113, %if.then20 ], [ %call.i.i1121, %if.then26 ], [ -5, %if.then35 ], [ %call.i.i1131, %if.then65 ], [ %call.i.i1141, %if.then71 ], [ %call.i.i1150, %if.then77 ], [ -5, %if.then89 ], [ %retval.0.i1158.ph, %if.then119 ], [ %call.i.i1162, %if.then150 ], [ %call.i.i1172, %if.then181 ], [ %call.i.i1181, %if.then186 ], [ %call.i.i1191, %if.then251 ], [ %call.i.i1200, %if.then256 ], [ %call.i.i1210, %if.then286 ], [ %call.i.i1219, %if.then291 ], [ %call.i.i1229, %if.then323 ], [ %call.i.i1239, %if.then354 ], [ %call.i.i1248, %if.then359 ], [ %call.i.i1258, %if.then390 ], [ %call.i.i1267, %if.then420 ], [ %call.i.i1276, %if.then450 ], [ %call.i.i1285, %if.then455 ], [ %call.i.i1295, %if.then485 ], [ %call.i.i1324, %if.then506 ], [ %call.i.i1333, %if.then511 ], [ %call.i.i1342, %if.then516 ], [ %call.i.i1352, %if.then524 ], [ %call.i.i1361, %if.then530 ], [ %call563, %if.then565 ], [ %call.i.i1371, %if.then570 ], [ %call.i.i1381, %if.then576 ], [ %call.i.i1390, %if.then581 ], [ %call.i.i1400, %if.then587 ], [ %call.i.i1409, %if.then592 ], [ %call.i.i1419, %if.then598 ], [ %call.i.i1428, %if.then628 ], [ %call.i.i1438, %if.then634 ], [ %call663, %if.then665 ], [ %call.i.i1447, %if.then670 ], [ %call.i.i1457, %if.then676 ], [ %call.i.i1466, %if.then706 ], [ %call.i.i1476, %if.then712 ], [ %call.i.i1305, %if.then493 ], [ %call.i.i1315, %if.then500 ], [ 0, %if.then757 ], [ 0, %do.body740.cleanup_crit_edge ], [ 0, %do.body745 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smsc75xx_manage_power(ptr nocapture noundef readonly %dev, i32 noundef %on) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %intf = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 4
  %needs_remote_wakeup = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 6
  %2 = trunc i32 %on to i8
  %3 = ptrtoint ptr %needs_remote_wakeup to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %needs_remote_wakeup, align 8
  %bf.value = shl i8 %2, 4
  %bf.shl = and i8 %bf.value, 16
  %bf.clear = and i8 %bf.load, -17
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %needs_remote_wakeup, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smsc75xx_status(ptr noundef %dev, ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %0 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.not = icmp eq i32 %1, 4
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %3, ptr noundef nonnull @.str.160, i32 noundef %1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %4 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %transfer_buffer, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %5, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #10
  %msg_enable = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 20
  %9 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_enable, align 4
  %and = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.do.end13_crit_edge, label %do.body3

if.end.do.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13

do.body3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc75xx_status.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc75xx_status, %if.then8)) #10
          to label %do.end13 [label %if.then8], !srcloc !426

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  %net9 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %11 = ptrtoint ptr %net9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net9, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc75xx_status.__UNIQUE_ID_ddebug364, ptr noundef %12, ptr noundef nonnull @.str.162, i32 noundef %8) #10
  br label %do.end13

do.end13:                                         ; preds = %if.then8, %do.body3, %if.end.do.end13_crit_edge
  %and14 = and i32 %8, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usbnet_defer_kevent(ptr noundef %dev, i32 noundef 4) #10
  br label %cleanup

if.else:                                          ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #12
  %net17 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %13 = ptrtoint ptr %net17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net17, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %14, ptr noundef nonnull @.str.163, i32 noundef %8) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then16, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc75xx_link_reset(ptr noundef %dev) #2 align 64 {
entry:
  %buf.i.i = alloca i32, align 4
  %ecmd = alloca %struct.ethtool_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mii1 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %ecmd) #10
  %0 = getelementptr inbounds i8, ptr %ecmd, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %2 = ptrtoint ptr %ecmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %ecmd, align 4
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %3 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net, align 4
  %5 = ptrtoint ptr %mii1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mii1, align 4
  tail call void @smsc75xx_mdio_write(ptr noundef %4, i32 noundef %6, i32 noundef 29, i32 noundef 65535)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #10
  %tobool.not.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !421

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !425
  unreachable

do.end9.i.i:                                      ; preds = %entry
  %7 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %buf.i.i, align 4
  %call.i.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 12, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %if.end, !prof !421

if.then:                                          ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %9, ptr noundef nonnull @.str.34, i32 noundef 12, i32 noundef %call.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #10
  %10 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %11, ptr noundef nonnull @.str.164) #13
  br label %cleanup

if.end:                                           ; preds = %do.end9.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #10
  %call3 = call i32 @mii_check_media(ptr noundef %mii1, i32 noundef 1, i32 noundef 1) #10
  call void @mii_ethtool_gset(ptr noundef %mii1, ptr noundef nonnull %ecmd) #10
  %12 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net, align 4
  %14 = ptrtoint ptr %mii1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mii1, align 4
  %call7 = call i32 @smsc75xx_mdio_read(ptr noundef %13, i32 noundef %15, i32 noundef 4)
  %conv = trunc i32 %call7 to i16
  %16 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net, align 4
  %18 = ptrtoint ptr %mii1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mii1, align 4
  %call10 = call i32 @smsc75xx_mdio_read(ptr noundef %17, i32 noundef %19, i32 noundef 5)
  %conv11 = trunc i32 %call10 to i16
  %msg_enable = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 20
  %20 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg_enable, align 4
  %and = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.do.end27_crit_edge, label %do.body13

if.end.do.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end27

do.body13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc75xx_link_reset.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc75xx_link_reset, %if.then18)) #10
          to label %do.end27 [label %if.then18], !srcloc !426

if.then18:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net, align 4
  %speed_hi.i = getelementptr inbounds %struct.ethtool_cmd, ptr %ecmd, i32 0, i32 12
  %24 = ptrtoint ptr %speed_hi.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %speed_hi.i, align 4
  %conv.i = zext i16 %25 to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %speed.i = getelementptr inbounds %struct.ethtool_cmd, ptr %ecmd, i32 0, i32 3
  %26 = ptrtoint ptr %speed.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %speed.i, align 4
  %conv1.i = zext i16 %27 to i32
  %or.i = or i32 %shl.i, %conv1.i
  %duplex = getelementptr inbounds %struct.ethtool_cmd, ptr %ecmd, i32 0, i32 4
  %28 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %duplex, align 2
  %conv21 = zext i8 %29 to i32
  %conv22 = and i32 %call7, 65535
  %conv23 = and i32 %call10, 65535
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc75xx_link_reset.__UNIQUE_ID_ddebug363, ptr noundef %23, ptr noundef nonnull @.str.166, i32 noundef %or.i, i32 noundef %conv21, i32 noundef %conv22, i32 noundef %conv23) #10
  br label %do.end27

do.end27:                                         ; preds = %if.then18, %do.body13, %if.end.do.end27_crit_edge
  %duplex28 = getelementptr inbounds %struct.ethtool_cmd, ptr %ecmd, i32 0, i32 4
  %30 = ptrtoint ptr %duplex28 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %duplex28, align 2
  %call29 = call fastcc i32 @smsc75xx_update_flowcontrol(ptr noundef nonnull %dev, i8 noundef zeroext %31, i16 noundef zeroext %conv, i16 noundef zeroext %conv11)
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %if.then
  %retval.0 = phi i32 [ %call.i.i, %if.then ], [ %call29, %do.end27 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %ecmd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc75xx_rx_fixup(ptr noundef %dev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

while.cond.preheader:                             ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %msg_enable = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 20
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3.not235 = icmp eq i32 %7, 0
  br i1 %cmp3.not235, label %while.cond.preheader.return_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.return_crit_edge:            ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %9, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #10
  %call5 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 4) #10
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %14, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #10
  %call8 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 6) #10
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %and = and i32 %12, 16383
  %sub = add nsw i32 %and, -2
  %sub10 = sub i32 0, %12
  %rem11 = and i32 %sub10, 3
  %and12 = and i32 %12, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool.not = icmp eq i32 %and12, 0
  br i1 %tobool.not, label %if.else52, label %do.body, !prof !428

do.body:                                          ; preds = %while.body
  %20 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg_enable, align 4
  %and16 = and i32 %21, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body.do.end33_crit_edge, label %do.body19

do.body.do.end33_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33

do.body19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc75xx_rx_fixup.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc75xx_rx_fixup, %if.then28)) #10
          to label %do.end33 [label %if.then28], !srcloc !426

if.then28:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc75xx_rx_fixup.__UNIQUE_ID_ddebug396, ptr noundef %23, ptr noundef nonnull @.str.175, i32 noundef %12) #10
  br label %do.end33

do.end33:                                         ; preds = %if.then28, %do.body19, %do.body.do.end33_crit_edge
  %24 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net, align 4
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 36, i32 4
  %26 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_errors, align 8
  %inc = add i32 %27, 1
  store i32 %inc, ptr %rx_errors, align 8
  %28 = load ptr, ptr %net, align 4
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 36, i32 6
  %29 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_dropped, align 8
  %inc37 = add i32 %30, 1
  store i32 %inc37, ptr %rx_dropped, align 8
  %and38 = and i32 %12, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.else, label %if.then40

if.then40:                                        ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %net, align 4
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 36, i32 12
  %33 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_crc_errors, align 8
  %inc43 = add i32 %34, 1
  store i32 %inc43, ptr %rx_crc_errors, align 8
  br label %if.end115

if.else:                                          ; preds = %do.end33
  %and44 = and i32 %12, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.else.if.end115_crit_edge, label %if.then46

if.else.if.end115_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115

if.then46:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %net, align 4
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 36, i32 13
  %37 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_frame_errors, align 4
  %inc49 = add i32 %38, 1
  store i32 %inc49, ptr %rx_frame_errors, align 4
  br label %if.end115

if.else52:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 9026, i32 %sub)
  %cmp53 = icmp ugt i32 %sub, 9026
  br i1 %cmp53, label %do.body62, label %if.end87, !prof !421

do.body62:                                        ; preds = %if.else52
  %39 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %msg_enable, align 4
  %and64 = and i32 %40, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %do.body62.return_crit_edge, label %do.body67

do.body62.return_crit_edge:                       ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.body67:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc75xx_rx_fixup.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc75xx_rx_fixup, %if.then79)) #10
          to label %return [label %if.then79], !srcloc !426

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc75xx_rx_fixup.__UNIQUE_ID_ddebug397, ptr noundef %42, ptr noundef nonnull @.str.176, i32 noundef %12) #10
  br label %return

if.end87:                                         ; preds = %if.else52
  %43 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %sub)
  %cmp89 = icmp eq i32 %44, %sub
  br i1 %cmp89, label %if.then91, label %if.end95

if.then91:                                        ; preds = %if.end87
  %45 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %net, align 4
  %features.i = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 23
  %47 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %features.i, align 16
  %and.i = and i64 %48, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp ne i64 %and.i, 0
  %and1.i = and i32 %12, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %or.cond.i = and i1 %tobool2.not.i, %tobool.not.i
  br i1 %or.cond.i, label %if.else.i, label %if.then.i, !prof !429

if.then.i:                                        ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #12
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %49 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  store i16 %bf.clear.i, ptr %ip_summed.i, align 8
  br label %smsc75xx_rx_csum_offload.exit

if.else.i:                                        ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #12
  %shr.i = lshr i32 %17, 16
  %50 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %shr.i, ptr %50, align 8
  %ip_summed6.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %52 = ptrtoint ptr %ip_summed6.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %bf.load7.i = load i16, ptr %ip_summed6.i, align 8
  %bf.clear8.i = and i16 %bf.load7.i, -1537
  %bf.set9.i = or i16 %bf.clear8.i, 1024
  store i16 %bf.set9.i, ptr %ip_summed6.i, align 8
  br label %smsc75xx_rx_csum_offload.exit

smsc75xx_rx_csum_offload.exit:                    ; preds = %if.else.i, %if.then.i
  %sub93 = add nsw i32 %and, -6
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub93) #10
  %add94 = add nuw nsw i32 %and, 198
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %53 = ptrtoint ptr %truesize to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add94, ptr %truesize, align 8
  br label %return

if.end95:                                         ; preds = %if.end87
  %call96 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #10
  %tobool97.not = icmp eq ptr %call96, null
  br i1 %tobool97.not, label %if.then106, label %if.end108, !prof !421

if.then106:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %55, ptr noundef nonnull @.str.177) #13
  br label %return

if.end108:                                        ; preds = %if.end95
  %len109 = getelementptr inbounds %struct.sk_buff, ptr %call96, i32 0, i32 6
  %56 = ptrtoint ptr %len109 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %sub, ptr %len109, align 4
  %data110 = getelementptr inbounds %struct.sk_buff, ptr %call96, i32 0, i32 19
  %57 = ptrtoint ptr %data110 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %19, ptr %data110, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 %sub
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call96, i32 0, i32 16
  %58 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %add.ptr.i, ptr %tail.i, align 8
  %59 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %net, align 4
  %features.i181 = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 23
  %61 = ptrtoint ptr %features.i181 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %features.i181, align 16
  %and.i182 = and i64 %62, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i182)
  %tobool.not.i183 = icmp ne i64 %and.i182, 0
  %and1.i184 = and i32 %12, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i184)
  %tobool2.not.i185 = icmp eq i32 %and1.i184, 0
  %or.cond.i186 = and i1 %tobool2.not.i185, %tobool.not.i183
  br i1 %or.cond.i186, label %if.else.i196, label %if.then.i190, !prof !429

if.then.i190:                                     ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  %ip_summed.i187 = getelementptr inbounds %struct.sk_buff, ptr %call96, i32 0, i32 15
  %63 = ptrtoint ptr %ip_summed.i187 to i32
  call void @__asan_load2_noabort(i32 %63)
  %bf.load.i188 = load i16, ptr %ip_summed.i187, align 8
  %bf.clear.i189 = and i16 %bf.load.i188, -1537
  store i16 %bf.clear.i189, ptr %ip_summed.i187, align 8
  br label %smsc75xx_rx_csum_offload.exit197

if.else.i196:                                     ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  %shr.i191 = lshr i32 %17, 16
  %64 = getelementptr inbounds %struct.sk_buff, ptr %call96, i32 0, i32 15, i32 0, i32 5
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %shr.i191, ptr %64, align 8
  %ip_summed6.i192 = getelementptr inbounds %struct.sk_buff, ptr %call96, i32 0, i32 15
  %66 = ptrtoint ptr %ip_summed6.i192 to i32
  call void @__asan_load2_noabort(i32 %66)
  %bf.load7.i193 = load i16, ptr %ip_summed6.i192, align 8
  %bf.clear8.i194 = and i16 %bf.load7.i193, -1537
  %bf.set9.i195 = or i16 %bf.clear8.i194, 1024
  store i16 %bf.set9.i195, ptr %ip_summed6.i192, align 8
  br label %smsc75xx_rx_csum_offload.exit197

smsc75xx_rx_csum_offload.exit197:                 ; preds = %if.else.i196, %if.then.i190
  %67 = ptrtoint ptr %len109 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %len109, align 4
  %sub112 = add i32 %68, -4
  tail call void @skb_trim(ptr noundef nonnull %call96, i32 noundef %sub112) #10
  %add113 = add nuw nsw i32 %and, 198
  %truesize114 = getelementptr inbounds %struct.sk_buff, ptr %call96, i32 0, i32 20
  %69 = ptrtoint ptr %truesize114 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %add113, ptr %truesize114, align 8
  tail call void @usbnet_skb_return(ptr noundef %dev, ptr noundef nonnull %call96) #10
  br label %if.end115

if.end115:                                        ; preds = %smsc75xx_rx_csum_offload.exit197, %if.then46, %if.else.if.end115_crit_edge, %if.then40
  %call116 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %sub) #10
  %70 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool118.not = icmp eq i32 %71, 0
  br i1 %tobool118.not, label %if.end115.while.cond.backedge_crit_edge, label %if.then119

if.end115.while.cond.backedge_crit_edge:          ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.then119:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #12
  %call120 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %rem11) #10
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then119, %if.end115.while.cond.backedge_crit_edge
  %72 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %len, align 4
  %cmp3.not = icmp eq i32 %73, 0
  br i1 %cmp3.not, label %while.cond.backedge.return_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.cond.backedge.return_crit_edge:             ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return:                                           ; preds = %while.cond.backedge.return_crit_edge, %if.then106, %smsc75xx_rx_csum_offload.exit, %if.then79, %do.body67, %do.body62.return_crit_edge, %while.cond.preheader.return_crit_edge, %entry.return_crit_edge
  %retval.2 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %if.then79 ], [ 0, %if.then106 ], [ 1, %smsc75xx_rx_csum_offload.exit ], [ 0, %do.body62.return_crit_edge ], [ 0, %do.body67 ], [ 1, %while.cond.preheader.return_crit_edge ], [ 1, %while.cond.backedge.return_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @smsc75xx_tx_fixup(ptr nocapture noundef readnone %dev, ptr noundef %skb, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %0 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %skb_header_cloned.exit.thread.i, label %skb_header_cloned.exit.i

skb_header_cloned.exit.i:                         ; preds = %entry
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %1 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %2, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #10
  %3 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %dataref1.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.ptr.sub.i.i.i)
  %cmp.i1.i = icmp ult i32 %sub.ptr.sub.i.i.i, 8
  br i1 %cmp.i1.i, label %skb_header_cloned.exit.i.if.end.thread.i.i_crit_edge, label %if.end.i2.i

skb_header_cloned.exit.i.if.end.thread.i.i_crit_edge: ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.thread.i.i

skb_header_cloned.exit.thread.i:                  ; preds = %entry
  %data.i.i5.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i5.i, align 4
  %head.i.i6.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %11 = ptrtoint ptr %head.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i6.i, align 8
  %sub.ptr.lhs.cast.i.i7.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i.i8.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i.i9.i = sub i32 %sub.ptr.lhs.cast.i.i7.i, %sub.ptr.rhs.cast.i.i8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.ptr.sub.i.i9.i)
  %cmp.i110.i = icmp ult i32 %sub.ptr.sub.i.i9.i, 8
  br i1 %cmp.i110.i, label %skb_header_cloned.exit.thread.i.if.end.thread.i.i_crit_edge, label %skb_header_cloned.exit.thread.i.if.end_crit_edge

skb_header_cloned.exit.thread.i.if.end_crit_edge: ; preds = %skb_header_cloned.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

skb_header_cloned.exit.thread.i.if.end.thread.i.i_crit_edge: ; preds = %skb_header_cloned.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.thread.i.i

if.end.thread.i.i:                                ; preds = %skb_header_cloned.exit.thread.i.if.end.thread.i.i_crit_edge, %skb_header_cloned.exit.i.if.end.thread.i.i_crit_edge
  %sub.ptr.sub.i.i12.i = phi i32 [ %sub.ptr.sub.i.i9.i, %skb_header_cloned.exit.thread.i.if.end.thread.i.i_crit_edge ], [ %sub.ptr.sub.i.i.i, %skb_header_cloned.exit.i.if.end.thread.i.i_crit_edge ]
  %phi.bo.i.i = sub nuw nsw i32 135, %sub.ptr.sub.i.i12.i
  %phi.bo11.i.i = and i32 %phi.bo.i.i, -128
  br label %skb_cow_head.exit

if.end.i2.i:                                      ; preds = %skb_header_cloned.exit.i
  %and.i.i = and i32 %4, 65535
  %shr.i.i = ashr i32 %4, 16
  %sub.i.i = sub nsw i32 %and.i.i, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 1
  br i1 %cmp.i.not.i, label %if.end.i2.i.if.end_crit_edge, label %if.end.i2.i.skb_cow_head.exit_crit_edge

if.end.i2.i.skb_cow_head.exit_crit_edge:          ; preds = %if.end.i2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_cow_head.exit

if.end.i2.i.if.end_crit_edge:                     ; preds = %if.end.i2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

skb_cow_head.exit:                                ; preds = %if.end.i2.i.skb_cow_head.exit_crit_edge, %if.end.thread.i.i
  %delta.010.i.i = phi i32 [ %phi.bo11.i.i, %if.end.thread.i.i ], [ 0, %if.end.i2.i.skb_cow_head.exit_crit_edge ]
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %delta.010.i.i, i32 noundef 0, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not, label %skb_cow_head.exit.if.end_crit_edge, label %if.then

skb_cow_head.exit.if.end_crit_edge:               ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #10
  br label %cleanup

if.end:                                           ; preds = %skb_cow_head.exit.if.end_crit_edge, %if.end.i2.i.if.end_crit_edge, %skb_header_cloned.exit.thread.i.if.end_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  %and = and i32 %14, 1048575
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %15 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load = load i16, ptr %ip_summed, align 8
  %16 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %16)
  %cmp = icmp eq i16 %16, 1536
  %spec.select.v = select i1 %cmp, i32 104857600, i32 4194304
  %spec.select = or i32 %spec.select.v, %and
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %17 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.i.not = icmp eq i16 %20, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %20)
  %cmp10 = icmp ugt i16 %20, 8
  %phi.cast = zext i16 %20 to i32
  %phi.bo = shl nuw i32 %phi.cast, 16
  %phi.bo34 = and i32 %phi.bo, 1073676288
  %cond = select i1 %cmp10, i32 %phi.bo34, i32 524288
  %or17 = or i32 %spec.select, 134217728
  %tx_cmd_a.1 = select i1 %tobool.i.not, i32 %spec.select, i32 %or17
  %tx_cmd_b.0 = select i1 %tobool.i.not, i32 0, i32 %cond
  %call19 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #10
  %21 = tail call i32 @llvm.bswap.i32(i32 %tx_cmd_a.1) #10
  %22 = ptrtoint ptr %call19 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %21, ptr %call19, align 1
  %add.ptr = getelementptr i8, ptr %call19, i32 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %tx_cmd_b.0) #10
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %23, ptr %add.ptr, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ %skb, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_endpoints(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smsc75xx_deferred_multicast_write(ptr nocapture noundef readonly %param) #2 align 64 {
entry:
  %buf.i.i = alloca i32, align 4
  %buf.i.i.i36.i = alloca i32, align 4
  %buf.i.i27.i = alloca i32, align 4
  %buf.i.i18.i = alloca i32, align 4
  %buf.i.i9.i = alloca i32, align 4
  %buf.i.i1.i = alloca i32, align 4
  %buf.i.i.i = alloca i32, align 4
  %buf.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %param, i32 -212
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %msg_enable = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body2

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc75xx_deferred_multicast_write.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc75xx_deferred_multicast_write, %if.then7)) #10
          to label %do.end10 [label %if.then7], !srcloc !426

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  %net = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net, align 4
  %rfe_ctl = getelementptr i8, ptr %param, i32 -208
  %6 = ptrtoint ptr %rfe_ctl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rfe_ctl, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc75xx_deferred_multicast_write.__UNIQUE_ID_ddebug356, ptr noundef %5, ptr noundef nonnull @.str.66, i32 noundef %7) #10
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body2, %entry.do.end10_crit_edge
  %multicast_hash_table = getelementptr i8, ptr %param, i32 -200
  %data.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 21
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data.i, align 4
  %10 = inttoptr i32 %9 to ptr
  %dataport_mutex.i = getelementptr inbounds %struct.smsc75xx_priv, ptr %10, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %dataport_mutex.i, i32 noundef 0) #10
  %tobool.not.i.i.i.i = icmp eq ptr %1, null
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.end10
  %i.015.i.i = phi i32 [ 0, %do.end10 ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i.i) #10
  %11 = ptrtoint ptr %buf.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %buf.i.i.i.i, align 4, !annotation !420
  br i1 %tobool.not.i.i.i.i, label %do.body4.i.i.i.i, label %do.end9.i.i.i.i, !prof !421

do.body4.i.i.i.i:                                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #10, !srcloc !422
  unreachable

do.end9.i.i.i.i:                                  ; preds = %for.body.i.i
  %call.i.i.i.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %1, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 36, ptr noundef nonnull %buf.i.i.i.i, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i, label %if.end.i.i, !prof !421

if.then.i.i:                                      ; preds = %do.end9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i.i.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %12 = ptrtoint ptr %net.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net.i.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %13, ptr noundef nonnull @.str.33, i32 noundef 36, i32 noundef %call.i.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i.i) #10
  br label %if.then.i

if.end.i.i:                                       ; preds = %do.end9.i.i.i.i
  %14 = ptrtoint ptr %buf.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buf.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i.i) #10
  %.mask.i.i = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i.i)
  %tobool.not.i.i = icmp eq i32 %.mask.i.i, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %do.end9.i.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 8589920) #10
  %inc.i.i = add nuw nsw i32 %i.015.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 100
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %net4.i.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  br label %if.then.i

if.then.i:                                        ; preds = %for.end.i.i, %if.then.i.i
  %net.i.i.sink.i.i = phi ptr [ %net.i.i.i.i, %if.then.i.i ], [ %net4.i.i, %for.end.i.i ]
  %.str.69.sink.i.i = phi ptr [ @.str.69, %if.then.i.i ], [ @.str.75, %for.end.i.i ]
  %17 = ptrtoint ptr %net.i.i.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net.i.i.sink.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %18, ptr noundef nonnull %.str.69.sink.i.i) #13
  %net.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  br label %done.sink.split.i

do.end9.i.i.i:                                    ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i) #10
  %19 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %buf.i.i.i, align 4, !annotation !420
  %call.i.i.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %1, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 36, ptr noundef nonnull %buf.i.i.i, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then3.i, label %do.end9.i.i6.i, !prof !421

if.then3.i:                                       ; preds = %do.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %20 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %21, ptr noundef nonnull @.str.33, i32 noundef 36, i32 noundef %call.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #10
  br label %done.sink.split.i

do.end9.i.i6.i:                                   ; preds = %do.end9.i.i.i
  %22 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buf.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #10
  %24 = and i32 %23, -251658241
  %25 = or i32 %24, 16777216
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i1.i) #10
  %26 = ptrtoint ptr %buf.i.i1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %buf.i.i1.i, align 4
  %call.i.i4.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %1, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 36, ptr noundef nonnull %buf.i.i1.i, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4.i)
  %cmp.i.i5.i = icmp slt i32 %call.i.i4.i, 0
  br i1 %cmp.i.i5.i, label %if.then8.i, label %smsc75xx_write_reg.exit.i, !prof !421

smsc75xx_write_reg.exit.i:                        ; preds = %do.end9.i.i6.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1.i) #10
  br label %do.end9.i.i14.i

if.then8.i:                                       ; preds = %do.end9.i.i6.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i7.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %27 = ptrtoint ptr %net.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net.i.i7.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %28, ptr noundef nonnull @.str.34, i32 noundef 36, i32 noundef %call.i.i4.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i1.i) #10
  br label %done.sink.split.i

do.end9.i.i14.i:                                  ; preds = %for.inc.i.do.end9.i.i14.i_crit_edge, %smsc75xx_write_reg.exit.i
  %i.078.i = phi i32 [ 0, %smsc75xx_write_reg.exit.i ], [ %inc.i, %for.inc.i.do.end9.i.i14.i_crit_edge ]
  %add.i = add nuw nsw i32 %i.078.i, 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i9.i) #10
  %29 = call i32 @llvm.bswap.i32(i32 %add.i) #10
  %30 = ptrtoint ptr %buf.i.i9.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %buf.i.i9.i, align 4
  %call.i.i12.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %1, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 44, ptr noundef nonnull %buf.i.i9.i, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i12.i)
  %cmp.i.i13.i = icmp slt i32 %call.i.i12.i, 0
  br i1 %cmp.i.i13.i, label %if.then14.i, label %do.end9.i.i23.i, !prof !421

if.then14.i:                                      ; preds = %do.end9.i.i14.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i15.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %31 = ptrtoint ptr %net.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %net.i.i15.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %32, ptr noundef nonnull @.str.34, i32 noundef 44, i32 noundef %call.i.i12.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i9.i) #10
  br label %done.sink.split.i

do.end9.i.i23.i:                                  ; preds = %do.end9.i.i14.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i9.i) #10
  %arrayidx17.i = getelementptr i32, ptr %multicast_hash_table, i32 %i.078.i
  %33 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx17.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i18.i) #10
  %35 = call i32 @llvm.bswap.i32(i32 %34) #10
  %36 = ptrtoint ptr %buf.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %buf.i.i18.i, align 4
  %call.i.i21.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %1, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 48, ptr noundef nonnull %buf.i.i18.i, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i21.i)
  %cmp.i.i22.i = icmp slt i32 %call.i.i21.i, 0
  br i1 %cmp.i.i22.i, label %if.then20.i, label %do.end9.i.i32.i, !prof !421

if.then20.i:                                      ; preds = %do.end9.i.i23.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i24.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %37 = ptrtoint ptr %net.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %net.i.i24.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %38, ptr noundef nonnull @.str.34, i32 noundef 48, i32 noundef %call.i.i21.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i18.i) #10
  br label %done.sink.split.i

do.end9.i.i32.i:                                  ; preds = %do.end9.i.i23.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i18.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i27.i) #10
  %39 = ptrtoint ptr %buf.i.i27.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 16777216, ptr %buf.i.i27.i, align 4
  %call.i.i30.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %1, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 40, ptr noundef nonnull %buf.i.i27.i, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i30.i)
  %cmp.i.i31.i = icmp slt i32 %call.i.i30.i, 0
  br i1 %cmp.i.i31.i, label %if.then25.i, label %if.end27.i, !prof !421

if.then25.i:                                      ; preds = %do.end9.i.i32.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i33.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %40 = ptrtoint ptr %net.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %net.i.i33.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %41, ptr noundef nonnull @.str.34, i32 noundef 40, i32 noundef %call.i.i30.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i27.i) #10
  br label %done.sink.split.i

if.end27.i:                                       ; preds = %do.end9.i.i32.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i27.i) #10
  br label %do.end9.i.i.i43.i

do.end9.i.i.i43.i:                                ; preds = %for.inc.i51.i.do.end9.i.i.i43.i_crit_edge, %if.end27.i
  %i.015.i38.i = phi i32 [ 0, %if.end27.i ], [ %inc.i49.i, %for.inc.i51.i.do.end9.i.i.i43.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i36.i) #10
  %42 = ptrtoint ptr %buf.i.i.i36.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %buf.i.i.i36.i, align 4, !annotation !420
  %call.i.i.i41.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %1, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 36, ptr noundef nonnull %buf.i.i.i36.i, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i41.i)
  %cmp.i.i.i42.i = icmp slt i32 %call.i.i.i41.i, 0
  br i1 %cmp.i.i.i42.i, label %if.then.i45.i, label %if.end.i48.i, !prof !421

if.then.i45.i:                                    ; preds = %do.end9.i.i.i43.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i.i44.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %43 = ptrtoint ptr %net.i.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %net.i.i.i44.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %44, ptr noundef nonnull @.str.33, i32 noundef 36, i32 noundef %call.i.i.i41.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i36.i) #10
  br label %if.then30.i

if.end.i48.i:                                     ; preds = %do.end9.i.i.i43.i
  %45 = ptrtoint ptr %buf.i.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %buf.i.i.i36.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i36.i) #10
  %.mask.i46.i = and i32 %46, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i46.i)
  %tobool.not.i47.i = icmp eq i32 %.mask.i46.i, 0
  br i1 %tobool.not.i47.i, label %for.inc.i51.i, label %for.inc.i

for.inc.i51.i:                                    ; preds = %if.end.i48.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %47(i32 noundef 8589920) #10
  %inc.i49.i = add nuw nsw i32 %i.015.i38.i, 1
  %exitcond.not.i50.i = icmp eq i32 %inc.i49.i, 100
  br i1 %exitcond.not.i50.i, label %for.end.i53.i, label %for.inc.i51.i.do.end9.i.i.i43.i_crit_edge

for.inc.i51.i.do.end9.i.i.i43.i_crit_edge:        ; preds = %for.inc.i51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i.i43.i

for.end.i53.i:                                    ; preds = %for.inc.i51.i
  call void @__sanitizer_cov_trace_pc() #12
  %net4.i52.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  br label %if.then30.i

if.then30.i:                                      ; preds = %for.end.i53.i, %if.then.i45.i
  %net.i.i.sink.i54.i = phi ptr [ %net.i.i.i44.i, %if.then.i45.i ], [ %net4.i52.i, %for.end.i53.i ]
  %.str.69.sink.i55.i = phi ptr [ @.str.69, %if.then.i45.i ], [ @.str.75, %for.end.i53.i ]
  %48 = ptrtoint ptr %net.i.i.sink.i54.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %net.i.i.sink.i54.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %49, ptr noundef nonnull %.str.69.sink.i55.i) #13
  %net31.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  br label %done.sink.split.i

for.inc.i:                                        ; preds = %if.end.i48.i
  %inc.i = add nuw nsw i32 %i.078.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.inc.i.do.end9.i.i_crit_edge, label %for.inc.i.do.end9.i.i14.i_crit_edge

for.inc.i.do.end9.i.i14.i_crit_edge:              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i14.i

for.inc.i.do.end9.i.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i

done.sink.split.i:                                ; preds = %if.then30.i, %if.then25.i, %if.then20.i, %if.then14.i, %if.then8.i, %if.then3.i, %if.then.i
  %net31.sink.i = phi ptr [ %net31.i, %if.then30.i ], [ %net.i.i33.i, %if.then25.i ], [ %net.i.i24.i, %if.then20.i ], [ %net.i.i15.i, %if.then14.i ], [ %net.i.i7.i, %if.then8.i ], [ %net.i.i.i, %if.then3.i ], [ %net.i, %if.then.i ]
  %.str.74.sink.i = phi ptr [ @.str.74, %if.then30.i ], [ @.str.73, %if.then25.i ], [ @.str.72, %if.then20.i ], [ @.str.71, %if.then14.i ], [ @.str.70, %if.then8.i ], [ @.str.69, %if.then3.i ], [ @.str.68, %if.then.i ]
  %50 = ptrtoint ptr %net31.sink.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %net31.sink.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %51, ptr noundef nonnull %.str.74.sink.i) #13
  br label %do.end9.i.i

do.end9.i.i:                                      ; preds = %done.sink.split.i, %for.inc.i.do.end9.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %dataport_mutex.i) #10
  %rfe_ctl12 = getelementptr i8, ptr %param, i32 -208
  %52 = ptrtoint ptr %rfe_ctl12 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rfe_ctl12, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #10
  %54 = call i32 @llvm.bswap.i32(i32 %53) #10
  %55 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %buf.i.i, align 4
  %call.i.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %1, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 96, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then14, label %smsc75xx_write_reg.exit, !prof !421

smsc75xx_write_reg.exit:                          ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #10
  br label %if.end16

if.then14:                                        ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %56 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %57, ptr noundef nonnull @.str.34, i32 noundef 96, i32 noundef %call.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #10
  %58 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %59, ptr noundef nonnull @.str.67) #13
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %smsc75xx_write_reg.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smsc75xx_init_mac_address(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #10
  %0 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 15
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %3 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net, align 4
  %call = tail call i32 @platform_get_ethdev_address(ptr noundef %dev1, ptr noundef %4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end18_crit_edge

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc75xx_init_mac_address.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc75xx_init_mac_address, %if.then12)) #10
          to label %cleanup [label %if.then12], !srcloc !426

if.then12:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc75xx_init_mac_address.__UNIQUE_ID_ddebug365, ptr noundef %17, ptr noundef nonnull @.str.77) #10
  br label %cleanup

if.end18:                                         ; preds = %is_valid_ether_addr.exit.if.end18_crit_edge, %if.then.if.end18_crit_edge, %entry.if.end18_crit_edge
  %call19 = call fastcc i32 @smsc75xx_read_eeprom(ptr noundef %dev, i32 noundef 1, i32 noundef 6, ptr noundef nonnull %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp eq i32 %call19, 0
  br i1 %cmp, label %if.then20, label %if.end18.if.end53_crit_edge

if.end18.if.end53_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then20:                                        ; preds = %if.end18
  %18 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net, align 4
  call void @dev_addr_mod(ptr noundef %19, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #10
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body32:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc75xx_init_mac_address.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc75xx_init_mac_address, %if.then44)) #10
          to label %cleanup [label %if.then44], !srcloc !426

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc75xx_init_mac_address.__UNIQUE_ID_ddebug366, ptr noundef %32, ptr noundef nonnull @.str.78) #10
  br label %cleanup

if.end53:                                         ; preds = %is_valid_ether_addr.exit104.if.end53_crit_edge, %if.then20.if.end53_crit_edge, %if.end18.if.end53_crit_edge
  %33 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %net, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #10
  %35 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #10
  %36 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %addr.i, align 1
  %38 = and i8 %37, -4
  %39 = or i8 %38, 2
  store i8 %39, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef %34, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #10
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 55
  %40 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #10
  %msg_enable56 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 20
  %41 = ptrtoint ptr %msg_enable56 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %msg_enable56, align 4
  %and57 = and i32 %42, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end53.cleanup_crit_edge, label %do.body60

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body60:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc75xx_init_mac_address.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc75xx_init_mac_address, %if.then72)) #10
          to label %cleanup [label %if.then72], !srcloc !426

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc75xx_init_mac_address.__UNIQUE_ID_ddebug367, ptr noundef %44, ptr noundef nonnull @.str.79) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then72, %do.body60, %if.end53.cleanup_crit_edge, %if.then44, %do.body32, %do.body27.cleanup_crit_edge, %if.then12, %do.body7, %do.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc75xx_read_eeprom(ptr noundef %dev, i32 noundef %offset, i32 noundef %length, ptr noundef writeonly %data) unnamed_addr #2 align 64 {
entry:
  %buf.i.i67 = alloca i32, align 4
  %buf.i.i = alloca i32, align 4
  %buf.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !421

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 349, 0\0A.popsection", ""() #10, !srcloc !430
  unreachable

do.body10:                                        ; preds = %entry
  %tobool11.not = icmp eq ptr %data, null
  br i1 %tobool11.not, label %do.body21, label %do.end29, !prof !421

do.body21:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 350, 0\0A.popsection", ""() #10, !srcloc !431
  unreachable

do.end29:                                         ; preds = %do.body10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %0, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i) #10
  %1 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %buf.i.i.i, align 4
  %call.i.i.i81 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 64, ptr noundef nonnull %buf.i.i.i, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i81)
  %cmp.i.i.i82 = icmp slt i32 %call.i.i.i81, 0
  br i1 %cmp.i.i.i82, label %do.end29.if.then.i_crit_edge, label %do.end29.if.end.i_crit_edge, !prof !421

do.end29.if.end.i_crit_edge:                      ; preds = %do.end29
  br label %if.end.i

do.end29.if.then.i_crit_edge:                     ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

do.end9.i.i.critedge.i:                           ; preds = %if.end2.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i) #10
  %2 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %buf.i.i.i, align 4
  %call.i.i.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 64, ptr noundef nonnull %buf.i.i.i, i16 noundef zeroext 4) #10, !callees !423
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end9.i.i.critedge.i.if.then.i_crit_edge, label %do.end9.i.i.critedge.i.if.end.i_crit_edge, !prof !421

do.end9.i.i.critedge.i.if.end.i_crit_edge:        ; preds = %do.end9.i.i.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end9.i.i.critedge.i.if.then.i_crit_edge:       ; preds = %do.end9.i.i.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %do.end9.i.i.critedge.i.if.then.i_crit_edge, %do.end29.if.then.i_crit_edge
  %call.i.i.i.lcssa = phi i32 [ %call.i.i.i81, %do.end29.if.then.i_crit_edge ], [ %call.i.i.i, %do.end9.i.i.critedge.i.if.then.i_crit_edge ]
  %net.i.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %3 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %4, ptr noundef nonnull @.str.33, i32 noundef 64, i32 noundef %call.i.i.i.lcssa) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #10
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %do.end9.i.i.critedge.i.if.end.i_crit_edge, %do.end29.if.end.i_crit_edge
  %5 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %buf.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #10
  %.mask.i = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool.not.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool.not.i, label %for.cond.preheader, label %if.end2.i

for.cond.preheader:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp83.not = icmp eq i32 %length, 0
  br i1 %cmp83.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.do.end9.i.i_crit_edge

for.cond.preheader.do.end9.i.i_crit_edge:         ; preds = %for.cond.preheader
  br label %do.end9.i.i

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %7(i32 noundef 8589920) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp3.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp3.i, label %do.end9.i.i.critedge.i, label %do.end.i

do.end.i:                                         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  %net4.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  br label %cleanup.sink.split

do.end9.i.i:                                      ; preds = %if.end45.do.end9.i.i_crit_edge, %for.cond.preheader.do.end9.i.i_crit_edge
  %i.085 = phi i32 [ %inc47, %if.end45.do.end9.i.i_crit_edge ], [ 0, %for.cond.preheader.do.end9.i.i_crit_edge ]
  %offset.addr.084 = phi i32 [ %inc, %if.end45.do.end9.i.i_crit_edge ], [ %offset, %for.cond.preheader.do.end9.i.i_crit_edge ]
  %and = and i32 %offset.addr.084, 511
  %or = or i32 %and, -2147483648
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #10
  %9 = call i32 @llvm.bswap.i32(i32 %or) #10
  %10 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %buf.i.i, align 4
  %call.i.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 64, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then35, label %if.end36, !prof !421

if.then35:                                        ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %11 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %12, ptr noundef nonnull @.str.34, i32 noundef 64, i32 noundef %call.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #10
  br label %cleanup.sink.split

if.end36:                                         ; preds = %do.end9.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #10
  %call37 = call fastcc i32 @smsc75xx_wait_eeprom(ptr noundef nonnull %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end36.cleanup_crit_edge, label %do.end9.i.i72

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end9.i.i72:                                    ; preds = %if.end36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i67) #10
  %13 = ptrtoint ptr %buf.i.i67 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %buf.i.i67, align 4, !annotation !420
  %call.i.i70 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 68, ptr noundef nonnull %buf.i.i67, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i70)
  %cmp.i.i71 = icmp slt i32 %call.i.i70, 0
  br i1 %cmp.i.i71, label %if.then43, label %if.end45, !prof !421

if.then43:                                        ; preds = %do.end9.i.i72
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i73 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %14 = ptrtoint ptr %net.i.i73 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net.i.i73, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %15, ptr noundef nonnull @.str.33, i32 noundef 68, i32 noundef %call.i.i70) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i67) #10
  br label %cleanup.sink.split

if.end45:                                         ; preds = %do.end9.i.i72
  %16 = ptrtoint ptr %buf.i.i67 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buf.i.i67, align 4
  %18 = lshr i32 %17, 24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i67) #10
  %conv = trunc i32 %18 to i8
  %arrayidx = getelementptr i8, ptr %data, i32 %i.085
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %arrayidx, align 1
  %inc = add i32 %offset.addr.084, 1
  %inc47 = add nuw i32 %i.085, 1
  %exitcond.not = icmp eq i32 %inc47, %length
  br i1 %exitcond.not, label %if.end45.cleanup_crit_edge, label %if.end45.do.end9.i.i_crit_edge

if.end45.do.end9.i.i_crit_edge:                   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then43, %if.then35, %do.end.i, %if.then.i
  %net4.sink.i.sink = phi ptr [ %net.i.i73, %if.then43 ], [ %net.i.i, %if.then35 ], [ %net4.i, %do.end.i ], [ %net.i.i.i, %if.then.i ]
  %.str.83.sink.i.sink = phi ptr [ @.str.81, %if.then43 ], [ @.str.80, %if.then35 ], [ @.str.83, %do.end.i ], [ @.str.82, %if.then.i ]
  %retval.0.ph = phi i32 [ %call.i.i70, %if.then43 ], [ %call.i.i, %if.then35 ], [ -5, %do.end.i ], [ %call.i.i.i.lcssa, %if.then.i ]
  %20 = ptrtoint ptr %net4.sink.i.sink to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net4.sink.i.sink, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %21, ptr noundef nonnull %.str.83.sink.i.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end45.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ %call37, %if.end36.cleanup_crit_edge ], [ 0, %if.end45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc75xx_wait_eeprom(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %buf.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %tobool.not.i.i = icmp eq ptr %dev, null
  %add = add i32 %0, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #10
  %1 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %buf.i.i, align 4, !annotation !420
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i.preheader, !prof !421

do.end9.i.i.preheader:                            ; preds = %entry
  %call.i.i28 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 64, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i28)
  %cmp.i.i29 = icmp slt i32 %call.i.i28, 0
  br i1 %cmp.i.i29, label %do.end9.i.i.preheader.if.then_crit_edge, label %do.end9.i.i.preheader.if.end_crit_edge, !prof !421

do.end9.i.i.preheader.if.end_crit_edge:           ; preds = %do.end9.i.i.preheader
  br label %if.end

do.end9.i.i.preheader.if.then_crit_edge:          ; preds = %do.end9.i.i.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #10, !srcloc !422
  unreachable

do.end9.i.i.critedge:                             ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #10
  %2 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %buf.i.i, align 4, !annotation !420
  %call.i.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 64, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #10, !callees !423
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end9.i.i.critedge.if.then_crit_edge, label %do.end9.i.i.critedge.if.end_crit_edge, !prof !421

do.end9.i.i.critedge.if.end_crit_edge:            ; preds = %do.end9.i.i.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end9.i.i.critedge.if.then_crit_edge:           ; preds = %do.end9.i.i.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %do.end9.i.i.critedge.if.then_crit_edge, %do.end9.i.i.preheader.if.then_crit_edge
  %call.i.i.lcssa = phi i32 [ %call.i.i28, %do.end9.i.i.preheader.if.then_crit_edge ], [ %call.i.i, %do.end9.i.i.critedge.if.then_crit_edge ]
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %3 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %4, ptr noundef nonnull @.str.33, i32 noundef 64, i32 noundef %call.i.i.lcssa) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #10
  br label %cleanup.sink.split

if.end:                                           ; preds = %do.end9.i.i.critedge.if.end_crit_edge, %do.end9.i.i.preheader.if.end_crit_edge
  %5 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %buf.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #10
  %7 = and i32 %6, 262272
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.end.if.then8_crit_edge [
    i32 128, label %if.end4
    i32 0, label %if.end.cleanup_crit_edge
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 8589920) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp5 = icmp sgt i32 %sub, -1
  br i1 %cmp5, label %do.end9.i.i.critedge, label %if.end4.if.then8_crit_edge

if.end4.if.then8_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.then8:                                         ; preds = %if.end4.if.then8_crit_edge, %if.end.if.then8_crit_edge
  %net9 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then8, %if.then
  %net9.sink = phi ptr [ %net9, %if.then8 ], [ %net.i.i, %if.then ]
  %.str.84.sink = phi ptr [ @.str.84, %if.then8 ], [ @.str.82, %if.then ]
  %retval.0.ph = phi i32 [ -5, %if.then8 ], [ %call.i.i.lcssa, %if.then ]
  %11 = ptrtoint ptr %net9.sink to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net9.sink, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %12, ptr noundef nonnull %.str.84.sink) #13
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
declare dso_local i32 @usbnet_open(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_stop(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_start_xmit(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smsc75xx_set_multicast(ptr noundef readonly %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr i8, ptr %netdev, i32 2556
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %2 = inttoptr i32 %1 to ptr
  %rfe_ctl_lock = getelementptr inbounds %struct.smsc75xx_priv, ptr %2, i32 0, i32 5
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rfe_ctl_lock) #10
  %rfe_ctl = getelementptr inbounds %struct.smsc75xx_priv, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %rfe_ctl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rfe_ctl, align 4
  %and = and i32 %4, -1803
  %or = or i32 %and, 1024
  store i32 %or, ptr %rfe_ctl, align 4
  %uglygep = getelementptr i8, ptr %2, i32 12
  %5 = call ptr @memset(ptr %uglygep, i32 0, i32 64)
  %net = getelementptr i8, ptr %netdev, i32 2548
  %6 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net, align 4
  %flags10 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags10, align 8
  %and11 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool.not = icmp eq i32 %and11, 0
  br i1 %tobool.not, label %if.else, label %do.body12

do.body12:                                        ; preds = %entry
  %msg_enable = getelementptr i8, ptr %netdev, i32 2552
  %10 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_enable, align 4
  %and13 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body12.if.end147.sink.split_crit_edge, label %do.body16

do.body12.if.end147.sink.split_crit_edge:         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end147.sink.split

do.body16:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc75xx_set_multicast.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc75xx_set_multicast, %if.then22)) #10
          to label %if.end147.sink.split [label %if.then22], !srcloc !426

if.then22:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc75xx_set_multicast.__UNIQUE_ID_ddebug357, ptr noundef %13, ptr noundef nonnull @.str.86) #10
  br label %if.end147.sink.split

if.else:                                          ; preds = %entry
  %and33 = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.else63, label %do.body36

do.body36:                                        ; preds = %if.else
  %msg_enable37 = getelementptr i8, ptr %netdev, i32 2552
  %14 = ptrtoint ptr %msg_enable37 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_enable37, align 4
  %and38 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.body36.if.end147.sink.split_crit_edge, label %do.body41

do.body36.if.end147.sink.split_crit_edge:         ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end147.sink.split

do.body41:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc75xx_set_multicast.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc75xx_set_multicast, %if.then53)) #10
          to label %if.end147.sink.split [label %if.then53], !srcloc !426

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc75xx_set_multicast.__UNIQUE_ID_ddebug358, ptr noundef %17, ptr noundef nonnull @.str.87) #10
  br label %if.end147.sink.split

if.else63:                                        ; preds = %if.else
  %count = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 66, i32 1
  %18 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp65 = icmp eq i32 %19, 0
  %msg_enable119 = getelementptr i8, ptr %netdev, i32 2552
  %20 = ptrtoint ptr %msg_enable119 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg_enable119, align 4
  %and120 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %cmp65, label %do.body118, label %if.then67

if.then67:                                        ; preds = %if.else63
  br i1 %tobool121.not, label %if.then67.do.end92_crit_edge, label %do.body73

if.then67.do.end92_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end92

do.body73:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc75xx_set_multicast.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc75xx_set_multicast, %if.then85)) #10
          to label %do.end92 [label %if.then85], !srcloc !426

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc75xx_set_multicast.__UNIQUE_ID_ddebug359, ptr noundef %23, ptr noundef nonnull @.str.88) #10
  br label %do.end92

do.end92:                                         ; preds = %if.then85, %do.body73, %if.then67.do.end92_crit_edge
  %24 = ptrtoint ptr %rfe_ctl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rfe_ctl, align 4
  %or94 = or i32 %25, 10
  store i32 %or94, ptr %rfe_ctl, align 4
  %mc95 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66
  %26 = ptrtoint ptr %mc95 to i32
  call void @__asan_load4_noabort(i32 %26)
  %ha.0193 = load ptr, ptr %mc95, align 4
  %cmp101.not194 = icmp eq ptr %ha.0193, %mc95
  br i1 %cmp101.not194, label %do.end92.if.end147_crit_edge, label %do.end92.smsc75xx_hash.exit_crit_edge

do.end92.smsc75xx_hash.exit_crit_edge:            ; preds = %do.end92
  br label %smsc75xx_hash.exit

do.end92.if.end147_crit_edge:                     ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end147

smsc75xx_hash.exit:                               ; preds = %smsc75xx_hash.exit.smsc75xx_hash.exit_crit_edge, %do.end92.smsc75xx_hash.exit_crit_edge
  %ha.0195 = phi ptr [ %ha.0, %smsc75xx_hash.exit.smsc75xx_hash.exit_crit_edge ], [ %ha.0193, %do.end92.smsc75xx_hash.exit_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0195, i32 0, i32 2
  %call.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #15
  %27 = lshr i32 %call.i, 8
  %conv4.i.i.i = and i32 %27, 255
  %arrayidx.i10.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i.i
  %28 = ptrtoint ptr %arrayidx.i10.i.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i10.i.i.i, align 1
  %conv6.i.i.i = zext i8 %29 to i32
  %30 = shl nuw nsw i32 %conv6.i.i.i, 16
  %31 = and i32 %call.i, 255
  %arrayidx.i.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %conv2.i.i.i = zext i8 %33 to i32
  %34 = shl nuw i32 %conv2.i.i.i, 24
  %or.i13.i.i = or i32 %30, %34
  %shr22.i = lshr i32 %or.i13.i.i, 23
  %rem = and i32 %shr22.i, 31
  %shl = shl nuw i32 1, %rem
  %div178 = lshr i32 %conv2.i.i.i, 4
  %arrayidx108 = getelementptr %struct.smsc75xx_priv, ptr %2, i32 0, i32 3, i32 %div178
  %35 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx108, align 4
  %or109 = or i32 %shl, %36
  store i32 %or109, ptr %arrayidx108, align 4
  %37 = ptrtoint ptr %ha.0195 to i32
  call void @__asan_load4_noabort(i32 %37)
  %ha.0 = load ptr, ptr %ha.0195, align 4
  %cmp101.not = icmp eq ptr %ha.0, %mc95
  br i1 %cmp101.not, label %smsc75xx_hash.exit.if.end147_crit_edge, label %smsc75xx_hash.exit.smsc75xx_hash.exit_crit_edge

smsc75xx_hash.exit.smsc75xx_hash.exit_crit_edge:  ; preds = %smsc75xx_hash.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %smsc75xx_hash.exit

smsc75xx_hash.exit.if.end147_crit_edge:           ; preds = %smsc75xx_hash.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end147

do.body118:                                       ; preds = %if.else63
  br i1 %tobool121.not, label %do.body118.if.end147.sink.split_crit_edge, label %do.body123

do.body118.if.end147.sink.split_crit_edge:        ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end147.sink.split

do.body123:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc75xx_set_multicast.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc75xx_set_multicast, %if.then135)) #10
          to label %if.end147.sink.split [label %if.then135], !srcloc !426

if.then135:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc75xx_set_multicast.__UNIQUE_ID_ddebug360, ptr noundef %39, ptr noundef nonnull @.str.89) #10
  br label %if.end147.sink.split

if.end147.sink.split:                             ; preds = %if.then135, %do.body123, %do.body118.if.end147.sink.split_crit_edge, %if.then53, %do.body41, %do.body36.if.end147.sink.split_crit_edge, %if.then22, %do.body16, %do.body12.if.end147.sink.split_crit_edge
  %.sink196 = phi i32 [ 768, %do.body16 ], [ 768, %if.then22 ], [ 768, %do.body12.if.end147.sink.split_crit_edge ], [ 514, %do.body41 ], [ 514, %if.then53 ], [ 514, %do.body36.if.end147.sink.split_crit_edge ], [ 2, %do.body123 ], [ 2, %if.then135 ], [ 2, %do.body118.if.end147.sink.split_crit_edge ]
  %40 = ptrtoint ptr %rfe_ctl to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rfe_ctl, align 4
  %or62 = or i32 %41, %.sink196
  store i32 %or62, ptr %rfe_ctl, align 4
  br label %if.end147

if.end147:                                        ; preds = %if.end147.sink.split, %smsc75xx_hash.exit.if.end147_crit_edge, %do.end92.if.end147_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rfe_ctl_lock, i32 noundef %call3) #10
  %set_multicast = getelementptr inbounds %struct.smsc75xx_priv, ptr %2, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %42 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %42, ptr noundef %set_multicast) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc75xx_ioctl(ptr noundef %netdev, ptr noundef %rq, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mii = getelementptr i8, ptr %netdev, i32 2588
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1
  %call3 = tail call i32 @generic_mii_ioctl(ptr noundef %mii, ptr noundef %ifr_ifru.i, i32 noundef %cmd, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc75xx_change_mtu(ptr noundef %netdev, i32 noundef %new_mtu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %add = add i32 %new_mtu, 14
  %call1 = tail call fastcc i32 @smsc75xx_set_rx_max_frame_length(ptr noundef %add.ptr.i, i32 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %net = getelementptr i8, ptr %netdev, i32 2548
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %1, ptr noundef nonnull @.str.90) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @usbnet_change_mtu(ptr noundef %netdev, i32 noundef %new_mtu) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_tx_timeout(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_get_tstats64(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc75xx_set_features(ptr noundef %netdev, i64 noundef %features) #2 align 64 {
entry:
  %buf.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %data = getelementptr i8, ptr %netdev, i32 2556
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %2 = inttoptr i32 %1 to ptr
  %rfe_ctl_lock = getelementptr inbounds %struct.smsc75xx_priv, ptr %2, i32 0, i32 5
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rfe_ctl_lock) #10
  %and = and i64 %features, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %rfe_ctl6 = getelementptr inbounds %struct.smsc75xx_priv, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %rfe_ctl6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rfe_ctl6, align 4
  %and7 = and i32 %4, -6145
  %masksel = select i1 %tobool.not, i32 0, i32 6144
  %and7.sink = or i32 %and7, %masksel
  store i32 %and7.sink, ptr %rfe_ctl6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rfe_ctl_lock, i32 noundef %call3) #10
  %rfe_ctl9 = getelementptr inbounds %struct.smsc75xx_priv, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %rfe_ctl9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rfe_ctl9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #10
  %tobool.not.i.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !421

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !425
  unreachable

do.end9.i.i:                                      ; preds = %entry
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  %8 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %buf.i.i, align 4
  %call.i.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 96, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then13, label %smsc75xx_write_reg.exit, !prof !421

smsc75xx_write_reg.exit:                          ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #10
  br label %cleanup

if.then13:                                        ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i = getelementptr i8, ptr %netdev, i32 2548
  %9 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %10, ptr noundef nonnull @.str.34, i32 noundef 96, i32 noundef %call.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #10
  %11 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %12, ptr noundef nonnull @.str.91) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %smsc75xx_write_reg.exit
  %retval.0 = phi i32 [ %call.i.i, %if.then13 ], [ 0, %smsc75xx_write_reg.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_mii_ioctl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc75xx_set_rx_max_frame_length(ptr noundef %dev, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  %buf.i.i64 = alloca i32, align 4
  %buf.i.i55 = alloca i32, align 4
  %buf.i.i47 = alloca i32, align 4
  %buf.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #10
  %0 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %buf.i.i, align 4, !annotation !420
  %tobool.not.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !421

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #10, !srcloc !422
  unreachable

do.end9.i.i:                                      ; preds = %entry
  %call.i.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 260, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %if.end, !prof !421

if.then:                                          ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %1 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %2, ptr noundef nonnull @.str.33, i32 noundef 260, i32 noundef %call.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #10
  %3 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %4, ptr noundef nonnull @.str.21, i32 noundef %call.i.i) #13
  br label %cleanup

if.end:                                           ; preds = %do.end9.i.i
  %5 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %buf.i.i, align 4
  %7 = call i32 @llvm.bswap.i32(i32 %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #10
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp1.not = icmp eq i32 %and, 0
  br i1 %cmp1.not, label %if.end.do.end9.i.i60_crit_edge, label %do.end9.i.i52

if.end.do.end9.i.i60_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i60

do.end9.i.i52:                                    ; preds = %if.end
  %and3 = and i32 %7, -2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i47) #10
  %8 = call i32 @llvm.bswap.i32(i32 %and3) #10
  %9 = ptrtoint ptr %buf.i.i47 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %buf.i.i47, align 4
  %call.i.i50 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 260, ptr noundef nonnull %buf.i.i47, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i50)
  %cmp.i.i51 = icmp slt i32 %call.i.i50, 0
  br i1 %cmp.i.i51, label %if.then6, label %smsc75xx_write_reg.exit, !prof !421

smsc75xx_write_reg.exit:                          ; preds = %do.end9.i.i52
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i47) #10
  br label %do.end9.i.i60

if.then6:                                         ; preds = %do.end9.i.i52
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i53 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %10 = ptrtoint ptr %net.i.i53 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net.i.i53, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %11, ptr noundef nonnull @.str.34, i32 noundef 260, i32 noundef %call.i.i50) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i47) #10
  %12 = ptrtoint ptr %net.i.i53 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net.i.i53, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %13, ptr noundef nonnull @.str.22, i32 noundef %call.i.i50) #13
  br label %cleanup

do.end9.i.i60:                                    ; preds = %smsc75xx_write_reg.exit, %if.end.do.end9.i.i60_crit_edge
  %buf.1 = phi i32 [ %7, %if.end.do.end9.i.i60_crit_edge ], [ %and3, %smsc75xx_write_reg.exit ]
  %and10 = and i32 %buf.1, -1073676289
  %add = shl i32 %size, 16
  %shl = add i32 %add, 262144
  %and11 = and i32 %shl, 1073676288
  %or = or i32 %and10, %and11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i55) #10
  %14 = call i32 @llvm.bswap.i32(i32 %or) #10
  %15 = ptrtoint ptr %buf.i.i55 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %buf.i.i55, align 4
  %call.i.i58 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 260, ptr noundef nonnull %buf.i.i55, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i58)
  %cmp.i.i59 = icmp slt i32 %call.i.i58, 0
  br i1 %cmp.i.i59, label %if.then14, label %if.end16, !prof !421

if.then14:                                        ; preds = %do.end9.i.i60
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i61 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %16 = ptrtoint ptr %net.i.i61 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net.i.i61, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %17, ptr noundef nonnull @.str.34, i32 noundef 260, i32 noundef %call.i.i58) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i55) #10
  %18 = ptrtoint ptr %net.i.i61 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net.i.i61, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %19, ptr noundef nonnull @.str.22, i32 noundef %call.i.i58) #13
  br label %cleanup

if.end16:                                         ; preds = %do.end9.i.i60
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i55) #10
  br i1 %cmp1.not, label %if.end16.cleanup_crit_edge, label %do.end9.i.i69

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end9.i.i69:                                    ; preds = %if.end16
  %or19 = or i32 %or, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i64) #10
  %20 = call i32 @llvm.bswap.i32(i32 %or19) #10
  %21 = ptrtoint ptr %buf.i.i64 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %buf.i.i64, align 4
  %call.i.i67 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 260, ptr noundef nonnull %buf.i.i64, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i67)
  %cmp.i.i68 = icmp slt i32 %call.i.i67, 0
  br i1 %cmp.i.i68, label %if.then22, label %smsc75xx_write_reg.exit72, !prof !421

smsc75xx_write_reg.exit72:                        ; preds = %do.end9.i.i69
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i64) #10
  br label %cleanup

if.then22:                                        ; preds = %do.end9.i.i69
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i70 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %22 = ptrtoint ptr %net.i.i70 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net.i.i70, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %23, ptr noundef nonnull @.str.34, i32 noundef 260, i32 noundef %call.i.i67) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i64) #10
  %24 = ptrtoint ptr %net.i.i70 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net.i.i70, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %25, ptr noundef nonnull @.str.22, i32 noundef %call.i.i67) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %smsc75xx_write_reg.exit72, %if.end16.cleanup_crit_edge, %if.then14, %if.then6, %if.then
  %retval.0 = phi i32 [ %call.i.i, %if.then ], [ %call.i.i50, %if.then6 ], [ %call.i.i58, %if.then14 ], [ %call.i.i67, %if.then22 ], [ 0, %smsc75xx_write_reg.exit72 ], [ 0, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_change_mtu(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_get_drvinfo(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @smsc75xx_ethtool_get_wol(ptr nocapture noundef readonly %net, ptr nocapture noundef writeonly %wolinfo) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr i8, ptr %net, i32 2556
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %2 = inttoptr i32 %1 to ptr
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wolinfo, i32 0, i32 1
  %3 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 63, ptr %supported, align 4
  %wolopts = getelementptr inbounds %struct.smsc75xx_priv, ptr %2, i32 0, i32 2
  %4 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wolopts, align 4
  %wolopts1 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wolinfo, i32 0, i32 2
  %6 = ptrtoint ptr %wolopts1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %wolopts1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc75xx_ethtool_set_wol(ptr nocapture noundef readonly %net, ptr nocapture noundef readonly %wolinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wolinfo, i32 0, i32 2
  %0 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wolopts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %tobool.not = icmp ult i32 %1, 64
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %data = getelementptr i8, ptr %net, i32 2556
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %4 = inttoptr i32 %3 to ptr
  %wolopts3 = getelementptr inbounds %struct.smsc75xx_priv, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %wolopts3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %wolopts3, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %dev4 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool6 = icmp ne i32 %1, 0
  %call7 = tail call i32 @device_set_wakeup_enable(ptr noundef %dev4, i1 noundef zeroext %tobool6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.then8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %net9 = getelementptr i8, ptr %net, i32 2548
  %8 = ptrtoint ptr %net9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net9, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %9, ptr noundef nonnull @.str.92, i32 noundef %call7) #13
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
declare dso_local i32 @usbnet_nway_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_link(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smsc75xx_ethtool_get_eeprom_len(ptr nocapture noundef readnone %net) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 512
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc75xx_ethtool_get_eeprom(ptr noundef %netdev, ptr nocapture noundef %ee, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 1
  %0 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 29952, ptr %magic, align 4
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 2
  %1 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %offset, align 4
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 3
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  %call1 = tail call fastcc i32 @smsc75xx_read_eeprom(ptr noundef %add.ptr.i, i32 noundef %2, i32 noundef %4, ptr noundef %data)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc75xx_ethtool_set_eeprom(ptr noundef %netdev, ptr nocapture noundef readonly %ee, ptr noundef readonly %data) #2 align 64 {
entry:
  %buf.i.i96.i = alloca i32, align 4
  %buf.i.i87.i = alloca i32, align 4
  %buf.i.i.i = alloca i32, align 4
  %buf.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 1
  %0 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %magic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29952, i32 %1)
  %cmp.not = icmp eq i32 %1, 29952
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %net = getelementptr i8, ptr %netdev, i32 2548
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %3, ptr noundef nonnull @.str.93, i32 noundef %1) #13
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
  br i1 %tobool.not.i, label %do.body4.i, label %do.body10.i, !prof !421

do.body4.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 387, 0\0A.popsection", ""() #10, !srcloc !432
  unreachable

do.body10.i:                                      ; preds = %if.end
  %tobool11.not.i = icmp eq ptr %data, null
  br i1 %tobool11.not.i, label %do.body21.i, label %do.end29.i, !prof !421

do.body21.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 388, 0\0A.popsection", ""() #10, !srcloc !433
  unreachable

do.end29.i:                                       ; preds = %do.body10.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %8, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i.i) #10
  %9 = ptrtoint ptr %buf.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %buf.i.i.i.i, align 4
  %call.i.i.i110.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 64, ptr noundef nonnull %buf.i.i.i.i, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i110.i)
  %cmp.i.i.i111.i = icmp slt i32 %call.i.i.i110.i, 0
  br i1 %cmp.i.i.i111.i, label %do.end29.i.if.then.i.i_crit_edge, label %do.end29.i.if.end.i.i_crit_edge, !prof !421

do.end29.i.if.end.i.i_crit_edge:                  ; preds = %do.end29.i
  br label %if.end.i.i

do.end29.i.if.then.i.i_crit_edge:                 ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

do.end9.i.i.critedge.i.i:                         ; preds = %if.end2.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i.i) #10
  %10 = ptrtoint ptr %buf.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %buf.i.i.i.i, align 4
  %call.i.i.i.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 64, ptr noundef nonnull %buf.i.i.i.i, i16 noundef zeroext 4) #10, !callees !423
  %cmp.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %do.end9.i.i.critedge.i.i.if.then.i.i_crit_edge, label %do.end9.i.i.critedge.i.i.if.end.i.i_crit_edge, !prof !421

do.end9.i.i.critedge.i.i.if.end.i.i_crit_edge:    ; preds = %do.end9.i.i.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

do.end9.i.i.critedge.i.i.if.then.i.i_crit_edge:   ; preds = %do.end9.i.i.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %do.end9.i.i.critedge.i.i.if.then.i.i_crit_edge, %do.end29.i.if.then.i.i_crit_edge
  %call.i.i.i.lcssa.i = phi i32 [ %call.i.i.i110.i, %do.end29.i.if.then.i.i_crit_edge ], [ %call.i.i.i.i, %do.end9.i.i.critedge.i.i.if.then.i.i_crit_edge ]
  %net.i.i.i.i = getelementptr i8, ptr %netdev, i32 2548
  %11 = ptrtoint ptr %net.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net.i.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %12, ptr noundef nonnull @.str.33, i32 noundef 64, i32 noundef %call.i.i.i.lcssa.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i.i) #10
  br label %cleanup.sink.split.i

if.end.i.i:                                       ; preds = %do.end9.i.i.critedge.i.i.if.end.i.i_crit_edge, %do.end29.i.if.end.i.i_crit_edge
  %13 = ptrtoint ptr %buf.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buf.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i.i) #10
  %.mask.i.i = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i.i)
  %tobool.not.i.i = icmp eq i32 %.mask.i.i, 0
  br i1 %tobool.not.i.i, label %do.end9.i.i.i, label %if.end2.i.i

if.end2.i.i:                                      ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %15(i32 noundef 8589920) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i)
  %cmp3.i.i = icmp sgt i32 %sub.i.i, -1
  br i1 %cmp3.i.i, label %do.end9.i.i.critedge.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %net4.i.i = getelementptr i8, ptr %netdev, i32 2548
  br label %cleanup.sink.split.i

do.end9.i.i.i:                                    ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i) #10
  %17 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 160, ptr %buf.i.i.i, align 4
  %call.i.i.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 64, ptr noundef nonnull %buf.i.i.i, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then34.i, label %if.end35.i, !prof !421

if.then34.i:                                      ; preds = %do.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i.i = getelementptr i8, ptr %netdev, i32 2548
  %18 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %19, ptr noundef nonnull @.str.34, i32 noundef 64, i32 noundef %call.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #10
  br label %cleanup.sink.split.i

if.end35.i:                                       ; preds = %do.end9.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #10
  %call36.i = call fastcc i32 @smsc75xx_wait_eeprom(ptr noundef nonnull %add.ptr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %cmp37.i = icmp slt i32 %call36.i, 0
  br i1 %cmp37.i, label %if.end35.i.cleanup_crit_edge, label %for.cond.preheader.i

if.end35.i.cleanup_crit_edge:                     ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp40112.not.i = icmp eq i32 %7, 0
  br i1 %cmp40112.not.i, label %for.cond.preheader.i.cleanup_crit_edge, label %for.cond.preheader.i.do.end9.i.i92.i_crit_edge

for.cond.preheader.i.do.end9.i.i92.i_crit_edge:   ; preds = %for.cond.preheader.i
  br label %do.end9.i.i92.i

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end9.i.i92.i:                                  ; preds = %if.end57.i.do.end9.i.i92.i_crit_edge, %for.cond.preheader.i.do.end9.i.i92.i_crit_edge
  %i.0114.i = phi i32 [ %inc58.i, %if.end57.i.do.end9.i.i92.i_crit_edge ], [ 0, %for.cond.preheader.i.do.end9.i.i92.i_crit_edge ]
  %offset.addr.0113.i = phi i32 [ %inc.i, %if.end57.i.do.end9.i.i92.i_crit_edge ], [ %5, %for.cond.preheader.i.do.end9.i.i92.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %data, i32 %i.0114.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %21 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i87.i) #10
  %22 = shl nuw i32 %conv.i, 24
  %23 = ptrtoint ptr %buf.i.i87.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %buf.i.i87.i, align 4
  %call.i.i90.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 68, ptr noundef nonnull %buf.i.i87.i, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i90.i)
  %cmp.i.i91.i = icmp slt i32 %call.i.i90.i, 0
  br i1 %cmp.i.i91.i, label %if.then44.i, label %do.end9.i.i101.i, !prof !421

if.then44.i:                                      ; preds = %do.end9.i.i92.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i93.i = getelementptr i8, ptr %netdev, i32 2548
  %24 = ptrtoint ptr %net.i.i93.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net.i.i93.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %25, ptr noundef nonnull @.str.34, i32 noundef 68, i32 noundef %call.i.i90.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i87.i) #10
  br label %cleanup.sink.split.i

do.end9.i.i101.i:                                 ; preds = %do.end9.i.i92.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i87.i) #10
  %and.i = and i32 %offset.addr.0113.i, 511
  %or.i = or i32 %and.i, -1342177280
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i96.i) #10
  %26 = call i32 @llvm.bswap.i32(i32 %or.i) #10
  %27 = ptrtoint ptr %buf.i.i96.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %buf.i.i96.i, align 4
  %call.i.i99.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 64, ptr noundef nonnull %buf.i.i96.i, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i99.i)
  %cmp.i.i100.i = icmp slt i32 %call.i.i99.i, 0
  br i1 %cmp.i.i100.i, label %if.then50.i, label %if.end52.i, !prof !421

if.then50.i:                                      ; preds = %do.end9.i.i101.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i102.i = getelementptr i8, ptr %netdev, i32 2548
  %28 = ptrtoint ptr %net.i.i102.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %net.i.i102.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %29, ptr noundef nonnull @.str.34, i32 noundef 64, i32 noundef %call.i.i99.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i96.i) #10
  br label %cleanup.sink.split.i

if.end52.i:                                       ; preds = %do.end9.i.i101.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i96.i) #10
  %call53.i = call fastcc i32 @smsc75xx_wait_eeprom(ptr noundef nonnull %add.ptr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %cmp54.i = icmp slt i32 %call53.i, 0
  br i1 %cmp54.i, label %if.end52.i.cleanup_crit_edge, label %if.end57.i

if.end52.i.cleanup_crit_edge:                     ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end57.i:                                       ; preds = %if.end52.i
  %inc.i = add i32 %offset.addr.0113.i, 1
  %inc58.i = add nuw i32 %i.0114.i, 1
  %exitcond.not.i = icmp eq i32 %inc58.i, %7
  br i1 %exitcond.not.i, label %if.end57.i.cleanup_crit_edge, label %if.end57.i.do.end9.i.i92.i_crit_edge

if.end57.i.do.end9.i.i92.i_crit_edge:             ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i92.i

if.end57.i.cleanup_crit_edge:                     ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split.i:                             ; preds = %if.then50.i, %if.then44.i, %if.then34.i, %do.end.i.i, %if.then.i.i
  %net4.sink.i.sink.i = phi ptr [ %net.i.i102.i, %if.then50.i ], [ %net.i.i93.i, %if.then44.i ], [ %net.i.i.i, %if.then34.i ], [ %net4.i.i, %do.end.i.i ], [ %net.i.i.i.i, %if.then.i.i ]
  %.str.83.sink.i.sink.i = phi ptr [ @.str.80, %if.then50.i ], [ @.str.94, %if.then44.i ], [ @.str.80, %if.then34.i ], [ @.str.83, %do.end.i.i ], [ @.str.82, %if.then.i.i ]
  %retval.0.ph.i = phi i32 [ %call.i.i99.i, %if.then50.i ], [ %call.i.i90.i, %if.then44.i ], [ %call.i.i.i, %if.then34.i ], [ -5, %do.end.i.i ], [ %call.i.i.i.lcssa.i, %if.then.i.i ]
  %30 = ptrtoint ptr %net4.sink.i.sink.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %net4.sink.i.sink.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %31, ptr noundef nonnull %.str.83.sink.i.sink.i) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %if.end57.i.cleanup_crit_edge, %if.end52.i.cleanup_crit_edge, %for.cond.preheader.i.cleanup_crit_edge, %if.end35.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call36.i, %if.end35.i.cleanup_crit_edge ], [ 0, %for.cond.preheader.i.cleanup_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ], [ 0, %if.end57.i.cleanup_crit_edge ], [ %call53.i, %if.end52.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_link_ksettings_mii(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_set_link_ksettings_mii(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc75xx_phy_initialize(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %buf.i.i10.i = alloca i32, align 4
  %buf.i.i2.i = alloca i32, align 4
  %buf.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %mii = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25
  %dev1 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 5
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %dev1, align 4
  %mdio_read = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 6
  %3 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @smsc75xx_mdio_read, ptr %mdio_read, align 4
  %mdio_write = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 7
  %4 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @smsc75xx_mdio_write, ptr %mdio_write, align 4
  %phy_id_mask = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 2
  %5 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 31, ptr %phy_id_mask, align 4
  %reg_num_mask = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 3
  %6 = ptrtoint ptr %reg_num_mask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 31, ptr %reg_num_mask, align 4
  %supports_gmii = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 4
  %7 = ptrtoint ptr %supports_gmii to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %supports_gmii, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %supports_gmii, align 4
  %8 = ptrtoint ptr %mii to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %mii, align 4
  tail call void @smsc75xx_mdio_write(ptr noundef %1, i32 noundef 1, i32 noundef 0, i32 noundef 32768)
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %timeout.0 = phi i32 [ 0, %entry ], [ %inc, %if.end.do.body_crit_edge ]
  tail call void @msleep(i32 noundef 10) #10
  %9 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net, align 4
  %11 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mii, align 4
  %call = tail call i32 @smsc75xx_mdio_read(ptr noundef %10, i32 noundef %12, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %14, ptr noundef nonnull @.str.155) #13
  br label %cleanup

if.end:                                           ; preds = %do.body
  %inc = add nuw nsw i32 %timeout.0, 1
  %and = and i32 %call, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %timeout.0)
  %cmp15 = icmp ult i32 %timeout.0, 99
  %or.cond = select i1 %tobool.not, i1 %cmp15, i1 false
  br i1 %or.cond, label %if.end.do.body_crit_edge, label %do.end

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 98, i32 %timeout.0)
  %cmp16 = icmp ugt i32 %timeout.0, 98
  %15 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net, align 4
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %16, ptr noundef nonnull @.str.156) #13
  br label %cleanup

if.end19:                                         ; preds = %do.end
  %17 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mii, align 4
  tail call void @smsc75xx_mdio_write(ptr noundef %16, i32 noundef %18, i32 noundef 0, i32 noundef 16448) #10
  br label %do.body.i

do.body.i:                                        ; preds = %smsc75xx_link_ok_nopm.exit.i.do.body.i_crit_edge, %if.end19
  %timeout.0.i = phi i32 [ 0, %if.end19 ], [ %inc.i, %smsc75xx_link_ok_nopm.exit.i.do.body.i_crit_edge ]
  %19 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net, align 4
  %21 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mii, align 4
  %call.i.i = tail call fastcc i32 @smsc75xx_mdio_read_nopm(ptr noundef %20, i32 noundef %22, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  %23 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %net, align 4
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %24, ptr noundef nonnull @.str.24) #13
  br label %smsc75xx_link_ok_nopm.exit.i

if.end.i.i:                                       ; preds = %do.body.i
  %25 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mii, align 4
  %call5.i.i = tail call fastcc i32 @smsc75xx_mdio_read_nopm(ptr noundef %24, i32 noundef %26, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp6.i.i = icmp slt i32 %call5.i.i, 0
  br i1 %cmp6.i.i, label %if.then7.i.i, label %if.end9.i.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %28, ptr noundef nonnull @.str.24) #13
  br label %smsc75xx_link_ok_nopm.exit.i

if.end9.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and.i.i = lshr i32 %call5.i.i, 2
  %and.lobit.i.i = and i32 %and.i.i, 1
  br label %smsc75xx_link_ok_nopm.exit.i

smsc75xx_link_ok_nopm.exit.i:                     ; preds = %if.end9.i.i, %if.then7.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ 1, %if.then.i.i ], [ 1, %if.then7.i.i ], [ %and.lobit.i.i, %if.end9.i.i ]
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #10
  %inc.i = add nuw nsw i32 %timeout.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not.i = icmp eq i32 %retval.0.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %timeout.0.i)
  %cmp.i = icmp ult i32 %timeout.0.i, 999
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %smsc75xx_link_ok_nopm.exit.i.do.body.i_crit_edge, label %do.end.i

smsc75xx_link_ok_nopm.exit.i.do.body.i_crit_edge: ; preds = %smsc75xx_link_ok_nopm.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.end.i:                                         ; preds = %smsc75xx_link_ok_nopm.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 998, i32 %timeout.0.i)
  %cmp2.i = icmp ugt i32 %timeout.0.i, 998
  br i1 %cmp2.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %30, ptr noundef nonnull @.str.159) #13
  br label %smsc75xx_phy_gig_workaround.exit

if.end.i:                                         ; preds = %do.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i) #10
  %31 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %buf.i.i.i, align 4, !annotation !420
  %tobool.not.i.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %do.end9.i.i.i, !prof !421

do.body4.i.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #10, !srcloc !422
  unreachable

do.end9.i.i.i:                                    ; preds = %if.end.i
  %call.i.i.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %buf.i.i.i, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then6.i, label %do.end9.i.i7.i, !prof !421

if.then6.i:                                       ; preds = %do.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %33, ptr noundef nonnull @.str.33, i32 noundef 20, i32 noundef %call.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #10
  %34 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %35, ptr noundef nonnull @.str.52, i32 noundef %call.i.i.i) #13
  br label %smsc75xx_phy_gig_workaround.exit

do.end9.i.i7.i:                                   ; preds = %do.end9.i.i.i
  %36 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %buf.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #10
  %38 = or i32 %37, 268435456
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i2.i) #10
  %39 = ptrtoint ptr %buf.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %buf.i.i2.i, align 4
  %call.i.i5.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %buf.i.i2.i, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i5.i)
  %cmp.i.i6.i = icmp slt i32 %call.i.i5.i, 0
  br i1 %cmp.i.i6.i, label %if.then11.i, label %smsc75xx_write_reg.exit.i, !prof !421

smsc75xx_write_reg.exit.i:                        ; preds = %do.end9.i.i7.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i2.i) #10
  br label %do.end9.i.i15.i

if.then11.i:                                      ; preds = %do.end9.i.i7.i
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %41, ptr noundef nonnull @.str.34, i32 noundef 20, i32 noundef %call.i.i5.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i2.i) #10
  %42 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %43, ptr noundef nonnull @.str.104, i32 noundef %call.i.i5.i) #13
  br label %smsc75xx_phy_gig_workaround.exit

do.end9.i.i15.i:                                  ; preds = %if.end19.i.do.end9.i.i15.i_crit_edge, %smsc75xx_write_reg.exit.i
  %timeout.1.i = phi i32 [ 0, %smsc75xx_write_reg.exit.i ], [ %inc20.i, %if.end19.i.do.end9.i.i15.i_crit_edge ]
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i10.i) #10
  %44 = ptrtoint ptr %buf.i.i10.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %buf.i.i10.i, align 4, !annotation !420
  %call.i.i13.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %buf.i.i10.i, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i13.i)
  %cmp.i.i14.i = icmp slt i32 %call.i.i13.i, 0
  br i1 %cmp.i.i14.i, label %if.then17.i, label %if.end19.i, !prof !421

if.then17.i:                                      ; preds = %do.end9.i.i15.i
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %46, ptr noundef nonnull @.str.33, i32 noundef 20, i32 noundef %call.i.i13.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i10.i) #10
  %47 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %48, ptr noundef nonnull @.str.52, i32 noundef %call.i.i13.i) #13
  br label %smsc75xx_phy_gig_workaround.exit

if.end19.i:                                       ; preds = %do.end9.i.i15.i
  %49 = ptrtoint ptr %buf.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %buf.i.i10.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i10.i) #10
  %inc20.i = add nuw nsw i32 %timeout.1.i, 1
  %51 = and i32 %50, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool22.not.i = icmp ne i32 %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %timeout.1.i)
  %cmp24.i = icmp ult i32 %timeout.1.i, 99
  %or.cond1.i = select i1 %tobool22.not.i, i1 %cmp24.i, i1 false
  br i1 %or.cond1.i, label %if.end19.i.do.end9.i.i15.i_crit_edge, label %do.end26.i

if.end19.i.do.end9.i.i15.i_crit_edge:             ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i15.i

do.end26.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 98, i32 %timeout.1.i)
  %cmp27.i = icmp ugt i32 %timeout.1.i, 98
  br i1 %cmp27.i, label %if.then28.i, label %do.end26.i.smsc75xx_phy_gig_workaround.exit_crit_edge

do.end26.i.smsc75xx_phy_gig_workaround.exit_crit_edge: ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smsc75xx_phy_gig_workaround.exit

if.then28.i:                                      ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %53, ptr noundef nonnull @.str.105) #13
  br label %smsc75xx_phy_gig_workaround.exit

smsc75xx_phy_gig_workaround.exit:                 ; preds = %if.then28.i, %do.end26.i.smsc75xx_phy_gig_workaround.exit_crit_edge, %if.then17.i, %if.then11.i, %if.then6.i, %if.then.i
  %54 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %net, align 4
  %56 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mii, align 4
  call void @smsc75xx_mdio_write(ptr noundef %55, i32 noundef %57, i32 noundef 4, i32 noundef 3553)
  %58 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %net, align 4
  %60 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mii, align 4
  call void @smsc75xx_mdio_write(ptr noundef %59, i32 noundef %61, i32 noundef 9, i32 noundef 512)
  %62 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %net, align 4
  %64 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mii, align 4
  %call30 = call i32 @smsc75xx_mdio_read(ptr noundef %63, i32 noundef %65, i32 noundef 29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  %66 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %net, align 4
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %smsc75xx_phy_gig_workaround.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %67, ptr noundef nonnull @.str.37) #13
  br label %cleanup

if.end34:                                         ; preds = %smsc75xx_phy_gig_workaround.exit
  %68 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %mii, align 4
  call void @smsc75xx_mdio_write(ptr noundef %67, i32 noundef %69, i32 noundef 29, i32 noundef 65535)
  %70 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %net, align 4
  %72 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %mii, align 4
  call void @smsc75xx_mdio_write(ptr noundef %71, i32 noundef %73, i32 noundef 30, i32 noundef 80)
  %call42 = call i32 @mii_nway_restart(ptr noundef %mii) #10
  %msg_enable = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 20
  %74 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %msg_enable, align 4
  %and44 = and i32 %75, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end34.cleanup_crit_edge, label %do.body47

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body47:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc75xx_phy_initialize.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc75xx_phy_initialize, %if.then52)) #10
          to label %cleanup [label %if.then52], !srcloc !426

if.then52:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc75xx_phy_initialize.__UNIQUE_ID_ddebug368, ptr noundef %77, ptr noundef nonnull @.str.158) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %do.body47, %if.end34.cleanup_crit_edge, %if.then32, %if.then17, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ -5, %if.then17 ], [ %call30, %if.then32 ], [ 0, %if.then52 ], [ 0, %if.end34.cleanup_crit_edge ], [ 0, %do.body47 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc75xx_mdio_read(ptr noundef %netdev, i32 noundef %phy_id, i32 noundef %idx) #2 align 64 {
entry:
  %buf.i68.i = alloca i32, align 4
  %buf.i.i49.i = alloca i32, align 4
  %buf.i.i = alloca i32, align 4
  %buf.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %phy_mutex.i = getelementptr i8, ptr %netdev, i32 2376
  tail call void @mutex_lock_nested(ptr noundef %phy_mutex.i, i32 noundef 0) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %tobool.not.i.i.i = icmp eq ptr %add.ptr.i.i, null
  %add.i.i = add i32 %0, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i) #10
  %1 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %buf.i.i.i, align 4, !annotation !420
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %do.end9.i.i.preheader.i, !prof !421

do.end9.i.i.preheader.i:                          ; preds = %entry
  %call.i.i89.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %add.ptr.i.i, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 288, ptr noundef nonnull %buf.i.i.i, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i89.i)
  %cmp.i.i90.i = icmp slt i32 %call.i.i89.i, 0
  br i1 %cmp.i.i90.i, label %do.end9.i.i.preheader.i.if.then.i.i_crit_edge, label %do.end9.i.i.preheader.i.if.end.i.i_crit_edge, !prof !421

do.end9.i.i.preheader.i.if.end.i.i_crit_edge:     ; preds = %do.end9.i.i.preheader.i
  br label %if.end.i.i

do.end9.i.i.preheader.i.if.then.i.i_crit_edge:    ; preds = %do.end9.i.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

do.body4.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #10, !srcloc !422
  unreachable

do.end9.i.critedge.i.i:                           ; preds = %do.cond.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i) #10
  %2 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %buf.i.i.i, align 4, !annotation !420
  %call.i.i.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %add.ptr.i.i, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 288, ptr noundef nonnull %buf.i.i.i, i16 noundef zeroext 4) #10, !callees !423
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end9.i.critedge.i.i.if.then.i.i_crit_edge, label %do.end9.i.critedge.i.i.if.end.i.i_crit_edge, !prof !421

do.end9.i.critedge.i.i.if.end.i.i_crit_edge:      ; preds = %do.end9.i.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

do.end9.i.critedge.i.i.if.then.i.i_crit_edge:     ; preds = %do.end9.i.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %do.end9.i.critedge.i.i.if.then.i.i_crit_edge, %do.end9.i.i.preheader.i.if.then.i.i_crit_edge
  %call.i.i.lcssa.i = phi i32 [ %call.i.i89.i, %do.end9.i.i.preheader.i.if.then.i.i_crit_edge ], [ %call.i.i.i, %do.end9.i.critedge.i.i.if.then.i.i_crit_edge ]
  %net.i.i.i = getelementptr i8, ptr %netdev, i32 2548
  %3 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %4, ptr noundef nonnull @.str.33, i32 noundef 288, i32 noundef %call.i.i.lcssa.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #10
  %5 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %6, ptr noundef nonnull @.str.43) #13
  br label %if.then.i

if.end.i.i:                                       ; preds = %do.end9.i.critedge.i.i.if.end.i.i_crit_edge, %do.end9.i.i.preheader.i.if.end.i.i_crit_edge
  %7 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buf.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #10
  %9 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %do.end9.i.i, label %do.cond.i.i

do.cond.i.i:                                      ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i)
  %cmp3.i.i = icmp sgt i32 %sub.i.i, -1
  br i1 %cmp3.i.i, label %do.end9.i.critedge.i.i, label %do.cond.i.i.if.then.i_crit_edge

do.cond.i.i.if.then.i_crit_edge:                  ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %do.cond.i.i.if.then.i_crit_edge, %if.then.i.i
  %retval.0.i.ph.i = phi i32 [ %call.i.i.lcssa.i, %if.then.i.i ], [ -5, %do.cond.i.i.if.then.i_crit_edge ]
  %net.i = getelementptr i8, ptr %netdev, i32 2548
  %11 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %12, ptr noundef nonnull @.str.39) #13
  br label %__smsc75xx_mdio_read.exit

do.end9.i.i:                                      ; preds = %if.end.i.i
  %phy_id_mask.i = getelementptr i8, ptr %netdev, i32 2596
  %13 = ptrtoint ptr %phy_id_mask.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %phy_id_mask.i, align 4
  %and.i = and i32 %14, %phy_id
  %reg_num_mask.i = getelementptr i8, ptr %netdev, i32 2600
  %15 = ptrtoint ptr %reg_num_mask.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg_num_mask.i, align 4
  %and3.i = and i32 %16, %idx
  %shl.i = shl i32 %and.i, 11
  %and4.i = and i32 %shl.i, 63488
  %shl5.i = shl i32 %and3.i, 6
  %and6.i = and i32 %shl5.i, 1984
  %or.i = or i32 %and4.i, %and6.i
  %or8.i = or i32 %or.i, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #10
  %17 = call i32 @llvm.bswap.i32(i32 %or8.i) #10
  %18 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %buf.i.i, align 4
  %call.i.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %add.ptr.i.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 288, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then11.i, label %if.end13.i, !prof !421

if.then11.i:                                      ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i = getelementptr i8, ptr %netdev, i32 2548
  %19 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %20, ptr noundef nonnull @.str.34, i32 noundef 288, i32 noundef %call.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #10
  %21 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %22, ptr noundef nonnull @.str.40) #13
  br label %__smsc75xx_mdio_read.exit

if.end13.i:                                       ; preds = %do.end9.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %add.i53.i = add i32 %23, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i49.i) #10
  %24 = ptrtoint ptr %buf.i.i49.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %buf.i.i49.i, align 4
  %call.i.i5691.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %add.ptr.i.i, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 288, ptr noundef nonnull %buf.i.i49.i, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i5691.i)
  %cmp.i.i5792.i = icmp slt i32 %call.i.i5691.i, 0
  br i1 %cmp.i.i5792.i, label %if.end13.i.if.then.i60.i_crit_edge, label %if.end13.i.if.end.i62.i_crit_edge, !prof !421

if.end13.i.if.end.i62.i_crit_edge:                ; preds = %if.end13.i
  br label %if.end.i62.i

if.end13.i.if.then.i60.i_crit_edge:               ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i60.i

do.end9.i.critedge.i55.i:                         ; preds = %do.cond.i65.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i49.i) #10
  %25 = ptrtoint ptr %buf.i.i49.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %buf.i.i49.i, align 4
  %call.i.i56.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %add.ptr.i.i, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 288, ptr noundef nonnull %buf.i.i49.i, i16 noundef zeroext 4) #10, !callees !423
  %cmp.i.i57.i = icmp slt i32 %call.i.i56.i, 0
  br i1 %cmp.i.i57.i, label %do.end9.i.critedge.i55.i.if.then.i60.i_crit_edge, label %do.end9.i.critedge.i55.i.if.end.i62.i_crit_edge, !prof !421

do.end9.i.critedge.i55.i.if.end.i62.i_crit_edge:  ; preds = %do.end9.i.critedge.i55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i62.i

do.end9.i.critedge.i55.i.if.then.i60.i_crit_edge: ; preds = %do.end9.i.critedge.i55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i60.i

if.then.i60.i:                                    ; preds = %do.end9.i.critedge.i55.i.if.then.i60.i_crit_edge, %if.end13.i.if.then.i60.i_crit_edge
  %call.i.i56.lcssa.i = phi i32 [ %call.i.i5691.i, %if.end13.i.if.then.i60.i_crit_edge ], [ %call.i.i56.i, %do.end9.i.critedge.i55.i.if.then.i60.i_crit_edge ]
  %net.i.i59.i = getelementptr i8, ptr %netdev, i32 2548
  %26 = ptrtoint ptr %net.i.i59.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net.i.i59.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %27, ptr noundef nonnull @.str.33, i32 noundef 288, i32 noundef %call.i.i56.lcssa.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i49.i) #10
  %28 = ptrtoint ptr %net.i.i59.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %net.i.i59.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %29, ptr noundef nonnull @.str.43) #13
  br label %if.then16.i

if.end.i62.i:                                     ; preds = %do.end9.i.critedge.i55.i.if.end.i62.i_crit_edge, %if.end13.i.if.end.i62.i_crit_edge
  %30 = ptrtoint ptr %buf.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %buf.i.i49.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i49.i) #10
  %32 = and i32 %31, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i61.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i61.i, label %do.end9.i74.i, label %do.cond.i65.i

do.cond.i65.i:                                    ; preds = %if.end.i62.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %sub.i63.i = sub i32 %add.i53.i, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i63.i)
  %cmp3.i64.i = icmp sgt i32 %sub.i63.i, -1
  br i1 %cmp3.i64.i, label %do.end9.i.critedge.i55.i, label %do.cond.i65.i.if.then16.i_crit_edge

do.cond.i65.i.if.then16.i_crit_edge:              ; preds = %do.cond.i65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16.i

if.then16.i:                                      ; preds = %do.cond.i65.i.if.then16.i_crit_edge, %if.then.i60.i
  %retval.0.i66.ph.i = phi i32 [ %call.i.i56.lcssa.i, %if.then.i60.i ], [ -5, %do.cond.i65.i.if.then16.i_crit_edge ]
  %net17.i = getelementptr i8, ptr %netdev, i32 2548
  %34 = ptrtoint ptr %net17.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %net17.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %35, ptr noundef nonnull @.str.41, i32 noundef %and3.i) #13
  br label %__smsc75xx_mdio_read.exit

do.end9.i74.i:                                    ; preds = %if.end.i62.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i68.i) #10
  %36 = ptrtoint ptr %buf.i68.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %buf.i68.i, align 4, !annotation !420
  %call.i72.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %add.ptr.i.i, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 292, ptr noundef nonnull %buf.i68.i, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72.i)
  %cmp.i73.i = icmp slt i32 %call.i72.i, 0
  br i1 %cmp.i73.i, label %if.then21.i, label %if.end23.i, !prof !421

if.then21.i:                                      ; preds = %do.end9.i74.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i75.i = getelementptr i8, ptr %netdev, i32 2548
  %37 = ptrtoint ptr %net.i75.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %net.i75.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %38, ptr noundef nonnull @.str.33, i32 noundef 292, i32 noundef %call.i72.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i68.i) #10
  %39 = ptrtoint ptr %net.i75.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %net.i75.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %40, ptr noundef nonnull @.str.42) #13
  br label %__smsc75xx_mdio_read.exit

if.end23.i:                                       ; preds = %do.end9.i74.i
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %buf.i68.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %buf.i68.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i68.i) #10
  %43 = and i32 %42, -65536
  %44 = call i32 @llvm.bswap.i32(i32 %43) #10
  br label %__smsc75xx_mdio_read.exit

__smsc75xx_mdio_read.exit:                        ; preds = %if.end23.i, %if.then21.i, %if.then16.i, %if.then11.i, %if.then.i
  %ret.0.i = phi i32 [ %retval.0.i.ph.i, %if.then.i ], [ %call.i.i, %if.then11.i ], [ %retval.0.i66.ph.i, %if.then16.i ], [ %call.i72.i, %if.then21.i ], [ %44, %if.end23.i ]
  call void @mutex_unlock(ptr noundef %phy_mutex.i) #10
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smsc75xx_mdio_write(ptr noundef %netdev, i32 noundef %phy_id, i32 noundef %idx, i32 noundef %regval) #2 align 64 {
entry:
  %buf.i.i57.i = alloca i32, align 4
  %buf.i46.i = alloca i32, align 4
  %buf.i.i = alloca i32, align 4
  %buf.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %phy_mutex.i = getelementptr i8, ptr %netdev, i32 2376
  tail call void @mutex_lock_nested(ptr noundef %phy_mutex.i, i32 noundef 0) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %tobool.not.i.i.i = icmp eq ptr %add.ptr.i.i, null
  %add.i.i = add i32 %0, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i) #10
  %1 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %buf.i.i.i, align 4, !annotation !420
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %do.end9.i.i.preheader.i, !prof !421

do.end9.i.i.preheader.i:                          ; preds = %entry
  %call.i.i85.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %add.ptr.i.i, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 288, ptr noundef nonnull %buf.i.i.i, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i85.i)
  %cmp.i.i86.i = icmp slt i32 %call.i.i85.i, 0
  br i1 %cmp.i.i86.i, label %do.end9.i.i.preheader.i.if.then.i.i_crit_edge, label %do.end9.i.i.preheader.i.if.end.i.i_crit_edge, !prof !421

do.end9.i.i.preheader.i.if.end.i.i_crit_edge:     ; preds = %do.end9.i.i.preheader.i
  br label %if.end.i.i

do.end9.i.i.preheader.i.if.then.i.i_crit_edge:    ; preds = %do.end9.i.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

do.body4.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #10, !srcloc !422
  unreachable

do.end9.i.critedge.i.i:                           ; preds = %do.cond.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i) #10
  %2 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %buf.i.i.i, align 4, !annotation !420
  %call.i.i.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %add.ptr.i.i, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 288, ptr noundef nonnull %buf.i.i.i, i16 noundef zeroext 4) #10, !callees !423
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end9.i.critedge.i.i.if.then.i.i_crit_edge, label %do.end9.i.critedge.i.i.if.end.i.i_crit_edge, !prof !421

do.end9.i.critedge.i.i.if.end.i.i_crit_edge:      ; preds = %do.end9.i.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

do.end9.i.critedge.i.i.if.then.i.i_crit_edge:     ; preds = %do.end9.i.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %do.end9.i.critedge.i.i.if.then.i.i_crit_edge, %do.end9.i.i.preheader.i.if.then.i.i_crit_edge
  %call.i.i.lcssa.i = phi i32 [ %call.i.i85.i, %do.end9.i.i.preheader.i.if.then.i.i_crit_edge ], [ %call.i.i.i, %do.end9.i.critedge.i.i.if.then.i.i_crit_edge ]
  %net.i.i.i = getelementptr i8, ptr %netdev, i32 2548
  %3 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %4, ptr noundef nonnull @.str.33, i32 noundef 288, i32 noundef %call.i.i.lcssa.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #10
  %5 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %6, ptr noundef nonnull @.str.43) #13
  br label %if.then.i

if.end.i.i:                                       ; preds = %do.end9.i.critedge.i.i.if.end.i.i_crit_edge, %do.end9.i.i.preheader.i.if.end.i.i_crit_edge
  %7 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buf.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #10
  %9 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %do.end9.i.i, label %do.cond.i.i

do.cond.i.i:                                      ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i)
  %cmp3.i.i = icmp sgt i32 %sub.i.i, -1
  br i1 %cmp3.i.i, label %do.end9.i.critedge.i.i, label %do.cond.i.i.if.then.i_crit_edge

do.cond.i.i.if.then.i_crit_edge:                  ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %do.cond.i.i.if.then.i_crit_edge, %if.then.i.i
  %net.i = getelementptr i8, ptr %netdev, i32 2548
  %11 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %12, ptr noundef nonnull @.str.44) #13
  br label %__smsc75xx_mdio_write.exit

do.end9.i.i:                                      ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #10
  %13 = call i32 @llvm.bswap.i32(i32 %regval) #10
  %14 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %buf.i.i, align 4
  %call.i.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %add.ptr.i.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 292, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then4.i, label %do.end9.i53.i, !prof !421

if.then4.i:                                       ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i = getelementptr i8, ptr %netdev, i32 2548
  %15 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %16, ptr noundef nonnull @.str.34, i32 noundef 292, i32 noundef %call.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #10
  %17 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %18, ptr noundef nonnull @.str.45) #13
  br label %__smsc75xx_mdio_write.exit

do.end9.i53.i:                                    ; preds = %do.end9.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #10
  %phy_id_mask.i = getelementptr i8, ptr %netdev, i32 2596
  %19 = ptrtoint ptr %phy_id_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %phy_id_mask.i, align 4
  %and.i = and i32 %20, %phy_id
  %reg_num_mask.i = getelementptr i8, ptr %netdev, i32 2600
  %21 = ptrtoint ptr %reg_num_mask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg_num_mask.i, align 4
  %and8.i = and i32 %22, %idx
  %shl.i = shl i32 %and.i, 11
  %and9.i = and i32 %shl.i, 63488
  %shl10.i = shl i32 %and8.i, 6
  %and11.i = and i32 %shl10.i, 1984
  %or.i = or i32 %and9.i, %and11.i
  %or13.i = or i32 %or.i, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i46.i) #10
  %23 = call i32 @llvm.bswap.i32(i32 %or13.i) #10
  %24 = ptrtoint ptr %buf.i46.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %buf.i46.i, align 4
  %call.i51.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %add.ptr.i.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 288, ptr noundef nonnull %buf.i46.i, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.i)
  %cmp.i52.i = icmp slt i32 %call.i51.i, 0
  br i1 %cmp.i52.i, label %if.then16.i, label %if.end18.i, !prof !421

if.then16.i:                                      ; preds = %do.end9.i53.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i54.i = getelementptr i8, ptr %netdev, i32 2548
  %25 = ptrtoint ptr %net.i54.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %net.i54.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %26, ptr noundef nonnull @.str.34, i32 noundef 288, i32 noundef %call.i51.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i46.i) #10
  %27 = ptrtoint ptr %net.i54.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net.i54.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %28, ptr noundef nonnull @.str.40) #13
  br label %__smsc75xx_mdio_write.exit

if.end18.i:                                       ; preds = %do.end9.i53.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i46.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %add.i61.i = add i32 %29, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i57.i) #10
  %30 = ptrtoint ptr %buf.i.i57.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %buf.i.i57.i, align 4
  %call.i.i6487.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %add.ptr.i.i, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 288, ptr noundef nonnull %buf.i.i57.i, i16 noundef zeroext 4) #10, !callees !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i6487.i)
  %cmp.i.i6588.i = icmp slt i32 %call.i.i6487.i, 0
  br i1 %cmp.i.i6588.i, label %if.end18.i.if.then.i68.i_crit_edge, label %if.end18.i.if.end.i70.i_crit_edge, !prof !421

if.end18.i.if.end.i70.i_crit_edge:                ; preds = %if.end18.i
  br label %if.end.i70.i

if.end18.i.if.then.i68.i_crit_edge:               ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i68.i

do.end9.i.critedge.i63.i:                         ; preds = %do.cond.i73.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i57.i) #10
  %31 = ptrtoint ptr %buf.i.i57.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %buf.i.i57.i, align 4
  %call.i.i64.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %add.ptr.i.i, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 288, ptr noundef nonnull %buf.i.i57.i, i16 noundef zeroext 4) #10, !callees !423
  %cmp.i.i65.i = icmp slt i32 %call.i.i64.i, 0
  br i1 %cmp.i.i65.i, label %do.end9.i.critedge.i63.i.if.then.i68.i_crit_edge, label %do.end9.i.critedge.i63.i.if.end.i70.i_crit_edge, !prof !421

do.end9.i.critedge.i63.i.if.end.i70.i_crit_edge:  ; preds = %do.end9.i.critedge.i63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i70.i

do.end9.i.critedge.i63.i.if.then.i68.i_crit_edge: ; preds = %do.end9.i.critedge.i63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i68.i

if.then.i68.i:                                    ; preds = %do.end9.i.critedge.i63.i.if.then.i68.i_crit_edge, %if.end18.i.if.then.i68.i_crit_edge
  %call.i.i64.lcssa.i = phi i32 [ %call.i.i6487.i, %if.end18.i.if.then.i68.i_crit_edge ], [ %call.i.i64.i, %do.end9.i.critedge.i63.i.if.then.i68.i_crit_edge ]
  %net.i.i67.i = getelementptr i8, ptr %netdev, i32 2548
  %32 = ptrtoint ptr %net.i.i67.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %net.i.i67.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %33, ptr noundef nonnull @.str.33, i32 noundef 288, i32 noundef %call.i.i64.lcssa.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i57.i) #10
  %34 = ptrtoint ptr %net.i.i67.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %net.i.i67.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %35, ptr noundef nonnull @.str.43) #13
  br label %if.then21.i

if.end.i70.i:                                     ; preds = %do.end9.i.critedge.i63.i.if.end.i70.i_crit_edge, %if.end18.i.if.end.i70.i_crit_edge
  %36 = ptrtoint ptr %buf.i.i57.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %buf.i.i57.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i57.i) #10
  %38 = and i32 %37, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i69.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i69.i, label %if.end.i70.i.__smsc75xx_mdio_write.exit_crit_edge, label %do.cond.i73.i

if.end.i70.i.__smsc75xx_mdio_write.exit_crit_edge: ; preds = %if.end.i70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__smsc75xx_mdio_write.exit

do.cond.i73.i:                                    ; preds = %if.end.i70.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %sub.i71.i = sub i32 %add.i61.i, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i71.i)
  %cmp3.i72.i = icmp sgt i32 %sub.i71.i, -1
  br i1 %cmp3.i72.i, label %do.end9.i.critedge.i63.i, label %do.cond.i73.i.if.then21.i_crit_edge

do.cond.i73.i.if.then21.i_crit_edge:              ; preds = %do.cond.i73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21.i

if.then21.i:                                      ; preds = %do.cond.i73.i.if.then21.i_crit_edge, %if.then.i68.i
  %net22.i = getelementptr i8, ptr %netdev, i32 2548
  %40 = ptrtoint ptr %net22.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %net22.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %41, ptr noundef nonnull @.str.46, i32 noundef %and8.i) #13
  br label %__smsc75xx_mdio_write.exit

__smsc75xx_mdio_write.exit:                       ; preds = %if.then21.i, %if.end.i70.i.__smsc75xx_mdio_write.exit_crit_edge, %if.then16.i, %if.then4.i, %if.then.i
  call void @mutex_unlock(ptr noundef %phy_mutex.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_nway_restart(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_defer_kevent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_check_media(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_gset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc75xx_update_flowcontrol(ptr noundef %dev, i8 noundef zeroext %duplex, i16 noundef zeroext %lcladv, i16 noundef zeroext %rmtadv) unnamed_addr #2 align 64 {
entry:
  %buf.i.i87 = alloca i32, align 4
  %buf.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %duplex)
  %cmp = icmp eq i8 %duplex, 1
  br i1 %cmp, label %if.then, label %do.body29

if.then:                                          ; preds = %entry
  %and25.i = and i16 %rmtadv, %lcladv
  %and.i = zext i16 %and25.i to i32
  %and2.i = and i32 %and.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.mii_resolve_flowctrl_fdx.exit_crit_edge

if.then.mii_resolve_flowctrl_fdx.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %mii_resolve_flowctrl_fdx.exit

if.else.i:                                        ; preds = %if.then
  %and6.i = and i32 %and.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.else.i.mii_resolve_flowctrl_fdx.exit_crit_edge, label %if.then8.i

if.else.i.mii_resolve_flowctrl_fdx.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mii_resolve_flowctrl_fdx.exit

if.then8.i:                                       ; preds = %if.else.i
  %0 = and i16 %lcladv, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %tobool11.not.i = icmp eq i16 %0, 0
  br i1 %tobool11.not.i, label %if.else13.i, label %if.then8.i.mii_resolve_flowctrl_fdx.exit_crit_edge

if.then8.i.mii_resolve_flowctrl_fdx.exit_crit_edge: ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mii_resolve_flowctrl_fdx.exit

if.else13.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  %1 = lshr i16 %rmtadv, 10
  %2 = and i16 %1, 1
  %3 = zext i16 %2 to i32
  br label %mii_resolve_flowctrl_fdx.exit

mii_resolve_flowctrl_fdx.exit:                    ; preds = %if.else13.i, %if.then8.i.mii_resolve_flowctrl_fdx.exit_crit_edge, %if.else.i.mii_resolve_flowctrl_fdx.exit_crit_edge, %if.then.mii_resolve_flowctrl_fdx.exit_crit_edge
  %cap.0.i = phi i32 [ 0, %if.else.i.mii_resolve_flowctrl_fdx.exit_crit_edge ], [ 3, %if.then.mii_resolve_flowctrl_fdx.exit_crit_edge ], [ 2, %if.then8.i.mii_resolve_flowctrl_fdx.exit_crit_edge ], [ %3, %if.else13.i ]
  %and = and i32 %cap.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 2080
  %spec.select83 = select i1 %tobool.not, i32 0, i32 1073807359
  %and5 = and i32 %cap.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %4 = shl nuw nsw i32 %and5, 28
  %5 = or i32 %spec.select83, %4
  %msg_enable = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 20
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 4
  %and9 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %mii_resolve_flowctrl_fdx.exit.if.end54_crit_edge, label %do.body12

mii_resolve_flowctrl_fdx.exit.if.end54_crit_edge: ; preds = %mii_resolve_flowctrl_fdx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

do.body12:                                        ; preds = %mii_resolve_flowctrl_fdx.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc75xx_update_flowcontrol.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc75xx_update_flowcontrol, %if.then17)) #10
          to label %if.end54 [label %if.then17], !srcloc !426

if.then17:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %8 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net, align 4
  %cond = select i1 %tobool6.not, ptr @.str.170, ptr @.str.169
  %cond24 = select i1 %tobool.not, ptr @.str.170, ptr @.str.169
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc75xx_update_flowcontrol.__UNIQUE_ID_ddebug361, ptr noundef %9, ptr noundef nonnull @.str.168, ptr noundef nonnull %cond, ptr noundef nonnull %cond24) #10
  br label %if.end54

do.body29:                                        ; preds = %entry
  %msg_enable30 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 20
  %10 = ptrtoint ptr %msg_enable30 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_enable30, align 4
  %and31 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %do.body29.if.end54_crit_edge, label %do.body34

do.body29.if.end54_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

do.body34:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc75xx_update_flowcontrol.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc75xx_update_flowcontrol, %if.then46)) #10
          to label %if.end54 [label %if.then46], !srcloc !426

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #12
  %net47 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %12 = ptrtoint ptr %net47 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net47, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc75xx_update_flowcontrol.__UNIQUE_ID_ddebug362, ptr noundef %13, ptr noundef nonnull @.str.171) #10
  br label %if.end54

if.end54:                                         ; preds = %if.then46, %do.body34, %do.body29.if.end54_crit_edge, %if.then17, %do.body12, %mii_resolve_flowctrl_fdx.exit.if.end54_crit_edge
  %fct_flow.1 = phi i32 [ 0, %if.then46 ], [ 0, %do.body29.if.end54_crit_edge ], [ %spec.select, %if.then17 ], [ %spec.select, %mii_resolve_flowctrl_fdx.exit.if.end54_crit_edge ], [ %spec.select, %do.body12 ], [ 0, %do.body34 ]
  %flow.2 = phi i32 [ 0, %if.then46 ], [ 0, %do.body29.if.end54_crit_edge ], [ %5, %if.then17 ], [ %5, %mii_resolve_flowctrl_fdx.exit.if.end54_crit_edge ], [ %5, %do.body12 ], [ 0, %do.body34 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #10
  %tobool.not.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !421

do.body4.i.i:                                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !425
  unreachable

do.end9.i.i:                                      ; preds = %if.end54
  %14 = tail call i32 @llvm.bswap.i32(i32 %flow.2) #10
  %15 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %buf.i.i, align 4
  %call.i.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 268, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then58, label %do.end9.i.i92, !prof !421

if.then58:                                        ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %16 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %17, ptr noundef nonnull @.str.34, i32 noundef 268, i32 noundef %call.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #10
  %18 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %19, ptr noundef nonnull @.str.172) #13
  br label %cleanup

do.end9.i.i92:                                    ; preds = %do.end9.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i87) #10
  %20 = call i32 @llvm.bswap.i32(i32 %fct_flow.1) #10
  %21 = ptrtoint ptr %buf.i.i87 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %buf.i.i87, align 4
  %call.i.i90 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 160, ptr noundef nonnull %buf.i.i87, i16 noundef zeroext 4) #10, !callees !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i90)
  %cmp.i.i91 = icmp slt i32 %call.i.i90, 0
  br i1 %cmp.i.i91, label %if.then64, label %smsc75xx_write_reg.exit95, !prof !421

smsc75xx_write_reg.exit95:                        ; preds = %do.end9.i.i92
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i87) #10
  br label %cleanup

if.then64:                                        ; preds = %do.end9.i.i92
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i93 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %22 = ptrtoint ptr %net.i.i93 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net.i.i93, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %23, ptr noundef nonnull @.str.34, i32 noundef 160, i32 noundef %call.i.i90) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i87) #10
  %24 = ptrtoint ptr %net.i.i93 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net.i.i93, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %25, ptr noundef nonnull @.str.173) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %smsc75xx_write_reg.exit95, %if.then58
  %retval.0 = phi i32 [ %call.i.i, %if.then58 ], [ %call.i.i90, %if.then64 ], [ 0, %smsc75xx_write_reg.exit95 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_skb_return(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 186)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 186)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !74, !75, !76, !78, !79, !81, !82, !84, !86, !87, !88, !90, !92, !94, !95, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !121, !122, !124, !126, !128, !130, !132, !134, !136, !138, !139, !140, !141, !143, !145, !146, !148, !149, !151, !152, !154, !156, !158, !159, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !181, !182, !184, !185, !187, !188, !190, !192, !194, !196, !198, !200, !202, !203, !204, !206, !207, !209, !210, !212, !213, !215, !217, !219, !221, !223, !225, !227, !228, !229, !231, !232, !233, !235, !237, !239, !241, !243, !244, !246, !248, !250, !251, !253, !255, !256, !258, !259, !261, !262, !264, !265, !267, !269, !271, !272, !274, !276, !278, !279, !281, !282, !284, !286, !288, !289, !291, !293, !294, !296, !298, !300, !301, !303, !305, !307, !309, !311, !313, !315, !317, !318, !320, !322, !324, !326, !328, !330, !332, !334, !335, !337, !339, !341, !342, !344, !346, !347, !349, !351, !353, !354, !356, !357, !359, !361, !363, !365, !367, !369, !371, !372, !373, !375, !377, !379, !380, !381, !383, !385, !387, !388, !389, !391, !392, !393, !394, !395, !397, !398, !400, !402, !404, !405, !406, !408, !409}
!llvm.module.flags = !{!411, !412, !413, !414, !415, !416, !417, !418}
!llvm.ident = !{!419}

!0 = !{ptr @__param_turbo_mode, !1, !"__param_turbo_mode", i1 false, i1 false}
!1 = !{!"../drivers/net/usb/smsc75xx.c", i32 70, i32 1}
!2 = !{ptr @__UNIQUE_ID_turbo_modetype354, !1, !"__UNIQUE_ID_turbo_modetype354", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_turbo_mode355, !4, !"__UNIQUE_ID_turbo_mode355", i1 false, i1 false}
!4 = !{!"../drivers/net/usb/smsc75xx.c", i32 71, i32 1}
!5 = !{ptr @__initcall__kmod_smsc75xx__400_2340_smsc75xx_driver_init6, !6, !"__initcall__kmod_smsc75xx__400_2340_smsc75xx_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/net/usb/smsc75xx.c", i32 2340, i32 1}
!7 = !{ptr @__exitcall_smsc75xx_driver_exit, !6, !"__exitcall_smsc75xx_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author401, !9, !"__UNIQUE_ID_author401", i1 false, i1 false}
!9 = !{!"../drivers/net/usb/smsc75xx.c", i32 2342, i32 1}
!10 = !{ptr @__UNIQUE_ID_author402, !11, !"__UNIQUE_ID_author402", i1 false, i1 false}
!11 = !{!"../drivers/net/usb/smsc75xx.c", i32 2343, i32 1}
!12 = !{ptr @__UNIQUE_ID_description403, !13, !"__UNIQUE_ID_description403", i1 false, i1 false}
!13 = !{!"../drivers/net/usb/smsc75xx.c", i32 2344, i32 1}
!14 = !{ptr @__UNIQUE_ID_file404, !15, !"__UNIQUE_ID_file404", i1 false, i1 false}
!15 = !{!"../drivers/net/usb/smsc75xx.c", i32 2345, i32 1}
!16 = !{ptr @__UNIQUE_ID_license405, !15, !"__UNIQUE_ID_license405", i1 false, i1 false}
!17 = !{ptr @__param_str_turbo_mode, !1, !"__param_str_turbo_mode", i1 false, i1 false}
!18 = !{ptr @turbo_mode, !19, !"turbo_mode", i1 false, i1 false}
!19 = !{!"../drivers/net/usb/smsc75xx.c", i32 69, i32 13}
!20 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @smsc75xx_driver, !22, !"smsc75xx_driver", i1 false, i1 false}
!22 = !{!"../drivers/net/usb/smsc75xx.c", i32 2328, i32 26}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/usb/smsc75xx.c", i32 1802, i32 25}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/usb/smsc75xx.c", i32 1807, i32 25}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/usb/smsc75xx.c", i32 1825, i32 25}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/usb/smsc75xx.c", i32 1830, i32 26}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/usb/smsc75xx.c", i32 1838, i32 26}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/usb/smsc75xx.c", i32 1844, i32 26}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/usb/smsc75xx.c", i32 1852, i32 26}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/usb/smsc75xx.c", i32 1864, i32 26}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/usb/smsc75xx.c", i32 1873, i32 26}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/usb/smsc75xx.c", i32 1879, i32 27}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/usb/smsc75xx.c", i32 1901, i32 27}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/usb/smsc75xx.c", i32 1908, i32 26}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/usb/smsc75xx.c", i32 1914, i32 27}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/usb/smsc75xx.c", i32 1921, i32 26}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/usb/smsc75xx.c", i32 1947, i32 25}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/usb/smsc75xx.c", i32 1962, i32 25}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/usb/smsc75xx.c", i32 1994, i32 25}
!57 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/usb/smsc75xx.c", i32 2014, i32 25}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/usb/smsc75xx.c", i32 2032, i32 25}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/usb/smsc75xx.c", i32 2049, i32 25}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/usb/smsc75xx.c", i32 2068, i32 25}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/usb/smsc75xx.c", i32 2076, i32 25}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/usb/smsc75xx.c", i32 2081, i32 24}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/usb/smsc75xx.c", i32 1742, i32 25}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/usb/smsc75xx.c", i32 1761, i32 3}
!73 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @smsc75xx_autosuspend.__UNIQUE_ID_ddebug392, !72, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/usb/smsc75xx.c", i32 1767, i32 3}
!78 = !{ptr @smsc75xx_autosuspend.__UNIQUE_ID_ddebug393, !77, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/usb/smsc75xx.c", i32 1789, i32 2}
!81 = !{ptr @smsc75xx_autosuspend.__UNIQUE_ID_ddebug394, !80, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!82 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/usb/smsc75xx.c", i32 1667, i32 25}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/usb/smsc75xx.c", i32 1672, i32 3}
!86 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @smsc75xx_enter_suspend3.__UNIQUE_ID_ddebug390, !85, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!88 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/usb/smsc75xx.c", i32 94, i32 25}
!90 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/usb/smsc75xx.c", i32 126, i32 25}
!92 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/usb/smsc75xx.c", i32 1711, i32 2}
!94 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @smsc75xx_enable_phy_wakeup_interrupts.__UNIQUE_ID_ddebug391, !93, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!96 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/usb/smsc75xx.c", i32 1716, i32 25}
!98 = !{ptr @.str.38, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/usb/smsc75xx.c", i32 1723, i32 25}
!100 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/usb/smsc75xx.c", i32 191, i32 25}
!102 = !{ptr @.str.40, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/usb/smsc75xx.c", i32 203, i32 25}
!104 = !{ptr @.str.41, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/usb/smsc75xx.c", i32 209, i32 25}
!106 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/usb/smsc75xx.c", i32 215, i32 25}
!108 = !{ptr @.str.43, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/usb/smsc75xx.c", i32 168, i32 26}
!110 = !{ptr @.str.44, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/usb/smsc75xx.c", i32 238, i32 25}
!112 = !{ptr @.str.45, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/usb/smsc75xx.c", i32 245, i32 25}
!114 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/usb/smsc75xx.c", i32 263, i32 25}
!116 = !{ptr @.str.47, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/usb/smsc75xx.c", i32 1546, i32 25}
!118 = !{ptr @.str.48, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/usb/smsc75xx.c", i32 2102, i32 2}
!120 = !{ptr @.str.49, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @smsc75xx_resume.__UNIQUE_ID_ddebug395, !119, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!122 = !{ptr @.str.50, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/usb/smsc75xx.c", i32 2142, i32 25}
!124 = !{ptr @.str.51, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/usb/smsc75xx.c", i32 2161, i32 25}
!126 = !{ptr @.str.52, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/usb/smsc75xx.c", i32 973, i32 26}
!128 = !{ptr @.str.53, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/usb/smsc75xx.c", i32 984, i32 24}
!130 = !{ptr @products, !131, !"products", i1 false, i1 false}
!131 = !{!"../drivers/net/usb/smsc75xx.c", i32 2313, i32 35}
!132 = !{ptr @.str.54, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/usb/smsc75xx.c", i32 2301, i32 17}
!134 = !{ptr @smsc75xx_info, !135, !"smsc75xx_info", i1 false, i1 false}
!135 = !{!"../drivers/net/usb/smsc75xx.c", i32 2300, i32 33}
!136 = !{ptr @.str.55, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/usb/smsc75xx.c", i32 1453, i32 2}
!138 = !{ptr @.str.56, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @smsc75xx_bind._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @smsc75xx_bind._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.57, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/usb/smsc75xx.c", i32 1457, i32 25}
!143 = !{ptr @smsc75xx_bind.__key, !144, !"__key", i1 false, i1 false}
!144 = !{!"../drivers/net/usb/smsc75xx.c", i32 1470, i32 2}
!145 = !{ptr @.str.58, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @smsc75xx_bind.__key.59, !147, !"__key", i1 false, i1 false}
!147 = !{!"../drivers/net/usb/smsc75xx.c", i32 1471, i32 2}
!148 = !{ptr @.str.60, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @smsc75xx_bind.__key.61, !150, !"__key", i1 false, i1 false}
!150 = !{!"../drivers/net/usb/smsc75xx.c", i32 1473, i32 2}
!151 = !{ptr @.str.62, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.63, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/usb/smsc75xx.c", i32 1486, i32 25}
!154 = !{ptr @.str.64, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/usb/smsc75xx.c", i32 1495, i32 25}
!156 = !{ptr @.str.65, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/usb/smsc75xx.c", i32 530, i32 2}
!158 = !{ptr @.str.66, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @smsc75xx_deferred_multicast_write.__UNIQUE_ID_ddebug356, !157, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!160 = !{ptr @.str.67, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/usb/smsc75xx.c", i32 538, i32 25}
!162 = !{ptr @.str.68, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/usb/smsc75xx.c", i32 468, i32 25}
!164 = !{ptr @.str.69, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/usb/smsc75xx.c", i32 474, i32 25}
!166 = !{ptr @.str.70, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/usb/smsc75xx.c", i32 482, i32 25}
!168 = !{ptr @.str.71, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/usb/smsc75xx.c", i32 489, i32 26}
!170 = !{ptr @.str.72, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/usb/smsc75xx.c", i32 495, i32 26}
!172 = !{ptr @.str.73, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/usb/smsc75xx.c", i32 501, i32 26}
!174 = !{ptr @.str.74, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/usb/smsc75xx.c", i32 507, i32 26}
!176 = !{ptr @.str.75, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/usb/smsc75xx.c", i32 452, i32 24}
!178 = !{ptr @.str.76, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/usb/smsc75xx.c", i32 766, i32 4}
!180 = !{ptr @.str.77, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @smsc75xx_init_mac_address.__UNIQUE_ID_ddebug365, !179, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!182 = !{ptr @.str.78, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/usb/smsc75xx.c", i32 776, i32 4}
!184 = !{ptr @smsc75xx_init_mac_address.__UNIQUE_ID_ddebug366, !183, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!185 = !{ptr @.str.79, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/usb/smsc75xx.c", i32 784, i32 2}
!187 = !{ptr @smsc75xx_init_mac_address.__UNIQUE_ID_ddebug367, !186, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!188 = !{ptr @.str.80, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/usb/smsc75xx.c", i32 360, i32 26}
!190 = !{ptr @.str.81, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/usb/smsc75xx.c", i32 370, i32 26}
!192 = !{ptr @.str.82, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/usb/smsc75xx.c", i32 329, i32 26}
!194 = !{ptr @.str.83, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/usb/smsc75xx.c", i32 339, i32 24}
!196 = !{ptr @.str.84, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/usb/smsc75xx.c", i32 313, i32 25}
!198 = !{ptr @smsc75xx_netdev_ops, !199, !"smsc75xx_netdev_ops", i1 false, i1 false}
!199 = !{!"../drivers/net/usb/smsc75xx.c", i32 1434, i32 36}
!200 = !{ptr @.str.85, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/usb/smsc75xx.c", i32 558, i32 3}
!202 = !{ptr @.str.86, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @smsc75xx_set_multicast.__UNIQUE_ID_ddebug357, !201, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!204 = !{ptr @.str.87, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/usb/smsc75xx.c", i32 561, i32 3}
!206 = !{ptr @smsc75xx_set_multicast.__UNIQUE_ID_ddebug358, !205, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!207 = !{ptr @.str.88, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/usb/smsc75xx.c", i32 566, i32 3}
!209 = !{ptr @smsc75xx_set_multicast.__UNIQUE_ID_ddebug359, !208, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!210 = !{ptr @.str.89, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/usb/smsc75xx.c", i32 576, i32 3}
!212 = !{ptr @smsc75xx_set_multicast.__UNIQUE_ID_ddebug360, !211, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!213 = !{ptr @.str.90, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/usb/smsc75xx.c", i32 928, i32 25}
!215 = !{ptr @.str.91, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/usb/smsc75xx.c", i32 956, i32 25}
!217 = !{ptr @smsc75xx_ethtool_ops, !218, !"smsc75xx_ethtool_ops", i1 false, i1 false}
!218 = !{!"../drivers/net/usb/smsc75xx.c", i32 733, i32 33}
!219 = !{ptr @.str.92, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/usb/smsc75xx.c", i32 728, i32 25}
!221 = !{ptr @.str.93, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/usb/smsc75xx.c", i32 696, i32 25}
!223 = !{ptr @.str.94, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/usb/smsc75xx.c", i32 412, i32 26}
!225 = !{ptr @.str.95, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/usb/smsc75xx.c", i32 1520, i32 3}
!227 = !{ptr @.str.96, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @smsc75xx_unbind.__UNIQUE_ID_ddebug389, !226, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!229 = !{ptr @.str.97, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/usb/smsc75xx.c", i32 1050, i32 2}
!231 = !{ptr @.str.98, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @smsc75xx_reset.__UNIQUE_ID_ddebug369, !230, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!233 = !{ptr @.str.99, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/usb/smsc75xx.c", i32 1054, i32 25}
!235 = !{ptr @.str.100, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/usb/smsc75xx.c", i32 1060, i32 25}
!237 = !{ptr @.str.101, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/usb/smsc75xx.c", i32 1068, i32 25}
!239 = !{ptr @.str.102, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/usb/smsc75xx.c", i32 1084, i32 25}
!241 = !{ptr @.str.103, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/usb/smsc75xx.c", i32 1088, i32 2}
!243 = !{ptr @smsc75xx_reset.__UNIQUE_ID_ddebug370, !242, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!244 = !{ptr @.str.104, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/usb/smsc75xx.c", i32 1100, i32 25}
!246 = !{ptr @.str.105, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/usb/smsc75xx.c", i32 1116, i32 25}
!248 = !{ptr @.str.106, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/usb/smsc75xx.c", i32 1120, i32 2}
!250 = !{ptr @smsc75xx_reset.__UNIQUE_ID_ddebug371, !249, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!251 = !{ptr @.str.107, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/usb/smsc75xx.c", i32 1124, i32 25}
!253 = !{ptr @.str.108, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/usb/smsc75xx.c", i32 1128, i32 2}
!255 = !{ptr @smsc75xx_reset.__UNIQUE_ID_ddebug372, !254, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!256 = !{ptr @.str.109, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/usb/smsc75xx.c", i32 1137, i32 2}
!258 = !{ptr @smsc75xx_reset.__UNIQUE_ID_ddebug373, !257, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!259 = !{ptr @.str.110, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/usb/smsc75xx.c", i32 1154, i32 2}
!261 = !{ptr @smsc75xx_reset.__UNIQUE_ID_ddebug374, !260, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!262 = !{ptr @.str.111, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/usb/smsc75xx.c", i32 1168, i32 2}
!264 = !{ptr @smsc75xx_reset.__UNIQUE_ID_ddebug375, !263, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!265 = !{ptr @.str.112, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/usb/smsc75xx.c", i32 1173, i32 25}
!267 = !{ptr @.str.113, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/usb/smsc75xx.c", i32 1179, i32 25}
!269 = !{ptr @.str.114, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/usb/smsc75xx.c", i32 1183, i32 2}
!271 = !{ptr @smsc75xx_reset.__UNIQUE_ID_ddebug376, !270, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!272 = !{ptr @.str.115, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/usb/smsc75xx.c", i32 1188, i32 25}
!274 = !{ptr @.str.116, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/usb/smsc75xx.c", i32 1194, i32 25}
!276 = !{ptr @.str.117, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/usb/smsc75xx.c", i32 1198, i32 2}
!278 = !{ptr @smsc75xx_reset.__UNIQUE_ID_ddebug377, !277, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!279 = !{ptr @.str.118, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/usb/smsc75xx.c", i32 1208, i32 3}
!281 = !{ptr @smsc75xx_reset.__UNIQUE_ID_ddebug378, !280, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!282 = !{ptr @smsc75xx_reset.__UNIQUE_ID_ddebug379, !283, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!283 = !{!"../drivers/net/usb/smsc75xx.c", i32 1224, i32 3}
!284 = !{ptr @.str.119, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/usb/smsc75xx.c", i32 1231, i32 25}
!286 = !{ptr @.str.120, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/net/usb/smsc75xx.c", i32 1235, i32 2}
!288 = !{ptr @smsc75xx_reset.__UNIQUE_ID_ddebug380, !287, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!289 = !{ptr @.str.121, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/net/usb/smsc75xx.c", i32 1240, i32 25}
!291 = !{ptr @.str.122, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/net/usb/smsc75xx.c", i32 1244, i32 2}
!293 = !{ptr @smsc75xx_reset.__UNIQUE_ID_ddebug381, !292, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!294 = !{ptr @.str.123, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/net/usb/smsc75xx.c", i32 1248, i32 25}
!296 = !{ptr @.str.124, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/net/usb/smsc75xx.c", i32 1254, i32 25}
!298 = !{ptr @.str.125, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/net/usb/smsc75xx.c", i32 1258, i32 2}
!300 = !{ptr @smsc75xx_reset.__UNIQUE_ID_ddebug382, !299, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!301 = !{ptr @.str.126, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/usb/smsc75xx.c", i32 1262, i32 25}
!303 = !{ptr @.str.127, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/net/usb/smsc75xx.c", i32 1270, i32 26}
!305 = !{ptr @.str.128, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/net/usb/smsc75xx.c", i32 1279, i32 26}
!307 = !{ptr @.str.129, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/net/usb/smsc75xx.c", i32 1286, i32 25}
!309 = !{ptr @.str.130, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/net/usb/smsc75xx.c", i32 1292, i32 25}
!311 = !{ptr @.str.131, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/net/usb/smsc75xx.c", i32 1299, i32 25}
!313 = !{ptr @.str.132, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/net/usb/smsc75xx.c", i32 1307, i32 25}
!315 = !{ptr @.str.133, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/net/usb/smsc75xx.c", i32 1317, i32 2}
!317 = !{ptr @smsc75xx_reset.__UNIQUE_ID_ddebug383, !316, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!318 = !{ptr @.str.134, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/net/usb/smsc75xx.c", i32 1327, i32 25}
!320 = !{ptr @.str.135, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/net/usb/smsc75xx.c", i32 1333, i32 25}
!322 = !{ptr @.str.136, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/net/usb/smsc75xx.c", i32 1342, i32 25}
!324 = !{ptr @.str.137, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/net/usb/smsc75xx.c", i32 1349, i32 25}
!326 = !{ptr @.str.138, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/net/usb/smsc75xx.c", i32 1356, i32 25}
!328 = !{ptr @.str.139, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/net/usb/smsc75xx.c", i32 1362, i32 25}
!330 = !{ptr @.str.140, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/net/usb/smsc75xx.c", i32 1370, i32 25}
!332 = !{ptr @.str.141, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/net/usb/smsc75xx.c", i32 1374, i32 2}
!334 = !{ptr @smsc75xx_reset.__UNIQUE_ID_ddebug384, !333, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!335 = !{ptr @.str.142, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/net/usb/smsc75xx.c", i32 1378, i32 25}
!337 = !{ptr @.str.143, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/net/usb/smsc75xx.c", i32 1386, i32 25}
!339 = !{ptr @.str.144, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/net/usb/smsc75xx.c", i32 1390, i32 2}
!341 = !{ptr @smsc75xx_reset.__UNIQUE_ID_ddebug385, !340, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!342 = !{ptr @.str.145, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/net/usb/smsc75xx.c", i32 1394, i32 25}
!344 = !{ptr @.str.146, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/net/usb/smsc75xx.c", i32 1412, i32 2}
!346 = !{ptr @smsc75xx_reset.__UNIQUE_ID_ddebug386, !345, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!347 = !{ptr @.str.147, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/net/usb/smsc75xx.c", i32 1416, i32 25}
!349 = !{ptr @.str.148, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/net/usb/smsc75xx.c", i32 1424, i32 25}
!351 = !{ptr @.str.149, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/net/usb/smsc75xx.c", i32 1428, i32 2}
!353 = !{ptr @smsc75xx_reset.__UNIQUE_ID_ddebug387, !352, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!354 = !{ptr @.str.150, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/net/usb/smsc75xx.c", i32 1430, i32 2}
!356 = !{ptr @smsc75xx_reset.__UNIQUE_ID_ddebug388, !355, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!357 = !{ptr @.str.151, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/net/usb/smsc75xx.c", i32 795, i32 25}
!359 = !{ptr @.str.152, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/net/usb/smsc75xx.c", i32 801, i32 25}
!361 = !{ptr @.str.153, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/net/usb/smsc75xx.c", i32 808, i32 25}
!363 = !{ptr @.str.154, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/net/usb/smsc75xx.c", i32 814, i32 25}
!365 = !{ptr @.str.155, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/net/usb/smsc75xx.c", i32 839, i32 26}
!367 = !{ptr @.str.156, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/net/usb/smsc75xx.c", i32 846, i32 25}
!369 = !{ptr @.str.157, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/net/usb/smsc75xx.c", i32 872, i32 2}
!371 = !{ptr @.str.158, !370, !"<string literal>", i1 false, i1 false}
!372 = !{ptr @smsc75xx_phy_initialize.__UNIQUE_ID_ddebug368, !370, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!373 = !{ptr @.str.159, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/net/usb/smsc75xx.c", i32 1005, i32 25}
!375 = !{ptr @.str.160, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/net/usb/smsc75xx.c", i32 659, i32 25}
!377 = !{ptr @.str.161, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/net/usb/smsc75xx.c", i32 666, i32 2}
!379 = !{ptr @.str.162, !378, !"<string literal>", i1 false, i1 false}
!380 = !{ptr @smsc75xx_status.__UNIQUE_ID_ddebug364, !378, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!381 = !{ptr @.str.163, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/net/usb/smsc75xx.c", i32 671, i32 25}
!383 = !{ptr @.str.164, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/net/usb/smsc75xx.c", i32 639, i32 25}
!385 = !{ptr @.str.165, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/net/usb/smsc75xx.c", i32 648, i32 2}
!387 = !{ptr @.str.166, !386, !"<string literal>", i1 false, i1 false}
!388 = !{ptr @smsc75xx_link_reset.__UNIQUE_ID_ddebug363, !386, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!389 = !{ptr @.str.167, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/net/usb/smsc75xx.c", i32 604, i32 3}
!391 = !{ptr @.str.168, !390, !"<string literal>", i1 false, i1 false}
!392 = !{ptr @smsc75xx_update_flowcontrol.__UNIQUE_ID_ddebug361, !390, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!393 = !{ptr @.str.169, !390, !"<string literal>", i1 false, i1 false}
!394 = !{ptr @.str.170, !390, !"<string literal>", i1 false, i1 false}
!395 = !{ptr @.str.171, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/net/usb/smsc75xx.c", i32 608, i32 3}
!397 = !{ptr @smsc75xx_update_flowcontrol.__UNIQUE_ID_ddebug362, !396, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!398 = !{ptr @.str.172, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/net/usb/smsc75xx.c", i32 613, i32 25}
!400 = !{ptr @.str.173, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/net/usb/smsc75xx.c", i32 619, i32 25}
!402 = !{ptr @.str.174, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/net/usb/smsc75xx.c", i32 2204, i32 4}
!404 = !{ptr @.str.175, !403, !"<string literal>", i1 false, i1 false}
!405 = !{ptr @smsc75xx_rx_fixup.__UNIQUE_ID_ddebug396, !403, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!406 = !{ptr @.str.176, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/net/usb/smsc75xx.c", i32 2216, i32 5}
!408 = !{ptr @smsc75xx_rx_fixup.__UNIQUE_ID_ddebug397, !407, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!409 = !{ptr @.str.177, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/net/usb/smsc75xx.c", i32 2235, i32 27}
!411 = !{i32 1, !"wchar_size", i32 2}
!412 = !{i32 1, !"min_enum_size", i32 4}
!413 = !{i32 8, !"branch-target-enforcement", i32 0}
!414 = !{i32 8, !"sign-return-address", i32 0}
!415 = !{i32 8, !"sign-return-address-all", i32 0}
!416 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!417 = !{i32 7, !"uwtable", i32 1}
!418 = !{i32 7, !"frame-pointer", i32 2}
!419 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!420 = !{!"auto-init"}
!421 = !{!"branch_weights", i32 1, i32 2000}
!422 = !{i64 2156762938, i64 2156763428, i64 2156762975, i64 2156763031, i64 2156763065, i64 2156763089, i64 2156763130, i64 2156763151, i64 2156763179, i64 2156763213}
!423 = !{ptr @usbnet_read_cmd, ptr @usbnet_read_cmd_nopm}
!424 = !{ptr @usbnet_write_cmd, ptr @usbnet_write_cmd_nopm}
!425 = !{i64 2156764659, i64 2156765150, i64 2156764696, i64 2156764752, i64 2156764786, i64 2156764810, i64 2156764851, i64 2156764872, i64 2156764900, i64 2156764934}
!426 = !{i64 2149009701, i64 2149009706, i64 2149009719, i64 2149009763, i64 2149009797, i64 2149009818}
!427 = !{i8 0, i8 2}
!428 = !{!"branch_weights", i32 2000, i32 1}
!429 = !{!"branch_weights", i32 2000, i32 2002}
!430 = !{i64 2156769133, i64 2156769624, i64 2156769170, i64 2156769226, i64 2156769260, i64 2156769284, i64 2156769325, i64 2156769346, i64 2156769374, i64 2156769408}
!431 = !{i64 2156770720, i64 2156771211, i64 2156770757, i64 2156770813, i64 2156770847, i64 2156770871, i64 2156770912, i64 2156770933, i64 2156770961, i64 2156770995}
!432 = !{i64 2156772362, i64 2156772853, i64 2156772399, i64 2156772455, i64 2156772489, i64 2156772513, i64 2156772554, i64 2156772575, i64 2156772603, i64 2156772637}
!433 = !{i64 2156773949, i64 2156774440, i64 2156773986, i64 2156774042, i64 2156774076, i64 2156774100, i64 2156774141, i64 2156774162, i64 2156774190, i64 2156774224}
