; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/udc/aspeed-vhub/epn.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/aspeed-vhub/epn.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ast_vhub_ep = type { %struct.usb_ep, %struct.list_head, i32, ptr, ptr, ptr, i32, %union.anon }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.list_head = type { ptr, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, i32, i8, %struct.ast_vhub_req }
%struct.ast_vhub_req = type { %struct.usb_request, %struct.list_head, i32, i32, i8 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ast_vhub_dev = type { ptr, ptr, i32, ptr, ptr, %struct.usb_gadget, ptr, i8, %struct.ast_vhub_ep, ptr, i32 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.ast_vhub_desc = type { i32, i32 }
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
%struct.anon.0 = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i8 }

@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/usb/gadget/udc/aspeed-vhub/epn.c\00", [55 x i8] zeroinitializer }, align 32
@ast_vhub_alloc_epn.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 0, i8 -53, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aspeed_vhub\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ast_vhub_alloc_epn\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s Allocating gen EP %d for addr %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ast_vhub_epn_ops = internal constant { %struct.usb_ep_ops, [52 x i8] } { %struct.usb_ep_ops { ptr @ast_vhub_epn_enable, ptr @ast_vhub_epn_disable, ptr @ast_vhub_epn_dispose, ptr @ast_vhub_alloc_request, ptr @ast_vhub_free_request, ptr @ast_vhub_epn_queue, ptr @ast_vhub_epn_dequeue, ptr @ast_vhub_epn_set_halt, ptr @ast_vhub_epn_set_wedge, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ep%d\00", [27 x i8] zeroinitializer }, align 32
@ast_vhub_epn_handle_ack_desc.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str, ptr @.str.6, i8 0, i8 65, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ast_vhub_epn_handle_ack_desc\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s:EP%d ACK status=%08x is_in=%d ep->d_last=%d..%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hub\00", [28 x i8] zeroinitializer }, align 32
@ast_vhub_epn_handle_ack_desc.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str, ptr @.str.8, i8 0, i8 69, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s:EP%d  desc %d len=%d req=%p (act=%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@ast_vhub_epn_handle_ack_desc.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str, ptr @.str.9, i8 0, i8 73, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"%s:EP%d CHECK:Last packet discrepancy: last_desc=%d len=%d r.act=%d r.len=%d r.zero=%d mp=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@ast_vhub_epn_handle_ack_desc.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str, ptr @.str.10, i8 0, i8 76, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s:EP%d CHECK:DMA read ptr mismatch %d vs %d\0A\00", [50 x i8] zeroinitializer }, align 32
@ast_vhub_epn_kick_desc.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str, ptr @.str.12, i8 0, i8 44, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ast_vhub_epn_kick_desc\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s:EP%d kick act=%d/%d chunk_max=%d free_descs=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@ast_vhub_epn_kick_desc.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str, ptr @.str.13, i8 0, i8 51, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s:EP%d  chunk: act=%d/%d chunk=%d last=%d desc=%d free=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@ast_vhub_epn_kick_desc.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str, ptr @.str.14, i8 0, i8 59, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s:EP%d HW kicked, d_next=%d dstat=%08x\0A\00", [55 x i8] zeroinitializer }, align 32
@ast_vhub_epn_handle_ack.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.15, ptr @.str, ptr @.str.16, i8 0, i8 24, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ast_vhub_epn_handle_ack\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s:EP%d ACK status=%08x is_in=%d, req=%p (active=%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@ast_vhub_epn_handle_ack.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.15, ptr @.str, ptr @.str.17, i8 0, i8 27, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s:EP%d DMA read pointer not 0 !\0A\00", [62 x i8] zeroinitializer }, align 32
@ast_vhub_epn_kick.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.18, ptr @.str, ptr @.str.19, i8 0, i8 14, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ast_vhub_epn_kick\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s:EP%d kick req %p act=%d/%d chunk=%d last=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@ast_vhub_epn_enable.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str, ptr @.str.21, i8 0, i8 -104, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ast_vhub_epn_enable\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s:EP%d Invalid EP enable,d_idx=%d,dev=%p,type=%d,mp=%d/%d\0A\00", [36 x i8] zeroinitializer }, align 32
@ast_vhub_epn_enable.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str, ptr @.str.22, i8 0, i8 -103, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s:EP%d EP number mismatch !\0A\00", [34 x i8] zeroinitializer }, align 32
@ast_vhub_epn_enable.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str, ptr @.str.23, i8 0, i8 -101, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s:EP%d Already enabled\0A\00", [39 x i8] zeroinitializer }, align 32
@ast_vhub_epn_enable.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str, ptr @.str.24, i8 0, i8 -99, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s:EP%d Bogus device state: driver=%p speed=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@ast_vhub_epn_enable.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str, ptr @.str.25, i8 0, i8 -95, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s:EP%d Enabling [%s] %s num %d maxpacket=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@ast_vhub_epn_enable.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str, ptr @.str.28, i8 0, i8 -90, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s:EP%d Only one control endpoint\0A\00", [61 x i8] zeroinitializer }, align 32
@ast_vhub_epn_enable.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str, ptr @.str.29, i8 0, i8 -84, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s:EP%d config=%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@ast_vhub_epn_disable.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.30, ptr @.str, ptr @.str.31, i8 0, i8 -116, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ast_vhub_epn_disable\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s:EP%d Disabling !\0A\00", [43 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ast_vhub_stop_active_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str, i32 433, ptr @.str.34, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Timeout waiting for DMA\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ast_vhub_stop_active_req\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ast_vhub_stop_active_req._entry_ptr = internal global ptr @ast_vhub_stop_active_req._entry, section ".printk_index", align 4
@ast_vhub_epn_dispose.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.36, ptr @.str, ptr @.str.37, i8 0, i8 -67, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ast_vhub_epn_dispose\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s:EP%d Releasing endpoint\0A\00", [36 x i8] zeroinitializer }, align 32
@ast_vhub_epn_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str, i32 340, ptr @.str.34, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Bogus EPn request ! u_req=%p\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ast_vhub_epn_queue\00", [45 x i8] zeroinitializer }, align 32
@ast_vhub_epn_queue._entry_ptr = internal global ptr @ast_vhub_epn_queue._entry, section ".printk_index", align 4
@ast_vhub_epn_queue._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str, i32 343, ptr @.str.34, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"complete=%p internal=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@ast_vhub_epn_queue._entry_ptr.42 = internal global ptr @ast_vhub_epn_queue._entry.40, section ".printk_index", align 4
@ast_vhub_epn_queue.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.39, ptr @.str, ptr @.str.43, i8 0, i8 87, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s:EP%d Enqueuing request on wrong or disabled EP\0A\00", [45 x i8] zeroinitializer }, align 32
@ast_vhub_epn_queue._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.39, ptr @.str, i32 378, ptr @.str.34, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Request mapping failure %d\0A\00", [36 x i8] zeroinitializer }, align 32
@ast_vhub_epn_queue._entry_ptr.46 = internal global ptr @ast_vhub_epn_queue._entry.44, section ".printk_index", align 4
@ast_vhub_epn_queue.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.39, ptr @.str, ptr @.str.47, i8 0, i8 96, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s:EP%d enqueue req @%p\0A\00", [39 x i8] zeroinitializer }, align 32
@ast_vhub_epn_queue.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.39, ptr @.str, ptr @.str.48, i8 0, i8 97, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s:EP%d  l=%d dma=0x%x zero=%d noshort=%d noirq=%d is_in=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@ast_vhub_epn_dequeue.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.49, ptr @.str, ptr @.str.50, i8 0, i8 120, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ast_vhub_epn_dequeue\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s:EP%d dequeue req @%p active=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@ast_vhub_set_halt_and_wedge.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.51, ptr @.str, ptr @.str.52, i8 0, i8 -127, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ast_vhub_set_halt_and_wedge\00", [36 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s:EP%d Set halt (%d) & wedge (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 2, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 498, i32 6 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 814, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"ast_vhub_epn_ops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 780, i32 32 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 819, i32 38 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 259, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 276, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 288, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 302, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 176, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 205, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 237, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 95, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 111, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 57, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 609, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 615, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 620, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 628, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 642, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 664, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 688, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 561, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 433, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 758, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 340, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 342, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 351, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 377, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 384, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 385, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 482, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.213 = private constant [44 x i8] c"../drivers/usb/gadget/udc/aspeed-vhub/epn.c\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 519, i32 2 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @ast_vhub_epn_queue._entry, ptr @ast_vhub_epn_queue._entry.40, ptr @ast_vhub_epn_queue._entry.44, ptr @ast_vhub_epn_queue._entry_ptr, ptr @ast_vhub_epn_queue._entry_ptr.42, ptr @ast_vhub_epn_queue._entry_ptr.46, ptr @ast_vhub_stop_active_req._entry, ptr @ast_vhub_stop_active_req._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @ast_vhub_epn_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_vhub_epn_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_vhub_stop_active_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_vhub_epn_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_vhub_epn_queue._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_vhub_epn_queue._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ast_vhub_epn_ack_irq(ptr noundef %ep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %desc_mode = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 4, i32 0, i32 4
  %0 = ptrtoint ptr %desc_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %desc_mode, align 4
  %1 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %bf.cast.not = icmp eq i8 %1, 0
  br i1 %bf.cast.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @ast_vhub_epn_handle_ack_desc(ptr noundef %ep)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @ast_vhub_epn_handle_ack(ptr noundef %ep)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ast_vhub_epn_handle_ack_desc(ptr noundef %ep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 12
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !125
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %0, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #4, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !126
  %cmp.not = icmp eq i32 %3, %6
  br i1 %cmp.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.end:                                           ; preds = %do.body
  %7 = tail call i32 @llvm.bswap.i32(i32 %3)
  %shr = lshr i32 %7, 8
  %and = and i32 %shr, 255
  %queue = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 1
  %8 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %queue, align 4
  %cmp14.not = icmp eq ptr %9, %queue
  %add.ptr16 = getelementptr i8, ptr %9, i32 -56
  %spec.select = select i1 %cmp14.not, ptr null, ptr %add.ptr16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_epn_handle_ack_desc.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_epn_handle_ack_desc, %do.end35)) #4
          to label %if.then [label %do.end35], !srcloc !127

if.then:                                          ; preds = %do.end
  %vhub = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %10 = ptrtoint ptr %vhub to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vhub, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  %dev24 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 3
  %14 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev24, align 4
  %tobool25.not = icmp eq ptr %15, null
  br i1 %tobool25.not, label %if.then.cond.end29_crit_edge, label %cond.true26

if.then.cond.end29_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end29

cond.true26:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.ast_vhub_dev, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name, align 4
  br label %cond.end29

cond.end29:                                       ; preds = %cond.true26, %if.then.cond.end29_crit_edge
  %cond30 = phi ptr [ %17, %cond.true26 ], [ @.str.7, %if.then.cond.end29_crit_edge ]
  %d_idx = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 2
  %18 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %d_idx, align 4
  %is_in = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 4, i32 0, i32 4
  %20 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %is_in, align 4
  %bf.load.lobit = lshr i8 %bf.load, 7
  %21 = zext i8 %bf.load.lobit to i32
  %d_last31 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 4, i32 0, i32 1
  %22 = ptrtoint ptr %d_last31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %d_last31, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_epn_handle_ack_desc.__UNIQUE_ID_ddebug248, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %cond30, i32 noundef %19, i32 noundef %7, i32 noundef %21, i32 noundef %23, i32 noundef %and) #4
  br label %do.end35

do.end35:                                         ; preds = %cond.end29, %do.end
  %d_last36 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 4, i32 0, i32 1
  %24 = ptrtoint ptr %d_last36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %d_last36, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %and)
  %cmp37.not333 = icmp eq i32 %25, %and
  br i1 %cmp37.not333, label %do.end35.while.end_crit_edge, label %while.body.lr.ph

do.end35.while.end_crit_edge:                     ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end35
  %descs = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 2
  %vhub59 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %dev62 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 3
  %d_idx70 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 2
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %tobool71.not = icmp eq ptr %spec.select, null
  %active = getelementptr inbounds %struct.ast_vhub_req, ptr %spec.select, i32 0, i32 4
  %tobool85.not = icmp eq ptr %spec.select, null
  %active86 = getelementptr inbounds %struct.ast_vhub_req, ptr %spec.select, i32 0, i32 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %spec.select, i32 0, i32 12
  %last_desc = getelementptr inbounds %struct.ast_vhub_req, ptr %spec.select, i32 0, i32 3
  %length = getelementptr inbounds %struct.usb_request, ptr %spec.select, i32 0, i32 1
  %zero = getelementptr inbounds %struct.usb_request, ptr %spec.select, i32 0, i32 6
  %length153 = getelementptr inbounds %struct.usb_request, ptr %spec.select, i32 0, i32 1
  %zero155 = getelementptr inbounds %struct.usb_request, ptr %spec.select, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %26 = phi i32 [ %25, %while.body.lr.ph ], [ %90, %cleanup.while.body_crit_edge ]
  %27 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %descs, align 4
  %add = add i32 %26, 1
  %and40 = and i32 %add, 255
  %29 = ptrtoint ptr %d_last36 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and40, ptr %d_last36, align 4
  %w1 = getelementptr %struct.ast_vhub_desc, ptr %28, i32 %26, i32 1
  %30 = ptrtoint ptr %w1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %w1, align 4
  %32 = and i32 %31, -15794176
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_epn_handle_ack_desc.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_epn_handle_ack_desc, %do.end84)) #4
          to label %if.then58 [label %do.end84], !srcloc !127

if.then58:                                        ; preds = %while.body
  %34 = ptrtoint ptr %vhub59 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vhub59, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %dev61 = getelementptr inbounds %struct.platform_device, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev62, align 4
  %tobool63.not = icmp eq ptr %39, null
  br i1 %tobool63.not, label %if.then58.cond.end68_crit_edge, label %cond.true64

if.then58.cond.end68_crit_edge:                   ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end68

cond.true64:                                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #6
  %name66 = getelementptr inbounds %struct.ast_vhub_dev, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %name66 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name66, align 4
  br label %cond.end68

cond.end68:                                       ; preds = %cond.true64, %if.then58.cond.end68_crit_edge
  %cond69 = phi ptr [ %41, %cond.true64 ], [ @.str.7, %if.then58.cond.end68_crit_edge ]
  %42 = ptrtoint ptr %d_idx70 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %d_idx70, align 4
  br i1 %tobool71.not, label %cond.end68.cond.end78_crit_edge, label %cond.true72

cond.end68.cond.end78_crit_edge:                  ; preds = %cond.end68
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end78

cond.true72:                                      ; preds = %cond.end68
  call void @__sanitizer_cov_trace_pc() #6
  %44 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load73 = load i8, ptr %active, align 4
  %bf.load73.lobit = lshr i8 %bf.load73, 7
  %45 = zext i8 %bf.load73.lobit to i32
  br label %cond.end78

cond.end78:                                       ; preds = %cond.true72, %cond.end68.cond.end78_crit_edge
  %cond79 = phi i32 [ %45, %cond.true72 ], [ 0, %cond.end68.cond.end78_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_epn_handle_ack_desc.__UNIQUE_ID_ddebug249, ptr noundef %dev61, ptr noundef nonnull @.str.8, ptr noundef %cond69, i32 noundef %43, i32 noundef %26, i32 noundef %33, ptr noundef %spec.select, i32 noundef %cond79) #4
  br label %do.end84

do.end84:                                         ; preds = %cond.end78, %while.body
  br i1 %tobool85.not, label %do.end84.cleanup_crit_edge, label %lor.lhs.false

do.end84.cleanup_crit_edge:                       ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end84
  %46 = ptrtoint ptr %active86 to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load87 = load i8, ptr %active86, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load87)
  %bf.cast89.not = icmp sgt i8 %bf.load87, -1
  br i1 %bf.cast89.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end91

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end91:                                         ; preds = %lor.lhs.false
  %47 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %actual, align 4
  %add93 = add i32 %48, %33
  store i32 %add93, ptr %actual, align 4
  %49 = ptrtoint ptr %last_desc to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %last_desc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %26)
  %cmp94 = icmp eq i32 %50, %26
  %conv99 = zext i1 %cmp94 to i32
  %51 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %51, i32 7)
  %bf.load101 = load i56, ptr %maxpacket, align 2
  %bf.lshr102 = lshr i56 %bf.load101, 40
  %bf.cast103 = trunc i56 %bf.lshr102 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %bf.cast103)
  %cmp104 = icmp ult i32 %33, %bf.cast103
  br i1 %cmp104, label %if.end91.lor.end_crit_edge, label %lor.rhs

if.end91.lor.end_crit_edge:                       ; preds = %if.end91
  br i1 %cmp94, label %if.end91.lor.end_crit_edge.do.body174_crit_edge, label %if.end91.lor.end_crit_edge.do.body121_crit_edge

if.end91.lor.end_crit_edge.do.body121_crit_edge:  ; preds = %if.end91.lor.end_crit_edge
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body121

if.end91.lor.end_crit_edge.do.body174_crit_edge:  ; preds = %if.end91.lor.end_crit_edge
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body174

lor.rhs:                                          ; preds = %if.end91
  %52 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add93, i32 %53)
  %cmp109.not = icmp ult i32 %add93, %53
  br i1 %cmp109.not, label %lor.rhs.lor.end_crit_edge, label %lor.end

lor.rhs.lor.end_crit_edge:                        ; preds = %lor.rhs
  br i1 %cmp94, label %lor.rhs.lor.end_crit_edge.do.body121_crit_edge, label %lor.rhs.lor.end_crit_edge.cleanup_crit_edge

lor.rhs.lor.end_crit_edge.cleanup_crit_edge:      ; preds = %lor.rhs.lor.end_crit_edge
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.rhs.lor.end_crit_edge.do.body121_crit_edge:   ; preds = %lor.rhs.lor.end_crit_edge
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body121

lor.end:                                          ; preds = %lor.rhs
  %54 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %54)
  %bf.load112 = load i32, ptr %zero, align 4
  %55 = and i32 %bf.load112, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool114.not = icmp eq i32 %55, 0
  %56 = xor i1 %cmp94, %tobool114.not
  br i1 %56, label %lor.end.do.body121_crit_edge, label %lor.end.do.end171_crit_edge

lor.end.do.end171_crit_edge:                      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end171

lor.end.do.body121_crit_edge:                     ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body121

do.body121:                                       ; preds = %lor.end.do.body121_crit_edge, %lor.rhs.lor.end_crit_edge.do.body121_crit_edge, %if.end91.lor.end_crit_edge.do.body121_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_epn_handle_ack_desc.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_epn_handle_ack_desc, %do.end171)) #4
          to label %if.then135 [label %do.end171], !srcloc !127

if.then135:                                       ; preds = %do.body121
  %57 = ptrtoint ptr %vhub59 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %vhub59, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %dev138 = getelementptr inbounds %struct.platform_device, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev62, align 4
  %tobool140.not = icmp eq ptr %62, null
  br i1 %tobool140.not, label %if.then135.cond.end145_crit_edge, label %cond.true141

if.then135.cond.end145_crit_edge:                 ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end145

cond.true141:                                     ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #6
  %name143 = getelementptr inbounds %struct.ast_vhub_dev, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %name143 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %name143, align 4
  br label %cond.end145

cond.end145:                                      ; preds = %cond.true141, %if.then135.cond.end145_crit_edge
  %cond146 = phi ptr [ %64, %cond.true141 ], [ @.str.7, %if.then135.cond.end145_crit_edge ]
  %65 = ptrtoint ptr %d_idx70 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %d_idx70, align 4
  %67 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %actual, align 4
  %69 = ptrtoint ptr %length153 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %length153, align 4
  %71 = ptrtoint ptr %zero155 to i32
  call void @__asan_load4_noabort(i32 %71)
  %bf.load156 = load i32, ptr %zero155, align 4
  %bf.lshr157 = lshr i32 %bf.load156, 13
  %bf.clear158 = and i32 %bf.lshr157, 1
  %72 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %72, i32 7)
  %bf.load161 = load i56, ptr %maxpacket, align 2
  %bf.lshr162 = lshr i56 %bf.load161, 40
  %bf.cast163 = trunc i56 %bf.lshr162 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_epn_handle_ack_desc.__UNIQUE_ID_ddebug250, ptr noundef %dev138, ptr noundef nonnull @.str.9, ptr noundef %cond146, i32 noundef %66, i32 noundef %conv99, i32 noundef %33, i32 noundef %68, i32 noundef %70, i32 noundef %bf.clear158, i32 noundef %bf.cast163) #4
  br label %do.end171

do.end171:                                        ; preds = %cond.end145, %do.body121, %lor.end.do.end171_crit_edge
  br i1 %cmp94, label %do.end171.do.body174_crit_edge, label %do.end171.cleanup_crit_edge

do.end171.cleanup_crit_edge:                      ; preds = %do.end171
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end171.do.body174_crit_edge:                   ; preds = %do.end171
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body174

do.body174:                                       ; preds = %do.end171.do.body174_crit_edge, %if.end91.lor.end_crit_edge.do.body174_crit_edge
  %73 = ptrtoint ptr %d_last36 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %d_last36, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %74)
  %cmp176 = icmp eq i32 %and, %74
  br i1 %cmp176, label %do.body174.cleanup.thread_crit_edge, label %do.body180

do.body174.cleanup.thread_crit_edge:              ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread

do.body180:                                       ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_epn_handle_ack_desc.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_epn_handle_ack_desc, %cleanup.thread)) #4
          to label %if.then194 [label %cleanup.thread], !srcloc !127

if.then194:                                       ; preds = %do.body180
  %75 = ptrtoint ptr %vhub59 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %vhub59, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %dev197 = getelementptr inbounds %struct.platform_device, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev62, align 4
  %tobool199.not = icmp eq ptr %80, null
  br i1 %tobool199.not, label %if.then194.cond.end204_crit_edge, label %cond.true200

if.then194.cond.end204_crit_edge:                 ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end204

cond.true200:                                     ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #6
  %name202 = getelementptr inbounds %struct.ast_vhub_dev, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %name202 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %name202, align 4
  br label %cond.end204

cond.end204:                                      ; preds = %cond.true200, %if.then194.cond.end204_crit_edge
  %cond205 = phi ptr [ %82, %cond.true200 ], [ @.str.7, %if.then194.cond.end204_crit_edge ]
  %83 = ptrtoint ptr %d_idx70 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %d_idx70, align 4
  %85 = ptrtoint ptr %d_last36 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %d_last36, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_epn_handle_ack_desc.__UNIQUE_ID_ddebug251, ptr noundef %dev197, ptr noundef nonnull @.str.10, ptr noundef %cond205, i32 noundef %84, i32 noundef %and, i32 noundef %86) #4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cond.end204, %do.body180, %do.body174.cleanup.thread_crit_edge
  tail call void @ast_vhub_done(ptr noundef %ep, ptr noundef nonnull %spec.select, i32 noundef 0) #4
  %87 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile ptr, ptr %queue, align 4
  %cmp225.not = icmp eq ptr %88, %queue
  %add.ptr230 = getelementptr i8, ptr %88, i32 -56
  br i1 %cmp225.not, label %cleanup.thread.if.end239_crit_edge, label %cleanup.thread.while.end_crit_edge

cleanup.thread.while.end_crit_edge:               ; preds = %cleanup.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

cleanup.thread.if.end239_crit_edge:               ; preds = %cleanup.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end239

cleanup:                                          ; preds = %do.end171.cleanup_crit_edge, %lor.rhs.lor.end_crit_edge.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end84.cleanup_crit_edge
  %89 = ptrtoint ptr %d_last36 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %d_last36, align 4
  %cmp37.not = icmp eq i32 %90, %and
  br i1 %cmp37.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %cleanup.thread.while.end_crit_edge, %do.end35.while.end_crit_edge
  %req.2 = phi ptr [ %add.ptr230, %cleanup.thread.while.end_crit_edge ], [ %spec.select, %do.end35.while.end_crit_edge ], [ %spec.select, %cleanup.while.end_crit_edge ]
  %tobool237.not = icmp eq ptr %req.2, null
  br i1 %tobool237.not, label %while.end.if.end239_crit_edge, label %if.then238

while.end.if.end239_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end239

if.then238:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @ast_vhub_epn_kick_desc(ptr noundef %ep, ptr noundef nonnull %req.2)
  br label %if.end239

if.end239:                                        ; preds = %if.then238, %while.end.if.end239_crit_edge, %cleanup.thread.if.end239_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ast_vhub_epn_handle_ack(ptr noundef %ep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 12
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !124
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !128
  %queue = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 1
  %5 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %queue, align 4
  %cmp.not = icmp eq ptr %6, %queue
  %add.ptr5 = getelementptr i8, ptr %6, i32 -56
  %spec.select = select i1 %cmp.not, ptr null, ptr %add.ptr5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_epn_handle_ack.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_epn_handle_ack, %do.end32)) #4
          to label %if.then [label %do.end32], !srcloc !127

if.then:                                          ; preds = %entry
  %vhub = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %7 = ptrtoint ptr %vhub to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vhub, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  %dev13 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 3
  %11 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev13, align 4
  %tobool14.not = icmp eq ptr %12, null
  br i1 %tobool14.not, label %if.then.cond.end18_crit_edge, label %cond.true15

if.then.cond.end18_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end18

cond.true15:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.ast_vhub_dev, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 4
  br label %cond.end18

cond.end18:                                       ; preds = %cond.true15, %if.then.cond.end18_crit_edge
  %cond19 = phi ptr [ %14, %cond.true15 ], [ @.str.7, %if.then.cond.end18_crit_edge ]
  %d_idx = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 2
  %15 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %d_idx, align 4
  %is_in = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 4, i32 0, i32 4
  %17 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %is_in, align 4
  %bf.load.lobit = lshr i8 %bf.load, 7
  %18 = zext i8 %bf.load.lobit to i32
  %tobool20.not = icmp eq ptr %spec.select, null
  br i1 %tobool20.not, label %cond.end18.cond.end27_crit_edge, label %cond.true21

cond.end18.cond.end27_crit_edge:                  ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end27

cond.true21:                                      ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #6
  %active = getelementptr inbounds %struct.ast_vhub_req, ptr %spec.select, i32 0, i32 4
  %19 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load22 = load i8, ptr %active, align 4
  %bf.load22.lobit = lshr i8 %bf.load22, 7
  %20 = zext i8 %bf.load22.lobit to i32
  br label %cond.end27

cond.end27:                                       ; preds = %cond.true21, %cond.end18.cond.end27_crit_edge
  %cond28 = phi i32 [ %20, %cond.true21 ], [ 0, %cond.end18.cond.end27_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_epn_handle_ack.__UNIQUE_ID_ddebug241, ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef %cond19, i32 noundef %16, i32 noundef %4, i32 noundef %18, ptr noundef %spec.select, i32 noundef %cond28) #4
  br label %do.end32

do.end32:                                         ; preds = %cond.end27, %entry
  %tobool33.not = icmp eq ptr %spec.select, null
  br i1 %tobool33.not, label %do.end32.cleanup_crit_edge, label %if.end35

do.end32.cleanup_crit_edge:                       ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end35:                                         ; preds = %do.end32
  %active36 = getelementptr inbounds %struct.ast_vhub_req, ptr %spec.select, i32 0, i32 4
  %21 = ptrtoint ptr %active36 to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load37 = load i8, ptr %active36, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load37)
  %bf.cast39.not = icmp sgt i8 %bf.load37, -1
  br i1 %bf.cast39.not, label %if.end35.next_chunk_crit_edge, label %if.end41

if.end35.next_chunk_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %next_chunk

if.end41:                                         ; preds = %if.end35
  %22 = and i32 %4, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp42.not = icmp eq i32 %22, 0
  br i1 %cmp42.not, label %if.end78, label %do.body46

do.body46:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_epn_handle_ack.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_epn_handle_ack, %cleanup)) #4
          to label %if.then60 [label %cleanup], !srcloc !127

if.then60:                                        ; preds = %do.body46
  %vhub61 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %23 = ptrtoint ptr %vhub61 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vhub61, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %dev63 = getelementptr inbounds %struct.platform_device, ptr %26, i32 0, i32 3
  %dev64 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 3
  %27 = ptrtoint ptr %dev64 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev64, align 4
  %tobool65.not = icmp eq ptr %28, null
  br i1 %tobool65.not, label %if.then60.cond.end70_crit_edge, label %cond.true66

if.then60.cond.end70_crit_edge:                   ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end70

cond.true66:                                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #6
  %name68 = getelementptr inbounds %struct.ast_vhub_dev, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %name68 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name68, align 4
  br label %cond.end70

cond.end70:                                       ; preds = %cond.true66, %if.then60.cond.end70_crit_edge
  %cond71 = phi ptr [ %30, %cond.true66 ], [ @.str.7, %if.then60.cond.end70_crit_edge ]
  %d_idx72 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 2
  %31 = ptrtoint ptr %d_idx72 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %d_idx72, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_epn_handle_ack.__UNIQUE_ID_ddebug242, ptr noundef %dev63, ptr noundef nonnull @.str.17, ptr noundef %cond71, i32 noundef %32) #4
  br label %cleanup

if.end78:                                         ; preds = %if.end41
  %bf.clear = and i8 %bf.load37, 127
  %33 = ptrtoint ptr %active36 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %bf.clear, ptr %active36, align 4
  %shr81 = lshr i32 %4, 16
  %and82 = and i32 %shr81, 2047
  %dma = getelementptr inbounds %struct.usb_request, ptr %spec.select, i32 0, i32 2
  %34 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool84.not = icmp eq i32 %35, 0
  br i1 %tobool84.not, label %land.lhs.true, label %if.end78.if.end96_crit_edge

if.end78.if.end96_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end96

land.lhs.true:                                    ; preds = %if.end78
  %is_in85 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 4, i32 0, i32 4
  %36 = ptrtoint ptr %is_in85 to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load86 = load i8, ptr %is_in85, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load86)
  %bf.cast88.not = icmp slt i8 %bf.load86, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool90.not = icmp eq i32 %and82, 0
  %or.cond = select i1 %bf.cast88.not, i1 true, i1 %tobool90.not
  br i1 %or.cond, label %land.lhs.true.if.end96_crit_edge, label %if.then91

land.lhs.true.if.end96_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end96

if.then91:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %37 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %spec.select, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %spec.select, i32 0, i32 12
  %39 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %actual, align 4
  %add.ptr94 = getelementptr i8, ptr %38, i32 %40
  %buf95 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 5
  %41 = ptrtoint ptr %buf95 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %buf95, align 4
  %43 = call ptr @memcpy(ptr %add.ptr94, ptr %42, i32 %and82)
  br label %if.end96

if.end96:                                         ; preds = %if.then91, %land.lhs.true.if.end96_crit_edge, %if.end78.if.end96_crit_edge
  %actual98 = getelementptr inbounds %struct.usb_request, ptr %spec.select, i32 0, i32 12
  %44 = ptrtoint ptr %actual98 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %actual98, align 4
  %add = add i32 %45, %and82
  store i32 %add, ptr %actual98, align 4
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %46 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %46, i32 7)
  %bf.load100 = load i56, ptr %maxpacket, align 2
  %bf.lshr101 = lshr i56 %bf.load100, 40
  %bf.cast102 = trunc i56 %bf.lshr101 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and82, i32 %bf.cast102)
  %cmp103 = icmp ult i32 %and82, %bf.cast102
  br i1 %cmp103, label %if.then105, label %if.end96.if.end106_crit_edge

if.end96.if.end106_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end106

if.then105:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #6
  %last_desc = getelementptr inbounds %struct.ast_vhub_req, ptr %spec.select, i32 0, i32 3
  %47 = ptrtoint ptr %last_desc to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %last_desc, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.then105, %if.end96.if.end106_crit_edge
  %last_desc107 = getelementptr inbounds %struct.ast_vhub_req, ptr %spec.select, i32 0, i32 3
  %48 = ptrtoint ptr %last_desc107 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %last_desc107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %cmp108 = icmp sgt i32 %49, -1
  br i1 %cmp108, label %if.then110, label %if.end106.next_chunk_crit_edge

if.end106.next_chunk_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #6
  br label %next_chunk

if.then110:                                       ; preds = %if.end106
  tail call void @ast_vhub_done(ptr noundef %ep, ptr noundef nonnull %spec.select, i32 noundef 0) #4
  %50 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %queue, align 4
  %cmp120.not = icmp eq ptr %51, %queue
  %add.ptr125 = getelementptr i8, ptr %51, i32 -56
  %tobool129.not189 = icmp eq ptr %add.ptr125, null
  %tobool129.not = or i1 %cmp120.not, %tobool129.not189
  br i1 %tobool129.not, label %if.then110.cleanup_crit_edge, label %lor.lhs.false

if.then110.cleanup_crit_edge:                     ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then110
  %active130 = getelementptr i8, ptr %51, i32 16
  %52 = ptrtoint ptr %active130 to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load131 = load i8, ptr %active130, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load131)
  %bf.cast133.not = icmp sgt i8 %bf.load131, -1
  br i1 %bf.cast133.not, label %lor.lhs.false.next_chunk_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false.next_chunk_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %next_chunk

next_chunk:                                       ; preds = %lor.lhs.false.next_chunk_crit_edge, %if.end106.next_chunk_crit_edge, %if.end35.next_chunk_crit_edge
  %req.0 = phi ptr [ %add.ptr125, %lor.lhs.false.next_chunk_crit_edge ], [ %add.ptr5, %if.end106.next_chunk_crit_edge ], [ %add.ptr5, %if.end35.next_chunk_crit_edge ]
  tail call fastcc void @ast_vhub_epn_kick(ptr noundef %ep, ptr noundef nonnull %req.0)
  br label %cleanup

cleanup:                                          ; preds = %next_chunk, %lor.lhs.false.cleanup_crit_edge, %if.then110.cleanup_crit_edge, %cond.end70, %do.body46, %do.end32.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ast_vhub_update_epn_stall(ptr nocapture noundef readonly %ep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %d_idx = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 2
  %0 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %d_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %do.end, label %if.end21, !prof !129

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 498, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end21:                                         ; preds = %entry
  %2 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !130
  %stalled = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 4, i32 0, i32 4
  %6 = ptrtoint ptr %stalled to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %stalled, align 4
  %7 = and i8 %bf.load, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %8 = icmp eq i8 %7, 0
  %9 = and i32 %5, -1048577
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %masksel = select i1 %8, i32 0, i32 4096
  %reg.0 = or i32 %masksel, %10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !131
  tail call void @arm_heavy_mb() #4
  %11 = tail call i32 @llvm.bswap.i32(i32 %reg.0)
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #4, !srcloc !132
  %14 = ptrtoint ptr %stalled to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load36 = load i8, ptr %stalled, align 4
  %15 = and i8 %bf.load36, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %do.body46, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body46:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !133
  tail call void @arm_heavy_mb() #4
  %g_idx = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 1
  %17 = ptrtoint ptr %g_idx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %g_idx, align 4
  %and49 = shl i32 %18, 24
  %19 = and i32 %and49, 520093696
  %vhub = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %20 = ptrtoint ptr %vhub to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vhub, align 4
  %regs50 = getelementptr inbounds %struct.ast_vhub, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %regs50 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs50, align 4
  %add.ptr51 = getelementptr i8, ptr %23, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %19) #4, !srcloc !132
  br label %cleanup

cleanup:                                          ; preds = %do.body46, %if.end21.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ast_vhub_alloc_epn(ptr noundef %d, i8 noundef zeroext %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d, align 8
  %lock = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %max_epns = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %max_epns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_epns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6142.not = icmp eq i32 %3, 0
  br i1 %cmp6142.not, label %entry.if.then13_crit_edge, label %for.body.lr.ph

entry.if.then13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13

for.body.lr.ph:                                   ; preds = %entry
  %epns = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %epns to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %epns, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0143 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %dev = getelementptr %struct.ast_vhub_ep, ptr %5, i32 %i.0143, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %cmp8 = icmp eq ptr %7, null
  br i1 %cmp8, label %if.end15, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0143, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.if.then13_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.if.then13_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13

if.then13:                                        ; preds = %for.inc.if.then13_crit_edge, %entry.if.then13_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #4
  br label %cleanup

if.end15:                                         ; preds = %for.body
  %8 = ptrtoint ptr %epns to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %epns, align 4
  %arrayidx17 = getelementptr %struct.ast_vhub_ep, ptr %9, i32 %i.0143
  %dev18 = getelementptr %struct.ast_vhub_ep, ptr %9, i32 %i.0143, i32 3
  %10 = ptrtoint ptr %dev18 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %d, ptr %dev18, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_alloc_epn.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_alloc_epn, %do.end35)) #4
          to label %if.then27 [label %do.end35], !srcloc !127

if.then27:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %dev29 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  %name = getelementptr inbounds %struct.ast_vhub_dev, ptr %d, i32 0, i32 3
  %15 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name, align 4
  %conv30 = zext i8 %addr to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_alloc_epn.__UNIQUE_ID_ddebug267, ptr noundef %dev29, ptr noundef nonnull @.str.3, ptr noundef %16, i32 noundef %i.0143, i32 noundef %conv30) #4
  br label %do.end35

do.end35:                                         ; preds = %if.then27, %if.end15
  %queue = getelementptr %struct.ast_vhub_ep, ptr %9, i32 %i.0143, i32 1
  %17 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i = getelementptr %struct.ast_vhub_ep, ptr %9, i32 %i.0143, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %queue, ptr %prev.i, align 4
  %conv36 = zext i8 %addr to i32
  %d_idx = getelementptr %struct.ast_vhub_ep, ptr %9, i32 %i.0143, i32 2
  %19 = ptrtoint ptr %d_idx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv36, ptr %d_idx, align 4
  %vhub37 = getelementptr %struct.ast_vhub_ep, ptr %9, i32 %i.0143, i32 4
  %20 = ptrtoint ptr %vhub37 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %1, ptr %vhub37, align 4
  %ops = getelementptr inbounds %struct.usb_ep, ptr %arrayidx17, i32 0, i32 2
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @ast_vhub_epn_ops, ptr %ops, align 4
  %call40 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.4, i32 noundef %conv36) #4
  %name42 = getelementptr inbounds %struct.usb_ep, ptr %arrayidx17, i32 0, i32 1
  %22 = ptrtoint ptr %name42 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call40, ptr %name42, align 4
  %epns43 = getelementptr inbounds %struct.ast_vhub_dev, ptr %d, i32 0, i32 9
  %23 = ptrtoint ptr %epns43 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %epns43, align 4
  %sub = add nsw i32 %conv36, -1
  %arrayidx45 = getelementptr ptr, ptr %24, i32 %sub
  %25 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx17, ptr %arrayidx45, align 4
  %26 = getelementptr %struct.ast_vhub_ep, ptr %9, i32 %i.0143, i32 7
  %g_idx = getelementptr inbounds %struct.anon.0, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %g_idx to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %i.0143, ptr %g_idx, align 4
  %regs = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %29, i32 512
  %mul = shl i32 %i.0143, 4
  %add.ptr46 = getelementptr i8, ptr %add.ptr, i32 %mul
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr46, ptr %26, align 4
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %dev49 = getelementptr inbounds %struct.platform_device, ptr %32, i32 0, i32 3
  %buf_dma = getelementptr %struct.ast_vhub_ep, ptr %9, i32 %i.0143, i32 6
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev49, i32 noundef 3072, ptr noundef %buf_dma, i32 noundef 3264, i32 noundef 0) #4
  %buf = getelementptr %struct.ast_vhub_ep, ptr %9, i32 %i.0143, i32 5
  %33 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %buf, align 4
  %tobool52.not = icmp eq ptr %call.i, null
  br i1 %tobool52.not, label %if.then53, label %if.end58

if.then53:                                        ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %name42 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name42, align 4
  tail call void @kfree(ptr noundef %35) #4
  %36 = ptrtoint ptr %name42 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %name42, align 4
  br label %cleanup

if.end58:                                         ; preds = %do.end35
  %add.ptr60 = getelementptr i8, ptr %call.i, i32 1024
  %descs = getelementptr inbounds %struct.anon.0, ptr %26, i32 0, i32 2
  %37 = ptrtoint ptr %descs to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr60, ptr %descs, align 4
  %38 = ptrtoint ptr %buf_dma to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %buf_dma, align 4
  %add = add i32 %39, 1024
  %descs_dma = getelementptr inbounds %struct.anon.0, ptr %26, i32 0, i32 3
  %40 = ptrtoint ptr %descs_dma to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add, ptr %descs_dma, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %arrayidx17, i32 noundef 1024) #4
  %ep_list = getelementptr inbounds %struct.usb_ep, ptr %arrayidx17, i32 0, i32 3
  %ep_list64 = getelementptr inbounds %struct.ast_vhub_dev, ptr %d, i32 0, i32 5, i32 4
  %prev.i139 = getelementptr inbounds %struct.ast_vhub_dev, ptr %d, i32 0, i32 5, i32 4, i32 1
  %41 = ptrtoint ptr %prev.i139 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i139, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list, ptr noundef %42, ptr noundef %ep_list64) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end58.list_add_tail.exit_crit_edge

if.end58.list_add_tail.exit_crit_edge:            ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  %43 = ptrtoint ptr %prev.i139 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %ep_list, ptr %prev.i139, align 4
  %44 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %ep_list64, ptr %ep_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %ep_list, i32 0, i32 1
  %45 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev3.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %ep_list, ptr %42, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end58.list_add_tail.exit_crit_edge
  %caps = getelementptr inbounds %struct.usb_ep, ptr %arrayidx17, i32 0, i32 4
  %47 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load = load i8, ptr %caps, align 4
  %bf.set85 = or i8 %bf.load, 124
  store i8 %bf.set85, ptr %caps, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then53, %if.then13
  %retval.0 = phi ptr [ null, %if.then13 ], [ %arrayidx17, %list_add_tail.exit ], [ null, %if.then53 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_done(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ast_vhub_epn_kick_desc(ptr noundef %ep, ptr nocapture noundef %req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %act_count = getelementptr inbounds %struct.ast_vhub_req, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %act_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %act_count, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length, align 4
  %active = getelementptr inbounds %struct.ast_vhub_req, ptr %req, i32 0, i32 4
  %4 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %active, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %active, align 4
  %last_desc = getelementptr inbounds %struct.ast_vhub_req, ptr %req, i32 0, i32 3
  %5 = ptrtoint ptr %last_desc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %last_desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp = icmp sgt i32 %6, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body2:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_epn_kick_desc.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_epn_kick_desc, %do.end13)) #4
          to label %if.then6 [label %do.end13], !srcloc !127

if.then6:                                         ; preds = %do.body2
  %vhub = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %7 = ptrtoint ptr %vhub to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vhub, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  %dev7 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 3
  %11 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev7, align 4
  %tobool8.not = icmp eq ptr %12, null
  br i1 %tobool8.not, label %if.then6.cond.end_crit_edge, label %cond.true

if.then6.cond.end_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.ast_vhub_dev, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then6.cond.end_crit_edge
  %cond = phi ptr [ %14, %cond.true ], [ @.str.7, %if.then6.cond.end_crit_edge ]
  %d_idx = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 2
  %15 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %d_idx, align 4
  %chunk_max = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 4, i32 0, i32 3
  %17 = ptrtoint ptr %chunk_max to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %chunk_max, align 4
  %d_last.i = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 4, i32 0, i32 1
  %19 = ptrtoint ptr %d_last.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %d_last.i, align 4
  %d_next.i = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 4
  %21 = ptrtoint ptr %d_next.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %d_next.i, align 4
  %23 = xor i32 %22, -1
  %sub1.i = add i32 %20, %23
  %and.i = and i32 %sub1.i, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_epn_kick_desc.__UNIQUE_ID_ddebug244, ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef %cond, i32 noundef %16, i32 noundef %1, i32 noundef %3, i32 noundef %18, i32 noundef %and.i) #4
  br label %do.end13

do.end13:                                         ; preds = %cond.end, %do.body2
  %d_last.i203 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 4, i32 0, i32 1
  %d_next.i204 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 4
  %24 = ptrtoint ptr %d_last.i203 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %d_last.i203, align 4
  %26 = ptrtoint ptr %d_next.i204 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %d_next.i204, align 4
  %28 = xor i32 %27, -1
  %sub1.i205218 = add i32 %25, %28
  %and.i206219 = and i32 %sub1.i205218, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i206219)
  %tobool15.not220 = icmp eq i32 %and.i206219, 0
  br i1 %tobool15.not220, label %do.end13.do.body94_crit_edge, label %land.rhs.lr.ph

do.end13.do.body94_crit_edge:                     ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body94

land.rhs.lr.ph:                                   ; preds = %do.end13
  %descs = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 2
  %chunk_max19 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 4, i32 0, i32 3
  %zero = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %vhub53 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %dev56 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 3
  %d_idx64 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 2
  %dma = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 2
  %29 = ptrtoint ptr %last_desc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %last_desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp17228 = icmp slt i32 %30, 0
  br i1 %cmp17228, label %land.rhs.lr.ph.while.body_crit_edge, label %land.rhs.lr.ph.while.end_crit_edge

land.rhs.lr.ph.while.end_crit_edge:               ; preds = %land.rhs.lr.ph
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

land.rhs.lr.ph.while.body_crit_edge:              ; preds = %land.rhs.lr.ph
  br label %while.body

land.rhs:                                         ; preds = %if.end82
  %31 = ptrtoint ptr %last_desc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %last_desc, align 4
  %cmp17 = icmp slt i32 %32, 0
  br i1 %cmp17, label %land.rhs.while.body_crit_edge, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.body:                                       ; preds = %land.rhs.while.body_crit_edge, %land.rhs.lr.ph.while.body_crit_edge
  %act.0221229 = phi i32 [ %add83, %land.rhs.while.body_crit_edge ], [ %1, %land.rhs.lr.ph.while.body_crit_edge ]
  %33 = phi i32 [ %78, %land.rhs.while.body_crit_edge ], [ %27, %land.rhs.lr.ph.while.body_crit_edge ]
  %34 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %descs, align 4
  %arrayidx = getelementptr %struct.ast_vhub_desc, ptr %35, i32 %33
  %add = add i32 %33, 1
  %and = and i32 %add, 255
  %36 = ptrtoint ptr %d_next.i204 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and, ptr %d_next.i204, align 4
  %sub = sub i32 %3, %act.0221229
  %37 = ptrtoint ptr %chunk_max19 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %chunk_max19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %38)
  %cmp20.not = icmp ugt i32 %sub, %38
  br i1 %cmp20.not, label %while.body.do.body38_crit_edge, label %if.then21

while.body.do.body38_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body38

if.then21:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool22.not = icmp eq i32 %sub, 0
  br i1 %tobool22.not, label %if.then21.if.then32_crit_edge, label %lor.lhs.false

if.then21.if.then32_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

lor.lhs.false:                                    ; preds = %if.then21
  %39 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %39)
  %bf.load24 = load i32, ptr %zero, align 4
  %40 = and i32 %bf.load24, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool26.not = icmp eq i32 %40, 0
  br i1 %tobool26.not, label %lor.lhs.false.if.then32_crit_edge, label %lor.lhs.false27

lor.lhs.false.if.then32_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

lor.lhs.false27:                                  ; preds = %lor.lhs.false
  %41 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %41, i32 7)
  %bf.load29 = load i56, ptr %maxpacket, align 2
  %bf.lshr30 = lshr i56 %bf.load29, 40
  %bf.cast = trunc i56 %bf.lshr30 to i32
  %rem = urem i32 %sub, %bf.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp31.not = icmp eq i32 %rem, 0
  br i1 %cmp31.not, label %lor.lhs.false27.do.body38_crit_edge, label %lor.lhs.false27.if.then32_crit_edge

lor.lhs.false27.if.then32_crit_edge:              ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

lor.lhs.false27.do.body38_crit_edge:              ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body38

if.then32:                                        ; preds = %lor.lhs.false27.if.then32_crit_edge, %lor.lhs.false.if.then32_crit_edge, %if.then21.if.then32_crit_edge
  %42 = ptrtoint ptr %last_desc to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %33, ptr %last_desc, align 4
  br label %do.body38

do.body38:                                        ; preds = %if.then32, %lor.lhs.false27.do.body38_crit_edge, %while.body.do.body38_crit_edge
  %chunk.0 = phi i32 [ %sub, %if.then32 ], [ %sub, %lor.lhs.false27.do.body38_crit_edge ], [ %38, %while.body.do.body38_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_epn_kick_desc.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_epn_kick_desc, %do.end71)) #4
          to label %if.then52 [label %do.end71], !srcloc !127

if.then52:                                        ; preds = %do.body38
  %43 = ptrtoint ptr %vhub53 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vhub53, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %dev55 = getelementptr inbounds %struct.platform_device, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev56, align 4
  %tobool57.not = icmp eq ptr %48, null
  br i1 %tobool57.not, label %if.then52.cond.end62_crit_edge, label %cond.true58

if.then52.cond.end62_crit_edge:                   ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end62

cond.true58:                                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #6
  %name60 = getelementptr inbounds %struct.ast_vhub_dev, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %name60 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name60, align 4
  br label %cond.end62

cond.end62:                                       ; preds = %cond.true58, %if.then52.cond.end62_crit_edge
  %cond63 = phi ptr [ %50, %cond.true58 ], [ @.str.7, %if.then52.cond.end62_crit_edge ]
  %51 = ptrtoint ptr %d_idx64 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %d_idx64, align 4
  %53 = ptrtoint ptr %last_desc to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %last_desc, align 4
  %55 = ptrtoint ptr %d_last.i203 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %d_last.i203, align 4
  %57 = ptrtoint ptr %d_next.i204 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %d_next.i204, align 4
  %59 = xor i32 %58, -1
  %sub1.i209 = add i32 %56, %59
  %and.i210 = and i32 %sub1.i209, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_epn_kick_desc.__UNIQUE_ID_ddebug245, ptr noundef %dev55, ptr noundef nonnull @.str.13, ptr noundef %cond63, i32 noundef %52, i32 noundef %act.0221229, i32 noundef %3, i32 noundef %chunk.0, i32 noundef %54, i32 noundef %33, i32 noundef %and.i210) #4
  br label %do.end71

do.end71:                                         ; preds = %cond.end62, %do.body38
  %60 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dma, align 4
  %add73 = add i32 %61, %act.0221229
  %62 = tail call i32 @llvm.bswap.i32(i32 %add73)
  %63 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %arrayidx, align 4
  %and74 = and i32 %chunk.0, 4095
  %64 = tail call i32 @llvm.bswap.i32(i32 %and74)
  %w1 = getelementptr %struct.ast_vhub_desc, ptr %35, i32 %33, i32 1
  %65 = ptrtoint ptr %w1 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %w1, align 4
  %66 = ptrtoint ptr %last_desc to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %last_desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %67)
  %cmp76 = icmp sgt i32 %67, -1
  br i1 %cmp76, label %do.end71.if.then80_crit_edge, label %lor.lhs.false77

do.end71.if.then80_crit_edge:                     ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then80

lor.lhs.false77:                                  ; preds = %do.end71
  %68 = ptrtoint ptr %d_last.i203 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %d_last.i203, align 4
  %70 = ptrtoint ptr %d_next.i204 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %d_next.i204, align 4
  %72 = xor i32 %71, -1
  %sub1.i213 = add i32 %69, %72
  %and.i214 = and i32 %sub1.i213, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i214)
  %tobool79.not = icmp eq i32 %and.i214, 0
  br i1 %tobool79.not, label %lor.lhs.false77.if.then80_crit_edge, label %lor.lhs.false77.if.end82_crit_edge

lor.lhs.false77.if.end82_crit_edge:               ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end82

lor.lhs.false77.if.then80_crit_edge:              ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then80

if.then80:                                        ; preds = %lor.lhs.false77.if.then80_crit_edge, %do.end71.if.then80_crit_edge
  %or = or i32 %64, 128
  %73 = ptrtoint ptr %w1 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %or, ptr %w1, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %lor.lhs.false77.if.end82_crit_edge
  %add83 = add i32 %chunk.0, %act.0221229
  %74 = ptrtoint ptr %act_count to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %add83, ptr %act_count, align 4
  %75 = ptrtoint ptr %d_last.i203 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %d_last.i203, align 4
  %77 = ptrtoint ptr %d_next.i204 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %d_next.i204, align 4
  %79 = xor i32 %78, -1
  %sub1.i205 = add i32 %76, %79
  %and.i206 = and i32 %sub1.i205, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i206)
  %tobool15.not = icmp eq i32 %and.i206, 0
  br i1 %tobool15.not, label %if.end82.while.end_crit_edge, label %land.rhs

if.end82.while.end_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %if.end82.while.end_crit_edge, %land.rhs.while.end_crit_edge, %land.rhs.lr.ph.while.end_crit_edge
  %desc.0.lcssa = phi ptr [ null, %land.rhs.lr.ph.while.end_crit_edge ], [ %arrayidx, %land.rhs.while.end_crit_edge ], [ %arrayidx, %if.end82.while.end_crit_edge ]
  %tobool85.not = icmp eq ptr %desc.0.lcssa, null
  br i1 %tobool85.not, label %while.end.do.body94_crit_edge, label %if.then92, !prof !129

while.end.do.body94_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body94

if.then92:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !134
  tail call void @arm_heavy_mb() #4
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %desc.0.lcssa) #4, !srcloc !124
  br label %do.body94

do.body94:                                        ; preds = %if.then92, %while.end.do.body94_crit_edge, %do.end13.do.body94_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !135
  tail call void @arm_heavy_mb() #4
  %81 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7
  %82 = ptrtoint ptr %d_next.i204 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %d_next.i204, align 4
  %84 = tail call i32 @llvm.bswap.i32(i32 %83)
  %85 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %81, align 4
  %add.ptr = getelementptr i8, ptr %86, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %84) #4, !srcloc !132
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_epn_kick_desc.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_epn_kick_desc, %cleanup)) #4
          to label %if.then113 [label %cleanup], !srcloc !127

if.then113:                                       ; preds = %do.body94
  %vhub114 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %87 = ptrtoint ptr %vhub114 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %vhub114, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %dev116 = getelementptr inbounds %struct.platform_device, ptr %90, i32 0, i32 3
  %dev117 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 3
  %91 = ptrtoint ptr %dev117 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev117, align 4
  %tobool118.not = icmp eq ptr %92, null
  br i1 %tobool118.not, label %if.then113.cond.end123_crit_edge, label %cond.true119

if.then113.cond.end123_crit_edge:                 ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end123

cond.true119:                                     ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #6
  %name121 = getelementptr inbounds %struct.ast_vhub_dev, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %name121 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %name121, align 4
  br label %cond.end123

cond.end123:                                      ; preds = %cond.true119, %if.then113.cond.end123_crit_edge
  %cond124 = phi ptr [ %94, %cond.true119 ], [ @.str.7, %if.then113.cond.end123_crit_edge ]
  %d_idx125 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 2
  %95 = ptrtoint ptr %d_idx125 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %d_idx125, align 4
  %97 = ptrtoint ptr %d_next.i204 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %d_next.i204, align 4
  %99 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %81, align 4
  %add.ptr128 = getelementptr i8, ptr %100, i32 12
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr128) #4, !srcloc !124
  %102 = tail call i32 @llvm.bswap.i32(i32 %101)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !136
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_epn_kick_desc.__UNIQUE_ID_ddebug246, ptr noundef %dev116, ptr noundef nonnull @.str.14, ptr noundef %cond124, i32 noundef %96, i32 noundef %98, i32 noundef %102) #4
  br label %cleanup

cleanup:                                          ; preds = %cond.end123, %do.body94, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ast_vhub_epn_kick(ptr nocapture noundef readonly %ep, ptr noundef %req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %0 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %actual, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length, align 4
  %active = getelementptr inbounds %struct.ast_vhub_req, ptr %req, i32 0, i32 4
  %4 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %entry.if.end_crit_edge, label %do.end, !prof !137

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 48, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %sub = sub i32 %3, %1
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %5 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %5, i32 7)
  %bf.load22 = load i56, ptr %maxpacket, align 2
  %bf.lshr23 = lshr i56 %bf.load22, 40
  %bf.cast24 = trunc i56 %bf.lshr23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %bf.cast24)
  %cmp = icmp ugt i32 %sub, %bf.cast24
  br i1 %cmp, label %if.end.do.body45_crit_edge, label %if.else

if.end.do.body45_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body45

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %bf.cast24)
  %cmp36 = icmp ult i32 %sub, %bf.cast24
  br i1 %cmp36, label %if.else.if.then41_crit_edge, label %lor.lhs.false

if.else.if.then41_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then41

lor.lhs.false:                                    ; preds = %if.else
  %zero = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  %6 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load38 = load i32, ptr %zero, align 4
  %7 = and i32 %bf.load38, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool40.not = icmp eq i32 %7, 0
  br i1 %tobool40.not, label %lor.lhs.false.if.then41_crit_edge, label %lor.lhs.false.do.body45_crit_edge

lor.lhs.false.do.body45_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body45

lor.lhs.false.if.then41_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then41

if.then41:                                        ; preds = %lor.lhs.false.if.then41_crit_edge, %if.else.if.then41_crit_edge
  %last_desc = getelementptr inbounds %struct.ast_vhub_req, ptr %req, i32 0, i32 3
  %8 = ptrtoint ptr %last_desc to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %last_desc, align 4
  br label %do.body45

do.body45:                                        ; preds = %if.then41, %lor.lhs.false.do.body45_crit_edge, %if.end.do.body45_crit_edge
  %chunk.0 = phi i32 [ %sub, %if.then41 ], [ %sub, %lor.lhs.false.do.body45_crit_edge ], [ %bf.cast24, %if.end.do.body45_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_epn_kick.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_epn_kick, %do.end65)) #4
          to label %if.then56 [label %do.end65], !srcloc !127

if.then56:                                        ; preds = %do.body45
  %vhub = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %9 = ptrtoint ptr %vhub to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vhub, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  %dev57 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 3
  %13 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev57, align 4
  %tobool58.not = icmp eq ptr %14, null
  br i1 %tobool58.not, label %if.then56.cond.end_crit_edge, label %cond.true

if.then56.cond.end_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.ast_vhub_dev, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then56.cond.end_crit_edge
  %cond = phi ptr [ %16, %cond.true ], [ @.str.7, %if.then56.cond.end_crit_edge ]
  %d_idx = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 2
  %17 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %d_idx, align 4
  %last_desc60 = getelementptr inbounds %struct.ast_vhub_req, ptr %req, i32 0, i32 3
  %19 = ptrtoint ptr %last_desc60 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %last_desc60, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_epn_kick.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef %cond, i32 noundef %18, ptr noundef %req, i32 noundef %1, i32 noundef %3, i32 noundef %chunk.0, i32 noundef %20) #4
  br label %do.end65

do.end65:                                         ; preds = %cond.end, %do.body45
  %dma = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 2
  %21 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool67.not = icmp eq i32 %22, 0
  %23 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7
  %is_in = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 4, i32 0, i32 4
  %24 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load69 = load i8, ptr %is_in, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load69)
  %bf.cast71.not = icmp sgt i8 %bf.load69, -1
  br i1 %tobool67.not, label %if.then68, label %if.else81

if.then68:                                        ; preds = %do.end65
  br i1 %bf.cast71.not, label %if.then68.do.body77_crit_edge, label %if.then72

if.then68.do.body77_crit_edge:                    ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body77

if.then72:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #6
  %buf = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 5
  %25 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buf, align 4
  %27 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %req, align 4
  %add.ptr = getelementptr i8, ptr %28, i32 %1
  %29 = call ptr @memcpy(ptr %26, ptr %add.ptr, i32 %chunk.0)
  %30 = load ptr, ptr %buf, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !134
  tail call void @arm_heavy_mb() #4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #4, !srcloc !124
  br label %do.body77

do.body77:                                        ; preds = %if.then72, %if.then68.do.body77_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !138
  tail call void @arm_heavy_mb() #4
  %buf_dma = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 6
  %32 = ptrtoint ptr %buf_dma to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_dma, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %23, align 4
  %add.ptr80 = getelementptr i8, ptr %36, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 %34) #4, !srcloc !132
  br label %if.end97

if.else81:                                        ; preds = %do.end65
  br i1 %bf.cast71.not, label %if.else81.do.body90_crit_edge, label %if.then86

if.else81.do.body90_crit_edge:                    ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body90

if.then86:                                        ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #6
  %37 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %req, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !134
  tail call void @arm_heavy_mb() #4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #4, !srcloc !124
  br label %do.body90

do.body90:                                        ; preds = %if.then86, %if.else81.do.body90_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !139
  tail call void @arm_heavy_mb() #4
  %40 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dma, align 4
  %add = add i32 %41, %1
  %42 = tail call i32 @llvm.bswap.i32(i32 %add)
  %43 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %23, align 4
  %add.ptr96 = getelementptr i8, ptr %44, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr96, i32 %42) #4, !srcloc !132
  br label %if.end97

if.end97:                                         ; preds = %do.body90, %do.body77
  %45 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load99 = load i8, ptr %active, align 4
  %bf.set = or i8 %bf.load99, -128
  store i8 %bf.set, ptr %active, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  tail call void @arm_heavy_mb() #4
  %shl = shl i32 %chunk.0, 16
  %46 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %47 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %add.ptr105 = getelementptr i8, ptr %49, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr105, i32 %46) #4, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  %or = or i32 %shl, 1
  %50 = tail call i32 @llvm.bswap.i32(i32 %or)
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %47, align 4
  %add.ptr111 = getelementptr i8, ptr %52, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111, i32 %50) #4, !srcloc !132
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ast_vhub_epn_enable(ptr noundef %u_ep, ptr noundef readonly %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %u_ep, null
  %tobool1.not = icmp eq ptr %desc, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 4
  %0 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %wMaxPacketSize.i, align 1
  %2 = and i16 %1, -249
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #4
  %and.i = zext i16 %3 to i32
  %d_idx = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 2
  %4 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %d_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.end.do.body20_crit_edge, label %lor.lhs.false3

if.end.do.body20_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body20

lor.lhs.false3:                                   ; preds = %if.end
  %dev4 = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 3
  %6 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev4, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %lor.lhs.false3.do.body20_crit_edge, label %lor.lhs.false6

lor.lhs.false3.do.body20_crit_edge:               ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body20

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %bDescriptorType = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 1
  %8 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bDescriptorType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %9)
  %cmp.not = icmp ne i8 %9, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp11 = icmp eq i16 %2, 0
  %or.cond642 = select i1 %cmp.not, i1 true, i1 %cmp11
  br i1 %or.cond642, label %lor.lhs.false6.do.body20_crit_edge, label %lor.lhs.false13

lor.lhs.false6.do.body20_crit_edge:               ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body20

lor.lhs.false13:                                  ; preds = %lor.lhs.false6
  %maxpacket16 = getelementptr inbounds %struct.usb_ep, ptr %u_ep, i32 0, i32 7
  %10 = ptrtoint ptr %maxpacket16 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 7)
  %bf.load = load i56, ptr %maxpacket16, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %bf.cast)
  %cmp17 = icmp ugt i32 %and.i, %bf.cast
  br i1 %cmp17, label %lor.lhs.false13.do.body20_crit_edge, label %if.end47

lor.lhs.false13.do.body20_crit_edge:              ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body20

do.body20:                                        ; preds = %lor.lhs.false13.do.body20_crit_edge, %lor.lhs.false6.do.body20_crit_edge, %lor.lhs.false3.do.body20_crit_edge, %if.end.do.body20_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_epn_enable.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_epn_enable, %cleanup)) #4
          to label %if.then27 [label %cleanup], !srcloc !127

if.then27:                                        ; preds = %do.body20
  %vhub28 = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 4
  %11 = ptrtoint ptr %vhub28 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vhub28, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %dev29 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  %dev30 = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 3
  %15 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev30, align 4
  %tobool31.not = icmp eq ptr %16, null
  br i1 %tobool31.not, label %if.then27.cond.end_crit_edge, label %cond.true

if.then27.cond.end_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.ast_vhub_dev, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then27.cond.end_crit_edge
  %cond = phi ptr [ %18, %cond.true ], [ @.str.7, %if.then27.cond.end_crit_edge ]
  %19 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %d_idx, align 4
  %bDescriptorType36 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 1
  %21 = ptrtoint ptr %bDescriptorType36 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bDescriptorType36, align 1
  %conv37 = zext i8 %22 to i32
  %maxpacket40 = getelementptr inbounds %struct.usb_ep, ptr %u_ep, i32 0, i32 7
  %23 = ptrtoint ptr %maxpacket40 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 7)
  %bf.load41 = load i56, ptr %maxpacket40, align 2
  %bf.lshr42 = lshr i56 %bf.load41, 40
  %bf.cast43 = trunc i56 %bf.lshr42 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_epn_enable.__UNIQUE_ID_ddebug259, ptr noundef %dev29, ptr noundef nonnull @.str.21, ptr noundef %cond, i32 noundef %20, i32 noundef %20, ptr noundef %16, i32 noundef %conv37, i32 noundef %and.i, i32 noundef %bf.cast43) #4
  br label %cleanup

if.end47:                                         ; preds = %lor.lhs.false13
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 2
  %24 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bEndpointAddress.i, align 1
  %26 = and i8 %25, 15
  %and.i624 = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %and.i624)
  %cmp50.not = icmp eq i32 %5, %and.i624
  br i1 %cmp50.not, label %if.end86, label %do.body54

do.body54:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_epn_enable.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_epn_enable, %cleanup)) #4
          to label %if.then68 [label %cleanup], !srcloc !127

if.then68:                                        ; preds = %do.body54
  %vhub69 = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 4
  %27 = ptrtoint ptr %vhub69 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vhub69, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %dev71 = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev4, align 4
  %tobool73.not = icmp eq ptr %32, null
  br i1 %tobool73.not, label %if.then68.cond.end78_crit_edge, label %cond.true74

if.then68.cond.end78_crit_edge:                   ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end78

cond.true74:                                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #6
  %name76 = getelementptr inbounds %struct.ast_vhub_dev, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %name76 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name76, align 4
  br label %cond.end78

cond.end78:                                       ; preds = %cond.true74, %if.then68.cond.end78_crit_edge
  %cond79 = phi ptr [ %34, %cond.true74 ], [ @.str.7, %if.then68.cond.end78_crit_edge ]
  %35 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %d_idx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_epn_enable.__UNIQUE_ID_ddebug260, ptr noundef %dev71, ptr noundef nonnull @.str.22, ptr noundef %cond79, i32 noundef %36) #4
  br label %cleanup

if.end86:                                         ; preds = %if.end47
  %37 = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 7
  %enabled = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 7, i32 0, i32 4, i32 0, i32 4
  %38 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load87 = load i8, ptr %enabled, align 4
  %39 = and i8 %bf.load87, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %bf.cast89.not = icmp eq i8 %39, 0
  br i1 %bf.cast89.not, label %if.end124, label %do.body92

do.body92:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_epn_enable.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_epn_enable, %cleanup)) #4
          to label %if.then106 [label %cleanup], !srcloc !127

if.then106:                                       ; preds = %do.body92
  %vhub107 = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 4
  %40 = ptrtoint ptr %vhub107 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vhub107, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %dev109 = getelementptr inbounds %struct.platform_device, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev4, align 4
  %tobool111.not = icmp eq ptr %45, null
  br i1 %tobool111.not, label %if.then106.cond.end116_crit_edge, label %cond.true112

if.then106.cond.end116_crit_edge:                 ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end116

cond.true112:                                     ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #6
  %name114 = getelementptr inbounds %struct.ast_vhub_dev, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %name114 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %name114, align 4
  br label %cond.end116

cond.end116:                                      ; preds = %cond.true112, %if.then106.cond.end116_crit_edge
  %cond117 = phi ptr [ %47, %cond.true112 ], [ @.str.7, %if.then106.cond.end116_crit_edge ]
  %48 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %d_idx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_epn_enable.__UNIQUE_ID_ddebug261, ptr noundef %dev109, ptr noundef nonnull @.str.23, ptr noundef %cond117, i32 noundef %49) #4
  br label %cleanup

if.end124:                                        ; preds = %if.end86
  %vhub126 = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 4
  %50 = ptrtoint ptr %vhub126 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %vhub126, align 4
  %driver = getelementptr inbounds %struct.ast_vhub_dev, ptr %7, i32 0, i32 6
  %52 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %driver, align 8
  %tobool127.not = icmp eq ptr %53, null
  br i1 %tobool127.not, label %do.body130, label %if.end163

do.body130:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_epn_enable.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_epn_enable, %cleanup)) #4
          to label %if.then144 [label %cleanup], !srcloc !127

if.then144:                                       ; preds = %do.body130
  %54 = ptrtoint ptr %vhub126 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %vhub126, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %dev147 = getelementptr inbounds %struct.platform_device, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev4, align 4
  %tobool149.not = icmp eq ptr %59, null
  br i1 %tobool149.not, label %if.then144.cond.end154_crit_edge, label %cond.true150

if.then144.cond.end154_crit_edge:                 ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end154

cond.true150:                                     ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #6
  %name152 = getelementptr inbounds %struct.ast_vhub_dev, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %name152 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %name152, align 4
  br label %cond.end154

cond.end154:                                      ; preds = %cond.true150, %if.then144.cond.end154_crit_edge
  %cond155 = phi ptr [ %61, %cond.true150 ], [ @.str.7, %if.then144.cond.end154_crit_edge ]
  %62 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %d_idx, align 4
  %64 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %driver, align 8
  %speed = getelementptr inbounds %struct.ast_vhub_dev, ptr %7, i32 0, i32 5, i32 5
  %66 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %speed, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_epn_enable.__UNIQUE_ID_ddebug262, ptr noundef %dev147, ptr noundef nonnull @.str.24, ptr noundef %cond155, i32 noundef %63, ptr noundef %65, i32 noundef %67) #4
  br label %cleanup

if.end163:                                        ; preds = %if.end124
  %68 = and i8 %25, -128
  %bf.clear167 = and i8 %bf.load87, 127
  %bf.set = or i8 %bf.clear167, %68
  %69 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %bf.set, ptr %enabled, align 4
  %bf.value = zext i16 %3 to i56
  %bf.shl173 = shl nuw nsw i56 %bf.value, 40
  %bf.clear174 = and i56 %bf.load, 1099511627775
  %bf.set175 = or i56 %bf.clear174, %bf.shl173
  %70 = ptrtoint ptr %maxpacket16 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 7)
  store i56 %bf.set175, ptr %maxpacket16, align 2
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 3
  %71 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %bmAttributes.i, align 1
  %73 = and i8 %72, 3
  %and.i626 = zext i8 %73 to i32
  %d_last = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 7, i32 0, i32 4, i32 0, i32 1
  %74 = ptrtoint ptr %d_last to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %d_last, align 4
  %d_next = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 7, i32 0, i32 4
  %75 = ptrtoint ptr %d_next to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %d_next, align 4
  %bf.clear185 = and i8 %bf.set, -113
  store i8 %bf.clear185, ptr %enabled, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_epn_enable.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_epn_enable, %do.end229)) #4
          to label %if.then202 [label %do.end229], !srcloc !127

if.then202:                                       ; preds = %if.end163
  %76 = ptrtoint ptr %vhub126 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %vhub126, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %dev205 = getelementptr inbounds %struct.platform_device, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev4, align 4
  %tobool207.not = icmp eq ptr %81, null
  br i1 %tobool207.not, label %if.then202.cond.end212_crit_edge, label %cond.true208

if.then202.cond.end212_crit_edge:                 ; preds = %if.then202
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end212

cond.true208:                                     ; preds = %if.then202
  call void @__sanitizer_cov_trace_pc() #6
  %name210 = getelementptr inbounds %struct.ast_vhub_dev, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %name210 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %name210, align 4
  br label %cond.end212

cond.end212:                                      ; preds = %cond.true208, %if.then202.cond.end212_crit_edge
  %cond213 = phi ptr [ %83, %cond.true208 ], [ @.str.7, %if.then202.cond.end212_crit_edge ]
  %84 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %d_idx, align 4
  %86 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %86)
  %bf.load216 = load i8, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load216)
  %bf.cast218.not = icmp sgt i8 %bf.load216, -1
  %cond220 = select i1 %bf.cast218.not, ptr @.str.27, ptr @.str.26
  %call222 = tail call ptr @usb_ep_type_string(i32 noundef %and.i626) #4
  %87 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %bEndpointAddress.i, align 1
  %89 = and i8 %88, 15
  %and.i628 = zext i8 %89 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_epn_enable.__UNIQUE_ID_ddebug263, ptr noundef %dev205, ptr noundef nonnull @.str.25, ptr noundef %cond213, i32 noundef %85, ptr noundef nonnull %cond220, ptr noundef %call222, i32 noundef %and.i628, i32 noundef %and.i) #4
  br label %do.end229

do.end229:                                        ; preds = %cond.end212, %if.end163
  %descs = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 7, i32 0, i32 2
  %90 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %descs, align 4
  %tobool230.not = icmp eq ptr %91, null
  %92 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %92)
  %bf.load236636 = load i8, ptr %enabled, align 4
  br i1 %tobool230.not, label %land.end.thread, label %land.end

land.end.thread:                                  ; preds = %do.end229
  call void @__sanitizer_cov_trace_pc() #6
  %bf.clear238637 = and i8 %bf.load236636, -5
  %93 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %bf.clear238637, ptr %enabled, align 4
  br label %if.end248

land.end:                                         ; preds = %do.end229
  %94 = lshr i8 %bf.load236636, 5
  %95 = and i8 %94, 4
  %bf.clear238 = and i8 %bf.load236636, -5
  %bf.set239 = or i8 %95, %bf.clear238
  %96 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %bf.set239, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %bf.cast245.not = icmp eq i8 %95, 0
  br i1 %bf.cast245.not, label %land.end.if.end248_crit_edge, label %if.then246

land.end.if.end248_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end248

if.then246:                                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  %97 = call ptr @memset(ptr %91, i32 0, i32 2048)
  %98 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %98)
  %bf.load255.pr = load i8, ptr %enabled, align 4
  br label %if.end248

if.end248:                                        ; preds = %if.then246, %land.end.if.end248_crit_edge, %land.end.thread
  %bf.load255 = phi i8 [ %bf.clear238637, %land.end.thread ], [ %bf.load255.pr, %if.then246 ], [ %bf.set239, %land.end.if.end248_crit_edge ]
  %99 = ptrtoint ptr %maxpacket16 to i32
  call void @__asan_loadN_noabort(i32 %99, i32 7)
  %bf.load251 = load i56, ptr %maxpacket16, align 2
  %bf.lshr252 = lshr i56 %bf.load251, 40
  %bf.cast253 = trunc i56 %bf.lshr252 to i32
  %chunk_max = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 7, i32 0, i32 4, i32 0, i32 3
  %100 = ptrtoint ptr %chunk_max to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %bf.cast253, ptr %chunk_max, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load255)
  %bf.cast257.not = icmp sgt i8 %bf.load255, -1
  br i1 %bf.cast257.not, label %if.end248.if.end269_crit_edge, label %if.then258

if.end248.if.end269_crit_edge:                    ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end269

if.then258:                                       ; preds = %if.end248
  %shl = shl nuw nsw i32 %bf.cast253, 3
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.then258
  %storemerge = phi i32 [ %shl, %if.then258 ], [ %sub, %while.cond.while.cond_crit_edge ]
  %cmp261 = icmp ugt i32 %storemerge, 4095
  %sub = sub i32 %storemerge, %bf.cast253
  br i1 %cmp261, label %while.cond.while.cond_crit_edge, label %if.end269.loopexit

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

if.end269.loopexit:                               ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  %101 = ptrtoint ptr %chunk_max to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %storemerge, ptr %chunk_max, align 4
  br label %if.end269

if.end269:                                        ; preds = %if.end269.loopexit, %if.end248.if.end269_crit_edge
  %trunc643 = trunc i8 %72 to i2
  %102 = zext i2 %trunc643 to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values)
  switch i2 %trunc643, label %if.end269.unreachabledefault [
    i2 0, label %do.body272
    i2 -1, label %if.end269.sw.epilog_crit_edge
    i2 -2, label %sw.bb305
    i2 1, label %sw.bb306
  ]

if.end269.sw.epilog_crit_edge:                    ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.body272:                                       ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_epn_enable.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_epn_enable, %cleanup)) #4
          to label %if.then286 [label %cleanup], !srcloc !127

if.then286:                                       ; preds = %do.body272
  %103 = ptrtoint ptr %vhub126 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %vhub126, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  %dev289 = getelementptr inbounds %struct.platform_device, ptr %106, i32 0, i32 3
  %107 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev4, align 4
  %tobool291.not = icmp eq ptr %108, null
  br i1 %tobool291.not, label %if.then286.cond.end296_crit_edge, label %cond.true292

if.then286.cond.end296_crit_edge:                 ; preds = %if.then286
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end296

cond.true292:                                     ; preds = %if.then286
  call void @__sanitizer_cov_trace_pc() #6
  %name294 = getelementptr inbounds %struct.ast_vhub_dev, ptr %108, i32 0, i32 3
  %109 = ptrtoint ptr %name294 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %name294, align 4
  br label %cond.end296

cond.end296:                                      ; preds = %cond.true292, %if.then286.cond.end296_crit_edge
  %cond297 = phi ptr [ %110, %cond.true292 ], [ @.str.7, %if.then286.cond.end296_crit_edge ]
  %111 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %d_idx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_epn_enable.__UNIQUE_ID_ddebug264, ptr noundef %dev289, ptr noundef nonnull @.str.28, ptr noundef %cond297, i32 noundef %112) #4
  br label %cleanup

sw.bb305:                                         ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb306:                                         ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #6
  %bf.set310 = or i8 %bf.load255, 64
  %113 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %bf.set310, ptr %enabled, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb306, %sw.bb305, %if.end269.sw.epilog_crit_edge
  %ep_conf.0 = phi i32 [ 96, %sw.bb306 ], [ 32, %sw.bb305 ], [ 64, %if.end269.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %3)
  %cmp312 = icmp ult i16 %3, 1024
  %and = shl nuw nsw i32 %and.i, 16
  %shl316 = and i32 %and, 67043328
  %or = select i1 %cmp312, i32 %shl316, i32 0
  %ep_conf.1 = or i32 %ep_conf.0, %or
  %114 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %114)
  %bf.load319 = load i8, ptr %enabled, align 4
  %or323 = or i32 %ep_conf.1, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load319)
  %bf.cast321.not644 = icmp slt i8 %bf.load319, 0
  %ep_conf.2 = select i1 %bf.cast321.not644, i32 %ep_conf.1, i32 %or323
  %115 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %bEndpointAddress.i, align 1
  %and.i630 = zext i8 %116 to i32
  %and326 = shl nuw nsw i32 %and.i630, 8
  %shl327 = and i32 %and326, 3840
  %index = getelementptr inbounds %struct.ast_vhub_dev, ptr %7, i32 0, i32 2
  %117 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %index, align 8
  %add = shl i32 %118, 1
  %shl330 = add i32 %add, 2
  %or328 = or i32 %ep_conf.2, %shl327
  %or329 = or i32 %or328, %shl330
  %or331 = or i32 %or329, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_epn_enable.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_epn_enable, %do.body366)) #4
          to label %if.then347 [label %do.body366], !srcloc !127

if.then347:                                       ; preds = %sw.epilog
  %119 = ptrtoint ptr %vhub126 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %vhub126, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %120, align 4
  %dev350 = getelementptr inbounds %struct.platform_device, ptr %122, i32 0, i32 3
  %123 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev4, align 4
  %tobool352.not = icmp eq ptr %124, null
  br i1 %tobool352.not, label %if.then347.cond.end357_crit_edge, label %cond.true353

if.then347.cond.end357_crit_edge:                 ; preds = %if.then347
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end357

cond.true353:                                     ; preds = %if.then347
  call void @__sanitizer_cov_trace_pc() #6
  %name355 = getelementptr inbounds %struct.ast_vhub_dev, ptr %124, i32 0, i32 3
  %125 = ptrtoint ptr %name355 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %name355, align 4
  br label %cond.end357

cond.end357:                                      ; preds = %cond.true353, %if.then347.cond.end357_crit_edge
  %cond358 = phi ptr [ %126, %cond.true353 ], [ @.str.7, %if.then347.cond.end357_crit_edge ]
  %127 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %d_idx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_epn_enable.__UNIQUE_ID_ddebug265, ptr noundef %dev350, ptr noundef nonnull @.str.29, ptr noundef %cond358, i32 noundef %128, i32 noundef %or331) #4
  br label %do.body366

do.body366:                                       ; preds = %cond.end357, %sw.epilog
  %lock = getelementptr inbounds %struct.ast_vhub, ptr %51, i32 0, i32 3
  %call371 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !142
  tail call void @arm_heavy_mb() #4
  %129 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %37, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 0) #4, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !143
  tail call void @arm_heavy_mb() #4
  %131 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %37, align 4
  %add.ptr384 = getelementptr i8, ptr %132, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr384, i32 67108864) #4, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !144
  tail call void @arm_heavy_mb() #4
  %133 = tail call i32 @llvm.bswap.i32(i32 %or331)
  %134 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %37, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 %133) #4, !srcloc !132
  %136 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %136)
  %bf.load391 = load i8, ptr %enabled, align 4
  %137 = and i8 %bf.load391, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %bf.cast394.not = icmp eq i8 %137, 0
  br i1 %bf.cast394.not, label %if.else, label %do.body396

do.body396:                                       ; preds = %do.body366
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !145
  tail call void @arm_heavy_mb() #4
  %138 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %37, align 4
  %add.ptr400 = getelementptr i8, ptr %139, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr400, i32 0) #4, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !146
  tail call void @arm_heavy_mb() #4
  %descs_dma = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 7, i32 0, i32 3
  %140 = ptrtoint ptr %descs_dma to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %descs_dma, align 4
  %142 = tail call i32 @llvm.bswap.i32(i32 %141)
  %143 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %37, align 4
  %add.ptr405 = getelementptr i8, ptr %144, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr405, i32 %142) #4, !srcloc !132
  %dma_conf = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 7, i32 0, i32 4, i32 0, i32 2
  %145 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %145)
  %bf.load407 = load i8, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load407)
  %bf.cast409.not = icmp sgt i8 %bf.load407, -1
  %spec.store.select = select i1 %bf.cast409.not, i32 1, i32 9
  %146 = ptrtoint ptr %dma_conf to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %spec.store.select, ptr %dma_conf, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !147
  tail call void @arm_heavy_mb() #4
  %147 = ptrtoint ptr %dma_conf to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %dma_conf, align 4
  %or418 = or i32 %148, 4
  %149 = tail call i32 @llvm.bswap.i32(i32 %or418)
  %150 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %37, align 4
  %add.ptr420 = getelementptr i8, ptr %151, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr420, i32 %149) #4, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !148
  tail call void @arm_heavy_mb() #4
  %152 = ptrtoint ptr %dma_conf to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %dma_conf, align 4
  %154 = tail call i32 @llvm.bswap.i32(i32 %153)
  %155 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %37, align 4
  %add.ptr426 = getelementptr i8, ptr %156, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr426, i32 %154) #4, !srcloc !132
  br label %do.body447

if.else:                                          ; preds = %do.body366
  call void @__sanitizer_cov_trace_pc() #6
  %dma_conf427 = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 7, i32 0, i32 4, i32 0, i32 2
  %157 = ptrtoint ptr %dma_conf427 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 2, ptr %dma_conf427, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !149
  tail call void @arm_heavy_mb() #4
  %158 = ptrtoint ptr %dma_conf427 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %dma_conf427, align 4
  %or432 = or i32 %159, 4
  %160 = tail call i32 @llvm.bswap.i32(i32 %or432)
  %161 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %37, align 4
  %add.ptr434 = getelementptr i8, ptr %162, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr434, i32 %160) #4, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !150
  tail call void @arm_heavy_mb() #4
  %163 = ptrtoint ptr %dma_conf427 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %dma_conf427, align 4
  %165 = tail call i32 @llvm.bswap.i32(i32 %164)
  %166 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %37, align 4
  %add.ptr440 = getelementptr i8, ptr %167, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr440, i32 %165) #4, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !151
  tail call void @arm_heavy_mb() #4
  %168 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %37, align 4
  %add.ptr445 = getelementptr i8, ptr %169, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr445, i32 0) #4, !srcloc !132
  br label %do.body447

do.body447:                                       ; preds = %if.else, %do.body396
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !152
  tail call void @arm_heavy_mb() #4
  %g_idx = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 7, i32 0, i32 1
  %170 = ptrtoint ptr %g_idx to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %g_idx, align 4
  %and450 = shl i32 %171, 24
  %172 = and i32 %and450, 520093696
  %regs451 = getelementptr inbounds %struct.ast_vhub, ptr %51, i32 0, i32 1
  %173 = ptrtoint ptr %regs451 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %regs451, align 4
  %add.ptr452 = getelementptr i8, ptr %174, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr452, i32 %172) #4, !srcloc !132
  %175 = ptrtoint ptr %g_idx to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %g_idx, align 4
  %shl454 = shl nuw i32 1, %176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !153
  tail call void @arm_heavy_mb() #4
  %177 = tail call i32 @llvm.bswap.i32(i32 %shl454)
  %178 = ptrtoint ptr %regs451 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %regs451, align 4
  %add.ptr459 = getelementptr i8, ptr %179, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr459, i32 %177) #4, !srcloc !132
  %180 = ptrtoint ptr %regs451 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %regs451, align 4
  %add.ptr461 = getelementptr i8, ptr %181, i32 16
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr461) #4, !srcloc !124
  %183 = tail call i32 @llvm.bswap.i32(i32 %182)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !154
  %or465 = or i32 %183, %shl454
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !155
  tail call void @arm_heavy_mb() #4
  %184 = tail call i32 @llvm.bswap.i32(i32 %or465)
  %185 = ptrtoint ptr %regs451 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %regs451, align 4
  %add.ptr470 = getelementptr i8, ptr %186, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr470, i32 %184) #4, !srcloc !132
  %187 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %187)
  %bf.load472 = load i8, ptr %enabled, align 4
  %bf.set474 = or i8 %bf.load472, 8
  store i8 %bf.set474, ptr %enabled, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call371) #4
  br label %cleanup

if.end269.unreachabledefault:                     ; preds = %if.end269
  unreachable

cleanup:                                          ; preds = %do.body447, %cond.end296, %do.body272, %cond.end154, %do.body130, %cond.end116, %do.body92, %cond.end78, %do.body54, %cond.end, %do.body20, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body447 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %cond.end ], [ -22, %cond.end78 ], [ -16, %cond.end116 ], [ -108, %cond.end154 ], [ -22, %cond.end296 ], [ -22, %do.body20 ], [ -22, %do.body54 ], [ -16, %do.body92 ], [ -108, %do.body130 ], [ -22, %do.body272 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ast_vhub_epn_disable(ptr noundef %u_ep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %vhub1 = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 4
  %0 = ptrtoint ptr %vhub1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vhub1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_epn_disable.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_epn_disable, %do.body14)) #4
          to label %if.then [label %do.body14], !srcloc !127

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %vhub1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vhub1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %dev8 = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 3
  %6 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev8, align 4
  %tobool9.not = icmp eq ptr %7, null
  br i1 %tobool9.not, label %if.then.cond.end_crit_edge, label %cond.true

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
  %d_idx = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 2
  %10 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %d_idx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_epn_disable.__UNIQUE_ID_ddebug258, ptr noundef %dev, ptr noundef nonnull @.str.31, ptr noundef %cond, i32 noundef %11) #4
  br label %do.body14

do.body14:                                        ; preds = %cond.end, %entry
  %lock = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 3
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %12 = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 7
  %enabled = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 7, i32 0, i32 4, i32 0, i32 4
  %13 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %enabled, align 4
  %bf.clear = and i8 %bf.load, -9
  store i8 %bf.clear, ptr %enabled, align 4
  %14 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %bf.cast.not.i = icmp eq i8 %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  %add.ptr5.i = getelementptr i8, ptr %16, i32 4
  br i1 %bf.cast.not.i, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 67108864) #4, !srcloc !132
  br label %for.body.i.preheader

do.body1.i:                                       ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 0) #4, !srcloc !132
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %do.body1.i, %do.body.i
  br label %for.body.i

for.body.i:                                       ; preds = %if.end12.i.for.body.i_crit_edge, %for.body.i.preheader
  %loops.066.i = phi i32 [ %inc.i, %if.end12.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %12, align 4
  %add.ptr7.i = getelementptr i8, ptr %18, i32 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #4, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !156
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %19)
  %cmp9.i = icmp ult i32 %19, 268435456
  %.mask.i = and i32 %19, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %.mask.i)
  %cmp10.i = icmp eq i32 %.mask.i, -2147483648
  %or.cond.i = or i1 %cmp9.i, %cmp10.i
  br i1 %or.cond.i, label %for.body.i.ast_vhub_stop_active_req.exit_crit_edge, label %if.end12.i

for.body.i.ast_vhub_stop_active_req.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ast_vhub_stop_active_req.exit

if.end12.i:                                       ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #4
  %inc.i = add nuw nsw i32 %loops.066.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %do.end17.i, label %if.end12.i.for.body.i_crit_edge

if.end12.i.for.body.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

do.end17.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %vhub1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vhub1, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %24, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.32) #7
  br label %ast_vhub_stop_active_req.exit

ast_vhub_stop_active_req.exit:                    ; preds = %do.end17.i, %for.body.i.ast_vhub_stop_active_req.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !157
  tail call void @arm_heavy_mb() #4
  %25 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 0) #4, !srcloc !132
  %g_idx = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 7, i32 0, i32 1
  %27 = ptrtoint ptr %g_idx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %g_idx, align 4
  %shl = shl nuw i32 1, %28
  %regs26 = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %regs26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs26, align 4
  %add.ptr27 = getelementptr i8, ptr %30, i32 16
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #4, !srcloc !124
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !158
  %neg = xor i32 %shl, -1
  %and = and i32 %32, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !159
  tail call void @arm_heavy_mb() #4
  %33 = tail call i32 @llvm.bswap.i32(i32 %and)
  %34 = ptrtoint ptr %regs26 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs26, align 4
  %add.ptr35 = getelementptr i8, ptr %35, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %33) #4, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !160
  tail call void @arm_heavy_mb() #4
  %36 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %37 = ptrtoint ptr %regs26 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs26, align 4
  %add.ptr40 = getelementptr i8, ptr %38, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 %36) #4, !srcloc !132
  tail call void @ast_vhub_nuke(ptr noundef %u_ep, i32 noundef -108) #4
  %desc = getelementptr inbounds %struct.usb_ep, ptr %u_ep, i32 0, i32 9
  %39 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %desc, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call17) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ast_vhub_epn_dispose(ptr noundef %u_ep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %d_idx = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 2
  %2 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %d_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.rhs.do.end_crit_edge, label %do.body27, !prof !129

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 755, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

do.body27:                                        ; preds = %lor.rhs
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_epn_dispose.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_epn_dispose, %do.end48)) #4
          to label %if.then38 [label %do.end48], !srcloc !127

if.then38:                                        ; preds = %do.body27
  %vhub = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 4
  %4 = ptrtoint ptr %vhub to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vhub, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev39 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %tobool41.not = icmp eq ptr %9, null
  br i1 %tobool41.not, label %if.then38.cond.end_crit_edge, label %cond.true

if.then38.cond.end_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.ast_vhub_dev, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then38.cond.end_crit_edge
  %cond = phi ptr [ %11, %cond.true ], [ @.str.7, %if.then38.cond.end_crit_edge ]
  %12 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %d_idx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_epn_dispose.__UNIQUE_ID_ddebug266, ptr noundef %dev39, ptr noundef nonnull @.str.37, ptr noundef %cond, i32 noundef %13) #4
  br label %do.end48

do.end48:                                         ; preds = %cond.end, %do.body27
  %ep_list = getelementptr inbounds %struct.usb_ep, ptr %u_ep, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ep_list) #4
  br i1 %call.i.i, label %if.end.i.i, label %do.end48.list_del_init.exit_crit_edge

do.end48.list_del_init.exit_crit_edge:            ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.usb_ep, ptr %u_ep, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %ep_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ep_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.end48.list_del_init.exit_crit_edge
  %20 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %ep_list, ptr %ep_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.usb_ep, ptr %u_ep, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %ep_list, ptr %prev.i3.i, align 4
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %epns = getelementptr inbounds %struct.ast_vhub_dev, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %epns to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %epns, align 4
  %26 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %d_idx, align 4
  %sub = add i32 %27, -1
  %arrayidx = getelementptr ptr, ptr %25, i32 %sub
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %arrayidx, align 4
  %name53 = getelementptr inbounds %struct.usb_ep, ptr %u_ep, i32 0, i32 1
  %29 = ptrtoint ptr %name53 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name53, align 4
  tail call void @kfree(ptr noundef %30) #4
  %31 = ptrtoint ptr %name53 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %name53, align 4
  %vhub56 = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 4
  %32 = ptrtoint ptr %vhub56 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vhub56, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %dev58 = getelementptr inbounds %struct.platform_device, ptr %35, i32 0, i32 3
  %buf = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 5
  %36 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buf, align 4
  %buf_dma = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 6
  %38 = ptrtoint ptr %buf_dma to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %buf_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev58, i32 noundef 3072, ptr noundef %37, i32 noundef %39, i32 noundef 0) #4
  %40 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %buf, align 4
  %descs = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 7, i32 0, i32 2
  %41 = ptrtoint ptr %descs to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %descs, align 4
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_del_init.exit, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ast_vhub_alloc_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_free_request(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ast_vhub_epn_queue(ptr noundef %u_ep, ptr noundef %u_req, i32 noundef %gfp_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %vhub4 = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 4
  %0 = ptrtoint ptr %vhub4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vhub4, align 4
  %tobool.not = icmp eq ptr %u_req, null
  br i1 %tobool.not, label %if.end.critedge, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %complete = getelementptr inbounds %struct.usb_request, ptr %u_req, i32 0, i32 7
  %2 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %complete, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %lor.lhs.false.do.end12_crit_edge, label %lor.lhs.false6

lor.lhs.false.do.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end12

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %u_req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %u_req, align 4
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %lor.lhs.false6.do.end12_crit_edge, label %if.end16

lor.lhs.false6.do.end12_crit_edge:                ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end12

do.end12:                                         ; preds = %lor.lhs.false6.do.end12_crit_edge, %lor.lhs.false.do.end12_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %dev.c274 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.c274, ptr noundef nonnull @.str.38, ptr noundef nonnull %u_req) #7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %dev14 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %complete, align 4
  %internal = getelementptr inbounds %struct.ast_vhub_req, ptr %u_req, i32 0, i32 4
  %12 = ptrtoint ptr %internal to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %internal, align 4
  %13 = lshr i8 %bf.load, 6
  %.lobit = and i8 %13, 1
  %14 = zext i8 %.lobit to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev14, ptr noundef nonnull @.str.41, ptr noundef %11, i32 noundef %14) #7
  br label %cleanup

if.end.critedge:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %dev.c = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.c, ptr noundef nonnull @.str.38, ptr noundef null) #7
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false6
  %enabled = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 7, i32 0, i32 4, i32 0, i32 4
  %17 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load17 = load i8, ptr %enabled, align 4
  %18 = and i8 %bf.load17, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %bf.cast20.not = icmp eq i8 %18, 0
  br i1 %bf.cast20.not, label %if.end16.do.body37_crit_edge, label %lor.lhs.false21

if.end16.do.body37_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body37

lor.lhs.false21:                                  ; preds = %if.end16
  %desc = getelementptr inbounds %struct.usb_ep, ptr %u_ep, i32 0, i32 9
  %19 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %desc, align 4
  %tobool22.not = icmp eq ptr %20, null
  br i1 %tobool22.not, label %lor.lhs.false21.do.body37_crit_edge, label %lor.lhs.false23

lor.lhs.false21.do.body37_crit_edge:              ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body37

lor.lhs.false23:                                  ; preds = %lor.lhs.false21
  %dev24 = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 3
  %21 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev24, align 4
  %tobool25.not = icmp eq ptr %22, null
  br i1 %tobool25.not, label %lor.lhs.false23.do.body37_crit_edge, label %lor.lhs.false26

lor.lhs.false23.do.body37_crit_edge:              ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body37

lor.lhs.false26:                                  ; preds = %lor.lhs.false23
  %d_idx = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 2
  %23 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %d_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool27.not = icmp eq i32 %24, 0
  br i1 %tobool27.not, label %lor.lhs.false26.do.body37_crit_edge, label %lor.lhs.false28

lor.lhs.false26.do.body37_crit_edge:              ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body37

lor.lhs.false28:                                  ; preds = %lor.lhs.false26
  %enabled30 = getelementptr inbounds %struct.ast_vhub_dev, ptr %22, i32 0, i32 7
  %25 = ptrtoint ptr %enabled30 to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load31 = load i8, ptr %enabled30, align 4
  %26 = and i8 %bf.load31, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %bf.cast34.not = icmp eq i8 %26, 0
  br i1 %bf.cast34.not, label %lor.lhs.false28.do.body37_crit_edge, label %if.end56

lor.lhs.false28.do.body37_crit_edge:              ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body37

do.body37:                                        ; preds = %lor.lhs.false28.do.body37_crit_edge, %lor.lhs.false26.do.body37_crit_edge, %lor.lhs.false23.do.body37_crit_edge, %lor.lhs.false21.do.body37_crit_edge, %if.end16.do.body37_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_epn_queue.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_epn_queue, %cleanup)) #4
          to label %if.then43 [label %cleanup], !srcloc !127

if.then43:                                        ; preds = %do.body37
  %27 = ptrtoint ptr %vhub4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vhub4, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %dev46 = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3
  %dev47 = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 3
  %31 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev47, align 4
  %tobool48.not = icmp eq ptr %32, null
  br i1 %tobool48.not, label %if.then43.cond.end_crit_edge, label %cond.true

if.then43.cond.end_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.ast_vhub_dev, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then43.cond.end_crit_edge
  %cond = phi ptr [ %34, %cond.true ], [ @.str.7, %if.then43.cond.end_crit_edge ]
  %d_idx50 = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 2
  %35 = ptrtoint ptr %d_idx50 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %d_idx50, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_epn_queue.__UNIQUE_ID_ddebug253, ptr noundef %dev46, ptr noundef nonnull @.str.43, ptr noundef %cond, i32 noundef %36) #4
  br label %cleanup

if.end56:                                         ; preds = %lor.lhs.false28
  %37 = and i8 %bf.load17, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %bf.cast60.not = icmp eq i8 %37, 0
  br i1 %bf.cast60.not, label %lor.lhs.false62, label %if.end56.if.then75_crit_edge

if.end56.if.then75_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then75

lor.lhs.false62:                                  ; preds = %if.end56
  %38 = ptrtoint ptr %5 to i32
  %and = and i32 %38, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false62.if.else_crit_edge

lor.lhs.false62.if.else_crit_edge:                ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load17)
  %bf.cast67.not = icmp sgt i8 %bf.load17, -1
  br i1 %bf.cast67.not, label %lor.lhs.false69, label %land.lhs.true.if.then75_crit_edge

land.lhs.true.if.then75_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then75

lor.lhs.false69:                                  ; preds = %land.lhs.true
  %length = getelementptr inbounds %struct.usb_request, ptr %u_req, i32 0, i32 1
  %39 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %length, align 4
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %u_ep, i32 0, i32 7
  %41 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %41, i32 7)
  %bf.load70 = load i56, ptr %maxpacket, align 2
  %bf.lshr71 = lshr i56 %bf.load70, 40
  %bf.cast72 = trunc i56 %bf.lshr71 to i32
  %sub = add nsw i32 %bf.cast72, -1
  %and73 = and i32 %sub, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %lor.lhs.false69.if.then75_crit_edge, label %lor.lhs.false69.if.else_crit_edge

lor.lhs.false69.if.else_crit_edge:                ; preds = %lor.lhs.false69
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

lor.lhs.false69.if.then75_crit_edge:              ; preds = %lor.lhs.false69
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then75

if.then75:                                        ; preds = %lor.lhs.false69.if.then75_crit_edge, %land.lhs.true.if.then75_crit_edge, %if.end56.if.then75_crit_edge
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %dev77 = getelementptr inbounds %struct.platform_device, ptr %43, i32 0, i32 3
  %bf.load79.lobit = lshr i8 %bf.load17, 7
  %44 = zext i8 %bf.load79.lobit to i32
  %call83 = tail call i32 @usb_gadget_map_request_by_dev(ptr noundef %dev77, ptr noundef nonnull %u_req, i32 noundef %44) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.then75.do.body94_crit_edge, label %do.end88

if.then75.do.body94_crit_edge:                    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body94

do.end88:                                         ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #6
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %dev90 = getelementptr inbounds %struct.platform_device, ptr %46, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev90, ptr noundef nonnull @.str.45, i32 noundef %call83) #7
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false69.if.else_crit_edge, %lor.lhs.false62.if.else_crit_edge
  %dma = getelementptr inbounds %struct.usb_request, ptr %u_req, i32 0, i32 2
  %47 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %dma, align 4
  br label %do.body94

do.body94:                                        ; preds = %if.else, %if.then75.do.body94_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_epn_queue.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_epn_queue, %do.body127)) #4
          to label %if.then108 [label %do.body127], !srcloc !127

if.then108:                                       ; preds = %do.body94
  %48 = ptrtoint ptr %vhub4 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vhub4, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %dev111 = getelementptr inbounds %struct.platform_device, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev24, align 4
  %tobool113.not = icmp eq ptr %53, null
  br i1 %tobool113.not, label %if.then108.cond.end118_crit_edge, label %cond.true114

if.then108.cond.end118_crit_edge:                 ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end118

cond.true114:                                     ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #6
  %name116 = getelementptr inbounds %struct.ast_vhub_dev, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %name116 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %name116, align 4
  br label %cond.end118

cond.end118:                                      ; preds = %cond.true114, %if.then108.cond.end118_crit_edge
  %cond119 = phi ptr [ %55, %cond.true114 ], [ @.str.7, %if.then108.cond.end118_crit_edge ]
  %56 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %d_idx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_epn_queue.__UNIQUE_ID_ddebug254, ptr noundef %dev111, ptr noundef nonnull @.str.47, ptr noundef %cond119, i32 noundef %57, ptr noundef nonnull %u_req) #4
  br label %do.body127

do.body127:                                       ; preds = %cond.end118, %do.body94
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_epn_queue.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_epn_queue, %do.end174)) #4
          to label %if.then141 [label %do.end174], !srcloc !127

if.then141:                                       ; preds = %do.body127
  %58 = ptrtoint ptr %vhub4 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %vhub4, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %dev144 = getelementptr inbounds %struct.platform_device, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev24, align 4
  %tobool146.not = icmp eq ptr %63, null
  br i1 %tobool146.not, label %if.then141.cond.end151_crit_edge, label %cond.true147

if.then141.cond.end151_crit_edge:                 ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end151

cond.true147:                                     ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #6
  %name149 = getelementptr inbounds %struct.ast_vhub_dev, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %name149 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %name149, align 4
  br label %cond.end151

cond.end151:                                      ; preds = %cond.true147, %if.then141.cond.end151_crit_edge
  %cond152 = phi ptr [ %65, %cond.true147 ], [ @.str.7, %if.then141.cond.end151_crit_edge ]
  %66 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %d_idx, align 4
  %length154 = getelementptr inbounds %struct.usb_request, ptr %u_req, i32 0, i32 1
  %68 = ptrtoint ptr %length154 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %length154, align 4
  %dma155 = getelementptr inbounds %struct.usb_request, ptr %u_req, i32 0, i32 2
  %70 = ptrtoint ptr %dma155 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dma155, align 4
  %zero = getelementptr inbounds %struct.usb_request, ptr %u_req, i32 0, i32 6
  %72 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %72)
  %bf.load156 = load i32, ptr %zero, align 4
  %bf.lshr157 = lshr i32 %bf.load156, 13
  %bf.clear158 = and i32 %bf.lshr157, 1
  %bf.lshr160 = lshr i32 %bf.load156, 12
  %bf.clear161 = and i32 %bf.lshr160, 1
  %bf.lshr163 = lshr i32 %bf.load156, 14
  %bf.clear164 = and i32 %bf.lshr163, 1
  %73 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load166 = load i8, ptr %enabled, align 4
  %bf.load166.lobit = lshr i8 %bf.load166, 7
  %74 = zext i8 %bf.load166.lobit to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_epn_queue.__UNIQUE_ID_ddebug255, ptr noundef %dev144, ptr noundef nonnull @.str.48, ptr noundef %cond152, i32 noundef %67, i32 noundef %69, i32 noundef %71, i32 noundef %bf.clear158, i32 noundef %bf.clear161, i32 noundef %bf.clear164, i32 noundef %74) #4
  br label %do.end174

do.end174:                                        ; preds = %cond.end151, %do.body127
  %status = getelementptr inbounds %struct.usb_request, ptr %u_req, i32 0, i32 11
  %75 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -115, ptr %status, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %u_req, i32 0, i32 12
  %76 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %actual, align 4
  %act_count = getelementptr inbounds %struct.ast_vhub_req, ptr %u_req, i32 0, i32 2
  %77 = ptrtoint ptr %act_count to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %act_count, align 4
  %active = getelementptr inbounds %struct.ast_vhub_req, ptr %u_req, i32 0, i32 4
  %78 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load175 = load i8, ptr %active, align 4
  %bf.clear176 = and i8 %bf.load175, 127
  store i8 %bf.clear176, ptr %active, align 4
  %last_desc = getelementptr inbounds %struct.ast_vhub_req, ptr %u_req, i32 0, i32 3
  %79 = ptrtoint ptr %last_desc to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1, ptr %last_desc, align 4
  %lock = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 3
  %call183 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %queue = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 1
  %80 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %81, %queue
  %queue191 = getelementptr inbounds %struct.ast_vhub_req, ptr %u_req, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 1, i32 1
  %82 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue191, ptr noundef %83, ptr noundef %queue) #4
  br i1 %call.i.i, label %if.end.i.i, label %do.end174.list_add_tail.exit_crit_edge

do.end174.list_add_tail.exit_crit_edge:           ; preds = %do.end174
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end174
  call void @__sanitizer_cov_trace_pc() #6
  %84 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %queue191, ptr %prev.i, align 4
  %85 = ptrtoint ptr %queue191 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %queue, ptr %queue191, align 4
  %prev3.i.i = getelementptr inbounds %struct.ast_vhub_req, ptr %u_req, i32 0, i32 1, i32 1
  %86 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %83, ptr %prev3.i.i, align 4
  %87 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %queue191, ptr %83, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end174.list_add_tail.exit_crit_edge
  br i1 %cmp.i.not, label %if.then194, label %list_add_tail.exit.if.end203_crit_edge

list_add_tail.exit.if.end203_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end203

if.then194:                                       ; preds = %list_add_tail.exit
  %88 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %88)
  %bf.load196 = load i8, ptr %enabled, align 4
  %89 = and i8 %bf.load196, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %bf.cast199.not = icmp eq i8 %89, 0
  br i1 %bf.cast199.not, label %if.else201, label %if.then200

if.then200:                                       ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @ast_vhub_epn_kick_desc(ptr noundef %u_ep, ptr noundef nonnull %u_req)
  br label %if.end203

if.else201:                                       ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @ast_vhub_epn_kick(ptr noundef %u_ep, ptr noundef nonnull %u_req)
  br label %if.end203

if.end203:                                        ; preds = %if.else201, %if.then200, %list_add_tail.exit.if.end203_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call183) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end203, %do.end88, %cond.end, %do.body37, %if.end.critedge, %do.end12
  %retval.0 = phi i32 [ %call83, %do.end88 ], [ 0, %if.end203 ], [ -22, %if.end.critedge ], [ -22, %do.end12 ], [ -108, %cond.end ], [ -108, %do.body37 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ast_vhub_epn_dequeue(ptr noundef %u_ep, ptr noundef readnone %u_req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %vhub1 = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 4
  %0 = ptrtoint ptr %vhub1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vhub1, align 4
  %lock = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %queue = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %queue, %entry ], [ %.pn, %for.cond.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %req.0 = getelementptr i8, ptr %.pn, i32 -56
  %cmp12.not = icmp eq ptr %.pn, %queue
  %cmp15 = icmp eq ptr %req.0, %u_req
  %or.cond = or i1 %cmp12.not, %cmp15
  br i1 %or.cond, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br i1 %cmp15, label %do.body27, label %for.end.if.end51_crit_edge

for.end.if.end51_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51

do.body27:                                        ; preds = %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_epn_dequeue.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_epn_dequeue, %do.end44)) #4
          to label %if.then34 [label %do.end44], !srcloc !127

if.then34:                                        ; preds = %do.body27
  %3 = ptrtoint ptr %vhub1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vhub1, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %dev36 = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 3
  %7 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev36, align 4
  %tobool37.not = icmp eq ptr %8, null
  br i1 %tobool37.not, label %if.then34.cond.end_crit_edge, label %cond.true

if.then34.cond.end_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.ast_vhub_dev, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then34.cond.end_crit_edge
  %cond = phi ptr [ %10, %cond.true ], [ @.str.7, %if.then34.cond.end_crit_edge ]
  %d_idx = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 2
  %11 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %d_idx, align 4
  %active = getelementptr i8, ptr %.pn, i32 16
  %13 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %active, align 4
  %bf.load.lobit = lshr i8 %bf.load, 7
  %14 = zext i8 %bf.load.lobit to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_epn_dequeue.__UNIQUE_ID_ddebug256, ptr noundef %dev, ptr noundef nonnull @.str.50, ptr noundef %cond, i32 noundef %12, ptr noundef %u_req, i32 noundef %14) #4
  br label %do.end44

do.end44:                                         ; preds = %cond.end, %do.body27
  %active45 = getelementptr i8, ptr %.pn, i32 16
  %15 = ptrtoint ptr %active45 to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load46 = load i8, ptr %active45, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load46)
  %bf.cast48.not = icmp sgt i8 %bf.load46, -1
  br i1 %bf.cast48.not, label %do.end44.if.end50_crit_edge, label %if.then49

do.end44.if.end50_crit_edge:                      ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50

if.then49:                                        ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @ast_vhub_stop_active_req(ptr noundef %u_ep, i1 noundef zeroext true)
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %do.end44.if.end50_crit_edge
  tail call void @ast_vhub_done(ptr noundef %u_ep, ptr noundef %u_req, i32 noundef -104) #4
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %for.end.if.end51_crit_edge
  %rc.0 = phi i32 [ 0, %if.end50 ], [ -22, %for.end.if.end51_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #4
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ast_vhub_epn_set_halt(ptr noundef %u_ep, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp = icmp ne i32 %value, 0
  %call = tail call fastcc i32 @ast_vhub_set_halt_and_wedge(ptr noundef %u_ep, i1 noundef zeroext %cmp, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ast_vhub_epn_set_wedge(ptr noundef %u_ep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ast_vhub_set_halt_and_wedge(ptr noundef %u_ep, i1 noundef zeroext true, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_type_string(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ast_vhub_stop_active_req(ptr nocapture noundef readonly %ep, i1 noundef zeroext %restart_ep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7
  %desc_mode = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 4, i32 0, i32 4
  %1 = ptrtoint ptr %desc_mode to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %desc_mode, align 4
  %2 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %bf.cast.not = icmp eq i8 %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %0, align 4
  %add.ptr5 = getelementptr i8, ptr %4, i32 4
  br i1 %bf.cast.not, label %do.body1, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 67108864) #4, !srcloc !132
  br label %for.body.preheader

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 0) #4, !srcloc !132
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.body1, %do.body
  br label %for.body

for.body:                                         ; preds = %if.end12.for.body_crit_edge, %for.body.preheader
  %loops.066 = phi i32 [ %inc, %if.end12.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  %add.ptr7 = getelementptr i8, ptr %6, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #4, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !156
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %7)
  %cmp9 = icmp ult i32 %7, 268435456
  %.mask = and i32 %7, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %.mask)
  %cmp10 = icmp eq i32 %.mask, -2147483648
  %or.cond = or i1 %cmp9, %cmp10
  br i1 %or.cond, label %for.body.if.end18_crit_edge, label %if.end12

for.body.if.end18_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.end12:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #4
  %inc = add nuw nsw i32 %loops.066, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %do.end17, label %if.end12.for.body_crit_edge

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

do.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %vhub = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %9 = ptrtoint ptr %vhub to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vhub, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.32) #7
  br label %if.end18

if.end18:                                         ; preds = %do.end17, %for.body.if.end18_crit_edge
  br i1 %restart_ep, label %if.end20, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end20:                                         ; preds = %if.end18
  %13 = ptrtoint ptr %desc_mode to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load22 = load i8, ptr %desc_mode, align 4
  %14 = and i8 %bf.load22, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %bf.cast25.not = icmp eq i8 %14, 0
  br i1 %bf.cast25.not, label %do.body40, label %if.then26

if.then26:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %d_next = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 4
  %15 = ptrtoint ptr %d_next to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %d_next, align 4
  %and27 = shl i32 %16, 8
  %shl = and i32 %and27, 65280
  %or = or i32 %shl, %16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !161
  tail call void @arm_heavy_mb() #4
  %17 = tail call i32 @llvm.bswap.i32(i32 %or)
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %0, align 4
  %add.ptr33 = getelementptr i8, ptr %19, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %17) #4, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !162
  tail call void @arm_heavy_mb() #4
  %dma_conf = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 4, i32 0, i32 2
  %20 = ptrtoint ptr %dma_conf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_conf, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %0, align 4
  %add.ptr38 = getelementptr i8, ptr %24, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %22) #4, !srcloc !132
  br label %cleanup

do.body40:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !163
  tail call void @arm_heavy_mb() #4
  %dma_conf43 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 4, i32 0, i32 2
  %25 = ptrtoint ptr %dma_conf43 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_conf43, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %0, align 4
  %add.ptr45 = getelementptr i8, ptr %29, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %27) #4, !srcloc !132
  br label %cleanup

cleanup:                                          ; preds = %do.body40, %if.then26, %if.end18.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_nuke(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_map_request_by_dev(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ast_vhub_set_halt_and_wedge(ptr noundef %u_ep, i1 noundef zeroext %halt, i1 noundef zeroext %wedge) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %vhub2 = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 4
  %0 = ptrtoint ptr %vhub2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vhub2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_set_halt_and_wedge.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_set_halt_and_wedge, %do.end17)) #4
          to label %if.then [label %do.end17], !srcloc !127

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %vhub2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vhub2, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %dev10 = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 3
  %6 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev10, align 4
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %if.then.cond.end_crit_edge, label %cond.true

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
  %d_idx = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 2
  %10 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %d_idx, align 4
  %conv = zext i1 %halt to i32
  %conv15 = zext i1 %wedge to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_set_halt_and_wedge.__UNIQUE_ID_ddebug257, ptr noundef %dev, ptr noundef nonnull @.str.52, ptr noundef %cond, i32 noundef %11, i32 noundef %conv, i32 noundef %conv15) #4
  br label %do.end17

do.end17:                                         ; preds = %cond.end, %entry
  %tobool18.not = icmp eq ptr %u_ep, null
  br i1 %tobool18.not, label %do.end17.cleanup_crit_edge, label %lor.lhs.false

do.end17.cleanup_crit_edge:                       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end17
  %desc = getelementptr inbounds %struct.usb_ep, ptr %u_ep, i32 0, i32 9
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc, align 4
  %tobool19.not = icmp eq ptr %13, null
  br i1 %tobool19.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end21

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false
  %d_idx22 = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 2
  %14 = ptrtoint ptr %d_idx22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %d_idx22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %if.end21.cleanup_crit_edge, label %if.end25

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %is_iso = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 7, i32 0, i32 4, i32 0, i32 4
  %16 = ptrtoint ptr %is_iso to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %is_iso, align 4
  %17 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %bf.cast.not = icmp eq i8 %17, 0
  br i1 %bf.cast.not, label %do.body29, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body29:                                        ; preds = %if.end25
  %lock = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 3
  %call34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  br i1 %halt, label %land.lhs.true, label %do.body29.if.end50_crit_edge

do.body29.if.end50_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50

land.lhs.true:                                    ; preds = %do.body29
  %18 = ptrtoint ptr %is_iso to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load41 = load i8, ptr %is_iso, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load41)
  %bf.cast43.not = icmp sgt i8 %bf.load41, -1
  br i1 %bf.cast43.not, label %land.lhs.true.if.end50_crit_edge, label %land.lhs.true45

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50

land.lhs.true45:                                  ; preds = %land.lhs.true
  %queue = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 1
  %19 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %20, %queue
  br i1 %cmp.i.not, label %land.lhs.true45.if.end50_crit_edge, label %land.lhs.true45.cleanup.sink.split_crit_edge

land.lhs.true45.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

land.lhs.true45.if.end50_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50

if.end50:                                         ; preds = %land.lhs.true45.if.end50_crit_edge, %land.lhs.true.if.end50_crit_edge, %do.body29.if.end50_crit_edge
  %bf.shl = phi i8 [ 32, %land.lhs.true45.if.end50_crit_edge ], [ 32, %land.lhs.true.if.end50_crit_edge ], [ 0, %do.body29.if.end50_crit_edge ]
  %21 = ptrtoint ptr %is_iso to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load52 = load i8, ptr %is_iso, align 4
  %bf.clear53 = and i8 %bf.load52, -49
  %bf.shl57 = select i1 %wedge, i8 16, i8 0
  %bf.set = or i8 %bf.shl, %bf.shl57
  %bf.set59 = or i8 %bf.set, %bf.clear53
  store i8 %bf.set59, ptr %is_iso, align 4
  tail call void @ast_vhub_update_epn_stall(ptr noundef nonnull %u_ep)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end50, %land.lhs.true45.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end50 ], [ -11, %land.lhs.true45.cleanup.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call34) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end25.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end17.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %do.end17.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge ], [ -95, %if.end25.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !11, !12, !13, !14, !16, !17, !19, !20, !22, !23, !25, !26, !27, !29, !30, !32, !33, !35, !36, !37, !39, !40, !42, !43, !44, !46, !48, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !63, !64, !66, !67, !69, !70, !72, !73, !74, !76, !77, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !99, !100, !101, !103, !104, !106, !107, !109, !110, !111, !113, !114}
!llvm.module.flags = !{!115, !116, !117, !118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/epn.c", i32 498, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/epn.c", i32 814, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ast_vhub_alloc_epn.__UNIQUE_ID_ddebug267, !3, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/epn.c", i32 819, i32 38}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/epn.c", i32 259, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @ast_vhub_epn_handle_ack_desc.__UNIQUE_ID_ddebug248, !10, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!13 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/epn.c", i32 276, i32 3}
!16 = !{ptr @ast_vhub_epn_handle_ack_desc.__UNIQUE_ID_ddebug249, !15, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/epn.c", i32 288, i32 3}
!19 = !{ptr @ast_vhub_epn_handle_ack_desc.__UNIQUE_ID_ddebug250, !18, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/epn.c", i32 302, i32 4}
!22 = !{ptr @ast_vhub_epn_handle_ack_desc.__UNIQUE_ID_ddebug251, !21, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/epn.c", i32 176, i32 2}
!25 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ast_vhub_epn_kick_desc.__UNIQUE_ID_ddebug244, !24, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/epn.c", i32 205, i32 3}
!29 = !{ptr @ast_vhub_epn_kick_desc.__UNIQUE_ID_ddebug245, !28, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/epn.c", i32 237, i32 2}
!32 = !{ptr @ast_vhub_epn_kick_desc.__UNIQUE_ID_ddebug246, !31, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/epn.c", i32 95, i32 2}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ast_vhub_epn_handle_ack.__UNIQUE_ID_ddebug241, !34, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/epn.c", i32 111, i32 3}
!39 = !{ptr @ast_vhub_epn_handle_ack.__UNIQUE_ID_ddebug242, !38, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/epn.c", i32 57, i32 2}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ast_vhub_epn_kick.__UNIQUE_ID_ddebug239, !41, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!44 = !{ptr @ast_vhub_epn_ops, !45, !"ast_vhub_epn_ops", i1 false, i1 false}
!45 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/epn.c", i32 780, i32 32}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/epn.c", i32 609, i32 3}
!48 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @ast_vhub_epn_enable.__UNIQUE_ID_ddebug259, !47, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/epn.c", i32 615, i32 3}
!52 = !{ptr @ast_vhub_epn_enable.__UNIQUE_ID_ddebug260, !51, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/epn.c", i32 620, i32 3}
!55 = !{ptr @ast_vhub_epn_enable.__UNIQUE_ID_ddebug261, !54, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/epn.c", i32 628, i32 3}
!58 = !{ptr @ast_vhub_epn_enable.__UNIQUE_ID_ddebug262, !57, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/epn.c", i32 642, i32 2}
!61 = !{ptr @ast_vhub_epn_enable.__UNIQUE_ID_ddebug263, !60, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!62 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/epn.c", i32 664, i32 3}
!66 = !{ptr @ast_vhub_epn_enable.__UNIQUE_ID_ddebug264, !65, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/epn.c", i32 688, i32 2}
!69 = !{ptr @ast_vhub_epn_enable.__UNIQUE_ID_ddebug265, !68, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/epn.c", i32 561, i32 2}
!72 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @ast_vhub_epn_disable.__UNIQUE_ID_ddebug258, !71, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/epn.c", i32 433, i32 3}
!76 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @ast_vhub_stop_active_req._entry, !75, !"_entry", i1 false, i1 false}
!80 = !{ptr @ast_vhub_stop_active_req._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/epn.c", i32 758, i32 2}
!83 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @ast_vhub_epn_dispose.__UNIQUE_ID_ddebug266, !82, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/epn.c", i32 340, i32 3}
!87 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @ast_vhub_epn_queue._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @ast_vhub_epn_queue._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/epn.c", i32 342, i32 4}
!92 = !{ptr @ast_vhub_epn_queue._entry.40, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @ast_vhub_epn_queue._entry_ptr.42, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/epn.c", i32 351, i32 3}
!96 = !{ptr @ast_vhub_epn_queue.__UNIQUE_ID_ddebug253, !95, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!97 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/epn.c", i32 377, i32 4}
!99 = !{ptr @ast_vhub_epn_queue._entry.44, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @ast_vhub_epn_queue._entry_ptr.46, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/epn.c", i32 384, i32 2}
!103 = !{ptr @ast_vhub_epn_queue.__UNIQUE_ID_ddebug254, !102, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!104 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/epn.c", i32 385, i32 2}
!106 = !{ptr @ast_vhub_epn_queue.__UNIQUE_ID_ddebug255, !105, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/epn.c", i32 482, i32 3}
!109 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @ast_vhub_epn_dequeue.__UNIQUE_ID_ddebug256, !108, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/epn.c", i32 519, i32 2}
!113 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @ast_vhub_set_halt_and_wedge.__UNIQUE_ID_ddebug257, !112, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!115 = !{i32 1, !"wchar_size", i32 2}
!116 = !{i32 1, !"min_enum_size", i32 4}
!117 = !{i32 8, !"branch-target-enforcement", i32 0}
!118 = !{i32 8, !"sign-return-address", i32 0}
!119 = !{i32 8, !"sign-return-address-all", i32 0}
!120 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!121 = !{i32 7, !"uwtable", i32 1}
!122 = !{i32 7, !"frame-pointer", i32 2}
!123 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!124 = !{i64 5293611}
!125 = !{i64 2154767204}
!126 = !{i64 2154767703}
!127 = !{i64 2148712569, i64 2148712574, i64 2148712587, i64 2148712631, i64 2148712665, i64 2148712686}
!128 = !{i64 2154740060}
!129 = !{!"branch_weights", i32 1, i32 2000}
!130 = !{i64 2154825914}
!131 = !{i64 2154826155}
!132 = !{i64 5293193}
!133 = !{i64 2154826605}
!134 = !{i64 2154733928}
!135 = !{i64 2154762706}
!136 = !{i64 2154766705}
!137 = !{!"branch_weights", i32 2000, i32 1}
!138 = !{i64 2154737905}
!139 = !{i64 2154738342}
!140 = !{i64 2154738817}
!141 = !{i64 2154739309}
!142 = !{i64 2154861033}
!143 = !{i64 2154861439}
!144 = !{i64 2154861856}
!145 = !{i64 2154862264}
!146 = !{i64 2154862670}
!147 = !{i64 2154863161}
!148 = !{i64 2154863644}
!149 = !{i64 2154864123}
!150 = !{i64 2154864606}
!151 = !{i64 2154865041}
!152 = !{i64 2154865481}
!153 = !{i64 2154865971}
!154 = !{i64 2154866643}
!155 = !{i64 2154866865}
!156 = !{i64 2154813590}
!157 = !{i64 2154835929}
!158 = !{i64 2154836616}
!159 = !{i64 2154836838}
!160 = !{i64 2154837243}
!161 = !{i64 2154816073}
!162 = !{i64 2154816484}
!163 = !{i64 2154816934}
