; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/udc/aspeed-vhub/hub.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/aspeed-vhub/hub.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.ast_vhub_full_cdesc = type { %struct.usb_config_descriptor, %struct.usb_interface_descriptor, %struct.usb_endpoint_descriptor }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_hub_descriptor = type <{ i8, i8, i8, i16, i8, i8, %union.anon.70 }>
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { [4 x i8], [4 x i8] }
%struct.usb_qualifier_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.usb_string = type { i8, ptr }
%struct.ast_vhub_ep = type { %struct.usb_ep, %struct.list_head, i32, ptr, ptr, ptr, i32, %union.anon }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.list_head = type { ptr, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, i32, i8, %struct.ast_vhub_req }
%struct.ast_vhub_req = type { %struct.usb_request, %struct.list_head, i32, i32, i8 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.ast_vhub = type { ptr, ptr, i32, %struct.spinlock, %struct.work_struct, ptr, ptr, i32, %struct.ast_vhub_ep, i8, ptr, i32, i32, ptr, i32, i8, i32, %struct.usb_device_descriptor, %struct.ast_vhub_full_cdesc, %struct.usb_hub_descriptor, %struct.list_head, %struct.usb_qualifier_descriptor }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ast_vhub_dev = type { ptr, ptr, i32, ptr, ptr, %struct.usb_gadget, ptr, i8, %struct.ast_vhub_ep, ptr, i32 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.usb_gadget_string_container = type { %struct.list_head, [0 x ptr] }
%struct.usb_string_descriptor = type { i8, i8, [1 x i16] }
%struct.ast_vhub_port = type { i16, i16, %struct.ast_vhub_dev }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@ast_vhub_std_hub_request.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 104, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aspeed_vhub\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ast_vhub_std_hub_request\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/usb/gadget/udc/aspeed-vhub/hub.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"USB status=%08x speed=%s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"high\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@ast_vhub_std_hub_request.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 106, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s:EP%d SET_ADDRESS: Got address %x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hub\00", [28 x i8] zeroinitializer }, align 32
@ast_vhub_class_hub_request.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 -62, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ast_vhub_class_hub_request\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s:EP%d GetHubStatus\0A\00", [42 x i8] zeroinitializer }, align 32
@ast_vhub_class_hub_request.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.10, i8 0, i8 -61, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s:EP%d GetPortStatus(%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@ast_vhub_class_hub_request.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.11, i8 0, i8 -60, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s:EP%d GetHubDescriptor(%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@ast_vhub_class_hub_request.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.12, i8 0, i8 -59, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s:EP%d Get/SetHubFeature(%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@ast_vhub_class_hub_request.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.13, i8 0, i8 -57, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s:EP%d SetPortFeature(%d,%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@ast_vhub_class_hub_request.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.14, i8 0, i8 -57, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s:EP%d ClearPortFeature(%d,%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@ast_vhub_class_hub_request.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.15, i8 0, i8 -54, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s:EP%d Unknown class request\0A\00", [33 x i8] zeroinitializer }, align 32
@ast_vhub_hub_suspend.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 -52, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ast_vhub_hub_suspend\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"USB bus suspend\0A\00", [47 x i8] zeroinitializer }, align 32
@ast_vhub_hub_resume.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 -46, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ast_vhub_hub_resume\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"USB bus resume\0A\00", [16 x i8] zeroinitializer }, align 32
@ast_vhub_hub_reset.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 -41, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ast_vhub_hub_reset\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"USB bus reset\0A\00", [17 x i8] zeroinitializer }, align 32
@ast_vhub_init_hub.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&vhub->wake_work)\00", [60 x i8] zeroinitializer }, align 32
@ast_vhub_hub_dev_status.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 43, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ast_vhub_hub_dev_status\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s:EP%d GET_STATUS(dev)\0A\00", [39 x i8] zeroinitializer }, align 32
@ast_vhub_hub_ep_status.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 49, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ast_vhub_hub_ep_status\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s:EP%d GET_STATUS(ep%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@ast_vhub_hub_dev_feature.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 54, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ast_vhub_hub_dev_feature\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s:EP%d %s_FEATURE(dev val=%02x)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SET\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CLEAR\00", [26 x i8] zeroinitializer }, align 32
@ast_vhub_hub_dev_feature.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.31, i8 0, i8 55, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s:EP%d Hub remote wakeup %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@ast_vhub_hub_ep_feature.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 0, i8 62, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ast_vhub_hub_ep_feature\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s:EP%d %s_FEATURE(ep%d val=%02x)\0A\00", [61 x i8] zeroinitializer }, align 32
@ast_vhub_hub_ep_feature.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.36, i8 0, i8 64, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s:EP%d %s stall on EP 1\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"setting\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clearing\00", [23 x i8] zeroinitializer }, align 32
@ast_vhub_rep_desc.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 0, i8 69, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ast_vhub_rep_desc\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s:EP%d GET_DESCRIPTOR(type:%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@ast_vhub_change_port_stat.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 0, i8 126, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ast_vhub_change_port_stat\00", [38 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s port %d status %04x -> %04x (C=%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@ast_vhub_send_host_wakeup.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 0, i8 -122, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ast_vhub_send_host_wakeup\00", [38 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Waking up host !\0A\00", [46 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@ast_vhub_get_port_stat.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 0, i8 -67, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ast_vhub_get_port_stat\00", [41 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s:EP%d  port status=%04x change=%04x\0A\00", [57 x i8] zeroinitializer }, align 32
@ast_vhub_set_port_feature.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 0, i8 -88, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ast_vhub_set_port_feature\00", [38 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s:EP%d Port reset !\0A\00", [42 x i8] zeroinitializer }, align 32
@ast_vhub_port_reset.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 0, i8 -96, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ast_vhub_port_reset\00", [44 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Unsupported speed %d when connecting device\0A\00", [51 x i8] zeroinitializer }, align 32
@ast_vhub_dev_desc = internal constant { %struct.usb_device_descriptor, [46 x i8] } { %struct.usb_device_descriptor { i8 18, i8 1, i16 2, i8 9, i8 0, i8 1, i8 64, i16 27421, i16 1793, i16 1, i8 3, i8 2, i8 1, i8 1 }, [46 x i8] zeroinitializer }, align 32
@ast_vhub_conf_desc = internal constant { %struct.ast_vhub_full_cdesc, [37 x i8] } { %struct.ast_vhub_full_cdesc { %struct.usb_config_descriptor <{ i8 9, i8 2, i16 6400, i8 1, i8 1, i8 0, i8 -32, i8 0 }>, %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 1, i8 9, i8 0, i8 0, i8 0 }, %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -127, i8 3, i16 256, i8 12, i8 0, i8 0 }> }, [37 x i8] zeroinitializer }, align 32
@ast_vhub_hub_desc = internal constant { %struct.usb_hub_descriptor, [17 x i8] } { %struct.usb_hub_descriptor <{ i8 9, i8 41, i8 5, i16 512, i8 10, i8 0, %union.anon.70 { %struct.anon.71 { [4 x i8] c"\00\FF\00\00", [4 x i8] zeroinitializer } } }>, [17 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vhub-strings\00", [19 x i8] zeroinitializer }, align 32
@ast_vhub_qual_desc = internal constant { %struct.usb_qualifier_descriptor, [22 x i8] } { %struct.usb_qualifier_descriptor { i8 10, i8 6, i16 2, i8 9, i8 0, i8 0, i8 64, i8 1, i8 0 }, [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vhub-vendor-id\00", [17 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vhub-product-id\00", [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vhub-device-revision\00", [43 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"manufacturer\00", [19 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"product\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"serial-number\00", [18 x i8] zeroinitializer }, align 32
@ast_vhub_str_array = internal constant { [4 x %struct.usb_string], [32 x i8] } { [4 x %struct.usb_string] [%struct.usb_string { i8 1, ptr @.str.59 }, %struct.usb_string { i8 2, ptr @.str.60 }, %struct.usb_string { i8 3, ptr @.str.61 }, %struct.usb_string zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"00000000\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"USB Virtual Hub\00", [16 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Aspeed\00", [25 x i8] zeroinitializer }, align 32
@switch.table.ast_vhub_port_reset = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 1040, i16 1552, i16 528], [26 x i8] zeroinitializer }, align 32
@switch.table.ast_vhub_port_reset.62 = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 514, i16 2, i16 1026], [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 16, i64 1, i64 3, i64 5, i64 9, i64 11, i64 513, i64 515, i64 32768, i64 32774, i64 32776, i64 32778, i64 33024, i64 33280]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 4, i64 0, i64 1]
@__sancov_gen_cov_switch_values.64 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 6, i64 7]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.66 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 6, i64 7, i64 41]
@__sancov_gen_cov_switch_values.67 = internal global [13 x i64] [i64 11, i64 16, i64 8193, i64 8195, i64 8961, i64 8963, i64 8968, i64 8969, i64 8971, i64 40960, i64 40966, i64 41728, i64 41738]
@__sancov_gen_cov_switch_values.68 = internal global [7 x i64] [i64 5, i64 16, i64 2, i64 4, i64 8, i64 21, i64 22]
@__sancov_gen_cov_switch_values.69 = internal global [11 x i64] [i64 9, i64 16, i64 1, i64 2, i64 8, i64 16, i64 17, i64 18, i64 19, i64 20, i64 22]
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 418, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 425, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 777, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 780, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 785, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 789, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 796, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 799, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 808, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 817, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 840, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 863, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1077, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 174, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 199, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 217, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 222, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 247, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 257, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 279, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 506, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 536, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 757, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 673, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 640, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant [18 x i8] c"ast_vhub_dev_desc\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 54, i32 43 }
@___asan_gen_.229 = private unnamed_addr constant [19 x i8] c"ast_vhub_conf_desc\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 97, i32 41 }
@___asan_gen_.232 = private unnamed_addr constant [18 x i8] c"ast_vhub_hub_desc\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 133, i32 40 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1061, i32 42 }
@___asan_gen_.238 = private unnamed_addr constant [19 x i8] c"ast_vhub_qual_desc\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 71, i32 46 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 911, i32 37 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 915, i32 37 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 919, i32 37 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1009, i32 35 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 989, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 990, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 991, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant [19 x i8] c"ast_vhub_str_array\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 148, i32 32 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 151, i32 8 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 155, i32 8 }
@___asan_gen_.271 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.272 = private constant [44 x i8] c"../drivers/usb/gadget/udc/aspeed-vhub/hub.c\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 159, i32 8 }
@___asan_gen_.274 = private unnamed_addr constant [33 x i8] c"switch.table.ast_vhub_port_reset\00", align 1
@___asan_gen_.275 = private unnamed_addr constant [36 x i8] c"switch.table.ast_vhub_port_reset.62\00", align 1
@llvm.compiler.used = appending global [70 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @ast_vhub_init_hub.__key, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @ast_vhub_dev_desc, ptr @ast_vhub_conf_desc, ptr @ast_vhub_hub_desc, ptr @.str.51, ptr @ast_vhub_qual_desc, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @ast_vhub_str_array, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @switch.table.ast_vhub_port_reset, ptr @switch.table.ast_vhub_port_reset.62], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_vhub_init_hub.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_vhub_dev_desc to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_vhub_conf_desc to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_vhub_hub_desc to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_vhub_qual_desc to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_vhub_str_array to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ast_vhub_port_reset to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ast_vhub_port_reset.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ast_vhub_std_hub_request(ptr noundef %ep, ptr nocapture noundef readonly %crq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %vhub1 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %0 = ptrtoint ptr %vhub1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vhub1, align 4
  %wValue2 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %crq, i32 0, i32 2
  %2 = ptrtoint ptr %wValue2 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %wValue2, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %wIndex3 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %crq, i32 0, i32 3
  %5 = ptrtoint ptr %wIndex3 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %wIndex3, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %wLength4 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %crq, i32 0, i32 4
  %8 = ptrtoint ptr %wLength4 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %wLength4, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %speed = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 16
  %11 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %regs = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 36
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !146
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !147
  %and = and i32 %16, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 2, i32 3
  %17 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %., ptr %speed, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_std_hub_request.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_std_hub_request, %if.end19)) #4
          to label %if.then15 [label %if.end19], !srcloc !148

if.then15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %cmp17 = icmp eq i32 %21, 3
  %cond = select i1 %cmp17, ptr @.str.4, ptr @.str.5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_std_hub_request.__UNIQUE_ID_ddebug254, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %16, ptr noundef nonnull %cond) #4
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.then, %entry.if.end19_crit_edge
  %22 = ptrtoint ptr %crq to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %crq, align 1
  %conv = zext i8 %23 to i16
  %shl = shl nuw i16 %conv, 8
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %crq, i32 0, i32 1
  %24 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bRequest, align 1
  %conv20 = zext i8 %25 to i16
  %or = or i16 %shl, %conv20
  %26 = zext i16 %or to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i16 %or, label %if.end19.cleanup_crit_edge [
    i16 5, label %do.body22
    i16 -32768, label %sw.bb56
    i16 -32512, label %sw.bb58
    i16 -32256, label %sw.bb60
    i16 3, label %sw.bb62
    i16 1, label %sw.bb64
    i16 515, label %sw.bb66
    i16 513, label %sw.bb68
    i16 -32760, label %sw.bb70
    i16 9, label %sw.bb72
    i16 -32762, label %sw.bb78
    i16 -32758, label %sw.bb90
    i16 11, label %sw.bb92
  ]

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body22:                                        ; preds = %if.end19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_std_hub_request.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_std_hub_request, %do.body50)) #4
          to label %if.then36 [label %do.body50], !srcloc !148

if.then36:                                        ; preds = %do.body22
  %27 = ptrtoint ptr %vhub1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vhub1, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %dev39 = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3
  %dev40 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 3
  %31 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev40, align 4
  %tobool41.not = icmp eq ptr %32, null
  br i1 %tobool41.not, label %if.then36.cond.end_crit_edge, label %cond.true

if.then36.cond.end_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.ast_vhub_dev, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then36.cond.end_crit_edge
  %cond43 = phi ptr [ %34, %cond.true ], [ @.str.7, %if.then36.cond.end_crit_edge ]
  %d_idx = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 2
  %35 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %d_idx, align 4
  %conv44 = zext i16 %4 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_std_hub_request.__UNIQUE_ID_ddebug255, ptr noundef %dev39, ptr noundef nonnull @.str.6, ptr noundef %cond43, i32 noundef %36, i32 noundef %conv44) #4
  br label %do.body50

do.body50:                                        ; preds = %cond.end, %do.body22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !149
  tail call void @arm_heavy_mb() #4
  %conv53 = zext i16 %4 to i32
  %37 = tail call i32 @llvm.bswap.i32(i32 %conv53)
  %regs54 = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %regs54 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs54, align 4
  %add.ptr55 = getelementptr i8, ptr %39, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %37) #4, !srcloc !150
  br label %cleanup

sw.bb56:                                          ; preds = %if.end19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_hub_dev_status.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_std_hub_request, %ast_vhub_hub_dev_status.exit)) #4
          to label %if.then.i [label %ast_vhub_hub_dev_status.exit], !srcloc !148

if.then.i:                                        ; preds = %sw.bb56
  %40 = ptrtoint ptr %vhub1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vhub1, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %43, i32 0, i32 3
  %dev5.i = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 3
  %44 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev5.i, align 4
  %tobool6.not.i = icmp eq ptr %45, null
  br i1 %tobool6.not.i, label %if.then.i.cond.end.i_crit_edge, label %cond.true.i

if.then.i.cond.end.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %name.i = getelementptr inbounds %struct.ast_vhub_dev, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %name.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %47, %cond.true.i ], [ @.str.7, %if.then.i.cond.end.i_crit_edge ]
  %d_idx.i = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 2
  %48 = ptrtoint ptr %d_idx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %d_idx.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_hub_dev_status.__UNIQUE_ID_ddebug239, ptr noundef %dev.i, ptr noundef nonnull @.str.24, ptr noundef %cond.i, i32 noundef %49) #4
  br label %ast_vhub_hub_dev_status.exit

ast_vhub_hub_dev_status.exit:                     ; preds = %cond.end.i, %sw.bb56
  %50 = ptrtoint ptr %vhub1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %vhub1, align 4
  %wakeup_en.i = getelementptr inbounds %struct.ast_vhub, ptr %51, i32 0, i32 15
  %52 = ptrtoint ptr %wakeup_en.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load.i = load i8, ptr %wakeup_en.i, align 4
  %53 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %bf.cast.not.i = icmp eq i8 %53, 0
  %spec.select.i = select i1 %bf.cast.not.i, i32 1, i32 3
  %call15.i = tail call i32 (ptr, i32, ...) @__ast_vhub_simple_reply(ptr noundef %ep, i32 noundef 2, i32 noundef %spec.select.i, i32 noundef 0) #4
  br label %cleanup

sw.bb58:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %call59 = tail call i32 (ptr, i32, ...) @__ast_vhub_simple_reply(ptr noundef %ep, i32 noundef 2, i32 noundef 0, i32 noundef 0) #4
  br label %cleanup

sw.bb60:                                          ; preds = %if.end19
  %54 = and i16 %7, 15
  %and.i = zext i16 %54 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_hub_ep_status.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_std_hub_request, %do.end9.i)) #4
          to label %if.then.i159 [label %do.end9.i], !srcloc !148

if.then.i159:                                     ; preds = %sw.bb60
  %55 = ptrtoint ptr %vhub1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %vhub1, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %dev.i156 = getelementptr inbounds %struct.platform_device, ptr %58, i32 0, i32 3
  %dev5.i157 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 3
  %59 = ptrtoint ptr %dev5.i157 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev5.i157, align 4
  %tobool6.not.i158 = icmp eq ptr %60, null
  br i1 %tobool6.not.i158, label %if.then.i159.cond.end.i164_crit_edge, label %cond.true.i161

if.then.i159.cond.end.i164_crit_edge:             ; preds = %if.then.i159
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end.i164

cond.true.i161:                                   ; preds = %if.then.i159
  call void @__sanitizer_cov_trace_pc() #6
  %name.i160 = getelementptr inbounds %struct.ast_vhub_dev, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %name.i160 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %name.i160, align 4
  br label %cond.end.i164

cond.end.i164:                                    ; preds = %cond.true.i161, %if.then.i159.cond.end.i164_crit_edge
  %cond.i162 = phi ptr [ %62, %cond.true.i161 ], [ @.str.7, %if.then.i159.cond.end.i164_crit_edge ]
  %d_idx.i163 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 2
  %63 = ptrtoint ptr %d_idx.i163 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %d_idx.i163, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_hub_ep_status.__UNIQUE_ID_ddebug240, ptr noundef %dev.i156, ptr noundef nonnull @.str.26, ptr noundef %cond.i162, i32 noundef %64, i32 noundef %and.i) #4
  br label %do.end9.i

do.end9.i:                                        ; preds = %cond.end.i164, %sw.bb60
  %trunc.i = trunc i16 %7 to i4
  %65 = zext i4 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.63)
  switch i4 %trunc.i, label %do.end9.i.cleanup_crit_edge [
    i4 1, label %if.then11.i
    i4 0, label %do.end9.i.if.end21.i_crit_edge
  ]

do.end9.i.if.end21.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21.i

do.end9.i.cleanup_crit_edge:                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then11.i:                                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  %66 = ptrtoint ptr %vhub1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %vhub1, align 4
  %ep1_stalled.i = getelementptr inbounds %struct.ast_vhub, ptr %67, i32 0, i32 9
  %68 = ptrtoint ptr %ep1_stalled.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load.i165 = load i8, ptr %ep1_stalled.i, align 4
  %bf.load.lobit.i = lshr i8 %bf.load.i165, 7
  %69 = zext i8 %bf.load.lobit.i to i32
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then11.i, %do.end9.i.if.end21.i_crit_edge
  %st0.0.i = phi i32 [ %69, %if.then11.i ], [ 0, %do.end9.i.if.end21.i_crit_edge ]
  %call23.i = tail call i32 (ptr, i32, ...) @__ast_vhub_simple_reply(ptr noundef %ep, i32 noundef 2, i32 noundef %st0.0.i, i32 noundef 0) #4
  br label %cleanup

sw.bb62:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %call63 = tail call fastcc i32 @ast_vhub_hub_dev_feature(ptr noundef %ep, i16 noundef zeroext %7, i16 noundef zeroext %4, i1 noundef zeroext true)
  br label %cleanup

sw.bb64:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %call65 = tail call fastcc i32 @ast_vhub_hub_dev_feature(ptr noundef %ep, i16 noundef zeroext %7, i16 noundef zeroext %4, i1 noundef zeroext false)
  br label %cleanup

sw.bb66:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %call67 = tail call fastcc i32 @ast_vhub_hub_ep_feature(ptr noundef %ep, i16 noundef zeroext %7, i16 noundef zeroext %4, i1 noundef zeroext true)
  br label %cleanup

sw.bb68:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %call69 = tail call fastcc i32 @ast_vhub_hub_ep_feature(ptr noundef %ep, i16 noundef zeroext %7, i16 noundef zeroext %4, i1 noundef zeroext false)
  br label %cleanup

sw.bb70:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %call71 = tail call i32 (ptr, i32, ...) @__ast_vhub_simple_reply(ptr noundef %ep, i32 noundef 1, i32 noundef 1) #4
  br label %cleanup

sw.bb72:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %3)
  %cmp74.not = icmp ne i16 %3, 256
  %.151 = sext i1 %cmp74.not to i32
  br label %cleanup

sw.bb78:                                          ; preds = %if.end19
  %70 = lshr i16 %4, 8
  %trunc = trunc i16 %70 to i8
  %71 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %trunc, label %sw.bb78.cleanup_crit_edge [
    i8 1, label %sw.bb78.sw.bb80_crit_edge
    i8 2, label %sw.bb78.sw.bb80_crit_edge169
    i8 6, label %sw.bb78.sw.bb80_crit_edge170
    i8 7, label %sw.bb78.sw.bb80_crit_edge171
    i8 3, label %sw.bb85
  ]

sw.bb78.sw.bb80_crit_edge171:                     ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb80

sw.bb78.sw.bb80_crit_edge170:                     ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb80

sw.bb78.sw.bb80_crit_edge169:                     ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb80

sw.bb78.sw.bb80_crit_edge:                        ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb80

sw.bb78.cleanup_crit_edge:                        ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb80:                                          ; preds = %sw.bb78.sw.bb80_crit_edge, %sw.bb78.sw.bb80_crit_edge169, %sw.bb78.sw.bb80_crit_edge170, %sw.bb78.sw.bb80_crit_edge171
  %call84 = tail call fastcc i32 @ast_vhub_rep_desc(ptr noundef %ep, i8 noundef zeroext %trunc, i16 noundef zeroext %10)
  br label %cleanup

sw.bb85:                                          ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #6
  %conv88 = trunc i16 %4 to i8
  %call89 = tail call fastcc i32 @ast_vhub_rep_string(ptr noundef %ep, i8 noundef zeroext %conv88, i16 noundef zeroext %7, i16 noundef zeroext %10)
  br label %cleanup

sw.bb90:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %call91 = tail call i32 (ptr, i32, ...) @__ast_vhub_simple_reply(ptr noundef %ep, i32 noundef 1, i32 noundef 0) #4
  br label %cleanup

sw.bb92:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp94.not = icmp ne i16 %3, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp97.not = icmp ne i16 %6, 0
  %or.cond = select i1 %cmp94.not, i1 true, i1 %cmp97.not
  %spec.select = sext i1 %or.cond to i32
  br label %cleanup

cleanup:                                          ; preds = %sw.bb92, %sw.bb90, %sw.bb85, %sw.bb80, %sw.bb78.cleanup_crit_edge, %sw.bb72, %sw.bb70, %sw.bb68, %sw.bb66, %sw.bb64, %sw.bb62, %if.end21.i, %do.end9.i.cleanup_crit_edge, %sw.bb58, %ast_vhub_hub_dev_status.exit, %do.body50, %if.end19.cleanup_crit_edge
  %retval.0 = phi i32 [ %call91, %sw.bb90 ], [ %call89, %sw.bb85 ], [ %call84, %sw.bb80 ], [ %call71, %sw.bb70 ], [ %call69, %sw.bb68 ], [ %call67, %sw.bb66 ], [ %call65, %sw.bb64 ], [ %call63, %sw.bb62 ], [ %call59, %sw.bb58 ], [ %call15.i, %ast_vhub_hub_dev_status.exit ], [ 0, %do.body50 ], [ %.151, %sw.bb72 ], [ -1, %sw.bb78.cleanup_crit_edge ], [ -1, %if.end19.cleanup_crit_edge ], [ %spec.select, %sw.bb92 ], [ %call23.i, %if.end21.i ], [ -1, %do.end9.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ast_vhub_simple_reply(ptr noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ast_vhub_hub_dev_feature(ptr nocapture noundef readonly %ep, i16 noundef zeroext %wIndex, i16 noundef zeroext %wValue, i1 noundef zeroext %is_set) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_hub_dev_feature.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_hub_dev_feature, %do.end12)) #4
          to label %if.then [label %do.end12], !srcloc !148

if.then:                                          ; preds = %entry
  %vhub = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %0 = ptrtoint ptr %vhub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vhub, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %dev6 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 3
  %4 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev6, align 4
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %if.then.cond.end_crit_edge, label %cond.true

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.ast_vhub_dev, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond = phi ptr [ %7, %cond.true ], [ @.str.7, %if.then.cond.end_crit_edge ]
  %d_idx = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 2
  %8 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %d_idx, align 4
  %cond10 = select i1 %is_set, ptr @.str.29, ptr @.str.30
  %conv = zext i16 %wValue to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_hub_dev_feature.__UNIQUE_ID_ddebug241, ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef %cond, i32 noundef %9, ptr noundef nonnull %cond10, i32 noundef %conv) #4
  br label %do.end12

do.end12:                                         ; preds = %cond.end, %entry
  %10 = zext i16 %wValue to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.65)
  switch i16 %wValue, label %do.end12.cleanup_crit_edge [
    i16 1, label %if.then15
    i16 2, label %if.then59
  ]

do.end12.cleanup_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then15:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #6
  %vhub17 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %11 = ptrtoint ptr %vhub17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vhub17, align 4
  %wakeup_en = getelementptr inbounds %struct.ast_vhub, ptr %12, i32 0, i32 15
  %13 = ptrtoint ptr %wakeup_en to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %wakeup_en, align 4
  %bf.shl = select i1 %is_set, i8 64, i8 0
  %bf.clear = and i8 %bf.load, -65
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %wakeup_en, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_hub_dev_feature.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_hub_dev_feature, %cleanup)) #4
          to label %if.then34 [label %cleanup], !srcloc !148

if.then34:                                        ; preds = %if.then15
  %14 = ptrtoint ptr %vhub17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vhub17, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %dev37 = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  %dev38 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 3
  %18 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev38, align 4
  %tobool39.not = icmp eq ptr %19, null
  br i1 %tobool39.not, label %if.then34.cond.end44_crit_edge, label %cond.true40

if.then34.cond.end44_crit_edge:                   ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end44

cond.true40:                                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #6
  %name42 = getelementptr inbounds %struct.ast_vhub_dev, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %name42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name42, align 4
  br label %cond.end44

cond.end44:                                       ; preds = %cond.true40, %if.then34.cond.end44_crit_edge
  %cond45 = phi ptr [ %21, %cond.true40 ], [ @.str.7, %if.then34.cond.end44_crit_edge ]
  %d_idx46 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 2
  %22 = ptrtoint ptr %d_idx46 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %d_idx46, align 4
  %cond49 = select i1 %is_set, ptr @.str.32, ptr @.str.33
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_hub_dev_feature.__UNIQUE_ID_ddebug242, ptr noundef %dev37, ptr noundef nonnull @.str.31, ptr noundef %cond45, i32 noundef %23, ptr noundef nonnull %cond49) #4
  br label %cleanup

if.then59:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #6
  %vhub60 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %24 = ptrtoint ptr %vhub60 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vhub60, align 4
  %regs = getelementptr inbounds %struct.ast_vhub, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #4, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !151
  %29 = and i32 %28, -458753
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %31 = and i16 %wIndex, 1792
  %shl = zext i16 %31 to i32
  %or = or i32 %30, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !152
  tail call void @arm_heavy_mb() #4
  %32 = tail call i32 @llvm.bswap.i32(i32 %or)
  %33 = ptrtoint ptr %vhub60 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vhub60, align 4
  %regs70 = getelementptr inbounds %struct.ast_vhub, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %regs70 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs70, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %32) #4, !srcloc !150
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %cond.end44, %if.then15, %do.end12.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then59 ], [ 0, %cond.end44 ], [ -1, %do.end12.cleanup_crit_edge ], [ 0, %if.then15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ast_vhub_hub_ep_feature(ptr nocapture noundef readonly %ep, i16 noundef zeroext %wIndex, i16 noundef zeroext %wValue, i1 noundef zeroext %is_set) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %wIndex, 15
  %and = zext i16 %0 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_hub_ep_feature.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_hub_ep_feature, %do.end14)) #4
          to label %if.then [label %do.end14], !srcloc !148

if.then:                                          ; preds = %entry
  %vhub = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %1 = ptrtoint ptr %vhub to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vhub, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %dev6 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 3
  %5 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev6, align 4
  %tobool7.not = icmp eq ptr %6, null
  br i1 %tobool7.not, label %if.then.cond.end_crit_edge, label %cond.true

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.ast_vhub_dev, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond = phi ptr [ %8, %cond.true ], [ @.str.7, %if.then.cond.end_crit_edge ]
  %d_idx = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 2
  %9 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %d_idx, align 4
  %cond11 = select i1 %is_set, ptr @.str.29, ptr @.str.30
  %conv12 = zext i16 %wValue to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_hub_ep_feature.__UNIQUE_ID_ddebug243, ptr noundef %dev, ptr noundef nonnull @.str.35, ptr noundef %cond, i32 noundef %10, ptr noundef nonnull %cond11, i32 noundef %and, i32 noundef %conv12) #4
  br label %do.end14

do.end14:                                         ; preds = %cond.end, %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %0)
  %cmp = icmp ult i16 %0, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %wValue)
  %cmp19.not = icmp eq i16 %wValue, 0
  %or.cond = and i1 %cmp, %cmp19.not
  br i1 %or.cond, label %if.end22, label %do.end14.cleanup_crit_edge

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end22:                                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %cmp23 = icmp eq i16 %0, 0
  br i1 %cmp23, label %if.end22.cleanup_crit_edge, label %do.body28

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body28:                                        ; preds = %if.end22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_hub_ep_feature.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_hub_ep_feature, %do.end62)) #4
          to label %if.then42 [label %do.end62], !srcloc !148

if.then42:                                        ; preds = %do.body28
  %vhub43 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %11 = ptrtoint ptr %vhub43 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vhub43, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %dev45 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  %dev46 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 3
  %15 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev46, align 4
  %tobool47.not = icmp eq ptr %16, null
  br i1 %tobool47.not, label %if.then42.cond.end52_crit_edge, label %cond.true48

if.then42.cond.end52_crit_edge:                   ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end52

cond.true48:                                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #6
  %name50 = getelementptr inbounds %struct.ast_vhub_dev, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %name50 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name50, align 4
  br label %cond.end52

cond.end52:                                       ; preds = %cond.true48, %if.then42.cond.end52_crit_edge
  %cond53 = phi ptr [ %18, %cond.true48 ], [ @.str.7, %if.then42.cond.end52_crit_edge ]
  %d_idx54 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 2
  %19 = ptrtoint ptr %d_idx54 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %d_idx54, align 4
  %cond57 = select i1 %is_set, ptr @.str.37, ptr @.str.38
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_hub_ep_feature.__UNIQUE_ID_ddebug244, ptr noundef %dev45, ptr noundef nonnull @.str.36, ptr noundef %cond53, i32 noundef %20, ptr noundef nonnull %cond57) #4
  br label %do.end62

do.end62:                                         ; preds = %cond.end52, %do.body28
  %vhub64 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %21 = ptrtoint ptr %vhub64 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vhub64, align 4
  %ep1_stalled = getelementptr inbounds %struct.ast_vhub, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %ep1_stalled to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %ep1_stalled, align 4
  %bf.shl = select i1 %is_set, i8 -128, i8 0
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %ep1_stalled, align 4
  %24 = load ptr, ptr %vhub64, align 4
  %regs = getelementptr inbounds %struct.ast_vhub, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %26, i32 56
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !146
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !153
  %or = or i32 %28, 2
  %and72 = and i32 %28, -7
  %or73 = or i32 %and72, 4
  %reg.0 = select i1 %is_set, i32 %or, i32 %or73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !154
  tail call void @arm_heavy_mb() #4
  %29 = tail call i32 @llvm.bswap.i32(i32 %reg.0)
  %30 = ptrtoint ptr %vhub64 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vhub64, align 4
  %regs79 = getelementptr inbounds %struct.ast_vhub, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %regs79 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs79, align 4
  %add.ptr80 = getelementptr i8, ptr %33, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 %29) #4, !srcloc !150
  br label %cleanup

cleanup:                                          ; preds = %do.end62, %if.end22.cleanup_crit_edge, %do.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end62 ], [ -1, %do.end14.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ast_vhub_rep_desc(ptr noundef %ep, i8 noundef zeroext %desc_type, i16 noundef zeroext %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %vhub1 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %0 = ptrtoint ptr %vhub1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vhub1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_rep_desc.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_rep_desc, %do.end11)) #4
          to label %if.then [label %do.end11], !srcloc !148

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %vhub1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vhub1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %dev7 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 3
  %6 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev7, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %if.then.cond.end_crit_edge, label %cond.true

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.ast_vhub_dev, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond = phi ptr [ %9, %cond.true ], [ @.str.7, %if.then.cond.end_crit_edge ]
  %d_idx = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 2
  %10 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %d_idx, align 4
  %conv = zext i8 %desc_type to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_rep_desc.__UNIQUE_ID_ddebug245, ptr noundef %dev, ptr noundef nonnull @.str.40, ptr noundef %cond, i32 noundef %11, i32 noundef %conv) #4
  br label %do.end11

do.end11:                                         ; preds = %cond.end, %entry
  %12 = zext i8 %desc_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.66)
  switch i8 %desc_type, label %do.end11.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 7, label %do.end11.sw.bb22_crit_edge
    i8 2, label %do.end11.sw.bb22_crit_edge83
    i8 41, label %sw.bb35
    i8 6, label %sw.bb47
  ]

do.end11.sw.bb22_crit_edge83:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb22

do.end11.sw.bb22_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb22

do.end11.cleanup_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #6
  %buf = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 5
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buf, align 4
  %vhub_dev_desc = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 17
  %15 = call ptr @memcpy(ptr %14, ptr %vhub_dev_desc, i32 18)
  br label %sw.epilog

sw.bb22:                                          ; preds = %do.end11.sw.bb22_crit_edge, %do.end11.sw.bb22_crit_edge83
  %buf23 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 5
  %16 = ptrtoint ptr %buf23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buf23, align 4
  %vhub_conf_desc = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 18
  %18 = call ptr @memcpy(ptr %17, ptr %vhub_conf_desc, i32 25)
  %19 = load ptr, ptr %buf23, align 4
  %arrayidx = getelementptr i8, ptr %19, i32 1
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %desc_type, ptr %arrayidx, align 1
  br label %sw.epilog

sw.bb35:                                          ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #6
  %buf36 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 5
  %21 = ptrtoint ptr %buf36 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buf36, align 4
  %vhub_hub_desc = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 19
  %23 = call ptr @memcpy(ptr %22, ptr %vhub_hub_desc, i32 9)
  br label %sw.epilog

sw.bb47:                                          ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #6
  %buf48 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 5
  %24 = ptrtoint ptr %buf48 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buf48, align 4
  %vhub_qual_desc = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 21
  %26 = call ptr @memcpy(ptr %25, ptr %vhub_qual_desc, i32 10)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb47, %sw.bb35, %sw.bb22, %sw.bb
  %dsize.0 = phi i32 [ 10, %sw.bb47 ], [ 9, %sw.bb35 ], [ 25, %sw.bb22 ], [ 18, %sw.bb ]
  %conv49 = zext i16 %len to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %dsize.0, i32 %conv49)
  %cmp50 = icmp ult i32 %dsize.0, %conv49
  %conv53 = trunc i32 %dsize.0 to i16
  %spec.select = select i1 %cmp50, i16 %conv53, i16 %len
  %conv55 = zext i16 %spec.select to i32
  %call56 = tail call i32 @ast_vhub_reply(ptr noundef %ep, ptr noundef null, i32 noundef %conv55) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end11.cleanup_crit_edge
  %retval.0 = phi i32 [ %call56, %sw.epilog ], [ -1, %do.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ast_vhub_rep_string(ptr noundef %ep, i8 noundef zeroext %string_id, i16 noundef zeroext %lang_id, i16 noundef zeroext %len) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #4
  %0 = call ptr @memset(ptr %buf, i32 255, i32 256)
  %vhub1 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %1 = ptrtoint ptr %vhub1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vhub1, align 4
  %conv = zext i8 %string_id to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %string_id)
  %cmp = icmp eq i8 %string_id, 0
  %vhub_str_desc.i = getelementptr inbounds %struct.ast_vhub, ptr %2, i32 0, i32 20
  br i1 %cmp, label %if.then, label %entry.for.cond.i_crit_edge

entry.for.cond.i_crit_edge:                       ; preds = %entry
  br label %for.cond.i

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %vhub_str_desc.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %container.01.i = load ptr, ptr %vhub_str_desc.i, align 4
  %cmp.not2.i = icmp eq ptr %container.01.i, %vhub_str_desc.i
  br i1 %cmp.not2.i, label %if.then.ast_vhub_collect_languages.exit_crit_edge, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  br label %if.end.i

if.then.ast_vhub_collect_languages.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %ast_vhub_collect_languages.exit

if.end.i:                                         ; preds = %if.end.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %container.04.i = phi ptr [ %container.0.i, %if.end.i.if.end.i_crit_edge ], [ %container.01.i, %if.then.if.end.i_crit_edge ]
  %nlangs.03.i = phi i32 [ %inc.i, %if.end.i.if.end.i_crit_edge ], [ 0, %if.then.if.end.i_crit_edge ]
  %stash.i.i = getelementptr inbounds %struct.usb_gadget_string_container, ptr %container.04.i, i32 0, i32 1
  %4 = ptrtoint ptr %stash.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %stash.i.i, align 4
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #4
  %inc.i = add nuw nsw i32 %nlangs.03.i, 1
  %arrayidx.i = getelementptr %struct.usb_string_descriptor, ptr %buf, i32 0, i32 2, i32 %nlangs.03.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %arrayidx.i, align 1
  %8 = ptrtoint ptr %container.04.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %container.0.i = load ptr, ptr %container.04.i, align 4
  %cmp.not.i = icmp eq ptr %container.0.i, %vhub_str_desc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 125, i32 %nlangs.03.i)
  %cmp2.i = icmp ugt i32 %nlangs.03.i, 125
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %cmp2.i
  br i1 %or.cond.i, label %for.end.loopexit.i, label %if.end.i.if.end.i_crit_edge

if.end.i.if.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

for.end.loopexit.i:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %phi.bo.i = shl nuw nsw i32 %inc.i, 1
  %phi.bo5.i = add nuw nsw i32 %phi.bo.i, 2
  br label %ast_vhub_collect_languages.exit

ast_vhub_collect_languages.exit:                  ; preds = %for.end.loopexit.i, %if.then.ast_vhub_collect_languages.exit_crit_edge
  %nlangs.0.lcssa.i = phi i32 [ 2, %if.then.ast_vhub_collect_languages.exit_crit_edge ], [ %phi.bo5.i, %for.end.loopexit.i ]
  %conv.i = trunc i32 %nlangs.0.lcssa.i to i8
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv.i, ptr %buf, align 1
  %bDescriptorType.i = getelementptr inbounds %struct.usb_string_descriptor, ptr %buf, i32 0, i32 1
  %10 = ptrtoint ptr %bDescriptorType.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 3, ptr %bDescriptorType.i, align 1
  br label %if.end8

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry.for.cond.i_crit_edge
  %container.0.in.i = phi ptr [ %container.0.i39, %for.body.i.for.cond.i_crit_edge ], [ %vhub_str_desc.i, %entry.for.cond.i_crit_edge ]
  %11 = ptrtoint ptr %container.0.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %container.0.i39 = load ptr, ptr %container.0.in.i, align 4
  %cmp.not.i40 = icmp eq ptr %container.0.i39, %vhub_str_desc.i
  br i1 %cmp.not.i40, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %stash.i.i41 = getelementptr inbounds %struct.usb_gadget_string_container, ptr %container.0.i39, i32 0, i32 1
  %12 = ptrtoint ptr %stash.i.i41 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %stash.i.i41, align 4
  %cmp3.i = icmp eq i16 %13, %lang_id
  br i1 %cmp3.i, label %ast_vhub_lookup_string.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i

ast_vhub_lookup_string.exit:                      ; preds = %for.body.i
  %tobool.not = icmp eq ptr %stash.i.i41, null
  br i1 %tobool.not, label %ast_vhub_lookup_string.exit.cleanup_crit_edge, label %if.end

ast_vhub_lookup_string.exit.cleanup_crit_edge:    ; preds = %ast_vhub_lookup_string.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %ast_vhub_lookup_string.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = call i32 @usb_gadget_get_string(ptr noundef nonnull %stash.i.i41, i32 noundef %conv, ptr noundef nonnull %buf) #4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %ast_vhub_collect_languages.exit
  %rc.0 = phi i32 [ %nlangs.0.lcssa.i, %ast_vhub_collect_languages.exit ], [ %call7, %if.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %rc.0)
  %14 = icmp ugt i32 %rc.0, 63
  br i1 %14, label %if.end8.cleanup_crit_edge, label %if.end14

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %buf15 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 5
  %15 = ptrtoint ptr %buf15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buf15, align 4
  %17 = call ptr @memcpy(ptr %16, ptr %buf, i32 %rc.0)
  %conv19 = zext i16 %len to i32
  %18 = call i32 @llvm.umin.i32(i32 %rc.0, i32 %conv19)
  %call24 = call i32 @ast_vhub_reply(ptr noundef %ep, ptr noundef null, i32 noundef %18) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end8.cleanup_crit_edge, %ast_vhub_lookup_string.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %if.end14 ], [ -1, %ast_vhub_lookup_string.exit.cleanup_crit_edge ], [ -1, %if.end8.cleanup_crit_edge ], [ -1, %for.cond.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ast_vhub_device_connect(ptr nocapture noundef readonly %vhub, i32 noundef %port, i1 noundef zeroext %on) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %on, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @ast_vhub_change_port_stat(ptr noundef %vhub, i32 noundef %port, i16 noundef zeroext 0, i16 noundef zeroext 1, i1 noundef zeroext true)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @ast_vhub_change_port_stat(ptr noundef %vhub, i32 noundef %port, i16 noundef zeroext 3, i16 noundef zeroext 0, i1 noundef zeroext true)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %wakeup_en = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 15
  %0 = ptrtoint ptr %wakeup_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %wakeup_en, align 4
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %bf.cast.not = icmp eq i8 %1, 0
  br i1 %bf.cast.not, label %if.end.if.end2_crit_edge, label %if.then1

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2

if.then1:                                         ; preds = %if.end
  %regs.i = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #4, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !155
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_send_host_wakeup.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_device_connect, %ast_vhub_send_host_wakeup.exit)) #4
          to label %if.then.i [label %ast_vhub_send_host_wakeup.exit], !srcloc !148

if.then.i:                                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %vhub to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vhub, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_send_host_wakeup.__UNIQUE_ID_ddebug257, ptr noundef %dev.i, ptr noundef nonnull @.str.44) #4
  br label %ast_vhub_send_host_wakeup.exit

ast_vhub_send_host_wakeup.exit:                   ; preds = %if.then.i, %if.then1
  %7 = or i32 %4, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !156
  tail call void @arm_heavy_mb() #4
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #4, !srcloc !150
  br label %if.end2

if.end2:                                          ; preds = %ast_vhub_send_host_wakeup.exit, %if.end.if.end2_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ast_vhub_change_port_stat(ptr nocapture noundef readonly %vhub, i32 noundef %port, i16 noundef zeroext %clr_flags, i16 noundef zeroext %set_flags, i1 noundef zeroext %set_c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ports = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 10
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ports, align 4
  %arrayidx = getelementptr %struct.ast_vhub_port, ptr %1, i32 %port
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 8
  %neg = xor i16 %clr_flags, -1
  %and = and i16 %3, %neg
  %or = or i16 %and, %set_flags
  store i16 %or, ptr %arrayidx, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_change_port_stat.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_change_port_stat, %do.end19)) #4
          to label %if.then [label %do.end19], !srcloc !148

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i16 %3 to i32
  %dev = getelementptr %struct.ast_vhub_port, ptr %1, i32 %port, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev11 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %name = getelementptr %struct.ast_vhub_port, ptr %1, i32 %port, i32 2, i32 3
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  %add = add i32 %port, 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 8
  %conv15 = zext i16 %11 to i32
  %conv17 = zext i1 %set_c to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_change_port_stat.__UNIQUE_ID_ddebug256, ptr noundef %dev11, ptr noundef nonnull @.str.42, ptr noundef %9, i32 noundef %add, i32 noundef %conv, i32 noundef %conv15, i32 noundef %conv17) #4
  br label %do.end19

do.end19:                                         ; preds = %if.then, %entry
  br i1 %set_c, label %if.then21, label %do.end19.if.end38_crit_edge

do.end19.if.end38_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

if.then21:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx, align 8
  %xor54 = xor i16 %13, %3
  %14 = and i16 %13, 2
  %15 = xor i16 %14, 63
  %spec.select = and i16 %15, %xor54
  %change = getelementptr %struct.ast_vhub_port, ptr %1, i32 %port, i32 1
  %16 = ptrtoint ptr %change to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %spec.select, ptr %change, align 2
  %regs.i = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 1
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 60
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !146
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !157
  %add.i = add i32 %port, 1
  %shl.i = shl nuw i32 1, %add.i
  %21 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ports, align 4
  %change.i = getelementptr %struct.ast_vhub_port, ptr %22, i32 %port, i32 1
  %23 = ptrtoint ptr %change.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %change.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool.not.i = icmp eq i16 %24, 0
  %or.i = or i32 %20, %shl.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %20, %neg.i
  %reg.0.i = select i1 %tobool.not.i, i32 %and.i, i32 %or.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !158
  tail call void @arm_heavy_mb() #4
  %25 = tail call i32 @llvm.bswap.i32(i32 %reg.0.i) #4
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %27, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %25) #4, !srcloc !150
  br label %if.end38

if.end38:                                         ; preds = %if.then21, %do.end19.if.end38_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ast_vhub_hub_wake_all(ptr noundef %vhub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %wake_work = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %wake_work) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ast_vhub_class_hub_request(ptr noundef %ep, ptr nocapture noundef readonly %crq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %wValue1 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %crq, i32 0, i32 2
  %0 = ptrtoint ptr %wValue1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %wValue1, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %wIndex2 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %crq, i32 0, i32 3
  %3 = ptrtoint ptr %wIndex2 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %wIndex2, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %wLength3 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %crq, i32 0, i32 4
  %6 = ptrtoint ptr %wLength3 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %wLength3, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %9 = ptrtoint ptr %crq to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %crq, align 1
  %conv = zext i8 %10 to i16
  %shl = shl nuw i16 %conv, 8
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %crq, i32 0, i32 1
  %11 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bRequest, align 1
  %conv4 = zext i8 %12 to i16
  %or = or i16 %shl, %conv4
  %13 = zext i16 %or to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.67)
  switch i16 %or, label %do.body224 [
    i16 -24576, label %do.body5
    i16 -23808, label %do.body17
    i16 -24570, label %sw.bb54
    i16 8195, label %entry.do.body97_crit_edge
    i16 8193, label %entry.do.body97_crit_edge340
    i16 8963, label %do.body140
    i16 8961, label %do.body181
    i16 8968, label %entry.cleanup_crit_edge
    i16 8969, label %entry.cleanup_crit_edge341
    i16 8971, label %entry.cleanup_crit_edge342
    i16 -23798, label %sw.bb221
  ]

entry.cleanup_crit_edge342:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

entry.cleanup_crit_edge341:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

entry.do.body97_crit_edge340:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body97

entry.do.body97_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body97

do.body5:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_class_hub_request.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_class_hub_request, %do.end13)) #4
          to label %if.then [label %do.end13], !srcloc !148

if.then:                                          ; preds = %do.body5
  %vhub = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %14 = ptrtoint ptr %vhub to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vhub, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  %dev9 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 3
  %18 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev9, align 4
  %tobool10.not = icmp eq ptr %19, null
  br i1 %tobool10.not, label %if.then.cond.end_crit_edge, label %cond.true

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.ast_vhub_dev, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond = phi ptr [ %21, %cond.true ], [ @.str.7, %if.then.cond.end_crit_edge ]
  %d_idx = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 2
  %22 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %d_idx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_class_hub_request.__UNIQUE_ID_ddebug261, ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef %cond, i32 noundef %23) #4
  br label %do.end13

do.end13:                                         ; preds = %cond.end, %do.body5
  %call14 = tail call i32 (ptr, i32, ...) @__ast_vhub_simple_reply(ptr noundef %ep, i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  br label %cleanup

do.body17:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_class_hub_request.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_class_hub_request, %do.end49)) #4
          to label %if.then31 [label %do.end49], !srcloc !148

if.then31:                                        ; preds = %do.body17
  %vhub32 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %24 = ptrtoint ptr %vhub32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vhub32, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %dev34 = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 3
  %dev35 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 3
  %28 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev35, align 4
  %tobool36.not = icmp eq ptr %29, null
  br i1 %tobool36.not, label %if.then31.cond.end41_crit_edge, label %cond.true37

if.then31.cond.end41_crit_edge:                   ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end41

cond.true37:                                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  %name39 = getelementptr inbounds %struct.ast_vhub_dev, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %name39 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name39, align 4
  br label %cond.end41

cond.end41:                                       ; preds = %cond.true37, %if.then31.cond.end41_crit_edge
  %cond42 = phi ptr [ %31, %cond.true37 ], [ @.str.7, %if.then31.cond.end41_crit_edge ]
  %d_idx43 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 2
  %32 = ptrtoint ptr %d_idx43 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %d_idx43, align 4
  %34 = and i16 %5, 255
  %and = zext i16 %34 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_class_hub_request.__UNIQUE_ID_ddebug262, ptr noundef %dev34, ptr noundef nonnull @.str.10, ptr noundef %cond42, i32 noundef %33, i32 noundef %and) #4
  br label %do.end49

do.end49:                                         ; preds = %cond.end41, %do.body17
  %35 = trunc i16 %5 to i8
  %conv52 = and i8 %35, 15
  %call53 = tail call fastcc i32 @ast_vhub_get_port_stat(ptr noundef %ep, i8 noundef zeroext %conv52)
  br label %cleanup

sw.bb54:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 41, i16 %1)
  %cmp.not = icmp eq i16 %1, 41
  br i1 %cmp.not, label %do.body60, label %sw.bb54.cleanup_crit_edge

sw.bb54.cleanup_crit_edge:                        ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body60:                                        ; preds = %sw.bb54
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_class_hub_request.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_class_hub_request, %do.end93)) #4
          to label %if.then74 [label %do.end93], !srcloc !148

if.then74:                                        ; preds = %do.body60
  %vhub75 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %36 = ptrtoint ptr %vhub75 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vhub75, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %dev77 = getelementptr inbounds %struct.platform_device, ptr %39, i32 0, i32 3
  %dev78 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 3
  %40 = ptrtoint ptr %dev78 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev78, align 4
  %tobool79.not = icmp eq ptr %41, null
  br i1 %tobool79.not, label %if.then74.cond.end84_crit_edge, label %cond.true80

if.then74.cond.end84_crit_edge:                   ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end84

cond.true80:                                      ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #6
  %name82 = getelementptr inbounds %struct.ast_vhub_dev, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %name82 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %name82, align 4
  br label %cond.end84

cond.end84:                                       ; preds = %cond.true80, %if.then74.cond.end84_crit_edge
  %cond85 = phi ptr [ %43, %cond.true80 ], [ @.str.7, %if.then74.cond.end84_crit_edge ]
  %d_idx86 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 2
  %44 = ptrtoint ptr %d_idx86 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %d_idx86, align 4
  %46 = and i16 %5, 255
  %and88 = zext i16 %46 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_class_hub_request.__UNIQUE_ID_ddebug263, ptr noundef %dev77, ptr noundef nonnull @.str.11, ptr noundef %cond85, i32 noundef %45, i32 noundef %and88) #4
  br label %do.end93

do.end93:                                         ; preds = %cond.end84, %do.body60
  %vhub1.i = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %47 = ptrtoint ptr %vhub1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vhub1.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_rep_desc.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_class_hub_request, %ast_vhub_rep_desc.exit)) #4
          to label %if.then.i [label %ast_vhub_rep_desc.exit], !srcloc !148

if.then.i:                                        ; preds = %do.end93
  %49 = ptrtoint ptr %vhub1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %vhub1.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %52, i32 0, i32 3
  %dev7.i = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 3
  %53 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev7.i, align 4
  %tobool8.not.i = icmp eq ptr %54, null
  br i1 %tobool8.not.i, label %if.then.i.cond.end.i_crit_edge, label %cond.true.i

if.then.i.cond.end.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %name.i = getelementptr inbounds %struct.ast_vhub_dev, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %56, %cond.true.i ], [ @.str.7, %if.then.i.cond.end.i_crit_edge ]
  %d_idx.i = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 2
  %57 = ptrtoint ptr %d_idx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %d_idx.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_rep_desc.__UNIQUE_ID_ddebug245, ptr noundef %dev.i, ptr noundef nonnull @.str.40, ptr noundef %cond.i, i32 noundef %58, i32 noundef 41) #4
  br label %ast_vhub_rep_desc.exit

ast_vhub_rep_desc.exit:                           ; preds = %cond.end.i, %do.end93
  %buf36.i = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 5
  %59 = ptrtoint ptr %buf36.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %buf36.i, align 4
  %vhub_hub_desc.i = getelementptr inbounds %struct.ast_vhub, ptr %48, i32 0, i32 19
  %61 = call ptr @memcpy(ptr %60, ptr %vhub_hub_desc.i, i32 9)
  %62 = tail call i16 @llvm.umin.i16(i16 %8, i16 9)
  %conv55.i = zext i16 %62 to i32
  %call56.i = tail call i32 @ast_vhub_reply(ptr noundef %ep, ptr noundef null, i32 noundef %conv55.i) #4
  br label %cleanup

do.body97:                                        ; preds = %entry.do.body97_crit_edge, %entry.do.body97_crit_edge340
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_class_hub_request.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_class_hub_request, %do.end129)) #4
          to label %if.then111 [label %do.end129], !srcloc !148

if.then111:                                       ; preds = %do.body97
  %vhub112 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %63 = ptrtoint ptr %vhub112 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %vhub112, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %dev114 = getelementptr inbounds %struct.platform_device, ptr %66, i32 0, i32 3
  %dev115 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 3
  %67 = ptrtoint ptr %dev115 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev115, align 4
  %tobool116.not = icmp eq ptr %68, null
  br i1 %tobool116.not, label %if.then111.cond.end121_crit_edge, label %cond.true117

if.then111.cond.end121_crit_edge:                 ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end121

cond.true117:                                     ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #6
  %name119 = getelementptr inbounds %struct.ast_vhub_dev, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %name119 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %name119, align 4
  br label %cond.end121

cond.end121:                                      ; preds = %cond.true117, %if.then111.cond.end121_crit_edge
  %cond122 = phi ptr [ %70, %cond.true117 ], [ @.str.7, %if.then111.cond.end121_crit_edge ]
  %d_idx123 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 2
  %71 = ptrtoint ptr %d_idx123 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %d_idx123, align 4
  %conv124 = zext i16 %2 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_class_hub_request.__UNIQUE_ID_ddebug264, ptr noundef %dev114, ptr noundef nonnull @.str.12, ptr noundef %cond122, i32 noundef %72, i32 noundef %conv124) #4
  br label %do.end129

do.end129:                                        ; preds = %cond.end121, %do.body97
  %switch.and = and i16 %1, -257
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %switch.and)
  %switch.selectcmp = icmp ne i16 %switch.and, 0
  %73 = sext i1 %switch.selectcmp to i32
  br label %cleanup

do.body140:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_class_hub_request.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_class_hub_request, %do.end174)) #4
          to label %if.then154 [label %do.end174], !srcloc !148

if.then154:                                       ; preds = %do.body140
  %vhub155 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %74 = ptrtoint ptr %vhub155 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %vhub155, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %dev157 = getelementptr inbounds %struct.platform_device, ptr %77, i32 0, i32 3
  %dev158 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 3
  %78 = ptrtoint ptr %dev158 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev158, align 4
  %tobool159.not = icmp eq ptr %79, null
  br i1 %tobool159.not, label %if.then154.cond.end164_crit_edge, label %cond.true160

if.then154.cond.end164_crit_edge:                 ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end164

cond.true160:                                     ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #6
  %name162 = getelementptr inbounds %struct.ast_vhub_dev, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %name162 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %name162, align 4
  br label %cond.end164

cond.end164:                                      ; preds = %cond.true160, %if.then154.cond.end164_crit_edge
  %cond165 = phi ptr [ %81, %cond.true160 ], [ @.str.7, %if.then154.cond.end164_crit_edge ]
  %d_idx166 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 2
  %82 = ptrtoint ptr %d_idx166 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %d_idx166, align 4
  %84 = and i16 %5, 15
  %and168 = zext i16 %84 to i32
  %conv169 = zext i16 %2 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_class_hub_request.__UNIQUE_ID_ddebug265, ptr noundef %dev157, ptr noundef nonnull @.str.13, ptr noundef %cond165, i32 noundef %83, i32 noundef %and168, i32 noundef %conv169) #4
  br label %do.end174

do.end174:                                        ; preds = %cond.end164, %do.body140
  %85 = trunc i16 %5 to i8
  %conv177 = and i8 %85, 15
  %call178 = tail call fastcc i32 @ast_vhub_set_port_feature(ptr noundef %ep, i8 noundef zeroext %conv177, i16 noundef zeroext %2)
  br label %cleanup

do.body181:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_class_hub_request.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_class_hub_request, %do.end215)) #4
          to label %if.then195 [label %do.end215], !srcloc !148

if.then195:                                       ; preds = %do.body181
  %vhub196 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %86 = ptrtoint ptr %vhub196 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %vhub196, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %dev198 = getelementptr inbounds %struct.platform_device, ptr %89, i32 0, i32 3
  %dev199 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 3
  %90 = ptrtoint ptr %dev199 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev199, align 4
  %tobool200.not = icmp eq ptr %91, null
  br i1 %tobool200.not, label %if.then195.cond.end205_crit_edge, label %cond.true201

if.then195.cond.end205_crit_edge:                 ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end205

cond.true201:                                     ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #6
  %name203 = getelementptr inbounds %struct.ast_vhub_dev, ptr %91, i32 0, i32 3
  %92 = ptrtoint ptr %name203 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %name203, align 4
  br label %cond.end205

cond.end205:                                      ; preds = %cond.true201, %if.then195.cond.end205_crit_edge
  %cond206 = phi ptr [ %93, %cond.true201 ], [ @.str.7, %if.then195.cond.end205_crit_edge ]
  %d_idx207 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 2
  %94 = ptrtoint ptr %d_idx207 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %d_idx207, align 4
  %96 = and i16 %5, 15
  %and209 = zext i16 %96 to i32
  %conv210 = zext i16 %2 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_class_hub_request.__UNIQUE_ID_ddebug266, ptr noundef %dev198, ptr noundef nonnull @.str.14, ptr noundef %cond206, i32 noundef %95, i32 noundef %and209, i32 noundef %conv210) #4
  br label %do.end215

do.end215:                                        ; preds = %cond.end205, %do.body181
  %97 = trunc i16 %5 to i8
  %conv218 = and i8 %97, 15
  %call219 = tail call fastcc i32 @ast_vhub_clr_port_feature(ptr noundef %ep, i8 noundef zeroext %conv218, i16 noundef zeroext %2)
  br label %cleanup

sw.bb221:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call222 = tail call i32 (ptr, i32, ...) @__ast_vhub_simple_reply(ptr noundef %ep, i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  br label %cleanup

do.body224:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_class_hub_request.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_class_hub_request, %cleanup)) #4
          to label %if.then238 [label %cleanup], !srcloc !148

if.then238:                                       ; preds = %do.body224
  %vhub239 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %98 = ptrtoint ptr %vhub239 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %vhub239, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 4
  %dev241 = getelementptr inbounds %struct.platform_device, ptr %101, i32 0, i32 3
  %dev242 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 3
  %102 = ptrtoint ptr %dev242 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev242, align 4
  %tobool243.not = icmp eq ptr %103, null
  br i1 %tobool243.not, label %if.then238.cond.end248_crit_edge, label %cond.true244

if.then238.cond.end248_crit_edge:                 ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end248

cond.true244:                                     ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #6
  %name246 = getelementptr inbounds %struct.ast_vhub_dev, ptr %103, i32 0, i32 3
  %104 = ptrtoint ptr %name246 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %name246, align 4
  br label %cond.end248

cond.end248:                                      ; preds = %cond.true244, %if.then238.cond.end248_crit_edge
  %cond249 = phi ptr [ %105, %cond.true244 ], [ @.str.7, %if.then238.cond.end248_crit_edge ]
  %d_idx250 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 2
  %106 = ptrtoint ptr %d_idx250 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %d_idx250, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_class_hub_request.__UNIQUE_ID_ddebug267, ptr noundef %dev241, ptr noundef nonnull @.str.15, ptr noundef %cond249, i32 noundef %107) #4
  br label %cleanup

cleanup:                                          ; preds = %cond.end248, %do.body224, %sw.bb221, %do.end215, %do.end174, %do.end129, %ast_vhub_rep_desc.exit, %sw.bb54.cleanup_crit_edge, %do.end49, %do.end13, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge341, %entry.cleanup_crit_edge342
  %retval.0 = phi i32 [ %call222, %sw.bb221 ], [ %call219, %do.end215 ], [ %call178, %do.end174 ], [ %call56.i, %ast_vhub_rep_desc.exit ], [ %call53, %do.end49 ], [ %call14, %do.end13 ], [ -1, %sw.bb54.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge341 ], [ 0, %entry.cleanup_crit_edge342 ], [ -1, %cond.end248 ], [ %73, %do.end129 ], [ -1, %do.body224 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ast_vhub_get_port_stat(ptr noundef %ep, i8 noundef zeroext %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %vhub1 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %0 = ptrtoint ptr %vhub1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vhub1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %port)
  %cmp = icmp eq i8 %port, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %conv = zext i8 %port to i32
  %max_ports = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %max_ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_ports, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp4 = icmp ult i32 %3, %conv
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %dec = add i8 %port, -1
  %ports = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ports, align 4
  %idxprom = zext i8 %dec to i32
  %arrayidx = getelementptr %struct.ast_vhub_port, ptr %5, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 8
  %change = getelementptr %struct.ast_vhub_port, ptr %5, i32 %idxprom, i32 1
  %8 = ptrtoint ptr %change to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %change, align 2
  %10 = or i16 %7, 256
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_get_port_stat.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_get_port_stat, %do.end24)) #4
          to label %if.then15 [label %do.end24], !srcloc !148

if.then15:                                        ; preds = %if.end
  %11 = ptrtoint ptr %vhub1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vhub1, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  %dev17 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 3
  %15 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev17, align 4
  %tobool18.not = icmp eq ptr %16, null
  br i1 %tobool18.not, label %if.then15.cond.end_crit_edge, label %cond.true

if.then15.cond.end_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.ast_vhub_dev, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then15.cond.end_crit_edge
  %cond = phi ptr [ %18, %cond.true ], [ @.str.7, %if.then15.cond.end_crit_edge ]
  %d_idx = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 2
  %19 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %d_idx, align 4
  %conv20 = zext i16 %10 to i32
  %conv21 = zext i16 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_get_port_stat.__UNIQUE_ID_ddebug260, ptr noundef %dev, ptr noundef nonnull @.str.46, ptr noundef %cond, i32 noundef %20, i32 noundef %conv20, i32 noundef %conv21) #4
  br label %do.end24

do.end24:                                         ; preds = %cond.end, %if.end
  %conv25 = zext i16 %10 to i32
  %and = and i32 %conv25, 255
  %21 = lshr i32 %conv25, 8
  %conv27 = zext i16 %9 to i32
  %and28 = and i32 %conv27, 255
  %22 = lshr i32 %conv27, 8
  %call31 = tail call i32 (ptr, i32, ...) @__ast_vhub_simple_reply(ptr noundef %ep, i32 noundef 4, i32 noundef %and, i32 noundef %21, i32 noundef %and28, i32 noundef %22) #4
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call31, %do.end24 ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ast_vhub_set_port_feature(ptr nocapture noundef readonly %ep, i8 noundef zeroext %port, i16 noundef zeroext %feat) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %vhub1 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %0 = ptrtoint ptr %vhub1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vhub1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %port)
  %cmp = icmp eq i8 %port, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %conv = zext i8 %port to i32
  %max_ports = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %max_ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_ports, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp4 = icmp ult i32 %3, %conv
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %dec = add i8 %port, -1
  %ports = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ports, align 4
  %idxprom = zext i8 %dec to i32
  %arrayidx = getelementptr %struct.ast_vhub_port, ptr %5, i32 %idxprom
  %6 = zext i16 %feat to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.68)
  switch i16 %feat, label %sw.epilog [
    i16 2, label %sw.bb
    i16 4, label %do.body12
    i16 8, label %sw.bb26
    i16 21, label %if.end.cleanup_crit_edge
    i16 22, label %if.end.cleanup_crit_edge59
  ]

if.end.cleanup_crit_edge59:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 8
  %9 = and i16 %8, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.end9

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %sw.bb
  %or.i = or i16 %8, 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %or.i, ptr %arrayidx, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_change_port_stat.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_set_port_feature, %ast_vhub_change_port_stat.exit)) #4
          to label %if.then.i [label %ast_vhub_change_port_stat.exit], !srcloc !148

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i = zext i16 %8 to i32
  %dev.i = getelementptr %struct.ast_vhub_port, ptr %5, i32 %idxprom, i32 2
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %dev11.i = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  %name.i = getelementptr %struct.ast_vhub_port, ptr %5, i32 %idxprom, i32 2, i32 3
  %15 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name.i, align 4
  %add.i = add nuw nsw i32 %idxprom, 1
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx, align 8
  %conv15.i = zext i16 %18 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_change_port_stat.__UNIQUE_ID_ddebug256, ptr noundef %dev11.i, ptr noundef nonnull @.str.42, ptr noundef %16, i32 noundef %add.i, i32 noundef %conv.i, i32 noundef %conv15.i, i32 noundef 0) #4
  br label %ast_vhub_change_port_stat.exit

ast_vhub_change_port_stat.exit:                   ; preds = %if.then.i, %if.end9
  %dev = getelementptr %struct.ast_vhub_port, ptr %5, i32 %idxprom, i32 2
  tail call void @ast_vhub_dev_suspend(ptr noundef %dev) #4
  br label %cleanup

do.body12:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_set_port_feature.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_set_port_feature, %do.end25)) #4
          to label %if.then17 [label %do.end25], !srcloc !148

if.then17:                                        ; preds = %do.body12
  %19 = ptrtoint ptr %vhub1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vhub1, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %dev19 = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3
  %dev20 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 3
  %23 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev20, align 4
  %tobool21.not = icmp eq ptr %24, null
  br i1 %tobool21.not, label %if.then17.cond.end_crit_edge, label %cond.true

if.then17.cond.end_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.ast_vhub_dev, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then17.cond.end_crit_edge
  %cond = phi ptr [ %26, %cond.true ], [ @.str.7, %if.then17.cond.end_crit_edge ]
  %d_idx = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 2
  %27 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %d_idx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_set_port_feature.__UNIQUE_ID_ddebug259, ptr noundef %dev19, ptr noundef nonnull @.str.48, ptr noundef %cond, i32 noundef %28) #4
  br label %do.end25

do.end25:                                         ; preds = %cond.end, %do.body12
  tail call fastcc void @ast_vhub_port_reset(ptr noundef %1, i8 noundef zeroext %dec)
  br label %cleanup

sw.bb26:                                          ; preds = %if.end
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx, align 8
  %31 = and i16 %30, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool30.not = icmp eq i16 %31, 0
  br i1 %tobool30.not, label %sw.bb26.cleanup_crit_edge, label %if.then31

sw.bb26.cleanup_crit_edge:                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then31:                                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #6
  %change = getelementptr %struct.ast_vhub_port, ptr %5, i32 %idxprom, i32 1
  %32 = ptrtoint ptr %change to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %change, align 2
  %34 = or i16 %33, 1
  store i16 %34, ptr %change, align 2
  %regs.i = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %36, i32 60
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !146
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !157
  %shl.i = shl i32 2, %idxprom
  %39 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ports, align 4
  %change.i = getelementptr %struct.ast_vhub_port, ptr %40, i32 %idxprom, i32 1
  %41 = ptrtoint ptr %change.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %change.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool.not.i = icmp eq i16 %42, 0
  %or.i57 = or i32 %38, %shl.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %38, %neg.i
  %reg.0.i = select i1 %tobool.not.i, i32 %and.i, i32 %or.i57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !158
  tail call void @arm_heavy_mb() #4
  %43 = tail call i32 @llvm.bswap.i32(i32 %reg.0.i) #4
  %44 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %45, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %43) #4, !srcloc !150
  br label %cleanup

sw.epilog:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then31, %sw.bb26.cleanup_crit_edge, %do.end25, %ast_vhub_change_port_stat.exit, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge59, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %sw.epilog ], [ 0, %do.end25 ], [ 0, %ast_vhub_change_port_stat.exit ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %if.then31 ], [ 0, %sw.bb26.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge59 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ast_vhub_clr_port_feature(ptr nocapture noundef readonly %ep, i8 noundef zeroext %port, i16 noundef zeroext %feat) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %vhub1 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %0 = ptrtoint ptr %vhub1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vhub1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %port)
  %cmp = icmp eq i8 %port, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %conv = zext i8 %port to i32
  %max_ports = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %max_ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_ports, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp4 = icmp ult i32 %3, %conv
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %dec = add i8 %port, -1
  %ports = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ports, align 4
  %idxprom = zext i8 %dec to i32
  %6 = zext i16 %feat to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.69)
  switch i16 %feat, label %sw.epilog [
    i16 1, label %sw.bb
    i16 2, label %sw.bb8
    i16 8, label %if.end.cleanup_crit_edge
    i16 22, label %if.end.cleanup_crit_edge40
    i16 16, label %if.end.sw.bb16_crit_edge
    i16 17, label %if.end.sw.bb16_crit_edge41
    i16 18, label %if.end.sw.bb16_crit_edge42
    i16 19, label %if.end.sw.bb16_crit_edge43
    i16 20, label %if.end.sw.bb16_crit_edge44
  ]

if.end.sw.bb16_crit_edge44:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb16

if.end.sw.bb16_crit_edge43:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb16

if.end.sw.bb16_crit_edge42:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb16

if.end.sw.bb16_crit_edge41:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb16

if.end.sw.bb16_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb16

if.end.cleanup_crit_edge40:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %arrayidx.i = getelementptr %struct.ast_vhub_port, ptr %5, i32 %idxprom
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx.i, align 8
  %and.i = and i16 %8, -7
  store i16 %and.i, ptr %arrayidx.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_change_port_stat.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_clr_port_feature, %ast_vhub_change_port_stat.exit)) #4
          to label %if.then.i [label %ast_vhub_change_port_stat.exit], !srcloc !148

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i = zext i16 %8 to i32
  %dev.i = getelementptr %struct.ast_vhub_port, ptr %5, i32 %idxprom, i32 2
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %dev11.i = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  %name.i = getelementptr %struct.ast_vhub_port, ptr %5, i32 %idxprom, i32 2, i32 3
  %13 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name.i, align 4
  %add.i = add nuw nsw i32 %idxprom, 1
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx.i, align 8
  %conv15.i = zext i16 %16 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_change_port_stat.__UNIQUE_ID_ddebug256, ptr noundef %dev11.i, ptr noundef nonnull @.str.42, ptr noundef %14, i32 noundef %add.i, i32 noundef %conv.i, i32 noundef %conv15.i, i32 noundef 0) #4
  br label %ast_vhub_change_port_stat.exit

ast_vhub_change_port_stat.exit:                   ; preds = %if.then.i, %sw.bb
  %dev = getelementptr %struct.ast_vhub_port, ptr %5, i32 %idxprom, i32 2
  tail call void @ast_vhub_dev_suspend(ptr noundef %dev) #4
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  %arrayidx = getelementptr %struct.ast_vhub_port, ptr %5, i32 %idxprom
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx, align 8
  %19 = and i16 %18, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.not = icmp eq i16 %19, 0
  br i1 %tobool.not, label %sw.bb8.cleanup_crit_edge, label %if.end11

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @ast_vhub_change_port_stat(ptr noundef %1, i32 noundef %idxprom, i16 noundef zeroext 4, i16 noundef zeroext 0, i1 noundef zeroext false)
  %dev13 = getelementptr %struct.ast_vhub_port, ptr %5, i32 %idxprom, i32 2
  tail call void @ast_vhub_dev_resume(ptr noundef %dev13) #4
  br label %cleanup

sw.bb16:                                          ; preds = %if.end.sw.bb16_crit_edge, %if.end.sw.bb16_crit_edge41, %if.end.sw.bb16_crit_edge42, %if.end.sw.bb16_crit_edge43, %if.end.sw.bb16_crit_edge44
  %conv6 = zext i16 %feat to i32
  %sub = add nsw i32 %conv6, -16
  %shl = shl nuw nsw i32 1, %sub
  %change = getelementptr %struct.ast_vhub_port, ptr %5, i32 %idxprom, i32 1
  %20 = ptrtoint ptr %change to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %change, align 2
  %22 = trunc i32 %shl to i16
  %23 = xor i16 %22, -1
  %conv20 = and i16 %21, %23
  store i16 %conv20, ptr %change, align 2
  %regs.i = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 60
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !146
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !157
  %shl.i = shl i32 2, %idxprom
  %28 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ports, align 4
  %change.i = getelementptr %struct.ast_vhub_port, ptr %29, i32 %idxprom, i32 1
  %30 = ptrtoint ptr %change.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %change.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool.not.i = icmp eq i16 %31, 0
  %or.i = or i32 %27, %shl.i
  %neg.i = xor i32 %shl.i, -1
  %and.i39 = and i32 %27, %neg.i
  %reg.0.i = select i1 %tobool.not.i, i32 %and.i39, i32 %or.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !158
  tail call void @arm_heavy_mb() #4
  %32 = tail call i32 @llvm.bswap.i32(i32 %reg.0.i) #4
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %34, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %32) #4, !srcloc !150
  br label %cleanup

sw.epilog:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb16, %if.end11, %sw.bb8.cleanup_crit_edge, %ast_vhub_change_port_stat.exit, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge40, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %sw.epilog ], [ 0, %sw.bb16 ], [ 0, %if.end11 ], [ 0, %ast_vhub_change_port_stat.exit ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ 0, %sw.bb8.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge40 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ast_vhub_hub_suspend(ptr nocapture noundef %vhub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_hub_suspend.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_hub_suspend, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !148

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %vhub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vhub, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_hub_suspend.__UNIQUE_ID_ddebug268, ptr noundef %dev, ptr noundef nonnull @.str.17) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %suspended = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 15
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %suspended, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.end5, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %bf.set = or i8 %bf.load, -128
  %3 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %bf.set, ptr %suspended, align 4
  %max_ports = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 11
  %4 = ptrtoint ptr %max_ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp20.not = icmp eq i32 %5, 0
  br i1 %cmp20.not, label %if.end5.cleanup_crit_edge, label %for.body.lr.ph

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end5
  %ports = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %for.body.lr.ph
  %i.021 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end11.for.body_crit_edge ]
  %6 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ports, align 4
  %arrayidx = getelementptr %struct.ast_vhub_port, ptr %7, i32 %i.021
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 8
  %10 = and i16 %9, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool8.not = icmp eq i16 %10, 0
  br i1 %tobool8.not, label %if.then9, label %for.body.if.end11_crit_edge

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %dev10 = getelementptr %struct.ast_vhub_port, ptr %7, i32 %i.021, i32 2
  tail call void @ast_vhub_dev_suspend(ptr noundef %dev10) #4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %for.body.if.end11_crit_edge
  %inc = add nuw i32 %i.021, 1
  %11 = ptrtoint ptr %max_ports to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_ports, align 4
  %cmp = icmp ult i32 %inc, %12
  br i1 %cmp, label %if.end11.for.body_crit_edge, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup:                                          ; preds = %if.end11.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_dev_suspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ast_vhub_hub_resume(ptr nocapture noundef %vhub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_hub_resume.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_hub_resume, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !148

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %vhub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vhub, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_hub_resume.__UNIQUE_ID_ddebug269, ptr noundef %dev, ptr noundef nonnull @.str.19) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %suspended = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 15
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %suspended, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %bf.clear = and i8 %bf.load, 127
  %3 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %bf.clear, ptr %suspended, align 4
  %max_ports = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 11
  %4 = ptrtoint ptr %max_ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp20.not = icmp eq i32 %5, 0
  br i1 %cmp20.not, label %if.end5.cleanup_crit_edge, label %for.body.lr.ph

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end5
  %ports = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %for.body.lr.ph
  %i.021 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end11.for.body_crit_edge ]
  %6 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ports, align 4
  %arrayidx = getelementptr %struct.ast_vhub_port, ptr %7, i32 %i.021
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 8
  %10 = and i16 %9, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool8.not = icmp eq i16 %10, 0
  br i1 %tobool8.not, label %if.then9, label %for.body.if.end11_crit_edge

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %dev10 = getelementptr %struct.ast_vhub_port, ptr %7, i32 %i.021, i32 2
  tail call void @ast_vhub_dev_resume(ptr noundef %dev10) #4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %for.body.if.end11_crit_edge
  %inc = add nuw i32 %i.021, 1
  %11 = ptrtoint ptr %max_ports to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_ports, align 4
  %cmp = icmp ult i32 %inc, %12
  br i1 %cmp, label %if.end11.for.body_crit_edge, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup:                                          ; preds = %if.end11.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_dev_resume(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ast_vhub_hub_reset(ptr nocapture noundef %vhub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_hub_reset.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_hub_reset, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !148

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %vhub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vhub, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_hub_reset.__UNIQUE_ID_ddebug270, ptr noundef %dev, ptr noundef nonnull @.str.21) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %speed = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 16
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %suspended = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 15
  %4 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %suspended, align 4
  %5 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %speed, align 4
  %bf.clear8 = and i8 %bf.load, 63
  store i8 %bf.clear8, ptr %suspended, align 4
  %max_ports = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 11
  %6 = ptrtoint ptr %max_ports to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1046.not = icmp eq i32 %7, 0
  br i1 %cmp1046.not, label %if.end5.do.body13_crit_edge, label %for.body.lr.ph

if.end5.do.body13_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body13

for.body.lr.ph:                                   ; preds = %if.end5
  %ports = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.047 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %8 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ports, align 4
  %arrayidx = getelementptr %struct.ast_vhub_port, ptr %9, i32 %i.047
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 8
  %12 = and i16 %11, 1
  store i16 %12, ptr %arrayidx, align 8
  %change = getelementptr %struct.ast_vhub_port, ptr %9, i32 %i.047, i32 1
  %13 = ptrtoint ptr %change to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %change, align 2
  %dev12 = getelementptr %struct.ast_vhub_port, ptr %9, i32 %i.047, i32 2
  tail call void @ast_vhub_dev_suspend(ptr noundef %dev12) #4
  %inc = add nuw i32 %i.047, 1
  %14 = ptrtoint ptr %max_ports to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_ports, align 4
  %cmp10 = icmp ult i32 %inc, %15
  br i1 %cmp10, label %for.body.for.body_crit_edge, label %for.body.do.body13_crit_edge

for.body.do.body13_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body13

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

do.body13:                                        ; preds = %for.body.do.body13_crit_edge, %if.end5.do.body13_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !159
  tail call void @arm_heavy_mb() #4
  %regs = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 1
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #4, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !160
  tail call void @arm_heavy_mb() #4
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add.ptr20 = getelementptr i8, ptr %19, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 0) #4, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !161
  tail call void @arm_heavy_mb() #4
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %add.ptr25 = getelementptr i8, ptr %21, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 83886080) #4, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !162
  tail call void @arm_heavy_mb() #4
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %add.ptr30 = getelementptr i8, ptr %23, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 0) #4, !srcloc !150
  br label %cleanup

cleanup:                                          ; preds = %do.body13, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ast_vhub_init_hub(ptr noundef %vhub) local_unnamed_addr #0 align 64 {
entry:
  %langid.i.i = alloca i32, align 4
  %str_array.i.i = alloca [4 x %struct.usb_string], align 4
  %data.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %speed = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 16
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %speed, align 4
  %wake_work = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 4
  tail call void @__init_work(ptr noundef %wake_work, i32 noundef 0) #4
  %1 = ptrtoint ptr %wake_work to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %wake_work, align 4
  %lockdep_map = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.22, ptr noundef nonnull @ast_vhub_init_hub.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry4 = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 4, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ast_vhub_wake_work, ptr %func, align 4
  %5 = ptrtoint ptr %vhub to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vhub, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3, i32 27
  %7 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node.i, align 8
  %vhub_dev_desc.i = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 17
  %9 = call ptr @memcpy(ptr %vhub_dev_desc.i, ptr @ast_vhub_dev_desc, i32 18)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i.i) #4
  %10 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %data.i.i, align 4, !annotation !163
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.52, ptr noundef nonnull %data.i.i, i32 noundef 1, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %tobool.not.i.i = icmp sgt i32 %call.i.i.i.i, -1
  br i1 %tobool.not.i.i, label %if.then.i.i, label %entry.if.end.i.i_crit_edge

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data.i.i, align 4
  %conv.i.i = trunc i32 %12 to i16
  %13 = call i16 @llvm.bswap.i16(i16 %conv.i.i) #4
  %idVendor.i.i = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 17, i32 7
  %14 = ptrtoint ptr %idVendor.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %idVendor.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %entry.if.end.i.i_crit_edge
  %call.i.i19.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.53, ptr noundef nonnull %data.i.i, i32 noundef 1, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i19.i.i)
  %tobool2.not.i.i = icmp sgt i32 %call.i.i19.i.i, -1
  br i1 %tobool2.not.i.i, label %if.then3.i.i, label %if.end.i.i.if.end6.i.i_crit_edge

if.end.i.i.if.end6.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data.i.i, align 4
  %conv4.i.i = trunc i32 %16 to i16
  %17 = call i16 @llvm.bswap.i16(i16 %conv4.i.i) #4
  %idProduct.i.i = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 17, i32 8
  %18 = ptrtoint ptr %idProduct.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %idProduct.i.i, align 2
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then3.i.i, %if.end.i.i.if.end6.i.i_crit_edge
  %call.i.i20.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.54, ptr noundef nonnull %data.i.i, i32 noundef 1, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i20.i.i)
  %tobool8.not.i.i = icmp sgt i32 %call.i.i20.i.i, -1
  br i1 %tobool8.not.i.i, label %if.then9.i.i, label %if.end6.i.i.ast_vhub_of_parse_dev_desc.exit.i_crit_edge

if.end6.i.i.ast_vhub_of_parse_dev_desc.exit.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ast_vhub_of_parse_dev_desc.exit.i

if.then9.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data.i.i, align 4
  %conv10.i.i = trunc i32 %20 to i16
  %21 = call i16 @llvm.bswap.i16(i16 %conv10.i.i) #4
  %bcdDevice.i.i = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 17, i32 9
  %22 = ptrtoint ptr %bcdDevice.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %bcdDevice.i.i, align 4
  br label %ast_vhub_of_parse_dev_desc.exit.i

ast_vhub_of_parse_dev_desc.exit.i:                ; preds = %if.then9.i.i, %if.end6.i.i.ast_vhub_of_parse_dev_desc.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i) #4
  %force_usb1.i = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 15
  %23 = ptrtoint ptr %force_usb1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.i = load i8, ptr %force_usb1.i, align 4
  %24 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %bf.cast.not.i = icmp eq i8 %24, 0
  br i1 %bf.cast.not.i, label %ast_vhub_of_parse_dev_desc.exit.i.if.end.i_crit_edge, label %if.then.i

ast_vhub_of_parse_dev_desc.exit.i.if.end.i_crit_edge: ; preds = %ast_vhub_of_parse_dev_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %ast_vhub_of_parse_dev_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %bcdUSB.i.i = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 17, i32 2
  %25 = ptrtoint ptr %bcdUSB.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 1, ptr %bcdUSB.i.i, align 2
  %bDeviceProtocol.i.i = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 17, i32 5
  %26 = ptrtoint ptr %bDeviceProtocol.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %bDeviceProtocol.i.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %ast_vhub_of_parse_dev_desc.exit.i.if.end.i_crit_edge
  %vhub_conf_desc.i = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 18
  %27 = call ptr @memcpy(ptr %vhub_conf_desc.i, ptr @ast_vhub_conf_desc, i32 27)
  %vhub_hub_desc.i = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 19
  %28 = call ptr @memcpy(ptr %vhub_hub_desc.i, ptr @ast_vhub_hub_desc, i32 15)
  %max_ports.i = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 11
  %29 = ptrtoint ptr %max_ports.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_ports.i, align 4
  %conv.i = trunc i32 %30 to i8
  %bNbrPorts.i = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 19, i32 2
  %31 = ptrtoint ptr %bNbrPorts.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv.i, ptr %bNbrPorts.i, align 1
  %vhub_str_desc.i = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 20
  %32 = ptrtoint ptr %vhub_str_desc.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %vhub_str_desc.i, ptr %vhub_str_desc.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 20, i32 1
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %vhub_str_desc.i, ptr %prev.i.i, align 4
  %call.i = call ptr @of_get_child_by_name(ptr noundef %8, ptr noundef nonnull @.str.51) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %langid.i.i) #4
  %34 = ptrtoint ptr %langid.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %langid.i.i, align 4, !annotation !163
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %str_array.i.i) #4
  %35 = call ptr @memset(ptr %str_array.i.i, i32 255, i32 32)
  %call.i.i = call ptr @of_get_next_child(ptr noundef nonnull %call.i, ptr noundef null) #4
  %cmp.not53.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.not53.i.i, label %if.then2.i.ast_vhub_of_parse_str_desc.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.then2.i.ast_vhub_of_parse_str_desc.exit.i_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ast_vhub_of_parse_str_desc.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.then2.i
  %s.i.i = getelementptr inbounds [4 x %struct.usb_string], ptr %str_array.i.i, i32 0, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc29.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %child.054.i.i = phi ptr [ %call.i.i, %for.body.lr.ph.i.i ], [ %call30.i.i, %for.inc29.i.i.for.body.i.i_crit_edge ]
  %call.i.i.i20.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.054.i.i, ptr noundef nonnull @.str.55, ptr noundef nonnull %langid.i.i, i32 noundef 1, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i20.i)
  %tobool.not.i21.i = icmp sgt i32 %call.i.i.i20.i, -1
  br i1 %tobool.not.i21.i, label %if.end.i23.i, label %for.body.i.i.for.inc29.i.i_crit_edge

for.body.i.i.for.inc29.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc29.i.i

if.end.i23.i:                                     ; preds = %for.body.i.i
  %36 = ptrtoint ptr %langid.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %langid.i.i, align 4
  %conv.i22.i = trunc i32 %37 to i16
  %call2.i.i = call zeroext i1 @usb_validate_langid(i16 noundef zeroext %conv.i22.i) #4
  br i1 %call2.i.i, label %if.end4.i.i, label %if.end.i23.i.for.inc29.i.i_crit_edge

if.end.i23.i.for.inc29.i.i_crit_edge:             ; preds = %if.end.i23.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc29.i.i

if.end4.i.i:                                      ; preds = %if.end.i23.i
  %38 = ptrtoint ptr %langid.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %langid.i.i, align 4
  %call12.i.i = call ptr @of_get_property(ptr noundef nonnull %child.054.i.i, ptr noundef nonnull @.str.56, ptr noundef null) #4
  %tobool13.not.i.i = icmp eq ptr %call12.i.i, null
  br i1 %tobool13.not.i.i, label %if.end4.i.i.for.inc.i.i_crit_edge, label %if.then14.i.i

if.end4.i.i.for.inc.i.i_crit_edge:                ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i

if.then14.i.i:                                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %s.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call12.i.i, ptr %s.i.i, align 4
  %41 = ptrtoint ptr %str_array.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 3, ptr %str_array.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then14.i.i, %if.end4.i.i.for.inc.i.i_crit_edge
  %offset.1.i.i = phi i32 [ 1, %if.then14.i.i ], [ 0, %if.end4.i.i.for.inc.i.i_crit_edge ]
  %call12.1.i.i = call ptr @of_get_property(ptr noundef nonnull %child.054.i.i, ptr noundef nonnull @.str.57, ptr noundef null) #4
  %tobool13.not.1.i.i = icmp eq ptr %call12.1.i.i, null
  br i1 %tobool13.not.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge, label %if.then14.1.i.i

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1.i.i

if.then14.1.i.i:                                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx15.1.i.i = getelementptr [4 x %struct.usb_string], ptr %str_array.i.i, i32 0, i32 %offset.1.i.i
  %s.1.i.i = getelementptr [4 x %struct.usb_string], ptr %str_array.i.i, i32 0, i32 %offset.1.i.i, i32 1
  %42 = ptrtoint ptr %s.1.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call12.1.i.i, ptr %s.1.i.i, align 4
  %43 = ptrtoint ptr %arrayidx15.1.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 2, ptr %arrayidx15.1.i.i, align 4
  %inc.1.i.i = add nuw nsw i32 %offset.1.i.i, 1
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.then14.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %offset.1.1.i.i = phi i32 [ %inc.1.i.i, %if.then14.1.i.i ], [ %offset.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge ]
  %call12.2.i.i = call ptr @of_get_property(ptr noundef nonnull %child.054.i.i, ptr noundef nonnull @.str.58, ptr noundef null) #4
  %tobool13.not.2.i.i = icmp eq ptr %call12.2.i.i, null
  br i1 %tobool13.not.2.i.i, label %for.inc.1.i.i.for.inc.2.i.i_crit_edge, label %if.then14.2.i.i

for.inc.1.i.i.for.inc.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2.i.i

if.then14.2.i.i:                                  ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx15.2.i.i = getelementptr [4 x %struct.usb_string], ptr %str_array.i.i, i32 0, i32 %offset.1.1.i.i
  %s.2.i.i = getelementptr [4 x %struct.usb_string], ptr %str_array.i.i, i32 0, i32 %offset.1.1.i.i, i32 1
  %44 = ptrtoint ptr %s.2.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call12.2.i.i, ptr %s.2.i.i, align 4
  %45 = ptrtoint ptr %arrayidx15.2.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %arrayidx15.2.i.i, align 4
  %inc.2.i.i = add nuw nsw i32 %offset.1.1.i.i, 1
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %if.then14.2.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge
  %offset.1.2.i.i = phi i32 [ %inc.2.i.i, %if.then14.2.i.i ], [ %offset.1.1.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge ]
  %conv5.i.i = trunc i32 %39 to i16
  %arrayidx21.i.i = getelementptr [4 x %struct.usb_string], ptr %str_array.i.i, i32 0, i32 %offset.1.2.i.i
  %46 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %arrayidx21.i.i, align 4
  %s24.i.i = getelementptr [4 x %struct.usb_string], ptr %str_array.i.i, i32 0, i32 %offset.1.2.i.i, i32 1
  %47 = ptrtoint ptr %s24.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %s24.i.i, align 4
  %48 = ptrtoint ptr %vhub to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vhub, align 4
  %dev.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %49, i32 0, i32 3
  %call.i.i.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.i.i.i.i, i32 noundef 48, i32 noundef 3520) #4
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %for.inc.2.i.i.if.then27.i.i_crit_edge, label %ast_vhub_str_container_alloc.exit.i.i.i

for.inc.2.i.i.if.then27.i.i_crit_edge:            ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then27.i.i

ast_vhub_str_container_alloc.exit.i.i.i:          ; preds = %for.inc.2.i.i
  %add.ptr.i.i.i.i = getelementptr %struct.usb_gadget_string_container, ptr %call.i.i.i.i.i, i32 2
  %strings.i.i.i.i = getelementptr inbounds %struct.usb_gadget_string_container, ptr %call.i.i.i.i.i, i32 1, i32 0, i32 1
  %50 = ptrtoint ptr %strings.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %add.ptr.i.i.i.i, ptr %strings.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp ugt ptr %call.i.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %ast_vhub_str_container_alloc.exit.i.i.i.if.then27.i.i_crit_edge, label %if.end.i.i.i

ast_vhub_str_container_alloc.exit.i.i.i.if.then27.i.i_crit_edge: ; preds = %ast_vhub_str_container_alloc.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then27.i.i

if.end.i.i.i:                                     ; preds = %ast_vhub_str_container_alloc.exit.i.i.i
  %stash.i.i.i.i = getelementptr inbounds %struct.usb_gadget_string_container, ptr %call.i.i.i.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %stash.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv5.i.i, ptr %stash.i.i.i.i, align 4
  %tobool3.not.i.i.i.i = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %tobool3.not.i.i.i.i, label %if.end.i.i.i.ast_vhub_str_deep_copy.exit.i.i.i_crit_edge, label %if.end.i.i.i.do.body.i.i.i.i_crit_edge

if.end.i.i.i.do.body.i.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  br label %do.body.i.i.i.i

if.end.i.i.i.ast_vhub_str_deep_copy.exit.i.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ast_vhub_str_deep_copy.exit.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end.i.i.i.do.body.i.i.i.i_crit_edge
  %src_array.0.i.i.i.i = phi ptr [ %incdec.ptr4.i.i.i.i, %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge ], [ %str_array.i.i, %if.end.i.i.i.do.body.i.i.i.i_crit_edge ]
  %dest_array.0.i.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i, %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge ], [ %add.ptr.i.i.i.i, %if.end.i.i.i.do.body.i.i.i.i_crit_edge ]
  %52 = ptrtoint ptr %src_array.0.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 8)
  %53 = load i64, ptr %src_array.0.i.i.i.i, align 4
  %54 = ptrtoint ptr %dest_array.0.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %54, i32 8)
  store i64 %53, ptr %dest_array.0.i.i.i.i, align 4
  %incdec.ptr.i.i.i.i = getelementptr %struct.usb_string, ptr %dest_array.0.i.i.i.i, i32 1
  %incdec.ptr4.i.i.i.i = getelementptr %struct.usb_string, ptr %src_array.0.i.i.i.i, i32 1
  %s.i.i.i.i = getelementptr %struct.usb_string, ptr %src_array.0.i.i.i.i, i32 1, i32 1
  %55 = ptrtoint ptr %s.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %s.i.i.i.i, align 4
  %tobool5.not.i.i.i.i = icmp eq ptr %56, null
  br i1 %tobool5.not.i.i.i.i, label %do.body.i.i.i.i.ast_vhub_str_deep_copy.exit.i.i.i_crit_edge, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i.i.i

do.body.i.i.i.i.ast_vhub_str_deep_copy.exit.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ast_vhub_str_deep_copy.exit.i.i.i

ast_vhub_str_deep_copy.exit.i.i.i:                ; preds = %do.body.i.i.i.i.ast_vhub_str_deep_copy.exit.i.i.i_crit_edge, %if.end.i.i.i.ast_vhub_str_deep_copy.exit.i.i.i_crit_edge
  %57 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i.i, align 4
  %call.i.i12.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i.i.i.i, ptr noundef %58, ptr noundef %vhub_str_desc.i) #4
  br i1 %call.i.i12.i.i.i, label %if.end.i.i.i.i.i, label %ast_vhub_str_deep_copy.exit.i.i.i.for.inc29.i.i_crit_edge

ast_vhub_str_deep_copy.exit.i.i.i.for.inc29.i.i_crit_edge: ; preds = %ast_vhub_str_deep_copy.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc29.i.i

if.end.i.i.i.i.i:                                 ; preds = %ast_vhub_str_deep_copy.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %59 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i.i.i.i.i, ptr %prev.i.i, align 4
  %60 = ptrtoint ptr %call.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %vhub_str_desc.i, ptr %call.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i.i.i.i, i32 0, i32 1
  %61 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev3.i.i.i.i.i, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %call.i.i.i.i.i, ptr %58, align 4
  br label %for.inc29.i.i

if.then27.i.i:                                    ; preds = %ast_vhub_str_container_alloc.exit.i.i.i.if.then27.i.i_crit_edge, %for.inc.2.i.i.if.then27.i.i_crit_edge
  %retval.0.i15.i.i.i = phi ptr [ %call.i.i.i.i.i, %ast_vhub_str_container_alloc.exit.i.i.i.if.then27.i.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %for.inc.2.i.i.if.then27.i.i_crit_edge ]
  %63 = ptrtoint ptr %retval.0.i15.i.i.i to i32
  call void @of_node_put(ptr noundef nonnull %child.054.i.i) #4
  br label %ast_vhub_of_parse_str_desc.exit.i

for.inc29.i.i:                                    ; preds = %if.end.i.i.i.i.i, %ast_vhub_str_deep_copy.exit.i.i.i.for.inc29.i.i_crit_edge, %if.end.i23.i.for.inc29.i.i_crit_edge, %for.body.i.i.for.inc29.i.i_crit_edge
  %call30.i.i = call ptr @of_get_next_child(ptr noundef nonnull %call.i, ptr noundef nonnull %child.054.i.i) #4
  %cmp.not.i.i = icmp eq ptr %call30.i.i, null
  br i1 %cmp.not.i.i, label %for.inc29.i.i.ast_vhub_of_parse_str_desc.exit.i_crit_edge, label %for.inc29.i.i.for.body.i.i_crit_edge

for.inc29.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc29.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.inc29.i.i.ast_vhub_of_parse_str_desc.exit.i_crit_edge: ; preds = %for.inc29.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ast_vhub_of_parse_str_desc.exit.i

ast_vhub_of_parse_str_desc.exit.i:                ; preds = %for.inc29.i.i.ast_vhub_of_parse_str_desc.exit.i_crit_edge, %if.then27.i.i, %if.then2.i.ast_vhub_of_parse_str_desc.exit.i_crit_edge
  %ret.2.i.i = phi i32 [ %63, %if.then27.i.i ], [ 0, %if.then2.i.ast_vhub_of_parse_str_desc.exit.i_crit_edge ], [ 0, %for.inc29.i.i.ast_vhub_of_parse_str_desc.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %str_array.i.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %langid.i.i) #4
  br label %ast_vhub_init_desc.exit

if.else.i:                                        ; preds = %if.end.i
  %64 = ptrtoint ptr %vhub to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %vhub, align 4
  %dev.i.i.i = getelementptr inbounds %struct.platform_device, ptr %65, i32 0, i32 3
  %call.i.i.i24.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.i.i.i, i32 noundef 48, i32 noundef 3520) #4
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i24.i, null
  br i1 %tobool.not.i.i.i, label %if.else.i.if.then.i25.i_crit_edge, label %ast_vhub_str_container_alloc.exit.i.i

if.else.i.if.then.i25.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i25.i

ast_vhub_str_container_alloc.exit.i.i:            ; preds = %if.else.i
  %add.ptr.i.i.i = getelementptr %struct.usb_gadget_string_container, ptr %call.i.i.i24.i, i32 2
  %strings.i.i.i = getelementptr inbounds %struct.usb_gadget_string_container, ptr %call.i.i.i24.i, i32 1, i32 0, i32 1
  %66 = ptrtoint ptr %strings.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %add.ptr.i.i.i, ptr %strings.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call.i.i.i24.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %ast_vhub_str_container_alloc.exit.i.i.if.then.i25.i_crit_edge, label %if.end.i26.i

ast_vhub_str_container_alloc.exit.i.i.if.then.i25.i_crit_edge: ; preds = %ast_vhub_str_container_alloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i25.i

if.then.i25.i:                                    ; preds = %ast_vhub_str_container_alloc.exit.i.i.if.then.i25.i_crit_edge, %if.else.i.if.then.i25.i_crit_edge
  %retval.0.i15.i.i = phi ptr [ %call.i.i.i24.i, %ast_vhub_str_container_alloc.exit.i.i.if.then.i25.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.else.i.if.then.i25.i_crit_edge ]
  %67 = ptrtoint ptr %retval.0.i15.i.i to i32
  br label %ast_vhub_init_desc.exit

if.end.i26.i:                                     ; preds = %ast_vhub_str_container_alloc.exit.i.i
  %stash.i.i.i = getelementptr inbounds %struct.usb_gadget_string_container, ptr %call.i.i.i24.i, i32 0, i32 1
  %68 = ptrtoint ptr %stash.i.i.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 1033, ptr %stash.i.i.i, align 4
  %tobool3.not.i.i.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool3.not.i.i.i, label %if.end.i26.i.ast_vhub_str_deep_copy.exit.i.i_crit_edge, label %do.body.i.i.preheader.i

if.end.i26.i.ast_vhub_str_deep_copy.exit.i.i_crit_edge: ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ast_vhub_str_deep_copy.exit.i.i

do.body.i.i.preheader.i:                          ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #6
  %69 = call ptr @memcpy(ptr %add.ptr.i.i.i, ptr @ast_vhub_str_array, i32 24)
  br label %ast_vhub_str_deep_copy.exit.i.i

ast_vhub_str_deep_copy.exit.i.i:                  ; preds = %do.body.i.i.preheader.i, %if.end.i26.i.ast_vhub_str_deep_copy.exit.i.i_crit_edge
  %70 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %prev.i.i, align 4
  %call.i.i12.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i.i24.i, ptr noundef %71, ptr noundef %vhub_str_desc.i) #4
  br i1 %call.i.i12.i.i, label %if.end.i.i.i.i, label %ast_vhub_str_deep_copy.exit.i.i.ast_vhub_init_desc.exit_crit_edge

ast_vhub_str_deep_copy.exit.i.i.ast_vhub_init_desc.exit_crit_edge: ; preds = %ast_vhub_str_deep_copy.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ast_vhub_init_desc.exit

if.end.i.i.i.i:                                   ; preds = %ast_vhub_str_deep_copy.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %72 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call.i.i.i24.i, ptr %prev.i.i, align 4
  %73 = ptrtoint ptr %call.i.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %vhub_str_desc.i, ptr %call.i.i.i24.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i.i24.i, i32 0, i32 1
  %74 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %71, ptr %prev3.i.i.i.i, align 4
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %call.i.i.i24.i, ptr %71, align 4
  br label %ast_vhub_init_desc.exit

ast_vhub_init_desc.exit:                          ; preds = %if.end.i.i.i.i, %ast_vhub_str_deep_copy.exit.i.i.ast_vhub_init_desc.exit_crit_edge, %if.then.i25.i, %ast_vhub_of_parse_str_desc.exit.i
  %ret.0.i = phi i32 [ %ret.2.i.i, %ast_vhub_of_parse_str_desc.exit.i ], [ %67, %if.then.i25.i ], [ 0, %ast_vhub_str_deep_copy.exit.i.i.ast_vhub_init_desc.exit_crit_edge ], [ 0, %if.end.i.i.i.i ]
  %vhub_qual_desc.i = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 21
  %76 = call ptr @memcpy(ptr %vhub_qual_desc.i, ptr @ast_vhub_qual_desc, i32 10)
  ret i32 %ret.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ast_vhub_wake_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -56
  %lock = getelementptr i8, ptr %work, i32 -44
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %max_ports = getelementptr i8, ptr %work, i32 228
  %0 = ptrtoint ptr %max_ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp619.not = icmp eq i32 %1, 0
  br i1 %cmp619.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ports = getelementptr i8, ptr %work, i32 224
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.020 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports, align 4
  %arrayidx = getelementptr %struct.ast_vhub_port, ptr %3, i32 %i.020
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 8
  %6 = and i16 %5, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @ast_vhub_change_port_stat(ptr noundef %add.ptr, i32 noundef %i.020, i16 noundef zeroext 4, i16 noundef zeroext 0, i1 noundef zeroext true)
  %dev = getelementptr %struct.ast_vhub_port, ptr %3, i32 %i.020, i32 2
  tail call void @ast_vhub_dev_resume(ptr noundef %dev) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.020, 1
  %7 = ptrtoint ptr %max_ports to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_ports, align 4
  %cmp6 = icmp ult i32 %inc, %8
  br i1 %cmp6, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %regs.i = getelementptr i8, ptr %work, i32 -52
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #4, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !155
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_send_host_wakeup.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_wake_work, %ast_vhub_send_host_wakeup.exit)) #4
          to label %if.then.i [label %ast_vhub_send_host_wakeup.exit], !srcloc !148

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_send_host_wakeup.__UNIQUE_ID_ddebug257, ptr noundef %dev.i, ptr noundef nonnull @.str.44) #4
  br label %ast_vhub_send_host_wakeup.exit

ast_vhub_send_host_wakeup.exit:                   ; preds = %if.then.i, %for.end
  %14 = or i32 %11, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !156
  tail call void @arm_heavy_mb() #4
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #4, !srcloc !150
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ast_vhub_reply(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_get_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ast_vhub_port_reset(ptr nocapture noundef readonly %vhub, i8 noundef zeroext %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ports = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 10
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ports, align 4
  %idxprom = zext i8 %port to i32
  %arrayidx.i = getelementptr %struct.ast_vhub_port, ptr %1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx.i, align 8
  %and.i = and i16 %3, -23
  %or.i = or i16 %and.i, 16
  store i16 %or.i, ptr %arrayidx.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_change_port_stat.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_port_reset, %ast_vhub_change_port_stat.exit)) #4
          to label %if.then.i [label %ast_vhub_change_port_stat.exit], !srcloc !148

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i = zext i16 %3 to i32
  %dev.i = getelementptr %struct.ast_vhub_port, ptr %1, i32 %idxprom, i32 2
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev11.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %name.i = getelementptr %struct.ast_vhub_port, ptr %1, i32 %idxprom, i32 2, i32 3
  %8 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name.i, align 4
  %add.i = add nuw nsw i32 %idxprom, 1
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.i, align 8
  %conv15.i = zext i16 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_change_port_stat.__UNIQUE_ID_ddebug256, ptr noundef %dev11.i, ptr noundef nonnull @.str.42, ptr noundef %9, i32 noundef %add.i, i32 noundef %conv.i, i32 noundef %conv15.i, i32 noundef 0) #4
  br label %ast_vhub_change_port_stat.exit

ast_vhub_change_port_stat.exit:                   ; preds = %if.then.i, %entry
  %driver = getelementptr %struct.ast_vhub_port, ptr %1, i32 %idxprom, i32 2, i32 6
  %12 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver, align 8
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %ast_vhub_change_port_stat.exit.cleanup_crit_edge, label %if.end

ast_vhub_change_port_stat.exit.cleanup_crit_edge: ; preds = %ast_vhub_change_port_stat.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %ast_vhub_change_port_stat.exit
  %dev = getelementptr %struct.ast_vhub_port, ptr %1, i32 %idxprom, i32 2
  tail call void @ast_vhub_dev_reset(ptr noundef %dev) #4
  %14 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver, align 8
  %max_speed = getelementptr inbounds %struct.usb_gadget_driver, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_speed, align 4
  %conv5 = and i32 %17, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv5)
  %cmp = icmp eq i32 %conv5, 0
  br i1 %cmp, label %if.end.if.then11_crit_edge, label %lor.lhs.false

if.end.if.then11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then11

lor.lhs.false:                                    ; preds = %if.end
  %speed8 = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 16
  %18 = ptrtoint ptr %speed8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %speed8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5, i32 %19)
  %cmp9 = icmp ugt i32 %conv5, %19
  br i1 %cmp9, label %lor.lhs.false.if.then11_crit_edge, label %lor.lhs.false.if.end14_crit_edge

lor.lhs.false.if.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false.if.then11_crit_edge, %if.end.if.then11_crit_edge
  %speed12 = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 16
  %20 = ptrtoint ptr %speed12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %speed12, align 4
  %.pre = and i32 %21, 65535
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %lor.lhs.false.if.end14_crit_edge
  %conv15.pre-phi = phi i32 [ %.pre, %if.then11 ], [ %conv5, %lor.lhs.false.if.end14_crit_edge ]
  %speed.0.in = phi i32 [ %21, %if.then11 ], [ %17, %lor.lhs.false.if.end14_crit_edge ]
  %trunc = trunc i32 %speed.0.in to i16
  %switch.tableidx = add i16 %trunc, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %switch.tableidx)
  %22 = icmp ult i16 %switch.tableidx, 3
  br i1 %22, label %switch.lookup, label %do.body

do.body:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_port_reset.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_port_reset, %cleanup)) #4
          to label %if.then22 [label %cleanup], !srcloc !148

if.then22:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %vhub to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vhub, align 4
  %dev23 = getelementptr inbounds %struct.platform_device, ptr %24, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_port_reset.__UNIQUE_ID_ddebug258, ptr noundef %dev23, ptr noundef nonnull @.str.50, i32 noundef %conv15.pre-phi) #4
  br label %cleanup

switch.lookup:                                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %25 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i16], ptr @switch.table.ast_vhub_port_reset, i32 0, i32 %25
  %26 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %26)
  %switch.load = load i16, ptr %switch.gep, align 2
  %27 = sext i16 %switch.tableidx to i32
  %switch.gep50 = getelementptr inbounds [3 x i16], ptr @switch.table.ast_vhub_port_reset.62, i32 0, i32 %27
  %28 = ptrtoint ptr %switch.gep50 to i32
  call void @__asan_load2_noabort(i32 %28)
  %switch.load51 = load i16, ptr %switch.gep50, align 2
  tail call fastcc void @ast_vhub_change_port_stat(ptr noundef %vhub, i32 noundef %idxprom, i16 noundef zeroext %switch.load, i16 noundef zeroext %switch.load51, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.then22, %do.body, %ast_vhub_change_port_stat.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_dev_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @usb_validate_langid(i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135}
!llvm.module.flags = !{!137, !138, !139, !140, !141, !142, !143, !144}
!llvm.ident = !{!145}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 418, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ast_vhub_std_hub_request.__UNIQUE_ID_ddebug254, !1, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 425, i32 3}
!10 = !{ptr @ast_vhub_std_hub_request.__UNIQUE_ID_ddebug255, !9, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 777, i32 3}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ast_vhub_class_hub_request.__UNIQUE_ID_ddebug261, !13, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 780, i32 3}
!18 = !{ptr @ast_vhub_class_hub_request.__UNIQUE_ID_ddebug262, !17, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 785, i32 3}
!21 = !{ptr @ast_vhub_class_hub_request.__UNIQUE_ID_ddebug263, !20, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 789, i32 3}
!24 = !{ptr @ast_vhub_class_hub_request.__UNIQUE_ID_ddebug264, !23, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 796, i32 3}
!27 = !{ptr @ast_vhub_class_hub_request.__UNIQUE_ID_ddebug265, !26, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 799, i32 3}
!30 = !{ptr @ast_vhub_class_hub_request.__UNIQUE_ID_ddebug266, !29, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 808, i32 3}
!33 = !{ptr @ast_vhub_class_hub_request.__UNIQUE_ID_ddebug267, !32, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 817, i32 2}
!36 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ast_vhub_hub_suspend.__UNIQUE_ID_ddebug268, !35, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 840, i32 2}
!40 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ast_vhub_hub_resume.__UNIQUE_ID_ddebug269, !39, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 863, i32 2}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ast_vhub_hub_reset.__UNIQUE_ID_ddebug270, !43, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!46 = !{ptr @ast_vhub_init_hub.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 1077, i32 2}
!48 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 174, i32 2}
!51 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ast_vhub_hub_dev_status.__UNIQUE_ID_ddebug239, !50, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 199, i32 2}
!55 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @ast_vhub_hub_ep_status.__UNIQUE_ID_ddebug240, !54, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 217, i32 2}
!59 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @ast_vhub_hub_dev_feature.__UNIQUE_ID_ddebug241, !58, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!61 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 222, i32 3}
!65 = !{ptr @ast_vhub_hub_dev_feature.__UNIQUE_ID_ddebug242, !64, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!66 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 247, i32 2}
!70 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @ast_vhub_hub_ep_feature.__UNIQUE_ID_ddebug243, !69, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 257, i32 2}
!74 = !{ptr @ast_vhub_hub_ep_feature.__UNIQUE_ID_ddebug244, !73, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!75 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 279, i32 2}
!79 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @ast_vhub_rep_desc.__UNIQUE_ID_ddebug245, !78, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 506, i32 2}
!83 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @ast_vhub_change_port_stat.__UNIQUE_ID_ddebug256, !82, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 536, i32 2}
!87 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @ast_vhub_send_host_wakeup.__UNIQUE_ID_ddebug257, !86, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 757, i32 2}
!91 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @ast_vhub_get_port_stat.__UNIQUE_ID_ddebug260, !90, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 673, i32 3}
!95 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @ast_vhub_set_port_feature.__UNIQUE_ID_ddebug259, !94, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!97 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 640, i32 3}
!99 = !{ptr @.str.50, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @ast_vhub_port_reset.__UNIQUE_ID_ddebug258, !98, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!101 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 1061, i32 42}
!103 = !{ptr @ast_vhub_dev_desc, !104, !"ast_vhub_dev_desc", i1 false, i1 false}
!104 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 54, i32 43}
!105 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 911, i32 37}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 915, i32 37}
!109 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 919, i32 37}
!111 = !{ptr @ast_vhub_conf_desc, !112, !"ast_vhub_conf_desc", i1 false, i1 false}
!112 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 97, i32 41}
!113 = !{ptr @ast_vhub_hub_desc, !114, !"ast_vhub_hub_desc", i1 false, i1 false}
!114 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 133, i32 40}
!115 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 1009, i32 35}
!117 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 989, i32 3}
!119 = !{ptr @.str.57, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 990, i32 3}
!121 = !{ptr @.str.58, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 991, i32 3}
!123 = distinct !{null, !124, !"str_id_map", i1 false, i1 false}
!124 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 988, i32 3}
!125 = distinct !{null, !126, !"ast_vhub_strings", i1 false, i1 false}
!126 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 164, i32 40}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 151, i32 8}
!129 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 155, i32 8}
!131 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 159, i32 8}
!133 = !{ptr @ast_vhub_str_array, !134, !"ast_vhub_str_array", i1 false, i1 false}
!134 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 148, i32 32}
!135 = !{ptr @ast_vhub_qual_desc, !136, !"ast_vhub_qual_desc", i1 false, i1 false}
!136 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/hub.c", i32 71, i32 46}
!137 = !{i32 1, !"wchar_size", i32 2}
!138 = !{i32 1, !"min_enum_size", i32 4}
!139 = !{i32 8, !"branch-target-enforcement", i32 0}
!140 = !{i32 8, !"sign-return-address", i32 0}
!141 = !{i32 8, !"sign-return-address-all", i32 0}
!142 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!143 = !{i32 7, !"uwtable", i32 1}
!144 = !{i32 7, !"frame-pointer", i32 2}
!145 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!146 = !{i64 5298548}
!147 = !{i64 2154817312}
!148 = !{i64 2148717506, i64 2148717511, i64 2148717524, i64 2148717568, i64 2148717602, i64 2148717623}
!149 = !{i64 2154823316}
!150 = !{i64 5298130}
!151 = !{i64 2154784302}
!152 = !{i64 2154785224}
!153 = !{i64 2154792008}
!154 = !{i64 2154792258}
!155 = !{i64 2154829252}
!156 = !{i64 2154831806}
!157 = !{i64 2154825381}
!158 = !{i64 2154825600}
!159 = !{i64 2154872874}
!160 = !{i64 2154873260}
!161 = !{i64 2154873682}
!162 = !{i64 2154874122}
!163 = !{!"auto-init"}
