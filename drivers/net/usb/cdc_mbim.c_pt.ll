; ModuleID = '/llk/IR_all_yes/drivers/net/usb/cdc_mbim.c_pt.bc'
source_filename = "../drivers/net/usb/cdc_mbim.c"
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
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.148, i32 }
%union.anon.148 = type { ptr }
%struct.cdc_ncm_ctx = type { %struct.usb_cdc_ncm_ntb_parameters, %struct.hrtimer, %struct.tasklet_struct, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.atomic_t, i32, i32, i32, i8, %union.anon.149, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.usb_cdc_ncm_ntb_parameters = type { i16, i16, i32, i16, i16, i16, i16, i32, i16, i16, i16, i16 }
%union.anon.149 = type { ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_cdc_mbim_desc = type <{ i8, i8, i8, i16, i16, i8, i8, i16, i8 }>
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.147, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.147 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.usb_cdc_ncm_ndp16 = type { i32, i16, i16, [0 x %struct.usb_cdc_ncm_dpe16] }
%struct.usb_cdc_ncm_dpe16 = type { i16, i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inet6_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.ipv6_stub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.vlan_ethhdr = type { %union.anon.152, i16, i16, i16 }
%union.anon.152 = type { %struct.anon.153 }
%struct.anon.153 = type { [6 x i8], [6 x i8] }

@__initcall__kmod_cdc_mbim__496_687_cdc_mbim_driver_init6 = internal global ptr @cdc_mbim_driver_init, section ".initcall6.init", align 4
@cdc_mbim_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @usbnet_probe, ptr @usbnet_disconnect, ptr null, ptr @cdc_mbim_suspend, ptr @cdc_mbim_resume, ptr @cdc_mbim_resume, ptr null, ptr null, ptr @mbim_devs, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 96 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_cdc_mbim_driver_exit = internal global ptr @cdc_mbim_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author497 = internal constant [53 x i8] c"cdc_mbim.author=Greg Suarez <gsuarez@smithmicro.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author498 = internal constant [44 x i8] c"cdc_mbim.author=Bj\C3\B8rn Mork <bjorn@mork.no>\00", section ".modinfo", align 1
@__UNIQUE_ID_description499 = internal constant [46 x i8] c"cdc_mbim.description=USB CDC MBIM host driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file500 = internal constant [39 x i8] c"cdc_mbim.file=drivers/net/usb/cdc_mbim\00", section ".modinfo", align 1
@__UNIQUE_ID_license501 = internal constant [21 x i8] c"cdc_mbim.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cdc_mbim\00", [23 x i8] zeroinitializer }, align 32
@mbim_devs = internal constant { [9 x %struct.usb_device_id], [40 x i8] } { [9 x %struct.usb_device_id] [%struct.usb_device_id { i16 896, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 13, i8 0, i8 0, i32 ptrtoint (ptr @cdc_mbim_info to i32) }, %struct.usb_device_id { i16 897, i16 3035, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 14, i8 0, i8 0, i32 ptrtoint (ptr @cdc_mbim_info to i32) }, %struct.usb_device_id { i16 897, i16 4817, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 14, i8 0, i8 0, i32 ptrtoint (ptr @cdc_mbim_info_ndp_to_end to i32) }, %struct.usb_device_id { i16 899, i16 1008, i16 -23779, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 14, i8 0, i8 0, i32 ptrtoint (ptr @cdc_mbim_info_ndp_to_end to i32) }, %struct.usb_device_id { i16 899, i16 7111, i16 4161, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 14, i8 0, i8 0, i32 ptrtoint (ptr @cdc_mbim_info_avoid_altsetting_toggle to i32) }, %struct.usb_device_id { i16 899, i16 7111, i16 4193, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 14, i8 0, i8 0, i32 ptrtoint (ptr @cdc_mbim_info_avoid_altsetting_toggle to i32) }, %struct.usb_device_id { i16 899, i16 7111, i16 4209, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 14, i8 0, i8 0, i32 ptrtoint (ptr @cdc_mbim_info_avoid_altsetting_toggle to i32) }, %struct.usb_device_id { i16 896, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 14, i8 0, i8 0, i32 ptrtoint (ptr @cdc_mbim_info_zlp to i32) }, %struct.usb_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@cdc_mbim_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.1, i32 9232, ptr @cdc_mbim_bind, ptr @cdc_mbim_unbind, ptr null, ptr null, ptr null, ptr @cdc_mbim_manage_power, ptr null, ptr null, ptr @cdc_mbim_rx_fixup, ptr @cdc_mbim_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@cdc_mbim_info_ndp_to_end = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.1, i32 9232, ptr @cdc_mbim_bind, ptr @cdc_mbim_unbind, ptr null, ptr null, ptr null, ptr @cdc_mbim_manage_power, ptr null, ptr null, ptr @cdc_mbim_rx_fixup, ptr @cdc_mbim_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 2 }, [52 x i8] zeroinitializer }, align 32
@cdc_mbim_info_avoid_altsetting_toggle = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.1, i32 9744, ptr @cdc_mbim_bind, ptr @cdc_mbim_unbind, ptr null, ptr null, ptr null, ptr @cdc_mbim_manage_power, ptr null, ptr null, ptr @cdc_mbim_rx_fixup, ptr @cdc_mbim_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 4 }, [52 x i8] zeroinitializer }, align 32
@cdc_mbim_info_zlp = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.1, i32 9744, ptr @cdc_mbim_bind, ptr @cdc_mbim_unbind, ptr null, ptr null, ptr null, ptr @cdc_mbim_manage_power, ptr null, ptr null, ptr @cdc_mbim_rx_fixup, ptr @cdc_mbim_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CDC MBIM\00", [23 x i8] zeroinitializer }, align 32
@cdc_mbim_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @usbnet_open, ptr @usbnet_stop, ptr @usbnet_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cdc_ncm_change_mtu, ptr null, ptr @usbnet_tx_timeout, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr @cdc_mbim_rx_add_vid, ptr @cdc_mbim_rx_kill_vid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@cdc_mbim_set_ctrlalt.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cdc_mbim_set_ctrlalt\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/net/usb/cdc_mbim.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"driver_info updated to '%s'\0A\00", [35 x i8] zeroinitializer }, align 32
@cdc_mbim_manage_power.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.3, ptr @.str.6, i8 0, i8 12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cdc_mbim_manage_power\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s() pmcount=%d, on=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@cdc_mbim_rx_fixup.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.3, ptr @.str.8, i8 0, i8 113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cdc_mbim_rx_fixup\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unsupported NDP signature <0x%08x>\0A\00", [60 x i8] zeroinitializer }, align 32
@cdc_mbim_rx_fixup.__UNIQUE_ID_ddebug495 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.3, ptr @.str.9, i8 0, i8 119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"invalid frame detected (ignored) offset[%u]=%u, length=%u, skb=%p\0A\00", [61 x i8] zeroinitializer }, align 32
@ipv6_stub = external dso_local local_unnamed_addr global ptr, section ".data..read_mostly", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@in6_dev_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/addrconf.h\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unsupported tci=0x%04x\0A\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1146311424, i64 1230000896]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 8, i64 64, i64 96]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 4094]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 256]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.23 = private unnamed_addr constant [16 x i8] c"cdc_mbim_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 676, i32 26 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 687, i32 1 }
@___asan_gen_.29 = private unnamed_addr constant [10 x i8] c"mbim_devs\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 620, i32 35 }
@___asan_gen_.32 = private unnamed_addr constant [14 x i8] c"cdc_mbim_info\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 551, i32 33 }
@___asan_gen_.35 = private unnamed_addr constant [25 x i8] c"cdc_mbim_info_ndp_to_end\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 594, i32 33 }
@___asan_gen_.38 = private unnamed_addr constant [38 x i8] c"cdc_mbim_info_avoid_altsetting_toggle\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 609, i32 33 }
@___asan_gen_.41 = private unnamed_addr constant [18 x i8] c"cdc_mbim_info_zlp\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 575, i32 33 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 552, i32 17 }
@___asan_gen_.47 = private unnamed_addr constant [20 x i8] c"cdc_mbim_netdev_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 96, i32 36 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 132, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 48, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 451, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 475, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 695, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 723, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [26 x i8] c"../include/net/addrconf.h\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 359, i32 9 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private constant [30 x i8] c"../drivers/net/usb/cdc_mbim.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 286, i32 4 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_author497, ptr @__UNIQUE_ID_author498, ptr @__UNIQUE_ID_description499, ptr @__UNIQUE_ID_file500, ptr @__UNIQUE_ID_license501, ptr @__exitcall_cdc_mbim_driver_exit, ptr @__initcall__kmod_cdc_mbim__496_687_cdc_mbim_driver_init6, ptr @cdc_mbim_driver_exit, ptr @cdc_mbim_driver, ptr @.str, ptr @mbim_devs, ptr @cdc_mbim_info, ptr @cdc_mbim_info_ndp_to_end, ptr @cdc_mbim_info_avoid_altsetting_toggle, ptr @cdc_mbim_info_zlp, ptr @.str.1, ptr @cdc_mbim_netdev_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdc_mbim_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbim_devs to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdc_mbim_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdc_mbim_info_ndp_to_end to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdc_mbim_info_avoid_altsetting_toggle to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdc_mbim_info_zlp to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdc_mbim_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cdc_mbim_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @cdc_mbim_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cdc_mbim_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_deregister(ptr noundef nonnull @cdc_mbim_driver) #9
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
define internal i32 @cdc_mbim_suspend(ptr noundef %intf, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %data = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @usbnet_suspend(ptr noundef %intf, [1 x i32] %message.coerce) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.error_crit_edge, label %if.end5

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end5:                                          ; preds = %if.end
  %control = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %control, align 4
  %cmp6 = icmp eq ptr %5, %intf
  br i1 %cmp6, label %land.lhs.true, label %if.end5.error_crit_edge

if.end5.error_crit_edge:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

land.lhs.true:                                    ; preds = %if.end5
  %subdriver = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 21, i32 2
  %6 = ptrtoint ptr %subdriver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %subdriver, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %land.lhs.true.error_crit_edge, label %land.lhs.true8

land.lhs.true.error_crit_edge:                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

land.lhs.true8:                                   ; preds = %land.lhs.true
  %suspend = getelementptr inbounds %struct.usb_driver, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %suspend, align 4
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %land.lhs.true8.error_crit_edge, label %if.end16

land.lhs.true8.error_crit_edge:                   ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end16:                                         ; preds = %land.lhs.true8
  %call15 = tail call i32 %9(ptr noundef %intf, [1 x i32] %message.coerce) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp17 = icmp slt i32 %call15, 0
  br i1 %cmp17, label %if.then18, label %if.end16.error_crit_edge

if.end16.error_crit_edge:                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = tail call i32 @usbnet_resume(ptr noundef %intf) #9
  br label %error

error:                                            ; preds = %if.then18, %if.end16.error_crit_edge, %land.lhs.true8.error_crit_edge, %land.lhs.true.error_crit_edge, %if.end5.error_crit_edge, %if.end.error_crit_edge, %entry.error_crit_edge
  %ret.1 = phi i32 [ %call3, %if.end.error_crit_edge ], [ %call15, %if.then18 ], [ %call15, %if.end16.error_crit_edge ], [ -19, %entry.error_crit_edge ], [ %call3, %land.lhs.true8.error_crit_edge ], [ %call3, %land.lhs.true.error_crit_edge ], [ %call3, %if.end5.error_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdc_mbim_resume(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %data = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %control = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %control, align 4
  %cmp = icmp eq ptr %5, %intf
  br i1 %cmp, label %land.lhs.true, label %entry.if.end10.thread_crit_edge

entry.if.end10.thread_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.thread

land.lhs.true:                                    ; preds = %entry
  %subdriver = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 21, i32 2
  %6 = ptrtoint ptr %subdriver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %subdriver, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %land.lhs.true.if.end10.thread_crit_edge, label %land.end

land.lhs.true.if.end10.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.thread

land.end:                                         ; preds = %land.lhs.true
  %resume = getelementptr inbounds %struct.usb_driver, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resume, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %land.end.if.end10.thread_crit_edge, label %if.end

land.end.if.end10.thread_crit_edge:               ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.thread

if.end:                                           ; preds = %land.end
  %10 = ptrtoint ptr %subdriver to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %subdriver, align 4
  %resume6 = getelementptr inbounds %struct.usb_driver, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %resume6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %resume6, align 4
  %call7 = tail call i32 %13(ptr noundef %intf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end.err_crit_edge, label %if.end10

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end10.thread:                                  ; preds = %land.end.if.end10.thread_crit_edge, %land.lhs.true.if.end10.thread_crit_edge, %entry.if.end10.thread_crit_edge
  %call1132 = tail call i32 @usbnet_resume(ptr noundef %intf) #9
  br label %err

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @usbnet_resume(ptr noundef %intf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call11)
  %cmp12 = icmp sgt i32 %call11, -1
  br i1 %cmp12, label %if.end10.err_crit_edge, label %if.then15

if.end10.err_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %subdriver16 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 21, i32 2
  %14 = ptrtoint ptr %subdriver16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %subdriver16, align 4
  %suspend = getelementptr inbounds %struct.usb_driver, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %suspend, align 4
  %call17 = tail call i32 %17(ptr noundef %intf, [1 x i32] [i32 2]) #9
  br label %err

err:                                              ; preds = %if.then15, %if.end10.err_crit_edge, %if.end10.thread, %if.end.err_crit_edge
  %ret.1 = phi i32 [ %call7, %if.end.err_crit_edge ], [ %call11, %if.then15 ], [ %call11, %if.end10.err_crit_edge ], [ %call1132, %if.end10.thread ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_suspend(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdc_mbim_bind(ptr noundef %dev, ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21
  %call1 = tail call zeroext i8 @cdc_ncm_select_altsetting(ptr noundef %intf) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call1)
  %cmp = icmp eq i8 %call1, 1
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %driver2.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 6
  %0 = ptrtoint ptr %driver2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver2.i, align 4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %cur_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %4 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur_altsetting.i, align 4
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bInterfaceNumber.i, align 2
  %conv.i = zext i8 %7 to i32
  %call.i = tail call i32 @usb_set_interface(ptr noundef %3, i32 noundef %conv.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.err_crit_edge

if.then.err_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end.i:                                         ; preds = %if.then
  %id_table.i = getelementptr i8, ptr %1, i32 -60
  %8 = ptrtoint ptr %id_table.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %id_table.i, align 4
  %call4.i = tail call ptr @usb_match_id(ptr noundef %intf, ptr noundef %9) #9
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.end.i.err_crit_edge, label %if.end7.i

if.end.i.err_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end7.i:                                        ; preds = %if.end.i
  %driver_info.i = getelementptr inbounds %struct.usb_device_id, ptr %call4.i, i32 0, i32 12
  %10 = ptrtoint ptr %driver_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %driver_info.i, align 4
  %12 = inttoptr i32 %11 to ptr
  %driver_info8.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 2
  %13 = ptrtoint ptr %driver_info8.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_info8.i, align 4
  %cmp.not.i = icmp eq ptr %14, %12
  br i1 %cmp.not.i, label %if.end7.i.if.end5_crit_edge, label %do.body.i

if.end7.i.if.end5_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

do.body.i:                                        ; preds = %if.end7.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdc_mbim_set_ctrlalt.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdc_mbim_bind, %if.then16.i)) #9
          to label %do.end.i [label %if.then16.i], !srcloc !68

if.then16.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdc_mbim_set_ctrlalt.__UNIQUE_ID_ddebug493, ptr noundef %dev1.i, ptr noundef nonnull @.str.4, ptr noundef %16) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then16.i, %do.body.i
  %17 = ptrtoint ptr %driver_info8.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %12, ptr %driver_info8.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %do.end.i, %if.end7.i.if.end5_crit_edge, %entry.if.end5_crit_edge
  %data_altsetting.0 = phi i8 [ 1, %entry.if.end5_crit_edge ], [ 2, %do.end.i ], [ 2, %if.end7.i.if.end5_crit_edge ]
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %18 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceSubClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %bInterfaceSubClass to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bInterfaceSubClass, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %21)
  %cmp7 = icmp eq i8 %21, 14
  br i1 %cmp7, label %land.lhs.true, label %if.end5.err_crit_edge

if.end5.err_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

land.lhs.true:                                    ; preds = %if.end5
  %bInterfaceProtocol = getelementptr inbounds %struct.usb_interface_descriptor, ptr %19, i32 0, i32 7
  %22 = ptrtoint ptr %bInterfaceProtocol to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bInterfaceProtocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp12 = icmp eq i8 %23, 0
  br i1 %cmp12, label %if.end15, label %land.lhs.true.err_crit_edge

land.lhs.true.err_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end15:                                         ; preds = %land.lhs.true
  %driver_info = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 2
  %24 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_info, align 4
  %data16 = getelementptr inbounds %struct.driver_info, ptr %25, i32 0, i32 18
  %26 = ptrtoint ptr %data16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data16, align 4
  %call17 = tail call i32 @cdc_ncm_bind_common(ptr noundef %dev, ptr noundef %intf, i8 noundef zeroext %data_altsetting.0, i32 noundef %27) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end15.err_crit_edge

if.end15.err_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end20:                                         ; preds = %if.end15
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %mbim_desc = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %mbim_desc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mbim_desc, align 8
  %tobool22.not = icmp eq ptr %31, null
  br i1 %tobool22.not, label %if.end20.if.then33_crit_edge, label %land.lhs.true23

if.end20.if.then33_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

land.lhs.true23:                                  ; preds = %if.end20
  %status = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 15
  %32 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %status, align 4
  %tobool24.not = icmp eq ptr %33, null
  br i1 %tobool24.not, label %land.lhs.true23.if.then33_crit_edge, label %if.end31

land.lhs.true23.if.then33_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

if.end31:                                         ; preds = %land.lhs.true23
  %control = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %29, i32 0, i32 8
  %34 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %control, align 4
  %wMaxControlMessage = getelementptr inbounds %struct.usb_cdc_mbim_desc, ptr %31, i32 0, i32 4
  %36 = ptrtoint ptr %wMaxControlMessage to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %wMaxControlMessage, align 1
  %38 = tail call i16 @llvm.bswap.i16(i16 %37)
  %conv29 = zext i16 %38 to i32
  %call30 = tail call ptr @usb_cdc_wdm_register(ptr noundef %35, ptr noundef nonnull %33, i32 noundef %conv29, i32 noundef 1, ptr noundef nonnull @cdc_mbim_wdm_manage_power) #9
  %cmp.i = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end31.if.then33_crit_edge, label %if.end35

if.end31.if.then33_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

if.then33:                                        ; preds = %if.end31.if.then33_crit_edge, %land.lhs.true23.if.then33_crit_edge, %if.end20.if.then33_crit_edge
  %subdriver.068 = phi ptr [ %call30, %if.end31.if.then33_crit_edge ], [ inttoptr (i32 -19 to ptr), %land.lhs.true23.if.then33_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.end20.if.then33_crit_edge ]
  %39 = ptrtoint ptr %subdriver.068 to i32
  tail call void @cdc_ncm_unbind(ptr noundef %dev, ptr noundef %intf) #9
  br label %err

if.end35:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %status, align 4
  %subdriver37 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21, i32 2
  %41 = ptrtoint ptr %subdriver37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call30, ptr %subdriver37, align 4
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %42 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %net, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 14
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags, align 8
  %or = or i32 %45, 128
  store i32 %or, ptr %flags, align 8
  %46 = load ptr, ptr %net, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 23
  %47 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %features, align 16
  %or39 = or i64 %48, 640
  store i64 %or39, ptr %features, align 16
  %49 = load ptr, ptr %net, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 16
  %50 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @cdc_mbim_netdev_ops, ptr %netdev_ops, align 8
  br label %err

err:                                              ; preds = %if.end35, %if.then33, %if.end15.err_crit_edge, %land.lhs.true.err_crit_edge, %if.end5.err_crit_edge, %if.end.i.err_crit_edge, %if.then.err_crit_edge
  %ret.1 = phi i32 [ %call17, %if.end15.err_crit_edge ], [ %39, %if.then33 ], [ 0, %if.end35 ], [ -19, %land.lhs.true.err_crit_edge ], [ -19, %if.end5.err_crit_edge ], [ %call.i, %if.then.err_crit_edge ], [ -19, %if.end.i.err_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdc_mbim_unbind(ptr noundef %dev, ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %subdriver = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21, i32 2
  %2 = ptrtoint ptr %subdriver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdriver, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %disconnect = getelementptr inbounds %struct.usb_driver, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disconnect, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %control = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %control, align 4
  tail call void %5(ptr noundef %7) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %subdriver to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %subdriver, align 4
  tail call void @cdc_ncm_unbind(ptr noundef %dev, ptr noundef %intf) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdc_mbim_manage_power(ptr noundef %dev, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdc_mbim_manage_power.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdc_mbim_manage_power, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !68

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %intf = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 4
  %dev3 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  %pmcount = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pmcount, i32 noundef 4) #9
  %2 = ptrtoint ptr %pmcount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %pmcount, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdc_mbim_manage_power.__UNIQUE_ID_ddebug492, ptr noundef %dev3, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef %3, i32 noundef %on) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool5.not = icmp eq i32 %on, 0
  %pmcount10 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21, i32 1
  %call.i.i31 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pmcount10, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9
  tail call void @llvm.prefetch.p0(ptr %pmcount10, i32 1, i32 3, i32 1) #9
  br i1 %tobool5.not, label %land.lhs.true9.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pmcount10, ptr %pmcount10, i32 1, ptr elementtype(i32) %pmcount10) #9, !srcloc !69
  %asmresult.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i, 1
  br i1 %cmp, label %land.lhs.true.if.then12_crit_edge, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

land.lhs.true.if.then12_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

land.lhs.true9.critedge:                          ; preds = %do.end
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pmcount10, ptr %pmcount10, i32 1, ptr elementtype(i32) %pmcount10) #9, !srcloc !71
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true9.critedge.if.then12_crit_edge, label %land.lhs.true9.critedge.if.end20_crit_edge

land.lhs.true9.critedge.if.end20_crit_edge:       ; preds = %land.lhs.true9.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

land.lhs.true9.critedge.if.then12_crit_edge:      ; preds = %land.lhs.true9.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

if.then12:                                        ; preds = %land.lhs.true9.critedge.if.then12_crit_edge, %land.lhs.true.if.then12_crit_edge
  %intf13 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %intf13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf13, align 4
  %call14 = tail call i32 @usb_autopm_get_interface(ptr noundef %7) #9
  %8 = ptrtoint ptr %intf13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %intf13, align 4
  %needs_remote_wakeup = getelementptr inbounds %struct.usb_interface, ptr %9, i32 0, i32 6
  %10 = trunc i32 %on to i8
  %11 = ptrtoint ptr %needs_remote_wakeup to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %needs_remote_wakeup, align 8
  %bf.value = shl i8 %10, 4
  %bf.shl = and i8 %bf.value, 16
  %bf.clear = and i8 %bf.load, -17
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %needs_remote_wakeup, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool16.not = icmp eq i32 %call14, 0
  br i1 %tobool16.not, label %if.then17, label %if.then12.if.end20_crit_edge

if.then12.if.end20_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then17:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %intf13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %intf13, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %13) #9
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.then12.if.end20_crit_edge, %land.lhs.true9.critedge.if.end20_crit_edge, %land.lhs.true.if.end20_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdc_mbim_rx_fixup(ptr noundef %dev, ptr noundef %skb_in) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call = tail call i32 @cdc_ncm_rx_verify_nth16(ptr noundef %1, ptr noundef %skb_in) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %next_ndp.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

next_ndp.preheader:                               ; preds = %entry
  %data6 = getelementptr inbounds %struct.sk_buff, ptr %skb_in, i32 0, i32 19
  %flags = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21, i32 4
  %len46 = getelementptr inbounds %struct.sk_buff, ptr %skb_in, i32 0, i32 6
  %rx_max = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %1, i32 0, i32 22
  %net8.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %msg_enable54 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 20
  br label %next_ndp

next_ndp:                                         ; preds = %land.lhs.true91.next_ndp_crit_edge, %next_ndp.preheader
  %ndpoffset.0 = phi i32 [ %conv89, %land.lhs.true91.next_ndp_crit_edge ], [ %call, %next_ndp.preheader ]
  %loopcount.0 = phi i32 [ %dec, %land.lhs.true91.next_ndp_crit_edge ], [ 50, %next_ndp.preheader ]
  %payload.0 = phi i32 [ %payload.2, %land.lhs.true91.next_ndp_crit_edge ], [ 0, %next_ndp.preheader ]
  %call2 = tail call i32 @cdc_ncm_rx_verify_ndp16(ptr noundef %skb_in, i32 noundef %ndpoffset.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %next_ndp.cleanup_crit_edge, label %if.end5

next_ndp.cleanup_crit_edge:                       ; preds = %next_ndp
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %next_ndp
  %2 = ptrtoint ptr %data6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data6, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %ndpoffset.0
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %add.ptr, align 1
  %and = and i32 %5, -256
  %6 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %do.body [
    i32 1230000896, label %sw.bb
    i32 1146311424, label %sw.bb12
  ]

sw.bb:                                            ; preds = %if.end5
  %arrayidx = getelementptr i8, ptr %add.ptr, i32 3
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %8 to i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %land.lhs.true, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and8 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %spec.select = select i1 %tobool9.not, i16 0, i16 4094
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx14 = getelementptr i8, ptr %add.ptr, i32 3
  %11 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %12 to i16
  %add = or i16 %conv15, 256
  br label %sw.epilog

do.body:                                          ; preds = %if.end5
  %13 = ptrtoint ptr %msg_enable54 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_enable54, align 4
  %and17 = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.body.err_ndp_crit_edge, label %do.body20

do.body.err_ndp_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_ndp

do.body20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdc_mbim_rx_fixup.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdc_mbim_rx_fixup, %if.then25)) #9
          to label %err_ndp [label %if.then25], !srcloc !68

if.then25:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %net8.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net8.i.i, align 4
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %add.ptr, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @cdc_mbim_rx_fixup.__UNIQUE_ID_ddebug494, ptr noundef %16, ptr noundef nonnull @.str.8, i32 noundef %19) #9
  br label %err_ndp

sw.epilog:                                        ; preds = %sw.bb12, %land.lhs.true, %sw.bb.sw.epilog_crit_edge
  %tci.0 = phi i16 [ %add, %sw.bb12 ], [ %conv, %sw.bb.sw.epilog_crit_edge ], [ %spec.select, %land.lhs.true ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp32167.not = icmp eq i32 %call2, 0
  br i1 %cmp32167.not, label %sw.epilog.err_ndp_crit_edge, label %for.body.lr.ph

sw.epilog.err_ndp_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_ndp

for.body.lr.ph:                                   ; preds = %sw.epilog
  %dpe1631 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, ptr %add.ptr, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %tci.0)
  %cmp.i = icmp ult i16 %tci.0, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 4094, i16 %tci.0)
  %cmp3.i = icmp eq i16 %tci.0, 4094
  %or.cond.i = or i1 %cmp.i, %cmp3.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %tci.0)
  %tobool2.not.i.i = icmp eq i16 %tci.0, 0
  br label %for.body

for.body:                                         ; preds = %if.end86.for.body_crit_edge, %for.body.lr.ph
  %payload.1170 = phi i32 [ %payload.0, %for.body.lr.ph ], [ %add87, %if.end86.for.body_crit_edge ]
  %dpe16.0169 = phi ptr [ %dpe1631, %for.body.lr.ph ], [ %incdec.ptr, %if.end86.for.body_crit_edge ]
  %x.0168 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end86.for.body_crit_edge ]
  %20 = ptrtoint ptr %dpe16.0169 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %dpe16.0169, align 1
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  %conv34 = zext i16 %22 to i32
  %wDatagramLength = getelementptr inbounds %struct.usb_cdc_ncm_dpe16, ptr %dpe16.0169, i32 0, i32 1
  %23 = ptrtoint ptr %wDatagramLength to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %wDatagramLength, align 1
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  %conv35 = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp36 = icmp eq i16 %21, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp38 = icmp eq i16 %24, 0
  %or.cond = select i1 %cmp36, i1 true, i1 %cmp38
  br i1 %or.cond, label %for.body.err_ndp_crit_edge, label %if.end44

for.body.err_ndp_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_ndp

if.end44:                                         ; preds = %for.body
  %add45 = add nuw nsw i32 %conv35, %conv34
  %26 = ptrtoint ptr %len46 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len46, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add45, i32 %27)
  %cmp47 = icmp ugt i32 %add45, %27
  br i1 %cmp47, label %if.end44.do.body53_crit_edge, label %lor.lhs.false49

if.end44.do.body53_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body53

lor.lhs.false49:                                  ; preds = %if.end44
  %28 = ptrtoint ptr %rx_max to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %conv35)
  %cmp50 = icmp ult i32 %29, %conv35
  br i1 %cmp50, label %lor.lhs.false49.do.body53_crit_edge, label %if.else

lor.lhs.false49.do.body53_crit_edge:              ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body53

do.body53:                                        ; preds = %lor.lhs.false49.do.body53_crit_edge, %if.end44.do.body53_crit_edge
  %30 = ptrtoint ptr %msg_enable54 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %msg_enable54, align 4
  %and55 = and i32 %31, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %do.body53.err_ndp_crit_edge, label %do.body58

do.body53.err_ndp_crit_edge:                      ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_ndp

do.body58:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdc_mbim_rx_fixup.__UNIQUE_ID_ddebug495, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdc_mbim_rx_fixup, %if.then70)) #9
          to label %err_ndp [label %if.then70], !srcloc !68

if.then70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %net8.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %net8.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @cdc_mbim_rx_fixup.__UNIQUE_ID_ddebug495, ptr noundef %33, ptr noundef nonnull @.str.9, i32 noundef %x.0168, i32 noundef %conv34, i32 noundef %conv35, ptr noundef %skb_in) #9
  br label %err_ndp

if.else:                                          ; preds = %lor.lhs.false49
  %34 = ptrtoint ptr %data6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data6, align 4
  %add.ptr82 = getelementptr i8, ptr %35, i32 %conv34
  br i1 %or.cond.i, label %if.then.i, label %if.else.if.end12.i_crit_edge

if.else.if.end12.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %25)
  %cmp5.i = icmp ult i16 %25, 20
  br i1 %cmp5.i, label %if.then.i.cleanup_crit_edge, label %if.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  %36 = ptrtoint ptr %add.ptr82 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %add.ptr82, align 1
  %38 = and i8 %37, -16
  %39 = zext i8 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %38, label %if.end.i.cleanup_crit_edge [
    i8 64, label %if.end.i.if.end12.i_crit_edge
    i8 96, label %sw.bb9.i
  ]

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb9.i:                                         ; preds = %if.end.i
  %add.ptr.i.i = getelementptr %struct.ipv6hdr, ptr %add.ptr82, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 63, i16 %25)
  %cmp.i.i = icmp ugt i16 %25, 63
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %sw.bb9.i.if.end12.i_crit_edge

sw.bb9.i.if.end12.i_crit_edge:                    ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

land.lhs.true.i.i:                                ; preds = %sw.bb9.i
  %nexthdr.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr82, i32 0, i32 3
  %40 = ptrtoint ptr %nexthdr.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %nexthdr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %41)
  %cmp1.i.i = icmp eq i8 %41, 58
  br i1 %cmp1.i.i, label %land.lhs.true3.i.i, label %land.lhs.true.i.i.if.end12.i_crit_edge

land.lhs.true.i.i.if.end12.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %icmp6_code.i.i = getelementptr %struct.ipv6hdr, ptr %add.ptr82, i32 1, i32 1
  %42 = ptrtoint ptr %icmp6_code.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %icmp6_code.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp5.i.i = icmp eq i8 %43, 0
  br i1 %cmp5.i.i, label %is_neigh_solicit.exit.i, label %land.lhs.true3.i.i.if.end12.i_crit_edge

land.lhs.true3.i.i.if.end12.i_crit_edge:          ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

is_neigh_solicit.exit.i:                          ; preds = %land.lhs.true3.i.i
  %44 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -121, i8 %45)
  %cmp9.i.i = icmp eq i8 %45, -121
  br i1 %cmp9.i.i, label %if.then10.i, label %is_neigh_solicit.exit.i.if.end12.i_crit_edge

is_neigh_solicit.exit.i.if.end12.i_crit_edge:     ; preds = %is_neigh_solicit.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.then10.i:                                      ; preds = %is_neigh_solicit.exit.i
  %daddr.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr82, i32 0, i32 6
  %46 = ptrtoint ptr %daddr.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %daddr.i.i, align 4
  %xor.i.i.i = xor i32 %47, -16646144
  %arrayidx2.i.i.i = getelementptr %struct.ipv6hdr, ptr %add.ptr82, i32 0, i32 6, i32 0, i32 0, i32 1
  %48 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx2.i.i.i, align 4
  %or.i.i.i = or i32 %xor.i.i.i, %49
  %arrayidx4.i.i.i = getelementptr %struct.ipv6hdr, ptr %add.ptr82, i32 0, i32 6, i32 0, i32 0, i32 2
  %50 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx4.i.i.i, align 4
  %xor5.i.i.i = xor i32 %51, 1
  %or6.i.i.i = or i32 %or.i.i.i, %xor5.i.i.i
  %arrayidx8.i.i.i = getelementptr %struct.ipv6hdr, ptr %add.ptr82, i32 0, i32 6, i32 0, i32 0, i32 3
  %52 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx8.i.i.i, align 4
  %54 = xor i8 %53, -1
  %xor9.i.i.i = zext i8 %54 to i32
  %or10.i.i.i = or i32 %or6.i.i.i, %xor9.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or10.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or10.i.i.i, 0
  br i1 %cmp.i.i.i, label %lor.lhs.false.i.i, label %if.then10.i.if.end12.i_crit_edge

if.then10.i.if.end12.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

lor.lhs.false.i.i:                                ; preds = %if.then10.i
  %saddr.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr82, i32 0, i32 5
  %call.i33.i.i = tail call i32 @__ipv6_addr_type(ptr noundef %saddr.i.i) #9
  %and.i.i = and i32 %call.i33.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i.if.end12.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.if.end12.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %55 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i.i.i.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %58, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !73
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i.i, label %if.end.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.i.rcu_read_lock.exit.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #9
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end.i.i.rcu_read_lock.exit.i.i_crit_edge
  %59 = ptrtoint ptr %net8.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %net8.i.i, align 4
  br i1 %tobool2.not.i.i, label %if.end9.i.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %rcu_read_lock.exit.i.i
  %call4.i.i = tail call ptr @__vlan_find_dev_deep_rcu(ptr noundef %60, i16 noundef zeroext -32512, i16 noundef zeroext %tci.0) #9
  %tobool5.not.i.i = icmp eq ptr %call4.i.i, null
  br i1 %tobool5.not.i.i, label %if.then6.i.i, label %if.then3.i.i.do.body1.i.i.i_crit_edge

if.then3.i.i.do.body1.i.i.i_crit_edge:            ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1.i.i.i

if.then6.i.i:                                     ; preds = %if.then3.i.i
  %call.i34.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i34.i.i, label %if.then6.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i37.i.i

if.then6.i.i.rcu_read_unlock.exit.i.i_crit_edge:  ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i37.i.i:                            ; preds = %if.then6.i.i
  %call1.i35.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i35.i.i)
  %tobool.not.i36.i.i = icmp eq i32 %call1.i35.i.i, 0
  br i1 %tobool.not.i36.i.i, label %land.lhs.true.i37.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i39.i.i

land.lhs.true.i37.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i39.i.i:                           ; preds = %land.lhs.true.i37.i.i
  %.b4.i38.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i38.i.i, label %land.lhs.true2.i39.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i40.i.i

land.lhs.true2.i39.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i39.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i.i

if.then.i40.i.i:                                  ; preds = %land.lhs.true2.i39.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #9
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i40.i.i, %land.lhs.true2.i39.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i37.i.i.rcu_read_unlock.exit.i.i_crit_edge, %if.then6.i.i.rcu_read_unlock.exit.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !74
  %61 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i.i.i41.i.i = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i.i.i41.i.i to ptr
  %preempt_count.i.i.i.i42.i.i = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %preempt_count.i.i.i.i42.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %preempt_count.i.i.i.i42.i.i, align 4
  %sub.i.i.i.i.i = add i32 %64, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i42.i.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %if.end12.i

if.end9.i.i:                                      ; preds = %rcu_read_lock.exit.i.i
  %tobool.not.i43.i.i = icmp eq ptr %60, null
  br i1 %tobool.not.i43.i.i, label %if.end9.i.i.dev_hold.exit.i.i_crit_edge, label %if.end9.i.i.do.body1.i.i.i_crit_edge

if.end9.i.i.do.body1.i.i.i_crit_edge:             ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1.i.i.i

if.end9.i.i.dev_hold.exit.i.i_crit_edge:          ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_hold.exit.i.i

do.body1.i.i.i:                                   ; preds = %if.end9.i.i.do.body1.i.i.i_crit_edge, %if.then3.i.i.do.body1.i.i.i_crit_edge
  %netdev.077.i.i = phi ptr [ %60, %if.end9.i.i.do.body1.i.i.i_crit_edge ], [ %call4.i.i, %if.then3.i.i.do.body1.i.i.i_crit_edge ]
  %65 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !75
  %pcpu_refcnt.i.i.i = getelementptr inbounds %struct.net_device, ptr %netdev.077.i.i, i32 0, i32 118
  %66 = ptrtoint ptr %pcpu_refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pcpu_refcnt.i.i.i, align 4
  %68 = ptrtoint ptr %67 to i32
  %69 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i.i = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %72
  %73 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %74, %68
  %75 = inttoptr i32 %add.i.i.i to ptr
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %75, align 4
  %add13.i.i.i = add i32 %77, 1
  store i32 %add13.i.i.i, ptr %75, align 4
  %78 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !76
  %and.i.i.i.i.i = and i32 %78, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %if.then28.i.i.i, label %do.body1.i.i.i.do.end30.i.i.i_crit_edge, !prof !77

do.body1.i.i.i.do.end30.i.i.i_crit_edge:          ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30.i.i.i

if.then28.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end30.i.i.i

do.end30.i.i.i:                                   ; preds = %if.then28.i.i.i, %do.body1.i.i.i.do.end30.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %65) #9, !srcloc !78
  br label %dev_hold.exit.i.i

dev_hold.exit.i.i:                                ; preds = %do.end30.i.i.i, %if.end9.i.i.dev_hold.exit.i.i_crit_edge
  %tobool.not.i4381.i.i = phi i1 [ true, %if.end9.i.i.dev_hold.exit.i.i_crit_edge ], [ false, %do.end30.i.i.i ]
  %netdev.078.i.i = phi ptr [ null, %if.end9.i.i.dev_hold.exit.i.i_crit_edge ], [ %netdev.077.i.i, %do.end30.i.i.i ]
  %call.i44.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i44.i.i, label %dev_hold.exit.i.i.rcu_read_unlock.exit54.i.i_crit_edge, label %land.lhs.true.i47.i.i

dev_hold.exit.i.i.rcu_read_unlock.exit54.i.i_crit_edge: ; preds = %dev_hold.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit54.i.i

land.lhs.true.i47.i.i:                            ; preds = %dev_hold.exit.i.i
  %call1.i45.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i45.i.i)
  %tobool.not.i46.i.i = icmp eq i32 %call1.i45.i.i, 0
  br i1 %tobool.not.i46.i.i, label %land.lhs.true.i47.i.i.rcu_read_unlock.exit54.i.i_crit_edge, label %land.lhs.true2.i49.i.i

land.lhs.true.i47.i.i.rcu_read_unlock.exit54.i.i_crit_edge: ; preds = %land.lhs.true.i47.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit54.i.i

land.lhs.true2.i49.i.i:                           ; preds = %land.lhs.true.i47.i.i
  %.b4.i48.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i48.i.i, label %land.lhs.true2.i49.i.i.rcu_read_unlock.exit54.i.i_crit_edge, label %if.then.i50.i.i

land.lhs.true2.i49.i.i.rcu_read_unlock.exit54.i.i_crit_edge: ; preds = %land.lhs.true2.i49.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit54.i.i

if.then.i50.i.i:                                  ; preds = %land.lhs.true2.i49.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #9
  br label %rcu_read_unlock.exit54.i.i

rcu_read_unlock.exit54.i.i:                       ; preds = %if.then.i50.i.i, %land.lhs.true2.i49.i.i.rcu_read_unlock.exit54.i.i_crit_edge, %land.lhs.true.i47.i.i.rcu_read_unlock.exit54.i.i_crit_edge, %dev_hold.exit.i.i.rcu_read_unlock.exit54.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !74
  %79 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i.i.i51.i.i = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i.i.i.i51.i.i to ptr
  %preempt_count.i.i.i.i52.i.i = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %preempt_count.i.i.i.i52.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %preempt_count.i.i.i.i52.i.i, align 4
  %sub.i.i.i53.i.i = add i32 %82, -1
  store volatile i32 %sub.i.i.i53.i.i, ptr %preempt_count.i.i.i.i52.i.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %83 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i.i.i.i.i.i = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %86, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !73
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i.i.i, label %rcu_read_unlock.exit54.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

rcu_read_unlock.exit54.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %rcu_read_unlock.exit54.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %rcu_read_unlock.exit54.i.i
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b4.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i, label %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #9
  br label %rcu_read_lock.exit.i.i.i

rcu_read_lock.exit.i.i.i:                         ; preds = %if.then.i.i.i.i, %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %rcu_read_unlock.exit54.i.i.rcu_read_lock.exit.i.i.i_crit_edge
  %ip6_ptr.i.i.i = getelementptr inbounds %struct.net_device, ptr %netdev.078.i.i, i32 0, i32 80
  %87 = ptrtoint ptr %ip6_ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile ptr, ptr %ip6_ptr.i.i.i, align 8
  %call.i55.i.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55.i.i)
  %tobool.not.i56.i.i = icmp eq i32 %call.i55.i.i, 0
  br i1 %tobool.not.i56.i.i, label %land.lhs.true.i57.i.i, label %rcu_read_lock.exit.i.i.i.do.end7.i.i.i_crit_edge

rcu_read_lock.exit.i.i.i.do.end7.i.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i.i.i

land.lhs.true.i57.i.i:                            ; preds = %rcu_read_lock.exit.i.i.i
  %call2.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i57.i.i.do.end7.i.i.i_crit_edge, label %land.lhs.true4.i.i.i

land.lhs.true.i57.i.i.do.end7.i.i.i_crit_edge:    ; preds = %land.lhs.true.i57.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i.i.i

land.lhs.true4.i.i.i:                             ; preds = %land.lhs.true.i57.i.i
  %.b14.i.i.i = load i1, ptr @in6_dev_get.__warned, align 1
  br i1 %.b14.i.i.i, label %land.lhs.true4.i.i.i.do.end7.i.i.i_crit_edge, label %if.then.i58.i.i

land.lhs.true4.i.i.i.do.end7.i.i.i_crit_edge:     ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i.i.i

if.then.i58.i.i:                                  ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 359, ptr noundef nonnull @.str.14) #9
  br label %do.end7.i.i.i

do.end7.i.i.i:                                    ; preds = %if.then.i58.i.i, %land.lhs.true4.i.i.i.do.end7.i.i.i_crit_edge, %land.lhs.true.i57.i.i.do.end7.i.i.i_crit_edge, %rcu_read_lock.exit.i.i.i.do.end7.i.i.i_crit_edge
  %tobool9.not.i.i.i = icmp eq ptr %88, null
  br i1 %tobool9.not.i.i.i, label %do.end7.i.i.i.if.end11.i.i.i_crit_edge, label %if.then10.i.i.i

do.end7.i.i.i.if.end11.i.i.i_crit_edge:           ; preds = %do.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i.i.i

if.then10.i.i.i:                                  ; preds = %do.end7.i.i.i
  %refcnt.i.i.i = getelementptr inbounds %struct.inet6_dev, ptr %88, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i.i, i32 1, i32 3, i32 1) #9
  %89 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i.i, ptr %refcnt.i.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i.i) #9, !srcloc !79
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %89, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then10.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !77

if.then10.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then10.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then10.i.i.i
  %add.i.i.i15.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %90 = or i32 %add.i.i.i15.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %90)
  %.not.i.i.i.i.i.i = icmp sgt i32 %90, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.if.end11.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !80

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.if.end11.i.i.i_crit_edge:     ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i.i.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then10.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then10.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #9
  br label %if.end11.i.i.i

if.end11.i.i.i:                                   ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.if.end11.i.i.i_crit_edge, %do.end7.i.i.i.if.end11.i.i.i_crit_edge
  %call.i16.i.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i16.i.i.i, label %if.end11.i.i.i.in6_dev_get.exit.i.i_crit_edge, label %land.lhs.true.i19.i.i.i

if.end11.i.i.i.in6_dev_get.exit.i.i_crit_edge:    ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %in6_dev_get.exit.i.i

land.lhs.true.i19.i.i.i:                          ; preds = %if.end11.i.i.i
  %call1.i17.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17.i.i.i)
  %tobool.not.i18.i.i.i = icmp eq i32 %call1.i17.i.i.i, 0
  br i1 %tobool.not.i18.i.i.i, label %land.lhs.true.i19.i.i.i.in6_dev_get.exit.i.i_crit_edge, label %land.lhs.true2.i21.i.i.i

land.lhs.true.i19.i.i.i.in6_dev_get.exit.i.i_crit_edge: ; preds = %land.lhs.true.i19.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %in6_dev_get.exit.i.i

land.lhs.true2.i21.i.i.i:                         ; preds = %land.lhs.true.i19.i.i.i
  %.b4.i20.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20.i.i.i, label %land.lhs.true2.i21.i.i.i.in6_dev_get.exit.i.i_crit_edge, label %if.then.i22.i.i.i

land.lhs.true2.i21.i.i.i.in6_dev_get.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i21.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %in6_dev_get.exit.i.i

if.then.i22.i.i.i:                                ; preds = %land.lhs.true2.i21.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #9
  br label %in6_dev_get.exit.i.i

in6_dev_get.exit.i.i:                             ; preds = %if.then.i22.i.i.i, %land.lhs.true2.i21.i.i.i.in6_dev_get.exit.i.i_crit_edge, %land.lhs.true.i19.i.i.i.in6_dev_get.exit.i.i_crit_edge, %if.end11.i.i.i.in6_dev_get.exit.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !74
  %91 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i.i.i.i23.i.i.i = and i32 %91, -16384
  %92 = inttoptr i32 %and.i.i.i.i.i23.i.i.i to ptr
  %preempt_count.i.i.i.i24.i.i.i = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %preempt_count.i.i.i.i24.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %preempt_count.i.i.i.i24.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %94, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i24.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br i1 %tobool9.not.i.i.i, label %in6_dev_get.exit.i.i.out.i.i_crit_edge, label %if.end13.i.i

in6_dev_get.exit.i.i.out.i.i_crit_edge:           ; preds = %in6_dev_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i.i

if.end13.i.i:                                     ; preds = %in6_dev_get.exit.i.i
  %cnf.i.i = getelementptr inbounds %struct.inet6_dev, ptr %88, i32 0, i32 32
  %95 = ptrtoint ptr %cnf.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %cnf.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool14.i.i = icmp ne i32 %96, 0
  %refcnt.i59.i.i = getelementptr inbounds %struct.inet6_dev, ptr %88, i32 0, i32 25
  %call.i.i.i.i.i.i60.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i59.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !81
  tail call void @llvm.prefetch.p0(ptr %refcnt.i59.i.i, i32 1, i32 3, i32 1) #9
  %97 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i59.i.i, ptr %refcnt.i59.i.i, i32 1, ptr elementtype(i32) %refcnt.i59.i.i) #9, !srcloc !82
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %97, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i62.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i61.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i61.i.i, label %if.end5.i.i.i.i.i.i.in6_dev_put.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !80

if.end5.i.i.i.i.i.i.in6_dev_put.exit.i.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %in6_dev_put.exit.i.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i59.i.i, i32 noundef 3) #9
  br label %in6_dev_put.exit.i.i

if.then.i62.i.i:                                  ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @in6_dev_finish_destroy(ptr noundef nonnull %88) #9
  br label %in6_dev_put.exit.i.i

in6_dev_put.exit.i.i:                             ; preds = %if.then.i62.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.in6_dev_put.exit.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipv6_stub to i32))
  %98 = load ptr, ptr @ipv6_stub, align 4
  %ndisc_send_na.i.i = getelementptr inbounds %struct.ipv6_stub, ptr %98, i32 0, i32 16
  %99 = ptrtoint ptr %ndisc_send_na.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ndisc_send_na.i.i, align 4
  %target.i.i = getelementptr %struct.ipv6hdr, ptr %add.ptr82, i32 1, i32 5
  tail call void %100(ptr noundef %netdev.078.i.i, ptr noundef %saddr.i.i, ptr noundef %target.i.i, i1 noundef zeroext %tobool14.i.i, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true) #9
  br label %out.i.i

out.i.i:                                          ; preds = %in6_dev_put.exit.i.i, %in6_dev_get.exit.i.i.out.i.i_crit_edge
  br i1 %tobool.not.i4381.i.i, label %out.i.i.if.end12.i_crit_edge, label %do.body1.i72.i.i

out.i.i.if.end12.i_crit_edge:                     ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

do.body1.i72.i.i:                                 ; preds = %out.i.i
  %101 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !75
  %pcpu_refcnt.i64.i.i = getelementptr inbounds %struct.net_device, ptr %netdev.078.i.i, i32 0, i32 118
  %102 = ptrtoint ptr %pcpu_refcnt.i64.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pcpu_refcnt.i64.i.i, align 4
  %104 = ptrtoint ptr %103 to i32
  %105 = tail call i32 @llvm.read_register.i32(metadata !58) #9
  %and.i.i65.i.i = and i32 %105, -16384
  %106 = inttoptr i32 %and.i.i65.i.i to ptr
  %cpu.i66.i.i = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 3
  %107 = ptrtoint ptr %cpu.i66.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %cpu.i66.i.i, align 4
  %arrayidx.i67.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %108
  %109 = ptrtoint ptr %arrayidx.i67.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx.i67.i.i, align 4
  %add.i68.i.i = add i32 %110, %104
  %111 = inttoptr i32 %add.i68.i.i to ptr
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %111, align 4
  %add13.i69.i.i = add i32 %113, -1
  store i32 %add13.i69.i.i, ptr %111, align 4
  %114 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !76
  %and.i.i.i70.i.i = and i32 %114, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i70.i.i)
  %tobool24.not.i71.i.i = icmp eq i32 %and.i.i.i70.i.i, 0
  br i1 %tobool24.not.i71.i.i, label %if.then28.i73.i.i, label %do.body1.i72.i.i.do.end30.i74.i.i_crit_edge, !prof !77

do.body1.i72.i.i.do.end30.i74.i.i_crit_edge:      ; preds = %do.body1.i72.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30.i74.i.i

if.then28.i73.i.i:                                ; preds = %do.body1.i72.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end30.i74.i.i

do.end30.i74.i.i:                                 ; preds = %if.then28.i73.i.i, %do.body1.i72.i.i.do.end30.i74.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %101) #9, !srcloc !78
  br label %if.end12.i

if.end12.i:                                       ; preds = %do.end30.i74.i.i, %out.i.i.if.end12.i_crit_edge, %rcu_read_unlock.exit.i.i, %lor.lhs.false.i.i.if.end12.i_crit_edge, %if.then10.i.if.end12.i_crit_edge, %is_neigh_solicit.exit.i.if.end12.i_crit_edge, %land.lhs.true3.i.i.if.end12.i_crit_edge, %land.lhs.true.i.i.if.end12.i_crit_edge, %sw.bb9.i.if.end12.i_crit_edge, %if.end.i.if.end12.i_crit_edge, %if.else.if.end12.i_crit_edge
  %proto.0.i = phi i16 [ 1, %if.else.if.end12.i_crit_edge ], [ 2048, %if.end.i.if.end12.i_crit_edge ], [ -31011, %is_neigh_solicit.exit.i.if.end12.i_crit_edge ], [ -31011, %if.then10.i.if.end12.i_crit_edge ], [ -31011, %lor.lhs.false.i.i.if.end12.i_crit_edge ], [ -31011, %rcu_read_unlock.exit.i.i ], [ -31011, %out.i.i.if.end12.i_crit_edge ], [ -31011, %do.end30.i74.i.i ], [ -31011, %land.lhs.true3.i.i.if.end12.i_crit_edge ], [ -31011, %land.lhs.true.i.i.if.end12.i_crit_edge ], [ -31011, %sw.bb9.i.if.end12.i_crit_edge ]
  %115 = ptrtoint ptr %net8.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %net8.i.i, align 4
  %add.i.i46.i = add nuw nsw i32 %conv35, 16
  %call.i.i47.i = tail call ptr @__netdev_alloc_skb(ptr noundef %116, i32 noundef %add.i.i46.i, i32 noundef 2592) #9
  %tobool.not.i.i48.i = icmp eq ptr %call.i.i47.i, null
  br i1 %tobool.not.i.i48.i, label %if.end12.i.cleanup_crit_edge, label %if.end15.i

if.end12.i.cleanup_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15.i:                                       ; preds = %if.end12.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i47.i, i32 0, i32 19
  %117 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %118, i32 2
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i47.i, i32 0, i32 16
  %119 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %120, i32 2
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %call16.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i47.i, i32 noundef 14) #9
  %121 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %data.i.i.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i47.i, i32 0, i32 18
  %123 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %122 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %124 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i47.i, i32 0, i32 15, i32 0, i32 21
  %125 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %conv.i.i, ptr %mac_header.i.i, align 2
  %conv.i.i.i = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i.i = getelementptr i8, ptr %124, i32 %conv.i.i.i
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  %126 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_storeN_noabort(i32 %126, i32 2)
  store i16 %proto.0.i, ptr %h_proto.i, align 1
  %127 = load ptr, ptr %head.i.i, align 8
  %128 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i52.i = zext i16 %128 to i32
  %add.ptr.i.i53.i = getelementptr i8, ptr %127, i32 %conv.i.i52.i
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i53.i, i32 0, i32 1
  %129 = call ptr @memset(ptr %h_source.i, i32 0, i32 6)
  %130 = load ptr, ptr %head.i.i, align 8
  %131 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i56.i = zext i16 %131 to i32
  %add.ptr.i.i57.i = getelementptr i8, ptr %130, i32 %conv.i.i56.i
  %132 = ptrtoint ptr %net8.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %net8.i.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %133, i32 0, i32 86
  %134 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev_addr.i, align 64
  %136 = call ptr @memcpy(ptr %add.ptr.i.i57.i, ptr %135, i32 6)
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i47.i, i32 noundef %conv35) #9
  %137 = call ptr @memcpy(ptr %call.i.i, ptr %add.ptr82, i32 %conv35)
  br i1 %tobool2.not.i.i, label %if.end15.i.if.end86_crit_edge, label %if.then24.i

if.end15.i.if.end86_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86

if.then24.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  %vlan_proto1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i47.i, i32 0, i32 15, i32 0, i32 9
  %138 = ptrtoint ptr %vlan_proto1.i.i to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 -32512, ptr %vlan_proto1.i.i, align 8
  %vlan_tci2.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i47.i, i32 0, i32 15, i32 0, i32 10
  %139 = ptrtoint ptr %vlan_tci2.i.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %tci.0, ptr %vlan_tci2.i.i, align 2
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i47.i, i32 0, i32 15, i32 0, i32 3
  %140 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %140, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i.i, align 2
  %bf.set.i.i = or i32 %bf.load.i.i, -2147483648
  store i32 %bf.set.i.i, ptr %vlan_present.i.i, align 2
  br label %if.end86

if.end86:                                         ; preds = %if.then24.i, %if.end15.i.if.end86_crit_edge
  tail call void @usbnet_skb_return(ptr noundef %dev, ptr noundef nonnull %call.i.i47.i) #9
  %add87 = add i32 %payload.1170, %conv35
  %inc = add nuw nsw i32 %x.0168, 1
  %incdec.ptr = getelementptr %struct.usb_cdc_ncm_dpe16, ptr %dpe16.0169, i32 1
  %exitcond.not = icmp eq i32 %inc, %call2
  br i1 %exitcond.not, label %if.end86.err_ndp_crit_edge, label %if.end86.for.body_crit_edge

if.end86.for.body_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end86.err_ndp_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_ndp

err_ndp:                                          ; preds = %if.end86.err_ndp_crit_edge, %if.then70, %do.body58, %do.body53.err_ndp_crit_edge, %for.body.err_ndp_crit_edge, %sw.epilog.err_ndp_crit_edge, %if.then25, %do.body20, %do.body.err_ndp_crit_edge
  %payload.2 = phi i32 [ %payload.0, %if.then25 ], [ %payload.0, %do.body.err_ndp_crit_edge ], [ %payload.1170, %if.then70 ], [ %payload.1170, %do.body53.err_ndp_crit_edge ], [ %payload.0, %do.body20 ], [ %payload.1170, %do.body58 ], [ %payload.0, %sw.epilog.err_ndp_crit_edge ], [ %add87, %if.end86.err_ndp_crit_edge ], [ %payload.1170, %for.body.err_ndp_crit_edge ]
  %wNextNdpIndex = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, ptr %add.ptr, i32 0, i32 2
  %141 = ptrtoint ptr %wNextNdpIndex to i32
  call void @__asan_loadN_noabort(i32 %141, i32 2)
  %142 = load i16, ptr %wNextNdpIndex, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %142)
  %tobool90.not = icmp eq i16 %142, 0
  br i1 %tobool90.not, label %err_ndp.if.end94_crit_edge, label %land.lhs.true91

err_ndp.if.end94_crit_edge:                       ; preds = %err_ndp
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

land.lhs.true91:                                  ; preds = %err_ndp
  %143 = tail call i16 @llvm.bswap.i16(i16 %142)
  %conv89 = zext i16 %143 to i32
  %dec = add nsw i32 %loopcount.0, -1
  %tobool92.not = icmp eq i32 %loopcount.0, 0
  br i1 %tobool92.not, label %land.lhs.true91.if.end94_crit_edge, label %land.lhs.true91.next_ndp_crit_edge

land.lhs.true91.next_ndp_crit_edge:               ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #11
  br label %next_ndp

land.lhs.true91.if.end94_crit_edge:               ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

if.end94:                                         ; preds = %land.lhs.true91.if.end94_crit_edge, %err_ndp.if.end94_crit_edge
  %144 = ptrtoint ptr %len46 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %len46, align 4
  %sub = sub i32 %145, %payload.2
  %conv96 = zext i32 %sub to i64
  %rx_overhead = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %1, i32 0, i32 42
  %146 = ptrtoint ptr %rx_overhead to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %rx_overhead, align 8
  %add97 = add i64 %147, %conv96
  store i64 %add97, ptr %rx_overhead, align 8
  %rx_ntbs = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %1, i32 0, i32 43
  %148 = ptrtoint ptr %rx_ntbs to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %rx_ntbs, align 8
  %inc98 = add i64 %149, 1
  store i64 %inc98, ptr %rx_ntbs, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %if.end12.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %next_ndp.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end94 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then.i.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.end12.i.cleanup_crit_edge ], [ 0, %next_ndp.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cdc_mbim_tx_fixup(ptr noundef %dev, ptr noundef %skb, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %1, null
  %tobool52.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %error, label %if.end

if.end:                                           ; preds = %entry
  br i1 %tobool52.not, label %if.end.if.end49_crit_edge, label %if.then3

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then3:                                         ; preds = %if.end
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %3)
  %cmp = icmp ult i32 %3, 15
  br i1 %cmp, label %if.then3.if.then53_crit_edge, label %if.end5

if.then3.if.then53_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53

if.end5:                                          ; preds = %if.then3
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %8 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %9 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %features.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 23
  %12 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %features.i, align 16
  %and.i = and i64 %13, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end5
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %14 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i32 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.then.i.land.lhs.true_crit_edge, label %if.then.i.i

if.then.i.land.lhs.true_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %vlan_tci1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  br label %vlan_get_tag.exit

if.else.i:                                        ; preds = %if.end5
  %h_vlan_proto.i.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %h_vlan_proto.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %h_vlan_proto.i.i, align 2
  %17 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.17)
  switch i16 %16, label %if.else.i.land.lhs.true_crit_edge [
    i16 -30552, label %if.else.i.if.end.i.i_crit_edge
    i16 -32512, label %if.else.i.if.end.i.i_crit_edge107
  ]

if.else.i.if.end.i.i_crit_edge107:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.else.i.if.end.i.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.else.i.land.lhs.true_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.end.i.i:                                       ; preds = %if.else.i.if.end.i.i_crit_edge, %if.else.i.if.end.i.i_crit_edge107
  %h_vlan_TCI.i.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %5, i32 0, i32 2
  br label %vlan_get_tag.exit

vlan_get_tag.exit:                                ; preds = %if.end.i.i, %if.then.i.i
  %vlan_tci1.i.sink.i = phi ptr [ %vlan_tci1.i.i, %if.then.i.i ], [ %h_vlan_TCI.i.i, %if.end.i.i ]
  %18 = ptrtoint ptr %vlan_tci1.i.sink.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vlan_tci1.i.sink.i, align 2
  br label %if.else

land.lhs.true:                                    ; preds = %if.else.i.land.lhs.true_crit_edge, %if.then.i.land.lhs.true_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %3)
  %cmp8 = icmp ugt i32 %3, 18
  br i1 %cmp8, label %land.lhs.true9, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true9:                                   ; preds = %land.lhs.true
  %h_vlan_proto.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %5, i32 0, i32 1
  %20 = ptrtoint ptr %h_vlan_proto.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %h_vlan_proto.i, align 2
  %22 = zext i16 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.18)
  switch i16 %21, label %land.lhs.true9.if.else_crit_edge [
    i16 -30552, label %land.lhs.true9.if.then12_crit_edge
    i16 -32512, label %land.lhs.true9.if.then12_crit_edge108
  ]

land.lhs.true9.if.then12_crit_edge108:            ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

land.lhs.true9.if.then12_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

land.lhs.true9.if.else_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then12:                                        ; preds = %land.lhs.true9.if.then12_crit_edge, %land.lhs.true9.if.then12_crit_edge108
  %h_vlan_TCI.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %5, i32 0, i32 2
  %23 = ptrtoint ptr %h_vlan_TCI.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %h_vlan_TCI.i, align 2
  %conv.i.i = and i32 %sub.ptr.sub.i, 65535
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %conv.i.i
  %h_vlan_encapsulated_proto = getelementptr inbounds %struct.vlan_ethhdr, ptr %add.ptr.i.i, i32 0, i32 3
  br label %if.end20

if.else:                                          ; preds = %land.lhs.true9.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %vlan_get_tag.exit
  %tci.2 = phi i16 [ 0, %land.lhs.true.if.else_crit_edge ], [ %19, %vlan_get_tag.exit ], [ 0, %land.lhs.true9.if.else_crit_edge ]
  %conv.i.i86 = and i32 %sub.ptr.sub.i, 65535
  %add.ptr.i.i87 = getelementptr i8, ptr %7, i32 %conv.i.i86
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i87, i32 0, i32 2
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then12
  %.sink106.in = phi ptr [ %h_proto, %if.else ], [ %h_vlan_encapsulated_proto, %if.then12 ]
  %.sink = phi i32 [ 14, %if.else ], [ 18, %if.then12 ]
  %tci.3 = phi i16 [ %tci.2, %if.else ], [ %24, %if.then12 ]
  %25 = ptrtoint ptr %.sink106.in to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %.sink106 = load i16, ptr %.sink106.in, align 1
  %call19 = tail call ptr @skb_pull(ptr noundef nonnull %skb, i32 noundef %.sink) #9
  %flags21 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21, i32 4
  %26 = ptrtoint ptr %flags21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags21, align 4
  %and = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.end20.if.end31_crit_edge, label %if.then23

if.end20.if.end31_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then23:                                        ; preds = %if.end20
  %28 = zext i16 %tci.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.19)
  switch i16 %tci.3, label %if.then23.if.end31_crit_edge [
    i16 0, label %if.then23.if.then53_crit_edge
    i16 4094, label %if.then23.sw.bb_crit_edge
  ]

if.then23.sw.bb_crit_edge:                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.then23.if.then53_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53

if.then23.if.end31_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end31:                                         ; preds = %if.then23.if.end31_crit_edge, %if.end20.if.end31_crit_edge
  %conv32 = zext i16 %tci.3 to i32
  %and33 = and i32 %conv32, 3840
  %29 = zext i32 %and33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %and33, label %do.body [
    i32 0, label %if.end31.sw.bb_crit_edge
    i32 256, label %sw.bb38
  ]

if.end31.sw.bb_crit_edge:                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %if.end31.sw.bb_crit_edge, %if.then23.sw.bb_crit_edge
  %tci.4103 = phi i16 [ %tci.3, %if.end31.sw.bb_crit_edge ], [ 0, %if.then23.sw.bb_crit_edge ]
  %30 = zext i16 %.sink106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.21)
  switch i16 %.sink106, label %sw.bb.if.then53_crit_edge [
    i16 -31011, label %sw.bb.if.end49_crit_edge
    i16 2048, label %sw.bb.if.end49_crit_edge109
  ]

sw.bb.if.end49_crit_edge109:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

sw.bb.if.end49_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

sw.bb.if.then53_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53

sw.bb38:                                          ; preds = %if.end31
  %31 = zext i16 %.sink106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.22)
  switch i16 %.sink106, label %sw.bb38.if.end49_crit_edge [
    i16 -31011, label %sw.bb38.if.then53_crit_edge
    i16 2048, label %sw.bb38.if.then53_crit_edge110
  ]

sw.bb38.if.then53_crit_edge110:                   ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53

sw.bb38.if.then53_crit_edge:                      ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53

sw.bb38.if.end49_crit_edge:                       ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

do.body:                                          ; preds = %if.end31
  %msg_enable = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 20
  %32 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %msg_enable, align 4
  %and44 = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %do.body.if.then53_crit_edge, label %if.then46

do.body.if.then53_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53

if.then46:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %34 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %35, ptr noundef nonnull @.str.15, i32 noundef %conv32) #12
  br label %if.then53

if.end49:                                         ; preds = %sw.bb38.if.end49_crit_edge, %sw.bb.if.end49_crit_edge, %sw.bb.if.end49_crit_edge109, %if.end.if.end49_crit_edge
  %sign.sroa.0.sroa.0.0 = phi i32 [ 1230000896, %if.end.if.end49_crit_edge ], [ 1230000896, %sw.bb.if.end49_crit_edge ], [ 1146311424, %sw.bb38.if.end49_crit_edge ], [ 1230000896, %sw.bb.if.end49_crit_edge109 ]
  %sign.sroa.6.0.shrunk = phi i16 [ 0, %if.end.if.end49_crit_edge ], [ %tci.4103, %sw.bb.if.end49_crit_edge ], [ %tci.3, %sw.bb38.if.end49_crit_edge ], [ %tci.4103, %sw.bb.if.end49_crit_edge109 ]
  %mtx = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %1, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %mtx) #9
  %36 = and i16 %sign.sroa.6.0.shrunk, 255
  %sign.sroa.0.0.insert.mask = zext i16 %36 to i32
  %sign.sroa.0.0.insert.insert = or i32 %sign.sroa.0.sroa.0.0, %sign.sroa.0.0.insert.mask
  %call50 = tail call ptr @cdc_ncm_fill_tx_frame(ptr noundef %dev, ptr noundef %skb, i32 noundef %sign.sroa.0.0.insert.insert) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %mtx) #9
  br label %cleanup

error:                                            ; preds = %entry
  br i1 %tobool52.not, label %error.cleanup_crit_edge, label %error.if.then53_crit_edge

error.if.then53_crit_edge:                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53

error.cleanup_crit_edge:                          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then53:                                        ; preds = %error.if.then53_crit_edge, %if.then46, %do.body.if.then53_crit_edge, %sw.bb38.if.then53_crit_edge, %sw.bb38.if.then53_crit_edge110, %sw.bb.if.then53_crit_edge, %if.then23.if.then53_crit_edge, %if.then3.if.then53_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %skb, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then53, %error.cleanup_crit_edge, %if.end49
  %retval.0 = phi ptr [ %call50, %if.end49 ], [ null, %if.then53 ], [ null, %error.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @cdc_ncm_select_altsetting(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdc_ncm_bind_common(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_cdc_wdm_register(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdc_mbim_wdm_manage_power(ptr nocapture noundef readonly %intf, i32 noundef %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @cdc_mbim_manage_power(ptr noundef nonnull %1, i32 noundef %status)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdc_ncm_unbind(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdc_ncm_change_mtu(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_tx_timeout(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_get_tstats64(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cdc_mbim_rx_add_vid(ptr nocapture noundef %netdev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 4094, i16 %vid)
  %cmp = icmp eq i16 %vid, 4094
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr i8, ptr %netdev, i32 2572
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %or = or i32 %1, 1
  store i32 %or, ptr %flags, align 4
  br label %if.end6

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %vid)
  %cmp3 = icmp ugt i16 %vid, 511
  br i1 %cmp3, label %if.else.cleanup_crit_edge, label %if.else.if.end6_crit_edge

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.else.if.end6_crit_edge, %if.then
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cdc_mbim_rx_kill_vid(ptr nocapture noundef %netdev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 4094, i16 %vid)
  %cmp = icmp eq i16 %vid, 4094
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr i8, ptr %netdev, i32 2572
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, -2
  store i32 %and, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdc_ncm_rx_verify_nth16(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdc_ncm_rx_verify_ndp16(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_skb_return(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__vlan_find_dev_deep_rcu(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @in6_dev_finish_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cdc_ncm_fill_tx_frame(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !15, !17, !19, !21, !23, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !42, !43, !45, !46, !48, !49, !50, !52, !54, !56}
!llvm.named.register.sp = !{!58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__initcall__kmod_cdc_mbim__496_687_cdc_mbim_driver_init6, !1, !"__initcall__kmod_cdc_mbim__496_687_cdc_mbim_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/usb/cdc_mbim.c", i32 687, i32 1}
!2 = !{ptr @__exitcall_cdc_mbim_driver_exit, !1, !"__exitcall_cdc_mbim_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author497, !4, !"__UNIQUE_ID_author497", i1 false, i1 false}
!4 = !{!"../drivers/net/usb/cdc_mbim.c", i32 689, i32 1}
!5 = !{ptr @__UNIQUE_ID_author498, !6, !"__UNIQUE_ID_author498", i1 false, i1 false}
!6 = !{!"../drivers/net/usb/cdc_mbim.c", i32 690, i32 1}
!7 = !{ptr @__UNIQUE_ID_description499, !8, !"__UNIQUE_ID_description499", i1 false, i1 false}
!8 = !{!"../drivers/net/usb/cdc_mbim.c", i32 691, i32 1}
!9 = !{ptr @__UNIQUE_ID_file500, !10, !"__UNIQUE_ID_file500", i1 false, i1 false}
!10 = !{!"../drivers/net/usb/cdc_mbim.c", i32 692, i32 1}
!11 = !{ptr @__UNIQUE_ID_license501, !10, !"__UNIQUE_ID_license501", i1 false, i1 false}
!12 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @cdc_mbim_driver, !14, !"cdc_mbim_driver", i1 false, i1 false}
!14 = !{!"../drivers/net/usb/cdc_mbim.c", i32 676, i32 26}
!15 = !{ptr @mbim_devs, !16, !"mbim_devs", i1 false, i1 false}
!16 = !{!"../drivers/net/usb/cdc_mbim.c", i32 620, i32 35}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/usb/cdc_mbim.c", i32 552, i32 17}
!19 = !{ptr @cdc_mbim_info, !20, !"cdc_mbim_info", i1 false, i1 false}
!20 = !{!"../drivers/net/usb/cdc_mbim.c", i32 551, i32 33}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/usb/cdc_mbim.c", i32 132, i32 3}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @cdc_mbim_set_ctrlalt.__UNIQUE_ID_ddebug493, !22, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!26 = !{ptr @cdc_mbim_netdev_ops, !27, !"cdc_mbim_netdev_ops", i1 false, i1 false}
!27 = !{!"../drivers/net/usb/cdc_mbim.c", i32 96, i32 36}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/usb/cdc_mbim.c", i32 48, i32 2}
!30 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @cdc_mbim_manage_power.__UNIQUE_ID_ddebug492, !29, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/usb/cdc_mbim.c", i32 451, i32 3}
!34 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @cdc_mbim_rx_fixup.__UNIQUE_ID_ddebug494, !33, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/usb/cdc_mbim.c", i32 475, i32 4}
!38 = !{ptr @cdc_mbim_rx_fixup.__UNIQUE_ID_ddebug495, !37, !"__UNIQUE_ID_ddebug495", i1 false, i1 false}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!41 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!45 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../include/net/addrconf.h", i32 359, i32 9}
!48 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/usb/cdc_mbim.c", i32 286, i32 4}
!52 = !{ptr @cdc_mbim_info_ndp_to_end, !53, !"cdc_mbim_info_ndp_to_end", i1 false, i1 false}
!53 = !{!"../drivers/net/usb/cdc_mbim.c", i32 594, i32 33}
!54 = !{ptr @cdc_mbim_info_avoid_altsetting_toggle, !55, !"cdc_mbim_info_avoid_altsetting_toggle", i1 false, i1 false}
!55 = !{!"../drivers/net/usb/cdc_mbim.c", i32 609, i32 33}
!56 = !{ptr @cdc_mbim_info_zlp, !57, !"cdc_mbim_info_zlp", i1 false, i1 false}
!57 = !{!"../drivers/net/usb/cdc_mbim.c", i32 575, i32 33}
!58 = !{!"sp"}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{i64 2148971177, i64 2148971182, i64 2148971195, i64 2148971239, i64 2148971273, i64 2148971294}
!69 = !{i64 2148358520, i64 2148358552, i64 2148358581, i64 2148358615, i64 2148358646, i64 2148358669}
!70 = !{i64 2148443464}
!71 = !{i64 2148360985, i64 2148361017, i64 2148361046, i64 2148361080, i64 2148361111, i64 2148361134}
!72 = !{i64 2148446505}
!73 = !{i64 2149373959}
!74 = !{i64 2149374225}
!75 = !{i64 761500, i64 761561}
!76 = !{i64 764232}
!77 = !{!"branch_weights", i32 1, i32 2000}
!78 = !{i64 764517}
!79 = !{i64 2148359330, i64 2148359362, i64 2148359391, i64 2148359425, i64 2148359456, i64 2148359479}
!80 = !{!"branch_weights", i32 2000, i32 1}
!81 = !{i64 2148447355}
!82 = !{i64 2148361795, i64 2148361827, i64 2148361856, i64 2148361890, i64 2148361921, i64 2148361944}
!83 = !{i64 2149323469}
