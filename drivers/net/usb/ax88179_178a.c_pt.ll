; ModuleID = '/llk/IR_all_yes/drivers/net/usb/ax88179_178a.c_pt.bc'
source_filename = "../drivers/net/usb/ax88179_178a.c"
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.driver_info = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.anon.122 = type { i8, i8, i8, i8, i8 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
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
%struct.ax88179_data = type { i8, i8, i16, i16 }
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
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ifreq = type { %union.anon.104, %union.anon.105 }
%union.anon.104 = type { [16 x i8] }
%union.anon.105 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_cmd = type { i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i32, i32, i16, i8, i8, i32, [2 x i32] }

@__initcall__kmod_ax88179_178a__358_1933_ax88179_178a_driver_init6 = internal global ptr @ax88179_178a_driver_init, section ".initcall6.init", align 4
@ax88179_178a_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @usbnet_probe, ptr @usbnet_disconnect, ptr null, ptr @ax88179_suspend, ptr @ax88179_resume, ptr @ax88179_resume, ptr null, ptr null, ptr @products, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 96 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_ax88179_178a_driver_exit = internal global ptr @ax88179_178a_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description359 = internal constant [86 x i8] c"ax88179_178a.description=ASIX AX88179/178A based USB 3.0/2.0 Gigabit Ethernet Devices\00", section ".modinfo", align 1
@__UNIQUE_ID_file360 = internal constant [47 x i8] c"ax88179_178a.file=drivers/net/usb/ax88179_178a\00", section ".modinfo", align 1
@__UNIQUE_ID_license361 = internal constant [25 x i8] c"ax88179_178a.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ax88179_178a\00", [19 x i8] zeroinitializer }, align 32
@products = internal constant { [11 x %struct.usb_device_id], [88 x i8] } { [11 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 2965, i16 6032, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88179_info to i32) }, %struct.usb_device_id { i16 3, i16 2965, i16 6026, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88178a_info to i32) }, %struct.usb_device_id { i16 3, i16 1204, i16 13840, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @cypress_GX3_info to i32) }, %struct.usb_device_id { i16 3, i16 8193, i16 18944, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @dlink_dub1312_info to i32) }, %struct.usb_device_id { i16 3, i16 3574, i16 114, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @sitecom_info to i32) }, %struct.usb_device_id { i16 3, i16 1256, i16 -24320, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @samsung_info to i32) }, %struct.usb_device_id { i16 3, i16 6127, i16 12363, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @lenovo_info to i32) }, %struct.usb_device_id { i16 3, i16 1293, i16 296, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @belkin_info to i32) }, %struct.usb_device_id { i16 3, i16 2352, i16 2579, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @toshiba_info to i32) }, %struct.usb_device_id { i16 3, i16 1809, i16 377, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @mct_info to i32) }, %struct.usb_device_id zeroinitializer], [88 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to read reg index 0x%04x: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to write reg index 0x%04x: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ax88179_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.3, i32 96, ptr @ax88179_bind, ptr @ax88179_unbind, ptr @ax88179_reset, ptr @ax88179_stop, ptr null, ptr null, ptr @ax88179_status, ptr @ax88179_link_reset, ptr @ax88179_rx_fixup, ptr @ax88179_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@ax88178a_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.16, i32 96, ptr @ax88179_bind, ptr @ax88179_unbind, ptr @ax88179_reset, ptr @ax88179_stop, ptr null, ptr null, ptr @ax88179_status, ptr @ax88179_link_reset, ptr @ax88179_rx_fixup, ptr @ax88179_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@cypress_GX3_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.17, i32 96, ptr @ax88179_bind, ptr @ax88179_unbind, ptr @ax88179_reset, ptr @ax88179_stop, ptr null, ptr null, ptr @ax88179_status, ptr @ax88179_link_reset, ptr @ax88179_rx_fixup, ptr @ax88179_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@dlink_dub1312_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.18, i32 96, ptr @ax88179_bind, ptr @ax88179_unbind, ptr @ax88179_reset, ptr @ax88179_stop, ptr null, ptr null, ptr @ax88179_status, ptr @ax88179_link_reset, ptr @ax88179_rx_fixup, ptr @ax88179_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@sitecom_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.19, i32 96, ptr @ax88179_bind, ptr @ax88179_unbind, ptr @ax88179_reset, ptr @ax88179_stop, ptr null, ptr null, ptr @ax88179_status, ptr @ax88179_link_reset, ptr @ax88179_rx_fixup, ptr @ax88179_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@samsung_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.20, i32 96, ptr @ax88179_bind, ptr @ax88179_unbind, ptr @ax88179_reset, ptr @ax88179_stop, ptr null, ptr null, ptr @ax88179_status, ptr @ax88179_link_reset, ptr @ax88179_rx_fixup, ptr @ax88179_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@lenovo_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.21, i32 96, ptr @ax88179_bind, ptr @ax88179_unbind, ptr @ax88179_reset, ptr @ax88179_stop, ptr null, ptr null, ptr @ax88179_status, ptr @ax88179_link_reset, ptr @ax88179_rx_fixup, ptr @ax88179_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@belkin_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.22, i32 96, ptr @ax88179_bind, ptr @ax88179_unbind, ptr @ax88179_reset, ptr @ax88179_stop, ptr null, ptr null, ptr @ax88179_status, ptr @ax88179_link_reset, ptr @ax88179_rx_fixup, ptr @ax88179_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@toshiba_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.23, i32 96, ptr @ax88179_bind, ptr @ax88179_unbind, ptr @ax88179_reset, ptr @ax88179_stop, ptr null, ptr null, ptr @ax88179_status, ptr @ax88179_link_reset, ptr @ax88179_rx_fixup, ptr @ax88179_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@mct_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.24, i32 96, ptr @ax88179_bind, ptr @ax88179_unbind, ptr @ax88179_reset, ptr @ax88179_stop, ptr null, ptr null, ptr @ax88179_status, ptr @ax88179_link_reset, ptr @ax88179_rx_fixup, ptr @ax88179_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ASIX AX88179 USB 3.0 Gigabit Ethernet\00", [58 x i8] zeroinitializer }, align 32
@AX88179_BULKIN_SIZE = internal constant { [4 x %struct.anon.122], [44 x i8] } { [4 x %struct.anon.122] [%struct.anon.122 { i8 7, i8 79, i8 0, i8 18, i8 -1 }, %struct.anon.122 { i8 7, i8 32, i8 3, i8 22, i8 -1 }, %struct.anon.122 { i8 7, i8 -82, i8 7, i8 24, i8 -1 }, %struct.anon.122 { i8 7, i8 -52, i8 76, i8 24, i8 8 }], [44 x i8] zeroinitializer }, align 32
@ax88179_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @usbnet_open, ptr @usbnet_stop, ptr @usbnet_start_xmit, ptr null, ptr null, ptr null, ptr @ax88179_set_multicast, ptr @ax88179_set_mac_addr, ptr @eth_validate_addr, ptr null, ptr @ax88179_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @ax88179_change_mtu, ptr null, ptr @usbnet_tx_timeout, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ax88179_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ax88179_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr @ax88179_get_wol, ptr @ax88179_set_wol, ptr @usbnet_get_msglevel, ptr @usbnet_set_msglevel, ptr @usbnet_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr @ax88179_get_eeprom_len, ptr @ax88179_get_eeprom, ptr @ax88179_set_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_ts_info, ptr null, ptr null, ptr @ax88179_get_eee, ptr @ax88179_set_eee, ptr null, ptr null, ptr null, ptr null, ptr @ax88179_get_link_ksettings, ptr @ax88179_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@ax88179_get_mac_addr.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 1, i8 70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ax88179_get_mac_addr\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/net/usb/ax88179_178a.c\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"MAC address read from device tree\00", [62 x i8] zeroinitializer }, align 32
@ax88179_get_mac_addr.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.7, i8 1, i8 71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"MAC address read from ASIX chip\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"invalid MAC address, using random\0A\00", [61 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@ax88179_set_eeprom.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.5, ptr @.str.10, i8 0, i8 -100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ax88179_set_eeprom\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"write EEPROM len %d, offset %d, magic 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to read EEPROM at offset 0x%02x.\0A\00", [55 x i8] zeroinitializer }, align 32
@ax88179_set_eeprom.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.5, ptr @.str.12, i8 0, i8 -90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"write to EEPROM at offset 0x%02x, data 0x%04x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to write EEPROM at offset 0x%02x.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to reload EEPROM data\0A\00", [34 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ax88179 - Link status is: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ASIX AX88178A USB 2.0 Gigabit Ethernet\00", [57 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Cypress GX3 SuperSpeed to Gigabit Ethernet Controller\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"D-Link DUB-1312 USB 3.0 to Gigabit Ethernet Adapter\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Sitecom USB 3.0 to Gigabit Adapter\00", [61 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Samsung USB Ethernet Adapter\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Lenovo OneLinkDock Gigabit LAN\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Belkin USB Ethernet Adapter\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Toshiba USB Ethernet Adapter\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"MCT USB 3.0 Gigabit Ethernet Adapter\00", [59 x i8] zeroinitializer }, align 32
@switch.table.ax88179_led_setting = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 -25311, i16 -26367, i16 -28415], [26 x i8] zeroinitializer }, align 32
@switch.table.ax88179_led_setting.25 = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 -25311, i16 -26367, i16 -28415], [26 x i8] zeroinitializer }, align 32
@switch.table.ax88179_led_setting.26 = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 -25311, i16 -26367, i16 -28415], [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 16]
@___asan_gen_.28 = private unnamed_addr constant [20 x i8] c"ax88179_178a_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1921, i32 26 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1933, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant [9 x i8] c"products\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1875, i32 35 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 205, i32 25 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 228, i32 25 }
@___asan_gen_.43 = private unnamed_addr constant [13 x i8] c"ax88179_info\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1745, i32 33 }
@___asan_gen_.46 = private unnamed_addr constant [14 x i8] c"ax88178a_info\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1758, i32 33 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"cypress_GX3_info\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1771, i32 33 }
@___asan_gen_.52 = private unnamed_addr constant [19 x i8] c"dlink_dub1312_info\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1784, i32 33 }
@___asan_gen_.55 = private unnamed_addr constant [13 x i8] c"sitecom_info\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1797, i32 33 }
@___asan_gen_.58 = private unnamed_addr constant [13 x i8] c"samsung_info\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1810, i32 33 }
@___asan_gen_.61 = private unnamed_addr constant [12 x i8] c"lenovo_info\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1823, i32 33 }
@___asan_gen_.64 = private unnamed_addr constant [12 x i8] c"belkin_info\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1836, i32 33 }
@___asan_gen_.67 = private unnamed_addr constant [13 x i8] c"toshiba_info\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1849, i32 33 }
@___asan_gen_.70 = private unnamed_addr constant [9 x i8] c"mct_info\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1862, i32 33 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1746, i32 17 }
@___asan_gen_.76 = private unnamed_addr constant [20 x i8] c"AX88179_BULKIN_SIZE\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 181, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [19 x i8] c"ax88179_netdev_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1029, i32 36 }
@___asan_gen_.82 = private unnamed_addr constant [20 x i8] c"ax88179_ethtool_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 893, i32 33 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1303, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1308, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1315, i32 25 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 626, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 649, i32 20 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 666, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 671, i32 20 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 680, i32 19 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 349, i32 25 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1759, i32 17 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1772, i32 17 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1785, i32 17 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1798, i32 17 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1811, i32 17 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1824, i32 17 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1837, i32 17 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1850, i32 17 }
@___asan_gen_.145 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.146 = private constant [34 x i8] c"../drivers/net/usb/ax88179_178a.c\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1863, i32 17 }
@___asan_gen_.148 = private unnamed_addr constant [33 x i8] c"switch.table.ax88179_led_setting\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [36 x i8] c"switch.table.ax88179_led_setting.25\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [36 x i8] c"switch.table.ax88179_led_setting.26\00", align 1
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_description359, ptr @__UNIQUE_ID_file360, ptr @__UNIQUE_ID_license361, ptr @__exitcall_ax88179_178a_driver_exit, ptr @__initcall__kmod_ax88179_178a__358_1933_ax88179_178a_driver_init6, ptr @ax88179_178a_driver_exit, ptr @ax88179_178a_driver, ptr @.str, ptr @products, ptr @.str.1, ptr @.str.2, ptr @ax88179_info, ptr @ax88178a_info, ptr @cypress_GX3_info, ptr @dlink_dub1312_info, ptr @sitecom_info, ptr @samsung_info, ptr @lenovo_info, ptr @belkin_info, ptr @toshiba_info, ptr @mct_info, ptr @.str.3, ptr @AX88179_BULKIN_SIZE, ptr @ax88179_netdev_ops, ptr @ax88179_ethtool_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @switch.table.ax88179_led_setting, ptr @switch.table.ax88179_led_setting.25, ptr @switch.table.ax88179_led_setting.26], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax88179_178a_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @products to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax88179_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax88178a_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cypress_GX3_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlink_dub1312_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sitecom_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lenovo_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @belkin_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @toshiba_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mct_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @AX88179_BULKIN_SIZE to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax88179_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax88179_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ax88179_led_setting to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ax88179_led_setting.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ax88179_led_setting.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ax88179_178a_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @ax88179_178a_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ax88179_178a_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_deregister(ptr noundef nonnull @ax88179_178a_driver) #10
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
define internal i32 @ax88179_suspend(ptr noundef %intf, [1 x i32] %message.coerce) #2 align 64 {
entry:
  %buf.i46 = alloca i16, align 2
  %buf.i35 = alloca i16, align 2
  %buf.i26 = alloca i16, align 2
  %buf.i18 = alloca i16, align 2
  %buf.i = alloca i16, align 2
  %tmp8 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp8) #10
  %2 = ptrtoint ptr %tmp8 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %tmp8, align 1, !annotation !97
  %call2 = tail call i32 @usbnet_suspend(ptr noundef %intf, [1 x i32] %message.coerce) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #10
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %buf.i, align 2, !annotation !97
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !98

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 194, 0\0A.popsection", ""() #10, !srcloc !99
  unreachable

do.end9.i.i:                                      ; preds = %entry
  %call.i.i = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 34, i16 noundef zeroext 2, ptr noundef nonnull %buf.i, i16 noundef zeroext 2) #10, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then19.i.i, label %do.end9.i.i.do.end9.i.i23_crit_edge, !prof !98

do.end9.i.i.do.end9.i.i23_crit_edge:              ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i23

if.then19.i.i:                                    ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %5, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef %call.i.i) #13
  br label %do.end9.i.i23

do.end9.i.i23:                                    ; preds = %if.then19.i.i, %do.end9.i.i.do.end9.i.i23_crit_edge
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %buf.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #10
  %8 = and i16 %7, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i18) #10
  %9 = ptrtoint ptr %buf.i18 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %buf.i18, align 2
  %call.i.i21 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 34, i16 noundef zeroext 2, ptr noundef nonnull %buf.i18, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i21)
  %cmp.i.i22 = icmp slt i32 %call.i.i21, 0
  br i1 %cmp.i.i22, label %if.then19.i.i25, label %do.end9.i.i23.do.end9.i.i31_crit_edge, !prof !98

do.end9.i.i23.do.end9.i.i31_crit_edge:            ; preds = %do.end9.i.i23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i31

if.then19.i.i25:                                  ; preds = %do.end9.i.i23
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i24 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %10 = ptrtoint ptr %net.i.i24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net.i.i24, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %11, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %call.i.i21) #13
  br label %do.end9.i.i31

do.end9.i.i31:                                    ; preds = %if.then19.i.i25, %do.end9.i.i23.do.end9.i.i31_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i18) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i26) #10
  %12 = ptrtoint ptr %buf.i26 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %buf.i26, align 2, !annotation !97
  %call.i.i29 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 38, i16 noundef zeroext 2, ptr noundef nonnull %buf.i26, i16 noundef zeroext 2) #10, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i29)
  %cmp.i.i30 = icmp slt i32 %call.i.i29, 0
  br i1 %cmp.i.i30, label %if.then19.i.i33, label %do.end9.i.i31.do.end9.i.i40_crit_edge, !prof !98

do.end9.i.i31.do.end9.i.i40_crit_edge:            ; preds = %do.end9.i.i31
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i40

if.then19.i.i33:                                  ; preds = %do.end9.i.i31
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i32 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %13 = ptrtoint ptr %net.i.i32 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net.i.i32, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %14, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef %call.i.i29) #13
  br label %do.end9.i.i40

do.end9.i.i40:                                    ; preds = %if.then19.i.i33, %do.end9.i.i31.do.end9.i.i40_crit_edge
  %15 = ptrtoint ptr %buf.i26 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %buf.i26, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i26) #10
  %17 = or i16 %16, 12288
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i35) #10
  %18 = ptrtoint ptr %buf.i35 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %buf.i35, align 2
  %call.i.i38 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 38, i16 noundef zeroext 2, ptr noundef nonnull %buf.i35, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i38)
  %cmp.i.i39 = icmp slt i32 %call.i.i38, 0
  br i1 %cmp.i.i39, label %if.then19.i.i42, label %do.end9.i.i40.do.end9.i14.i_crit_edge, !prof !98

do.end9.i.i40.do.end9.i14.i_crit_edge:            ; preds = %do.end9.i.i40
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i14.i

if.then19.i.i42:                                  ; preds = %do.end9.i.i40
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i41 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %19 = ptrtoint ptr %net.i.i41 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net.i.i41, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %20, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %call.i.i38) #13
  br label %do.end9.i14.i

do.end9.i14.i:                                    ; preds = %if.then19.i.i42, %do.end9.i.i40.do.end9.i14.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i35) #10
  %21 = ptrtoint ptr %tmp8 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %tmp8, align 1
  %call.i12.i = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 51, i16 noundef zeroext 1, ptr noundef nonnull %tmp8, i16 noundef zeroext 1) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i)
  %cmp.i13.i = icmp slt i32 %call.i12.i, 0
  br i1 %cmp.i13.i, label %if.then19.i17.i, label %do.end9.i14.i.do.end9.i.i51_crit_edge, !prof !98

do.end9.i14.i.do.end9.i.i51_crit_edge:            ; preds = %do.end9.i14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i51

if.then19.i17.i:                                  ; preds = %do.end9.i14.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i15.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %22 = ptrtoint ptr %net.i15.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net.i15.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %23, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %call.i12.i) #13
  br label %do.end9.i.i51

do.end9.i.i51:                                    ; preds = %if.then19.i17.i, %do.end9.i14.i.do.end9.i.i51_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i46) #10
  %24 = ptrtoint ptr %buf.i46 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %buf.i46, align 2
  %call.i.i49 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 11, i16 noundef zeroext 2, ptr noundef nonnull %buf.i46, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i49)
  %cmp.i.i50 = icmp slt i32 %call.i.i49, 0
  br i1 %cmp.i.i50, label %if.then19.i.i53, label %do.end9.i.i51.ax88179_write_cmd_nopm.exit54_crit_edge, !prof !98

do.end9.i.i51.ax88179_write_cmd_nopm.exit54_crit_edge: ; preds = %do.end9.i.i51
  call void @__sanitizer_cov_trace_pc() #12
  br label %ax88179_write_cmd_nopm.exit54

if.then19.i.i53:                                  ; preds = %do.end9.i.i51
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i52 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %25 = ptrtoint ptr %net.i.i52 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %net.i.i52, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %26, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %call.i.i49) #13
  br label %ax88179_write_cmd_nopm.exit54

ax88179_write_cmd_nopm.exit54:                    ; preds = %if.then19.i.i53, %do.end9.i.i51.ax88179_write_cmd_nopm.exit54_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i46) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp8) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax88179_resume(ptr noundef %intf) #2 align 64 {
entry:
  %buf.i73 = alloca i16, align 2
  %buf.i46 = alloca i16, align 2
  %buf.i37 = alloca i16, align 2
  %buf.i28 = alloca i16, align 2
  %tmp8.i = alloca i8, align 1
  %buf.i16 = alloca i16, align 2
  %buf.i = alloca i16, align 2
  %tmp8 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp8) #10
  %2 = ptrtoint ptr %tmp8 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %tmp8, align 1, !annotation !97
  tail call void @usbnet_link_change(ptr noundef %1, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #10
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %buf.i, align 2
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !98

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #10, !srcloc !102
  unreachable

do.end9.i.i:                                      ; preds = %entry
  %call.i.i = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 38, i16 noundef zeroext 2, ptr noundef nonnull %buf.i, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then19.i.i, label %do.end9.i.i.do.end9.i.i21_crit_edge, !prof !98

do.end9.i.i.do.end9.i.i21_crit_edge:              ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i21

if.then19.i.i:                                    ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %5, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %call.i.i) #13
  br label %do.end9.i.i21

do.end9.i.i21:                                    ; preds = %if.then19.i.i, %do.end9.i.i.do.end9.i.i21_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %6(i32 noundef 214748000) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i16) #10
  %7 = ptrtoint ptr %buf.i16 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 8192, ptr %buf.i16, align 2
  %call.i.i19 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 38, i16 noundef zeroext 2, ptr noundef nonnull %buf.i16, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i19)
  %cmp.i.i20 = icmp slt i32 %call.i.i19, 0
  br i1 %cmp.i.i20, label %if.then19.i.i23, label %do.end9.i.i21.do.end9.i.i78_crit_edge, !prof !98

do.end9.i.i21.do.end9.i.i78_crit_edge:            ; preds = %do.end9.i.i21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i78

if.then19.i.i23:                                  ; preds = %do.end9.i.i21
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i22 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %net.i.i22 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net.i.i22, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %9, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %call.i.i19) #13
  br label %do.end9.i.i78

do.end9.i.i78:                                    ; preds = %if.then19.i.i23, %do.end9.i.i21.do.end9.i.i78_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i16) #10
  call void @msleep(i32 noundef 200) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp8.i) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i73) #10
  %10 = ptrtoint ptr %buf.i73 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %buf.i73, align 2, !annotation !97
  %call.i.i76 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext 4, i8 noundef zeroext -64, i16 noundef zeroext 67, i16 noundef zeroext 1, ptr noundef nonnull %buf.i73, i16 noundef zeroext 2) #10, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i76)
  %cmp.i.i77 = icmp slt i32 %call.i.i76, 0
  br i1 %cmp.i.i77, label %ax88179_read_cmd_nopm.exit81.thread, label %if.end2.i, !prof !98

ax88179_read_cmd_nopm.exit81.thread:              ; preds = %do.end9.i.i78
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i79 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %11 = ptrtoint ptr %net.i.i79 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net.i.i79, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %12, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %call.i.i76) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i73) #10
  br label %do.end9.i38.i

if.end2.i:                                        ; preds = %do.end9.i.i78
  %13 = ptrtoint ptr %buf.i73 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %buf.i73, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i73) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %14)
  %cmp3.i = icmp eq i16 %14, -1
  %15 = and i16 %14, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool6.not.i = icmp eq i16 %15, 0
  %or.cond.i = or i1 %cmp3.i, %tobool6.not.i
  br i1 %or.cond.i, label %if.end2.i.do.end9.i38.i_crit_edge, label %do.end9.i38.i69

if.end2.i.do.end9.i38.i_crit_edge:                ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i38.i

do.end9.i38.i69:                                  ; preds = %if.end2.i
  %16 = ptrtoint ptr %tmp8.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %tmp8.i, align 1
  %call.i36.i67 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 51, i16 noundef zeroext 1, ptr noundef nonnull %tmp8.i, i16 noundef zeroext 1) #10, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i67)
  %cmp.i37.i68 = icmp slt i32 %call.i36.i67, 0
  br i1 %cmp.i37.i68, label %if.then19.i41.i71, label %do.end9.i38.i69.do.end9.i14.i60_crit_edge, !prof !98

do.end9.i38.i69.do.end9.i14.i60_crit_edge:        ; preds = %do.end9.i38.i69
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i14.i60

if.then19.i41.i71:                                ; preds = %do.end9.i38.i69
  call void @__sanitizer_cov_trace_pc() #12
  %net.i39.i70 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %17 = ptrtoint ptr %net.i39.i70 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net.i39.i70, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %18, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %call.i36.i67) #13
  br label %do.end9.i14.i60

do.end9.i14.i60:                                  ; preds = %if.then19.i41.i71, %do.end9.i38.i69.do.end9.i14.i60_crit_edge
  %19 = ptrtoint ptr %tmp8.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tmp8.i, align 1
  %21 = or i8 %20, 8
  store i8 %21, ptr %tmp8.i, align 1
  %call.i12.i58 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 51, i16 noundef zeroext 1, ptr noundef nonnull %tmp8.i, i16 noundef zeroext 1) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i58)
  %cmp.i13.i59 = icmp slt i32 %call.i12.i58, 0
  br i1 %cmp.i13.i59, label %if.then19.i17.i62, label %do.end9.i14.i60.do.end9.i.i51_crit_edge, !prof !98

do.end9.i14.i60.do.end9.i.i51_crit_edge:          ; preds = %do.end9.i14.i60
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i51

if.then19.i17.i62:                                ; preds = %do.end9.i14.i60
  call void @__sanitizer_cov_trace_pc() #12
  %net.i15.i61 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %22 = ptrtoint ptr %net.i15.i61 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net.i15.i61, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %23, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %call.i12.i58) #13
  br label %do.end9.i.i51

do.end9.i.i51:                                    ; preds = %if.then19.i17.i62, %do.end9.i14.i60.do.end9.i.i51_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i46) #10
  %24 = ptrtoint ptr %buf.i46 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %buf.i46, align 2, !annotation !97
  %call.i.i49 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 38, i16 noundef zeroext 2, ptr noundef nonnull %buf.i46, i16 noundef zeroext 2) #10, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i49)
  %cmp.i.i50 = icmp slt i32 %call.i.i49, 0
  br i1 %cmp.i.i50, label %if.then19.i.i53, label %do.end9.i.i51.do.end9.i.i42_crit_edge, !prof !98

do.end9.i.i51.do.end9.i.i42_crit_edge:            ; preds = %do.end9.i.i51
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i42

if.then19.i.i53:                                  ; preds = %do.end9.i.i51
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i52 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %25 = ptrtoint ptr %net.i.i52 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %net.i.i52, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %26, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef %call.i.i49) #13
  br label %do.end9.i.i42

do.end9.i.i42:                                    ; preds = %if.then19.i.i53, %do.end9.i.i51.do.end9.i.i42_crit_edge
  %27 = ptrtoint ptr %buf.i46 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %buf.i46, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i46) #10
  %29 = or i16 %28, 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i37) #10
  %30 = ptrtoint ptr %buf.i37 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %buf.i37, align 2
  %call.i.i40 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 38, i16 noundef zeroext 2, ptr noundef nonnull %buf.i37, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i40)
  %cmp.i.i41 = icmp slt i32 %call.i.i40, 0
  br i1 %cmp.i.i41, label %if.then19.i.i44, label %do.end9.i.i42.ax88179_write_cmd_nopm.exit45_crit_edge, !prof !98

do.end9.i.i42.ax88179_write_cmd_nopm.exit45_crit_edge: ; preds = %do.end9.i.i42
  call void @__sanitizer_cov_trace_pc() #12
  br label %ax88179_write_cmd_nopm.exit45

if.then19.i.i44:                                  ; preds = %do.end9.i.i42
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i43 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %31 = ptrtoint ptr %net.i.i43 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %net.i.i43, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %32, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %call.i.i40) #13
  br label %ax88179_write_cmd_nopm.exit45

ax88179_write_cmd_nopm.exit45:                    ; preds = %if.then19.i.i44, %do.end9.i.i42.ax88179_write_cmd_nopm.exit45_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i37) #10
  br label %do.end9.i38.i

do.end9.i38.i:                                    ; preds = %ax88179_write_cmd_nopm.exit45, %if.end2.i.do.end9.i38.i_crit_edge, %ax88179_read_cmd_nopm.exit81.thread
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp8.i) #10
  %call.i36.i = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 51, i16 noundef zeroext 1, ptr noundef nonnull %tmp8, i16 noundef zeroext 1) #10, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i)
  %cmp.i37.i = icmp slt i32 %call.i36.i, 0
  br i1 %cmp.i37.i, label %if.then19.i41.i, label %do.end9.i38.i.do.end9.i14.i_crit_edge, !prof !98

do.end9.i38.i.do.end9.i14.i_crit_edge:            ; preds = %do.end9.i38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i14.i

if.then19.i41.i:                                  ; preds = %do.end9.i38.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i39.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %33 = ptrtoint ptr %net.i39.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %net.i39.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %34, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %call.i36.i) #13
  br label %do.end9.i14.i

do.end9.i14.i:                                    ; preds = %if.then19.i41.i, %do.end9.i38.i.do.end9.i14.i_crit_edge
  %35 = ptrtoint ptr %tmp8 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %tmp8, align 1
  %37 = or i8 %36, 3
  store i8 %37, ptr %tmp8, align 1
  %call.i12.i = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 51, i16 noundef zeroext 1, ptr noundef nonnull %tmp8, i16 noundef zeroext 1) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i)
  %cmp.i13.i = icmp slt i32 %call.i12.i, 0
  br i1 %cmp.i13.i, label %if.then19.i17.i, label %do.end9.i14.i.do.end9.i.i33_crit_edge, !prof !98

do.end9.i14.i.do.end9.i.i33_crit_edge:            ; preds = %do.end9.i14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i33

if.then19.i17.i:                                  ; preds = %do.end9.i14.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i15.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %38 = ptrtoint ptr %net.i15.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %net.i15.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %39, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %call.i12.i) #13
  br label %do.end9.i.i33

do.end9.i.i33:                                    ; preds = %if.then19.i17.i, %do.end9.i14.i.do.end9.i.i33_crit_edge
  call void @msleep(i32 noundef 100) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i28) #10
  %40 = ptrtoint ptr %buf.i28 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 -22013, ptr %buf.i28, align 2
  %call.i.i31 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %1, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 11, i16 noundef zeroext 2, ptr noundef nonnull %buf.i28, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i31)
  %cmp.i.i32 = icmp slt i32 %call.i.i31, 0
  br i1 %cmp.i.i32, label %if.then19.i.i35, label %do.end9.i.i33.ax88179_write_cmd_nopm.exit36_crit_edge, !prof !98

do.end9.i.i33.ax88179_write_cmd_nopm.exit36_crit_edge: ; preds = %do.end9.i.i33
  call void @__sanitizer_cov_trace_pc() #12
  br label %ax88179_write_cmd_nopm.exit36

if.then19.i.i35:                                  ; preds = %do.end9.i.i33
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i34 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %41 = ptrtoint ptr %net.i.i34 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %net.i.i34, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %42, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %call.i.i31) #13
  br label %ax88179_write_cmd_nopm.exit36

ax88179_write_cmd_nopm.exit36:                    ; preds = %if.then19.i.i35, %do.end9.i.i33.ax88179_write_cmd_nopm.exit36_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i28) #10
  %call8 = call i32 @usbnet_resume(ptr noundef %intf) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp8) #10
  ret i32 %call8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_suspend(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_read_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_read_cmd_nopm(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_write_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_write_cmd_nopm(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_link_change(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax88179_bind(ptr noundef %dev, ptr noundef %intf) #2 align 64 {
entry:
  %buf.i173 = alloca i16, align 2
  %buf.i155 = alloca i16, align 2
  %buf.i99 = alloca i16, align 2
  %buf.i = alloca i16, align 2
  %buf = alloca [5 x i8], align 2
  %eee_data = alloca %struct.ethtool_eee, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf) #10
  %data = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21
  %0 = getelementptr inbounds i8, ptr %buf, i32 2
  %1 = call ptr @memset(ptr %0, i32 255, i32 3)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %eee_data) #10
  %2 = call ptr @memset(ptr %eee_data, i32 255, i32 40)
  %call = tail call i32 @usbnet_get_endpoints(ptr noundef %dev, ptr noundef %intf) #10
  %3 = call ptr @memset(ptr %data, i32 0, i32 6)
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %buf, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #10
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %buf.i, align 2
  %tobool.not.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !98

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #10, !srcloc !102
  unreachable

do.end9.i.i:                                      ; preds = %entry
  %call.i.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 38, i16 noundef zeroext 2, ptr noundef nonnull %buf.i, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then19.i.i, label %do.end9.i.i.do.end9.i.i104_crit_edge, !prof !98

do.end9.i.i.do.end9.i.i104_crit_edge:             ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i104

if.then19.i.i:                                    ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %6 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %7, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %call.i.i) #13
  br label %do.end9.i.i104

do.end9.i.i104:                                   ; preds = %if.then19.i.i, %do.end9.i.i.do.end9.i.i104_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #10
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 32, ptr %buf, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i99) #10
  %9 = ptrtoint ptr %buf.i99 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 8192, ptr %buf.i99, align 2
  %call.i.i102 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 38, i16 noundef zeroext 2, ptr noundef nonnull %buf.i99, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i102)
  %cmp.i.i103 = icmp slt i32 %call.i.i102, 0
  br i1 %cmp.i.i103, label %if.then19.i.i106, label %do.end9.i.i104.do.end9.i14.i_crit_edge, !prof !98

do.end9.i.i104.do.end9.i14.i_crit_edge:           ; preds = %do.end9.i.i104
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i14.i

if.then19.i.i106:                                 ; preds = %do.end9.i.i104
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i105 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %10 = ptrtoint ptr %net.i.i105 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net.i.i105, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %11, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %call.i.i102) #13
  br label %do.end9.i14.i

do.end9.i14.i:                                    ; preds = %if.then19.i.i106, %do.end9.i.i104.do.end9.i14.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i99) #10
  call void @msleep(i32 noundef 200) #10
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 3, ptr %buf, align 2
  %call.i12.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 51, i16 noundef zeroext 1, ptr noundef nonnull %buf, i16 noundef zeroext 1) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i)
  %cmp.i13.i = icmp slt i32 %call.i12.i, 0
  br i1 %cmp.i13.i, label %if.then19.i17.i, label %do.end9.i14.i.do.end9.i14.i115_crit_edge, !prof !98

do.end9.i14.i.do.end9.i14.i115_crit_edge:         ; preds = %do.end9.i14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i14.i115

if.then19.i17.i:                                  ; preds = %do.end9.i14.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i15.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %13 = ptrtoint ptr %net.i15.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net.i15.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %14, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %call.i12.i) #13
  br label %do.end9.i14.i115

do.end9.i14.i115:                                 ; preds = %if.then19.i17.i, %do.end9.i14.i.do.end9.i14.i115_crit_edge
  call void @msleep(i32 noundef 100) #10
  call fastcc void @ax88179_get_mac_addr(ptr noundef nonnull %dev)
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %15 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net, align 4
  %perm_addr = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 54
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 86
  %17 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_addr, align 64
  %19 = call ptr @memcpy(ptr %perm_addr, ptr %18, i32 6)
  %20 = call ptr @memcpy(ptr %buf, ptr @AX88179_BULKIN_SIZE, i32 5)
  %call.i12.i113 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 46, i16 noundef zeroext 5, ptr noundef nonnull %buf, i16 noundef zeroext 5) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i113)
  %cmp.i13.i114 = icmp slt i32 %call.i12.i113, 0
  br i1 %cmp.i13.i114, label %if.then19.i17.i117, label %do.end9.i14.i115.do.end9.i14.i124_crit_edge, !prof !98

do.end9.i14.i115.do.end9.i14.i124_crit_edge:      ; preds = %do.end9.i14.i115
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i14.i124

if.then19.i17.i117:                               ; preds = %do.end9.i14.i115
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %22, ptr noundef nonnull @.str.2, i32 noundef 5, i32 noundef %call.i12.i113) #13
  br label %do.end9.i14.i124

do.end9.i14.i124:                                 ; preds = %if.then19.i17.i117, %do.end9.i14.i115.do.end9.i14.i124_crit_edge
  %rx_urb_size = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 24
  %23 = ptrtoint ptr %rx_urb_size to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 20480, ptr %rx_urb_size, align 4
  %24 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 52, ptr %buf, align 2
  %call.i12.i122 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 85, i16 noundef zeroext 1, ptr noundef nonnull %buf, i16 noundef zeroext 1) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i122)
  %cmp.i13.i123 = icmp slt i32 %call.i12.i122, 0
  br i1 %cmp.i13.i123, label %if.then19.i17.i126, label %do.end9.i14.i124.do.end9.i14.i133_crit_edge, !prof !98

do.end9.i14.i124.do.end9.i14.i133_crit_edge:      ; preds = %do.end9.i14.i124
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i14.i133

if.then19.i17.i126:                               ; preds = %do.end9.i14.i124
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %26, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %call.i12.i122) #13
  br label %do.end9.i14.i133

do.end9.i14.i133:                                 ; preds = %if.then19.i17.i126, %do.end9.i14.i124.do.end9.i14.i133_crit_edge
  %27 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 82, ptr %buf, align 2
  %call.i12.i131 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 84, i16 noundef zeroext 1, ptr noundef nonnull %buf, i16 noundef zeroext 1) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i131)
  %cmp.i13.i132 = icmp slt i32 %call.i12.i131, 0
  br i1 %cmp.i13.i132, label %if.then19.i17.i135, label %do.end9.i14.i133.do.end9.i14.i142_crit_edge, !prof !98

do.end9.i14.i133.do.end9.i14.i142_crit_edge:      ; preds = %do.end9.i14.i133
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i14.i142

if.then19.i17.i135:                               ; preds = %do.end9.i14.i133
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %29, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %call.i12.i131) #13
  br label %do.end9.i14.i142

do.end9.i14.i142:                                 ; preds = %if.then19.i17.i135, %do.end9.i14.i133.do.end9.i14.i142_crit_edge
  %30 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %net, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 16
  %32 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @ax88179_netdev_ops, ptr %netdev_ops, align 8
  %33 = load ptr, ptr %net, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 44
  %34 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @ax88179_ethtool_ops, ptr %ethtool_ops, align 16
  %35 = load ptr, ptr %net, align 4
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 21
  %36 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 8, ptr %needed_headroom, align 8
  %37 = load ptr, ptr %net, align 4
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 31
  %38 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 4088, ptr %max_mtu, align 4
  %39 = load ptr, ptr %net, align 4
  %mii = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25
  %dev16 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 5
  %40 = ptrtoint ptr %dev16 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %dev16, align 4
  %mdio_read = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 6
  %41 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @ax88179_mdio_read, ptr %mdio_read, align 4
  %mdio_write = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 7
  %42 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @ax88179_mdio_write, ptr %mdio_write, align 4
  %phy_id_mask = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 2
  %43 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 255, ptr %phy_id_mask, align 4
  %reg_num_mask = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 3
  %44 = ptrtoint ptr %reg_num_mask to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 255, ptr %reg_num_mask, align 4
  %45 = ptrtoint ptr %mii to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 3, ptr %mii, align 4
  %supports_gmii = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 4
  %46 = ptrtoint ptr %supports_gmii to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load = load i8, ptr %supports_gmii, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %supports_gmii, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 23
  %47 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %features, align 16
  %or = or i64 %48, 1099511693331
  store i64 %or, ptr %features, align 16
  %49 = load ptr, ptr %net, align 4
  %features25 = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 23
  %50 = ptrtoint ptr %features25 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %features25, align 16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 24
  %52 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %hw_features, align 8
  %or27 = or i64 %53, %51
  store i64 %or27, ptr %hw_features, align 8
  %54 = load ptr, ptr %net, align 4
  %gso_max_size.i = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 137
  %55 = ptrtoint ptr %gso_max_size.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile i32 16384, ptr %gso_max_size.i, align 8
  %56 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 103, ptr %buf, align 2
  %call.i12.i140 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 52, i16 noundef zeroext 1, ptr noundef nonnull %buf, i16 noundef zeroext 1) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i140)
  %cmp.i13.i141 = icmp slt i32 %call.i12.i140, 0
  br i1 %cmp.i13.i141, label %if.then19.i17.i144, label %do.end9.i14.i142.do.end9.i14.i151_crit_edge, !prof !98

do.end9.i14.i142.do.end9.i14.i151_crit_edge:      ; preds = %do.end9.i14.i142
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i14.i151

if.then19.i17.i144:                               ; preds = %do.end9.i14.i142
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %58, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %call.i12.i140) #13
  br label %do.end9.i14.i151

do.end9.i14.i151:                                 ; preds = %if.then19.i17.i144, %do.end9.i14.i142.do.end9.i14.i151_crit_edge
  %59 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 103, ptr %buf, align 2
  %call.i12.i149 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 53, i16 noundef zeroext 1, ptr noundef nonnull %buf, i16 noundef zeroext 1) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i149)
  %cmp.i13.i150 = icmp slt i32 %call.i12.i149, 0
  br i1 %cmp.i13.i150, label %if.then19.i17.i153, label %do.end9.i14.i151.do.end9.i.i160_crit_edge, !prof !98

do.end9.i14.i151.do.end9.i.i160_crit_edge:        ; preds = %do.end9.i14.i151
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i160

if.then19.i17.i153:                               ; preds = %do.end9.i14.i151
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %61, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %call.i12.i149) #13
  br label %do.end9.i.i160

do.end9.i.i160:                                   ; preds = %if.then19.i17.i153, %do.end9.i14.i151.do.end9.i.i160_crit_edge
  %62 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 938, ptr %buf, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i155) #10
  %63 = ptrtoint ptr %buf.i155 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 -22013, ptr %buf.i155, align 2
  %call.i.i158 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 11, i16 noundef zeroext 2, ptr noundef nonnull %buf.i155, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i158)
  %cmp.i.i159 = icmp slt i32 %call.i.i158, 0
  br i1 %cmp.i.i159, label %if.then19.i.i162, label %do.end9.i.i160.do.end9.i14.i169_crit_edge, !prof !98

do.end9.i.i160.do.end9.i14.i169_crit_edge:        ; preds = %do.end9.i.i160
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i14.i169

if.then19.i.i162:                                 ; preds = %do.end9.i.i160
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %65, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %call.i.i158) #13
  br label %do.end9.i14.i169

do.end9.i14.i169:                                 ; preds = %if.then19.i.i162, %do.end9.i.i160.do.end9.i14.i169_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i155) #10
  %66 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 100, ptr %buf, align 2
  %call.i12.i167 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 36, i16 noundef zeroext 1, ptr noundef nonnull %buf, i16 noundef zeroext 1) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i167)
  %cmp.i13.i168 = icmp slt i32 %call.i12.i167, 0
  br i1 %cmp.i13.i168, label %if.then19.i17.i171, label %do.end9.i14.i169.do.end9.i.i178_crit_edge, !prof !98

do.end9.i14.i169.do.end9.i.i178_crit_edge:        ; preds = %do.end9.i14.i169
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i178

if.then19.i17.i171:                               ; preds = %do.end9.i14.i169
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %68, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %call.i12.i167) #13
  br label %do.end9.i.i178

do.end9.i.i178:                                   ; preds = %if.then19.i17.i171, %do.end9.i14.i169.do.end9.i.i178_crit_edge
  %69 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 307, ptr %buf, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i173) #10
  %70 = ptrtoint ptr %buf.i173 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 13057, ptr %buf.i173, align 2
  %call.i.i176 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 34, i16 noundef zeroext 2, ptr noundef nonnull %buf.i173, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i176)
  %cmp.i.i177 = icmp slt i32 %call.i.i176, 0
  br i1 %cmp.i.i177, label %if.then19.i.i180, label %do.end9.i.i178.ax88179_write_cmd.exit181_crit_edge, !prof !98

do.end9.i.i178.ax88179_write_cmd.exit181_crit_edge: ; preds = %do.end9.i.i178
  call void @__sanitizer_cov_trace_pc() #12
  br label %ax88179_write_cmd.exit181

if.then19.i.i180:                                 ; preds = %do.end9.i.i178
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %72, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %call.i.i176) #13
  br label %ax88179_write_cmd.exit181

ax88179_write_cmd.exit181:                        ; preds = %if.then19.i.i180, %do.end9.i.i178.ax88179_write_cmd.exit181_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i173) #10
  call fastcc void @ax88179_led_setting(ptr noundef nonnull %dev)
  %73 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %data, align 2
  %eee_active = getelementptr inbounds %struct.ax88179_data, ptr %data, i32 0, i32 1
  %74 = ptrtoint ptr %eee_active to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %eee_active, align 1
  call fastcc void @ax88179_disable_eee(ptr noundef nonnull %dev)
  %call35 = call fastcc i32 @ax88179_ethtool_get_eee(ptr noundef nonnull %dev, ptr noundef nonnull %eee_data)
  %advertised = getelementptr inbounds %struct.ethtool_eee, ptr %eee_data, i32 0, i32 2
  %75 = ptrtoint ptr %advertised to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %advertised, align 4
  %call36 = call fastcc i32 @ax88179_ethtool_set_eee(ptr noundef nonnull %dev, ptr noundef nonnull %eee_data)
  %call38 = call i32 @mii_nway_restart(ptr noundef %mii) #10
  call void @usbnet_link_change(ptr noundef nonnull %dev, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %eee_data) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax88179_unbind(ptr noundef %dev, ptr nocapture noundef readnone %intf) #2 align 64 {
entry:
  %buf.i7 = alloca i16, align 2
  %buf.i = alloca i16, align 2
  %tmp16 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp16) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #10
  %0 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %buf.i, align 2
  %tobool.not.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !98

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #10, !srcloc !102
  unreachable

do.end9.i.i:                                      ; preds = %entry
  %call.i.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 11, i16 noundef zeroext 2, ptr noundef nonnull %buf.i, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then19.i.i, label %do.end9.i.i.do.end9.i14.i_crit_edge, !prof !98

do.end9.i.i.do.end9.i14.i_crit_edge:              ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i14.i

if.then19.i.i:                                    ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %1 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %call.i.i) #13
  br label %do.end9.i14.i

do.end9.i14.i:                                    ; preds = %if.then19.i.i, %do.end9.i.i.do.end9.i14.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #10
  %3 = ptrtoint ptr %tmp16 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %tmp16, align 2
  %call.i12.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 51, i16 noundef zeroext 1, ptr noundef nonnull %tmp16, i16 noundef zeroext 1) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i)
  %cmp.i13.i = icmp slt i32 %call.i12.i, 0
  br i1 %cmp.i13.i, label %if.then19.i17.i, label %do.end9.i14.i.do.end9.i.i12_crit_edge, !prof !98

do.end9.i14.i.do.end9.i.i12_crit_edge:            ; preds = %do.end9.i14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i12

if.then19.i17.i:                                  ; preds = %do.end9.i14.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i15.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %4 = ptrtoint ptr %net.i15.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net.i15.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %5, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %call.i12.i) #13
  br label %do.end9.i.i12

do.end9.i.i12:                                    ; preds = %if.then19.i17.i, %do.end9.i14.i.do.end9.i.i12_crit_edge
  %6 = ptrtoint ptr %tmp16 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %tmp16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i7) #10
  %7 = ptrtoint ptr %buf.i7 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %buf.i7, align 2
  %call.i.i10 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 38, i16 noundef zeroext 2, ptr noundef nonnull %buf.i7, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i10)
  %cmp.i.i11 = icmp slt i32 %call.i.i10, 0
  br i1 %cmp.i.i11, label %if.then19.i.i14, label %do.end9.i.i12.ax88179_write_cmd.exit15_crit_edge, !prof !98

do.end9.i.i12.ax88179_write_cmd.exit15_crit_edge: ; preds = %do.end9.i.i12
  call void @__sanitizer_cov_trace_pc() #12
  br label %ax88179_write_cmd.exit15

if.then19.i.i14:                                  ; preds = %do.end9.i.i12
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i13 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %8 = ptrtoint ptr %net.i.i13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net.i.i13, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %9, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %call.i.i10) #13
  br label %ax88179_write_cmd.exit15

ax88179_write_cmd.exit15:                         ; preds = %if.then19.i.i14, %do.end9.i.i12.ax88179_write_cmd.exit15_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i7) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp16) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax88179_reset(ptr noundef %dev) #2 align 64 {
entry:
  %buf.i174 = alloca i16, align 2
  %buf.i155 = alloca i16, align 2
  %buf.i146 = alloca i16, align 2
  %buf.i137 = alloca i16, align 2
  %buf.i119 = alloca i16, align 2
  %tmp8.i = alloca i8, align 1
  %buf.i63 = alloca i16, align 2
  %buf.i = alloca i16, align 2
  %buf = alloca [5 x i8], align 2
  %eee_data = alloca %struct.ethtool_eee, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf) #10
  %0 = getelementptr inbounds i8, ptr %buf, i32 2
  %1 = call ptr @memset(ptr %0, i32 255, i32 3)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %eee_data) #10
  %2 = call ptr @memset(ptr %eee_data, i32 255, i32 40)
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %buf, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #10
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %buf.i, align 2
  %tobool.not.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !98

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #10, !srcloc !102
  unreachable

do.end9.i.i:                                      ; preds = %entry
  %call.i.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 38, i16 noundef zeroext 2, ptr noundef nonnull %buf.i, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then19.i.i, label %do.end9.i.i.do.end9.i.i68_crit_edge, !prof !98

do.end9.i.i.do.end9.i.i68_crit_edge:              ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i68

if.then19.i.i:                                    ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %5 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %6, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %call.i.i) #13
  br label %do.end9.i.i68

do.end9.i.i68:                                    ; preds = %if.then19.i.i, %do.end9.i.i.do.end9.i.i68_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #10
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 32, ptr %buf, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i63) #10
  %8 = ptrtoint ptr %buf.i63 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 8192, ptr %buf.i63, align 2
  %call.i.i66 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 38, i16 noundef zeroext 2, ptr noundef nonnull %buf.i63, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i66)
  %cmp.i.i67 = icmp slt i32 %call.i.i66, 0
  br i1 %cmp.i.i67, label %if.then19.i.i70, label %do.end9.i.i68.do.end9.i14.i_crit_edge, !prof !98

do.end9.i.i68.do.end9.i14.i_crit_edge:            ; preds = %do.end9.i.i68
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i14.i

if.then19.i.i70:                                  ; preds = %do.end9.i.i68
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i69 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %9 = ptrtoint ptr %net.i.i69 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net.i.i69, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %10, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %call.i.i66) #13
  br label %do.end9.i14.i

do.end9.i14.i:                                    ; preds = %if.then19.i.i70, %do.end9.i.i68.do.end9.i14.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i63) #10
  call void @msleep(i32 noundef 200) #10
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %buf, align 2
  %call.i12.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 51, i16 noundef zeroext 1, ptr noundef nonnull %buf, i16 noundef zeroext 1) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i)
  %cmp.i13.i = icmp slt i32 %call.i12.i, 0
  br i1 %cmp.i13.i, label %if.then19.i17.i, label %do.end9.i14.i.do.end9.i.i179_crit_edge, !prof !98

do.end9.i14.i.do.end9.i.i179_crit_edge:           ; preds = %do.end9.i14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i179

if.then19.i17.i:                                  ; preds = %do.end9.i14.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i15.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %12 = ptrtoint ptr %net.i15.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net.i15.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %13, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %call.i12.i) #13
  br label %do.end9.i.i179

do.end9.i.i179:                                   ; preds = %if.then19.i17.i, %do.end9.i14.i.do.end9.i.i179_crit_edge
  call void @msleep(i32 noundef 100) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp8.i) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i174) #10
  %14 = ptrtoint ptr %buf.i174 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %buf.i174, align 2
  %call.i.i177 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 4, i8 noundef zeroext -64, i16 noundef zeroext 67, i16 noundef zeroext 1, ptr noundef nonnull %buf.i174, i16 noundef zeroext 2) #10, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i177)
  %cmp.i.i178 = icmp slt i32 %call.i.i177, 0
  br i1 %cmp.i.i178, label %ax88179_read_cmd.exit182.thread, label %if.end2.i, !prof !98

ax88179_read_cmd.exit182.thread:                  ; preds = %do.end9.i.i179
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i180 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %15 = ptrtoint ptr %net.i.i180 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net.i.i180, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %16, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %call.i.i177) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i174) #10
  br label %do.end9.i14.i79

if.end2.i:                                        ; preds = %do.end9.i.i179
  %17 = ptrtoint ptr %buf.i174 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %buf.i174, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i174) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %18)
  %cmp3.i = icmp eq i16 %18, -1
  %19 = and i16 %18, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool6.not.i = icmp eq i16 %19, 0
  %or.cond.i = or i1 %cmp3.i, %tobool6.not.i
  br i1 %or.cond.i, label %if.end2.i.do.end9.i14.i79_crit_edge, label %do.end9.i38.i

if.end2.i.do.end9.i14.i79_crit_edge:              ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i14.i79

do.end9.i38.i:                                    ; preds = %if.end2.i
  %20 = ptrtoint ptr %tmp8.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %tmp8.i, align 1
  %call.i36.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 51, i16 noundef zeroext 1, ptr noundef nonnull %tmp8.i, i16 noundef zeroext 1) #10, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i)
  %cmp.i37.i = icmp slt i32 %call.i36.i, 0
  br i1 %cmp.i37.i, label %if.then19.i41.i, label %do.end9.i38.i.do.end9.i14.i168_crit_edge, !prof !98

do.end9.i38.i.do.end9.i14.i168_crit_edge:         ; preds = %do.end9.i38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i14.i168

if.then19.i41.i:                                  ; preds = %do.end9.i38.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i39.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %21 = ptrtoint ptr %net.i39.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net.i39.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %22, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %call.i36.i) #13
  br label %do.end9.i14.i168

do.end9.i14.i168:                                 ; preds = %if.then19.i41.i, %do.end9.i38.i.do.end9.i14.i168_crit_edge
  %23 = ptrtoint ptr %tmp8.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %tmp8.i, align 1
  %25 = or i8 %24, 8
  store i8 %25, ptr %tmp8.i, align 1
  %call.i12.i166 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 51, i16 noundef zeroext 1, ptr noundef nonnull %tmp8.i, i16 noundef zeroext 1) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i166)
  %cmp.i13.i167 = icmp slt i32 %call.i12.i166, 0
  br i1 %cmp.i13.i167, label %if.then19.i17.i170, label %do.end9.i14.i168.do.end9.i.i160_crit_edge, !prof !98

do.end9.i14.i168.do.end9.i.i160_crit_edge:        ; preds = %do.end9.i14.i168
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i160

if.then19.i17.i170:                               ; preds = %do.end9.i14.i168
  call void @__sanitizer_cov_trace_pc() #12
  %net.i15.i169 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %26 = ptrtoint ptr %net.i15.i169 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net.i15.i169, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %27, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %call.i12.i166) #13
  br label %do.end9.i.i160

do.end9.i.i160:                                   ; preds = %if.then19.i17.i170, %do.end9.i14.i168.do.end9.i.i160_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i155) #10
  %28 = ptrtoint ptr %buf.i155 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %buf.i155, align 2
  %call.i.i158 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 38, i16 noundef zeroext 2, ptr noundef nonnull %buf.i155, i16 noundef zeroext 2) #10, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i158)
  %cmp.i.i159 = icmp slt i32 %call.i.i158, 0
  br i1 %cmp.i.i159, label %if.then19.i.i162, label %do.end9.i.i160.do.end9.i.i151_crit_edge, !prof !98

do.end9.i.i160.do.end9.i.i151_crit_edge:          ; preds = %do.end9.i.i160
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i151

if.then19.i.i162:                                 ; preds = %do.end9.i.i160
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i161 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %29 = ptrtoint ptr %net.i.i161 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net.i.i161, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %30, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef %call.i.i158) #13
  br label %do.end9.i.i151

do.end9.i.i151:                                   ; preds = %if.then19.i.i162, %do.end9.i.i160.do.end9.i.i151_crit_edge
  %31 = ptrtoint ptr %buf.i155 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %buf.i155, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i155) #10
  %33 = or i16 %32, 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i146) #10
  %34 = ptrtoint ptr %buf.i146 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %buf.i146, align 2
  %call.i.i149 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 38, i16 noundef zeroext 2, ptr noundef nonnull %buf.i146, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i149)
  %cmp.i.i150 = icmp slt i32 %call.i.i149, 0
  br i1 %cmp.i.i150, label %if.then19.i.i153, label %do.end9.i.i151.ax88179_write_cmd.exit154_crit_edge, !prof !98

do.end9.i.i151.ax88179_write_cmd.exit154_crit_edge: ; preds = %do.end9.i.i151
  call void @__sanitizer_cov_trace_pc() #12
  br label %ax88179_write_cmd.exit154

if.then19.i.i153:                                 ; preds = %do.end9.i.i151
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i152 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %35 = ptrtoint ptr %net.i.i152 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %net.i.i152, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %36, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %call.i.i149) #13
  br label %ax88179_write_cmd.exit154

ax88179_write_cmd.exit154:                        ; preds = %if.then19.i.i153, %do.end9.i.i151.ax88179_write_cmd.exit154_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i146) #10
  br label %do.end9.i14.i79

do.end9.i14.i79:                                  ; preds = %ax88179_write_cmd.exit154, %if.end2.i.do.end9.i14.i79_crit_edge, %ax88179_read_cmd.exit182.thread
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp8.i) #10
  call fastcc void @ax88179_get_mac_addr(ptr noundef nonnull %dev)
  %37 = call ptr @memcpy(ptr %buf, ptr @AX88179_BULKIN_SIZE, i32 5)
  %call.i12.i77 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 46, i16 noundef zeroext 5, ptr noundef nonnull %buf, i16 noundef zeroext 5) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i77)
  %cmp.i13.i78 = icmp slt i32 %call.i12.i77, 0
  br i1 %cmp.i13.i78, label %if.then19.i17.i81, label %do.end9.i14.i79.do.end9.i14.i88_crit_edge, !prof !98

do.end9.i14.i79.do.end9.i14.i88_crit_edge:        ; preds = %do.end9.i14.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i14.i88

if.then19.i17.i81:                                ; preds = %do.end9.i14.i79
  call void @__sanitizer_cov_trace_pc() #12
  %net.i15.i80 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %38 = ptrtoint ptr %net.i15.i80 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %net.i15.i80, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %39, ptr noundef nonnull @.str.2, i32 noundef 5, i32 noundef %call.i12.i77) #13
  br label %do.end9.i14.i88

do.end9.i14.i88:                                  ; preds = %if.then19.i17.i81, %do.end9.i14.i79.do.end9.i14.i88_crit_edge
  %rx_urb_size = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 24
  %40 = ptrtoint ptr %rx_urb_size to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 20480, ptr %rx_urb_size, align 4
  %41 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 52, ptr %buf, align 2
  %call.i12.i86 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 85, i16 noundef zeroext 1, ptr noundef nonnull %buf, i16 noundef zeroext 1) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i86)
  %cmp.i13.i87 = icmp slt i32 %call.i12.i86, 0
  br i1 %cmp.i13.i87, label %if.then19.i17.i90, label %do.end9.i14.i88.do.end9.i14.i97_crit_edge, !prof !98

do.end9.i14.i88.do.end9.i14.i97_crit_edge:        ; preds = %do.end9.i14.i88
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i14.i97

if.then19.i17.i90:                                ; preds = %do.end9.i14.i88
  call void @__sanitizer_cov_trace_pc() #12
  %net.i15.i89 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %42 = ptrtoint ptr %net.i15.i89 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %net.i15.i89, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %43, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %call.i12.i86) #13
  br label %do.end9.i14.i97

do.end9.i14.i97:                                  ; preds = %if.then19.i17.i90, %do.end9.i14.i88.do.end9.i14.i97_crit_edge
  %44 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 82, ptr %buf, align 2
  %call.i12.i95 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 84, i16 noundef zeroext 1, ptr noundef nonnull %buf, i16 noundef zeroext 1) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i95)
  %cmp.i13.i96 = icmp slt i32 %call.i12.i95, 0
  br i1 %cmp.i13.i96, label %if.then19.i17.i99, label %do.end9.i14.i97.do.end9.i14.i106_crit_edge, !prof !98

do.end9.i14.i97.do.end9.i14.i106_crit_edge:       ; preds = %do.end9.i14.i97
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i14.i106

if.then19.i17.i99:                                ; preds = %do.end9.i14.i97
  call void @__sanitizer_cov_trace_pc() #12
  %net.i15.i98 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %45 = ptrtoint ptr %net.i15.i98 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %net.i15.i98, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %46, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %call.i12.i95) #13
  br label %do.end9.i14.i106

do.end9.i14.i106:                                 ; preds = %if.then19.i17.i99, %do.end9.i14.i97.do.end9.i14.i106_crit_edge
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %47 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %net, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 23
  %49 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %features, align 16
  %or = or i64 %50, 1099511627794
  store i64 %or, ptr %features, align 16
  %51 = load ptr, ptr %net, align 4
  %hw_features = getelementptr inbounds %struct.net_device, ptr %51, i32 0, i32 24
  %52 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %hw_features, align 8
  %or10 = or i64 %53, 1099511627794
  store i64 %or10, ptr %hw_features, align 8
  %54 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 103, ptr %buf, align 2
  %call.i12.i104 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 52, i16 noundef zeroext 1, ptr noundef nonnull %buf, i16 noundef zeroext 1) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i104)
  %cmp.i13.i105 = icmp slt i32 %call.i12.i104, 0
  br i1 %cmp.i13.i105, label %if.then19.i17.i108, label %do.end9.i14.i106.do.end9.i14.i115_crit_edge, !prof !98

do.end9.i14.i106.do.end9.i14.i115_crit_edge:      ; preds = %do.end9.i14.i106
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i14.i115

if.then19.i17.i108:                               ; preds = %do.end9.i14.i106
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %56, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %call.i12.i104) #13
  br label %do.end9.i14.i115

do.end9.i14.i115:                                 ; preds = %if.then19.i17.i108, %do.end9.i14.i106.do.end9.i14.i115_crit_edge
  %57 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 103, ptr %buf, align 2
  %call.i12.i113 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 53, i16 noundef zeroext 1, ptr noundef nonnull %buf, i16 noundef zeroext 1) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i113)
  %cmp.i13.i114 = icmp slt i32 %call.i12.i113, 0
  br i1 %cmp.i13.i114, label %if.then19.i17.i117, label %do.end9.i14.i115.do.end9.i.i124_crit_edge, !prof !98

do.end9.i14.i115.do.end9.i.i124_crit_edge:        ; preds = %do.end9.i14.i115
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i124

if.then19.i17.i117:                               ; preds = %do.end9.i14.i115
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %59, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %call.i12.i113) #13
  br label %do.end9.i.i124

do.end9.i.i124:                                   ; preds = %if.then19.i17.i117, %do.end9.i14.i115.do.end9.i.i124_crit_edge
  %60 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 938, ptr %buf, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i119) #10
  %61 = ptrtoint ptr %buf.i119 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 -22013, ptr %buf.i119, align 2
  %call.i.i122 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 11, i16 noundef zeroext 2, ptr noundef nonnull %buf.i119, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i122)
  %cmp.i.i123 = icmp slt i32 %call.i.i122, 0
  br i1 %cmp.i.i123, label %if.then19.i.i126, label %do.end9.i.i124.do.end9.i14.i133_crit_edge, !prof !98

do.end9.i.i124.do.end9.i14.i133_crit_edge:        ; preds = %do.end9.i.i124
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i14.i133

if.then19.i.i126:                                 ; preds = %do.end9.i.i124
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %63, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %call.i.i122) #13
  br label %do.end9.i14.i133

do.end9.i14.i133:                                 ; preds = %if.then19.i.i126, %do.end9.i.i124.do.end9.i14.i133_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i119) #10
  %64 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 100, ptr %buf, align 2
  %call.i12.i131 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 36, i16 noundef zeroext 1, ptr noundef nonnull %buf, i16 noundef zeroext 1) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i131)
  %cmp.i13.i132 = icmp slt i32 %call.i12.i131, 0
  br i1 %cmp.i13.i132, label %if.then19.i17.i135, label %do.end9.i14.i133.do.end9.i.i142_crit_edge, !prof !98

do.end9.i14.i133.do.end9.i.i142_crit_edge:        ; preds = %do.end9.i14.i133
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i142

if.then19.i17.i135:                               ; preds = %do.end9.i14.i133
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %66, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %call.i12.i131) #13
  br label %do.end9.i.i142

do.end9.i.i142:                                   ; preds = %if.then19.i17.i135, %do.end9.i14.i133.do.end9.i.i142_crit_edge
  %67 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 307, ptr %buf, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i137) #10
  %68 = ptrtoint ptr %buf.i137 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 13057, ptr %buf.i137, align 2
  %call.i.i140 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 34, i16 noundef zeroext 2, ptr noundef nonnull %buf.i137, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i140)
  %cmp.i.i141 = icmp slt i32 %call.i.i140, 0
  br i1 %cmp.i.i141, label %if.then19.i.i144, label %do.end9.i.i142.ax88179_write_cmd.exit145_crit_edge, !prof !98

do.end9.i.i142.ax88179_write_cmd.exit145_crit_edge: ; preds = %do.end9.i.i142
  call void @__sanitizer_cov_trace_pc() #12
  br label %ax88179_write_cmd.exit145

if.then19.i.i144:                                 ; preds = %do.end9.i.i142
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %70, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %call.i.i140) #13
  br label %ax88179_write_cmd.exit145

ax88179_write_cmd.exit145:                        ; preds = %if.then19.i.i144, %do.end9.i.i142.ax88179_write_cmd.exit145_crit_edge
  %data = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i137) #10
  call fastcc void @ax88179_led_setting(ptr noundef nonnull %dev)
  %71 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %data, align 2
  %eee_active = getelementptr inbounds %struct.ax88179_data, ptr %data, i32 0, i32 1
  %72 = ptrtoint ptr %eee_active to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %eee_active, align 1
  call fastcc void @ax88179_disable_eee(ptr noundef nonnull %dev)
  %call17 = call fastcc i32 @ax88179_ethtool_get_eee(ptr noundef nonnull %dev, ptr noundef nonnull %eee_data)
  %advertised = getelementptr inbounds %struct.ethtool_eee, ptr %eee_data, i32 0, i32 2
  %73 = ptrtoint ptr %advertised to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %advertised, align 4
  %call18 = call fastcc i32 @ax88179_ethtool_set_eee(ptr noundef nonnull %dev, ptr noundef nonnull %eee_data)
  %mii = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25
  %call19 = call i32 @mii_nway_restart(ptr noundef %mii) #10
  call void @usbnet_link_change(ptr noundef nonnull %dev, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %eee_data) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax88179_stop(ptr noundef %dev) #2 align 64 {
entry:
  %buf.i4 = alloca i16, align 2
  %buf.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #10
  %0 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %buf.i, align 2
  %tobool.not.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !98

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 194, 0\0A.popsection", ""() #10, !srcloc !99
  unreachable

do.end9.i.i:                                      ; preds = %entry
  %call.i.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 34, i16 noundef zeroext 2, ptr noundef nonnull %buf.i, i16 noundef zeroext 2) #10, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then19.i.i, label %do.end9.i.i.do.end9.i.i9_crit_edge, !prof !98

do.end9.i.i.do.end9.i.i9_crit_edge:               ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i9

if.then19.i.i:                                    ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %1 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef %call.i.i) #13
  br label %do.end9.i.i9

do.end9.i.i9:                                     ; preds = %if.then19.i.i, %do.end9.i.i.do.end9.i.i9_crit_edge
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %buf.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #10
  %5 = and i16 %4, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i4) #10
  %6 = ptrtoint ptr %buf.i4 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %buf.i4, align 2
  %call.i.i7 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 34, i16 noundef zeroext 2, ptr noundef nonnull %buf.i4, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i7)
  %cmp.i.i8 = icmp slt i32 %call.i.i7, 0
  br i1 %cmp.i.i8, label %if.then19.i.i11, label %do.end9.i.i9.ax88179_write_cmd.exit_crit_edge, !prof !98

do.end9.i.i9.ax88179_write_cmd.exit_crit_edge:    ; preds = %do.end9.i.i9
  call void @__sanitizer_cov_trace_pc() #12
  br label %ax88179_write_cmd.exit

if.then19.i.i11:                                  ; preds = %do.end9.i.i9
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i10 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %7 = ptrtoint ptr %net.i.i10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net.i.i10, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %8, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %call.i.i7) #13
  br label %ax88179_write_cmd.exit

ax88179_write_cmd.exit:                           ; preds = %if.then19.i.i11, %do.end9.i.i9.ax88179_write_cmd.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i4) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax88179_status(ptr noundef %dev, ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %0 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp = icmp ult i32 %1, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_buffer, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #10
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %3, align 4
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %8 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  %13 = and i32 %6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %14 = icmp eq i32 %13, 0
  %cmp2.not = xor i1 %14, %tobool.not.i
  br i1 %cmp2.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %and = lshr i32 %6, 16
  %shr = and i32 %and, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool = icmp ne i32 %shr, 0
  tail call void @usbnet_link_change(ptr noundef %dev, i1 noundef zeroext %tobool, i1 noundef zeroext true) #10
  %15 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %16, ptr noundef nonnull @.str.15, i32 noundef %shr) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax88179_link_reset(ptr noundef %dev) #2 align 64 {
entry:
  %buf.i121 = alloca i16, align 2
  %buf.i109 = alloca i16, align 2
  %buf6.i = alloca i32, align 4
  %buf.i96 = alloca i16, align 2
  %buf.i = alloca i16, align 2
  %tmp = alloca [5 x i8], align 1
  %link_sts = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %tmp) #10
  %0 = getelementptr inbounds [5 x i8], ptr %tmp, i32 0, i32 3
  %1 = call ptr @memset(ptr %tmp, i32 255, i32 5)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link_sts) #10
  %2 = ptrtoint ptr %link_sts to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %link_sts, align 1, !annotation !97
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %3, 10
  %tobool.not.i.i = icmp eq ptr %dev, null
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %rxctl = getelementptr inbounds %struct.ax88179_data, ptr %data, i32 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %ax88179_read_cmd.exit.while.cond_crit_edge, %entry
  %tmp32.0 = phi i32 [ 1073741824, %entry ], [ %18, %ax88179_read_cmd.exit.while.cond_crit_edge ]
  %and = and i32 %tmp32.0, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #10
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %buf.i, align 2
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !98

do.body4.i.i:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #10, !srcloc !102
  unreachable

do.end9.i.i:                                      ; preds = %while.body
  %call.i.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 11, i16 noundef zeroext 2, ptr noundef nonnull %buf.i, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then19.i.i, label %do.end9.i.i.do.end9.i.i101_crit_edge, !prof !98

do.end9.i.i.do.end9.i.i101_crit_edge:             ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i101

if.then19.i.i:                                    ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %6, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %call.i.i) #13
  br label %do.end9.i.i101

do.end9.i.i101:                                   ; preds = %if.then19.i.i, %do.end9.i.i.do.end9.i.i101_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i96) #10
  %7 = ptrtoint ptr %rxctl to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %rxctl, align 2
  %9 = call i16 @llvm.bswap.i16(i16 %8) #10
  %10 = ptrtoint ptr %buf.i96 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %buf.i96, align 2
  %call.i.i99 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 11, i16 noundef zeroext 2, ptr noundef nonnull %buf.i96, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i99)
  %cmp.i.i100 = icmp slt i32 %call.i.i99, 0
  br i1 %cmp.i.i100, label %if.then19.i.i103, label %do.end9.i.i101.do.end9.i29.i_crit_edge, !prof !98

do.end9.i.i101.do.end9.i29.i_crit_edge:           ; preds = %do.end9.i.i101
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i29.i

if.then19.i.i103:                                 ; preds = %do.end9.i.i101
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %12, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %call.i.i99) #13
  br label %do.end9.i29.i

do.end9.i29.i:                                    ; preds = %if.then19.i.i103, %do.end9.i.i101.do.end9.i29.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i96) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf6.i) #10
  %13 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %buf6.i, align 4
  %call.i27.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext -127, i8 noundef zeroext -64, i16 noundef zeroext 140, i16 noundef zeroext 0, ptr noundef nonnull %buf6.i, i16 noundef zeroext 4) #10, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27.i)
  %cmp.i28.i = icmp slt i32 %call.i27.i, 0
  br i1 %cmp.i28.i, label %if.then19.i32.i, label %do.end9.i29.i.ax88179_read_cmd.exit_crit_edge, !prof !98

do.end9.i29.i.ax88179_read_cmd.exit_crit_edge:    ; preds = %do.end9.i29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ax88179_read_cmd.exit

if.then19.i32.i:                                  ; preds = %do.end9.i29.i
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %15, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %call.i27.i) #13
  br label %ax88179_read_cmd.exit

ax88179_read_cmd.exit:                            ; preds = %if.then19.i32.i, %do.end9.i29.i.ax88179_read_cmd.exit_crit_edge
  %16 = ptrtoint ptr %buf6.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buf6.i, align 4
  %18 = call i32 @llvm.bswap.i32(i32 %17) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf6.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %19
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %ax88179_read_cmd.exit.cleanup_crit_edge, label %ax88179_read_cmd.exit.while.cond_crit_edge

ax88179_read_cmd.exit.while.cond_crit_edge:       ; preds = %ax88179_read_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

ax88179_read_cmd.exit.cleanup_crit_edge:          ; preds = %ax88179_read_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.end:                                        ; preds = %while.cond
  br i1 %tobool.not.i.i, label %do.body4.i35.i, label %do.end9.i38.i, !prof !98

do.body4.i35.i:                                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 194, 0\0A.popsection", ""() #10, !srcloc !99
  unreachable

do.end9.i38.i:                                    ; preds = %while.end
  %call.i36.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 2, i16 noundef zeroext 1, ptr noundef nonnull %link_sts, i16 noundef zeroext 1) #10, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i)
  %cmp.i37.i = icmp slt i32 %call.i36.i, 0
  br i1 %cmp.i37.i, label %if.then19.i41.i, label %do.end9.i38.i.do.end9.i.i115_crit_edge, !prof !98

do.end9.i38.i.do.end9.i.i115_crit_edge:           ; preds = %do.end9.i38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i115

if.then19.i41.i:                                  ; preds = %do.end9.i38.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %21, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %call.i36.i) #13
  br label %do.end9.i.i115

do.end9.i.i115:                                   ; preds = %if.then19.i41.i, %do.end9.i38.i.do.end9.i.i115_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i109) #10
  %22 = ptrtoint ptr %buf.i109 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %buf.i109, align 2
  %call.i.i113 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 2, i8 noundef zeroext -64, i16 noundef zeroext 3, i16 noundef zeroext 17, ptr noundef nonnull %buf.i109, i16 noundef zeroext 2) #10, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i113)
  %cmp.i.i114 = icmp slt i32 %call.i.i113, 0
  br i1 %cmp.i.i114, label %if.then19.i.i117, label %do.end9.i.i115.ax88179_read_cmd.exit118_crit_edge, !prof !98

do.end9.i.i115.ax88179_read_cmd.exit118_crit_edge: ; preds = %do.end9.i.i115
  call void @__sanitizer_cov_trace_pc() #12
  br label %ax88179_read_cmd.exit118

if.then19.i.i117:                                 ; preds = %do.end9.i.i115
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %24, ptr noundef nonnull @.str.1, i32 noundef 17, i32 noundef %call.i.i113) #13
  br label %ax88179_read_cmd.exit118

ax88179_read_cmd.exit118:                         ; preds = %if.then19.i.i117, %do.end9.i.i115.ax88179_read_cmd.exit118_crit_edge
  %25 = ptrtoint ptr %buf.i109 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %buf.i109, align 2
  %27 = call i16 @llvm.bswap.i16(i16 %26) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i109) #10
  %28 = and i16 %27, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool8.not = icmp eq i16 %28, 0
  br i1 %tobool8.not, label %ax88179_read_cmd.exit118.cleanup_crit_edge, label %if.else

ax88179_read_cmd.exit118.cleanup_crit_edge:       ; preds = %ax88179_read_cmd.exit118
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %ax88179_read_cmd.exit118
  %and11 = and i16 %27, -16384
  %29 = zext i16 %and11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i16 %and11, label %if.else56 [
    i16 -32768, label %if.then14
    i16 16384, label %if.then44
  ]

if.then14:                                        ; preds = %if.else
  %30 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %net.i.i, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 20
  %32 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %33)
  %cmp17 = icmp ugt i32 %33, 1500
  %spec.select = select i1 %cmp17, i16 -32391, i16 313
  %34 = ptrtoint ptr %link_sts to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %link_sts, align 1
  %conv24 = zext i8 %35 to i32
  %and25 = and i32 %conv24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.else29, label %if.then27

if.then27:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %36 = call ptr @memcpy(ptr %tmp, ptr @AX88179_BULKIN_SIZE, i32 5)
  br label %do.end9.i14.i

if.else29:                                        ; preds = %if.then14
  %and31 = and i32 %conv24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.else35, label %if.then33

if.then33:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #12
  %37 = call ptr @memcpy(ptr %tmp, ptr getelementptr inbounds ([4 x %struct.anon.122], ptr @AX88179_BULKIN_SIZE, i32 0, i32 1), i32 5)
  br label %do.end9.i14.i

if.else35:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #12
  %38 = call ptr @memcpy(ptr %tmp, ptr getelementptr inbounds ([4 x %struct.anon.122], ptr @AX88179_BULKIN_SIZE, i32 0, i32 3), i32 5)
  br label %do.end9.i14.i

if.then44:                                        ; preds = %if.else
  %39 = ptrtoint ptr %link_sts to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %link_sts, align 1
  %41 = and i8 %40, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool50.not = icmp eq i8 %41, 0
  br i1 %tobool50.not, label %if.else53, label %if.then51

if.then51:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  %42 = call ptr @memcpy(ptr %tmp, ptr getelementptr inbounds ([4 x %struct.anon.122], ptr @AX88179_BULKIN_SIZE, i32 0, i32 2), i32 5)
  br label %do.end9.i14.i

if.else53:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  %43 = call ptr @memcpy(ptr %tmp, ptr getelementptr inbounds ([4 x %struct.anon.122], ptr @AX88179_BULKIN_SIZE, i32 0, i32 3), i32 5)
  br label %do.end9.i14.i

if.else56:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %44 = call ptr @memcpy(ptr %tmp, ptr getelementptr inbounds ([4 x %struct.anon.122], ptr @AX88179_BULKIN_SIZE, i32 0, i32 3), i32 5)
  br label %do.end9.i14.i

do.end9.i14.i:                                    ; preds = %if.else56, %if.else53, %if.then51, %if.else35, %if.then33, %if.then27
  %mode.1 = phi i16 [ 304, %if.else56 ], [ 816, %if.else53 ], [ 816, %if.then51 ], [ %spec.select, %if.else35 ], [ %spec.select, %if.then33 ], [ %spec.select, %if.then27 ]
  %call.i12.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 46, i16 noundef zeroext 5, ptr noundef nonnull %tmp, i16 noundef zeroext 5) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i)
  %cmp.i13.i = icmp slt i32 %call.i12.i, 0
  br i1 %cmp.i13.i, label %if.then19.i17.i, label %do.end9.i14.i.ax88179_write_cmd.exit120_crit_edge, !prof !98

do.end9.i14.i.ax88179_write_cmd.exit120_crit_edge: ; preds = %do.end9.i14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ax88179_write_cmd.exit120

if.then19.i17.i:                                  ; preds = %do.end9.i14.i
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %46, ptr noundef nonnull @.str.2, i32 noundef 5, i32 noundef %call.i12.i) #13
  br label %ax88179_write_cmd.exit120

ax88179_write_cmd.exit120:                        ; preds = %if.then19.i17.i, %do.end9.i14.i.ax88179_write_cmd.exit120_crit_edge
  %47 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %0, align 1
  %conv63 = zext i8 %48 to i32
  %add64 = shl nuw nsw i32 %conv63, 10
  %mul = add nuw nsw i32 %add64, 2048
  %rx_urb_size = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 24
  %49 = ptrtoint ptr %rx_urb_size to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %mul, ptr %rx_urb_size, align 4
  %50 = lshr i16 %27, 12
  %51 = and i16 %50, 2
  %52 = or i16 %mode.1, %51
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i121) #10
  %53 = call i16 @llvm.bswap.i16(i16 %52) #10
  %54 = ptrtoint ptr %buf.i121 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %buf.i121, align 2
  %call.i.i124 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 34, i16 noundef zeroext 2, ptr noundef nonnull %buf.i121, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i124)
  %cmp.i.i125 = icmp slt i32 %call.i.i124, 0
  br i1 %cmp.i.i125, label %if.then19.i.i128, label %ax88179_write_cmd.exit120.ax88179_write_cmd.exit129_crit_edge, !prof !98

ax88179_write_cmd.exit120.ax88179_write_cmd.exit129_crit_edge: ; preds = %ax88179_write_cmd.exit120
  call void @__sanitizer_cov_trace_pc() #12
  br label %ax88179_write_cmd.exit129

if.then19.i.i128:                                 ; preds = %ax88179_write_cmd.exit120
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %56, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %call.i.i124) #13
  br label %ax88179_write_cmd.exit129

ax88179_write_cmd.exit129:                        ; preds = %if.then19.i.i128, %ax88179_write_cmd.exit120.ax88179_write_cmd.exit129_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i121) #10
  %call74 = call fastcc i32 @ax88179_chk_eee(ptr noundef nonnull %dev)
  %conv75 = trunc i32 %call74 to i8
  %57 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv75, ptr %data, align 2
  %58 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %net.i.i, align 4
  call void @netif_carrier_on(ptr noundef %59) #10
  br label %cleanup

cleanup:                                          ; preds = %ax88179_write_cmd.exit129, %ax88179_read_cmd.exit118.cleanup_crit_edge, %ax88179_read_cmd.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link_sts) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %tmp) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax88179_rx_fixup(ptr noundef %dev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp ult i32 %1, 4
  br i1 %cmp, label %entry.cleanup60_crit_edge, label %if.end

entry.cleanup60_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup60

if.end:                                           ; preds = %entry
  %sub = add i32 %1, -4
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub) #10
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %3, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #10
  %conv3 = and i32 %6, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3)
  %cmp5 = icmp eq i32 %conv3, 0
  br i1 %cmp5, label %if.end.cleanup60_crit_edge, label %if.end8

if.end.cleanup60_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup60

if.end8:                                          ; preds = %if.end
  %shr = lshr i32 %6, 16
  %mul = shl nuw nsw i32 %conv3, 1
  %add = add nuw nsw i32 %mul, %shr
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %8)
  %cmp11 = icmp ugt i32 %add, %8
  br i1 %cmp11, label %if.end8.cleanup60_crit_edge, label %if.end14

if.end8.cleanup60_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup60

if.end14:                                         ; preds = %if.end8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 %shr
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %shr) #10
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #10
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %add.ptr, align 4
  %shr17104 = lshr i32 %13, 16
  %conv18105 = and i32 %shr17104, 8191
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv18105, i32 %16)
  %cmp21106 = icmp ugt i32 %conv18105, %16
  br i1 %cmp21106, label %if.end14.cleanup60_crit_edge, label %if.end14.if.end24_crit_edge

if.end14.if.end24_crit_edge:                      ; preds = %if.end14
  br label %if.end24

if.end14.cleanup60_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup60

if.end24:                                         ; preds = %for.inc.if.end24_crit_edge, %if.end14.if.end24_crit_edge
  %conv18112 = phi i32 [ %conv18, %for.inc.if.end24_crit_edge ], [ %conv18105, %if.end14.if.end24_crit_edge ]
  %17 = phi i32 [ %34, %for.inc.if.end24_crit_edge ], [ %13, %if.end14.if.end24_crit_edge ]
  %pkt_hdr.0110 = phi ptr [ %incdec.ptr, %for.inc.if.end24_crit_edge ], [ %add.ptr, %if.end14.if.end24_crit_edge ]
  %pkt_cnt.0108 = phi i32 [ %dec, %for.inc.if.end24_crit_edge ], [ %conv3, %if.end14.if.end24_crit_edge ]
  %and25 = and i32 %17, -1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %cmp26 = icmp eq i32 %and25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %conv18112)
  %cmp29 = icmp ugt i32 %conv18112, 15
  %or.cond = select i1 %cmp26, i1 %cmp29, i1 false
  br i1 %or.cond, label %if.then31, label %if.end24.cleanup57_crit_edge

if.end24.cleanup57_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup57

if.then31:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pkt_cnt.0108)
  %cmp32 = icmp eq i32 %pkt_cnt.0108, 0
  br i1 %cmp32, label %if.then31.if.end39_crit_edge, label %if.else

if.then31.if.end39_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.else:                                          ; preds = %if.then31
  %call35 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #10
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %if.else.cleanup60_crit_edge, label %if.else.if.end39_crit_edge

if.else.if.end39_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.else.cleanup60_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup60

if.end39:                                         ; preds = %if.else.if.end39_crit_edge, %if.then31.if.end39_crit_edge
  %ax_skb.0 = phi ptr [ %call35, %if.else.if.end39_crit_edge ], [ %skb, %if.then31.if.end39_crit_edge ]
  %len41 = getelementptr inbounds %struct.sk_buff, ptr %ax_skb.0, i32 0, i32 6
  %18 = ptrtoint ptr %len41 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv18112, ptr %len41, align 4
  %call42 = tail call ptr @skb_pull(ptr noundef %ax_skb.0, i32 noundef 2) #10
  %19 = ptrtoint ptr %len41 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len41, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %ax_skb.0, i32 0, i32 19
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 %20
  %tail.i99 = getelementptr inbounds %struct.sk_buff, ptr %ax_skb.0, i32 0, i32 16
  %23 = ptrtoint ptr %tail.i99 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr.i, ptr %tail.i99, align 8
  %add45 = add nuw nsw i32 %conv18112, 200
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %ax_skb.0, i32 0, i32 20
  %24 = ptrtoint ptr %truesize to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add45, ptr %truesize, align 8
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %ax_skb.0, i32 0, i32 15
  %25 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  store i16 %bf.clear.i, ptr %ip_summed.i, align 8
  %26 = ptrtoint ptr %pkt_hdr.0110 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pkt_hdr.0110, align 4
  %28 = and i32 %27, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %if.end.i, label %if.end39.ax88179_rx_checksum.exit_crit_edge

if.end39.ax88179_rx_checksum.exit_crit_edge:      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %ax88179_rx_checksum.exit

if.end.i:                                         ; preds = %if.end39
  %and3.i = and i32 %27, 28
  %30 = zext i32 %and3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %and3.i, label %if.end.i.ax88179_rx_checksum.exit_crit_edge [
    i32 16, label %if.end.i.if.then7.i_crit_edge
    i32 4, label %if.end.i.if.then7.i_crit_edge116
  ]

if.end.i.if.then7.i_crit_edge116:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i

if.end.i.if.then7.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i

if.end.i.ax88179_rx_checksum.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ax88179_rx_checksum.exit

if.then7.i:                                       ; preds = %if.end.i.if.then7.i_crit_edge, %if.end.i.if.then7.i_crit_edge116
  %bf.set11.i = or i16 %bf.clear.i, 512
  %31 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %bf.set11.i, ptr %ip_summed.i, align 8
  br label %ax88179_rx_checksum.exit

ax88179_rx_checksum.exit:                         ; preds = %if.then7.i, %if.end.i.ax88179_rx_checksum.exit_crit_edge, %if.end39.ax88179_rx_checksum.exit_crit_edge
  br i1 %cmp32, label %ax88179_rx_checksum.exit.cleanup60_crit_edge, label %cleanup

ax88179_rx_checksum.exit.cleanup60_crit_edge:     ; preds = %ax88179_rx_checksum.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup60

cleanup:                                          ; preds = %ax88179_rx_checksum.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usbnet_skb_return(ptr noundef %dev, ptr noundef %ax_skb.0) #10
  br label %cleanup57

cleanup57:                                        ; preds = %cleanup, %if.end24.cleanup57_crit_edge
  %add51 = add nuw nsw i32 %conv18112, 7
  %and52 = and i32 %add51, 16376
  %call53 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %and52) #10
  %tobool54.not = icmp eq ptr %call53, null
  br i1 %tobool54.not, label %cleanup57.cleanup60_crit_edge, label %for.inc

cleanup57.cleanup60_crit_edge:                    ; preds = %cleanup57
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup60

for.inc:                                          ; preds = %cleanup57
  %dec = add i32 %pkt_cnt.0108, -1
  %incdec.ptr = getelementptr i32, ptr %pkt_hdr.0110, i32 1
  %32 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %incdec.ptr, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #10
  %35 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %incdec.ptr, align 4
  %shr17 = lshr i32 %34, 16
  %conv18 = and i32 %shr17, 8191
  %36 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len, align 4
  %cmp21 = icmp ugt i32 %conv18, %37
  br i1 %cmp21, label %for.inc.cleanup60_crit_edge, label %for.inc.if.end24_crit_edge

for.inc.if.end24_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

for.inc.cleanup60_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup60

cleanup60:                                        ; preds = %for.inc.cleanup60_crit_edge, %cleanup57.cleanup60_crit_edge, %ax88179_rx_checksum.exit.cleanup60_crit_edge, %if.else.cleanup60_crit_edge, %if.end14.cleanup60_crit_edge, %if.end8.cleanup60_crit_edge, %if.end.cleanup60_crit_edge, %entry.cleanup60_crit_edge
  %retval.4 = phi i32 [ 0, %entry.cleanup60_crit_edge ], [ 0, %if.end.cleanup60_crit_edge ], [ 0, %if.end8.cleanup60_crit_edge ], [ 0, %if.end14.cleanup60_crit_edge ], [ 0, %cleanup57.cleanup60_crit_edge ], [ 0, %for.inc.cleanup60_crit_edge ], [ 0, %if.else.cleanup60_crit_edge ], [ 1, %ax88179_rx_checksum.exit.cleanup60_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ax88179_tx_fixup(ptr nocapture noundef readonly %dev, ptr noundef %skb, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %maxpacket = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %maxpacket to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %maxpacket, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %gso_size, align 4
  %conv = zext i16 %7 to i32
  %add = add i32 %3, 8
  %rem = urem i32 %add, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp = icmp eq i32 %rem, 0
  %or = or i32 %conv, -2147450880
  %spec.select = select i1 %cmp, i32 %or, i32 %conv
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %10 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub = add i32 %sub.ptr.sub.i, -8
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %12 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 23
  %14 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %features, align 16
  %and = and i64 %15, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %land.lhs.true

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

land.lhs.true:                                    ; preds = %entry
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %16 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not.i = icmp eq i32 %17, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.if.end7_crit_edge, label %cond.true.i

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

cond.true.i:                                      ; preds = %land.lhs.true
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %17) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %cond.true.i.cleanup_crit_edge, label %cond.true.i.if.end7_crit_edge

cond.true.i.if.end7_crit_edge:                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

cond.true.i.cleanup_crit_edge:                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %cond.true.i.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge, %entry.if.end7_crit_edge
  %cloned.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %18 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end7.skb_header_cloned.exit_crit_edge, label %if.end.i

if.end7.skb_header_cloned.exit_crit_edge:         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_header_cloned.exit

if.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %end.i, align 4
  %dataref1.i = getelementptr inbounds %struct.skb_shared_info, ptr %20, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i, i32 noundef 4) #10
  %21 = ptrtoint ptr %dataref1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %dataref1.i, align 4
  %and.i = and i32 %22, 65535
  %shr.i = ashr i32 %22, 16
  %sub.i = sub nsw i32 %and.i, %shr.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp.i = icmp ne i32 %sub.i, 1
  br label %skb_header_cloned.exit

skb_header_cloned.exit:                           ; preds = %if.end.i, %if.end7.skb_header_cloned.exit_crit_edge
  %retval.0.i = phi i1 [ %cmp.i, %if.end.i ], [ false, %if.end7.skb_header_cloned.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp10 = icmp slt i32 %sub, 0
  %or.cond = select i1 %retval.0.i, i1 true, i1 %cmp10
  br i1 %or.cond, label %land.lhs.true12, label %skb_header_cloned.exit.if.end18_crit_edge

skb_header_cloned.exit.if.end18_crit_edge:        ; preds = %skb_header_cloned.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

land.lhs.true12:                                  ; preds = %skb_header_cloned.exit
  %23 = lshr i32 %sub, 28
  %24 = and i32 %23, 8
  %call15 = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %24, i32 noundef 0, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true12.if.end18_crit_edge, label %if.then17

land.lhs.true12.if.end18_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then17:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #10
  br label %cleanup

if.end18:                                         ; preds = %land.lhs.true12.if.end18_crit_edge, %skb_header_cloned.exit.if.end18_crit_edge
  %call19 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #10
  %25 = tail call i32 @llvm.bswap.i32(i32 %3) #10
  %26 = ptrtoint ptr %call19 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %call19, align 1
  %add.ptr = getelementptr i8, ptr %call19, i32 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #10
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %27, ptr %add.ptr, align 1
  %29 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %end.i, align 4
  %gso_segs = getelementptr inbounds %struct.skb_shared_info, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %gso_segs to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %gso_segs, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool22.not = icmp eq i16 %32, 0
  %narrow = select i1 %tobool22.not, i16 1, i16 %32
  %conv21. = zext i16 %narrow to i32
  %packets2.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %33 = ptrtoint ptr %packets2.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv21., ptr %packets2.i, align 4
  %length.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %34 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %length.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then17, %cond.true.i.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then17 ], [ %skb, %if.end18 ], [ null, %cond.true.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_endpoints(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ax88179_get_mac_addr(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  %mac = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac) #10
  %0 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 4
  %1 = call ptr @memset(ptr %mac, i32 0, i32 6)
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %call = call i32 @eth_platform_get_mac_address(ptr noundef %dev1, ptr noundef nonnull %mac) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %if.else

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 20
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 4
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body.if.end41_crit_edge, label %do.body5

do.body.if.end41_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88179_get_mac_addr.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88179_get_mac_addr, %if.then10)) #10
          to label %if.end41 [label %if.then10], !srcloc !103

if.then10:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %6 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88179_get_mac_addr.__UNIQUE_ID_ddebug356, ptr noundef %7, ptr noundef nonnull @.str.6) #10
  br label %if.end41

if.else:                                          ; preds = %entry
  %tobool.not.i34.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i34.i, label %do.body4.i35.i, label %do.end9.i38.i, !prof !98

do.body4.i35.i:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 194, 0\0A.popsection", ""() #10, !srcloc !99
  unreachable

do.end9.i38.i:                                    ; preds = %if.else
  %call.i36.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 16, i16 noundef zeroext 6, ptr noundef nonnull %mac, i16 noundef zeroext 6) #10, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i)
  %cmp.i37.i = icmp slt i32 %call.i36.i, 0
  br i1 %cmp.i37.i, label %if.then19.i41.i, label %do.end9.i38.i.ax88179_read_cmd.exit_crit_edge, !prof !98

do.end9.i38.i.ax88179_read_cmd.exit_crit_edge:    ; preds = %do.end9.i38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ax88179_read_cmd.exit

if.then19.i41.i:                                  ; preds = %do.end9.i38.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i39.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %8 = ptrtoint ptr %net.i39.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net.i39.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %9, ptr noundef nonnull @.str.1, i32 noundef 6, i32 noundef %call.i36.i) #13
  br label %ax88179_read_cmd.exit

ax88179_read_cmd.exit:                            ; preds = %if.then19.i41.i, %do.end9.i38.i.ax88179_read_cmd.exit_crit_edge
  %msg_enable17 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 20
  %10 = ptrtoint ptr %msg_enable17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_enable17, align 4
  %and18 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %ax88179_read_cmd.exit.if.end41_crit_edge, label %do.body21

ax88179_read_cmd.exit.if.end41_crit_edge:         ; preds = %ax88179_read_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

do.body21:                                        ; preds = %ax88179_read_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88179_get_mac_addr.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88179_get_mac_addr, %if.then33)) #10
          to label %if.end41 [label %if.then33], !srcloc !103

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #12
  %net34 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %12 = ptrtoint ptr %net34 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net34, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88179_get_mac_addr.__UNIQUE_ID_ddebug357, ptr noundef %13, ptr noundef nonnull @.str.7) #10
  br label %if.end41

if.end41:                                         ; preds = %if.then33, %do.body21, %ax88179_read_cmd.exit.if.end41_crit_edge, %if.then10, %do.body5, %do.body.if.end41_crit_edge
  %14 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mac, align 4
  %16 = and i32 %15, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not.i = icmp eq i32 %16, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end41.if.else47_crit_edge

if.end41.if.else47_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else47

is_valid_ether_addr.exit:                         ; preds = %if.end41
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %0, align 4
  %conv.i.i = zext i16 %18 to i32
  %or.i.i = or i32 %15, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.else47_crit_edge, label %if.then44

is_valid_ether_addr.exit.if.else47_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else47

if.then44:                                        ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  %net45 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %19 = ptrtoint ptr %net45 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net45, align 4
  call void @dev_addr_mod(ptr noundef %20, i32 noundef 0, ptr noundef nonnull %mac, i32 noundef 6) #10
  br label %if.end50

if.else47:                                        ; preds = %is_valid_ether_addr.exit.if.else47_crit_edge, %if.end41.if.else47_crit_edge
  %net48 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %21 = ptrtoint ptr %net48 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net48, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %22, ptr noundef nonnull @.str.8) #13
  %23 = ptrtoint ptr %net48 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %net48, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #10
  %25 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #10
  %26 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %addr.i, align 1
  %28 = and i8 %27, -4
  %29 = or i8 %28, 2
  store i8 %29, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef %24, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #10
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 55
  %30 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #10
  br label %if.end50

if.end50:                                         ; preds = %if.else47, %if.then44
  %net51 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %tobool.not.i10.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i10.i, label %do.body4.i11.i, label %do.end9.i14.i, !prof !98

do.body4.i11.i:                                   ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #10, !srcloc !102
  unreachable

do.end9.i14.i:                                    ; preds = %if.end50
  %31 = ptrtoint ptr %net51 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %net51, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 86
  %33 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_addr, align 64
  %call.i12.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 16, i16 noundef zeroext 6, ptr noundef %34, i16 noundef zeroext 6) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i)
  %cmp.i13.i = icmp slt i32 %call.i12.i, 0
  br i1 %cmp.i13.i, label %if.then19.i17.i, label %do.end9.i14.i.ax88179_write_cmd.exit_crit_edge, !prof !98

do.end9.i14.i.ax88179_write_cmd.exit_crit_edge:   ; preds = %do.end9.i14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ax88179_write_cmd.exit

if.then19.i17.i:                                  ; preds = %do.end9.i14.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %net51 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %net51, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %36, ptr noundef nonnull @.str.2, i32 noundef 6, i32 noundef %call.i12.i) #13
  br label %ax88179_write_cmd.exit

ax88179_write_cmd.exit:                           ; preds = %if.then19.i17.i, %do.end9.i14.i.ax88179_write_cmd.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax88179_mdio_read(ptr noundef %netdev, i32 noundef %phy_id, i32 noundef %loc) #2 align 64 {
entry:
  %buf.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #10
  %0 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %buf.i, align 2
  %tobool.not.i.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !98

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 194, 0\0A.popsection", ""() #10, !srcloc !99
  unreachable

do.end9.i.i:                                      ; preds = %entry
  %conv1 = trunc i32 %loc to i16
  %conv = trunc i32 %phy_id to i16
  %call.i.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 2, i8 noundef zeroext -64, i16 noundef zeroext %conv, i16 noundef zeroext %conv1, ptr noundef nonnull %buf.i, i16 noundef zeroext 2) #10, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then19.i.i, label %do.end9.i.i.ax88179_read_cmd.exit_crit_edge, !prof !98

do.end9.i.i.ax88179_read_cmd.exit_crit_edge:      ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ax88179_read_cmd.exit

if.then19.i.i:                                    ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i = getelementptr i8, ptr %netdev, i32 2548
  %1 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %net.i.i, align 4
  %conv.i.i = and i32 %loc, 65535
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef %conv.i.i, i32 noundef %call.i.i) #13
  br label %ax88179_read_cmd.exit

ax88179_read_cmd.exit:                            ; preds = %if.then19.i.i, %do.end9.i.i.ax88179_read_cmd.exit_crit_edge
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %buf.i, align 2
  %5 = call i16 @llvm.bswap.i16(i16 %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #10
  %conv3 = zext i16 %5 to i32
  ret i32 %conv3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax88179_mdio_write(ptr noundef %netdev, i32 noundef %phy_id, i32 noundef %loc, i32 noundef %val) #2 align 64 {
entry:
  %buf.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %conv = trunc i32 %val to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #10
  %0 = tail call i16 @llvm.bswap.i16(i16 %conv) #10
  %1 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %0, ptr %buf.i, align 2
  %tobool.not.i.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !98

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #10, !srcloc !102
  unreachable

do.end9.i.i:                                      ; preds = %entry
  %conv2 = trunc i32 %loc to i16
  %conv1 = trunc i32 %phy_id to i16
  %call.i.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext %conv1, i16 noundef zeroext %conv2, ptr noundef nonnull %buf.i, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then19.i.i, label %do.end9.i.i.ax88179_write_cmd.exit_crit_edge, !prof !98

do.end9.i.i.ax88179_write_cmd.exit_crit_edge:     ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ax88179_write_cmd.exit

if.then19.i.i:                                    ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i = getelementptr i8, ptr %netdev, i32 2548
  %2 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net.i.i, align 4
  %conv.i.i = and i32 %loc, 65535
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef %conv.i.i, i32 noundef %call.i.i) #13
  br label %ax88179_write_cmd.exit

ax88179_write_cmd.exit:                           ; preds = %if.then19.i.i, %do.end9.i.i.ax88179_write_cmd.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ax88179_led_setting(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %buf.i150 = alloca i16, align 2
  %buf.i140 = alloca i16, align 2
  %buf.i130 = alloca i16, align 2
  %buf.i120 = alloca i16, align 2
  %buf.i110 = alloca i16, align 2
  %buf.i100 = alloca i16, align 2
  %buf.i93 = alloca i16, align 2
  %buf.i.i77 = alloca i16, align 2
  %buf.i.i61 = alloca i16, align 2
  %efuse.i = alloca [64 x i8], align 1
  %buf.i.i = alloca i16, align 2
  %buf.i = alloca i8, align 1
  %eeprom.i = alloca [20 x i8], align 1
  %ledfd = alloca i8, align 1
  %value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ledfd) #10
  %0 = ptrtoint ptr %ledfd to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %ledfd, align 1, !annotation !97
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #10
  %1 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %value, align 1
  %tobool.not.i34.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i34.i, label %do.body4.i35.i, label %do.end9.i38.i, !prof !98

do.body4.i35.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 194, 0\0A.popsection", ""() #10, !srcloc !99
  unreachable

do.end9.i38.i:                                    ; preds = %entry
  %call.i36.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 3, i16 noundef zeroext 1, ptr noundef nonnull %value, i16 noundef zeroext 1) #10, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i)
  %cmp.i37.i = icmp slt i32 %call.i36.i, 0
  br i1 %cmp.i37.i, label %if.then19.i41.i, label %do.end9.i38.i.ax88179_read_cmd.exit_crit_edge, !prof !98

do.end9.i38.i.ax88179_read_cmd.exit_crit_edge:    ; preds = %do.end9.i38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ax88179_read_cmd.exit

if.then19.i41.i:                                  ; preds = %do.end9.i38.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i39.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %net.i39.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net.i39.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %call.i36.i) #13
  br label %ax88179_read_cmd.exit

ax88179_read_cmd.exit:                            ; preds = %if.then19.i41.i, %do.end9.i38.i.ax88179_read_cmd.exit_crit_edge
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %value, align 1
  %6 = and i8 %5, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %do.end9.i14.i, label %ax88179_read_cmd.exit.if.end4_crit_edge

ax88179_read_cmd.exit.if.end4_crit_edge:          ; preds = %ax88179_read_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

do.end9.i14.i:                                    ; preds = %ax88179_read_cmd.exit
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -32, ptr %value, align 1
  %call.i12.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 37, i16 noundef zeroext 1, ptr noundef nonnull %value, i16 noundef zeroext 1) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i)
  %cmp.i13.i = icmp slt i32 %call.i12.i, 0
  br i1 %cmp.i13.i, label %ax88179_write_cmd.exit.thread, label %do.end9.i14.i.if.end4_crit_edge, !prof !98

do.end9.i14.i.if.end4_crit_edge:                  ; preds = %do.end9.i14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

ax88179_write_cmd.exit.thread:                    ; preds = %do.end9.i14.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i15.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  br label %cleanup.sink.split

if.end4:                                          ; preds = %do.end9.i14.i.if.end4_crit_edge, %ax88179_read_cmd.exit.if.end4_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %eeprom.i) #10
  %8 = getelementptr inbounds [20 x i8], ptr %eeprom.i, i32 0, i32 6
  %9 = getelementptr inbounds [20 x i8], ptr %eeprom.i, i32 0, i32 7
  %10 = getelementptr inbounds [20 x i8], ptr %eeprom.i, i32 0, i32 8
  %11 = getelementptr inbounds [20 x i8], ptr %eeprom.i, i32 0, i32 9
  %12 = getelementptr inbounds [20 x i8], ptr %eeprom.i, i32 0, i32 10
  %net.i39.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %13 = call ptr @memset(ptr %eeprom.i, i32 255, i32 20)
  br label %do.end9.i14.i.i

do.end9.i14.i.i:                                  ; preds = %for.inc.i.do.end9.i14.i.i_crit_edge, %if.end4
  %indvars.iv.i = phi i32 [ 0, %if.end4 ], [ %indvars.iv.next.i, %for.inc.i.do.end9.i14.i.i_crit_edge ]
  %14 = trunc i32 %indvars.iv.i to i8
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %buf.i, align 1
  %call.i12.i.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 7, i16 noundef zeroext 1, ptr noundef nonnull %buf.i, i16 noundef zeroext 1) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %cmp.i13.i.i = icmp slt i32 %call.i12.i.i, 0
  br i1 %cmp.i13.i.i, label %do.end9.i14.i.i.do.end9.i38.i.i49.sink.split_crit_edge, label %do.end9.i14.i70.i, !prof !98

do.end9.i14.i.i.do.end9.i38.i.i49.sink.split_crit_edge: ; preds = %do.end9.i14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i38.i.i49.sink.split

do.end9.i14.i70.i:                                ; preds = %do.end9.i14.i.i
  %16 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 4, ptr %buf.i, align 1
  %call.i12.i68.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 10, i16 noundef zeroext 1, ptr noundef nonnull %buf.i, i16 noundef zeroext 1) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i68.i)
  %cmp.i13.i69.i = icmp slt i32 %call.i12.i68.i, 0
  br i1 %cmp.i13.i69.i, label %do.end9.i14.i70.i.do.end9.i38.i.i49.sink.split_crit_edge, label %if.end8.i, !prof !98

do.end9.i14.i70.i.do.end9.i38.i.i49.sink.split_crit_edge: ; preds = %do.end9.i14.i70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i38.i.i49.sink.split

if.end8.i:                                        ; preds = %do.end9.i14.i70.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %17, 10
  br label %do.end9.i38.i.i

do.end9.i38.i.i:                                  ; preds = %do.cond.i.do.end9.i38.i.i_crit_edge, %if.end8.i
  %call.i36.i.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 10, i16 noundef zeroext 1, ptr noundef nonnull %buf.i, i16 noundef zeroext 1) #10, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i.i)
  %cmp.i37.i.i = icmp slt i32 %call.i36.i.i, 0
  br i1 %cmp.i37.i.i, label %if.then19.i41.i.i, label %do.end9.i38.i.i.ax88179_read_cmd.exit.i_crit_edge, !prof !98

do.end9.i38.i.i.ax88179_read_cmd.exit.i_crit_edge: ; preds = %do.end9.i38.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ax88179_read_cmd.exit.i

if.then19.i41.i.i:                                ; preds = %do.end9.i38.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %net.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net.i39.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %19, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %call.i36.i.i) #13
  br label %ax88179_read_cmd.exit.i

ax88179_read_cmd.exit.i:                          ; preds = %if.then19.i41.i.i, %do.end9.i38.i.i.ax88179_read_cmd.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp11.i = icmp slt i32 %sub.i, 0
  br i1 %cmp11.i, label %ax88179_read_cmd.exit.i.do.end9.i38.i.i49_crit_edge, label %do.cond.i

ax88179_read_cmd.exit.i.do.end9.i38.i.i49_crit_edge: ; preds = %ax88179_read_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i38.i.i49

do.cond.i:                                        ; preds = %ax88179_read_cmd.exit.i
  %21 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %buf.i, align 1
  %23 = and i8 %22, 16
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %do.end9.i.i, label %do.cond.i.do.end9.i38.i.i_crit_edge

do.cond.i.do.end9.i38.i.i_crit_edge:              ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i38.i.i

do.end9.i.i:                                      ; preds = %do.cond.i
  %mul.i = shl nuw nsw i32 %indvars.iv.i, 1
  %arrayidx.i = getelementptr [20 x i8], ptr %eeprom.i, i32 0, i32 %mul.i
  %call.i.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 8, i16 noundef zeroext 2, ptr noundef %arrayidx.i, i16 noundef zeroext 2) #10, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then19.i.i, label %do.end9.i.i.__ax88179_read_cmd.exit.i_crit_edge, !prof !98

do.end9.i.i.__ax88179_read_cmd.exit.i_crit_edge:  ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ax88179_read_cmd.exit.i

if.then19.i.i:                                    ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %net.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net.i39.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %25, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef %call.i.i) #13
  br label %__ax88179_read_cmd.exit.i

__ax88179_read_cmd.exit.i:                        ; preds = %if.then19.i.i, %do.end9.i.i.__ax88179_read_cmd.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv.i)
  %cmp19.i = icmp eq i32 %indvars.iv.i, 0
  br i1 %cmp19.i, label %land.lhs.true.i, label %__ax88179_read_cmd.exit.i.for.inc.i_crit_edge

__ax88179_read_cmd.exit.i.for.inc.i_crit_edge:    ; preds = %__ax88179_read_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %__ax88179_read_cmd.exit.i
  %26 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %eeprom.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %27)
  %cmp23.i = icmp eq i8 %27, -1
  br i1 %cmp23.i, label %land.lhs.true.i.do.end9.i38.i.i49_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i.do.end9.i38.i.i49_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i38.i.i49

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %__ax88179_read_cmd.exit.i.for.inc.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 6
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.do.end9.i14.i.i_crit_edge

for.inc.i.do.end9.i14.i.i_crit_edge:              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i14.i.i

for.end.i:                                        ; preds = %for.inc.i
  %28 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %8, align 1
  %conv28.i = zext i8 %29 to i32
  %30 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %9, align 1
  %conv30.i = zext i8 %31 to i32
  %add31.i = add nuw nsw i32 %conv30.i, %conv28.i
  %32 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %10, align 1
  %conv33.i = zext i8 %33 to i32
  %add34.i = add nuw nsw i32 %add31.i, %conv33.i
  %34 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %11, align 1
  %conv36.i = zext i8 %35 to i32
  %add37.i = add nuw nsw i32 %add34.i, %conv36.i
  %36 = lshr i32 %add37.i, 8
  %and41.i = and i32 %add37.i, 255
  %37 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %12, align 1
  %conv46.i = zext i8 %38 to i32
  %add42.i = add nuw nsw i32 %and41.i, %conv46.i
  %add47.i = add nuw nsw i32 %add42.i, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add47.i)
  %cmp48.not.i = icmp eq i32 %add47.i, 255
  br i1 %cmp48.not.i, label %do.end9.i14.i7, label %for.end.i.do.end9.i38.i.i49_crit_edge

for.end.i.do.end9.i38.i.i49_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i38.i.i49

do.end9.i14.i7:                                   ; preds = %for.end.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %eeprom.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #10
  %39 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 66, ptr %value, align 1
  %call.i12.i5 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 7, i16 noundef zeroext 1, ptr noundef nonnull %value, i16 noundef zeroext 1) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i5)
  %cmp.i13.i6 = icmp slt i32 %call.i12.i5, 0
  br i1 %cmp.i13.i6, label %do.end9.i14.i7.cleanup.sink.split_crit_edge, label %do.end9.i14.i16, !prof !98

do.end9.i14.i7.cleanup.sink.split_crit_edge:      ; preds = %do.end9.i14.i7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

do.end9.i14.i16:                                  ; preds = %do.end9.i14.i7
  %40 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 4, ptr %value, align 1
  %call.i12.i14 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 10, i16 noundef zeroext 1, ptr noundef nonnull %value, i16 noundef zeroext 1) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i14)
  %cmp.i13.i15 = icmp slt i32 %call.i12.i14, 0
  br i1 %cmp.i13.i15, label %do.end9.i14.i16.cleanup.sink.split_crit_edge, label %if.end17, !prof !98

do.end9.i14.i16.cleanup.sink.split_crit_edge:     ; preds = %do.end9.i14.i16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end17:                                         ; preds = %do.end9.i14.i16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %41, 10
  br label %do.end9.i38.i25

do.end9.i38.i25:                                  ; preds = %do.cond.do.end9.i38.i25_crit_edge, %if.end17
  %call.i36.i23 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 10, i16 noundef zeroext 1, ptr noundef nonnull %value, i16 noundef zeroext 1) #10, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i23)
  %cmp.i37.i24 = icmp slt i32 %call.i36.i23, 0
  br i1 %cmp.i37.i24, label %if.then19.i41.i27, label %do.end9.i38.i25.ax88179_read_cmd.exit28_crit_edge, !prof !98

do.end9.i38.i25.ax88179_read_cmd.exit28_crit_edge: ; preds = %do.end9.i38.i25
  call void @__sanitizer_cov_trace_pc() #12
  br label %ax88179_read_cmd.exit28

if.then19.i41.i27:                                ; preds = %do.end9.i38.i25
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %net.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %net.i39.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %43, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %call.i36.i23) #13
  br label %ax88179_read_cmd.exit28

ax88179_read_cmd.exit28:                          ; preds = %if.then19.i41.i27, %do.end9.i38.i25.ax88179_read_cmd.exit28_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp20 = icmp slt i32 %sub, 0
  br i1 %cmp20, label %ax88179_read_cmd.exit28.cleanup_crit_edge, label %do.cond

ax88179_read_cmd.exit28.cleanup_crit_edge:        ; preds = %ax88179_read_cmd.exit28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.cond:                                          ; preds = %ax88179_read_cmd.exit28
  %45 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %value, align 1
  %47 = and i8 %46, 16
  %tobool26.not = icmp eq i8 %47, 0
  br i1 %tobool26.not, label %do.end9.i38.i34, label %do.cond.do.end9.i38.i25_crit_edge

do.cond.do.end9.i38.i25_crit_edge:                ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i38.i25

do.end9.i38.i34:                                  ; preds = %do.cond
  %call.i36.i32 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 9, i16 noundef zeroext 1, ptr noundef nonnull %value, i16 noundef zeroext 1) #10, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i32)
  %cmp.i37.i33 = icmp slt i32 %call.i36.i32, 0
  br i1 %cmp.i37.i33, label %if.then19.i41.i36, label %do.end9.i38.i34.do.end9.i38.i43_crit_edge, !prof !98

do.end9.i38.i34.do.end9.i38.i43_crit_edge:        ; preds = %do.end9.i38.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i38.i43

if.then19.i41.i36:                                ; preds = %do.end9.i38.i34
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %net.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %net.i39.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %49, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %call.i36.i32) #13
  br label %do.end9.i38.i43

do.end9.i38.i43:                                  ; preds = %if.then19.i41.i36, %do.end9.i38.i34.do.end9.i38.i43_crit_edge
  %50 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %value, align 1
  %conv28 = zext i8 %51 to i16
  %shl = shl nuw i16 %conv28, 8
  %call.i36.i41 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 8, i16 noundef zeroext 1, ptr noundef nonnull %value, i16 noundef zeroext 1) #10, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i41)
  %cmp.i37.i42 = icmp slt i32 %call.i36.i41, 0
  br i1 %cmp.i37.i42, label %if.then19.i41.i45, label %do.end9.i38.i43.ax88179_read_cmd.exit46_crit_edge, !prof !98

do.end9.i38.i43.ax88179_read_cmd.exit46_crit_edge: ; preds = %do.end9.i38.i43
  call void @__sanitizer_cov_trace_pc() #12
  br label %ax88179_read_cmd.exit46

if.then19.i41.i45:                                ; preds = %do.end9.i38.i43
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %net.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %net.i39.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %53, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %call.i36.i41) #13
  br label %ax88179_read_cmd.exit46

ax88179_read_cmd.exit46:                          ; preds = %if.then19.i41.i45, %do.end9.i38.i43.ax88179_read_cmd.exit46_crit_edge
  %54 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %value, align 1
  %conv31 = zext i8 %55 to i16
  %or = or i16 %shl, %conv31
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %or)
  %cmp35 = icmp eq i16 %or, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %shl)
  %cmp39 = icmp sgt i16 %shl, -1
  %or.cond = or i1 %cmp39, %cmp35
  br i1 %or.cond, label %do.end9.i.i.i, label %ax88179_read_cmd.exit46.do.end9.i.i96_crit_edge

ax88179_read_cmd.exit46.do.end9.i.i96_crit_edge:  ; preds = %ax88179_read_cmd.exit46
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i96

do.end9.i.i.i:                                    ; preds = %ax88179_read_cmd.exit46
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #10
  %56 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 0, ptr %buf.i.i, align 2
  %call.i.i.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 4, i8 noundef zeroext -64, i16 noundef zeroext 60, i16 noundef zeroext 1, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 2) #10, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %ax88179_read_cmd.exit.thread.i, label %if.end.i, !prof !98

ax88179_read_cmd.exit.thread.i:                   ; preds = %do.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %net.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %net.i39.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %58, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %call.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #10
  br label %do.end9.i.i96

if.end.i:                                         ; preds = %do.end9.i.i.i
  %59 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %buf.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #10
  %trunc.i = trunc i16 %60 to i8
  %switch.tableidx = add i8 %trunc.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %61 = icmp ult i8 %switch.tableidx, 3
  br i1 %61, label %switch.lookup, label %if.end.i.do.end9.i.i96_crit_edge

if.end.i.do.end9.i.i96_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i96

do.end9.i38.i.i49.sink.split:                     ; preds = %do.end9.i14.i70.i.do.end9.i38.i.i49.sink.split_crit_edge, %do.end9.i14.i.i.do.end9.i38.i.i49.sink.split_crit_edge
  %call.i12.i68.i.lcssa.sink = phi i32 [ %call.i12.i.i, %do.end9.i14.i.i.do.end9.i38.i.i49.sink.split_crit_edge ], [ %call.i12.i68.i, %do.end9.i14.i70.i.do.end9.i38.i.i49.sink.split_crit_edge ]
  %62 = ptrtoint ptr %net.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %net.i39.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %63, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %call.i12.i68.i.lcssa.sink) #13
  br label %do.end9.i38.i.i49

do.end9.i38.i.i49:                                ; preds = %do.end9.i38.i.i49.sink.split, %for.end.i.do.end9.i38.i.i49_crit_edge, %land.lhs.true.i.do.end9.i38.i.i49_crit_edge, %ax88179_read_cmd.exit.i.do.end9.i38.i.i49_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %eeprom.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %efuse.i) #10
  %64 = call ptr @memset(ptr %efuse.i, i32 255, i32 64)
  %call.i36.i.i47 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 5, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 64, ptr noundef nonnull %efuse.i, i16 noundef zeroext 64) #10, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i.i47)
  %cmp.i37.i.i48 = icmp slt i32 %call.i36.i.i47, 0
  br i1 %cmp.i37.i.i48, label %ax88179_read_cmd.exit.thread.i51, label %if.end.i52, !prof !98

ax88179_read_cmd.exit.thread.i51:                 ; preds = %do.end9.i38.i.i49
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %net.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %net.i39.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %66, ptr noundef nonnull @.str.1, i32 noundef 64, i32 noundef %call.i36.i.i47) #13
  br label %do.end9.i.i.i82

if.end.i52:                                       ; preds = %do.end9.i38.i.i49
  %67 = ptrtoint ptr %efuse.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %efuse.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %68)
  %cmp2.i = icmp eq i8 %68, -1
  br i1 %cmp2.i, label %if.end.i52.do.end9.i.i.i82_crit_edge, label %if.end.i52.for.body.i58_crit_edge

if.end.i52.for.body.i58_crit_edge:                ; preds = %if.end.i52
  br label %for.body.i58

if.end.i52.do.end9.i.i.i82_crit_edge:             ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i.i82

while.cond.preheader.i:                           ; preds = %for.body.i58
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %add.i55)
  %cmp1340.i = icmp ugt i16 %add.i55, 255
  br i1 %cmp1340.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond.preheader.i.while.end.i_crit_edge

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

for.body.i58:                                     ; preds = %for.body.i58.for.body.i58_crit_edge, %if.end.i52.for.body.i58_crit_edge
  %indvars.iv.i53 = phi i32 [ %indvars.iv.next.i56, %for.body.i58.for.body.i58_crit_edge ], [ 0, %if.end.i52.for.body.i58_crit_edge ]
  %csum.039.i = phi i16 [ %add.i55, %for.body.i58.for.body.i58_crit_edge ], [ 0, %if.end.i52.for.body.i58_crit_edge ]
  %arrayidx.i54 = getelementptr [64 x i8], ptr %efuse.i, i32 0, i32 %indvars.iv.i53
  %69 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx.i54, align 1
  %conv10.i = zext i8 %70 to i16
  %add.i55 = add i16 %csum.039.i, %conv10.i
  %indvars.iv.next.i56 = add nuw nsw i32 %indvars.iv.i53, 1
  %exitcond.not.i57 = icmp eq i32 %indvars.iv.next.i56, 64
  br i1 %exitcond.not.i57, label %while.cond.preheader.i, label %for.body.i58.for.body.i58_crit_edge

for.body.i58.for.body.i58_crit_edge:              ; preds = %for.body.i58
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i58

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %csum.141.i = phi i16 [ %add18.i, %while.body.i.while.body.i_crit_edge ], [ %add.i55, %while.cond.preheader.i.while.body.i_crit_edge ]
  %and.i = and i16 %csum.141.i, 255
  %71 = lshr i16 %csum.141.i, 8
  %add18.i = add nuw nsw i16 %and.i, %71
  %cmp13.i = icmp ugt i16 %add18.i, 255
  br i1 %cmp13.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %csum.1.lcssa.i = phi i16 [ %add.i55, %while.cond.preheader.i.while.end.i_crit_edge ], [ %add18.i, %while.body.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %csum.1.lcssa.i)
  %cmp21.not.i = icmp eq i16 %csum.1.lcssa.i, 255
  br i1 %cmp21.not.i, label %if.then46, label %while.end.i.do.end9.i.i.i82_crit_edge

while.end.i.do.end9.i.i.i82_crit_edge:            ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i.i82

if.then46:                                        ; preds = %while.end.i
  %arrayidx25.i = getelementptr inbounds [64 x i8], ptr %efuse.i, i32 0, i32 51
  %72 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx25.i, align 1
  %conv26.i = zext i8 %73 to i16
  %shl.i = shl nuw i16 %conv26.i, 8
  %arrayidx27.i = getelementptr inbounds [64 x i8], ptr %efuse.i, i32 0, i32 52
  %74 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx27.i, align 1
  %conv28.i59 = zext i8 %75 to i16
  %or.i = or i16 %shl.i, %conv28.i59
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %efuse.i) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 -2, i16 %or.i)
  %76 = icmp sgt i16 %or.i, -2
  br i1 %76, label %do.end9.i.i.i66, label %if.then46.do.end9.i.i96_crit_edge

if.then46.do.end9.i.i96_crit_edge:                ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i96

do.end9.i.i.i66:                                  ; preds = %if.then46
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i61) #10
  %77 = ptrtoint ptr %buf.i.i61 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 0, ptr %buf.i.i61, align 2
  %call.i.i.i64 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 4, i8 noundef zeroext -64, i16 noundef zeroext 60, i16 noundef zeroext 1, ptr noundef nonnull %buf.i.i61, i16 noundef zeroext 2) #10, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i64)
  %cmp.i.i.i65 = icmp slt i32 %call.i.i.i64, 0
  br i1 %cmp.i.i.i65, label %ax88179_read_cmd.exit.thread.i68, label %if.end.i70, !prof !98

ax88179_read_cmd.exit.thread.i68:                 ; preds = %do.end9.i.i.i66
  call void @__sanitizer_cov_trace_pc() #12
  %78 = ptrtoint ptr %net.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %net.i39.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %79, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %call.i.i.i64) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i61) #10
  br label %do.end9.i.i96

if.end.i70:                                       ; preds = %do.end9.i.i.i66
  %80 = ptrtoint ptr %buf.i.i61 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %buf.i.i61, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i61) #10
  %trunc.i69 = trunc i16 %81 to i8
  %switch.tableidx237 = add i8 %trunc.i69, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx237)
  %82 = icmp ult i8 %switch.tableidx237, 3
  br i1 %82, label %switch.lookup236, label %if.end.i70.do.end9.i.i96_crit_edge

if.end.i70.do.end9.i.i96_crit_edge:               ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i96

do.end9.i.i.i82:                                  ; preds = %while.end.i.do.end9.i.i.i82_crit_edge, %if.end.i52.do.end9.i.i.i82_crit_edge, %ax88179_read_cmd.exit.thread.i51
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %efuse.i) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i77) #10
  %83 = ptrtoint ptr %buf.i.i77 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 0, ptr %buf.i.i77, align 2
  %call.i.i.i80 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 4, i8 noundef zeroext -64, i16 noundef zeroext 60, i16 noundef zeroext 1, ptr noundef nonnull %buf.i.i77, i16 noundef zeroext 2) #10, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i80)
  %cmp.i.i.i81 = icmp slt i32 %call.i.i.i80, 0
  br i1 %cmp.i.i.i81, label %ax88179_read_cmd.exit.thread.i84, label %if.end.i86, !prof !98

ax88179_read_cmd.exit.thread.i84:                 ; preds = %do.end9.i.i.i82
  call void @__sanitizer_cov_trace_pc() #12
  %84 = ptrtoint ptr %net.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %net.i39.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %85, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %call.i.i.i80) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i77) #10
  br label %do.end9.i.i96

if.end.i86:                                       ; preds = %do.end9.i.i.i82
  %86 = ptrtoint ptr %buf.i.i77 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %buf.i.i77, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i77) #10
  %trunc.i85 = trunc i16 %87 to i8
  %switch.tableidx241 = add i8 %trunc.i85, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx241)
  %88 = icmp ult i8 %switch.tableidx241, 3
  br i1 %88, label %switch.lookup240, label %if.end.i86.do.end9.i.i96_crit_edge

if.end.i86.do.end9.i.i96_crit_edge:               ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i96

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %89 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i16], ptr @switch.table.ax88179_led_setting, i32 0, i32 %89
  %90 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %90)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %do.end9.i.i96

switch.lookup236:                                 ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #12
  %91 = sext i8 %switch.tableidx237 to i32
  %switch.gep238 = getelementptr inbounds [3 x i16], ptr @switch.table.ax88179_led_setting.25, i32 0, i32 %91
  %92 = ptrtoint ptr %switch.gep238 to i32
  call void @__asan_load2_noabort(i32 %92)
  %switch.load239 = load i16, ptr %switch.gep238, align 2
  br label %do.end9.i.i96

switch.lookup240:                                 ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #12
  %93 = sext i8 %switch.tableidx241 to i32
  %switch.gep242 = getelementptr inbounds [3 x i16], ptr @switch.table.ax88179_led_setting.26, i32 0, i32 %93
  %94 = ptrtoint ptr %switch.gep242 to i32
  call void @__asan_load2_noabort(i32 %94)
  %switch.load243 = load i16, ptr %switch.gep242, align 2
  br label %do.end9.i.i96

do.end9.i.i96:                                    ; preds = %switch.lookup240, %switch.lookup236, %switch.lookup, %if.end.i86.do.end9.i.i96_crit_edge, %ax88179_read_cmd.exit.thread.i84, %if.end.i70.do.end9.i.i96_crit_edge, %ax88179_read_cmd.exit.thread.i68, %if.then46.do.end9.i.i96_crit_edge, %if.end.i.do.end9.i.i96_crit_edge, %ax88179_read_cmd.exit.thread.i, %ax88179_read_cmd.exit46.do.end9.i.i96_crit_edge
  %ledvalue.4 = phi i16 [ %or, %ax88179_read_cmd.exit46.do.end9.i.i96_crit_edge ], [ %or.i, %if.then46.do.end9.i.i96_crit_edge ], [ %or, %ax88179_read_cmd.exit.thread.i ], [ -16959, %if.end.i.do.end9.i.i96_crit_edge ], [ %or.i, %ax88179_read_cmd.exit.thread.i68 ], [ -16959, %if.end.i70.do.end9.i.i96_crit_edge ], [ 0, %ax88179_read_cmd.exit.thread.i84 ], [ -16959, %if.end.i86.do.end9.i.i96_crit_edge ], [ %switch.load, %switch.lookup ], [ %switch.load239, %switch.lookup236 ], [ %switch.load243, %switch.lookup240 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i93) #10
  %95 = ptrtoint ptr %buf.i93 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 1792, ptr %buf.i93, align 2
  %call.i.i94 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 31, ptr noundef nonnull %buf.i93, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i94)
  %cmp.i.i95 = icmp slt i32 %call.i.i94, 0
  br i1 %cmp.i.i95, label %if.then19.i.i97, label %do.end9.i.i96.do.end9.i.i105_crit_edge, !prof !98

do.end9.i.i96.do.end9.i.i105_crit_edge:           ; preds = %do.end9.i.i96
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i105

if.then19.i.i97:                                  ; preds = %do.end9.i.i96
  call void @__sanitizer_cov_trace_pc() #12
  %96 = ptrtoint ptr %net.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %net.i39.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %97, ptr noundef nonnull @.str.2, i32 noundef 31, i32 noundef %call.i.i94) #13
  br label %do.end9.i.i105

do.end9.i.i105:                                   ; preds = %if.then19.i.i97, %do.end9.i.i96.do.end9.i.i105_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i93) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i100) #10
  %98 = ptrtoint ptr %buf.i100 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 11264, ptr %buf.i100, align 2
  %call.i.i103 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 30, ptr noundef nonnull %buf.i100, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i103)
  %cmp.i.i104 = icmp slt i32 %call.i.i103, 0
  br i1 %cmp.i.i104, label %if.then19.i.i107, label %do.end9.i.i105.do.end9.i.i115_crit_edge, !prof !98

do.end9.i.i105.do.end9.i.i115_crit_edge:          ; preds = %do.end9.i.i105
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i115

if.then19.i.i107:                                 ; preds = %do.end9.i.i105
  call void @__sanitizer_cov_trace_pc() #12
  %99 = ptrtoint ptr %net.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %net.i39.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %100, ptr noundef nonnull @.str.2, i32 noundef 30, i32 noundef %call.i.i103) #13
  br label %do.end9.i.i115

do.end9.i.i115:                                   ; preds = %if.then19.i.i107, %do.end9.i.i105.do.end9.i.i115_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i100) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i110) #10
  %101 = ptrtoint ptr %buf.i110 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 0, ptr %buf.i110, align 2
  %call.i.i113 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 2, i8 noundef zeroext -64, i16 noundef zeroext 3, i16 noundef zeroext 26, ptr noundef nonnull %buf.i110, i16 noundef zeroext 2) #10, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i113)
  %cmp.i.i114 = icmp slt i32 %call.i.i113, 0
  br i1 %cmp.i.i114, label %if.then19.i.i117, label %do.end9.i.i115.do.end9.i.i125_crit_edge, !prof !98

do.end9.i.i115.do.end9.i.i125_crit_edge:          ; preds = %do.end9.i.i115
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i125

if.then19.i.i117:                                 ; preds = %do.end9.i.i115
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %net.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %net.i39.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %103, ptr noundef nonnull @.str.1, i32 noundef 26, i32 noundef %call.i.i113) #13
  br label %do.end9.i.i125

do.end9.i.i125:                                   ; preds = %if.then19.i.i117, %do.end9.i.i115.do.end9.i.i125_crit_edge
  %104 = ptrtoint ptr %buf.i110 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %buf.i110, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i110) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i120) #10
  %106 = ptrtoint ptr %buf.i120 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 0, ptr %buf.i120, align 2
  %call.i.i123 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 2, i8 noundef zeroext -64, i16 noundef zeroext 3, i16 noundef zeroext 28, ptr noundef nonnull %buf.i120, i16 noundef zeroext 2) #10, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i123)
  %cmp.i.i124 = icmp slt i32 %call.i.i123, 0
  br i1 %cmp.i.i124, label %if.then19.i.i127, label %do.end9.i.i125.ax88179_read_cmd.exit129_crit_edge, !prof !98

do.end9.i.i125.ax88179_read_cmd.exit129_crit_edge: ; preds = %do.end9.i.i125
  call void @__sanitizer_cov_trace_pc() #12
  br label %ax88179_read_cmd.exit129

if.then19.i.i127:                                 ; preds = %do.end9.i.i125
  call void @__sanitizer_cov_trace_pc() #12
  %107 = ptrtoint ptr %net.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %net.i39.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %108, ptr noundef nonnull @.str.1, i32 noundef 28, i32 noundef %call.i.i123) #13
  br label %ax88179_read_cmd.exit129

ax88179_read_cmd.exit129:                         ; preds = %if.then19.i.i127, %do.end9.i.i125.ax88179_read_cmd.exit129_crit_edge
  %109 = ptrtoint ptr %buf.i120 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %buf.i120, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i120) #10
  %111 = and i16 %105, -28673
  %112 = call i16 @llvm.bswap.i16(i16 %111)
  %113 = and i16 %110, -30472
  %114 = call i16 @llvm.bswap.i16(i16 %113)
  %115 = shl i16 %ledvalue.4, 4
  %116 = and i16 %115, 16
  %117 = and i16 %ledvalue.4, 32
  %118 = lshr i16 %ledvalue.4, 4
  %119 = and i16 %118, 64
  %120 = or i16 %116, %117
  %121 = or i16 %120, %119
  %122 = or i16 %121, %112
  %123 = lshr i16 %ledvalue.4, 1
  %124 = and i16 %123, 1
  %125 = lshr i16 %ledvalue.4, 2
  %126 = and i16 %125, 16
  %127 = lshr i16 %ledvalue.4, 3
  %128 = and i16 %127, 256
  %129 = and i16 %123, 2
  %130 = and i16 %125, 32
  %131 = and i16 %127, 512
  %132 = and i16 %123, 4
  %133 = and i16 %125, 64
  %134 = and i16 %127, 1024
  %135 = or i16 %126, %124
  %136 = or i16 %135, %128
  %137 = or i16 %136, %129
  %138 = or i16 %137, %130
  %139 = or i16 %138, %131
  %140 = or i16 %139, %132
  %141 = or i16 %140, %133
  %142 = or i16 %141, %134
  %143 = or i16 %142, %114
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i130) #10
  %144 = call i16 @llvm.bswap.i16(i16 %122) #10
  %145 = ptrtoint ptr %buf.i130 to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %144, ptr %buf.i130, align 2
  %call.i.i133 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 26, ptr noundef nonnull %buf.i130, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i133)
  %cmp.i.i134 = icmp slt i32 %call.i.i133, 0
  br i1 %cmp.i.i134, label %if.then19.i.i137, label %ax88179_read_cmd.exit129.do.end9.i.i145_crit_edge, !prof !98

ax88179_read_cmd.exit129.do.end9.i.i145_crit_edge: ; preds = %ax88179_read_cmd.exit129
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i145

if.then19.i.i137:                                 ; preds = %ax88179_read_cmd.exit129
  call void @__sanitizer_cov_trace_pc() #12
  %146 = ptrtoint ptr %net.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %net.i39.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %147, ptr noundef nonnull @.str.2, i32 noundef 26, i32 noundef %call.i.i133) #13
  br label %do.end9.i.i145

do.end9.i.i145:                                   ; preds = %if.then19.i.i137, %ax88179_read_cmd.exit129.do.end9.i.i145_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i130) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i140) #10
  %148 = call i16 @llvm.bswap.i16(i16 %143) #10
  %149 = ptrtoint ptr %buf.i140 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %148, ptr %buf.i140, align 2
  %call.i.i143 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 28, ptr noundef nonnull %buf.i140, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i143)
  %cmp.i.i144 = icmp slt i32 %call.i.i143, 0
  br i1 %cmp.i.i144, label %if.then19.i.i147, label %do.end9.i.i145.do.end9.i.i155_crit_edge, !prof !98

do.end9.i.i145.do.end9.i.i155_crit_edge:          ; preds = %do.end9.i.i145
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i155

if.then19.i.i147:                                 ; preds = %do.end9.i.i145
  call void @__sanitizer_cov_trace_pc() #12
  %150 = ptrtoint ptr %net.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %net.i39.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %151, ptr noundef nonnull @.str.2, i32 noundef 28, i32 noundef %call.i.i143) #13
  br label %do.end9.i.i155

do.end9.i.i155:                                   ; preds = %if.then19.i.i147, %do.end9.i.i145.do.end9.i.i155_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i140) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i150) #10
  %152 = ptrtoint ptr %buf.i150 to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 0, ptr %buf.i150, align 2
  %call.i.i153 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 31, ptr noundef nonnull %buf.i150, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i153)
  %cmp.i.i154 = icmp slt i32 %call.i.i153, 0
  br i1 %cmp.i.i154, label %if.then19.i.i157, label %do.end9.i.i155.ax88179_write_cmd.exit159_crit_edge, !prof !98

do.end9.i.i155.ax88179_write_cmd.exit159_crit_edge: ; preds = %do.end9.i.i155
  call void @__sanitizer_cov_trace_pc() #12
  br label %ax88179_write_cmd.exit159

if.then19.i.i157:                                 ; preds = %do.end9.i.i155
  call void @__sanitizer_cov_trace_pc() #12
  %153 = ptrtoint ptr %net.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %net.i39.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %154, ptr noundef nonnull @.str.2, i32 noundef 31, i32 noundef %call.i.i153) #13
  br label %ax88179_write_cmd.exit159

ax88179_write_cmd.exit159:                        ; preds = %if.then19.i.i157, %do.end9.i.i155.ax88179_write_cmd.exit159_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i150) #10
  %155 = ptrtoint ptr %ledfd to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 0, ptr %ledfd, align 1
  %conv171 = zext i16 %ledvalue.4 to i32
  %and172 = and i32 %conv171, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %tobool173.not = icmp eq i32 %and172, 0
  br i1 %tobool173.not, label %if.else178, label %if.then174

if.then174:                                       ; preds = %ax88179_write_cmd.exit159
  call void @__sanitizer_cov_trace_pc() #12
  %156 = ptrtoint ptr %ledfd to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 1, ptr %ledfd, align 1
  br label %if.end188

if.else178:                                       ; preds = %ax88179_write_cmd.exit159
  %and180 = and i32 %conv171, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and180)
  %cmp181 = icmp eq i32 %and180, 0
  br i1 %cmp181, label %if.then183, label %if.else178.if.end188_crit_edge

if.else178.if.end188_crit_edge:                   ; preds = %if.else178
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end188

if.then183:                                       ; preds = %if.else178
  call void @__sanitizer_cov_trace_pc() #12
  %157 = ptrtoint ptr %ledfd to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 2, ptr %ledfd, align 1
  br label %if.end188

if.end188:                                        ; preds = %if.then183, %if.else178.if.end188_crit_edge, %if.then174
  %and190 = and i32 %conv171, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and190)
  %tobool191.not = icmp eq i32 %and190, 0
  br i1 %tobool191.not, label %if.else196, label %if.then192

if.then192:                                       ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #12
  %158 = ptrtoint ptr %ledfd to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %ledfd, align 1
  %160 = or i8 %159, 4
  store i8 %160, ptr %ledfd, align 1
  br label %if.end206

if.else196:                                       ; preds = %if.end188
  %and198 = and i32 %conv171, 992
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and198)
  %cmp199 = icmp eq i32 %and198, 0
  br i1 %cmp199, label %if.then201, label %if.else196.if.end206_crit_edge

if.else196.if.end206_crit_edge:                   ; preds = %if.else196
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end206

if.then201:                                       ; preds = %if.else196
  call void @__sanitizer_cov_trace_pc() #12
  %161 = ptrtoint ptr %ledfd to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %ledfd, align 1
  %163 = or i8 %162, 8
  store i8 %163, ptr %ledfd, align 1
  br label %if.end206

if.end206:                                        ; preds = %if.then201, %if.else196.if.end206_crit_edge, %if.then192
  %and208 = and i32 %conv171, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and208)
  %tobool209.not = icmp eq i32 %and208, 0
  br i1 %tobool209.not, label %if.else214, label %if.then210

if.then210:                                       ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #12
  %164 = ptrtoint ptr %ledfd to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %ledfd, align 1
  %166 = or i8 %165, 16
  store i8 %166, ptr %ledfd, align 1
  br label %do.end9.i14.i165

if.else214:                                       ; preds = %if.end206
  %and216 = and i32 %conv171, 31744
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and216)
  %cmp217 = icmp eq i32 %and216, 0
  br i1 %cmp217, label %if.then219, label %if.else214.do.end9.i14.i165_crit_edge

if.else214.do.end9.i14.i165_crit_edge:            ; preds = %if.else214
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i14.i165

if.then219:                                       ; preds = %if.else214
  call void @__sanitizer_cov_trace_pc() #12
  %167 = ptrtoint ptr %ledfd to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %ledfd, align 1
  %169 = or i8 %168, 32
  store i8 %169, ptr %ledfd, align 1
  br label %do.end9.i14.i165

do.end9.i14.i165:                                 ; preds = %if.then219, %if.else214.do.end9.i14.i165_crit_edge, %if.then210
  %call.i12.i163 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 115, i16 noundef zeroext 1, ptr noundef nonnull %ledfd, i16 noundef zeroext 1) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i163)
  %cmp.i13.i164 = icmp slt i32 %call.i12.i163, 0
  br i1 %cmp.i13.i164, label %do.end9.i14.i165.cleanup.sink.split_crit_edge, label %do.end9.i14.i165.cleanup_crit_edge, !prof !98

do.end9.i14.i165.cleanup_crit_edge:               ; preds = %do.end9.i14.i165
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end9.i14.i165.cleanup.sink.split_crit_edge:    ; preds = %do.end9.i14.i165
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end9.i14.i165.cleanup.sink.split_crit_edge, %do.end9.i14.i16.cleanup.sink.split_crit_edge, %do.end9.i14.i7.cleanup.sink.split_crit_edge, %ax88179_write_cmd.exit.thread
  %net.i39.i.i.sink = phi ptr [ %net.i15.i, %ax88179_write_cmd.exit.thread ], [ %net.i39.i.i, %do.end9.i14.i7.cleanup.sink.split_crit_edge ], [ %net.i39.i.i, %do.end9.i14.i16.cleanup.sink.split_crit_edge ], [ %net.i39.i.i, %do.end9.i14.i165.cleanup.sink.split_crit_edge ]
  %call.i12.i163.sink = phi i32 [ %call.i12.i, %ax88179_write_cmd.exit.thread ], [ %call.i12.i5, %do.end9.i14.i7.cleanup.sink.split_crit_edge ], [ %call.i12.i14, %do.end9.i14.i16.cleanup.sink.split_crit_edge ], [ %call.i12.i163, %do.end9.i14.i165.cleanup.sink.split_crit_edge ]
  %170 = ptrtoint ptr %net.i39.i.i.sink to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %net.i39.i.i.sink, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %171, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %call.i12.i163.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end9.i14.i165.cleanup_crit_edge, %ax88179_read_cmd.exit28.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ledfd) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ax88179_disable_eee(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %buf.i14 = alloca i16, align 2
  %buf.i5 = alloca i16, align 2
  %buf.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #10
  %0 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 768, ptr %buf.i, align 2
  %tobool.not.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !98

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #10, !srcloc !102
  unreachable

do.end9.i.i:                                      ; preds = %entry
  %call.i.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 31, ptr noundef nonnull %buf.i, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then19.i.i, label %do.end9.i.i.do.end9.i.i10_crit_edge, !prof !98

do.end9.i.i.do.end9.i.i10_crit_edge:              ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i10

if.then19.i.i:                                    ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %1 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef 31, i32 noundef %call.i.i) #13
  br label %do.end9.i.i10

do.end9.i.i10:                                    ; preds = %if.then19.i.i, %do.end9.i.i.do.end9.i.i10_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i5) #10
  %3 = ptrtoint ptr %buf.i5 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 17970, ptr %buf.i5, align 2
  %call.i.i8 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 25, ptr noundef nonnull %buf.i5, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i8)
  %cmp.i.i9 = icmp slt i32 %call.i.i8, 0
  br i1 %cmp.i.i9, label %if.then19.i.i12, label %do.end9.i.i10.do.end9.i.i19_crit_edge, !prof !98

do.end9.i.i10.do.end9.i.i19_crit_edge:            ; preds = %do.end9.i.i10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i19

if.then19.i.i12:                                  ; preds = %do.end9.i.i10
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i11 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %4 = ptrtoint ptr %net.i.i11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net.i.i11, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %5, ptr noundef nonnull @.str.2, i32 noundef 25, i32 noundef %call.i.i8) #13
  br label %do.end9.i.i19

do.end9.i.i19:                                    ; preds = %if.then19.i.i12, %do.end9.i.i10.do.end9.i.i19_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i5) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i14) #10
  %6 = ptrtoint ptr %buf.i14 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %buf.i14, align 2
  %call.i.i17 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 31, ptr noundef nonnull %buf.i14, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i17)
  %cmp.i.i18 = icmp slt i32 %call.i.i17, 0
  br i1 %cmp.i.i18, label %if.then19.i.i21, label %do.end9.i.i19.ax88179_write_cmd.exit22_crit_edge, !prof !98

do.end9.i.i19.ax88179_write_cmd.exit22_crit_edge: ; preds = %do.end9.i.i19
  call void @__sanitizer_cov_trace_pc() #12
  br label %ax88179_write_cmd.exit22

if.then19.i.i21:                                  ; preds = %do.end9.i.i19
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i20 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %7 = ptrtoint ptr %net.i.i20 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net.i.i20, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %8, ptr noundef nonnull @.str.2, i32 noundef 31, i32 noundef %call.i.i17) #13
  br label %ax88179_write_cmd.exit22

ax88179_write_cmd.exit22:                         ; preds = %if.then19.i.i21, %do.end9.i.i19.ax88179_write_cmd.exit22_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i14) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ax88179_ethtool_get_eee(ptr noundef %dev, ptr nocapture noundef writeonly %data) unnamed_addr #2 align 64 {
entry:
  %buf.i.i46 = alloca i16, align 2
  %buf.i.i29 = alloca i16, align 2
  %buf.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ax88179_phy_mmd_indirect(ptr noundef %dev, i16 noundef zeroext 20, i16 noundef zeroext 3) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #10
  %0 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %buf.i.i, align 2
  %tobool.not.i.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %do.end9.i.i.i, !prof !98

do.body4.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 194, 0\0A.popsection", ""() #10, !srcloc !99
  unreachable

do.end9.i.i.i:                                    ; preds = %entry
  %call.i.i.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 2, i8 noundef zeroext -64, i16 noundef zeroext 3, i16 noundef zeroext 14, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 2) #10, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %ax88179_phy_read_mmd_indirect.exit.thread, label %ax88179_phy_read_mmd_indirect.exit, !prof !98

ax88179_phy_read_mmd_indirect.exit.thread:        ; preds = %do.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %1 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 14, i32 noundef %call.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #10
  br label %cleanup

ax88179_phy_read_mmd_indirect.exit:               ; preds = %do.end9.i.i.i
  %3 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %buf.i.i, align 2
  %5 = call i16 @llvm.bswap.i16(i16 %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #10
  %conv.i28 = zext i16 %5 to i32
  %and.i = shl nuw nsw i32 %conv.i28, 2
  %6 = and i32 %and.i, 8
  %and2.i = shl nuw nsw i32 %conv.i28, 3
  %7 = and i32 %and2.i, 32
  %8 = or i32 %7, %6
  %and8.i = shl nuw nsw i32 %conv.i28, 9
  %9 = and i32 %and8.i, 4096
  %10 = or i32 %8, %9
  %and14.i = shl nuw nsw i32 %conv.i28, 13
  %11 = and i32 %and14.i, 131072
  %12 = or i32 %10, %11
  %13 = and i32 %and14.i, 262144
  %14 = or i32 %12, %13
  %15 = and i32 %and14.i, 524288
  %16 = or i32 %14, %15
  %supported = getelementptr inbounds %struct.ethtool_eee, ptr %data, i32 0, i32 1
  %17 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %supported, align 4
  call fastcc void @ax88179_phy_mmd_indirect(ptr noundef nonnull %dev, i16 noundef zeroext 60, i16 noundef zeroext 7) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i29) #10
  %18 = ptrtoint ptr %buf.i.i29 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %buf.i.i29, align 2
  %call.i.i.i32 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 2, i8 noundef zeroext -64, i16 noundef zeroext 3, i16 noundef zeroext 14, ptr noundef nonnull %buf.i.i29, i16 noundef zeroext 2) #10, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i32)
  %cmp.i.i.i33 = icmp slt i32 %call.i.i.i32, 0
  br i1 %cmp.i.i.i33, label %ax88179_phy_read_mmd_indirect.exit40.thread, label %ax88179_phy_read_mmd_indirect.exit40, !prof !98

ax88179_phy_read_mmd_indirect.exit40.thread:      ; preds = %ax88179_phy_read_mmd_indirect.exit
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i.i35 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %19 = ptrtoint ptr %net.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net.i.i.i35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %20, ptr noundef nonnull @.str.1, i32 noundef 14, i32 noundef %call.i.i.i32) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i29) #10
  br label %cleanup

ax88179_phy_read_mmd_indirect.exit40:             ; preds = %ax88179_phy_read_mmd_indirect.exit
  %21 = ptrtoint ptr %buf.i.i29 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %buf.i.i29, align 2
  %23 = call i16 @llvm.bswap.i16(i16 %22) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i29) #10
  %conv.i41 = zext i16 %23 to i32
  %and.i42 = shl nuw nsw i32 %conv.i41, 2
  %24 = and i32 %and.i42, 8
  %and2.i43 = shl nuw nsw i32 %conv.i41, 3
  %25 = and i32 %and2.i43, 32
  %26 = or i32 %25, %24
  %and8.i44 = shl nuw nsw i32 %conv.i41, 9
  %27 = and i32 %and8.i44, 4096
  %28 = or i32 %26, %27
  %and14.i45 = shl nuw nsw i32 %conv.i41, 13
  %29 = and i32 %and14.i45, 131072
  %30 = or i32 %28, %29
  %31 = and i32 %and14.i45, 262144
  %32 = or i32 %30, %31
  %33 = and i32 %and14.i45, 524288
  %34 = or i32 %32, %33
  %advertised = getelementptr inbounds %struct.ethtool_eee, ptr %data, i32 0, i32 2
  %35 = ptrtoint ptr %advertised to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %advertised, align 4
  call fastcc void @ax88179_phy_mmd_indirect(ptr noundef nonnull %dev, i16 noundef zeroext 61, i16 noundef zeroext 7) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i46) #10
  %36 = ptrtoint ptr %buf.i.i46 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %buf.i.i46, align 2
  %call.i.i.i49 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 2, i8 noundef zeroext -64, i16 noundef zeroext 3, i16 noundef zeroext 14, ptr noundef nonnull %buf.i.i46, i16 noundef zeroext 2) #10, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i49)
  %cmp.i.i.i50 = icmp slt i32 %call.i.i.i49, 0
  br i1 %cmp.i.i.i50, label %ax88179_phy_read_mmd_indirect.exit57.thread, label %ax88179_phy_read_mmd_indirect.exit57, !prof !98

ax88179_phy_read_mmd_indirect.exit57.thread:      ; preds = %ax88179_phy_read_mmd_indirect.exit40
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i.i52 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %37 = ptrtoint ptr %net.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %net.i.i.i52, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %38, ptr noundef nonnull @.str.1, i32 noundef 14, i32 noundef %call.i.i.i49) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i46) #10
  br label %cleanup

ax88179_phy_read_mmd_indirect.exit57:             ; preds = %ax88179_phy_read_mmd_indirect.exit40
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %buf.i.i46 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %buf.i.i46, align 2
  %41 = call i16 @llvm.bswap.i16(i16 %40) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i46) #10
  %conv.i58 = zext i16 %41 to i32
  %and.i59 = shl nuw nsw i32 %conv.i58, 2
  %42 = and i32 %and.i59, 8
  %and2.i60 = shl nuw nsw i32 %conv.i58, 3
  %43 = and i32 %and2.i60, 32
  %44 = or i32 %43, %42
  %and8.i61 = shl nuw nsw i32 %conv.i58, 9
  %45 = and i32 %and8.i61, 4096
  %46 = or i32 %44, %45
  %and14.i62 = shl nuw nsw i32 %conv.i58, 13
  %47 = and i32 %and14.i62, 131072
  %48 = or i32 %46, %47
  %49 = and i32 %and14.i62, 262144
  %50 = or i32 %48, %49
  %51 = and i32 %and14.i62, 524288
  %52 = or i32 %50, %51
  %lp_advertised = getelementptr inbounds %struct.ethtool_eee, ptr %data, i32 0, i32 3
  %53 = ptrtoint ptr %lp_advertised to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %lp_advertised, align 4
  br label %cleanup

cleanup:                                          ; preds = %ax88179_phy_read_mmd_indirect.exit57, %ax88179_phy_read_mmd_indirect.exit57.thread, %ax88179_phy_read_mmd_indirect.exit40.thread, %ax88179_phy_read_mmd_indirect.exit.thread
  %retval.0 = phi i32 [ 0, %ax88179_phy_read_mmd_indirect.exit57 ], [ %call.i.i.i, %ax88179_phy_read_mmd_indirect.exit.thread ], [ %call.i.i.i32, %ax88179_phy_read_mmd_indirect.exit40.thread ], [ %call.i.i.i49, %ax88179_phy_read_mmd_indirect.exit57.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ax88179_ethtool_set_eee(ptr noundef %dev, ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  %buf.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %advertised = getelementptr inbounds %struct.ethtool_eee, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %advertised to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %advertised, align 4
  %2 = trunc i32 %1 to i16
  %3 = lshr i16 %2, 2
  %4 = and i16 %3, 2
  %5 = lshr i16 %2, 3
  %6 = and i16 %5, 4
  %7 = lshr i16 %2, 9
  %8 = and i16 %7, 8
  %and16.i = lshr i32 %1, 13
  %9 = trunc i32 %and16.i to i16
  %10 = and i16 %9, 16
  %11 = and i16 %9, 32
  %12 = and i16 %9, 64
  %13 = or i16 %6, %4
  %14 = or i16 %13, %8
  %15 = or i16 %14, %10
  %16 = or i16 %15, %11
  %17 = or i16 %16, %12
  tail call fastcc void @ax88179_phy_mmd_indirect(ptr noundef %dev, i16 noundef zeroext 60, i16 noundef zeroext 7) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #10
  %18 = shl nuw nsw i16 %17, 8
  %19 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %buf.i.i, align 2
  %tobool.not.i.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %do.end9.i.i.i, !prof !98

do.body4.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #10, !srcloc !102
  unreachable

do.end9.i.i.i:                                    ; preds = %entry
  %call.i.i.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 14, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then19.i.i.i, label %do.end9.i.i.i.ax88179_phy_write_mmd_indirect.exit_crit_edge, !prof !98

do.end9.i.i.i.ax88179_phy_write_mmd_indirect.exit_crit_edge: ; preds = %do.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ax88179_phy_write_mmd_indirect.exit

if.then19.i.i.i:                                  ; preds = %do.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %20 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %21, ptr noundef nonnull @.str.2, i32 noundef 14, i32 noundef %call.i.i.i) #13
  br label %ax88179_phy_write_mmd_indirect.exit

ax88179_phy_write_mmd_indirect.exit:              ; preds = %if.then19.i.i.i, %do.end9.i.i.i.ax88179_phy_write_mmd_indirect.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #10
  %22 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #10
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_nway_restart(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_platform_get_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

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
define internal void @ax88179_set_multicast(ptr noundef %net) #2 align 64 {
entry:
  %buf.i105 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %add.ptr = getelementptr i8, ptr %net, i32 2568
  %rxctl = getelementptr i8, ptr %net, i32 2558
  %0 = ptrtoint ptr %rxctl to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 648, ptr %rxctl, align 2
  %flags = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 14
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 8
  %and = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end73.sink.split_crit_edge

entry.if.end73.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73.sink.split

if.else:                                          ; preds = %entry
  %and7 = and i32 %2, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %if.else.if.end73.sink.split_crit_edge

if.else.if.end73.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73.sink.split

lor.lhs.false:                                    ; preds = %if.else
  %mc = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 66, i32 1
  %3 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %4)
  %cmp = icmp sgt i32 %4, 64
  br i1 %cmp, label %lor.lhs.false.if.end73.sink.split_crit_edge, label %if.else15

lor.lhs.false.if.end73.sink.split_crit_edge:      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73.sink.split

if.else15:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp18 = icmp eq i32 %4, 0
  br i1 %cmp18, label %if.else15.if.end73_crit_edge, label %if.else21

if.else15.if.end73_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.else21:                                        ; preds = %if.else15
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 0, ptr %add.ptr, align 1
  %6 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %6)
  %ha.0106 = load ptr, ptr %mc, align 4
  %cmp27.not107 = icmp eq ptr %ha.0106, %mc
  br i1 %cmp27.not107, label %if.else21.for.end_crit_edge, label %if.else21.cond.end_crit_edge

if.else21.cond.end_crit_edge:                     ; preds = %if.else21
  br label %cond.end

if.else21.for.end_crit_edge:                      ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cond.end:                                         ; preds = %cond.end.cond.end_crit_edge, %if.else21.cond.end_crit_edge
  %ha.0108 = phi ptr [ %ha.0, %cond.end.cond.end_crit_edge ], [ %ha.0106, %if.else21.cond.end_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0108, i32 0, i32 2
  %call30 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #14
  %7 = and i32 %call30, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i.i.i, align 1
  %shr55 = lshr i8 %9, 2
  %and56 = and i8 %shr55, 7
  %shl57 = shl i8 1, %and56
  %10 = lshr i8 %9, 5
  %shr58 = zext i8 %10 to i32
  %add.ptr59 = getelementptr i8, ptr %add.ptr, i32 %shr58
  %11 = ptrtoint ptr %add.ptr59 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %add.ptr59, align 1
  %conv62 = or i8 %12, %shl57
  store i8 %conv62, ptr %add.ptr59, align 1
  %13 = ptrtoint ptr %ha.0108 to i32
  call void @__asan_load4_noabort(i32 %13)
  %ha.0 = load ptr, ptr %ha.0108, align 4
  %cmp27.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp27.not, label %cond.end.for.end_crit_edge, label %cond.end.cond.end_crit_edge

cond.end.cond.end_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %if.else21.for.end_crit_edge
  %call2.i = tail call i32 @usbnet_write_cmd_async(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 22, i16 noundef zeroext 8, ptr noundef %add.ptr, i16 noundef zeroext 8) #10
  %14 = ptrtoint ptr %rxctl to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %rxctl, align 2
  %16 = or i16 %15, 16
  br label %if.end73.sink.split

if.end73.sink.split:                              ; preds = %for.end, %lor.lhs.false.if.end73.sink.split_crit_edge, %if.else.if.end73.sink.split_crit_edge, %entry.if.end73.sink.split_crit_edge
  %.sink = phi i16 [ %16, %for.end ], [ 649, %entry.if.end73.sink.split_crit_edge ], [ 650, %lor.lhs.false.if.end73.sink.split_crit_edge ], [ 650, %if.else.if.end73.sink.split_crit_edge ]
  %17 = ptrtoint ptr %rxctl to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %.sink, ptr %rxctl, align 2
  br label %if.end73

if.end73:                                         ; preds = %if.end73.sink.split, %if.else15.if.end73_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i105) #10
  %18 = ptrtoint ptr %rxctl to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %rxctl, align 2
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #10
  %21 = ptrtoint ptr %buf.i105 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %buf.i105, align 2
  %call.i = call i32 @usbnet_write_cmd_async(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 11, i16 noundef zeroext 2, ptr noundef nonnull %buf.i105, i16 noundef zeroext 2) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i105) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax88179_set_mac_addr(ptr noundef %net, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end4

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %is_valid_ether_addr.exit
  tail call void @dev_addr_mod(ptr noundef %net, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #10
  %tobool.not.i10.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i10.i, label %do.body4.i11.i, label %do.end9.i14.i, !prof !98

do.body4.i11.i:                                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #10, !srcloc !102
  unreachable

do.end9.i14.i:                                    ; preds = %if.end4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 86
  %7 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_addr, align 64
  %call.i12.i = tail call i32 @usbnet_write_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 16, i16 noundef zeroext 6, ptr noundef %8, i16 noundef zeroext 6) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i)
  %cmp.i13.i = icmp slt i32 %call.i12.i, 0
  br i1 %cmp.i13.i, label %if.then19.i17.i, label %do.end9.i14.i.ax88179_write_cmd.exit_crit_edge, !prof !98

do.end9.i14.i.ax88179_write_cmd.exit_crit_edge:   ; preds = %do.end9.i14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ax88179_write_cmd.exit

if.then19.i17.i:                                  ; preds = %do.end9.i14.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i15.i = getelementptr i8, ptr %net, i32 2548
  %9 = ptrtoint ptr %net.i15.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net.i15.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %10, ptr noundef nonnull @.str.2, i32 noundef 6, i32 noundef %call.i12.i) #13
  br label %ax88179_write_cmd.exit

ax88179_write_cmd.exit:                           ; preds = %if.then19.i17.i, %do.end9.i14.i.ax88179_write_cmd.exit_crit_edge
  %11 = tail call i32 @llvm.smin.i32(i32 %call.i12.i, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %ax88179_write_cmd.exit, %is_valid_ether_addr.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ %11, %ax88179_write_cmd.exit ], [ -99, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax88179_ioctl(ptr noundef %net, ptr noundef %rq, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %net, i32 2588
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1
  %call2 = tail call i32 @generic_mii_ioctl(ptr noundef %mii, ptr noundef %ifr_ifru.i, i32 noundef %cmd, ptr noundef null) #10
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax88179_change_mtu(ptr noundef %net, i32 noundef %new_mtu) #2 align 64 {
entry:
  %buf.i38 = alloca i16, align 2
  %buf.i29 = alloca i16, align 2
  %buf.i21 = alloca i16, align 2
  %buf.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %mtu = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 20
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %new_mtu, ptr %mtu, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 19
  %1 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %2 to i32
  %add = add i32 %conv, %new_mtu
  %hard_mtu = getelementptr i8, ptr %net, i32 2580
  %3 = ptrtoint ptr %hard_mtu to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %add, ptr %hard_mtu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %new_mtu)
  %cmp = icmp ugt i32 %new_mtu, 1500
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #10
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %buf.i, align 2
  %tobool.not.i.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !98

do.body4.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 194, 0\0A.popsection", ""() #10, !srcloc !99
  unreachable

do.end9.i.i:                                      ; preds = %if.then
  %call.i.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 34, i16 noundef zeroext 2, ptr noundef nonnull %buf.i, i16 noundef zeroext 2) #10, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then19.i.i, label %do.end9.i.i.do.end9.i.i26_crit_edge, !prof !98

do.end9.i.i.do.end9.i.i26_crit_edge:              ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i26

if.then19.i.i:                                    ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i = getelementptr i8, ptr %net, i32 2548
  %5 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %6, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef %call.i.i) #13
  br label %do.end9.i.i26

do.end9.i.i26:                                    ; preds = %if.then19.i.i, %do.end9.i.i.do.end9.i.i26_crit_edge
  %7 = ptrtoint ptr %buf.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %buf.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #10
  %9 = or i16 %8, 16512
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i21) #10
  %10 = ptrtoint ptr %buf.i21 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %buf.i21, align 2
  %call.i.i24 = call i32 @usbnet_write_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 34, i16 noundef zeroext 2, ptr noundef nonnull %buf.i21, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i24)
  %cmp.i.i25 = icmp slt i32 %call.i.i24, 0
  br i1 %cmp.i.i25, label %if.then19.i.i28, label %do.end9.i.i26.ax88179_write_cmd.exit_crit_edge, !prof !98

do.end9.i.i26.ax88179_write_cmd.exit_crit_edge:   ; preds = %do.end9.i.i26
  call void @__sanitizer_cov_trace_pc() #12
  br label %ax88179_write_cmd.exit

if.then19.i.i28:                                  ; preds = %do.end9.i.i26
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i27 = getelementptr i8, ptr %net, i32 2548
  %11 = ptrtoint ptr %net.i.i27 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net.i.i27, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %12, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %call.i.i24) #13
  br label %ax88179_write_cmd.exit

ax88179_write_cmd.exit:                           ; preds = %if.then19.i.i28, %do.end9.i.i26.ax88179_write_cmd.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i21) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i29) #10
  %13 = ptrtoint ptr %buf.i29 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %buf.i29, align 2
  %tobool.not.i.i30 = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i.i30, label %do.body4.i.i31, label %do.end9.i.i34, !prof !98

do.body4.i.i31:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 194, 0\0A.popsection", ""() #10, !srcloc !99
  unreachable

do.end9.i.i34:                                    ; preds = %if.else
  %call.i.i32 = call i32 @usbnet_read_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 34, i16 noundef zeroext 2, ptr noundef nonnull %buf.i29, i16 noundef zeroext 2) #10, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i32)
  %cmp.i.i33 = icmp slt i32 %call.i.i32, 0
  br i1 %cmp.i.i33, label %if.then19.i.i36, label %do.end9.i.i34.do.end9.i.i43_crit_edge, !prof !98

do.end9.i.i34.do.end9.i.i43_crit_edge:            ; preds = %do.end9.i.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i43

if.then19.i.i36:                                  ; preds = %do.end9.i.i34
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i35 = getelementptr i8, ptr %net, i32 2548
  %14 = ptrtoint ptr %net.i.i35 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net.i.i35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %15, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef %call.i.i32) #13
  br label %do.end9.i.i43

do.end9.i.i43:                                    ; preds = %if.then19.i.i36, %do.end9.i.i34.do.end9.i.i43_crit_edge
  %16 = ptrtoint ptr %buf.i29 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %buf.i29, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i29) #10
  %18 = and i16 %17, -16513
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i38) #10
  %19 = ptrtoint ptr %buf.i38 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %buf.i38, align 2
  %call.i.i41 = call i32 @usbnet_write_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 34, i16 noundef zeroext 2, ptr noundef nonnull %buf.i38, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i41)
  %cmp.i.i42 = icmp slt i32 %call.i.i41, 0
  br i1 %cmp.i.i42, label %if.then19.i.i45, label %do.end9.i.i43.ax88179_write_cmd.exit46_crit_edge, !prof !98

do.end9.i.i43.ax88179_write_cmd.exit46_crit_edge: ; preds = %do.end9.i.i43
  call void @__sanitizer_cov_trace_pc() #12
  br label %ax88179_write_cmd.exit46

if.then19.i.i45:                                  ; preds = %do.end9.i.i43
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i44 = getelementptr i8, ptr %net, i32 2548
  %20 = ptrtoint ptr %net.i.i44 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net.i.i44, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %21, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %call.i.i41) #13
  br label %ax88179_write_cmd.exit46

ax88179_write_cmd.exit46:                         ; preds = %if.then19.i.i45, %do.end9.i.i43.ax88179_write_cmd.exit46_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i38) #10
  br label %if.end

if.end:                                           ; preds = %ax88179_write_cmd.exit46, %ax88179_write_cmd.exit
  call void @usbnet_update_max_qlen(ptr noundef nonnull %add.ptr.i) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_tx_timeout(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_get_tstats64(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax88179_set_features(ptr noundef %net, i64 noundef %features) #2 align 64 {
entry:
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #10
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp, align 1, !annotation !97
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %features1 = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 23
  %1 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %features1, align 16
  %xor = xor i64 %2, %features
  %and = and i64 %xor, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %tobool.not.i34.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i34.i, label %do.body4.i35.i, label %do.end9.i38.i, !prof !98

do.body4.i35.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 194, 0\0A.popsection", ""() #10, !srcloc !99
  unreachable

do.end9.i38.i:                                    ; preds = %if.then
  %call.i36.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 53, i16 noundef zeroext 1, ptr noundef nonnull %tmp, i16 noundef zeroext 1) #10, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i)
  %cmp.i37.i = icmp slt i32 %call.i36.i, 0
  br i1 %cmp.i37.i, label %if.then19.i41.i, label %do.end9.i38.i.do.end9.i14.i_crit_edge, !prof !98

do.end9.i38.i.do.end9.i14.i_crit_edge:            ; preds = %do.end9.i38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i14.i

if.then19.i41.i:                                  ; preds = %do.end9.i38.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i39.i = getelementptr i8, ptr %net, i32 2548
  %3 = ptrtoint ptr %net.i39.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net.i39.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %4, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %call.i36.i) #13
  br label %do.end9.i14.i

do.end9.i14.i:                                    ; preds = %if.then19.i41.i, %do.end9.i38.i.do.end9.i14.i_crit_edge
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tmp, align 1
  %7 = xor i8 %6, 6
  store i8 %7, ptr %tmp, align 1
  %call.i12.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 53, i16 noundef zeroext 1, ptr noundef nonnull %tmp, i16 noundef zeroext 1) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i)
  %cmp.i13.i = icmp slt i32 %call.i12.i, 0
  br i1 %cmp.i13.i, label %if.then19.i17.i, label %do.end9.i14.i.if.end_crit_edge, !prof !98

do.end9.i14.i.if.end_crit_edge:                   ; preds = %do.end9.i14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then19.i17.i:                                  ; preds = %do.end9.i14.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i15.i = getelementptr i8, ptr %net, i32 2548
  %8 = ptrtoint ptr %net.i15.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net.i15.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %9, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %call.i12.i) #13
  br label %if.end

if.end:                                           ; preds = %if.then19.i17.i, %do.end9.i14.i.if.end_crit_edge, %entry.if.end_crit_edge
  %and6 = and i64 %xor, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and6)
  %tobool7.not = icmp eq i64 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end14_crit_edge, label %if.then8

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then8:                                         ; preds = %if.end
  %tobool.not.i34.i32 = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i34.i32, label %do.body4.i35.i33, label %do.end9.i38.i36, !prof !98

do.body4.i35.i33:                                 ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 194, 0\0A.popsection", ""() #10, !srcloc !99
  unreachable

do.end9.i38.i36:                                  ; preds = %if.then8
  %call.i36.i34 = call i32 @usbnet_read_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 53, i16 noundef zeroext 1, ptr noundef nonnull %tmp, i16 noundef zeroext 1) #10, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i34)
  %cmp.i37.i35 = icmp slt i32 %call.i36.i34, 0
  br i1 %cmp.i37.i35, label %if.then19.i41.i38, label %do.end9.i38.i36.do.end9.i14.i44_crit_edge, !prof !98

do.end9.i38.i36.do.end9.i14.i44_crit_edge:        ; preds = %do.end9.i38.i36
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i14.i44

if.then19.i41.i38:                                ; preds = %do.end9.i38.i36
  call void @__sanitizer_cov_trace_pc() #12
  %net.i39.i37 = getelementptr i8, ptr %net, i32 2548
  %10 = ptrtoint ptr %net.i39.i37 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net.i39.i37, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %11, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %call.i36.i34) #13
  br label %do.end9.i14.i44

do.end9.i14.i44:                                  ; preds = %if.then19.i41.i38, %do.end9.i38.i36.do.end9.i14.i44_crit_edge
  %12 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tmp, align 1
  %14 = xor i8 %13, 96
  store i8 %14, ptr %tmp, align 1
  %call.i12.i42 = call i32 @usbnet_write_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 53, i16 noundef zeroext 1, ptr noundef nonnull %tmp, i16 noundef zeroext 1) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i42)
  %cmp.i13.i43 = icmp slt i32 %call.i12.i42, 0
  br i1 %cmp.i13.i43, label %if.then19.i17.i46, label %do.end9.i14.i44.if.end14_crit_edge, !prof !98

do.end9.i14.i44.if.end14_crit_edge:               ; preds = %do.end9.i14.i44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then19.i17.i46:                                ; preds = %do.end9.i14.i44
  call void @__sanitizer_cov_trace_pc() #12
  %net.i15.i45 = getelementptr i8, ptr %net, i32 2548
  %15 = ptrtoint ptr %net.i15.i45 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net.i15.i45, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %16, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %call.i12.i42) #13
  br label %if.end14

if.end14:                                         ; preds = %if.then19.i17.i46, %do.end9.i14.i44.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %and15 = and i64 %xor, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and15)
  %tobool16.not = icmp eq i64 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end23_crit_edge, label %if.then17

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then17:                                        ; preds = %if.end14
  %tobool.not.i34.i48 = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i34.i48, label %do.body4.i35.i49, label %do.end9.i38.i52, !prof !98

do.body4.i35.i49:                                 ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 194, 0\0A.popsection", ""() #10, !srcloc !99
  unreachable

do.end9.i38.i52:                                  ; preds = %if.then17
  %call.i36.i50 = call i32 @usbnet_read_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 52, i16 noundef zeroext 1, ptr noundef nonnull %tmp, i16 noundef zeroext 1) #10, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i50)
  %cmp.i37.i51 = icmp slt i32 %call.i36.i50, 0
  br i1 %cmp.i37.i51, label %if.then19.i41.i54, label %do.end9.i38.i52.do.end9.i14.i60_crit_edge, !prof !98

do.end9.i38.i52.do.end9.i14.i60_crit_edge:        ; preds = %do.end9.i38.i52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i14.i60

if.then19.i41.i54:                                ; preds = %do.end9.i38.i52
  call void @__sanitizer_cov_trace_pc() #12
  %net.i39.i53 = getelementptr i8, ptr %net, i32 2548
  %17 = ptrtoint ptr %net.i39.i53 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net.i39.i53, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %18, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %call.i36.i50) #13
  br label %do.end9.i14.i60

do.end9.i14.i60:                                  ; preds = %if.then19.i41.i54, %do.end9.i38.i52.do.end9.i14.i60_crit_edge
  %19 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tmp, align 1
  %21 = xor i8 %20, 103
  store i8 %21, ptr %tmp, align 1
  %call.i12.i58 = call i32 @usbnet_write_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 52, i16 noundef zeroext 1, ptr noundef nonnull %tmp, i16 noundef zeroext 1) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i58)
  %cmp.i13.i59 = icmp slt i32 %call.i12.i58, 0
  br i1 %cmp.i13.i59, label %if.then19.i17.i62, label %do.end9.i14.i60.if.end23_crit_edge, !prof !98

do.end9.i14.i60.if.end23_crit_edge:               ; preds = %do.end9.i14.i60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then19.i17.i62:                                ; preds = %do.end9.i14.i60
  call void @__sanitizer_cov_trace_pc() #12
  %net.i15.i61 = getelementptr i8, ptr %net, i32 2548
  %22 = ptrtoint ptr %net.i15.i61 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net.i15.i61, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %23, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %call.i12.i58) #13
  br label %if.end23

if.end23:                                         ; preds = %if.then19.i17.i62, %do.end9.i14.i60.if.end23_crit_edge, %if.end14.if.end23_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #10
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_write_cmd_async(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_mii_ioctl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_update_max_qlen(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax88179_get_wol(ptr noundef %net, ptr nocapture noundef %wolinfo) #2 align 64 {
entry:
  %opt = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %opt) #10
  %0 = ptrtoint ptr %opt to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %opt, align 1, !annotation !97
  %tobool.not.i34.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i34.i, label %do.body4.i35.i, label %do.end9.i38.i, !prof !98

do.body4.i35.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 194, 0\0A.popsection", ""() #10, !srcloc !99
  unreachable

do.end9.i38.i:                                    ; preds = %entry
  %call.i36.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 36, i16 noundef zeroext 1, ptr noundef nonnull %opt, i16 noundef zeroext 1) #10, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i)
  %cmp.i37.i = icmp slt i32 %call.i36.i, 0
  br i1 %cmp.i37.i, label %if.then, label %if.end, !prof !98

if.then:                                          ; preds = %do.end9.i38.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i39.i = getelementptr i8, ptr %net, i32 2548
  %1 = ptrtoint ptr %net.i39.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %net.i39.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %call.i36.i) #13
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wolinfo, i32 0, i32 1
  %3 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %supported, align 4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wolinfo, i32 0, i32 2
  %4 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wolopts, align 4
  br label %cleanup

if.end:                                           ; preds = %do.end9.i38.i
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %or12 = or i32 %9, 32
  %12 = ptrtoint ptr %wolopts3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or12, ptr %wolopts3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %opt) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax88179_set_wol(ptr noundef %net, ptr nocapture noundef readonly %wolinfo) #2 align 64 {
entry:
  %opt = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %opt) #10
  %0 = ptrtoint ptr %opt to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %opt, align 1
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wolinfo, i32 0, i32 2
  %1 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %wolopts, align 4
  %and = and i32 %2, -34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %opt to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %opt, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %and8 = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end6.if.end14_crit_edge, label %if.then10

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %opt to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %opt, align 1
  %6 = or i8 %5, 4
  store i8 %6, ptr %opt, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end6.if.end14_crit_edge
  %tobool.not.i10.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i10.i, label %do.body4.i11.i, label %do.end9.i14.i, !prof !98

do.body4.i11.i:                                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #10, !srcloc !102
  unreachable

do.end9.i14.i:                                    ; preds = %if.end14
  %call.i12.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 36, i16 noundef zeroext 1, ptr noundef nonnull %opt, i16 noundef zeroext 1) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i)
  %cmp.i13.i = icmp slt i32 %call.i12.i, 0
  br i1 %cmp.i13.i, label %if.then19.i17.i, label %do.end9.i14.i.cleanup_crit_edge, !prof !98

do.end9.i14.i.cleanup_crit_edge:                  ; preds = %do.end9.i14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then19.i17.i:                                  ; preds = %do.end9.i14.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i15.i = getelementptr i8, ptr %net, i32 2548
  %7 = ptrtoint ptr %net.i15.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net.i15.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %8, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %call.i12.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then19.i17.i, %do.end9.i14.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end9.i14.i.cleanup_crit_edge ], [ -22, %if.then19.i17.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %opt) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_msglevel(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_set_msglevel(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_nway_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ax88179_get_eeprom_len(ptr nocapture noundef readnone %net) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 256
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax88179_get_eeprom(ptr noundef %net, ptr nocapture noundef %eeprom, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %2 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 395316117, ptr %magic, align 4
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
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add5, i32 2) #10
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %if.end.cleanup_crit_edge, label %if.end7.i, !prof !98

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i:                                        ; preds = %if.end
  %7 = extractvalue { i32, i1 } %5, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3264) #15
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %if.end7.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr3, i32 %shr)
  %cmp9.not41 = icmp ult i32 %shr3, %shr
  br i1 %cmp9.not41, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %do.body4.i, label %for.body.lr.ph.for.body_crit_edge, !prof !98

for.body.lr.ph.for.body_crit_edge:                ; preds = %for.body.lr.ph
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add i32 %i.042, 1
  %cmp9.not = icmp sgt i32 %inc, %shr3
  br i1 %cmp9.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph.for.body_crit_edge
  %i.042 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ %shr, %for.body.lr.ph.for.body_crit_edge ]
  %sub10 = sub i32 %i.042, %shr
  %arrayidx = getelementptr i16, ptr %call8.i, i32 %sub10
  %conv = trunc i32 %i.042 to i16
  %call.i = tail call i32 @usbnet_read_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 4, i8 noundef zeroext -64, i16 noundef zeroext %conv, i16 noundef zeroext 1, ptr noundef %arrayidx, i16 noundef zeroext 2) #10, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then14, label %for.cond, !prof !98

do.body4.i:                                       ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 194, 0\0A.popsection", ""() #10, !srcloc !99
  unreachable

if.then14:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %net.i = getelementptr i8, ptr %net, i32 2548
  %8 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %9, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %call.i) #13
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
  tail call void @kfree(ptr noundef nonnull %call8.i) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end7.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end7.i.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax88179_set_eeprom(ptr noundef %net, ptr nocapture noundef readonly %eeprom, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %buf.i154 = alloca i16, align 2
  %buf.i145 = alloca i16, align 2
  %buf.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88179_set_eeprom.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88179_set_eeprom, %if.then)) #10
          to label %do.end6 [label %if.then], !srcloc !103

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88179_set_eeprom.__UNIQUE_ID_ddebug354, ptr noundef %net, ptr noundef nonnull @.str.10, i32 noundef %1, i32 noundef %3, i32 noundef %5) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %do.end6
  %magic10 = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %8 = ptrtoint ptr %magic10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %magic10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 395316117, i32 %9)
  %cmp11.not = icmp eq i32 %9, 395316117
  br i1 %cmp11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
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
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add19, i32 2) #10
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %if.end13.cleanup_crit_edge, label %if.end7.i, !prof !98

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i:                                        ; preds = %if.end13
  %14 = extractvalue { i32, i1 } %12, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3264) #15
  %tobool21.not = icmp eq ptr %call8.i, null
  br i1 %tobool21.not, label %if.end7.i.cleanup_crit_edge, label %if.end23

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then26:                                        ; preds = %if.end23
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #10
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %buf.i, align 2
  %tobool.not.i.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !98

do.body4.i.i:                                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 194, 0\0A.popsection", ""() #10, !srcloc !99
  unreachable

do.end9.i.i:                                      ; preds = %if.then26
  %conv = trunc i32 %shr to i16
  %call.i.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 4, i8 noundef zeroext -64, i16 noundef zeroext %conv, i16 noundef zeroext 1, ptr noundef nonnull %buf.i, i16 noundef zeroext 2) #10, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i144 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i144, label %if.then30, label %ax88179_read_cmd.exit, !prof !98

ax88179_read_cmd.exit:                            ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %buf.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %buf.i, align 2
  %20 = call i16 @llvm.bswap.i16(i16 %19) #10
  %21 = ptrtoint ptr %call8.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %call8.i, align 128
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #10
  br label %if.end32

if.then30:                                        ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i = getelementptr i8, ptr %net, i32 2548
  %22 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %23, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %call.i.i) #13
  %24 = ptrtoint ptr %buf.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %buf.i, align 2
  %26 = call i16 @llvm.bswap.i16(i16 %25) #10
  %27 = ptrtoint ptr %call8.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %call8.i, align 128
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #10
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %net, ptr noundef nonnull @.str.11, i32 noundef %shr) #13
  br label %free

if.end32:                                         ; preds = %ax88179_read_cmd.exit, %if.end23.if.end32_crit_edge
  %28 = ptrtoint ptr %offset14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offset14, align 4
  %30 = ptrtoint ptr %len7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len7, align 4
  %add35 = add i32 %31, %29
  %and36 = and i32 %add35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end32.if.end47_crit_edge, label %if.then38

if.end32.if.end47_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then38:                                        ; preds = %if.end32
  %arrayidx41 = getelementptr i16, ptr %call8.i, i32 %sub18
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i145) #10
  %32 = ptrtoint ptr %buf.i145 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %buf.i145, align 2
  %tobool.not.i.i146 = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i.i146, label %do.body4.i.i147, label %do.end9.i.i150, !prof !98

do.body4.i.i147:                                  ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 194, 0\0A.popsection", ""() #10, !srcloc !99
  unreachable

do.end9.i.i150:                                   ; preds = %if.then38
  %conv39 = trunc i32 %shr17 to i16
  %call.i.i148 = call i32 @usbnet_read_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 4, i8 noundef zeroext -64, i16 noundef zeroext %conv39, i16 noundef zeroext 1, ptr noundef nonnull %buf.i145, i16 noundef zeroext 2) #10, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i148)
  %cmp.i.i149 = icmp slt i32 %call.i.i148, 0
  br i1 %cmp.i.i149, label %if.then45, label %ax88179_read_cmd.exit153, !prof !98

ax88179_read_cmd.exit153:                         ; preds = %do.end9.i.i150
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %buf.i145 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %buf.i145, align 2
  %35 = call i16 @llvm.bswap.i16(i16 %34) #10
  %36 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %arrayidx41, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i145) #10
  br label %if.end47

if.then45:                                        ; preds = %do.end9.i.i150
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i151 = getelementptr i8, ptr %net, i32 2548
  %37 = ptrtoint ptr %net.i.i151 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %net.i.i151, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %38, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %call.i.i148) #13
  %39 = ptrtoint ptr %buf.i145 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %buf.i145, align 2
  %41 = call i16 @llvm.bswap.i16(i16 %40) #10
  %42 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %arrayidx41, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i145) #10
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %net, ptr noundef nonnull @.str.11, i32 noundef %shr17) #13
  br label %free

if.end47:                                         ; preds = %ax88179_read_cmd.exit153, %if.end32.if.end47_crit_edge
  %43 = ptrtoint ptr %offset14 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %offset14, align 4
  %and49 = and i32 %44, 1
  %add.ptr = getelementptr i8, ptr %call8.i, i32 %and49
  %45 = ptrtoint ptr %len7 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len7, align 4
  %47 = call ptr @memcpy(ptr %add.ptr, ptr %data, i32 %46)
  call void @__sanitizer_cov_trace_cmp4(i32 %shr17, i32 %shr)
  %cmp51.not177 = icmp ult i32 %shr17, %shr
  %tobool.not.i10.i = icmp eq ptr %add.ptr.i, null
  br i1 %cmp51.not177, label %for.end, label %if.end47.do.body54_crit_edge

if.end47.do.body54_crit_edge:                     ; preds = %if.end47
  br label %do.body54

do.body54:                                        ; preds = %if.end82.do.body54_crit_edge, %if.end47.do.body54_crit_edge
  %i.0178 = phi i32 [ %inc, %if.end82.do.body54_crit_edge ], [ %shr, %if.end47.do.body54_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88179_set_eeprom.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88179_set_eeprom, %if.then66)) #10
          to label %do.end74 [label %if.then66], !srcloc !103

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #12
  %sub67 = sub i32 %i.0178, %shr
  %arrayidx68 = getelementptr i16, ptr %call8.i, i32 %sub67
  %48 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx68, align 2
  %conv69 = zext i16 %49 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88179_set_eeprom.__UNIQUE_ID_ddebug355, ptr noundef %net, ptr noundef nonnull @.str.12, i32 noundef %i.0178, i32 noundef %conv69) #10
  br label %do.end74

do.end74:                                         ; preds = %if.then66, %do.body54
  %sub76 = sub i32 %i.0178, %shr
  %arrayidx77 = getelementptr i16, ptr %call8.i, i32 %sub76
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i154) #10
  %50 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx77, align 2
  %52 = call i16 @llvm.bswap.i16(i16 %51) #10
  %53 = ptrtoint ptr %buf.i154 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %buf.i154, align 2
  br i1 %tobool.not.i10.i, label %do.body4.i.i156, label %do.end9.i.i159, !prof !98

do.body4.i.i156:                                  ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #10, !srcloc !102
  unreachable

do.end9.i.i159:                                   ; preds = %do.end74
  %conv75 = trunc i32 %i.0178 to i16
  %call.i.i157 = call i32 @usbnet_write_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext %conv75, i16 noundef zeroext 1, ptr noundef nonnull %buf.i154, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i157)
  %cmp.i.i158 = icmp slt i32 %call.i.i157, 0
  br i1 %cmp.i.i158, label %if.then81, label %if.end82, !prof !98

if.then81:                                        ; preds = %do.end9.i.i159
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i160 = getelementptr i8, ptr %net, i32 2548
  %54 = ptrtoint ptr %net.i.i160 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %net.i.i160, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %55, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %call.i.i157) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i154) #10
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %net, ptr noundef nonnull @.str.13, i32 noundef %i.0178) #13
  br label %free

if.end82:                                         ; preds = %do.end9.i.i159
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i154) #10
  call void @msleep(i32 noundef 20) #10
  %inc = add i32 %i.0178, 1
  %cmp51.not = icmp sgt i32 %inc, %shr17
  br i1 %cmp51.not, label %if.end82.do.end9.i14.i_crit_edge, label %if.end82.do.body54_crit_edge

if.end82.do.body54_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body54

if.end82.do.end9.i14.i_crit_edge:                 ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i14.i

for.end:                                          ; preds = %if.end47
  br i1 %tobool.not.i10.i, label %do.body4.i11.i, label %for.end.do.end9.i14.i_crit_edge, !prof !98

for.end.do.end9.i14.i_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i14.i

do.body4.i11.i:                                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #10, !srcloc !102
  unreachable

do.end9.i14.i:                                    ; preds = %for.end.do.end9.i14.i_crit_edge, %if.end82.do.end9.i14.i_crit_edge
  %call.i12.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i)
  %cmp.i13.i = icmp slt i32 %call.i12.i, 0
  br i1 %cmp.i13.i, label %if.then86, label %do.end9.i14.i.free_crit_edge, !prof !98

do.end9.i14.i.free_crit_edge:                     ; preds = %do.end9.i14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free

if.then86:                                        ; preds = %do.end9.i14.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i15.i = getelementptr i8, ptr %net, i32 2548
  %56 = ptrtoint ptr %net.i15.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %net.i15.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %57, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef %call.i12.i) #13
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %net, ptr noundef nonnull @.str.14) #13
  br label %free

free:                                             ; preds = %if.then86, %do.end9.i14.i.free_crit_edge, %if.then81, %if.then45, %if.then30
  %ret.0 = phi i32 [ %call.i.i, %if.then30 ], [ %call.i.i148, %if.then45 ], [ %call.i.i157, %if.then81 ], [ %call.i12.i, %if.then86 ], [ 0, %do.end9.i14.i.free_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i) #10
  br label %cleanup

cleanup:                                          ; preds = %free, %if.end7.i.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %free ], [ -22, %do.end6.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -12, %if.end7.i.cleanup_crit_edge ], [ -12, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax88179_get_eee(ptr noundef %net, ptr nocapture noundef writeonly %edata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %data = getelementptr i8, ptr %net, i32 2556
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 2
  %conv = zext i8 %1 to i32
  %eee_enabled1 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 5
  %2 = ptrtoint ptr %eee_enabled1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %eee_enabled1, align 4
  %eee_active = getelementptr i8, ptr %net, i32 2557
  %3 = ptrtoint ptr %eee_active to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %eee_active, align 1
  %conv2 = zext i8 %4 to i32
  %eee_active3 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 4
  %5 = ptrtoint ptr %eee_active3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv2, ptr %eee_active3, align 4
  %call4 = tail call fastcc i32 @ax88179_ethtool_get_eee(ptr noundef %add.ptr.i, ptr noundef %edata)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax88179_set_eee(ptr noundef %net, ptr nocapture noundef readonly %edata) #2 align 64 {
entry:
  %buf.i36.i = alloca i16, align 2
  %buf.i27.i = alloca i16, align 2
  %buf.i18.i = alloca i16, align 2
  %buf.i9.i = alloca i16, align 2
  %buf.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %data = getelementptr i8, ptr %net, i32 2556
  %eee_enabled = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 5
  %0 = ptrtoint ptr %eee_enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %eee_enabled, align 4
  %conv = trunc i32 %1 to i8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %data, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool.not = icmp eq i8 %conv, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @ax88179_disable_eee(ptr noundef %add.ptr.i)
  br label %if.end9

if.else:                                          ; preds = %entry
  %call3 = tail call fastcc i32 @ax88179_chk_eee(ptr noundef %add.ptr.i)
  %conv4 = trunc i32 %call3 to i8
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv4, ptr %data, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv4)
  %tobool7.not = icmp eq i8 %conv4, 0
  br i1 %tobool7.not, label %if.else.cleanup_crit_edge, label %if.end

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #10
  %4 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 768, ptr %buf.i.i, align 2
  %tobool.not.i.i.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %do.end9.i.i.i, !prof !98

do.body4.i.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #10, !srcloc !102
  unreachable

do.end9.i.i.i:                                    ; preds = %if.end
  %call.i.i.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 31, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then19.i.i.i, label %do.end9.i.i.i.do.end9.i.i14.i_crit_edge, !prof !98

do.end9.i.i.i.do.end9.i.i14.i_crit_edge:          ; preds = %do.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i14.i

if.then19.i.i.i:                                  ; preds = %do.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i.i = getelementptr i8, ptr %net, i32 2548
  %5 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %6, ptr noundef nonnull @.str.2, i32 noundef 31, i32 noundef %call.i.i.i) #13
  br label %do.end9.i.i14.i

do.end9.i.i14.i:                                  ; preds = %if.then19.i.i.i, %do.end9.i.i.i.do.end9.i.i14.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i9.i) #10
  %7 = ptrtoint ptr %buf.i9.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 18226, ptr %buf.i9.i, align 2
  %call.i.i12.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 25, ptr noundef nonnull %buf.i9.i, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i12.i)
  %cmp.i.i13.i = icmp slt i32 %call.i.i12.i, 0
  br i1 %cmp.i.i13.i, label %if.then19.i.i16.i, label %do.end9.i.i14.i.do.end9.i.i23.i_crit_edge, !prof !98

do.end9.i.i14.i.do.end9.i.i23.i_crit_edge:        ; preds = %do.end9.i.i14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i23.i

if.then19.i.i16.i:                                ; preds = %do.end9.i.i14.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i15.i = getelementptr i8, ptr %net, i32 2548
  %8 = ptrtoint ptr %net.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net.i.i15.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %9, ptr noundef nonnull @.str.2, i32 noundef 25, i32 noundef %call.i.i12.i) #13
  br label %do.end9.i.i23.i

do.end9.i.i23.i:                                  ; preds = %if.then19.i.i16.i, %do.end9.i.i14.i.do.end9.i.i23.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i9.i) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i18.i) #10
  %10 = ptrtoint ptr %buf.i18.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1280, ptr %buf.i18.i, align 2
  %call.i.i21.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 31, ptr noundef nonnull %buf.i18.i, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i21.i)
  %cmp.i.i22.i = icmp slt i32 %call.i.i21.i, 0
  br i1 %cmp.i.i22.i, label %if.then19.i.i25.i, label %do.end9.i.i23.i.do.end9.i.i32.i_crit_edge, !prof !98

do.end9.i.i23.i.do.end9.i.i32.i_crit_edge:        ; preds = %do.end9.i.i23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i32.i

if.then19.i.i25.i:                                ; preds = %do.end9.i.i23.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i24.i = getelementptr i8, ptr %net, i32 2548
  %11 = ptrtoint ptr %net.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net.i.i24.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %12, ptr noundef nonnull @.str.2, i32 noundef 31, i32 noundef %call.i.i21.i) #13
  br label %do.end9.i.i32.i

do.end9.i.i32.i:                                  ; preds = %if.then19.i.i25.i, %do.end9.i.i23.i.do.end9.i.i32.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i18.i) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i27.i) #10
  %13 = ptrtoint ptr %buf.i27.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -32762, ptr %buf.i27.i, align 2
  %call.i.i30.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 1, ptr noundef nonnull %buf.i27.i, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i30.i)
  %cmp.i.i31.i = icmp slt i32 %call.i.i30.i, 0
  br i1 %cmp.i.i31.i, label %if.then19.i.i34.i, label %do.end9.i.i32.i.do.end9.i.i41.i_crit_edge, !prof !98

do.end9.i.i32.i.do.end9.i.i41.i_crit_edge:        ; preds = %do.end9.i.i32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i41.i

if.then19.i.i34.i:                                ; preds = %do.end9.i.i32.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i33.i = getelementptr i8, ptr %net, i32 2548
  %14 = ptrtoint ptr %net.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net.i.i33.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %15, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %call.i.i30.i) #13
  br label %do.end9.i.i41.i

do.end9.i.i41.i:                                  ; preds = %if.then19.i.i34.i, %do.end9.i.i32.i.do.end9.i.i41.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i27.i) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i36.i) #10
  %16 = ptrtoint ptr %buf.i36.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %buf.i36.i, align 2
  %call.i.i39.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %add.ptr.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 31, ptr noundef nonnull %buf.i36.i, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i39.i)
  %cmp.i.i40.i = icmp slt i32 %call.i.i39.i, 0
  br i1 %cmp.i.i40.i, label %if.then19.i.i43.i, label %do.end9.i.i41.i.ax88179_enable_eee.exit_crit_edge, !prof !98

do.end9.i.i41.i.ax88179_enable_eee.exit_crit_edge: ; preds = %do.end9.i.i41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ax88179_enable_eee.exit

if.then19.i.i43.i:                                ; preds = %do.end9.i.i41.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i42.i = getelementptr i8, ptr %net, i32 2548
  %17 = ptrtoint ptr %net.i.i42.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net.i.i42.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %18, ptr noundef nonnull @.str.2, i32 noundef 31, i32 noundef %call.i.i39.i) #13
  br label %ax88179_enable_eee.exit

ax88179_enable_eee.exit:                          ; preds = %if.then19.i.i43.i, %do.end9.i.i41.i.ax88179_enable_eee.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i36.i) #10
  br label %if.end9

if.end9:                                          ; preds = %ax88179_enable_eee.exit, %if.then
  %call10 = call fastcc i32 @ax88179_ethtool_set_eee(ptr noundef %add.ptr.i, ptr noundef %edata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %mii = getelementptr i8, ptr %net, i32 2588
  %call14 = call i32 @mii_nway_restart(ptr noundef %mii) #10
  call void @usbnet_link_change(ptr noundef %add.ptr.i, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end9.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -95, %if.else.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax88179_get_link_ksettings(ptr noundef %net, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %net, i32 2588
  tail call void @mii_ethtool_get_link_ksettings(ptr noundef %mii, ptr noundef %cmd) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax88179_set_link_ksettings(ptr noundef %net, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %net, i32 2588
  %call1 = tail call i32 @mii_ethtool_set_link_ksettings(ptr noundef %mii, ptr noundef %cmd) #10
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ax88179_chk_eee(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %buf.i.i71 = alloca i16, align 2
  %buf.i.i59 = alloca i16, align 2
  %buf.i.i = alloca i16, align 2
  %ecmd = alloca %struct.ethtool_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %ecmd) #10
  %0 = getelementptr inbounds i8, ptr %ecmd, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %2 = ptrtoint ptr %ecmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %ecmd, align 4
  %data = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21
  %mii = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25
  call void @mii_ethtool_gset(ptr noundef %mii, ptr noundef nonnull %ecmd) #10
  %duplex = getelementptr inbounds %struct.ethtool_cmd, ptr %ecmd, i32 0, i32 4
  %3 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %duplex, align 2
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end41, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @ax88179_phy_mmd_indirect(ptr noundef %dev, i16 noundef zeroext 20, i16 noundef zeroext 3) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #10
  %6 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %buf.i.i, align 2
  %tobool.not.i.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %do.end9.i.i.i, !prof !98

do.body4.i.i.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 194, 0\0A.popsection", ""() #10, !srcloc !99
  unreachable

do.end9.i.i.i:                                    ; preds = %if.then
  %call.i.i.i = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 2, i8 noundef zeroext -64, i16 noundef zeroext 3, i16 noundef zeroext 14, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 2) #10, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %ax88179_phy_read_mmd_indirect.exit.thread, label %ax88179_phy_read_mmd_indirect.exit, !prof !98

ax88179_phy_read_mmd_indirect.exit.thread:        ; preds = %do.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %7 = ptrtoint ptr %net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %8, ptr noundef nonnull @.str.1, i32 noundef 14, i32 noundef %call.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #10
  %eee_active = getelementptr inbounds %struct.ax88179_data, ptr %data, i32 0, i32 1
  %9 = ptrtoint ptr %eee_active to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %eee_active, align 1
  br label %cleanup43

ax88179_phy_read_mmd_indirect.exit:               ; preds = %do.end9.i.i.i
  %10 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %buf.i.i, align 2
  %12 = call i16 @llvm.bswap.i16(i16 %11) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #10
  %conv.i58 = zext i16 %12 to i32
  %and.i = shl nuw nsw i32 %conv.i58, 2
  %13 = and i32 %and.i, 8
  %and2.i = shl nuw nsw i32 %conv.i58, 3
  %14 = and i32 %and2.i, 32
  %15 = or i32 %14, %13
  %and8.i = shl nuw nsw i32 %conv.i58, 9
  %16 = and i32 %and8.i, 4096
  %17 = or i32 %15, %16
  %and14.i = shl nuw nsw i32 %conv.i58, 13
  %18 = and i32 %and14.i, 131072
  %19 = or i32 %17, %18
  %20 = and i32 %and14.i, 262144
  %21 = or i32 %19, %20
  %22 = and i32 %and14.i, 524288
  %23 = or i32 %21, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool5.not = icmp eq i32 %23, 0
  br i1 %tobool5.not, label %if.then6, label %do.end9.i.i.i64

if.then6:                                         ; preds = %ax88179_phy_read_mmd_indirect.exit
  call void @__sanitizer_cov_trace_pc() #12
  %eee_active7 = getelementptr inbounds %struct.ax88179_data, ptr %data, i32 0, i32 1
  %24 = ptrtoint ptr %eee_active7 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %eee_active7, align 1
  br label %cleanup43

do.end9.i.i.i64:                                  ; preds = %ax88179_phy_read_mmd_indirect.exit
  call fastcc void @ax88179_phy_mmd_indirect(ptr noundef nonnull %dev, i16 noundef zeroext 61, i16 noundef zeroext 7) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i59) #10
  %25 = ptrtoint ptr %buf.i.i59 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %buf.i.i59, align 2
  %call.i.i.i62 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 2, i8 noundef zeroext -64, i16 noundef zeroext 3, i16 noundef zeroext 14, ptr noundef nonnull %buf.i.i59, i16 noundef zeroext 2) #10, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i62)
  %cmp.i.i.i63 = icmp slt i32 %call.i.i.i62, 0
  br i1 %cmp.i.i.i63, label %ax88179_phy_read_mmd_indirect.exit70.thread, label %ax88179_phy_read_mmd_indirect.exit70, !prof !98

ax88179_phy_read_mmd_indirect.exit70.thread:      ; preds = %do.end9.i.i.i64
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i.i65 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %26 = ptrtoint ptr %net.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net.i.i.i65, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %27, ptr noundef nonnull @.str.1, i32 noundef 14, i32 noundef %call.i.i.i62) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i59) #10
  %eee_active13 = getelementptr inbounds %struct.ax88179_data, ptr %data, i32 0, i32 1
  %28 = ptrtoint ptr %eee_active13 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %eee_active13, align 1
  br label %cleanup43

ax88179_phy_read_mmd_indirect.exit70:             ; preds = %do.end9.i.i.i64
  %29 = ptrtoint ptr %buf.i.i59 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %buf.i.i59, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i59) #10
  call fastcc void @ax88179_phy_mmd_indirect(ptr noundef nonnull %dev, i16 noundef zeroext 60, i16 noundef zeroext 7) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i71) #10
  %31 = ptrtoint ptr %buf.i.i71 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %buf.i.i71, align 2
  %call.i.i.i74 = call i32 @usbnet_read_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 2, i8 noundef zeroext -64, i16 noundef zeroext 3, i16 noundef zeroext 14, ptr noundef nonnull %buf.i.i71, i16 noundef zeroext 2) #10, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i74)
  %cmp.i.i.i75 = icmp slt i32 %call.i.i.i74, 0
  br i1 %cmp.i.i.i75, label %ax88179_phy_read_mmd_indirect.exit82.thread, label %ax88179_phy_read_mmd_indirect.exit82, !prof !98

ax88179_phy_read_mmd_indirect.exit82.thread:      ; preds = %ax88179_phy_read_mmd_indirect.exit70
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i.i77 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %32 = ptrtoint ptr %net.i.i.i77 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %net.i.i.i77, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %33, ptr noundef nonnull @.str.1, i32 noundef 14, i32 noundef %call.i.i.i74) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i71) #10
  %eee_active19 = getelementptr inbounds %struct.ax88179_data, ptr %data, i32 0, i32 1
  %34 = ptrtoint ptr %eee_active19 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %eee_active19, align 1
  br label %cleanup43

ax88179_phy_read_mmd_indirect.exit82:             ; preds = %ax88179_phy_read_mmd_indirect.exit70
  %35 = call i16 @llvm.bswap.i16(i16 %30) #10
  %36 = ptrtoint ptr %buf.i.i71 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %buf.i.i71, align 2
  %38 = call i16 @llvm.bswap.i16(i16 %37) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i71) #10
  %conv.i83 = zext i16 %38 to i32
  %and.i84 = shl nuw nsw i32 %conv.i83, 2
  %39 = and i32 %and.i84, 8
  %and2.i85 = shl nuw nsw i32 %conv.i83, 3
  %40 = and i32 %and2.i85, 32
  %41 = or i32 %40, %39
  %conv.i88 = zext i16 %35 to i32
  %and.i89 = shl nuw nsw i32 %conv.i88, 2
  %42 = and i32 %and.i89, 8
  %and2.i90 = shl nuw nsw i32 %conv.i88, 3
  %43 = and i32 %and2.i90, 32
  %speed = getelementptr inbounds %struct.ethtool_cmd, ptr %ecmd, i32 0, i32 3
  %44 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1000, i16 %45)
  %cmp26 = icmp eq i16 %45, 1000
  %and28 = select i1 %cmp26, i32 %43, i32 %42
  %and29 = and i32 %and28, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %eee_active32 = getelementptr inbounds %struct.ax88179_data, ptr %data, i32 0, i32 1
  br i1 %tobool30.not, label %if.then31, label %if.end33

if.then31:                                        ; preds = %ax88179_phy_read_mmd_indirect.exit82
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %eee_active32 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %eee_active32, align 1
  br label %cleanup43

if.end33:                                         ; preds = %ax88179_phy_read_mmd_indirect.exit82
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %eee_active32 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %eee_active32, align 1
  br label %cleanup43

if.end41:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %eee_active42 = getelementptr inbounds %struct.ax88179_data, ptr %data, i32 0, i32 1
  %48 = ptrtoint ptr %eee_active42 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %eee_active42, align 1
  br label %cleanup43

cleanup43:                                        ; preds = %if.end41, %if.end33, %if.then31, %ax88179_phy_read_mmd_indirect.exit82.thread, %ax88179_phy_read_mmd_indirect.exit70.thread, %if.then6, %ax88179_phy_read_mmd_indirect.exit.thread
  %retval.1 = phi i32 [ 0, %if.end41 ], [ 0, %ax88179_phy_read_mmd_indirect.exit.thread ], [ 0, %ax88179_phy_read_mmd_indirect.exit70.thread ], [ 0, %ax88179_phy_read_mmd_indirect.exit82.thread ], [ 1, %if.end33 ], [ 0, %if.then31 ], [ 0, %if.then6 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %ecmd) #10
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_gset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ax88179_phy_mmd_indirect(ptr noundef %dev, i16 noundef zeroext %prtad, i16 noundef zeroext %devad) unnamed_addr #9 align 64 {
entry:
  %buf.i10 = alloca i16, align 2
  %buf.i1 = alloca i16, align 2
  %buf.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #10
  %0 = tail call i16 @llvm.bswap.i16(i16 %devad) #10
  %1 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %0, ptr %buf.i, align 2
  %tobool.not.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !98

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #10, !srcloc !102
  unreachable

do.end9.i.i:                                      ; preds = %entry
  %call.i.i = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 13, ptr noundef nonnull %buf.i, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then19.i.i, label %do.end9.i.i.do.end9.i.i6_crit_edge, !prof !98

do.end9.i.i.do.end9.i.i6_crit_edge:               ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i6

if.then19.i.i:                                    ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef 13, i32 noundef %call.i.i) #13
  br label %do.end9.i.i6

do.end9.i.i6:                                     ; preds = %if.then19.i.i, %do.end9.i.i.do.end9.i.i6_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i1) #10
  %4 = call i16 @llvm.bswap.i16(i16 %prtad) #10
  %5 = ptrtoint ptr %buf.i1 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %buf.i1, align 2
  %call.i.i4 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 14, ptr noundef nonnull %buf.i1, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4)
  %cmp.i.i5 = icmp slt i32 %call.i.i4, 0
  br i1 %cmp.i.i5, label %if.then19.i.i8, label %do.end9.i.i6.do.end9.i.i15_crit_edge, !prof !98

do.end9.i.i6.do.end9.i.i15_crit_edge:             ; preds = %do.end9.i.i6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i.i15

if.then19.i.i8:                                   ; preds = %do.end9.i.i6
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i7 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %6 = ptrtoint ptr %net.i.i7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net.i.i7, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %7, ptr noundef nonnull @.str.2, i32 noundef 14, i32 noundef %call.i.i4) #13
  br label %do.end9.i.i15

do.end9.i.i15:                                    ; preds = %if.then19.i.i8, %do.end9.i.i6.do.end9.i.i15_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i1) #10
  %8 = or i16 %devad, 16384
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i10) #10
  %9 = call i16 @llvm.bswap.i16(i16 %8) #10
  %10 = ptrtoint ptr %buf.i10 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %buf.i10, align 2
  %call.i.i13 = call i32 @usbnet_write_cmd(ptr noundef nonnull %dev, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 13, ptr noundef nonnull %buf.i10, i16 noundef zeroext 2) #10, !callees !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i13)
  %cmp.i.i14 = icmp slt i32 %call.i.i13, 0
  br i1 %cmp.i.i14, label %if.then19.i.i17, label %do.end9.i.i15.ax88179_write_cmd.exit18_crit_edge, !prof !98

do.end9.i.i15.ax88179_write_cmd.exit18_crit_edge: ; preds = %do.end9.i.i15
  call void @__sanitizer_cov_trace_pc() #12
  br label %ax88179_write_cmd.exit18

if.then19.i.i17:                                  ; preds = %do.end9.i.i15
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i16 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %11 = ptrtoint ptr %net.i.i16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net.i.i16, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %12, ptr noundef nonnull @.str.2, i32 noundef 13, i32 noundef %call.i.i13) #13
  br label %ax88179_write_cmd.exit18

ax88179_write_cmd.exit18:                         ; preds = %if.then19.i.i17, %do.end9.i.i15.ax88179_write_cmd.exit18_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i10) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_ethtool_set_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_skb_return(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readonly willreturn }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !28, !29, !31, !33, !35, !37, !39, !40, !41, !43, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @__initcall__kmod_ax88179_178a__358_1933_ax88179_178a_driver_init6, !1, !"__initcall__kmod_ax88179_178a__358_1933_ax88179_178a_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/usb/ax88179_178a.c", i32 1933, i32 1}
!2 = !{ptr @__exitcall_ax88179_178a_driver_exit, !1, !"__exitcall_ax88179_178a_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description359, !4, !"__UNIQUE_ID_description359", i1 false, i1 false}
!4 = !{!"../drivers/net/usb/ax88179_178a.c", i32 1935, i32 1}
!5 = !{ptr @__UNIQUE_ID_file360, !6, !"__UNIQUE_ID_file360", i1 false, i1 false}
!6 = !{!"../drivers/net/usb/ax88179_178a.c", i32 1936, i32 1}
!7 = !{ptr @__UNIQUE_ID_license361, !6, !"__UNIQUE_ID_license361", i1 false, i1 false}
!8 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ax88179_178a_driver, !10, !"ax88179_178a_driver", i1 false, i1 false}
!10 = !{!"../drivers/net/usb/ax88179_178a.c", i32 1921, i32 26}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/usb/ax88179_178a.c", i32 205, i32 25}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/usb/ax88179_178a.c", i32 228, i32 25}
!15 = !{ptr @products, !16, !"products", i1 false, i1 false}
!16 = !{!"../drivers/net/usb/ax88179_178a.c", i32 1875, i32 35}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/usb/ax88179_178a.c", i32 1746, i32 17}
!19 = !{ptr @ax88179_info, !20, !"ax88179_info", i1 false, i1 false}
!20 = !{!"../drivers/net/usb/ax88179_178a.c", i32 1745, i32 33}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/usb/ax88179_178a.c", i32 1303, i32 3}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ax88179_get_mac_addr.__UNIQUE_ID_ddebug356, !22, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/usb/ax88179_178a.c", i32 1308, i32 3}
!28 = !{ptr @ax88179_get_mac_addr.__UNIQUE_ID_ddebug357, !27, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/usb/ax88179_178a.c", i32 1315, i32 25}
!31 = !{ptr @AX88179_BULKIN_SIZE, !32, !"AX88179_BULKIN_SIZE", i1 false, i1 false}
!32 = !{!"../drivers/net/usb/ax88179_178a.c", i32 181, i32 3}
!33 = !{ptr @ax88179_netdev_ops, !34, !"ax88179_netdev_ops", i1 false, i1 false}
!34 = !{!"../drivers/net/usb/ax88179_178a.c", i32 1029, i32 36}
!35 = !{ptr @ax88179_ethtool_ops, !36, !"ax88179_ethtool_ops", i1 false, i1 false}
!36 = !{!"../drivers/net/usb/ax88179_178a.c", i32 893, i32 33}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/usb/ax88179_178a.c", i32 626, i32 2}
!39 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @ax88179_set_eeprom.__UNIQUE_ID_ddebug354, !38, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/usb/ax88179_178a.c", i32 649, i32 20}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/usb/ax88179_178a.c", i32 666, i32 3}
!45 = !{ptr @ax88179_set_eeprom.__UNIQUE_ID_ddebug355, !44, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/usb/ax88179_178a.c", i32 671, i32 20}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/usb/ax88179_178a.c", i32 680, i32 19}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/usb/ax88179_178a.c", i32 349, i32 25}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/usb/ax88179_178a.c", i32 1759, i32 17}
!54 = !{ptr @ax88178a_info, !55, !"ax88178a_info", i1 false, i1 false}
!55 = !{!"../drivers/net/usb/ax88179_178a.c", i32 1758, i32 33}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/usb/ax88179_178a.c", i32 1772, i32 17}
!58 = !{ptr @cypress_GX3_info, !59, !"cypress_GX3_info", i1 false, i1 false}
!59 = !{!"../drivers/net/usb/ax88179_178a.c", i32 1771, i32 33}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/usb/ax88179_178a.c", i32 1785, i32 17}
!62 = !{ptr @dlink_dub1312_info, !63, !"dlink_dub1312_info", i1 false, i1 false}
!63 = !{!"../drivers/net/usb/ax88179_178a.c", i32 1784, i32 33}
!64 = !{ptr @.str.19, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/usb/ax88179_178a.c", i32 1798, i32 17}
!66 = !{ptr @sitecom_info, !67, !"sitecom_info", i1 false, i1 false}
!67 = !{!"../drivers/net/usb/ax88179_178a.c", i32 1797, i32 33}
!68 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/usb/ax88179_178a.c", i32 1811, i32 17}
!70 = !{ptr @samsung_info, !71, !"samsung_info", i1 false, i1 false}
!71 = !{!"../drivers/net/usb/ax88179_178a.c", i32 1810, i32 33}
!72 = !{ptr @.str.21, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/usb/ax88179_178a.c", i32 1824, i32 17}
!74 = !{ptr @lenovo_info, !75, !"lenovo_info", i1 false, i1 false}
!75 = !{!"../drivers/net/usb/ax88179_178a.c", i32 1823, i32 33}
!76 = !{ptr @.str.22, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/usb/ax88179_178a.c", i32 1837, i32 17}
!78 = !{ptr @belkin_info, !79, !"belkin_info", i1 false, i1 false}
!79 = !{!"../drivers/net/usb/ax88179_178a.c", i32 1836, i32 33}
!80 = !{ptr @.str.23, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/usb/ax88179_178a.c", i32 1850, i32 17}
!82 = !{ptr @toshiba_info, !83, !"toshiba_info", i1 false, i1 false}
!83 = !{!"../drivers/net/usb/ax88179_178a.c", i32 1849, i32 33}
!84 = !{ptr @.str.24, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/usb/ax88179_178a.c", i32 1863, i32 17}
!86 = !{ptr @mct_info, !87, !"mct_info", i1 false, i1 false}
!87 = !{!"../drivers/net/usb/ax88179_178a.c", i32 1862, i32 33}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{!"auto-init"}
!98 = !{!"branch_weights", i32 1, i32 2000}
!99 = !{i64 2156568129, i64 2156568624, i64 2156568166, i64 2156568222, i64 2156568256, i64 2156568280, i64 2156568321, i64 2156568342, i64 2156568370, i64 2156568404}
!100 = !{ptr @usbnet_read_cmd, ptr @usbnet_read_cmd_nopm}
!101 = !{ptr @usbnet_write_cmd, ptr @usbnet_write_cmd_nopm}
!102 = !{i64 2156569783, i64 2156570278, i64 2156569820, i64 2156569876, i64 2156569910, i64 2156569934, i64 2156569975, i64 2156569996, i64 2156570024, i64 2156570058}
!103 = !{i64 2149001218, i64 2149001223, i64 2149001236, i64 2149001280, i64 2149001314, i64 2149001335}
