; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/udc/aspeed-vhub/dev.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/aspeed-vhub/dev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ast_vhub_dev = type { ptr, ptr, i32, ptr, ptr, %struct.usb_gadget, ptr, i8, %struct.ast_vhub_ep, ptr, i32 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ast_vhub_ep = type { %struct.usb_ep, %struct.list_head, i32, ptr, ptr, ptr, i32, %union.anon.67 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%union.anon.67 = type { %struct.anon.68 }
%struct.anon.68 = type { ptr, ptr, i32, i8, %struct.ast_vhub_req }
%struct.ast_vhub_req = type { %struct.usb_request, %struct.list_head, i32, i32, i8 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ast_vhub = type { ptr, ptr, i32, %struct.spinlock, %struct.work_struct, ptr, ptr, i32, %struct.ast_vhub_ep, i8, ptr, i32, i32, ptr, i32, i8, i32, %struct.usb_device_descriptor, %struct.ast_vhub_full_cdesc, %struct.usb_hub_descriptor, %struct.list_head, %struct.usb_qualifier_descriptor }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.ast_vhub_full_cdesc = type { %struct.usb_config_descriptor, %struct.usb_interface_descriptor, %struct.usb_endpoint_descriptor }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_hub_descriptor = type <{ i8, i8, i8, i16, i8, i8, %union.anon.70 }>
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { [4 x i8], [4 x i8] }
%struct.usb_qualifier_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.ast_vhub_port = type { i16, i16, %struct.ast_vhub_dev }

@ast_vhub_std_dev_request.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 57, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aspeed_vhub\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ast_vhub_std_dev_request\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/usb/gadget/udc/aspeed-vhub/dev.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s:EP%d Device is wrong state driver=%p enabled=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hub\00", [28 x i8] zeroinitializer }, align 32
@ast_vhub_std_dev_request.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 61, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s fist packet, captured speed %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ast_vhub_dev_reset.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 126, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ast_vhub_dev_reset\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s Reset of disabled device, enabling...\0A\00", [54 x i8] zeroinitializer }, align 32
@ast_vhub_dev_reset.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.8, i8 0, i8 126, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s Reset of enabled device, resetting...\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"port%d\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s:p%d\00", [25 x i8] zeroinitializer }, align 32
@ast_vhub_udc_ops = internal constant { %struct.usb_gadget_ops, [36 x i8] } { %struct.usb_gadget_ops { ptr @ast_vhub_udc_get_frame, ptr @ast_vhub_udc_wakeup, ptr null, ptr null, ptr null, ptr @ast_vhub_udc_pullup, ptr null, ptr null, ptr @ast_vhub_udc_start, ptr @ast_vhub_udc_stop, ptr null, ptr null, ptr null, ptr @ast_vhub_udc_match_ep, ptr null }, [36 x i8] zeroinitializer }, align 32
@ast_vhub_dev_set_address.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 52, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ast_vhub_dev_set_address\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s SET_ADDRESS: Got address %x\0A\00", [32 x i8] zeroinitializer }, align 32
@ast_vhub_dev_status.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 43, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ast_vhub_dev_status\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s GET_STATUS(dev)\0A\00", [44 x i8] zeroinitializer }, align 32
@ast_vhub_ep_status.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 47, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ast_vhub_ep_status\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s GET_STATUS(ep%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@ast_vhub_dev_feature.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 29, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ast_vhub_dev_feature\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s %s_FEATURE(dev val=%02x)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SET\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CLEAR\00", [26 x i8] zeroinitializer }, align 32
@ast_vhub_ep_feature.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 35, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ast_vhub_ep_feature\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s %s_FEATURE(ep%d val=%02x)\0A\00", [34 x i8] zeroinitializer }, align 32
@ast_vhub_ep_feature.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.23, i8 0, i8 40, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s %s stall on EP %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"setting\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clearing\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ast_vhub_udc_wakeup.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 71, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ast_vhub_udc_wakeup\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s Device initiated wakeup\0A\00", [36 x i8] zeroinitializer }, align 32
@ast_vhub_udc_pullup.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 80, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ast_vhub_udc_pullup\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s pullup(%d)\0A\00", [17 x i8] zeroinitializer }, align 32
@ast_vhub_udc_start.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 0, i8 87, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ast_vhub_udc_start\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s start\0A\00", [22 x i8] zeroinitializer }, align 32
@ast_vhub_udc_stop.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 0, i8 113, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ast_vhub_udc_stop\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s stop\0A\00", [23 x i8] zeroinitializer }, align 32
@ast_vhub_udc_match_ep.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 0, i8 92, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ast_vhub_udc_match_ep\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s Match EP type %d\0A\00", [43 x i8] zeroinitializer }, align 32
@ast_vhub_udc_match_ep.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.36, i8 0, i8 95, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s  -> using existing EP%d\0A\00", [36 x i8] zeroinitializer }, align 32
@ast_vhub_udc_match_ep.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.37, i8 0, i8 110, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s Allocated epn#%d for port EP%d\0A\00", [61 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 16, i64 1, i64 3, i64 5, i64 513, i64 515, i64 32768, i64 33024, i64 33280]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.40 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 226, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 243, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 504, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 507, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 551, i32 47 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 578, i32 28 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"ast_vhub_udc_ops\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 467, i32 36 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 210, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 172, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 188, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 115, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 142, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 159, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 287, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 322, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 349, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 452, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 369, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 379, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.156 = private constant [44 x i8] c"../drivers/usb/gadget/udc/aspeed-vhub/dev.c\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 439, i32 2 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @ast_vhub_udc_ops, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_vhub_udc_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ast_vhub_dev_irq(ptr noundef %d) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.ast_vhub_dev, ptr %d, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !85
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %2) #5, !srcloc !88
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ep0 = getelementptr inbounds %struct.ast_vhub_dev, ptr %d, i32 0, i32 8
  tail call void @ast_vhub_ep0_handle_ack(ptr noundef %ep0, i1 noundef zeroext true) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %ep07 = getelementptr inbounds %struct.ast_vhub_dev, ptr %d, i32 0, i32 8
  tail call void @ast_vhub_ep0_handle_ack(ptr noundef %ep07, i1 noundef zeroext false) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %and9 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end13_crit_edge, label %if.then11

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %ep012 = getelementptr inbounds %struct.ast_vhub_dev, ptr %d, i32 0, i32 8
  tail call void @ast_vhub_ep0_handle_setup(ptr noundef %ep012) #5
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end8.if.end13_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_ep0_handle_ack(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_ep0_handle_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ast_vhub_std_dev_request(ptr noundef %ep, ptr nocapture noundef readonly %crq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.ast_vhub_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.body1_crit_edge, label %lor.lhs.false

entry.do.body1_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1

lor.lhs.false:                                    ; preds = %entry
  %enabled = getelementptr inbounds %struct.ast_vhub_dev, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %enabled, align 4
  %5 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %bf.cast.not = icmp eq i8 %5, 0
  br i1 %bf.cast.not, label %lor.lhs.false.do.body1_crit_edge, label %if.end19

lor.lhs.false.do.body1_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1

do.body1:                                         ; preds = %lor.lhs.false.do.body1_crit_edge, %entry.do.body1_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_std_dev_request.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_std_dev_request, %cleanup)) #5
          to label %if.then6 [label %cleanup], !srcloc !89

if.then6:                                         ; preds = %do.body1
  %vhub = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %6 = ptrtoint ptr %vhub to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vhub, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %dev7 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %tobool9.not = icmp eq ptr %11, null
  br i1 %tobool9.not, label %if.then6.cond.end_crit_edge, label %cond.true

if.then6.cond.end_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.ast_vhub_dev, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then6.cond.end_crit_edge
  %cond = phi ptr [ %13, %cond.true ], [ @.str.4, %if.then6.cond.end_crit_edge ]
  %d_idx = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 2
  %14 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %d_idx, align 4
  %16 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver, align 8
  %enabled12 = getelementptr inbounds %struct.ast_vhub_dev, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %enabled12 to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load13 = load i8, ptr %enabled12, align 4
  %19 = lshr i8 %bf.load13, 5
  %.lobit = and i8 %19, 1
  %20 = zext i8 %.lobit to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_std_dev_request.__UNIQUE_ID_ddebug245, ptr noundef %dev7, ptr noundef nonnull @.str.3, ptr noundef %cond, i32 noundef %15, ptr noundef %17, i32 noundef %20) #5
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false
  %speed = getelementptr inbounds %struct.ast_vhub_dev, ptr %1, i32 0, i32 5, i32 5
  %21 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp = icmp eq i32 %22, 0
  br i1 %cmp, label %if.then21, label %if.end19.if.end64_crit_edge

if.end19.if.end64_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %vhub22 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %23 = ptrtoint ptr %vhub22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vhub22, align 4
  %speed23 = getelementptr inbounds %struct.ast_vhub, ptr %24, i32 0, i32 16
  %25 = ptrtoint ptr %speed23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %speed23, align 4
  %27 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %speed, align 8
  %max_speed = getelementptr inbounds %struct.usb_gadget_driver, ptr %3, i32 0, i32 1
  %28 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_speed, align 4
  %30 = tail call i32 @llvm.umin.i32(i32 %26, i32 %29)
  %31 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %speed, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_std_dev_request.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_std_dev_request, %if.end64)) #5
          to label %if.then52 [label %if.end64], !srcloc !89

if.then52:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %dev55 = getelementptr inbounds %struct.platform_device, ptr %35, i32 0, i32 3
  %name56 = getelementptr inbounds %struct.ast_vhub_dev, ptr %1, i32 0, i32 3
  %36 = ptrtoint ptr %name56 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name56, align 4
  %38 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %speed, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_std_dev_request.__UNIQUE_ID_ddebug246, ptr noundef %dev55, ptr noundef nonnull @.str.5, ptr noundef %37, i32 noundef %39) #5
  br label %if.end64

if.end64:                                         ; preds = %if.then52, %if.then21, %if.end19.if.end64_crit_edge
  %wValue65 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %crq, i32 0, i32 2
  %40 = ptrtoint ptr %wValue65 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %wValue65, align 1
  %42 = tail call i16 @llvm.bswap.i16(i16 %41)
  %wIndex66 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %crq, i32 0, i32 3
  %43 = ptrtoint ptr %wIndex66 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %wIndex66, align 1
  %45 = tail call i16 @llvm.bswap.i16(i16 %44)
  %46 = ptrtoint ptr %crq to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %crq, align 1
  %conv67 = zext i8 %47 to i16
  %shl = shl nuw i16 %conv67, 8
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %crq, i32 0, i32 1
  %48 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %bRequest, align 1
  %conv68 = zext i8 %49 to i16
  %or = or i16 %shl, %conv68
  %50 = zext i16 %or to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values)
  switch i16 %or, label %if.end64.cleanup_crit_edge [
    i16 5, label %sw.bb
    i16 -32768, label %sw.bb70
    i16 -32512, label %sw.bb72
    i16 -32256, label %sw.bb74
    i16 3, label %sw.bb76
    i16 1, label %sw.bb78
    i16 515, label %sw.bb80
    i16 513, label %sw.bb82
  ]

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_dev_set_address.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_std_dev_request, %ast_vhub_dev_set_address.exit)) #5
          to label %if.then.i [label %ast_vhub_dev_set_address.exit], !srcloc !89

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %54, i32 0, i32 3
  %name.i = getelementptr inbounds %struct.ast_vhub_dev, ptr %1, i32 0, i32 3
  %55 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name.i, align 4
  %57 = and i16 %42, 255
  %conv.i = zext i16 %57 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_dev_set_address.__UNIQUE_ID_ddebug244, ptr noundef %dev.i, ptr noundef nonnull @.str.12, ptr noundef %56, i32 noundef %conv.i) #5
  br label %ast_vhub_dev_set_address.exit

ast_vhub_dev_set_address.exit:                    ; preds = %if.then.i, %sw.bb
  %regs.i = getelementptr inbounds %struct.ast_vhub_dev, ptr %1, i32 0, i32 1
  %58 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i, align 4
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %61 = and i32 %60, -16711681
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #5
  %63 = shl i16 %42, 8
  %shl.i = zext i16 %63 to i32
  %or.i = or i32 %62, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  tail call void @arm_heavy_mb() #5
  %64 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %65 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #5, !srcloc !88
  br label %cleanup

sw.bb70:                                          ; preds = %if.end64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_dev_status.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_std_dev_request, %ast_vhub_dev_status.exit)) #5
          to label %if.then.i131 [label %ast_vhub_dev_status.exit], !srcloc !89

if.then.i131:                                     ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 8
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %dev.i129 = getelementptr inbounds %struct.platform_device, ptr %70, i32 0, i32 3
  %name.i130 = getelementptr inbounds %struct.ast_vhub_dev, ptr %1, i32 0, i32 3
  %71 = ptrtoint ptr %name.i130 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %name.i130, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_dev_status.__UNIQUE_ID_ddebug242, ptr noundef %dev.i129, ptr noundef nonnull @.str.14, ptr noundef %72) #5
  br label %ast_vhub_dev_status.exit

ast_vhub_dev_status.exit:                         ; preds = %if.then.i131, %sw.bb70
  %is_selfpowered.i = getelementptr inbounds %struct.ast_vhub_dev, ptr %1, i32 0, i32 5, i32 17
  %73 = ptrtoint ptr %is_selfpowered.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %bf.load.i = load i32, ptr %is_selfpowered.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 18
  %74 = trunc i32 %bf.lshr.i to i8
  %conv.i132 = and i8 %74, 1
  %75 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %75)
  %bf.load7.i = load i8, ptr %enabled, align 4
  %76 = lshr i8 %bf.load7.i, 5
  %77 = and i8 %76, 2
  %78 = or i8 %77, %conv.i132
  %ep0.i = getelementptr inbounds %struct.ast_vhub_dev, ptr %1, i32 0, i32 8
  %conv14.i = zext i8 %78 to i32
  %call15.i = tail call i32 (ptr, i32, ...) @__ast_vhub_simple_reply(ptr noundef %ep0.i, i32 noundef 2, i32 noundef %conv14.i, i32 noundef 0) #5
  br label %cleanup

sw.bb72:                                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  %call73 = tail call i32 (ptr, i32, ...) @__ast_vhub_simple_reply(ptr noundef %ep, i32 noundef 2, i32 noundef 0, i32 noundef 0) #5
  br label %cleanup

sw.bb74:                                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  %call75 = tail call fastcc i32 @ast_vhub_ep_status(ptr noundef %1, i16 noundef zeroext %45)
  br label %cleanup

sw.bb76:                                          ; preds = %if.end64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_dev_feature.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_std_dev_request, %do.end8.i)) #5
          to label %if.then.i136 [label %do.end8.i], !srcloc !89

if.then.i136:                                     ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #7
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %1, align 8
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %dev.i133 = getelementptr inbounds %struct.platform_device, ptr %82, i32 0, i32 3
  %name.i134 = getelementptr inbounds %struct.ast_vhub_dev, ptr %1, i32 0, i32 3
  %83 = ptrtoint ptr %name.i134 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %name.i134, align 4
  %conv.i135 = zext i16 %42 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_dev_feature.__UNIQUE_ID_ddebug239, ptr noundef %dev.i133, ptr noundef nonnull @.str.18, ptr noundef %84, ptr noundef nonnull @.str.19, i32 noundef %conv.i135) #5
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i136, %sw.bb76
  %85 = zext i16 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.38)
  switch i16 %42, label %do.end8.i.cleanup_crit_edge [
    i16 1, label %if.then11.i
    i16 2, label %if.then18.i
  ]

do.end8.i.cleanup_crit_edge:                      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then11.i:                                      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  %86 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %86)
  %bf.load.i138 = load i8, ptr %enabled, align 4
  %bf.set.i = or i8 %bf.load.i138, 64
  store i8 %bf.set.i, ptr %enabled, align 4
  br label %cleanup

if.then18.i:                                      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %1, align 8
  %regs.i139 = getelementptr inbounds %struct.ast_vhub, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %regs.i139 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs.i139, align 4
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  %92 = and i32 %91, -458753
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #5
  %94 = and i16 %45, 1792
  %shl.i140 = zext i16 %94 to i32
  %or.i141 = or i32 %93, %shl.i140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  tail call void @arm_heavy_mb() #5
  %95 = tail call i32 @llvm.bswap.i32(i32 %or.i141) #5
  %96 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %1, align 8
  %regs29.i = getelementptr inbounds %struct.ast_vhub, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %regs29.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regs29.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %95) #5, !srcloc !88
  br label %cleanup

sw.bb78:                                          ; preds = %if.end64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_dev_feature.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_std_dev_request, %do.end8.i147)) #5
          to label %if.then.i146 [label %do.end8.i147], !srcloc !89

if.then.i146:                                     ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #7
  %100 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %1, align 8
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  %dev.i143 = getelementptr inbounds %struct.platform_device, ptr %103, i32 0, i32 3
  %name.i144 = getelementptr inbounds %struct.ast_vhub_dev, ptr %1, i32 0, i32 3
  %104 = ptrtoint ptr %name.i144 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %name.i144, align 4
  %conv.i145 = zext i16 %42 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_dev_feature.__UNIQUE_ID_ddebug239, ptr noundef %dev.i143, ptr noundef nonnull @.str.18, ptr noundef %105, ptr noundef nonnull @.str.20, i32 noundef %conv.i145) #5
  br label %do.end8.i147

do.end8.i147:                                     ; preds = %if.then.i146, %sw.bb78
  %106 = zext i16 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.39)
  switch i16 %42, label %do.end8.i147.cleanup_crit_edge [
    i16 1, label %if.then11.i151
    i16 2, label %if.then18.i156
  ]

do.end8.i147.cleanup_crit_edge:                   ; preds = %do.end8.i147
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then11.i151:                                   ; preds = %do.end8.i147
  call void @__sanitizer_cov_trace_pc() #7
  %107 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %107)
  %bf.load.i149 = load i8, ptr %enabled, align 4
  %bf.clear.i150 = and i8 %bf.load.i149, -65
  store i8 %bf.clear.i150, ptr %enabled, align 4
  br label %cleanup

if.then18.i156:                                   ; preds = %do.end8.i147
  call void @__sanitizer_cov_trace_pc() #7
  %108 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %1, align 8
  %regs.i152 = getelementptr inbounds %struct.ast_vhub, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %regs.i152 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regs.i152, align 4
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %111) #5, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  %113 = and i32 %112, -458753
  %114 = tail call i32 @llvm.bswap.i32(i32 %113) #5
  %115 = and i16 %45, 1792
  %shl.i153 = zext i16 %115 to i32
  %or.i154 = or i32 %114, %shl.i153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  tail call void @arm_heavy_mb() #5
  %116 = tail call i32 @llvm.bswap.i32(i32 %or.i154) #5
  %117 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %1, align 8
  %regs29.i155 = getelementptr inbounds %struct.ast_vhub, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %regs29.i155 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %regs29.i155, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %116) #5, !srcloc !88
  br label %cleanup

sw.bb80:                                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  %call81 = tail call fastcc i32 @ast_vhub_ep_feature(ptr noundef %1, i16 noundef zeroext %45, i16 noundef zeroext %42, i1 noundef zeroext true)
  br label %cleanup

sw.bb82:                                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  %call83 = tail call fastcc i32 @ast_vhub_ep_feature(ptr noundef %1, i16 noundef zeroext %45, i16 noundef zeroext %42, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb82, %sw.bb80, %if.then18.i156, %if.then11.i151, %do.end8.i147.cleanup_crit_edge, %if.then18.i, %if.then11.i, %do.end8.i.cleanup_crit_edge, %sw.bb74, %sw.bb72, %ast_vhub_dev_status.exit, %ast_vhub_dev_set_address.exit, %if.end64.cleanup_crit_edge, %cond.end, %do.body1
  %retval.0 = phi i32 [ %call83, %sw.bb82 ], [ %call81, %sw.bb80 ], [ %call75, %sw.bb74 ], [ %call73, %sw.bb72 ], [ %call15.i, %ast_vhub_dev_status.exit ], [ 0, %ast_vhub_dev_set_address.exit ], [ -1, %cond.end ], [ 2, %if.end64.cleanup_crit_edge ], [ 0, %if.then11.i ], [ 0, %if.then18.i ], [ 2, %do.end8.i.cleanup_crit_edge ], [ 0, %if.then11.i151 ], [ 0, %if.then18.i156 ], [ 2, %do.end8.i147.cleanup_crit_edge ], [ -1, %do.body1 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ast_vhub_simple_reply(ptr noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ast_vhub_ep_status(ptr noundef %d, i16 noundef zeroext %wIndex) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %wIndex to i32
  %and = and i32 %conv, 15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_ep_status.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_ep_status, %do.end6)) #5
          to label %if.then [label %do.end6], !srcloc !89

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %name = getelementptr inbounds %struct.ast_vhub_dev, ptr %d, i32 0, i32 3
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_ep_status.__UNIQUE_ID_ddebug243, ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef %5, i32 noundef %and) #5
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %max_epns = getelementptr inbounds %struct.ast_vhub_dev, ptr %d, i32 0, i32 10
  %6 = ptrtoint ptr %max_epns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_epns, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %7)
  %cmp.not = icmp ult i32 %and, %7
  br i1 %cmp.not, label %if.end9, label %do.end6.cleanup_crit_edge

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %do.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp10.not = icmp eq i32 %and, 0
  br i1 %cmp10.not, label %if.end9.if.end48_crit_edge, label %if.then12

if.end9.if.end48_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.then12:                                        ; preds = %if.end9
  %epns = getelementptr inbounds %struct.ast_vhub_dev, ptr %d, i32 0, i32 9
  %8 = ptrtoint ptr %epns to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %epns, align 4
  %sub = add nsw i32 %and, -1
  %arrayidx = getelementptr ptr, ptr %9, i32 %sub
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool13.not = icmp eq ptr %11, null
  br i1 %tobool13.not, label %if.then12.cleanup_crit_edge, label %if.end15

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.then12
  %enabled = getelementptr inbounds %struct.ast_vhub_ep, ptr %11, i32 0, i32 7, i32 0, i32 4, i32 0, i32 4
  %12 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %enabled, align 4
  %13 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %bf.cast.not = icmp eq i8 %13, 0
  br i1 %bf.cast.not, label %if.end15.cleanup_crit_edge, label %lor.lhs.false

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end15
  %desc = getelementptr inbounds %struct.usb_ep, ptr %11, i32 0, i32 9
  %14 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc, align 4
  %tobool17.not = icmp ne ptr %15, null
  %16 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %bf.cast22.not = icmp eq i8 %16, 0
  %or.cond = select i1 %tobool17.not, i1 %bf.cast22.not, i1 false
  br i1 %or.cond, label %lor.lhs.false24, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false24:                                  ; preds = %lor.lhs.false
  %bf.load.lobit = lshr i8 %bf.load, 7
  %17 = zext i8 %bf.load.lobit to i32
  %and30 = lshr i32 %conv, 7
  %and30.lobit = and i32 %and30, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and30.lobit, i32 %17)
  %cmp36.not = icmp eq i32 %and30.lobit, %17
  br i1 %cmp36.not, label %if.end39, label %lor.lhs.false24.cleanup_crit_edge

lor.lhs.false24.cleanup_crit_edge:                ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end39:                                         ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #7
  %18 = lshr i8 %bf.load, 5
  %.lobit = and i8 %18, 1
  %19 = zext i8 %.lobit to i32
  br label %if.end48

if.end48:                                         ; preds = %if.end39, %if.end9.if.end48_crit_edge
  %st0.0 = phi i32 [ 0, %if.end9.if.end48_crit_edge ], [ %19, %if.end39 ]
  %ep0 = getelementptr inbounds %struct.ast_vhub_dev, ptr %d, i32 0, i32 8
  %call50 = tail call i32 (ptr, i32, ...) @__ast_vhub_simple_reply(ptr noundef %ep0, i32 noundef 2, i32 noundef %st0.0, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %lor.lhs.false24.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %do.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ %call50, %if.end48 ], [ -1, %do.end6.cleanup_crit_edge ], [ -1, %if.then12.cleanup_crit_edge ], [ -1, %lor.lhs.false24.cleanup_crit_edge ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ast_vhub_ep_feature(ptr nocapture noundef readonly %d, i16 noundef zeroext %wIndex, i16 noundef zeroext %wValue, i1 noundef zeroext %is_set) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %wIndex to i32
  %and = and i32 %conv, 15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_ep_feature.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_ep_feature, %do.end10)) #5
          to label %if.then [label %do.end10], !srcloc !89

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %name = getelementptr inbounds %struct.ast_vhub_dev, ptr %d, i32 0, i32 3
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %cond = select i1 %is_set, ptr @.str.19, ptr @.str.20
  %conv8 = zext i16 %wValue to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_ep_feature.__UNIQUE_ID_ddebug240, ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef %5, ptr noundef nonnull %cond, i32 noundef %and, i32 noundef %conv8) #5
  br label %do.end10

do.end10:                                         ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %do.end10.cleanup_crit_edge, label %if.end13

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %do.end10
  %max_epns = getelementptr inbounds %struct.ast_vhub_dev, ptr %d, i32 0, i32 10
  %6 = ptrtoint ptr %max_epns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_epns, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %7)
  %cmp14.not = icmp ult i32 %and, %7
  br i1 %cmp14.not, label %lor.lhs.false, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end13
  %epns = getelementptr inbounds %struct.ast_vhub_dev, ptr %d, i32 0, i32 9
  %8 = ptrtoint ptr %epns to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %epns, align 4
  %sub = add nsw i32 %and, -1
  %arrayidx = getelementptr ptr, ptr %9, i32 %sub
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool16.not = icmp eq ptr %11, null
  br i1 %tobool16.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end18

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %wValue)
  %cmp20.not = icmp eq i16 %wValue, 0
  br i1 %cmp20.not, label %if.end61, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end61:                                         ; preds = %if.end18
  %enabled = getelementptr inbounds %struct.ast_vhub_ep, ptr %11, i32 0, i32 7, i32 0, i32 4, i32 0, i32 4
  %12 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %enabled, align 4
  %13 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %bf.cast.not = icmp eq i8 %13, 0
  br i1 %bf.cast.not, label %if.end61.cleanup_crit_edge, label %lor.lhs.false62

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false62:                                  ; preds = %if.end61
  %desc = getelementptr inbounds %struct.usb_ep, ptr %11, i32 0, i32 9
  %14 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc, align 4
  %tobool64.not = icmp ne ptr %15, null
  %16 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %bf.cast69.not = icmp eq i8 %16, 0
  %or.cond = select i1 %tobool64.not, i1 %bf.cast69.not, i1 false
  br i1 %or.cond, label %lor.lhs.false71, label %lor.lhs.false62.cleanup_crit_edge

lor.lhs.false62.cleanup_crit_edge:                ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false71:                                  ; preds = %lor.lhs.false62
  %bf.load.lobit = lshr i8 %bf.load, 7
  %17 = zext i8 %bf.load.lobit to i32
  %and77 = lshr i32 %conv, 7
  %and77.lobit = and i32 %and77, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and77.lobit, i32 %17)
  %cmp83.not = icmp eq i32 %and77.lobit, %17
  br i1 %cmp83.not, label %do.body88, label %lor.lhs.false71.cleanup_crit_edge

lor.lhs.false71.cleanup_crit_edge:                ; preds = %lor.lhs.false71
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body88:                                        ; preds = %lor.lhs.false71
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_ep_feature.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_ep_feature, %do.end114)) #5
          to label %if.then102 [label %do.end114], !srcloc !89

if.then102:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %dev105 = getelementptr inbounds %struct.platform_device, ptr %21, i32 0, i32 3
  %name106 = getelementptr inbounds %struct.ast_vhub_dev, ptr %d, i32 0, i32 3
  %22 = ptrtoint ptr %name106 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name106, align 4
  %cond109 = select i1 %is_set, ptr @.str.24, ptr @.str.25
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_ep_feature.__UNIQUE_ID_ddebug241, ptr noundef %dev105, ptr noundef nonnull @.str.23, ptr noundef %23, ptr noundef nonnull %cond109, i32 noundef %and) #5
  br label %do.end114

do.end114:                                        ; preds = %if.then102, %do.body88
  %24 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load116 = load i8, ptr %enabled, align 4
  %bf.shl = select i1 %is_set, i8 32, i8 0
  %bf.clear117 = and i8 %bf.load116, -33
  %bf.set = or i8 %bf.clear117, %bf.shl
  store i8 %bf.set, ptr %enabled, align 4
  tail call void @ast_vhub_update_epn_stall(ptr noundef nonnull %11) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end114, %lor.lhs.false71.cleanup_crit_edge, %lor.lhs.false62.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %do.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end114 ], [ 0, %do.end10.cleanup_crit_edge ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %if.end13.cleanup_crit_edge ], [ 2, %if.end18.cleanup_crit_edge ], [ -1, %lor.lhs.false71.cleanup_crit_edge ], [ -1, %lor.lhs.false62.cleanup_crit_edge ], [ -1, %if.end61.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ast_vhub_dev_suspend(ptr noundef %d) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ast_vhub_dev, ptr %d, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %suspend = getelementptr inbounds %struct.usb_gadget_driver, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %suspend, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d, align 8
  %lock = getelementptr inbounds %struct.ast_vhub, ptr %5, i32 0, i32 3
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  %6 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver, align 8
  %suspend4 = getelementptr inbounds %struct.usb_gadget_driver, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %suspend4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %suspend4, align 4
  %gadget = getelementptr inbounds %struct.ast_vhub_dev, ptr %d, i32 0, i32 5
  tail call void %9(ptr noundef %gadget) #5
  %10 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d, align 8
  %lock6 = getelementptr inbounds %struct.ast_vhub, ptr %11, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock6) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ast_vhub_dev_resume(ptr noundef %d) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ast_vhub_dev, ptr %d, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %resume = getelementptr inbounds %struct.usb_gadget_driver, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resume, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d, align 8
  %lock = getelementptr inbounds %struct.ast_vhub, ptr %5, i32 0, i32 3
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  %6 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver, align 8
  %resume4 = getelementptr inbounds %struct.usb_gadget_driver, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %resume4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resume4, align 4
  %gadget = getelementptr inbounds %struct.ast_vhub_dev, ptr %d, i32 0, i32 5
  tail call void %9(ptr noundef %gadget) #5
  %10 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d, align 8
  %lock6 = getelementptr inbounds %struct.ast_vhub, ptr %11, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock6) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ast_vhub_dev_reset(ptr noundef %d) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ast_vhub_dev, ptr %d, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 8
  %tobool.not = icmp eq ptr %1, null
  %enabled.i = getelementptr inbounds %struct.ast_vhub_dev, ptr %d, i32 0, i32 7
  %2 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %enabled.i, align 4
  %3 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %bf.cast.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br i1 %bf.cast.not.i, label %if.then.if.end37_crit_edge, label %if.end.i

if.then.if.end37_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %index.i = getelementptr inbounds %struct.ast_vhub_dev, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index.i, align 8
  %shl.i = shl i32 512, %5
  %6 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d, align 8
  %regs.i = getelementptr inbounds %struct.ast_vhub, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !85
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %11, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !95
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %and.i) #5
  %13 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d, align 8
  %regs3.i = getelementptr inbounds %struct.ast_vhub, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %regs3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs3.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %12) #5, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !96
  tail call void @arm_heavy_mb() #5
  %regs8.i = getelementptr inbounds %struct.ast_vhub_dev, ptr %d, i32 0, i32 1
  %17 = ptrtoint ptr %regs8.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs8.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #5, !srcloc !88
  %speed.i = getelementptr inbounds %struct.ast_vhub_dev, ptr %d, i32 0, i32 5, i32 5
  %19 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %speed.i, align 8
  %20 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load11.i = load i8, ptr %enabled.i, align 4
  %bf.clear12.i = and i8 %bf.load11.i, -33
  store i8 %bf.clear12.i, ptr %enabled.i, align 4
  br label %if.end37

if.end:                                           ; preds = %entry
  br i1 %bf.cast.not.i, label %do.body2, label %do.body11

do.body2:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_dev_reset.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_dev_reset, %do.end9)) #5
          to label %if.then7 [label %do.end9], !srcloc !89

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %24, i32 0, i32 3
  %name = getelementptr inbounds %struct.ast_vhub_dev, ptr %d, i32 0, i32 3
  %25 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_dev_reset.__UNIQUE_ID_ddebug254, ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef %26) #5
  br label %do.end9

do.end9:                                          ; preds = %if.then7, %do.body2
  tail call fastcc void @ast_vhub_dev_enable(ptr noundef %d)
  br label %if.end37

do.body11:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_dev_reset.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_dev_reset, %do.end32)) #5
          to label %if.then25 [label %do.end32], !srcloc !89

if.then25:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %d, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %dev28 = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3
  %name29 = getelementptr inbounds %struct.ast_vhub_dev, ptr %d, i32 0, i32 3
  %31 = ptrtoint ptr %name29 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name29, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_dev_reset.__UNIQUE_ID_ddebug255, ptr noundef %dev28, ptr noundef nonnull @.str.8, ptr noundef %32) #5
  br label %do.end32

do.end32:                                         ; preds = %if.then25, %do.body11
  %33 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %d, align 8
  %lock = getelementptr inbounds %struct.ast_vhub, ptr %34, i32 0, i32 3
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  %gadget = getelementptr inbounds %struct.ast_vhub_dev, ptr %d, i32 0, i32 5
  %35 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %driver, align 8
  tail call void @usb_gadget_udc_reset(ptr noundef %gadget, ptr noundef %36) #5
  %37 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %d, align 8
  %lock36 = getelementptr inbounds %struct.ast_vhub, ptr %38, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock36) #5
  %39 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load.i55 = load i8, ptr %enabled.i, align 4
  %40 = and i8 %bf.load.i55, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %bf.cast.not.i56 = icmp eq i8 %40, 0
  br i1 %bf.cast.not.i56, label %do.end32.ast_vhub_dev_disable.exit70_crit_edge, label %if.end.i69

do.end32.ast_vhub_dev_disable.exit70_crit_edge:   ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %ast_vhub_dev_disable.exit70

if.end.i69:                                       ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #7
  %index.i57 = getelementptr inbounds %struct.ast_vhub_dev, ptr %d, i32 0, i32 2
  %41 = ptrtoint ptr %index.i57 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %index.i57, align 8
  %shl.i58 = shl i32 512, %42
  %43 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %d, align 8
  %regs.i59 = getelementptr inbounds %struct.ast_vhub, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %regs.i59 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i59, align 4
  %add.ptr.i60 = getelementptr i8, ptr %46, i32 8
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i60) #5, !srcloc !85
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  %neg.i61 = xor i32 %shl.i58, -1
  %and.i62 = and i32 %48, %neg.i61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !95
  tail call void @arm_heavy_mb() #5
  %49 = tail call i32 @llvm.bswap.i32(i32 %and.i62) #5
  %50 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %d, align 8
  %regs3.i63 = getelementptr inbounds %struct.ast_vhub, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %regs3.i63 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs3.i63, align 4
  %add.ptr4.i64 = getelementptr i8, ptr %53, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i64, i32 %49) #5, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !96
  tail call void @arm_heavy_mb() #5
  %regs8.i65 = getelementptr inbounds %struct.ast_vhub_dev, ptr %d, i32 0, i32 1
  %54 = ptrtoint ptr %regs8.i65 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs8.i65, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 0) #5, !srcloc !88
  %speed.i66 = getelementptr inbounds %struct.ast_vhub_dev, ptr %d, i32 0, i32 5, i32 5
  %56 = ptrtoint ptr %speed.i66 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %speed.i66, align 8
  %57 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load11.i67 = load i8, ptr %enabled.i, align 4
  %bf.clear12.i68 = and i8 %bf.load11.i67, -33
  store i8 %bf.clear12.i68, ptr %enabled.i, align 4
  br label %ast_vhub_dev_disable.exit70

ast_vhub_dev_disable.exit70:                      ; preds = %if.end.i69, %do.end32.ast_vhub_dev_disable.exit70_crit_edge
  tail call fastcc void @ast_vhub_dev_enable(ptr noundef %d)
  br label %if.end37

if.end37:                                         ; preds = %ast_vhub_dev_disable.exit70, %do.end9, %if.end.i, %if.then.if.end37_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ast_vhub_dev_enable(ptr noundef %d) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.ast_vhub_dev, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %enabled, align 4
  %1 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %bf.cast.not = icmp eq i8 %1, 0
  br i1 %bf.cast.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @ast_vhub_reset_ep0(ptr noundef %d) #5
  %speed = getelementptr inbounds %struct.ast_vhub_dev, ptr %d, i32 0, i32 5, i32 5
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  %spec.select = select i1 %cmp, i32 788529152, i32 754974720
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  tail call void @arm_heavy_mb() #5
  %regs = getelementptr inbounds %struct.ast_vhub_dev, ptr %d, i32 0, i32 1
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %spec.select) #5, !srcloc !88
  %index = getelementptr inbounds %struct.ast_vhub_dev, ptr %d, i32 0, i32 2
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 8
  %shl = shl i32 512, %7
  %8 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d, align 8
  %regs3 = getelementptr inbounds %struct.ast_vhub, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %regs3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs3, align 4
  %add.ptr4 = getelementptr i8, ptr %11, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #5, !srcloc !85
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  %or6 = or i32 %13, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  %14 = tail call i32 @llvm.bswap.i32(i32 %or6)
  %15 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d, align 8
  %regs11 = getelementptr inbounds %struct.ast_vhub, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %regs11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs11, align 4
  %add.ptr12 = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %14) #5, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  tail call void @arm_heavy_mb() #5
  %buf_dma = getelementptr inbounds %struct.ast_vhub_dev, ptr %d, i32 0, i32 8, i32 6
  %19 = ptrtoint ptr %buf_dma to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_dma, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %add.ptr17 = getelementptr i8, ptr %23, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %21) #5, !srcloc !88
  %max_epns = getelementptr inbounds %struct.ast_vhub_dev, ptr %d, i32 0, i32 10
  %24 = ptrtoint ptr %max_epns to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_epns, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp1867.not = icmp eq i32 %25, 0
  br i1 %cmp1867.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %epns = getelementptr inbounds %struct.ast_vhub_dev, ptr %d, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %if.end35.for.body_crit_edge, %for.body.lr.ph
  %i.068 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end35.for.body_crit_edge ]
  %26 = ptrtoint ptr %epns to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %epns, align 4
  %arrayidx = getelementptr ptr, ptr %27, i32 %i.068
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %29, null
  br i1 %tobool.not, label %for.body.if.end35_crit_edge, label %land.lhs.true

for.body.if.end35_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

land.lhs.true:                                    ; preds = %for.body
  %stalled = getelementptr inbounds %struct.ast_vhub_ep, ptr %29, i32 0, i32 7, i32 0, i32 4, i32 0, i32 4
  %30 = ptrtoint ptr %stalled to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load19 = load i8, ptr %stalled, align 4
  %31 = and i8 %bf.load19, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %land.lhs.true.if.end35_crit_edge, label %if.then27

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then27:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %bf.clear33 = and i8 %bf.load19, -49
  %33 = ptrtoint ptr %stalled to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %bf.clear33, ptr %stalled, align 4
  tail call void @ast_vhub_update_epn_stall(ptr noundef nonnull %29) #5
  br label %if.end35

if.end35:                                         ; preds = %if.then27, %land.lhs.true.if.end35_crit_edge, %for.body.if.end35_crit_edge
  %inc = add nuw i32 %i.068, 1
  %34 = ptrtoint ptr %max_epns to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_epns, align 8
  %cmp18 = icmp ult i32 %inc, %35
  br i1 %cmp18, label %if.end35.for.body_crit_edge, label %if.end35.for.end_crit_edge

if.end35.for.end_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end35.for.body_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end35.for.end_crit_edge, %if.end.for.end_crit_edge
  %36 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load36 = load i8, ptr %enabled, align 4
  %bf.clear41 = and i8 %bf.load36, -97
  %bf.set42 = or i8 %bf.clear41, 32
  store i8 %bf.set42, ptr %enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_udc_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ast_vhub_del_dev(ptr noundef %d) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d, align 8
  %lock = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %registered = getelementptr inbounds %struct.ast_vhub_dev, ptr %d, i32 0, i32 7
  %2 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %registered, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d, align 8
  %lock6 = getelementptr inbounds %struct.ast_vhub, ptr %4, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock6, i32 noundef %call2) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %bf.clear = and i8 %bf.load, 127
  %5 = ptrtoint ptr %registered to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %bf.clear, ptr %registered, align 4
  %6 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d, align 8
  %lock10 = getelementptr inbounds %struct.ast_vhub, ptr %7, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock10, i32 noundef %call2) #5
  %gadget = getelementptr inbounds %struct.ast_vhub_dev, ptr %d, i32 0, i32 5
  tail call void @usb_del_gadget_udc(ptr noundef %gadget) #5
  %port_dev = getelementptr inbounds %struct.ast_vhub_dev, ptr %d, i32 0, i32 4
  %8 = ptrtoint ptr %port_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port_dev, align 8
  tail call void @device_unregister(ptr noundef %9) #5
  %epns = getelementptr inbounds %struct.ast_vhub_dev, ptr %d, i32 0, i32 9
  %10 = ptrtoint ptr %epns to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %epns, align 4
  tail call void @kfree(ptr noundef %11) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_del_gadget_udc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ast_vhub_init_dev(ptr noundef %vhub, i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ports = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 10
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ports, align 4
  %dev = getelementptr %struct.ast_vhub_port, ptr %1, i32 %idx, i32 2
  %2 = ptrtoint ptr %vhub to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vhub, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %vhub, ptr %dev, align 8
  %index = getelementptr %struct.ast_vhub_port, ptr %1, i32 %idx, i32 2, i32 2
  %5 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %idx, ptr %index, align 8
  %add = add i32 %idx, 1
  %call = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1, i32 noundef 3264, ptr noundef nonnull @.str.9, i32 noundef %add) #5
  %name = getelementptr %struct.ast_vhub_port, ptr %1, i32 %idx, i32 2, i32 3
  %6 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %name, align 4
  %regs = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 1
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 256
  %mul = shl i32 %idx, 4
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 %mul
  %regs4 = getelementptr %struct.ast_vhub_port, ptr %1, i32 %idx, i32 2, i32 1
  %9 = ptrtoint ptr %regs4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr3, ptr %regs4, align 4
  %ep0 = getelementptr %struct.ast_vhub_port, ptr %1, i32 %idx, i32 2, i32 8
  tail call void @ast_vhub_init_ep0(ptr noundef %vhub, ptr noundef %ep0, ptr noundef %dev) #5
  %max_epns = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 14
  %10 = ptrtoint ptr %max_epns to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_epns, align 4
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 30)
  %max_epns5 = getelementptr %struct.ast_vhub_port, ptr %1, i32 %idx, i32 2, i32 10
  %13 = ptrtoint ptr %max_epns5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %max_epns5, align 8
  %14 = shl nuw nsw i32 %12, 2
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #8
  %epns = getelementptr %struct.ast_vhub_port, ptr %1, i32 %idx, i32 2, i32 9
  %15 = ptrtoint ptr %epns to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call8.i.i, ptr %epns, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 928) #9
  %port_dev = getelementptr %struct.ast_vhub_port, ptr %1, i32 %idx, i32 2, i32 4
  %17 = ptrtoint ptr %port_dev to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %port_dev, align 8
  %tobool11.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool11.not, label %if.end.fail_alloc_crit_edge, label %if.end13

if.end.fail_alloc_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_alloc

if.end13:                                         ; preds = %if.end
  tail call void @device_initialize(ptr noundef nonnull %call7.i.i) #5
  %18 = ptrtoint ptr %port_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %port_dev, align 8
  %release = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 35
  %20 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @ast_vhub_dev_release, ptr %release, align 4
  %21 = load ptr, ptr %port_dev, align 8
  %parent17 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %parent17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev1, ptr %parent17, align 8
  %23 = load ptr, ptr %port_dev, align 8
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end13.dev_name.exit_crit_edge

if.end13.dev_name.exit_crit_edge:                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end13.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %27, %if.end.i ], [ %25, %if.end13.dev_name.exit_crit_edge ]
  %call21 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %23, ptr noundef nonnull @.str.10, ptr noundef %retval.0.i, i32 noundef %add) #5
  %28 = ptrtoint ptr %port_dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %port_dev, align 8
  %call23 = tail call i32 @device_add(ptr noundef %29) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %dev_name.exit.fail_add_crit_edge

dev_name.exit.fail_add_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_add

if.end26:                                         ; preds = %dev_name.exit
  %gadget = getelementptr %struct.ast_vhub_port, ptr %1, i32 %idx, i32 2, i32 5
  %ep_list = getelementptr %struct.ast_vhub_port, ptr %1, i32 %idx, i32 2, i32 5, i32 4
  %30 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %ep_list, ptr %ep_list, align 4
  %prev.i = getelementptr %struct.ast_vhub_port, ptr %1, i32 %idx, i32 2, i32 5, i32 4, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %ep_list, ptr %prev.i, align 4
  %ops = getelementptr %struct.ast_vhub_port, ptr %1, i32 %idx, i32 2, i32 5, i32 2
  %32 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @ast_vhub_udc_ops, ptr %ops, align 8
  %ep030 = getelementptr %struct.ast_vhub_port, ptr %1, i32 %idx, i32 2, i32 5, i32 3
  %33 = ptrtoint ptr %ep030 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %ep0, ptr %ep030, align 4
  %name32 = getelementptr %struct.ast_vhub_port, ptr %1, i32 %idx, i32 2, i32 5, i32 10
  %34 = ptrtoint ptr %name32 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str, ptr %name32, align 4
  %force_usb1 = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 15
  %35 = ptrtoint ptr %force_usb1 to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load = load i8, ptr %force_usb1, align 4
  %36 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %bf.cast.not = icmp eq i8 %36, 0
  %spec.select = select i1 %bf.cast.not, i32 3, i32 2
  %37 = getelementptr %struct.ast_vhub_port, ptr %1, i32 %idx, i32 2, i32 5, i32 6
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %spec.select, ptr %37, align 4
  %speed = getelementptr %struct.ast_vhub_port, ptr %1, i32 %idx, i32 2, i32 5, i32 5
  %39 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %speed, align 8
  %40 = ptrtoint ptr %vhub to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vhub, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %41, i32 0, i32 3, i32 27
  %42 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %of_node, align 8
  %of_node43 = getelementptr %struct.ast_vhub_port, ptr %1, i32 %idx, i32 2, i32 5, i32 11, i32 27
  %44 = ptrtoint ptr %of_node43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %of_node43, align 8
  %45 = ptrtoint ptr %port_dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %port_dev, align 8
  %call46 = tail call i32 @usb_add_gadget_udc(ptr noundef %46, ptr noundef %gadget) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47.not = icmp eq i32 %call46, 0
  br i1 %cmp47.not, label %if.end49, label %fail_udc

if.end49:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %registered = getelementptr %struct.ast_vhub_port, ptr %1, i32 %idx, i32 2, i32 7
  %47 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load50 = load i8, ptr %registered, align 4
  %bf.set = or i8 %bf.load50, -128
  store i8 %bf.set, ptr %registered, align 4
  br label %cleanup

fail_udc:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %port_dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %port_dev, align 8
  tail call void @device_del(ptr noundef %49) #5
  br label %fail_add

fail_add:                                         ; preds = %fail_udc, %dev_name.exit.fail_add_crit_edge
  %rc.0 = phi i32 [ %call23, %dev_name.exit.fail_add_crit_edge ], [ %call46, %fail_udc ]
  %50 = ptrtoint ptr %port_dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %port_dev, align 8
  tail call void @put_device(ptr noundef %51) #5
  br label %fail_alloc

fail_alloc:                                       ; preds = %fail_add, %if.end.fail_alloc_crit_edge
  %rc.1 = phi i32 [ %rc.0, %fail_add ], [ -12, %if.end.fail_alloc_crit_edge ]
  %52 = ptrtoint ptr %epns to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %epns, align 4
  tail call void @kfree(ptr noundef %53) #5
  br label %cleanup

cleanup:                                          ; preds = %fail_alloc, %if.end49, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %fail_alloc ], [ 0, %if.end49 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_init_ep0(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ast_vhub_dev_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %dev) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_gadget_udc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_update_epn_stall(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_reset_ep0(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ast_vhub_udc_get_frame(ptr nocapture noundef readonly %gadget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %gadget, i32 -24
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %regs = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 36
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #5, !srcloc !85
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  %shr = lshr i32 %5, 16
  %and = and i32 %shr, 2047
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ast_vhub_udc_wakeup(ptr nocapture noundef readonly %gadget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %gadget, i32 -24
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %lock = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %wakeup_en = getelementptr i8, ptr %gadget, i32 1052
  %2 = ptrtoint ptr %wakeup_en to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %wakeup_en, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %bf.cast.not = icmp eq i8 %3, 0
  br i1 %bf.cast.not, label %entry.err_crit_edge, label %do.body7

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

do.body7:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_udc_wakeup.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_udc_wakeup, %do.end19)) #5
          to label %if.then13 [label %do.end19], !srcloc !89

if.then13:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %name = getelementptr i8, ptr %gadget, i32 -12
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_udc_wakeup.__UNIQUE_ID_ddebug247, ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef %9) #5
  br label %do.end19

do.end19:                                         ; preds = %if.then13, %do.body7
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 8
  tail call void @ast_vhub_hub_wake_all(ptr noundef %11) #5
  br label %err

err:                                              ; preds = %do.end19, %entry.err_crit_edge
  %rc.0 = phi i32 [ 0, %do.end19 ], [ -22, %entry.err_crit_edge ]
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 8
  %lock22 = getelementptr inbounds %struct.ast_vhub, ptr %13, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock22, i32 noundef %call3) #5
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ast_vhub_udc_pullup(ptr nocapture noundef %gadget, i32 noundef %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %gadget, i32 -24
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %lock = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_udc_pullup.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_udc_pullup, %do.end17)) #5
          to label %if.then [label %do.end17], !srcloc !89

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %name = getelementptr i8, ptr %gadget, i32 -12
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_udc_pullup.__UNIQUE_ID_ddebug248, ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef %7, i32 noundef %on) #5
  br label %do.end17

do.end17:                                         ; preds = %if.then, %entry
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 8
  %index = getelementptr i8, ptr %gadget, i32 -16
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool19 = icmp ne i32 %on, 0
  tail call void @ast_vhub_device_connect(ptr noundef %9, i32 noundef %11, i1 noundef zeroext %tobool19) #5
  %enabled = getelementptr i8, ptr %gadget, i32 1052
  %12 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %enabled, align 4
  %13 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %bf.cast.not = icmp eq i8 %13, 0
  br i1 %bf.cast.not, label %do.end17.if.end21_crit_edge, label %if.then20

do.end17.if.end21_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then20:                                        ; preds = %do.end17
  %max_epns.i = getelementptr i8, ptr %gadget, i32 1224
  %14 = ptrtoint ptr %max_epns.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_epns.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp8.not.i = icmp eq i32 %15, 0
  br i1 %cmp8.not.i, label %if.then20.ast_vhub_dev_nuke.exit_crit_edge, label %for.body.lr.ph.i

if.then20.ast_vhub_dev_nuke.exit_crit_edge:       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %ast_vhub_dev_nuke.exit

for.body.lr.ph.i:                                 ; preds = %if.then20
  %epns.i = getelementptr i8, ptr %gadget, i32 1220
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %epns.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %epns.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %17, i32 %i.09.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ast_vhub_nuke(ptr noundef nonnull %19, i32 noundef -108) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.09.i, 1
  %20 = ptrtoint ptr %max_epns.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_epns.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %21
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.ast_vhub_dev_nuke.exit_crit_edge

for.inc.i.ast_vhub_dev_nuke.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ast_vhub_dev_nuke.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

ast_vhub_dev_nuke.exit:                           ; preds = %for.inc.i.ast_vhub_dev_nuke.exit_crit_edge, %if.then20.ast_vhub_dev_nuke.exit_crit_edge
  %22 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load.i = load i8, ptr %enabled, align 4
  %23 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %bf.cast.not.i = icmp eq i8 %23, 0
  br i1 %bf.cast.not.i, label %ast_vhub_dev_nuke.exit.if.end21_crit_edge, label %if.end.i33

ast_vhub_dev_nuke.exit.if.end21_crit_edge:        ; preds = %ast_vhub_dev_nuke.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.end.i33:                                       ; preds = %ast_vhub_dev_nuke.exit
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %index, align 8
  %shl.i = shl i32 512, %25
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 8
  %regs.i = getelementptr inbounds %struct.ast_vhub, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 8
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !85
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %31, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !95
  tail call void @arm_heavy_mb() #5
  %32 = tail call i32 @llvm.bswap.i32(i32 %and.i) #5
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr, align 8
  %regs3.i = getelementptr inbounds %struct.ast_vhub, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %regs3.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs3.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %36, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %32) #5, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !96
  tail call void @arm_heavy_mb() #5
  %regs8.i = getelementptr i8, ptr %gadget, i32 -20
  %37 = ptrtoint ptr %regs8.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs8.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 0) #5, !srcloc !88
  %speed.i = getelementptr i8, ptr %gadget, i32 64
  %39 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %speed.i, align 8
  %40 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load11.i = load i8, ptr %enabled, align 4
  %bf.clear12.i = and i8 %bf.load11.i, -33
  store i8 %bf.clear12.i, ptr %enabled, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end.i33, %ast_vhub_dev_nuke.exit.if.end21_crit_edge, %do.end17.if.end21_crit_edge
  %41 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr, align 8
  %lock23 = getelementptr inbounds %struct.ast_vhub, ptr %42, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock23, i32 noundef %call3) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ast_vhub_udc_start(ptr nocapture noundef %gadget, ptr noundef %driver) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %gadget, i32 -24
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %lock = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_udc_start.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_udc_start, %do.end17)) #5
          to label %if.then [label %do.end17], !srcloc !89

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %name = getelementptr i8, ptr %gadget, i32 -12
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_udc_start.__UNIQUE_ID_ddebug249, ptr noundef %dev, ptr noundef nonnull @.str.31, ptr noundef %7) #5
  br label %do.end17

do.end17:                                         ; preds = %if.then, %entry
  %driver18 = getelementptr i8, ptr %gadget, i32 1048
  %8 = ptrtoint ptr %driver18 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %driver, ptr %driver18, align 8
  %is_selfpowered = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 17
  %9 = ptrtoint ptr %is_selfpowered to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load = load i32, ptr %is_selfpowered, align 4
  %bf.set = or i32 %bf.load, 262144
  store i32 %bf.set, ptr %is_selfpowered, align 4
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 8
  %lock21 = getelementptr inbounds %struct.ast_vhub, ptr %11, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock21, i32 noundef %call3) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ast_vhub_udc_stop(ptr nocapture noundef %gadget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %gadget, i32 -24
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %lock = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_udc_stop.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_udc_stop, %do.end17)) #5
          to label %if.then [label %do.end17], !srcloc !89

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %name = getelementptr i8, ptr %gadget, i32 -12
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_udc_stop.__UNIQUE_ID_ddebug253, ptr noundef %dev, ptr noundef nonnull @.str.33, ptr noundef %7) #5
  br label %do.end17

do.end17:                                         ; preds = %if.then, %entry
  %driver = getelementptr i8, ptr %gadget, i32 1048
  %8 = ptrtoint ptr %driver to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %driver, align 8
  %speed = getelementptr %struct.usb_gadget, ptr %gadget, i32 0, i32 5
  %9 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %speed, align 8
  %max_epns.i = getelementptr i8, ptr %gadget, i32 1224
  %10 = ptrtoint ptr %max_epns.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_epns.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp8.not.i = icmp eq i32 %11, 0
  br i1 %cmp8.not.i, label %do.end17.ast_vhub_dev_nuke.exit_crit_edge, label %for.body.lr.ph.i

do.end17.ast_vhub_dev_nuke.exit_crit_edge:        ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %ast_vhub_dev_nuke.exit

for.body.lr.ph.i:                                 ; preds = %do.end17
  %epns.i = getelementptr i8, ptr %gadget, i32 1220
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %epns.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %epns.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %13, i32 %i.09.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ast_vhub_nuke(ptr noundef nonnull %15, i32 noundef -108) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.09.i, 1
  %16 = ptrtoint ptr %max_epns.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_epns.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %17
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.ast_vhub_dev_nuke.exit_crit_edge

for.inc.i.ast_vhub_dev_nuke.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ast_vhub_dev_nuke.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

ast_vhub_dev_nuke.exit:                           ; preds = %for.inc.i.ast_vhub_dev_nuke.exit_crit_edge, %do.end17.ast_vhub_dev_nuke.exit_crit_edge
  %enabled = getelementptr i8, ptr %gadget, i32 1052
  %18 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %enabled, align 4
  %19 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %bf.cast.not = icmp eq i8 %19, 0
  br i1 %bf.cast.not, label %ast_vhub_dev_nuke.exit.if.end20_crit_edge, label %if.then19

ast_vhub_dev_nuke.exit.if.end20_crit_edge:        ; preds = %ast_vhub_dev_nuke.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then19:                                        ; preds = %ast_vhub_dev_nuke.exit
  %20 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i = load i8, ptr %enabled, align 4
  %21 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %bf.cast.not.i = icmp eq i8 %21, 0
  br i1 %bf.cast.not.i, label %if.then19.if.end20_crit_edge, label %if.end.i31

if.then19.if.end20_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.end.i31:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  %index.i = getelementptr i8, ptr %gadget, i32 -16
  %22 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index.i, align 8
  %shl.i = shl i32 512, %23
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 8
  %regs.i = getelementptr inbounds %struct.ast_vhub, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !85
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %29, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !95
  tail call void @arm_heavy_mb() #5
  %30 = tail call i32 @llvm.bswap.i32(i32 %and.i) #5
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr, align 8
  %regs3.i = getelementptr inbounds %struct.ast_vhub, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %regs3.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs3.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %34, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %30) #5, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !96
  tail call void @arm_heavy_mb() #5
  %regs8.i = getelementptr i8, ptr %gadget, i32 -20
  %35 = ptrtoint ptr %regs8.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs8.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 0) #5, !srcloc !88
  %37 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %speed, align 8
  %38 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load11.i = load i8, ptr %enabled, align 4
  %bf.clear12.i = and i8 %bf.load11.i, -33
  store i8 %bf.clear12.i, ptr %enabled, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end.i31, %if.then19.if.end20_crit_edge, %ast_vhub_dev_nuke.exit.if.end20_crit_edge
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr, align 8
  %lock22 = getelementptr inbounds %struct.ast_vhub, ptr %40, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock22, i32 noundef %call3) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ast_vhub_udc_match_ep(ptr noundef %gadget, ptr noundef %desc, ptr noundef %ss) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %gadget, i32 -24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_udc_match_ep.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_udc_match_ep, %do.end8)) #5
          to label %if.then [label %do.end8], !srcloc !89

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %name = getelementptr i8, ptr %gadget, i32 -12
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 3
  %6 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bmAttributes.i, align 1
  %8 = and i8 %7, 3
  %and.i = zext i8 %8 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_udc_match_ep.__UNIQUE_ID_ddebug250, ptr noundef %dev, ptr noundef nonnull @.str.35, ptr noundef %5, i32 noundef %and.i) #5
  br label %do.end8

do.end8:                                          ; preds = %if.then, %entry
  %ep_list = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end8
  %.pn.in = phi ptr [ %ep_list, %do.end8 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %9 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %ep_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %u_ep.0 = getelementptr i8, ptr %.pn, i32 -12
  %call16 = tail call i32 @usb_gadget_ep_match_desc(ptr noundef %gadget, ptr noundef %u_ep.0, ptr noundef %desc, ptr noundef %ss) #5
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %for.body.for.cond_crit_edge, label %do.body20

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

do.body20:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_udc_match_ep.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_udc_match_ep, %cleanup)) #5
          to label %if.then34 [label %cleanup], !srcloc !89

if.then34:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %dev37 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  %name38 = getelementptr i8, ptr %gadget, i32 -12
  %14 = ptrtoint ptr %name38 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name38, align 4
  %d_idx = getelementptr i8, ptr %.pn, i32 40
  %16 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %d_idx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_udc_match_ep.__UNIQUE_ID_ddebug251, ptr noundef %dev37, ptr noundef nonnull @.str.36, ptr noundef %15, i32 noundef %17) #5
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %bmAttributes.i159 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 3
  %18 = ptrtoint ptr %bmAttributes.i159 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bmAttributes.i159, align 1
  %20 = and i8 %19, 3
  %and.i160 = zext i8 %20 to i32
  %21 = zext i32 %and.i160 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %and.i160, label %for.end.unreachabledefault [
    i32 0, label %for.end.cleanup_crit_edge
    i32 1, label %sw.bb54
    i32 2, label %sw.bb59
    i32 3, label %sw.bb65
  ]

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb54:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %max_speed.i = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 6
  %22 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp.i = icmp ult i32 %23, 3
  %. = select i1 %cmp.i, i32 1023, i32 1024
  br label %sw.epilog

sw.bb59:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %max_speed.i161 = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 6
  %24 = ptrtoint ptr %max_speed.i161 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_speed.i161, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp.i162 = icmp ult i32 %25, 3
  %.151 = select i1 %cmp.i162, i32 64, i32 512
  br label %sw.epilog

sw.bb65:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %max_speed.i164 = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 6
  %26 = ptrtoint ptr %max_speed.i164 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_speed.i164, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp.i165 = icmp ult i32 %27, 3
  %.152 = select i1 %cmp.i165, i32 64, i32 1024
  br label %sw.epilog

for.end.unreachabledefault:                       ; preds = %for.end
  unreachable

sw.epilog:                                        ; preds = %sw.bb65, %sw.bb59, %sw.bb54
  %max.0 = phi i32 [ %., %sw.bb54 ], [ %.151, %sw.bb59 ], [ %.152, %sw.bb65 ]
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 4
  %28 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %wMaxPacketSize.i, align 1
  %30 = and i16 %29, -249
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #5
  %and.i167 = zext i16 %31 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %max.0, i32 %and.i167)
  %cmp72 = icmp ult i32 %max.0, %and.i167
  br i1 %cmp72, label %sw.epilog.cleanup_crit_edge, label %for.cond75.preheader

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond75.preheader:                             ; preds = %sw.epilog
  %max_epns = getelementptr i8, ptr %gadget, i32 1224
  %32 = ptrtoint ptr %max_epns to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_epns, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp76174.not = icmp eq i32 %33, 0
  br i1 %cmp76174.not, label %for.cond75.preheader.cleanup_crit_edge, label %for.body77.lr.ph

for.cond75.preheader.cleanup_crit_edge:           ; preds = %for.cond75.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body77.lr.ph:                                 ; preds = %for.cond75.preheader
  %epns = getelementptr i8, ptr %gadget, i32 1220
  %34 = ptrtoint ptr %epns to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %epns, align 4
  br label %for.body77

for.body77:                                       ; preds = %for.inc81.for.body77_crit_edge, %for.body77.lr.ph
  %i.0175 = phi i32 [ 0, %for.body77.lr.ph ], [ %add, %for.inc81.for.body77_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %35, i32 %i.0175
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 4
  %cmp78 = icmp eq ptr %37, null
  %add = add nuw i32 %i.0175, 1
  br i1 %cmp78, label %if.end86, label %for.inc81

for.inc81:                                        ; preds = %for.body77
  %exitcond.not = icmp eq i32 %add, %33
  br i1 %exitcond.not, label %for.inc81.cleanup_crit_edge, label %for.inc81.for.body77_crit_edge

for.inc81.for.body77_crit_edge:                   ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body77

for.inc81.cleanup_crit_edge:                      ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end86:                                         ; preds = %for.body77
  %conv = trunc i32 %add to i8
  %call87 = tail call ptr @ast_vhub_alloc_epn(ptr noundef %add.ptr, i8 noundef zeroext %conv) #5
  %tobool88.not = icmp eq ptr %call87, null
  br i1 %tobool88.not, label %if.end86.cleanup_crit_edge, label %do.body92

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body92:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_udc_match_ep.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_udc_match_ep, %cleanup)) #5
          to label %if.then106 [label %cleanup], !srcloc !89

if.then106:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %dev109 = getelementptr inbounds %struct.platform_device, ptr %41, i32 0, i32 3
  %name110 = getelementptr i8, ptr %gadget, i32 -12
  %42 = ptrtoint ptr %name110 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %name110, align 4
  %g_idx = getelementptr inbounds %struct.ast_vhub_ep, ptr %call87, i32 0, i32 7, i32 0, i32 1
  %44 = ptrtoint ptr %g_idx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %g_idx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_udc_match_ep.__UNIQUE_ID_ddebug252, ptr noundef %dev109, ptr noundef nonnull @.str.37, ptr noundef %43, i32 noundef %45, i32 noundef %add) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then106, %do.body92, %if.end86.cleanup_crit_edge, %for.inc81.cleanup_crit_edge, %for.cond75.preheader.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then34, %do.body20
  %retval.0 = phi ptr [ %u_ep.0, %if.then34 ], [ null, %for.end.cleanup_crit_edge ], [ null, %sw.epilog.cleanup_crit_edge ], [ null, %if.end86.cleanup_crit_edge ], [ %call87, %if.then106 ], [ %u_ep.0, %do.body20 ], [ %call87, %do.body92 ], [ null, %for.cond75.preheader.cleanup_crit_edge ], [ null, %for.inc81.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_hub_wake_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_device_connect(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_nuke(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_ep_match_desc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ast_vhub_alloc_epn(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !12, !13, !14, !16, !17, !19, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !75}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/dev.c", i32 226, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ast_vhub_std_dev_request.__UNIQUE_ID_ddebug245, !1, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/dev.c", i32 243, i32 3}
!9 = !{ptr @ast_vhub_std_dev_request.__UNIQUE_ID_ddebug246, !8, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/dev.c", i32 504, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ast_vhub_dev_reset.__UNIQUE_ID_ddebug254, !11, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/dev.c", i32 507, i32 3}
!16 = !{ptr @ast_vhub_dev_reset.__UNIQUE_ID_ddebug255, !15, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/dev.c", i32 551, i32 47}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/dev.c", i32 578, i32 28}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/dev.c", i32 210, i32 2}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ast_vhub_dev_set_address.__UNIQUE_ID_ddebug244, !22, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/dev.c", i32 172, i32 2}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ast_vhub_dev_status.__UNIQUE_ID_ddebug242, !26, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/dev.c", i32 188, i32 2}
!31 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @ast_vhub_ep_status.__UNIQUE_ID_ddebug243, !30, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/dev.c", i32 115, i32 2}
!35 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ast_vhub_dev_feature.__UNIQUE_ID_ddebug239, !34, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!37 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/dev.c", i32 142, i32 2}
!41 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @ast_vhub_ep_feature.__UNIQUE_ID_ddebug240, !40, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/dev.c", i32 159, i32 2}
!45 = !{ptr @ast_vhub_ep_feature.__UNIQUE_ID_ddebug241, !44, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!46 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ast_vhub_udc_ops, !49, !"ast_vhub_udc_ops", i1 false, i1 false}
!49 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/dev.c", i32 467, i32 36}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/dev.c", i32 287, i32 2}
!52 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ast_vhub_udc_wakeup.__UNIQUE_ID_ddebug247, !51, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/dev.c", i32 322, i32 2}
!56 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ast_vhub_udc_pullup.__UNIQUE_ID_ddebug248, !55, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/dev.c", i32 349, i32 2}
!60 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @ast_vhub_udc_start.__UNIQUE_ID_ddebug249, !59, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/dev.c", i32 452, i32 2}
!64 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @ast_vhub_udc_stop.__UNIQUE_ID_ddebug253, !63, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/dev.c", i32 369, i32 2}
!68 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @ast_vhub_udc_match_ep.__UNIQUE_ID_ddebug250, !67, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/dev.c", i32 379, i32 4}
!72 = !{ptr @ast_vhub_udc_match_ep.__UNIQUE_ID_ddebug251, !71, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/dev.c", i32 439, i32 2}
!75 = !{ptr @ast_vhub_udc_match_ep.__UNIQUE_ID_ddebug252, !74, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{i64 5285381}
!86 = !{i64 2154757190}
!87 = !{i64 2154757408}
!88 = !{i64 5284963}
!89 = !{i64 2148704339, i64 2148704344, i64 2148704357, i64 2148704401, i64 2148704435, i64 2148704456}
!90 = !{i64 2154779696}
!91 = !{i64 2154779942}
!92 = !{i64 2154763999}
!93 = !{i64 2154764920}
!94 = !{i64 2154759942}
!95 = !{i64 2154760164}
!96 = !{i64 2154760556}
!97 = !{i64 2154757874}
!98 = !{i64 2154758578}
!99 = !{i64 2154758800}
!100 = !{i64 2154759205}
!101 = !{i64 2154797156}
