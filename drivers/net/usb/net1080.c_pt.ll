; ModuleID = '/llk/IR_all_yes/drivers/net/usb/net1080.c_pt.bc'
source_filename = "../drivers/net/usb/net1080.c"
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
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
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
%struct.nc_header = type { i16, i16, i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@__initcall__kmod_net1080__359_518_net1080_driver_init6 = internal global ptr @net1080_driver_init, section ".initcall6.init", align 4
@net1080_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @usbnet_probe, ptr @usbnet_disconnect, ptr null, ptr @usbnet_suspend, ptr @usbnet_resume, ptr null, ptr null, ptr null, ptr @products, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 32 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_net1080_driver_exit = internal global ptr @net1080_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author360 = internal constant [30 x i8] c"net1080.author=David Brownell\00", section ".modinfo", align 1
@__UNIQUE_ID_description361 = internal constant [62 x i8] c"net1080.description=NetChip 1080 based USB Host-to-Host Links\00", section ".modinfo", align 1
@__UNIQUE_ID_file362 = internal constant [37 x i8] c"net1080.file=drivers/net/usb/net1080\00", section ".modinfo", align 1
@__UNIQUE_ID_license363 = internal constant [20 x i8] c"net1080.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"net1080\00", [24 x i8] zeroinitializer }, align 32
@products = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1317, i16 4224, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @net1080_info to i32) }, %struct.usb_device_id { i16 3, i16 1744, i16 1570, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @net1080_info to i32) }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@net1080_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.1, i32 4097, ptr @net1080_bind, ptr null, ptr @net1080_reset, ptr null, ptr @net1080_check_connect, ptr null, ptr null, ptr null, ptr @net1080_rx_fixup, ptr @net1080_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"NetChip TurboCONNECT\00", [43 x i8] zeroinitializer }, align 32
@net1080_reset.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"net1080_reset\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/net/usb/net1080.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"can't read %s-%s status: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@net1080_reset.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 0, i8 69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"can't read USBCTL, %d\0A\00", [41 x i8] zeroinitializer }, align 32
@net1080_reset.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.6, i8 0, i8 71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"can't read TTL, %d\0A\00", [44 x i8] zeroinitializer }, align 32
@net1080_reset.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"assigned TTL, %d ms\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"port %c, peer %sconnected\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@nc_dump_status.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.3, ptr @.str.12, i8 0, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nc_dump_status\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"net1080 %s-%s status 0x%x: this (%c) PKT=%d%s%s%s; other PKT=%d%s%s%s; unspec 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" CON\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" SUS\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" MBOX\00", [26 x i8] zeroinitializer }, align 32
@nc_dump_usbctl.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.3, ptr @.str.17, i8 0, i8 49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nc_dump_usbctl\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"net1080 %s-%s usbctl 0x%x:%s%s%s%s%s; this%s%s; other%s%s; r/o 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" lang\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" mfgr\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" prod\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" serial\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" defaults\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" FLUSH\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" DIS\00", [27 x i8] zeroinitializer }, align 32
@net1080_check_connect.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net1080_check_connect\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"net1080_check_conn read - %d\0A\00", [34 x i8] zeroinitializer }, align 32
@net1080_rx_fixup.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.3, ptr @.str.28, i8 0, i8 88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"net1080_rx_fixup\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"rx framesize %d range %d..%d mtu %d\0A\00", [59 x i8] zeroinitializer }, align 32
@net1080_rx_fixup.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.3, ptr @.str.29, i8 0, i8 90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"packet too big, %d\0A\00", [44 x i8] zeroinitializer }, align 32
@net1080_rx_fixup.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.3, ptr @.str.30, i8 0, i8 92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"header too short, %d\0A\00", [42 x i8] zeroinitializer }, align 32
@net1080_rx_fixup.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.3, ptr @.str.31, i8 0, i8 93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"header OOB, %d bytes\0A\00", [42 x i8] zeroinitializer }, align 32
@net1080_rx_fixup.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.3, ptr @.str.32, i8 0, i8 96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bad pad\0A\00", [23 x i8] zeroinitializer }, align 32
@net1080_rx_fixup.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.3, ptr @.str.33, i8 0, i8 98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bad packet len %d (expected %d)\0A\00", [63 x i8] zeroinitializer }, align 32
@net1080_rx_fixup.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.3, ptr @.str.34, i8 0, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(2+ dropped) rx packet_id mismatch 0x%x 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@nc_ensure_sync.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.3, ptr @.str.36, i8 0, i8 83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nc_ensure_sync\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"flush net1080; too many framing errors\0A\00", [56 x i8] zeroinitializer }, align 32
@___asan_gen_.37 = private unnamed_addr constant [15 x i8] c"net1080_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 508, i32 26 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 518, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant [9 x i8] c"products\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 496, i32 35 }
@___asan_gen_.46 = private unnamed_addr constant [13 x i8] c"net1080_info\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 486, i32 33 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 487, i32 17 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 268, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 276, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 286, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 293, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 295, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 226, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 183, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 313, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 350, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 363, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 368, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 373, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 386, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 393, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 400, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.155 = private constant [29 x i8] c"../drivers/net/usb/net1080.c\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 334, i32 2 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author360, ptr @__UNIQUE_ID_description361, ptr @__UNIQUE_ID_file362, ptr @__UNIQUE_ID_license363, ptr @__exitcall_net1080_driver_exit, ptr @__initcall__kmod_net1080__359_518_net1080_driver_init6, ptr @net1080_driver_exit, ptr @net1080_driver, ptr @.str, ptr @products, ptr @net1080_info, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net1080_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @products to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net1080_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @net1080_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @net1080_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @net1080_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_deregister(ptr noundef nonnull @net1080_driver) #6
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
define internal i32 @net1080_bind(ptr noundef %dev, ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hard_header_len, align 2
  %add = add i16 %3, 9
  store i16 %add, ptr %hard_header_len, align 2
  %4 = load ptr, ptr %net, align 4
  %hard_header_len3 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 19
  %5 = ptrtoint ptr %hard_header_len3 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %hard_header_len3, align 2
  %conv4 = zext i16 %6 to i32
  %mtu = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 20
  %7 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mtu, align 4
  %add6 = add i32 %8, %conv4
  %rx_urb_size = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 24
  %9 = ptrtoint ptr %rx_urb_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add6, ptr %rx_urb_size, align 4
  %hard_mtu = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 23
  %10 = ptrtoint ptr %hard_mtu to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 32767, ptr %hard_mtu, align 4
  %call = tail call i32 @usbnet_get_endpoints(ptr noundef %dev, ptr noundef %intf) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net1080_reset(ptr noundef %dev) #2 align 64 {
entry:
  %vp = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vp) #6
  %0 = ptrtoint ptr %vp to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %vp, align 2, !annotation !94
  %call.i.i = call i32 @usbnet_read_cmd(ptr noundef %dev, i8 noundef zeroext 16, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 17, ptr noundef nonnull %vp, i16 noundef zeroext 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not.i.i = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not.i.i, label %if.end10, label %do.body2

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net1080_reset.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@net1080_reset, %if.then6)) #6
          to label %done [label %if.then6], !srcloc !95

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %1 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %net, align 4
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %bus = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 12
  %5 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus, align 8
  %bus_name = getelementptr inbounds %struct.usb_bus, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %bus_name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus_name, align 4
  %devpath = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @net1080_reset.__UNIQUE_ID_ddebug346, ptr noundef %2, ptr noundef nonnull @.str.4, ptr noundef %8, ptr noundef %devpath, i32 noundef %call.i.i) #6
  br label %done

if.end10:                                         ; preds = %entry
  %9 = ptrtoint ptr %vp to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vp, align 2
  %11 = call i16 @llvm.bswap.i16(i16 %10) #6
  %12 = ptrtoint ptr %vp to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %vp, align 2
  %msg_enable.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 20
  %13 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end10.nc_dump_status.exit_crit_edge, label %do.body1.i

if.end10.nc_dump_status.exit_crit_edge:           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %nc_dump_status.exit

do.body1.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nc_dump_status.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@net1080_reset, %if.then5.i)) #6
          to label %nc_dump_status.exit [label %if.then5.i], !srcloc !95

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #8
  %net.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %15 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net.i, align 4
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr inbounds %struct.usb_device, ptr %18, i32 0, i32 1
  %conv.i = zext i16 %11 to i32
  %and8.i = and i32 %conv.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  %cond.i = select i1 %tobool9.not.i, i32 66, i32 65
  %and11.i = and i32 %conv.i, 3
  %and13.i = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %cond15.i = select i1 %tobool14.not.i, ptr @.str.9, ptr @.str.13
  %and17.i = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  %cond19.i = select i1 %tobool18.not.i, ptr @.str.9, ptr @.str.14
  %and21.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  %cond23.i = select i1 %tobool22.not.i, ptr @.str.9, ptr @.str.15
  %23 = lshr i32 %conv.i, 8
  %and26.i = and i32 %23, 3
  %and28.i = and i32 %conv.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  %cond30.i = select i1 %tobool29.not.i, ptr @.str.9, ptr @.str.13
  %and32.i = and i32 %conv.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  %cond34.i = select i1 %tobool33.not.i, ptr @.str.9, ptr @.str.14
  %and36.i = and i32 %conv.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  %cond38.i = select i1 %tobool37.not.i, ptr @.str.9, ptr @.str.15
  %and40.i = and i32 %conv.i, 3212
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @nc_dump_status.__UNIQUE_ID_ddebug345, ptr noundef %16, ptr noundef nonnull @.str.12, ptr noundef %22, ptr noundef %devpath.i, i32 noundef %conv.i, i32 noundef %cond.i, i32 noundef %and11.i, ptr noundef nonnull %cond15.i, ptr noundef nonnull %cond19.i, ptr noundef nonnull %cond23.i, i32 noundef %and26.i, ptr noundef nonnull %cond30.i, ptr noundef nonnull %cond34.i, ptr noundef nonnull %cond38.i, i32 noundef %and40.i) #6
  br label %nc_dump_status.exit

nc_dump_status.exit:                              ; preds = %if.then5.i, %do.body1.i, %if.end10.nc_dump_status.exit_crit_edge
  %call.i.i123 = call i32 @usbnet_read_cmd(ptr noundef %dev, i8 noundef zeroext 16, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef nonnull %vp, i16 noundef zeroext 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i123)
  %tobool.not.i.i124 = icmp sgt i32 %call.i.i123, -1
  br i1 %tobool.not.i.i124, label %if.end34, label %do.body15

do.body15:                                        ; preds = %nc_dump_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net1080_reset.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@net1080_reset, %if.then27)) #6
          to label %done [label %if.then27], !srcloc !95

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #8
  %net28 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %24 = ptrtoint ptr %net28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net28, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @net1080_reset.__UNIQUE_ID_ddebug347, ptr noundef %25, ptr noundef nonnull @.str.5, i32 noundef %call.i.i123) #6
  br label %done

if.end34:                                         ; preds = %nc_dump_status.exit
  %26 = ptrtoint ptr %vp to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vp, align 2
  %28 = call i16 @llvm.bswap.i16(i16 %27) #6
  %29 = ptrtoint ptr %vp to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %vp, align 2
  %30 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %msg_enable.i, align 4
  %and.i128 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i128)
  %tobool.not.i129 = icmp eq i32 %and.i128, 0
  br i1 %tobool.not.i129, label %if.end34.nc_dump_usbctl.exit_crit_edge, label %do.body1.i130

if.end34.nc_dump_usbctl.exit_crit_edge:           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %nc_dump_usbctl.exit

do.body1.i130:                                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nc_dump_usbctl.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@net1080_reset, %if.then5.i140)) #6
          to label %nc_dump_usbctl.exit [label %if.then5.i140], !srcloc !95

if.then5.i140:                                    ; preds = %do.body1.i130
  call void @__sanitizer_cov_trace_pc() #8
  %net.i131 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %32 = ptrtoint ptr %net.i131 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %net.i131, align 4
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  %bus.i132 = getelementptr inbounds %struct.usb_device, ptr %35, i32 0, i32 12
  %36 = ptrtoint ptr %bus.i132 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus.i132, align 8
  %bus_name.i133 = getelementptr inbounds %struct.usb_bus, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %bus_name.i133 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bus_name.i133, align 4
  %devpath.i134 = getelementptr inbounds %struct.usb_device, ptr %35, i32 0, i32 1
  %conv.i135 = zext i16 %28 to i32
  %and8.i136 = and i32 %conv.i135, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i136)
  %tobool9.not.i137 = icmp eq i32 %and8.i136, 0
  %cond.i138 = select i1 %tobool9.not.i137, ptr @.str.9, ptr @.str.18
  %and11.i139 = and i32 %conv.i135, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i139)
  %tobool12.not.i = icmp eq i32 %and11.i139, 0
  %cond13.i = select i1 %tobool12.not.i, ptr @.str.9, ptr @.str.19
  %and15.i = and i32 %conv.i135, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  %cond17.i = select i1 %tobool16.not.i, ptr @.str.9, ptr @.str.20
  %and19.i = and i32 %conv.i135, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  %cond21.i = select i1 %tobool20.not.i, ptr @.str.9, ptr @.str.21
  %and23.i = and i32 %conv.i135, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  %cond25.i = select i1 %tobool24.not.i, ptr @.str.9, ptr @.str.22
  %and27.i = and i32 %conv.i135, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  %cond29.i = select i1 %tobool28.not.i, ptr @.str.9, ptr @.str.23
  %and31.i = and i32 %conv.i135, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  %cond33.i = select i1 %tobool32.not.i, ptr @.str.9, ptr @.str.24
  %and35.i = and i32 %conv.i135, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  %cond37.i = select i1 %tobool36.not.i, ptr @.str.9, ptr @.str.23
  %and39.i = and i32 %conv.i135, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  %cond41.i = select i1 %tobool40.not.i, ptr @.str.9, ptr @.str.24
  %and43.i = and i32 %conv.i135, 57584
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @nc_dump_usbctl.__UNIQUE_ID_ddebug344, ptr noundef %33, ptr noundef nonnull @.str.17, ptr noundef %39, ptr noundef %devpath.i134, i32 noundef %conv.i135, ptr noundef nonnull %cond.i138, ptr noundef nonnull %cond13.i, ptr noundef nonnull %cond17.i, ptr noundef nonnull %cond21.i, ptr noundef nonnull %cond25.i, ptr noundef nonnull %cond29.i, ptr noundef nonnull %cond33.i, ptr noundef nonnull %cond37.i, ptr noundef nonnull %cond41.i, i32 noundef %and43.i) #6
  br label %nc_dump_usbctl.exit

nc_dump_usbctl.exit:                              ; preds = %if.then5.i140, %do.body1.i130, %if.end34.nc_dump_usbctl.exit_crit_edge
  %call.i.i141 = call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 16, i8 noundef zeroext 64, i16 noundef zeroext 12, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0) #6
  %call.i.i142 = call i32 @usbnet_read_cmd(ptr noundef %dev, i8 noundef zeroext 16, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef nonnull %vp, i16 noundef zeroext 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i142)
  %tobool.not.i.i143 = icmp sgt i32 %call.i.i142, -1
  br i1 %tobool.not.i.i143, label %if.end58, label %do.body39

do.body39:                                        ; preds = %nc_dump_usbctl.exit
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net1080_reset.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@net1080_reset, %if.then51)) #6
          to label %done [label %if.then51], !srcloc !95

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #8
  %net52 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %40 = ptrtoint ptr %net52 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %net52, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @net1080_reset.__UNIQUE_ID_ddebug348, ptr noundef %41, ptr noundef nonnull @.str.6, i32 noundef %call.i.i142) #6
  br label %done

if.end58:                                         ; preds = %nc_dump_usbctl.exit
  %42 = ptrtoint ptr %vp to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %vp, align 2
  %44 = call i16 @llvm.bswap.i16(i16 %43) #6
  %45 = ptrtoint ptr %vp to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %vp, align 2
  %46 = or i16 %44, 255
  %call.i.i146 = call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 16, i8 noundef zeroext 64, i16 noundef zeroext %46, i16 noundef zeroext 16, ptr noundef null, i16 noundef zeroext 0) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net1080_reset.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@net1080_reset, %if.then73)) #6
          to label %do.body80 [label %if.then73], !srcloc !95

if.then73:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  %net74 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %47 = ptrtoint ptr %net74 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %net74, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @net1080_reset.__UNIQUE_ID_ddebug349, ptr noundef %48, ptr noundef nonnull @.str.7, i32 noundef 255) #6
  br label %do.body80

do.body80:                                        ; preds = %if.then73, %if.end58
  %49 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %msg_enable.i, align 4
  %and81 = and i32 %50, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %do.body80.done_crit_edge, label %if.then83

do.body80.done_crit_edge:                         ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.then83:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #8
  %net84 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %51 = ptrtoint ptr %net84 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %net84, align 4
  %conv85 = zext i16 %11 to i32
  %and86 = and i32 %conv85, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  %cond = select i1 %tobool87.not, i32 66, i32 65
  %and89 = and i32 %conv85, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  %cond91 = select i1 %tobool90.not, ptr @.str.10, ptr @.str.9
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %52, ptr noundef nonnull @.str.8, i32 noundef %cond, ptr noundef nonnull %cond91) #9
  br label %done

done:                                             ; preds = %if.then83, %do.body80.done_crit_edge, %if.then51, %do.body39, %if.then27, %do.body15, %if.then6, %do.body2
  %retval1.0 = phi i32 [ %call.i.i, %if.then6 ], [ %call.i.i123, %if.then27 ], [ %call.i.i142, %if.then51 ], [ 0, %if.then83 ], [ 0, %do.body80.done_crit_edge ], [ %call.i.i, %do.body2 ], [ %call.i.i123, %do.body15 ], [ %call.i.i142, %do.body39 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vp) #6
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net1080_check_connect(ptr noundef %dev) #2 align 64 {
entry:
  %vp = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vp) #6
  %0 = ptrtoint ptr %vp to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %vp, align 2, !annotation !94
  %call.i.i = call i32 @usbnet_read_cmd(ptr noundef %dev, i8 noundef zeroext 16, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 17, ptr noundef nonnull %vp, i16 noundef zeroext 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not.i.i = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not.i.i, label %if.end9, label %do.body2

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net1080_check_connect.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@net1080_check_connect, %if.then6)) #6
          to label %cleanup [label %if.then6], !srcloc !95

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %1 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @net1080_check_connect.__UNIQUE_ID_ddebug350, ptr noundef %2, ptr noundef nonnull @.str.26, i32 noundef %call.i.i) #6
  br label %cleanup

if.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %vp to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vp, align 2
  %5 = call i16 @llvm.bswap.i16(i16 %4) #6
  %6 = ptrtoint ptr %vp to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %vp, align 2
  %7 = and i16 %5, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp10.not.not = icmp eq i16 %7, 0
  %. = select i1 %cmp10.not.not, i32 -67, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then6, %do.body2
  %retval.0 = phi i32 [ %call.i.i, %if.then6 ], [ %., %if.end9 ], [ %call.i.i, %do.body2 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vp) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net1080_rx_fixup(ptr noundef %dev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body4, label %if.end19

do.body4:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net1080_rx_fixup.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@net1080_rx_fixup, %if.then8)) #6
          to label %do.end17 [label %if.then8], !srcloc !95

if.then8:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net, align 4
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %hard_header_len12 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 19
  %10 = ptrtoint ptr %hard_header_len12 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hard_header_len12, align 2
  %conv13 = zext i16 %11 to i32
  %hard_mtu = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 23
  %12 = ptrtoint ptr %hard_mtu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hard_mtu, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 20
  %14 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mtu, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @net1080_rx_fixup.__UNIQUE_ID_ddebug352, ptr noundef %7, ptr noundef nonnull @.str.28, i32 noundef %9, i32 noundef %conv13, i32 noundef %13, i32 noundef %15) #6
  br label %do.end17

do.end17:                                         ; preds = %if.then8, %do.body4
  %16 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net, align 4
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 36, i32 13
  %18 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_frame_errors, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %rx_frame_errors, align 4
  %arrayidx.i = getelementptr %struct.usbnet, ptr %dev, i32 0, i32 21, i32 1
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  %inc.i = add i32 %21, 1
  store i32 %inc.i, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %inc.i)
  %cmp.i = icmp ult i32 %inc.i, 6
  br i1 %cmp.i, label %do.end17.cleanup_crit_edge, label %if.end.i

do.end17.cleanup_crit_edge:                       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %do.end17
  %call.i = tail call i32 @usbnet_write_cmd_async(ptr noundef %dev, i8 noundef zeroext 16, i8 noundef zeroext 64, i16 noundef zeroext 12, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.i:                                        ; preds = %if.end.i
  %msg_enable.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 20
  %22 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %23, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %do.body.i.do.end13.i_crit_edge, label %do.body5.i

do.body.i.do.end13.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13.i

do.body5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nc_ensure_sync.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@net1080_rx_fixup, %if.then10.i)) #6
          to label %do.end13.i [label %if.then10.i], !srcloc !95

if.then10.i:                                      ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @nc_ensure_sync.__UNIQUE_ID_ddebug351, ptr noundef %25, ptr noundef nonnull @.str.36) #6
  br label %do.end13.i

do.end13.i:                                       ; preds = %if.then10.i, %do.body5.i, %do.body.i.do.end13.i_crit_edge
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %arrayidx.i, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %28, align 2
  %packet_len22 = getelementptr inbounds %struct.nc_header, ptr %28, i32 0, i32 1
  %31 = ptrtoint ptr %packet_len22 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %packet_len22, align 2
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #6
  %conv24 = zext i16 %33 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 32744, i16 %33)
  %cmp27 = icmp ugt i16 %33, 32744
  br i1 %cmp27, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end19
  %rx_frame_errors32 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 13
  %34 = ptrtoint ptr %rx_frame_errors32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_frame_errors32, align 4
  %inc33 = add i32 %35, 1
  store i32 %inc33, ptr %rx_frame_errors32, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net1080_rx_fixup.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@net1080_rx_fixup, %if.then47)) #6
          to label %do.end54 [label %if.then47], !srcloc !95

if.then47:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @net1080_rx_fixup.__UNIQUE_ID_ddebug353, ptr noundef %37, ptr noundef nonnull @.str.29, i32 noundef %conv24) #6
  br label %do.end54

do.end54:                                         ; preds = %if.then47, %if.then29
  %arrayidx.i296 = getelementptr %struct.usbnet, ptr %dev, i32 0, i32 21, i32 1
  %38 = ptrtoint ptr %arrayidx.i296 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i296, align 4
  %inc.i297 = add i32 %39, 1
  store i32 %inc.i297, ptr %arrayidx.i296, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %inc.i297)
  %cmp.i298 = icmp ult i32 %inc.i297, 6
  br i1 %cmp.i298, label %do.end54.cleanup_crit_edge, label %if.end.i301

do.end54.cleanup_crit_edge:                       ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i301:                                      ; preds = %do.end54
  %call.i299 = tail call i32 @usbnet_write_cmd_async(ptr noundef %dev, i8 noundef zeroext 16, i8 noundef zeroext 64, i16 noundef zeroext 12, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i299)
  %tobool.not.i300 = icmp eq i32 %call.i299, 0
  br i1 %tobool.not.i300, label %do.body.i305, label %if.end.i301.cleanup_crit_edge

if.end.i301.cleanup_crit_edge:                    ; preds = %if.end.i301
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.i305:                                     ; preds = %if.end.i301
  %msg_enable.i302 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 20
  %40 = ptrtoint ptr %msg_enable.i302 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %msg_enable.i302, align 4
  %and.i303 = and i32 %41, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i303)
  %tobool3.not.i304 = icmp eq i32 %and.i303, 0
  br i1 %tobool3.not.i304, label %do.body.i305.do.end13.i309_crit_edge, label %do.body5.i306

do.body.i305.do.end13.i309_crit_edge:             ; preds = %do.body.i305
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13.i309

do.body5.i306:                                    ; preds = %do.body.i305
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nc_ensure_sync.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@net1080_rx_fixup, %if.then10.i308)) #6
          to label %do.end13.i309 [label %if.then10.i308], !srcloc !95

if.then10.i308:                                   ; preds = %do.body5.i306
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @nc_ensure_sync.__UNIQUE_ID_ddebug351, ptr noundef %43, ptr noundef nonnull @.str.36) #6
  br label %do.end13.i309

do.end13.i309:                                    ; preds = %if.then10.i308, %do.body5.i306, %do.body.i305.do.end13.i309_crit_edge
  %44 = ptrtoint ptr %arrayidx.i296 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %arrayidx.i296, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end19
  %45 = tail call i16 @llvm.bswap.i16(i16 %30) #6
  %conv55 = zext i16 %45 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %45)
  %cmp56 = icmp ult i16 %45, 6
  br i1 %cmp56, label %if.then58, label %if.else84

if.then58:                                        ; preds = %if.else
  %rx_frame_errors61 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 13
  %46 = ptrtoint ptr %rx_frame_errors61 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx_frame_errors61, align 4
  %inc62 = add i32 %47, 1
  store i32 %inc62, ptr %rx_frame_errors61, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net1080_rx_fixup.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@net1080_rx_fixup, %if.then76)) #6
          to label %do.end83 [label %if.then76], !srcloc !95

if.then76:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @net1080_rx_fixup.__UNIQUE_ID_ddebug354, ptr noundef %49, ptr noundef nonnull @.str.30, i32 noundef %conv55) #6
  br label %do.end83

do.end83:                                         ; preds = %if.then76, %if.then58
  %arrayidx.i311 = getelementptr %struct.usbnet, ptr %dev, i32 0, i32 21, i32 1
  %50 = ptrtoint ptr %arrayidx.i311 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i311, align 4
  %inc.i312 = add i32 %51, 1
  store i32 %inc.i312, ptr %arrayidx.i311, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %inc.i312)
  %cmp.i313 = icmp ult i32 %inc.i312, 6
  br i1 %cmp.i313, label %do.end83.cleanup_crit_edge, label %if.end.i316

do.end83.cleanup_crit_edge:                       ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i316:                                      ; preds = %do.end83
  %call.i314 = tail call i32 @usbnet_write_cmd_async(ptr noundef %dev, i8 noundef zeroext 16, i8 noundef zeroext 64, i16 noundef zeroext 12, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i314)
  %tobool.not.i315 = icmp eq i32 %call.i314, 0
  br i1 %tobool.not.i315, label %do.body.i320, label %if.end.i316.cleanup_crit_edge

if.end.i316.cleanup_crit_edge:                    ; preds = %if.end.i316
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.i320:                                     ; preds = %if.end.i316
  %msg_enable.i317 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 20
  %52 = ptrtoint ptr %msg_enable.i317 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %msg_enable.i317, align 4
  %and.i318 = and i32 %53, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i318)
  %tobool3.not.i319 = icmp eq i32 %and.i318, 0
  br i1 %tobool3.not.i319, label %do.body.i320.do.end13.i324_crit_edge, label %do.body5.i321

do.body.i320.do.end13.i324_crit_edge:             ; preds = %do.body.i320
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13.i324

do.body5.i321:                                    ; preds = %do.body.i320
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nc_ensure_sync.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@net1080_rx_fixup, %if.then10.i323)) #6
          to label %do.end13.i324 [label %if.then10.i323], !srcloc !95

if.then10.i323:                                   ; preds = %do.body5.i321
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @nc_ensure_sync.__UNIQUE_ID_ddebug351, ptr noundef %55, ptr noundef nonnull @.str.36) #6
  br label %do.end13.i324

do.end13.i324:                                    ; preds = %if.then10.i323, %do.body5.i321, %do.body.i320.do.end13.i324_crit_edge
  %56 = ptrtoint ptr %arrayidx.i311 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %arrayidx.i311, align 4
  br label %cleanup

if.else84:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %30)
  %cmp86.not = icmp eq i16 %30, 1536
  br i1 %cmp86.not, label %if.else84.if.end112_crit_edge, label %do.body90

if.else84.if.end112_crit_edge:                    ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end112

do.body90:                                        ; preds = %if.else84
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net1080_rx_fixup.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@net1080_rx_fixup, %if.then102)) #6
          to label %do.end109 [label %if.then102], !srcloc !95

if.then102:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %net, align 4
  %sub = add nsw i32 %conv55, -6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @net1080_rx_fixup.__UNIQUE_ID_ddebug355, ptr noundef %58, ptr noundef nonnull @.str.31, i32 noundef %sub) #6
  br label %do.end109

do.end109:                                        ; preds = %if.then102, %do.body90
  %arrayidx.i326 = getelementptr %struct.usbnet, ptr %dev, i32 0, i32 21, i32 1
  %59 = ptrtoint ptr %arrayidx.i326 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i326, align 4
  %inc.i327 = add i32 %60, 1
  store i32 %inc.i327, ptr %arrayidx.i326, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %inc.i327)
  %cmp.i328 = icmp ult i32 %inc.i327, 6
  br i1 %cmp.i328, label %do.end109.if.end112_crit_edge, label %if.end.i331

do.end109.if.end112_crit_edge:                    ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end112

if.end.i331:                                      ; preds = %do.end109
  %call.i329 = tail call i32 @usbnet_write_cmd_async(ptr noundef %dev, i8 noundef zeroext 16, i8 noundef zeroext 64, i16 noundef zeroext 12, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i329)
  %tobool.not.i330 = icmp eq i32 %call.i329, 0
  br i1 %tobool.not.i330, label %do.body.i335, label %if.end.i331.if.end112_crit_edge

if.end.i331.if.end112_crit_edge:                  ; preds = %if.end.i331
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end112

do.body.i335:                                     ; preds = %if.end.i331
  %msg_enable.i332 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 20
  %61 = ptrtoint ptr %msg_enable.i332 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %msg_enable.i332, align 4
  %and.i333 = and i32 %62, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i333)
  %tobool3.not.i334 = icmp eq i32 %and.i333, 0
  br i1 %tobool3.not.i334, label %do.body.i335.do.end13.i339_crit_edge, label %do.body5.i336

do.body.i335.do.end13.i339_crit_edge:             ; preds = %do.body.i335
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13.i339

do.body5.i336:                                    ; preds = %do.body.i335
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nc_ensure_sync.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@net1080_rx_fixup, %if.then10.i338)) #6
          to label %do.end13.i339 [label %if.then10.i338], !srcloc !95

if.then10.i338:                                   ; preds = %do.body5.i336
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @nc_ensure_sync.__UNIQUE_ID_ddebug351, ptr noundef %64, ptr noundef nonnull @.str.36) #6
  br label %do.end13.i339

do.end13.i339:                                    ; preds = %if.then10.i338, %do.body5.i336, %do.body.i335.do.end13.i339_crit_edge
  %65 = ptrtoint ptr %arrayidx.i326 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %arrayidx.i326, align 4
  br label %if.end112

if.end112:                                        ; preds = %do.end13.i339, %if.end.i331.if.end112_crit_edge, %do.end109.if.end112_crit_edge, %if.else84.if.end112_crit_edge
  %call114 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %conv55) #6
  %66 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data, align 4
  %68 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %len, align 4
  %add.ptr = getelementptr i8, ptr %67, i32 %69
  %add.ptr117 = getelementptr i8, ptr %add.ptr, i32 -2
  %sub119 = add i32 %69, -2
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub119) #6
  %and121 = and i32 %conv24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %cmp122 = icmp eq i32 %and121, 0
  br i1 %cmp122, label %if.then124, label %if.end112.if.end157_crit_edge

if.end112.if.end157_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end157

if.then124:                                       ; preds = %if.end112
  %70 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %71, i32 %conv24
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -84, i8 %73)
  %cmp127.not = icmp eq i8 %73, -84
  br i1 %cmp127.not, label %if.end154, label %if.then129

if.then129:                                       ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %net, align 4
  %rx_frame_errors132 = getelementptr inbounds %struct.net_device, ptr %75, i32 0, i32 36, i32 13
  %76 = ptrtoint ptr %rx_frame_errors132 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rx_frame_errors132, align 4
  %inc133 = add i32 %77, 1
  store i32 %inc133, ptr %rx_frame_errors132, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net1080_rx_fixup.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@net1080_rx_fixup, %if.then147)) #6
          to label %cleanup [label %if.then147], !srcloc !95

if.then147:                                       ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @net1080_rx_fixup.__UNIQUE_ID_ddebug356, ptr noundef %79, ptr noundef nonnull @.str.32) #6
  br label %cleanup

if.end154:                                        ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #8
  %80 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len, align 4
  %sub156 = add i32 %81, -1
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub156) #6
  br label %if.end157

if.end157:                                        ; preds = %if.end154, %if.end112.if.end157_crit_edge
  %82 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %conv24)
  %cmp160.not = icmp eq i32 %83, %conv24
  br i1 %cmp160.not, label %if.end189, label %if.then162

if.then162:                                       ; preds = %if.end157
  %84 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %net, align 4
  %rx_frame_errors165 = getelementptr inbounds %struct.net_device, ptr %85, i32 0, i32 36, i32 13
  %86 = ptrtoint ptr %rx_frame_errors165 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rx_frame_errors165, align 4
  %inc166 = add i32 %87, 1
  store i32 %inc166, ptr %rx_frame_errors165, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net1080_rx_fixup.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@net1080_rx_fixup, %if.then180)) #6
          to label %do.end188 [label %if.then180], !srcloc !95

if.then180:                                       ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #8
  %88 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %net, align 4
  %90 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @net1080_rx_fixup.__UNIQUE_ID_ddebug357, ptr noundef %89, ptr noundef nonnull @.str.33, i32 noundef %91, i32 noundef %conv24) #6
  br label %do.end188

do.end188:                                        ; preds = %if.then180, %if.then162
  %arrayidx.i341 = getelementptr %struct.usbnet, ptr %dev, i32 0, i32 21, i32 1
  %92 = ptrtoint ptr %arrayidx.i341 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx.i341, align 4
  %inc.i342 = add i32 %93, 1
  store i32 %inc.i342, ptr %arrayidx.i341, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %inc.i342)
  %cmp.i343 = icmp ult i32 %inc.i342, 6
  br i1 %cmp.i343, label %do.end188.cleanup_crit_edge, label %if.end.i346

do.end188.cleanup_crit_edge:                      ; preds = %do.end188
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i346:                                      ; preds = %do.end188
  %call.i344 = tail call i32 @usbnet_write_cmd_async(ptr noundef %dev, i8 noundef zeroext 16, i8 noundef zeroext 64, i16 noundef zeroext 12, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i344)
  %tobool.not.i345 = icmp eq i32 %call.i344, 0
  br i1 %tobool.not.i345, label %do.body.i350, label %if.end.i346.cleanup_crit_edge

if.end.i346.cleanup_crit_edge:                    ; preds = %if.end.i346
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.i350:                                     ; preds = %if.end.i346
  %msg_enable.i347 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 20
  %94 = ptrtoint ptr %msg_enable.i347 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %msg_enable.i347, align 4
  %and.i348 = and i32 %95, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i348)
  %tobool3.not.i349 = icmp eq i32 %and.i348, 0
  br i1 %tobool3.not.i349, label %do.body.i350.do.end13.i354_crit_edge, label %do.body5.i351

do.body.i350.do.end13.i354_crit_edge:             ; preds = %do.body.i350
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13.i354

do.body5.i351:                                    ; preds = %do.body.i350
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nc_ensure_sync.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@net1080_rx_fixup, %if.then10.i353)) #6
          to label %do.end13.i354 [label %if.then10.i353], !srcloc !95

if.then10.i353:                                   ; preds = %do.body5.i351
  call void @__sanitizer_cov_trace_pc() #8
  %96 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @nc_ensure_sync.__UNIQUE_ID_ddebug351, ptr noundef %97, ptr noundef nonnull @.str.36) #6
  br label %do.end13.i354

do.end13.i354:                                    ; preds = %if.then10.i353, %do.body5.i351, %do.body.i350.do.end13.i354_crit_edge
  %98 = ptrtoint ptr %arrayidx.i341 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %arrayidx.i341, align 4
  br label %cleanup

if.end189:                                        ; preds = %if.end157
  %packet_id = getelementptr inbounds %struct.nc_header, ptr %28, i32 0, i32 2
  %99 = ptrtoint ptr %packet_id to i32
  call void @__asan_loadN_noabort(i32 %99, i32 2)
  %100 = load i16, ptr %packet_id, align 1
  %101 = ptrtoint ptr %add.ptr117 to i32
  call void @__asan_loadN_noabort(i32 %101, i32 2)
  %102 = load i16, ptr %add.ptr117, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %100, i16 %102)
  %cmp194.not = icmp eq i16 %100, %102
  br i1 %cmp194.not, label %if.end224, label %if.then196

if.then196:                                       ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #8
  %103 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %net, align 4
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %104, i32 0, i32 36, i32 14
  %105 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %rx_fifo_errors, align 8
  %inc199 = add i32 %106, 1
  store i32 %inc199, ptr %rx_fifo_errors, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net1080_rx_fixup.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@net1080_rx_fixup, %if.then213)) #6
          to label %cleanup [label %if.then213], !srcloc !95

if.then213:                                       ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #8
  %107 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %net, align 4
  %109 = ptrtoint ptr %packet_id to i32
  call void @__asan_loadN_noabort(i32 %109, i32 2)
  %110 = load i16, ptr %packet_id, align 1
  %111 = tail call i16 @llvm.bswap.i16(i16 %110)
  %conv216 = zext i16 %111 to i32
  %112 = ptrtoint ptr %add.ptr117 to i32
  call void @__asan_loadN_noabort(i32 %112, i32 2)
  %113 = load i16, ptr %add.ptr117, align 1
  %114 = tail call i16 @llvm.bswap.i16(i16 %113)
  %conv218 = zext i16 %114 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @net1080_rx_fixup.__UNIQUE_ID_ddebug358, ptr noundef %108, ptr noundef nonnull @.str.34, i32 noundef %conv216, i32 noundef %conv218) #6
  br label %cleanup

if.end224:                                        ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx226 = getelementptr %struct.usbnet, ptr %dev, i32 0, i32 21, i32 1
  %115 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %arrayidx226, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end224, %if.then213, %if.then196, %do.end13.i354, %if.end.i346.cleanup_crit_edge, %do.end188.cleanup_crit_edge, %if.then147, %if.then129, %do.end13.i324, %if.end.i316.cleanup_crit_edge, %do.end83.cleanup_crit_edge, %do.end13.i309, %if.end.i301.cleanup_crit_edge, %do.end54.cleanup_crit_edge, %do.end13.i, %if.end.i.cleanup_crit_edge, %do.end17.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end224 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then147 ], [ 0, %if.then213 ], [ 0, %do.end17.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %do.end13.i ], [ 0, %do.end54.cleanup_crit_edge ], [ 0, %if.end.i301.cleanup_crit_edge ], [ 0, %do.end13.i309 ], [ 0, %do.end83.cleanup_crit_edge ], [ 0, %if.end.i316.cleanup_crit_edge ], [ 0, %do.end13.i324 ], [ 0, %if.then129 ], [ 0, %do.end188.cleanup_crit_edge ], [ 0, %if.end.i346.cleanup_crit_edge ], [ 0, %do.end13.i354 ], [ 0, %if.then196 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @net1080_tx_fixup(ptr nocapture noundef %dev, ptr noundef %skb, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1, align 4
  %and = and i32 %1, 1
  %2 = xor i32 %and, 3
  %cloned.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %3 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load.i = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.then4_crit_edge, label %skb_cloned.exit

entry.if.then4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

skb_cloned.exit:                                  ; preds = %entry
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %4 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i.i, align 4
  %dataref.i = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i, i32 noundef 4) #6
  %6 = ptrtoint ptr %dataref.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %dataref.i, align 4
  %and.i = and i32 %7, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1
  br i1 %cmp.i.not, label %skb_cloned.exit.if.then4_crit_edge, label %skb_cloned.exit.if.end18_crit_edge

skb_cloned.exit.if.end18_crit_edge:               ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

skb_cloned.exit.if.then4_crit_edge:               ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

if.then4:                                         ; preds = %skb_cloned.exit.if.then4_crit_edge, %entry.if.then4_crit_edge
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
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %12 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not.i = icmp eq i32 %13, 0
  br i1 %tobool.i.not.i, label %skb_tailroom.exit, label %if.then4.if.end9_crit_edge

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

skb_tailroom.exit:                                ; preds = %if.then4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %14 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %16 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i69 = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i70 = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i71 = sub i32 %sub.ptr.lhs.cast.i69, %sub.ptr.rhs.cast.i70
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %sub.ptr.sub.i71)
  %cmp.not = icmp sle i32 %2, %sub.ptr.sub.i71
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub.ptr.sub.i)
  %cmp7 = icmp ugt i32 %sub.ptr.sub.i, 5
  %or.cond = select i1 %cmp.not, i1 %cmp7, i1 false
  br i1 %or.cond, label %skb_tailroom.exit.encapsulate_crit_edge, label %skb_tailroom.exit.if.end9_crit_edge

skb_tailroom.exit.if.end9_crit_edge:              ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

skb_tailroom.exit.encapsulate_crit_edge:          ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %encapsulate

if.end9:                                          ; preds = %skb_tailroom.exit.if.end9_crit_edge, %if.then4.if.end9_crit_edge
  %cond.i79 = phi i32 [ %sub.ptr.sub.i71, %skb_tailroom.exit.if.end9_crit_edge ], [ 0, %if.then4.if.end9_crit_edge ]
  %add10 = sub nuw nsw i32 9, %and
  %add11 = add i32 %cond.i79, %sub.ptr.sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add10, i32 %add11)
  %cmp12 = icmp ult i32 %add10, %add11
  br i1 %cmp12, label %if.then13, label %if.end9.if.end18_crit_edge

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %11, i32 6
  %18 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len1, align 4
  %20 = call ptr @memmove(ptr %add.ptr, ptr %9, i32 %19)
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %1
  %tail.i73 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %22 = ptrtoint ptr %tail.i73 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.i, ptr %tail.i73, align 8
  br label %encapsulate

if.end18:                                         ; preds = %if.end9.if.end18_crit_edge, %skb_cloned.exit.if.end18_crit_edge
  %call19 = tail call ptr @skb_copy_expand(ptr noundef %skb, i32 noundef 6, i32 noundef %2, i32 noundef %flags) #6
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #6
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.end18.cleanup35_crit_edge, label %if.end18.encapsulate_crit_edge

if.end18.encapsulate_crit_edge:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %encapsulate

if.end18.cleanup35_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup35

encapsulate:                                      ; preds = %if.end18.encapsulate_crit_edge, %if.then13, %skb_tailroom.exit.encapsulate_crit_edge
  %skb.addr.0 = phi ptr [ %call19, %if.end18.encapsulate_crit_edge ], [ %skb, %if.then13 ], [ %skb, %skb_tailroom.exit.encapsulate_crit_edge ]
  %call23 = tail call ptr @skb_push(ptr noundef %skb.addr.0, i32 noundef 6) #6
  %23 = ptrtoint ptr %call23 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 1536, ptr %call23, align 1
  %conv = trunc i32 %1 to i16
  %24 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %packet_len = getelementptr inbounds %struct.nc_header, ptr %call23, i32 0, i32 1
  %25 = ptrtoint ptr %packet_len to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 %24, ptr %packet_len, align 1
  %xid = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 22
  %26 = ptrtoint ptr %xid to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %xid, align 4
  %inc24 = add i32 %27, 1
  store i32 %inc24, ptr %xid, align 4
  %conv25 = trunc i32 %27 to i16
  %28 = tail call i16 @llvm.bswap.i16(i16 %conv25)
  %packet_id = getelementptr inbounds %struct.nc_header, ptr %call23, i32 0, i32 2
  %29 = ptrtoint ptr %packet_id to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %28, ptr %packet_id, align 1
  %len26 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 6
  %30 = ptrtoint ptr %len26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len26, align 4
  %and28 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.then30, label %encapsulate.if.end31_crit_edge

encapsulate.if.end31_crit_edge:                   ; preds = %encapsulate
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then30:                                        ; preds = %encapsulate
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call ptr @skb_put(ptr noundef %skb.addr.0, i32 noundef 1) #6
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -84, ptr %call.i, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %encapsulate.if.end31_crit_edge
  %call32 = tail call ptr @skb_put(ptr noundef %skb.addr.0, i32 noundef 2) #6
  %33 = ptrtoint ptr %packet_id to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %packet_id, align 1
  %35 = ptrtoint ptr %call32 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %34, ptr %call32, align 1
  br label %cleanup35

cleanup35:                                        ; preds = %if.end31, %if.end18.cleanup35_crit_edge
  %retval.0 = phi ptr [ %skb.addr.0, %if.end31 ], [ null, %if.end18.cleanup35_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_endpoints(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_read_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_write_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_write_cmd_async(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy_expand(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !37, !39, !40, !41, !42, !43, !44, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @__initcall__kmod_net1080__359_518_net1080_driver_init6, !1, !"__initcall__kmod_net1080__359_518_net1080_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/usb/net1080.c", i32 518, i32 1}
!2 = !{ptr @__exitcall_net1080_driver_exit, !1, !"__exitcall_net1080_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author360, !4, !"__UNIQUE_ID_author360", i1 false, i1 false}
!4 = !{!"../drivers/net/usb/net1080.c", i32 520, i32 1}
!5 = !{ptr @__UNIQUE_ID_description361, !6, !"__UNIQUE_ID_description361", i1 false, i1 false}
!6 = !{!"../drivers/net/usb/net1080.c", i32 521, i32 1}
!7 = !{ptr @__UNIQUE_ID_file362, !8, !"__UNIQUE_ID_file362", i1 false, i1 false}
!8 = !{!"../drivers/net/usb/net1080.c", i32 522, i32 1}
!9 = !{ptr @__UNIQUE_ID_license363, !8, !"__UNIQUE_ID_license363", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @net1080_driver, !12, !"net1080_driver", i1 false, i1 false}
!12 = !{!"../drivers/net/usb/net1080.c", i32 508, i32 26}
!13 = !{ptr @products, !14, !"products", i1 false, i1 false}
!14 = !{!"../drivers/net/usb/net1080.c", i32 496, i32 35}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/usb/net1080.c", i32 487, i32 17}
!17 = !{ptr @net1080_info, !18, !"net1080_info", i1 false, i1 false}
!18 = !{!"../drivers/net/usb/net1080.c", i32 486, i32 33}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/usb/net1080.c", i32 268, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @net1080_reset.__UNIQUE_ID_ddebug346, !20, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/usb/net1080.c", i32 276, i32 3}
!26 = !{ptr @net1080_reset.__UNIQUE_ID_ddebug347, !25, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/usb/net1080.c", i32 286, i32 3}
!29 = !{ptr @net1080_reset.__UNIQUE_ID_ddebug348, !28, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/usb/net1080.c", i32 293, i32 2}
!32 = !{ptr @net1080_reset.__UNIQUE_ID_ddebug349, !31, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/usb/net1080.c", i32 295, i32 2}
!35 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/usb/net1080.c", i32 226, i32 2}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @nc_dump_status.__UNIQUE_ID_ddebug345, !38, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!41 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/usb/net1080.c", i32 183, i32 2}
!46 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @nc_dump_usbctl.__UNIQUE_ID_ddebug344, !45, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!48 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/usb/net1080.c", i32 313, i32 3}
!57 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @net1080_check_connect.__UNIQUE_ID_ddebug350, !56, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/usb/net1080.c", i32 350, i32 3}
!61 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @net1080_rx_fixup.__UNIQUE_ID_ddebug352, !60, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/usb/net1080.c", i32 363, i32 3}
!65 = !{ptr @net1080_rx_fixup.__UNIQUE_ID_ddebug353, !64, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/usb/net1080.c", i32 368, i32 3}
!68 = !{ptr @net1080_rx_fixup.__UNIQUE_ID_ddebug354, !67, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/usb/net1080.c", i32 373, i32 3}
!71 = !{ptr @net1080_rx_fixup.__UNIQUE_ID_ddebug355, !70, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/usb/net1080.c", i32 386, i32 4}
!74 = !{ptr @net1080_rx_fixup.__UNIQUE_ID_ddebug356, !73, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/usb/net1080.c", i32 393, i32 3}
!77 = !{ptr @net1080_rx_fixup.__UNIQUE_ID_ddebug357, !76, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/usb/net1080.c", i32 400, i32 3}
!80 = !{ptr @net1080_rx_fixup.__UNIQUE_ID_ddebug358, !79, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/usb/net1080.c", i32 334, i32 2}
!83 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @nc_ensure_sync.__UNIQUE_ID_ddebug351, !82, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{!"auto-init"}
!95 = !{i64 2148965195, i64 2148965200, i64 2148965213, i64 2148965257, i64 2148965291, i64 2148965312}
