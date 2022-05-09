; ModuleID = '/llk/IR_all_yes/drivers/net/usb/kalmia.c_pt.bc'
source_filename = "../drivers/net/usb/kalmia.c"
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
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usbnet = type { ptr, ptr, ptr, ptr, ptr, %struct.wait_queue_head, %struct.mutex, i8, i8, i8, i16, i16, i8, i32, i32, ptr, i32, %struct.timer_list, ptr, ptr, i32, [5 x i32], i32, i32, i32, %struct.mii_if_info, i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, i32, %struct.mutex, %struct.usb_anchor, %struct.tasklet_struct, %struct.work_struct, i32 }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.121, i32 }
%union.anon.121 = type { ptr }
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

@__initcall__kmod_kalmia__352_354_kalmia_driver_init6 = internal global ptr @kalmia_driver_init, section ".initcall6.init", align 4
@kalmia_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @usbnet_probe, ptr @usbnet_disconnect, ptr null, ptr @usbnet_suspend, ptr @usbnet_resume, ptr null, ptr null, ptr null, ptr @products, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 32 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_kalmia_driver_exit = internal global ptr @kalmia_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author353 = internal constant [61 x i8] c"kalmia.author=Marius Bjoernstad Kotsbak <marius@kotsbak.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description354 = internal constant [53 x i8] c"kalmia.description=Samsung Kalmia USB network driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file355 = internal constant [35 x i8] c"kalmia.file=drivers/net/usb/kalmia\00", section ".modinfo", align 1
@__UNIQUE_ID_license356 = internal constant [19 x i8] c"kalmia.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kalmia\00", [25 x i8] zeroinitializer }, align 32
@products = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1256, i16 26778, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1256, i16 26761, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @kalmia_info to i32) }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@kalmia_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.1, i32 1024, ptr @kalmia_bind, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kalmia_rx_fixup, ptr @kalmia_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Samsung Kalmia LTE USB dongle\00", [34 x i8] zeroinitializer }, align 32
@kalmia_init_and_get_ethernet_addr.init_msg_1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"WP\04\00\00\00\00 \00\00\00\00", [20 x i8] zeroinitializer }, align 32
@kalmia_init_and_get_ethernet_addr.init_msg_2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"WP\04\00\00\00\00\02\00\F4\00\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@kalmia_send_init_packet.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 15, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"kalmia_send_init_packet\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/net/usb/kalmia.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Sending init packet\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Error sending init packet. Status %i, length %i\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Did not send all of init packet. Bytes sent: %i\00", [48 x i8] zeroinitializer }, align 32
@kalmia_send_init_packet.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Successfully sent init packet.\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Error receiving init result. Status %i, length %i\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unexpected init result length: %i\0A\00", [61 x i8] zeroinitializer }, align 32
@kalmia_rx_fixup.HEADER_END_OF_USB_PACKET = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WZ\00\00\08\00", [26 x i8] zeroinitializer }, align 32
@kalmia_rx_fixup.EXPECTED_UNKNOWN_HEADER_1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WC\1E\00\15\02", [26 x i8] zeroinitializer }, align 32
@kalmia_rx_fixup.EXPECTED_UNKNOWN_HEADER_2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WP\0E\00\00\00", [26 x i8] zeroinitializer }, align 32
@kalmia_rx_fixup.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.3, ptr @.str.11, i8 0, i8 64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"kalmia_rx_fixup\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Received expected unknown frame header: %6phC. Package length: %i\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Received unknown frame header: %6phC. Package length: %i\0A\00", [38 x i8] zeroinitializer }, align 32
@kalmia_rx_fixup.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.3, ptr @.str.13, i8 0, i8 67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Received header: %6phC. Package length: %i\0A\00", [52 x i8] zeroinitializer }, align 32
@kalmia_rx_fixup.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.3, ptr @.str.14, i8 0, i8 71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Correct package length #%i\00", [37 x i8] zeroinitializer }, align 32
@kalmia_rx_fixup.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.3, ptr @.str.15, i8 0, i8 73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"End header: %6phC. Package length: %i\0A\00", [57 x i8] zeroinitializer }, align 32
@kalmia_tx_fixup.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.3, ptr @.str.17, i8 0, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"kalmia_tx_fixup\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Sending etherType: %02x%02x\00", [36 x i8] zeroinitializer }, align 32
@kalmia_tx_fixup.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.3, ptr @.str.18, i8 0, i8 54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Sending package with length %i and padding %i. Header: %6phC.\00", [34 x i8] zeroinitializer }, align 32
@___asan_gen_.19 = private unnamed_addr constant [14 x i8] c"kalmia_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 344, i32 26 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 354, i32 1 }
@___asan_gen_.25 = private unnamed_addr constant [9 x i8] c"products\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 335, i32 35 }
@___asan_gen_.28 = private unnamed_addr constant [12 x i8] c"kalmia_info\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 325, i32 33 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 326, i32 17 }
@___asan_gen_.34 = private unnamed_addr constant [11 x i8] c"init_msg_1\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 98, i32 20 }
@___asan_gen_.37 = private unnamed_addr constant [11 x i8] c"init_msg_2\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 101, i32 20 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 62, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 68, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 74, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 78, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 86, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 89, i32 24 }
@___asan_gen_.64 = private unnamed_addr constant [25 x i8] c"HEADER_END_OF_USB_PACKET\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 229, i32 18 }
@___asan_gen_.67 = private unnamed_addr constant [26 x i8] c"EXPECTED_UNKNOWN_HEADER_1\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 231, i32 18 }
@___asan_gen_.70 = private unnamed_addr constant [26 x i8] c"EXPECTED_UNKNOWN_HEADER_2\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 233, i32 18 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 254, i32 5 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 261, i32 6 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 268, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 284, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 292, i32 5 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 196, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.98 = private constant [28 x i8] c"../drivers/net/usb/kalmia.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 215, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author353, ptr @__UNIQUE_ID_description354, ptr @__UNIQUE_ID_file355, ptr @__UNIQUE_ID_license356, ptr @__exitcall_kalmia_driver_exit, ptr @__initcall__kmod_kalmia__352_354_kalmia_driver_init6, ptr @kalmia_driver_exit, ptr @kalmia_driver, ptr @.str, ptr @products, ptr @kalmia_info, ptr @.str.1, ptr @kalmia_init_and_get_ethernet_addr.init_msg_1, ptr @kalmia_init_and_get_ethernet_addr.init_msg_2, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @kalmia_rx_fixup.HEADER_END_OF_USB_PACKET, ptr @kalmia_rx_fixup.EXPECTED_UNKNOWN_HEADER_1, ptr @kalmia_rx_fixup.EXPECTED_UNKNOWN_HEADER_2, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kalmia_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @products to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kalmia_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kalmia_init_and_get_ethernet_addr.init_msg_1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kalmia_init_and_get_ethernet_addr.init_msg_2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kalmia_rx_fixup.HEADER_END_OF_USB_PACKET to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kalmia_rx_fixup.EXPECTED_UNKNOWN_HEADER_1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kalmia_rx_fixup.EXPECTED_UNKNOWN_HEADER_2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @kalmia_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @kalmia_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @kalmia_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_deregister(ptr noundef nonnull @kalmia_driver) #8
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
define internal i32 @kalmia_bind(ptr nocapture noundef %dev, ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  %ethernet_addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %ethernet_addr) #8
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %0 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %bInterfaceClass to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bInterfaceClass, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp.not = icmp eq i8 %3, -1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i = shl i32 %7, 8
  %or2 = or i32 %shl.i, -1073708928
  %in = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 13
  %8 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or2, ptr %in, align 4
  %9 = load i32, ptr %5, align 8
  %shl.i28 = shl i32 %9, 8
  %or5 = or i32 %shl.i28, -1073676288
  %out = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 14
  %10 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or5, ptr %out, align 4
  %status6 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 15
  %11 = ptrtoint ptr %status6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %status6, align 4
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %12 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 19
  %14 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %hard_header_len, align 2
  %add = add i16 %15, 6
  store i16 %add, ptr %hard_header_len, align 2
  %hard_mtu = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 23
  %16 = ptrtoint ptr %hard_mtu to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1400, ptr %hard_mtu, align 4
  %rx_urb_size = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 24
  %17 = ptrtoint ptr %rx_urb_size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 14000, ptr %rx_urb_size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3265, i32 noundef 28) #11
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %19 = call ptr @memcpy(ptr %call7.i.i, ptr @kalmia_init_and_get_ethernet_addr.init_msg_1, i32 12)
  %call1.i = tail call fastcc i32 @kalmia_send_init_packet(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i.i, i8 noundef zeroext 24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.not.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.not.i, label %if.end3.i, label %if.end.i.kalmia_init_and_get_ethernet_addr.exit.thread32_crit_edge

if.end.i.kalmia_init_and_get_ethernet_addr.exit.thread32_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kalmia_init_and_get_ethernet_addr.exit.thread32

if.end3.i:                                        ; preds = %if.end.i
  %20 = call ptr @memcpy(ptr %call7.i.i, ptr @kalmia_init_and_get_ethernet_addr.init_msg_2, i32 12)
  %call4.i = tail call fastcc i32 @kalmia_send_init_packet(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i.i, i8 noundef zeroext 28) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.not.i = icmp eq i32 %call4.i, 0
  br i1 %cmp5.not.i, label %if.end12, label %if.end3.i.kalmia_init_and_get_ethernet_addr.exit.thread32_crit_edge

if.end3.i.kalmia_init_and_get_ethernet_addr.exit.thread32_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kalmia_init_and_get_ethernet_addr.exit.thread32

kalmia_init_and_get_ethernet_addr.exit.thread32:  ; preds = %if.end3.i.kalmia_init_and_get_ethernet_addr.exit.thread32_crit_edge, %if.end.i.kalmia_init_and_get_ethernet_addr.exit.thread32_crit_edge
  %status.0.i.ph = phi i32 [ %call4.i, %if.end3.i.kalmia_init_and_get_ethernet_addr.exit.thread32_crit_edge ], [ %call1.i, %if.end.i.kalmia_init_and_get_ethernet_addr.exit.thread32_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end12:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %call7.i.i, i32 10
  %21 = call ptr @memcpy(ptr %ethernet_addr, ptr %add.ptr.i, i32 6)
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %22 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net, align 4
  call void @dev_addr_mod(ptr noundef %23, i32 noundef 0, ptr noundef nonnull %ethernet_addr, i32 noundef 6) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %kalmia_init_and_get_ethernet_addr.exit.thread32, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -22, %entry.cleanup_crit_edge ], [ %status.0.i.ph, %kalmia_init_and_get_ethernet_addr.exit.thread32 ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %ethernet_addr) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kalmia_rx_fixup(ptr noundef %dev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp = icmp ult i32 %1, 6
  br i1 %cmp, label %entry.cleanup156_crit_edge, label %do.body.preheader

entry.cleanup156_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup156

do.body.preheader:                                ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  br label %do.body

do.body:                                          ; preds = %do.cond152.do.body_crit_edge, %do.body.preheader
  %i.0 = phi i32 [ %inc, %do.cond152.do.body_crit_edge ], [ 0, %do.body.preheader ]
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 87, i8 %5)
  %cmp1.not = icmp eq i8 %5, 87
  br i1 %cmp1.not, label %lor.rhs, label %do.body.if.then8_crit_edge, !prof !78

do.body.if.then8_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

lor.rhs:                                          ; preds = %do.body
  %arrayidx3 = getelementptr i8, ptr %3, i32 1
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 68, i8 %7)
  %cmp5.not = icmp eq i8 %7, 68
  br i1 %cmp5.not, label %do.body34, label %lor.rhs.if.then8_crit_edge, !prof !78

lor.rhs.if.then8_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

if.then8:                                         ; preds = %lor.rhs.if.then8_crit_edge, %do.body.if.then8_crit_edge
  %bcmp193 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %3, ptr noundef nonnull dereferenceable(6) @kalmia_rx_fixup.EXPECTED_UNKNOWN_HEADER_1, i32 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp193)
  %tobool9.not = icmp eq i32 %bcmp193, 0
  br i1 %tobool9.not, label %if.then8.do.body14_crit_edge, label %lor.lhs.false

if.then8.do.body14_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

lor.lhs.false:                                    ; preds = %if.then8
  %bcmp194 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %3, ptr noundef nonnull dereferenceable(6) @kalmia_rx_fixup.EXPECTED_UNKNOWN_HEADER_2, i32 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp194)
  %tobool11.not = icmp eq i32 %bcmp194, 0
  br i1 %tobool11.not, label %lor.lhs.false.do.body14_crit_edge, label %if.else

lor.lhs.false.do.body14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

do.body14:                                        ; preds = %lor.lhs.false.do.body14_crit_edge, %if.then8.do.body14_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kalmia_rx_fixup.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kalmia_rx_fixup, %if.then23)) #8
          to label %if.end55 [label %if.then23], !srcloc !79

if.then23:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net, align 4
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %sub = add i32 %11, -6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @kalmia_rx_fixup.__UNIQUE_ID_ddebug348, ptr noundef %9, ptr noundef nonnull @.str.11, ptr noundef %3, i32 noundef %sub) #8
  br label %if.end55

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net, align 4
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %sub30 = add i32 %15, -6
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %13, ptr noundef nonnull @.str.12, ptr noundef %3, i32 noundef %sub30) #13
  br label %cleanup156

do.body34:                                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kalmia_rx_fixup.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kalmia_rx_fixup, %if.then46)) #8
          to label %if.end55 [label %if.then46], !srcloc !79

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net, align 4
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  %sub49 = add i32 %19, -6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @kalmia_rx_fixup.__UNIQUE_ID_ddebug349, ptr noundef %17, ptr noundef nonnull @.str.13, ptr noundef %3, i32 noundef %sub49) #8
  br label %if.end55

if.end55:                                         ; preds = %if.then46, %do.body34, %if.then23, %do.body14
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  %conv58 = add i32 %21, 65524
  %arrayidx59 = getelementptr i8, ptr %3, i32 2
  %22 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %arrayidx59, align 1
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #8
  %call61 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 6) #8
  %conv62 = and i32 %conv58, 65535
  %conv63 = zext i16 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv62, i32 %conv63)
  %cmp64 = icmp ult i32 %conv62, %conv63
  br i1 %cmp64, label %if.then66, label %do.body71

if.then66:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %conv68 = add i32 %21, 65530
  %.pre = and i32 %conv68, 65535
  br label %if.end140.thread

do.body71:                                        ; preds = %if.end55
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kalmia_rx_fixup.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kalmia_rx_fixup, %if.then83)) #8
          to label %do.end90 [label %if.then83], !srcloc !79

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %net, align 4
  %add85 = add i32 %i.0, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @kalmia_rx_fixup.__UNIQUE_ID_ddebug350, ptr noundef %26, ptr noundef nonnull @.str.14, i32 noundef %add85) #8
  br label %do.end90

do.end90:                                         ; preds = %if.then83, %do.body71
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %28, i32 %conv63
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %add.ptr, ptr noundef nonnull dereferenceable(6) @kalmia_rx_fixup.HEADER_END_OF_USB_PACKET, i32 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp94 = icmp eq i32 %bcmp, 0
  br i1 %cmp94, label %do.end90.if.end140.thread_crit_edge, label %if.then97

do.end90.if.end140.thread_crit_edge:              ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end140.thread

if.then97:                                        ; preds = %do.end90
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kalmia_rx_fixup.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kalmia_rx_fixup, %if.then114)) #8
          to label %if.else127 [label %if.then114], !srcloc !79

if.then114:                                       ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net, align 4
  %31 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len, align 4
  %sub117 = add i32 %32, -6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @kalmia_rx_fixup.__UNIQUE_ID_ddebug351, ptr noundef %30, ptr noundef nonnull @.str.15, ptr noundef %add.ptr, i32 noundef %sub117) #8
  br label %if.else127

if.end140.thread:                                 ; preds = %do.end90.if.end140.thread_crit_edge, %if.then66
  %conv141215.pre-phi = phi i32 [ %.pre, %if.then66 ], [ %conv63, %do.end90.if.end140.thread_crit_edge ]
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %conv141215.pre-phi) #8
  br label %cleanup156

if.else127:                                       ; preds = %if.then114, %if.then97
  %call128 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #8
  %tobool129.not = icmp eq ptr %call128, null
  br i1 %tobool129.not, label %if.else127.cleanup156_crit_edge, label %do.cond152, !prof !80

if.else127.cleanup156_crit_edge:                  ; preds = %if.else127
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup156

do.cond152:                                       ; preds = %if.else127
  tail call void @skb_trim(ptr noundef nonnull %call128, i32 noundef %conv63) #8
  tail call void @usbnet_skb_return(ptr noundef %dev, ptr noundef nonnull %call128) #8
  %call146 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %conv63) #8
  %inc = add i32 %i.0, 1
  %33 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len, align 4
  %tobool154.not = icmp eq i32 %34, 0
  br i1 %tobool154.not, label %do.cond152.cleanup156_crit_edge, label %do.cond152.do.body_crit_edge

do.cond152.do.body_crit_edge:                     ; preds = %do.cond152
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.cond152.cleanup156_crit_edge:                  ; preds = %do.cond152
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup156

cleanup156:                                       ; preds = %do.cond152.cleanup156_crit_edge, %if.else127.cleanup156_crit_edge, %if.end140.thread, %if.else, %entry.cleanup156_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup156_crit_edge ], [ 1, %if.end140.thread ], [ 0, %if.else ], [ 0, %if.else127.cleanup156_crit_edge ], [ 1, %do.cond152.cleanup156_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @kalmia_tx_fixup(ptr nocapture noundef readonly %dev, ptr noundef %skb, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cloned.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %0 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %skb_cloned.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

skb_cloned.exit:                                  ; preds = %entry
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %1 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %end.i.i, align 4
  %dataref.i = getelementptr inbounds %struct.skb_shared_info, ptr %2, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i, i32 noundef 4) #8
  %3 = ptrtoint ptr %dataref.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %dataref.i, align 4
  %and.i = and i32 %4, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1
  br i1 %cmp.i.not, label %skb_cloned.exit.if.then_crit_edge, label %skb_cloned.exit.if.end11_crit_edge

skb_cloned.exit.if.end11_crit_edge:               ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

skb_cloned.exit.if.then_crit_edge:                ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %skb_cloned.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %9 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i = icmp eq i32 %10, 0
  br i1 %tobool.i.not.i, label %skb_tailroom.exit, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

skb_tailroom.exit:                                ; preds = %if.then
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %11 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %13 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i111 = ptrtoint ptr %12 to i32
  %sub.ptr.rhs.cast.i112 = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i113 = sub i32 %sub.ptr.lhs.cast.i111, %sub.ptr.rhs.cast.i112
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub.i113)
  %cmp = icmp sgt i32 %sub.ptr.sub.i113, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub.ptr.sub.i)
  %cmp3 = icmp sgt i32 %sub.ptr.sub.i, 5
  %or.cond = select i1 %cmp, i1 %cmp3, i1 false
  br i1 %or.cond, label %skb_tailroom.exit.done_crit_edge, label %skb_tailroom.exit.if.end_crit_edge

skb_tailroom.exit.if.end_crit_edge:               ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

skb_tailroom.exit.done_crit_edge:                 ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end:                                           ; preds = %skb_tailroom.exit.if.end_crit_edge, %if.then.if.end_crit_edge
  %cond.i121 = phi i32 [ %sub.ptr.sub.i113, %skb_tailroom.exit.if.end_crit_edge ], [ 0, %if.then.if.end_crit_edge ]
  %add = add i32 %cond.i121, %sub.ptr.sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %add)
  %cmp5 = icmp sgt i32 %add, 10
  br i1 %cmp5, label %if.then6, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %8, i32 6
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %17 = call ptr @memmove(ptr %add.ptr, ptr %6, i32 %16)
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr, ptr %data.i, align 4
  %19 = load i32, ptr %len, align 4
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %19
  %tail.i115 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %20 = ptrtoint ptr %tail.i115 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr.i, ptr %tail.i115, align 8
  br label %done

if.end11:                                         ; preds = %if.end.if.end11_crit_edge, %skb_cloned.exit.if.end11_crit_edge
  %call12 = tail call ptr @skb_copy_expand(ptr noundef %skb, i32 noundef 6, i32 noundef 4, i32 noundef %flags) #8
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end11.cleanup69_crit_edge, label %if.end15

if.end11.cleanup69_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup69

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #8
  br label %done

done:                                             ; preds = %if.end15, %if.then6, %skb_tailroom.exit.done_crit_edge
  %skb.addr.0 = phi ptr [ %call12, %if.end15 ], [ %skb, %if.then6 ], [ %skb, %skb_tailroom.exit.done_crit_edge ]
  %call16 = tail call ptr @skb_push(ptr noundef %skb.addr.0, i32 noundef 6) #8
  %arrayidx = getelementptr i8, ptr %call16, i32 18
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 1
  %arrayidx17 = getelementptr i8, ptr %call16, i32 19
  %23 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx17, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kalmia_tx_fixup.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kalmia_tx_fixup, %if.then23)) #8
          to label %do.end27 [label %if.then23], !srcloc !79

if.then23:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #10
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %25 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %net, align 4
  %conv = zext i8 %22 to i32
  %conv24 = zext i8 %24 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @kalmia_tx_fixup.__UNIQUE_ID_ddebug346, ptr noundef %26, ptr noundef nonnull @.str.17, i32 noundef %conv, i32 noundef %conv24) #8
  br label %do.end27

do.end27:                                         ; preds = %if.then23, %done
  %27 = ptrtoint ptr %call16 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 87, ptr %call16, align 1
  %arrayidx29 = getelementptr i8, ptr %call16, i32 1
  %28 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 68, ptr %arrayidx29, align 1
  %len30 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 6
  %29 = ptrtoint ptr %len30 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len30, align 4
  %31 = trunc i32 %30 to i16
  %conv31 = add i16 %31, -6
  %arrayidx32 = getelementptr i8, ptr %call16, i32 2
  %32 = tail call i16 @llvm.bswap.i16(i16 %conv31) #8
  %33 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 %32, ptr %arrayidx32, align 1
  %arrayidx33 = getelementptr i8, ptr %call16, i32 4
  %34 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %22, ptr %arrayidx33, align 1
  %arrayidx34 = getelementptr i8, ptr %call16, i32 5
  %35 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %24, ptr %arrayidx34, align 1
  %36 = ptrtoint ptr %len30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len30, align 4
  %conv36 = and i32 %37, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv36)
  %cmp38.not = icmp eq i32 %conv36, 0
  br i1 %cmp38.not, label %do.end27.do.body48_crit_edge, label %if.then40

do.end27.do.body48_crit_edge:                     ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body48

if.then40:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #10
  %sub42 = sub nuw nsw i32 4, %conv36
  %call.i = tail call ptr @skb_put(ptr noundef %skb.addr.0, i32 noundef %sub42) #8
  %38 = call ptr @memset(ptr %call.i, i32 0, i32 %sub42)
  br label %do.body48

do.body48:                                        ; preds = %if.then40, %do.end27.do.body48_crit_edge
  %padlen.0 = phi i32 [ %sub42, %if.then40 ], [ 0, %do.end27.do.body48_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kalmia_tx_fixup.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kalmia_tx_fixup, %if.then60)) #8
          to label %cleanup69 [label %if.then60], !srcloc !79

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #10
  %net61 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %39 = ptrtoint ptr %net61 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %net61, align 4
  %conv62 = zext i16 %conv31 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @kalmia_tx_fixup.__UNIQUE_ID_ddebug347, ptr noundef %40, ptr noundef nonnull @.str.18, i32 noundef %conv62, i32 noundef %padlen.0, ptr noundef %call16) #8
  br label %cleanup69

cleanup69:                                        ; preds = %if.then60, %do.body48, %if.end11.cleanup69_crit_edge
  %retval.0 = phi ptr [ null, %if.end11.cleanup69_crit_edge ], [ %skb.addr.0, %if.then60 ], [ %skb.addr.0, %do.body48 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kalmia_send_init_packet(ptr nocapture noundef readonly %dev, ptr noundef %init_msg, ptr noundef %buffer, i8 noundef zeroext %expected_len) unnamed_addr #2 align 64 {
entry:
  %act_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %act_len) #8
  %0 = ptrtoint ptr %act_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %act_len, align 4, !annotation !81
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kalmia_send_init_packet.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kalmia_send_init_packet, %if.then)) #8
          to label %do.end5 [label %if.then], !srcloc !79

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %1 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @kalmia_send_init_packet.__UNIQUE_ID_ddebug344, ptr noundef %2, ptr noundef nonnull @.str.4) #8
  br label %do.end5

do.end5:                                          ; preds = %if.then, %entry
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i = shl i32 %6, 8
  %or = or i32 %shl.i, -1073676288
  %call8 = call i32 @usb_bulk_msg(ptr noundef %4, i32 noundef %or, ptr noundef %init_msg, i32 noundef 12, ptr noundef nonnull %act_len, i32 noundef 10000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp.not = icmp eq i32 %call8, 0
  br i1 %cmp.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  %net11 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %7 = ptrtoint ptr %net11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net11, align 4
  %9 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %act_len, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull @.str.5, i32 noundef %call8, i32 noundef %10) #13
  br label %cleanup

if.else:                                          ; preds = %do.end5
  %11 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %act_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %12)
  %cmp13.not = icmp eq i32 %12, 12
  br i1 %cmp13.not, label %do.body19, label %if.then15

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %net16 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %13 = ptrtoint ptr %net16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net16, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str.6, i32 noundef %12) #13
  br label %if.end39

do.body19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kalmia_send_init_packet.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kalmia_send_init_packet, %if.then31)) #8
          to label %if.end39 [label %if.then31], !srcloc !79

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  %net32 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %15 = ptrtoint ptr %net32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net32, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @kalmia_send_init_packet.__UNIQUE_ID_ddebug345, ptr noundef %16, ptr noundef nonnull @.str.7) #8
  br label %if.end39

if.end39:                                         ; preds = %if.then31, %do.body19, %if.then15
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i4 = shl i32 %20, 8
  %or44 = or i32 %shl.i4, -1069514624
  %conv45 = zext i8 %expected_len to i32
  %call46 = call i32 @usb_bulk_msg(ptr noundef %18, i32 noundef %or44, ptr noundef %buffer, i32 noundef %conv45, ptr noundef nonnull %act_len, i32 noundef 10000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47.not = icmp eq i32 %call46, 0
  br i1 %cmp47.not, label %if.else51, label %if.then49

if.then49:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %net50 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %21 = ptrtoint ptr %net50 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net50, align 4
  %23 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %act_len, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %22, ptr noundef nonnull @.str.8, i32 noundef %call46, i32 noundef %24) #13
  br label %cleanup

if.else51:                                        ; preds = %if.end39
  %25 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %act_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %conv45)
  %cmp53.not = icmp eq i32 %26, %conv45
  br i1 %cmp53.not, label %if.else51.cleanup_crit_edge, label %if.then55

if.else51.cleanup_crit_edge:                      ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then55:                                        ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #10
  %net56 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %27 = ptrtoint ptr %net56 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net56, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %28, ptr noundef nonnull @.str.9, i32 noundef %26) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %if.else51.cleanup_crit_edge, %if.then49, %if.then10
  %retval.0 = phi i32 [ %call8, %if.then10 ], [ 0, %if.else51.cleanup_crit_edge ], [ 0, %if.then55 ], [ %call46, %if.then49 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %act_len) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_skb_return(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy_expand(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nobuiltin }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !28, !29, !30, !32, !34, !36, !37, !39, !41, !43, !45, !47, !49, !50, !51, !53, !55, !56, !58, !59, !61, !62, !64, !65, !66, !68}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__initcall__kmod_kalmia__352_354_kalmia_driver_init6, !1, !"__initcall__kmod_kalmia__352_354_kalmia_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/usb/kalmia.c", i32 354, i32 1}
!2 = !{ptr @__exitcall_kalmia_driver_exit, !1, !"__exitcall_kalmia_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author353, !4, !"__UNIQUE_ID_author353", i1 false, i1 false}
!4 = !{!"../drivers/net/usb/kalmia.c", i32 356, i32 1}
!5 = !{ptr @__UNIQUE_ID_description354, !6, !"__UNIQUE_ID_description354", i1 false, i1 false}
!6 = !{!"../drivers/net/usb/kalmia.c", i32 357, i32 1}
!7 = !{ptr @__UNIQUE_ID_file355, !8, !"__UNIQUE_ID_file355", i1 false, i1 false}
!8 = !{!"../drivers/net/usb/kalmia.c", i32 358, i32 1}
!9 = !{ptr @__UNIQUE_ID_license356, !8, !"__UNIQUE_ID_license356", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @kalmia_driver, !12, !"kalmia_driver", i1 false, i1 false}
!12 = !{!"../drivers/net/usb/kalmia.c", i32 344, i32 26}
!13 = !{ptr @products, !14, !"products", i1 false, i1 false}
!14 = !{!"../drivers/net/usb/kalmia.c", i32 335, i32 35}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/usb/kalmia.c", i32 326, i32 17}
!17 = !{ptr @kalmia_info, !18, !"kalmia_info", i1 false, i1 false}
!18 = !{!"../drivers/net/usb/kalmia.c", i32 325, i32 33}
!19 = !{ptr @kalmia_init_and_get_ethernet_addr.init_msg_1, !20, !"init_msg_1", i1 false, i1 false}
!20 = !{!"../drivers/net/usb/kalmia.c", i32 98, i32 20}
!21 = !{ptr @kalmia_init_and_get_ethernet_addr.init_msg_2, !22, !"init_msg_2", i1 false, i1 false}
!22 = !{!"../drivers/net/usb/kalmia.c", i32 101, i32 20}
!23 = distinct !{null, !24, !"buflen", i1 false, i1 false}
!24 = !{!"../drivers/net/usb/kalmia.c", i32 104, i32 19}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/usb/kalmia.c", i32 62, i32 2}
!27 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @kalmia_send_init_packet.__UNIQUE_ID_ddebug344, !26, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/usb/kalmia.c", i32 68, i32 4}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/usb/kalmia.c", i32 74, i32 4}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/usb/kalmia.c", i32 78, i32 3}
!36 = !{ptr @kalmia_send_init_packet.__UNIQUE_ID_ddebug345, !35, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/usb/kalmia.c", i32 86, i32 4}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/usb/kalmia.c", i32 89, i32 24}
!41 = !{ptr @kalmia_rx_fixup.HEADER_END_OF_USB_PACKET, !42, !"HEADER_END_OF_USB_PACKET", i1 false, i1 false}
!42 = !{!"../drivers/net/usb/kalmia.c", i32 229, i32 18}
!43 = !{ptr @kalmia_rx_fixup.EXPECTED_UNKNOWN_HEADER_1, !44, !"EXPECTED_UNKNOWN_HEADER_1", i1 false, i1 false}
!44 = !{!"../drivers/net/usb/kalmia.c", i32 231, i32 18}
!45 = !{ptr @kalmia_rx_fixup.EXPECTED_UNKNOWN_HEADER_2, !46, !"EXPECTED_UNKNOWN_HEADER_2", i1 false, i1 false}
!46 = !{!"../drivers/net/usb/kalmia.c", i32 233, i32 18}
!47 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/usb/kalmia.c", i32 254, i32 5}
!49 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @kalmia_rx_fixup.__UNIQUE_ID_ddebug348, !48, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!51 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/usb/kalmia.c", i32 261, i32 6}
!53 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/usb/kalmia.c", i32 268, i32 4}
!55 = !{ptr @kalmia_rx_fixup.__UNIQUE_ID_ddebug349, !54, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!56 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/usb/kalmia.c", i32 284, i32 4}
!58 = !{ptr @kalmia_rx_fixup.__UNIQUE_ID_ddebug350, !57, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!59 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/usb/kalmia.c", i32 292, i32 5}
!61 = !{ptr @kalmia_rx_fixup.__UNIQUE_ID_ddebug351, !60, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!62 = !{ptr @.str.16, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/usb/kalmia.c", i32 196, i32 2}
!64 = !{ptr @.str.17, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @kalmia_tx_fixup.__UNIQUE_ID_ddebug346, !63, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!66 = !{ptr @.str.18, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/usb/kalmia.c", i32 215, i32 2}
!68 = !{ptr @kalmia_tx_fixup.__UNIQUE_ID_ddebug347, !67, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{!"branch_weights", i32 2000, i32 1}
!79 = !{i64 2148961193, i64 2148961198, i64 2148961211, i64 2148961255, i64 2148961289, i64 2148961310}
!80 = !{!"branch_weights", i32 1, i32 2000}
!81 = !{!"auto-init"}
