; ModuleID = '/llk/IR_all_yes/drivers/net/usb/zaurus.c_pt.bc'
source_filename = "../drivers/net/usb/zaurus.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_cdc_mdlm_desc = type <{ i8, i8, i8, i16, [16 x i8] }>
%struct.usb_cdc_mdlm_detail_desc = type { i8, i8, i8, i8, [0 x i8] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }

@__initcall__kmod_zaurus__348_381_zaurus_driver_init6 = internal global ptr @zaurus_driver_init, section ".initcall6.init", align 4
@zaurus_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @usbnet_probe, ptr @usbnet_disconnect, ptr null, ptr @usbnet_suspend, ptr @usbnet_resume, ptr null, ptr null, ptr null, ptr @products, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 32 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_zaurus_driver_exit = internal global ptr @zaurus_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author349 = internal constant [43 x i8] c"zaurus.author=Pavel Machek, David Brownell\00", section ".modinfo", align 1
@__UNIQUE_ID_description350 = internal constant [61 x i8] c"zaurus.description=Sharp Zaurus PDA, and compatible products\00", section ".modinfo", align 1
@__UNIQUE_ID_file351 = internal constant [35 x i8] c"zaurus.file=drivers/net/usb/zaurus\00", section ".modinfo", align 1
@__UNIQUE_ID_license352 = internal constant [19 x i8] c"zaurus.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"zaurus\00", [25 x i8] zeroinitializer }, align 32
@products = internal constant { [14 x %struct.usb_device_id], [80 x i8] } { [14 x %struct.usb_device_id] [%struct.usb_device_id { i16 899, i16 1245, i16 -32764, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @zaurus_sl5x00_info to i32) }, %struct.usb_device_id { i16 899, i16 1245, i16 -32763, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @zaurus_pxa_info to i32) }, %struct.usb_device_id { i16 899, i16 1245, i16 -32762, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @zaurus_pxa_info to i32) }, %struct.usb_device_id { i16 899, i16 1245, i16 -32761, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @zaurus_pxa_info to i32) }, %struct.usb_device_id { i16 899, i16 1245, i16 -28623, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @zaurus_pxa_info to i32) }, %struct.usb_device_id { i16 899, i16 1245, i16 -28623, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 10, i8 0, i8 0, i32 ptrtoint (ptr @bogus_mdlm_info to i32) }, %struct.usb_device_id { i16 899, i16 1245, i16 -28622, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @zaurus_pxa_info to i32) }, %struct.usb_device_id { i16 899, i16 1245, i16 -28622, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 10, i8 0, i8 0, i32 ptrtoint (ptr @bogus_mdlm_info to i32) }, %struct.usb_device_id { i16 899, i16 1245, i16 -28592, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @zaurus_pxa_info to i32) }, %struct.usb_device_id { i16 899, i16 8888, i16 24615, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 10, i8 0, i8 0, i32 ptrtoint (ptr @bogus_mdlm_info to i32) }, %struct.usb_device_id { i16 899, i16 8888, i16 25637, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 10, i8 0, i8 0, i32 ptrtoint (ptr @bogus_mdlm_info to i32) }, %struct.usb_device_id { i16 899, i16 1972, i16 3842, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @olympus_mxl_info to i32) }, %struct.usb_device_id { i16 899, i16 1133, i16 -16097, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 10, i8 0, i8 0, i32 ptrtoint (ptr @bogus_mdlm_info to i32) }, %struct.usb_device_id zeroinitializer], [80 x i8] zeroinitializer }, align 32
@zaurus_sl5x00_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.1, i32 4100, ptr @zaurus_bind, ptr @usbnet_cdc_unbind, ptr null, ptr null, ptr @always_connected, ptr null, ptr null, ptr null, ptr null, ptr @zaurus_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@zaurus_pxa_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.2, i32 4100, ptr @zaurus_bind, ptr @usbnet_cdc_unbind, ptr null, ptr null, ptr @always_connected, ptr null, ptr null, ptr null, ptr null, ptr @zaurus_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@bogus_mdlm_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.3, i32 4100, ptr @blan_mdlm_bind, ptr null, ptr null, ptr null, ptr @always_connected, ptr null, ptr null, ptr null, ptr null, ptr @zaurus_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@olympus_mxl_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.18, i32 4100, ptr @zaurus_bind, ptr @usbnet_cdc_unbind, ptr null, ptr null, ptr @always_connected, ptr null, ptr null, ptr null, ptr null, ptr @zaurus_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Sharp Zaurus SL-5x00\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Sharp Zaurus, PXA-2xx based\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pseudo-MDLM (BLAN) device\00", [38 x i8] zeroinitializer }, align 32
@blan_mdlm_bind.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"blan_mdlm_bind\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/net/usb/zaurus.c\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"extra MDLM\0A\00", [20 x i8] zeroinitializer }, align 32
@blan_mdlm_bind.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.7, i8 0, i8 39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MDLM len %u\0A\00", [19 x i8] zeroinitializer }, align 32
@blan_guid = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"t\F0=\BD\1E\C1Dp\A3gq4\C9\F5T7", [16 x i8] zeroinitializer }, align 32
@safe_guid = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"]4\CFf\11\18\11\D6\A2\1A\00\01\02\CA\9A\7F", [16 x i8] zeroinitializer }, align 32
@blan_mdlm_bind.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.8, i8 0, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MDLM guid\0A\00", [21 x i8] zeroinitializer }, align 32
@blan_mdlm_bind.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.9, i8 0, i8 43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"extra MDLM detail\0A\00", [45 x i8] zeroinitializer }, align 32
@blan_mdlm_bind.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.10, i8 0, i8 52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bad MDLM detail, %d %d %d\0A\00", [37 x i8] zeroinitializer }, align 32
@blan_mdlm_bind.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.11, i8 0, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"missing cdc mdlm %s%sdescriptor\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"func \00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"detail \00", [24 x i8] zeroinitializer }, align 32
@blan_mdlm_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 241, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unsupported MDLM descriptors\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@blan_mdlm_bind._entry_ptr = internal global ptr @blan_mdlm_bind._entry, section ".printk_index", align 4
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Olympus R1000\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 18, i64 19]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.20 = private unnamed_addr constant [14 x i8] c"zaurus_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 371, i32 26 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 381, i32 1 }
@___asan_gen_.26 = private unnamed_addr constant [9 x i8] c"products\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 253, i32 35 }
@___asan_gen_.29 = private unnamed_addr constant [19 x i8] c"zaurus_sl5x00_info\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 89, i32 33 }
@___asan_gen_.32 = private unnamed_addr constant [16 x i8] c"zaurus_pxa_info\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 99, i32 33 }
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"bogus_mdlm_info\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 245, i32 33 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"olympus_mxl_info\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 109, i32 33 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 90, i32 17 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 100, i32 17 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 246, i32 17 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 153, i32 5 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 158, i32 5 }
@___asan_gen_.62 = private unnamed_addr constant [10 x i8] c"blan_guid\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 131, i32 17 }
@___asan_gen_.65 = private unnamed_addr constant [10 x i8] c"safe_guid\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 127, i32 17 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 166, i32 5 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 172, i32 5 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 207, i32 5 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 227, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 241, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.102 = private constant [28 x i8] c"../drivers/net/usb/zaurus.c\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 110, i32 17 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_author349, ptr @__UNIQUE_ID_description350, ptr @__UNIQUE_ID_file351, ptr @__UNIQUE_ID_license352, ptr @__exitcall_zaurus_driver_exit, ptr @__initcall__kmod_zaurus__348_381_zaurus_driver_init6, ptr @blan_mdlm_bind._entry, ptr @blan_mdlm_bind._entry_ptr, ptr @zaurus_driver_exit, ptr @zaurus_driver, ptr @.str, ptr @products, ptr @zaurus_sl5x00_info, ptr @zaurus_pxa_info, ptr @bogus_mdlm_info, ptr @olympus_mxl_info, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @blan_guid, ptr @safe_guid, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zaurus_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @products to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zaurus_sl5x00_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zaurus_pxa_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bogus_mdlm_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olympus_mxl_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blan_guid to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safe_guid to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blan_mdlm_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @zaurus_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @zaurus_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @zaurus_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_deregister(ptr noundef nonnull @zaurus_driver) #7
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
define internal i32 @zaurus_bind(ptr noundef %dev, ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hard_header_len, align 2
  %add = add i16 %3, 6
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
  %call = tail call i32 @usbnet_generic_cdc_bind(ptr noundef %dev, ptr noundef %intf) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_cdc_unbind(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @always_connected(ptr nocapture noundef readnone %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @zaurus_tx_fixup(ptr nocapture noundef readnone %dev, ptr noundef %skb, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cloned.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %0 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %skb_cloned.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

skb_cloned.exit:                                  ; preds = %entry
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %1 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %end.i.i, align 4
  %dataref.i = getelementptr inbounds %struct.skb_shared_info, ptr %2, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i, i32 noundef 4) #7
  %3 = ptrtoint ptr %dataref.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %dataref.i, align 4
  %and.i = and i32 %4, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1
  br i1 %cmp.i.not, label %skb_cloned.exit.if.then_crit_edge, label %skb_cloned.exit.if.end3_crit_edge

skb_cloned.exit.if.end3_crit_edge:                ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

skb_cloned.exit.if.then_crit_edge:                ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %skb_cloned.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %5 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i = icmp eq i32 %6, 0
  br i1 %tobool.i.not.i, label %skb_tailroom.exit, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

skb_tailroom.exit:                                ; preds = %if.then
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %7 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %9 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %8 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub.ptr.sub.i)
  %cmp = icmp sgt i32 %sub.ptr.sub.i, 5
  br i1 %cmp, label %skb_tailroom.exit.done_crit_edge, label %skb_tailroom.exit.if.end3_crit_edge

skb_tailroom.exit.if.end3_crit_edge:              ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

skb_tailroom.exit.done_crit_edge:                 ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end3:                                          ; preds = %skb_tailroom.exit.if.end3_crit_edge, %if.then.if.end3_crit_edge, %skb_cloned.exit.if.end3_crit_edge
  %call5 = tail call ptr @skb_copy_expand(ptr noundef %skb, i32 noundef 0, i32 noundef 6, i32 noundef %flags) #7
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #7
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end3.cleanup18_crit_edge, label %if.end3.done_crit_edge

if.end3.done_crit_edge:                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end3.cleanup18_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup18

done:                                             ; preds = %if.end3.done_crit_edge, %skb_tailroom.exit.done_crit_edge
  %skb.addr.0 = phi ptr [ %skb, %skb_tailroom.exit.done_crit_edge ], [ %call5, %if.end3.done_crit_edge ]
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 19
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 6
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  %call8 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %12, i32 noundef %14) #10
  %neg = xor i32 %call8, -1
  %conv = trunc i32 %neg to i8
  %call.i = tail call ptr @skb_put(ptr noundef %skb.addr.0, i32 noundef 1) #7
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %call.i, align 1
  %shr = lshr i32 %neg, 8
  %conv10 = trunc i32 %shr to i8
  %call.i36 = tail call ptr @skb_put(ptr noundef %skb.addr.0, i32 noundef 1) #7
  %16 = ptrtoint ptr %call.i36 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv10, ptr %call.i36, align 1
  %shr11 = lshr i32 %neg, 16
  %conv13 = trunc i32 %shr11 to i8
  %call.i37 = tail call ptr @skb_put(ptr noundef %skb.addr.0, i32 noundef 1) #7
  %17 = ptrtoint ptr %call.i37 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv13, ptr %call.i37, align 1
  %shr14 = lshr i32 %neg, 24
  %conv16 = trunc i32 %shr14 to i8
  %call.i38 = tail call ptr @skb_put(ptr noundef %skb.addr.0, i32 noundef 1) #7
  %18 = ptrtoint ptr %call.i38 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv16, ptr %call.i38, align 1
  br label %cleanup18

cleanup18:                                        ; preds = %done, %if.end3.cleanup18_crit_edge
  %retval.0 = phi ptr [ %skb.addr.0, %done ], [ null, %if.end3.cleanup18_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_generic_cdc_bind(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy_expand(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blan_mdlm_bind(ptr noundef %dev, ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %0 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_altsetting, align 4
  %extralen = getelementptr inbounds %struct.usb_host_interface, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %extralen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %extralen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp245 = icmp sgt i32 %3, 3
  br i1 %cmp245, label %while.body.lr.ph, label %entry.do.body144_crit_edge

entry.do.body144_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body144

while.body.lr.ph:                                 ; preds = %entry
  %extra = getelementptr inbounds %struct.usb_host_interface, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %extra, align 4
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %rx_urb_size = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 24
  br label %while.body

while.body:                                       ; preds = %next_desc.while.body_crit_edge, %while.body.lr.ph
  %buf.0249 = phi ptr [ %5, %while.body.lr.ph ], [ %add.ptr, %next_desc.while.body_crit_edge ]
  %len.0248 = phi i32 [ %3, %while.body.lr.ph ], [ %sub, %next_desc.while.body_crit_edge ]
  %desc.0247 = phi ptr [ null, %while.body.lr.ph ], [ %desc.1, %next_desc.while.body_crit_edge ]
  %detail.0246 = phi ptr [ null, %while.body.lr.ph ], [ %detail.1, %next_desc.while.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buf.0249, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %7)
  %cmp2.not = icmp eq i8 %7, 36
  br i1 %cmp2.not, label %if.end, label %while.body.next_desc_crit_edge

while.body.next_desc_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %next_desc

if.end:                                           ; preds = %while.body
  %arrayidx4 = getelementptr i8, ptr %buf.0249, i32 2
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx4, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %9, label %if.end.next_desc_crit_edge [
    i8 18, label %sw.bb
    i8 19, label %sw.bb62
  ]

if.end.next_desc_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %next_desc

sw.bb:                                            ; preds = %if.end
  %tobool.not = icmp eq ptr %desc.0247, null
  br i1 %tobool.not, label %if.end13, label %do.body

do.body:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @blan_mdlm_bind.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@blan_mdlm_bind, %if.then10)) #7
          to label %do.end168 [label %if.then10], !srcloc !73

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev11 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @blan_mdlm_bind.__UNIQUE_ID_ddebug342, ptr noundef %dev11, ptr noundef nonnull @.str.6) #7
  br label %do.end168

if.end13:                                         ; preds = %sw.bb
  %11 = ptrtoint ptr %buf.0249 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %buf.0249, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %12)
  %cmp15.not = icmp eq i8 %12, 21
  br i1 %cmp15.not, label %if.end37, label %do.body18

do.body18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @blan_mdlm_bind.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@blan_mdlm_bind, %if.then30)) #7
          to label %do.end168 [label %if.then30], !srcloc !73

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #9
  %dev31 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %13 = ptrtoint ptr %buf.0249 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %buf.0249, align 1
  %conv33 = zext i8 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @blan_mdlm_bind.__UNIQUE_ID_ddebug343, ptr noundef %dev31, ptr noundef nonnull @.str.7, i32 noundef %conv33) #7
  br label %do.end168

if.end37:                                         ; preds = %if.end13
  %bGUID = getelementptr inbounds %struct.usb_cdc_mdlm_desc, ptr %buf.0249, i32 0, i32 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %bGUID, ptr noundef nonnull dereferenceable(16) @blan_guid, i32 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool39.not = icmp eq i32 %bcmp, 0
  br i1 %tobool39.not, label %if.end37.next_desc_crit_edge, label %land.lhs.true

if.end37.next_desc_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %next_desc

land.lhs.true:                                    ; preds = %if.end37
  %bcmp208 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %bGUID, ptr noundef nonnull dereferenceable(16) @safe_guid, i32 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp208)
  %tobool42.not = icmp eq i32 %bcmp208, 0
  br i1 %tobool42.not, label %land.lhs.true.next_desc_crit_edge, label %do.body44

land.lhs.true.next_desc_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %next_desc

do.body44:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @blan_mdlm_bind.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@blan_mdlm_bind, %if.then56)) #7
          to label %do.end168 [label %if.then56], !srcloc !73

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #9
  %dev57 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @blan_mdlm_bind.__UNIQUE_ID_ddebug344, ptr noundef %dev57, ptr noundef nonnull @.str.8) #7
  br label %do.end168

sw.bb62:                                          ; preds = %if.end
  %tobool63.not = icmp eq ptr %detail.0246, null
  br i1 %tobool63.not, label %if.end82, label %do.body65

do.body65:                                        ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @blan_mdlm_bind.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@blan_mdlm_bind, %if.then77)) #7
          to label %do.end168 [label %if.then77], !srcloc !73

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #9
  %dev78 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @blan_mdlm_bind.__UNIQUE_ID_ddebug345, ptr noundef %dev78, ptr noundef nonnull @.str.9) #7
  br label %do.end168

if.end82:                                         ; preds = %sw.bb62
  %bGuidDescriptorType = getelementptr inbounds %struct.usb_cdc_mdlm_detail_desc, ptr %buf.0249, i32 0, i32 3
  %15 = ptrtoint ptr %bGuidDescriptorType to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bGuidDescriptorType, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %16, label %if.end82.do.body103_crit_edge [
    i8 0, label %sw.bb84
    i8 1, label %sw.bb91
  ]

if.end82.do.body103_crit_edge:                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body103

sw.bb84:                                          ; preds = %if.end82
  %18 = ptrtoint ptr %buf.0249 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %buf.0249, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %19)
  %cmp87.not = icmp eq i8 %19, 6
  br i1 %cmp87.not, label %sw.bb84.sw.epilog_crit_edge, label %sw.bb84.do.body103_crit_edge

sw.bb84.do.body103_crit_edge:                     ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body103

sw.bb84.sw.epilog_crit_edge:                      ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb91:                                          ; preds = %if.end82
  %20 = ptrtoint ptr %buf.0249 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %buf.0249, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %21)
  %cmp94.not = icmp eq i8 %21, 7
  br i1 %cmp94.not, label %sw.bb91.sw.epilog_crit_edge, label %sw.bb91.do.body103_crit_edge

sw.bb91.do.body103_crit_edge:                     ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body103

sw.bb91.sw.epilog_crit_edge:                      ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb91.sw.epilog_crit_edge, %sw.bb84.sw.epilog_crit_edge
  %arrayidx98 = getelementptr %struct.usb_cdc_mdlm_detail_desc, ptr %buf.0249, i32 1, i32 1
  %22 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx98, align 1
  %24 = and i8 %23, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp100.not = icmp eq i8 %24, 1
  br i1 %cmp100.not, label %if.end128, label %sw.epilog.do.body103_crit_edge

sw.epilog.do.body103_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body103

do.body103:                                       ; preds = %sw.epilog.do.body103_crit_edge, %sw.bb91.do.body103_crit_edge, %sw.bb84.do.body103_crit_edge, %if.end82.do.body103_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @blan_mdlm_bind.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@blan_mdlm_bind, %if.then115)) #7
          to label %do.end168 [label %if.then115], !srcloc !73

if.then115:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #9
  %dev116 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %25 = ptrtoint ptr %buf.0249 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %buf.0249, align 1
  %conv118 = zext i8 %26 to i32
  %bDetailData119 = getelementptr inbounds %struct.usb_cdc_mdlm_detail_desc, ptr %buf.0249, i32 0, i32 4
  %27 = ptrtoint ptr %bDetailData119 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bDetailData119, align 1
  %conv121 = zext i8 %28 to i32
  %arrayidx123 = getelementptr %struct.usb_cdc_mdlm_detail_desc, ptr %buf.0249, i32 1, i32 2
  %29 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx123, align 1
  %conv124 = zext i8 %30 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @blan_mdlm_bind.__UNIQUE_ID_ddebug346, ptr noundef %dev116, ptr noundef nonnull @.str.10, i32 noundef %conv118, i32 noundef %conv121, i32 noundef %conv124) #7
  br label %do.end168

if.end128:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %net, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 19
  %33 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %hard_header_len, align 2
  %add = add i16 %34, 6
  store i16 %add, ptr %hard_header_len, align 2
  %35 = load ptr, ptr %net, align 4
  %hard_header_len132 = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 19
  %36 = ptrtoint ptr %hard_header_len132 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %hard_header_len132, align 2
  %conv133 = zext i16 %37 to i32
  %mtu = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 20
  %38 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mtu, align 4
  %add135 = add i32 %39, %conv133
  %40 = ptrtoint ptr %rx_urb_size to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add135, ptr %rx_urb_size, align 4
  br label %next_desc

next_desc:                                        ; preds = %if.end128, %land.lhs.true.next_desc_crit_edge, %if.end37.next_desc_crit_edge, %if.end.next_desc_crit_edge, %while.body.next_desc_crit_edge
  %detail.1 = phi ptr [ %detail.0246, %while.body.next_desc_crit_edge ], [ %detail.0246, %if.end.next_desc_crit_edge ], [ %buf.0249, %if.end128 ], [ %detail.0246, %land.lhs.true.next_desc_crit_edge ], [ %detail.0246, %if.end37.next_desc_crit_edge ]
  %desc.1 = phi ptr [ %desc.0247, %while.body.next_desc_crit_edge ], [ %desc.0247, %if.end.next_desc_crit_edge ], [ %desc.0247, %if.end128 ], [ %buf.0249, %land.lhs.true.next_desc_crit_edge ], [ %buf.0249, %if.end37.next_desc_crit_edge ]
  %41 = ptrtoint ptr %buf.0249 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %buf.0249, align 1
  %conv138 = zext i8 %42 to i32
  %sub = sub nsw i32 %len.0248, %conv138
  %add.ptr = getelementptr i8, ptr %buf.0249, i32 %conv138
  %cmp = icmp sgt i32 %sub, 3
  br i1 %cmp, label %next_desc.while.body_crit_edge, label %while.end

next_desc.while.body_crit_edge:                   ; preds = %next_desc
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %next_desc
  %tobool141.not = icmp eq ptr %desc.1, null
  %tobool142.not = icmp eq ptr %detail.1, null
  %or.cond = select i1 %tobool141.not, i1 true, i1 %tobool142.not
  br i1 %or.cond, label %while.end.do.body144_crit_edge, label %if.end164

while.end.do.body144_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body144

do.body144:                                       ; preds = %while.end.do.body144_crit_edge, %entry.do.body144_crit_edge
  %tobool142.not263 = phi i1 [ %tobool142.not, %while.end.do.body144_crit_edge ], [ true, %entry.do.body144_crit_edge ]
  %tobool141.not262 = phi i1 [ %tobool141.not, %while.end.do.body144_crit_edge ], [ true, %entry.do.body144_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @blan_mdlm_bind.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@blan_mdlm_bind, %if.then156)) #7
          to label %do.end168 [label %if.then156], !srcloc !73

if.then156:                                       ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #9
  %dev157 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %cond = select i1 %tobool141.not262, ptr @.str.13, ptr @.str.12
  %cond160 = select i1 %tobool142.not263, ptr @.str.14, ptr @.str.12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @blan_mdlm_bind.__UNIQUE_ID_ddebug347, ptr noundef %dev157, ptr noundef nonnull @.str.11, ptr noundef nonnull %cond, ptr noundef nonnull %cond160) #7
  br label %do.end168

if.end164:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %call165 = tail call i32 @usbnet_get_endpoints(ptr noundef %dev, ptr noundef %intf) #7
  br label %cleanup

do.end168:                                        ; preds = %if.then156, %do.body144, %if.then115, %do.body103, %if.then77, %do.body65, %if.then56, %do.body44, %if.then30, %do.body18, %if.then10, %do.body
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  %dev169 = getelementptr inbounds %struct.usb_device, ptr %44, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev169, ptr noundef nonnull @.str.15) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end168, %if.end164
  %retval.0 = phi i32 [ -19, %do.end168 ], [ %call165, %if.end164 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_endpoints(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readonly willreturn }
attributes #11 = { nobuiltin }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !30, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !48, !49, !50, !52, !53, !54, !55, !56, !58, !60, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__initcall__kmod_zaurus__348_381_zaurus_driver_init6, !1, !"__initcall__kmod_zaurus__348_381_zaurus_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/usb/zaurus.c", i32 381, i32 1}
!2 = !{ptr @__exitcall_zaurus_driver_exit, !1, !"__exitcall_zaurus_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author349, !4, !"__UNIQUE_ID_author349", i1 false, i1 false}
!4 = !{!"../drivers/net/usb/zaurus.c", i32 383, i32 1}
!5 = !{ptr @__UNIQUE_ID_description350, !6, !"__UNIQUE_ID_description350", i1 false, i1 false}
!6 = !{!"../drivers/net/usb/zaurus.c", i32 384, i32 1}
!7 = !{ptr @__UNIQUE_ID_file351, !8, !"__UNIQUE_ID_file351", i1 false, i1 false}
!8 = !{!"../drivers/net/usb/zaurus.c", i32 385, i32 1}
!9 = !{ptr @__UNIQUE_ID_license352, !8, !"__UNIQUE_ID_license352", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @zaurus_driver, !12, !"zaurus_driver", i1 false, i1 false}
!12 = !{!"../drivers/net/usb/zaurus.c", i32 371, i32 26}
!13 = !{ptr @products, !14, !"products", i1 false, i1 false}
!14 = !{!"../drivers/net/usb/zaurus.c", i32 253, i32 35}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/usb/zaurus.c", i32 90, i32 17}
!17 = !{ptr @zaurus_sl5x00_info, !18, !"zaurus_sl5x00_info", i1 false, i1 false}
!18 = !{!"../drivers/net/usb/zaurus.c", i32 89, i32 33}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/usb/zaurus.c", i32 100, i32 17}
!21 = !{ptr @zaurus_pxa_info, !22, !"zaurus_pxa_info", i1 false, i1 false}
!22 = !{!"../drivers/net/usb/zaurus.c", i32 99, i32 33}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/usb/zaurus.c", i32 246, i32 17}
!25 = !{ptr @bogus_mdlm_info, !26, !"bogus_mdlm_info", i1 false, i1 false}
!26 = !{!"../drivers/net/usb/zaurus.c", i32 245, i32 33}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/usb/zaurus.c", i32 153, i32 5}
!29 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @blan_mdlm_bind.__UNIQUE_ID_ddebug342, !28, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/usb/zaurus.c", i32 158, i32 5}
!34 = !{ptr @blan_mdlm_bind.__UNIQUE_ID_ddebug343, !33, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/usb/zaurus.c", i32 166, i32 5}
!37 = !{ptr @blan_mdlm_bind.__UNIQUE_ID_ddebug344, !36, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/usb/zaurus.c", i32 172, i32 5}
!40 = !{ptr @blan_mdlm_bind.__UNIQUE_ID_ddebug345, !39, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/usb/zaurus.c", i32 207, i32 5}
!43 = !{ptr @blan_mdlm_bind.__UNIQUE_ID_ddebug346, !42, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/usb/zaurus.c", i32 227, i32 3}
!46 = !{ptr @blan_mdlm_bind.__UNIQUE_ID_ddebug347, !45, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!47 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/usb/zaurus.c", i32 241, i32 2}
!52 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @blan_mdlm_bind._entry, !51, !"_entry", i1 false, i1 false}
!55 = !{ptr @blan_mdlm_bind._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @blan_guid, !57, !"blan_guid", i1 false, i1 false}
!57 = !{!"../drivers/net/usb/zaurus.c", i32 131, i32 17}
!58 = !{ptr @safe_guid, !59, !"safe_guid", i1 false, i1 false}
!59 = !{!"../drivers/net/usb/zaurus.c", i32 127, i32 17}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/usb/zaurus.c", i32 110, i32 17}
!62 = !{ptr @olympus_mxl_info, !63, !"olympus_mxl_info", i1 false, i1 false}
!63 = !{!"../drivers/net/usb/zaurus.c", i32 109, i32 33}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i64 2148963234, i64 2148963239, i64 2148963252, i64 2148963296, i64 2148963330, i64 2148963351}
