; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/udc/aspeed-vhub/ep0.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/aspeed-vhub/ep0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ast_vhub_ep = type { %struct.usb_ep, %struct.list_head, i32, ptr, ptr, ptr, i32, %union.anon }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.list_head = type { ptr, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, i32, i8, %struct.ast_vhub_req }
%struct.ast_vhub_req = type { %struct.usb_request, %struct.list_head, i32, i32, i8 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.ast_vhub = type { ptr, ptr, i32, %struct.spinlock, %struct.work_struct, ptr, ptr, i32, %struct.ast_vhub_ep, i8, ptr, i32, i32, ptr, i32, i8, i32, %struct.usb_device_descriptor, %struct.ast_vhub_full_cdesc, %struct.usb_hub_descriptor, %struct.list_head, %struct.usb_qualifier_descriptor }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.ast_vhub_full_cdesc = type { %struct.usb_config_descriptor, %struct.usb_interface_descriptor, %struct.usb_endpoint_descriptor }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_hub_descriptor = type <{ i8, i8, i8, i16, i8, i8, %union.anon.70 }>
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { [4 x i8], [4 x i8] }
%struct.usb_qualifier_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.__va_list = type { ptr }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ast_vhub_dev = type { ptr, ptr, i32, ptr, ptr, %struct.usb_gadget, ptr, i8, %struct.ast_vhub_ep, ptr, i32 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/usb/gadget/udc/aspeed-vhub/ep0.c\00", [55 x i8] zeroinitializer }, align 32
@ast_vhub_ep0_handle_setup.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 0, i8 25, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aspeed_vhub\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ast_vhub_ep0_handle_setup\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s:EP%d SETUP packet %02x/%02x/%04x/%04x/%04x [%s] st=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hub\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@ast_vhub_ep0_handle_setup.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.7, i8 0, i8 28, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s:EP%d wrong state\0A\00", [43 x i8] zeroinitializer }, align 32
@ast_vhub_ep0_handle_setup.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.8, i8 0, i8 37, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s:EP%d forwarding to gadget...\0A\00", [63 x i8] zeroinitializer }, align 32
@ast_vhub_ep0_handle_setup.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.9, i8 0, i8 38, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s:EP%d driver returned %d\0A\00", [36 x i8] zeroinitializer }, align 32
@ast_vhub_ep0_handle_setup.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.10, i8 0, i8 39, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s:EP%d no gadget for request !\0A\00", [63 x i8] zeroinitializer }, align 32
@ast_vhub_ep0_handle_setup.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.11, i8 0, i8 40, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s:EP%d stalling\0A\00", [46 x i8] zeroinitializer }, align 32
@ast_vhub_ep0_handle_setup.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.12, i8 0, i8 42, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s:EP%d sending [in] status with no data\0A\00", [54 x i8] zeroinitializer }, align 32
@ast_vhub_ep0_handle_ack.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str, ptr @.str.14, i8 0, i8 72, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ast_vhub_ep0_handle_ack\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s:EP%d ACK status=%08x,state=%d is_in=%d in_ack=%d req=%p\0A\00", [36 x i8] zeroinitializer }, align 32
@ast_vhub_ep0_handle_ack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str, i32 295, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"request present while in TOKEN state\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ast_vhub_ep0_handle_ack._entry_ptr = internal global ptr @ast_vhub_ep0_handle_ack._entry, section ".printk_index", align 4
@ast_vhub_ep0_handle_ack._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str, i32 298, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ack while in TOKEN state\0A\00", [38 x i8] zeroinitializer }, align 32
@ast_vhub_ep0_handle_ack._entry_ptr.20 = internal global ptr @ast_vhub_ep0_handle_ack._entry.18, section ".printk_index", align 4
@ast_vhub_ep0_handle_ack._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.13, ptr @.str, i32 307, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"irq state mismatch\00", [45 x i8] zeroinitializer }, align 32
@ast_vhub_ep0_handle_ack._entry_ptr.23 = internal global ptr @ast_vhub_ep0_handle_ack._entry.21, section ".printk_index", align 4
@ast_vhub_ep0_handle_ack._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.13, ptr @.str, i32 315, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"data phase, no request\0A\00", [40 x i8] zeroinitializer }, align 32
@ast_vhub_ep0_handle_ack._entry_ptr.26 = internal global ptr @ast_vhub_ep0_handle_ack._entry.24, section ".printk_index", align 4
@ast_vhub_ep0_handle_ack._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.13, ptr @.str, i32 329, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"request present while in STATUS state\0A\00", [57 x i8] zeroinitializer }, align 32
@ast_vhub_ep0_handle_ack._entry_ptr.29 = internal global ptr @ast_vhub_ep0_handle_ack._entry.27, section ".printk_index", align 4
@ast_vhub_ep0_handle_ack._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.13, ptr @.str, i32 339, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"status direction mismatch\0A\00", [37 x i8] zeroinitializer }, align 32
@ast_vhub_ep0_handle_ack._entry_ptr.32 = internal global ptr @ast_vhub_ep0_handle_ack._entry.30, section ".printk_index", align 4
@ast_vhub_ep0_ops = internal constant { %struct.usb_ep_ops, [52 x i8] } { %struct.usb_ep_ops { ptr null, ptr null, ptr null, ptr @ast_vhub_alloc_request, ptr @ast_vhub_free_request, ptr @ast_vhub_ep0_queue, ptr @ast_vhub_ep0_dequeue, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep0\00", [28 x i8] zeroinitializer }, align 32
@ast_vhub_ep0_do_send.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str, ptr @.str.35, i8 0, i8 48, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ast_vhub_ep0_do_send\00", [43 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s:EP%d complete send %d/%d\0A\00", [35 x i8] zeroinitializer }, align 32
@ast_vhub_ep0_do_send.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str, ptr @.str.36, i8 0, i8 52, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s:EP%d send chunk=%d last=%d, req->act=%d mp=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@ast_vhub_ep0_do_receive.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.37, ptr @.str, ptr @.str.38, i8 0, i8 61, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ast_vhub_ep0_do_receive\00", [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s:EP%d receive got=%d remain=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@ast_vhub_ep0_do_receive.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.37, ptr @.str, ptr @.str.39, i8 0, i8 62, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s:EP%d receiving too much (ovf: %d) !\0A\00", [56 x i8] zeroinitializer }, align 32
@ast_vhub_ep0_do_receive.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.37, ptr @.str, ptr @.str.40, i8 0, i8 64, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s:EP%d using expected data len instead\0A\00", [55 x i8] zeroinitializer }, align 32
@ast_vhub_ep0_rx_prime.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.41, ptr @.str, ptr @.str.42, i8 0, i8 57, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ast_vhub_ep0_rx_prime\00", [42 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s:EP%d rx prime\0A\00", [46 x i8] zeroinitializer }, align 32
@ast_vhub_ep0_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str, i32 371, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Bogus EP0 request ! u_req=%p\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ast_vhub_ep0_queue\00", [45 x i8] zeroinitializer }, align 32
@ast_vhub_ep0_queue._entry_ptr = internal global ptr @ast_vhub_ep0_queue._entry, section ".printk_index", align 4
@ast_vhub_ep0_queue._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str, i32 374, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"complete=%p internal=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@ast_vhub_ep0_queue._entry_ptr.47 = internal global ptr @ast_vhub_ep0_queue._entry.45, section ".printk_index", align 4
@ast_vhub_ep0_queue._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str, i32 389, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Request with no buffer !\0A\00", [38 x i8] zeroinitializer }, align 32
@ast_vhub_ep0_queue._entry_ptr.50 = internal global ptr @ast_vhub_ep0_queue._entry.48, section ".printk_index", align 4
@ast_vhub_ep0_queue.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.44, ptr @.str, ptr @.str.51, i8 0, i8 98, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s:EP%d enqueue req @%p\0A\00", [39 x i8] zeroinitializer }, align 32
@ast_vhub_ep0_queue.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.44, ptr @.str, ptr @.str.52, i8 0, i8 99, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s:EP%d   l=%d zero=%d noshort=%d is_in=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@ast_vhub_ep0_queue._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.44, ptr @.str, i32 410, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EP0: Request in wrong state\0A\00", [35 x i8] zeroinitializer }, align 32
@ast_vhub_ep0_queue._entry_ptr.55 = internal global ptr @ast_vhub_ep0_queue._entry.53, section ".printk_index", align 4
@ast_vhub_ep0_queue.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.44, ptr @.str, ptr @.str.56, i8 0, i8 103, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s:EP%d EP0: list_empty=%d state=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@ast_vhub_ep0_queue.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.44, ptr @.str, ptr @.str.57, i8 0, i8 106, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s:EP%d 0-length rx completion\0A\00", [32 x i8] zeroinitializer }, align 32
@ast_vhub_ep0_dequeue.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.58, ptr @.str, ptr @.str.59, i8 0, i8 113, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ast_vhub_ep0_dequeue\00", [43 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s:EP%d dequeue req @%p\0A\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 7, i64 0, i64 32]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4294967295]
@__sancov_gen_cov_switch_values.62 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 35, i32 6 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 95, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 115, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 151, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 155, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 157, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 163, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 170, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 288, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 295, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 298, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 307, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 315, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 329, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 339, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"ast_vhub_ep0_ops\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 473, i32 32 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 497, i32 16 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 191, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 209, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 245, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 249, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 257, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 230, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 371, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 373, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 389, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 393, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 394, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 410, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 411, i32 10 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 425, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.227 = private constant [44 x i8] c"../drivers/usb/gadget/udc/aspeed-vhub/ep0.c\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 454, i32 3 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @ast_vhub_ep0_handle_ack._entry, ptr @ast_vhub_ep0_handle_ack._entry.18, ptr @ast_vhub_ep0_handle_ack._entry.21, ptr @ast_vhub_ep0_handle_ack._entry.24, ptr @ast_vhub_ep0_handle_ack._entry.27, ptr @ast_vhub_ep0_handle_ack._entry.30, ptr @ast_vhub_ep0_handle_ack._entry_ptr, ptr @ast_vhub_ep0_handle_ack._entry_ptr.20, ptr @ast_vhub_ep0_handle_ack._entry_ptr.23, ptr @ast_vhub_ep0_handle_ack._entry_ptr.26, ptr @ast_vhub_ep0_handle_ack._entry_ptr.29, ptr @ast_vhub_ep0_handle_ack._entry_ptr.32, ptr @ast_vhub_ep0_queue._entry, ptr @ast_vhub_ep0_queue._entry.45, ptr @ast_vhub_ep0_queue._entry.48, ptr @ast_vhub_ep0_queue._entry.53, ptr @ast_vhub_ep0_queue._entry_ptr, ptr @ast_vhub_ep0_queue._entry_ptr.47, ptr @ast_vhub_ep0_queue._entry_ptr.50, ptr @ast_vhub_ep0_queue._entry_ptr.55, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @ast_vhub_ep0_ops, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_vhub_ep0_handle_ack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_vhub_ep0_handle_ack._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_vhub_ep0_handle_ack._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_vhub_ep0_handle_ack._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_vhub_ep0_handle_ack._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_vhub_ep0_handle_ack._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_vhub_ep0_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_vhub_ep0_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_vhub_ep0_queue._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_vhub_ep0_queue._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_vhub_ep0_queue._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ast_vhub_reply(ptr noundef %ep, ptr noundef %ptr, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %req1 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 4
  %d_idx = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 2
  %0 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %d_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end23, label %do.end, !prof !125

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 35, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  %dir_in = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 3
  %2 = ptrtoint ptr %dir_in to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dir_in, align 4, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool25.not = icmp eq i8 %3, 0
  br i1 %tobool25.not, label %do.end43, label %if.end59, !prof !127

do.end43:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 37, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end59:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %len)
  %cmp61 = icmp sgt i32 %len, 64
  br i1 %cmp61, label %do.end77, label %if.end93, !prof !127

do.end77:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 39, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end93:                                         ; preds = %if.end59
  %status = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 4, i32 0, i32 11
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %5)
  %cmp95 = icmp eq i32 %5, -115
  br i1 %cmp95, label %do.end111, label %if.end127, !prof !127

do.end111:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end127:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %req1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ptr, ptr %req1, align 4
  %length = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 4, i32 0, i32 1
  %7 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %len, ptr %length, align 4
  %complete = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 4, i32 0, i32 7
  %8 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %complete, align 4
  %zero = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 4, i32 0, i32 6
  %9 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load = load i32, ptr %zero, align 4
  %bf.set = or i32 %bf.load, 8192
  store i32 %bf.set, ptr %zero, align 4
  %vhub = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %10 = ptrtoint ptr %vhub to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vhub, align 4
  %lock = getelementptr inbounds %struct.ast_vhub, ptr %11, i32 0, i32 3
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  %ops = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 2
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %queue = getelementptr inbounds %struct.usb_ep_ops, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %queue, align 4
  %call = tail call i32 %15(ptr noundef %ep, ptr noundef %req1, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool130.not = icmp eq i32 %call, 0
  %. = select i1 %tobool130.not, i32 1, i32 -1
  %16 = ptrtoint ptr %vhub to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vhub, align 4
  %lock134 = getelementptr inbounds %struct.ast_vhub, ptr %17, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock134) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end127, %do.end111, %do.end77, %do.end43, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %do.end43 ], [ -1, %do.end77 ], [ -1, %do.end111 ], [ %., %if.end127 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ast_vhub_simple_reply(ptr noundef %ep, i32 noundef %len, ...) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 5
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #6
  %2 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !128
  call void @llvm.va_start(ptr nonnull %args)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp5.not = icmp eq i32 %len, 0
  br i1 %cmp5.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %3 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %3)
  %argp.cur = load ptr, ptr %args, align 4
  %argp.next = getelementptr inbounds i8, ptr %argp.cur, i32 4
  store ptr %argp.next, ptr %args, align 4
  %4 = ptrtoint ptr %argp.cur to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %argp.cur, align 4
  %conv = trunc i32 %5 to i8
  %arrayidx = getelementptr i8, ptr %1, i32 %i.06
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %arrayidx, align 1
  %inc = add nuw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.va_end(ptr nonnull %args)
  %call = call i32 @ast_vhub_reply(ptr noundef %ep, ptr noundef null, i32 noundef %len)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #6
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ast_vhub_ep0_handle_setup(ptr noundef %ep) local_unnamed_addr #0 align 64 {
entry:
  %crq = alloca %struct.usb_ctrlrequest, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %crq) #6
  %0 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %crq, i32 0, i32 1
  %1 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %crq, i32 0, i32 2
  %2 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %crq, i32 0, i32 3
  %3 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %crq, i32 0, i32 4
  %d_idx = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 2
  %4 = ptrtoint ptr %crq to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %crq, align 8
  %5 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %d_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %if.end21, label %do.end, !prof !125

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 86, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end21:                                         ; preds = %entry
  %7 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7
  %setup = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 1
  %8 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %setup, align 4
  call void @mmiocpy(ptr noundef nonnull %crq, ptr noundef %9, i32 noundef 8) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_ep0_handle_setup.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_ep0_handle_setup, %do.end51)) #6
          to label %if.then34 [label %do.end51], !srcloc !129

if.then34:                                        ; preds = %if.end21
  %vhub = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %10 = ptrtoint ptr %vhub to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vhub, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  %dev35 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 3
  %14 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev35, align 4
  %tobool36.not = icmp eq ptr %15, null
  br i1 %tobool36.not, label %if.then34.cond.end_crit_edge, label %cond.true

if.then34.cond.end_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.ast_vhub_dev, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then34.cond.end_crit_edge
  %cond = phi ptr [ %17, %cond.true ], [ @.str.4, %if.then34.cond.end_crit_edge ]
  %18 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %d_idx, align 4
  %20 = ptrtoint ptr %crq to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %crq, align 8
  %conv = zext i8 %21 to i32
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %0, align 1
  %conv39 = zext i8 %23 to i32
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %1, align 2
  %26 = call i16 @llvm.bswap.i16(i16 %25)
  %conv40 = zext i16 %26 to i32
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %2, align 4
  %29 = call i16 @llvm.bswap.i16(i16 %28)
  %conv41 = zext i16 %29 to i32
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %3, align 2
  %32 = call i16 @llvm.bswap.i16(i16 %31)
  %conv42 = zext i16 %32 to i32
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool45.not = icmp eq i32 %and, 0
  %cond46 = select i1 %tobool45.not, ptr @.str.6, ptr @.str.5
  %state = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 2
  %33 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %state, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_ep0_handle_setup.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef %cond, i32 noundef %19, i32 noundef %conv, i32 noundef %conv39, i32 noundef %conv40, i32 noundef %conv41, i32 noundef %conv42, ptr noundef nonnull %cond46, i32 noundef %34) #6
  br label %do.end51

do.end51:                                         ; preds = %cond.end, %if.end21
  %state52 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 2
  %35 = ptrtoint ptr %state52 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %state52, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i32 %36, label %do.body60 [
    i32 0, label %do.end51.if.end92_crit_edge
    i32 3, label %do.end51.if.end92_crit_edge460
  ]

do.end51.if.end92_crit_edge460:                   ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

do.end51.if.end92_crit_edge:                      ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

do.body60:                                        ; preds = %do.end51
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_ep0_handle_setup.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_ep0_handle_setup, %do.end91)) #6
          to label %if.then74 [label %do.end91], !srcloc !129

if.then74:                                        ; preds = %do.body60
  %vhub75 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %38 = ptrtoint ptr %vhub75 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vhub75, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %dev77 = getelementptr inbounds %struct.platform_device, ptr %41, i32 0, i32 3
  %dev78 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 3
  %42 = ptrtoint ptr %dev78 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev78, align 4
  %tobool79.not = icmp eq ptr %43, null
  br i1 %tobool79.not, label %if.then74.cond.end84_crit_edge, label %cond.true80

if.then74.cond.end84_crit_edge:                   ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end84

cond.true80:                                      ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #8
  %name82 = getelementptr inbounds %struct.ast_vhub_dev, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %name82 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %name82, align 4
  br label %cond.end84

cond.end84:                                       ; preds = %cond.true80, %if.then74.cond.end84_crit_edge
  %cond85 = phi ptr [ %45, %cond.true80 ], [ @.str.4, %if.then74.cond.end84_crit_edge ]
  %46 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %d_idx, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_ep0_handle_setup.__UNIQUE_ID_ddebug240, ptr noundef %dev77, ptr noundef nonnull @.str.7, ptr noundef %cond85, i32 noundef %47) #6
  br label %do.end91

do.end91:                                         ; preds = %cond.end84, %do.body60
  call void @ast_vhub_nuke(ptr noundef %ep, i32 noundef -5) #6
  br label %if.end92

if.end92:                                         ; preds = %do.end91, %do.end51.if.end92_crit_edge, %do.end51.if.end92_crit_edge460
  %48 = ptrtoint ptr %state52 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %state52, align 4
  %49 = ptrtoint ptr %crq to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %crq, align 8
  %dir_in = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 3
  %.lobit = lshr i8 %50, 7
  %51 = ptrtoint ptr %dir_in to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %.lobit, ptr %dir_in, align 4
  %dev103 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 3
  %52 = ptrtoint ptr %dev103 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev103, align 4
  %cmp104 = icmp eq ptr %53, null
  br i1 %cmp104, label %if.then106, label %if.else124

if.then106:                                       ; preds = %if.end92
  %54 = trunc i8 %50 to i7
  %trunc = and i7 %54, -32
  %55 = zext i7 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.60)
  switch i7 %trunc, label %if.then106.do.body290_crit_edge [
    i7 0, label %if.then112
    i7 32, label %if.then119
  ]

if.then106.do.body290_crit_edge:                  ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body290

if.then112:                                       ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #8
  %call113 = call i32 @ast_vhub_std_hub_request(ptr noundef %ep, ptr noundef nonnull %crq) #6
  br label %if.end133

if.then119:                                       ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #8
  %call120 = call i32 @ast_vhub_class_hub_request(ptr noundef %ep, ptr noundef nonnull %crq) #6
  br label %if.end133

if.else124:                                       ; preds = %if.end92
  %56 = and i8 %50, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp128 = icmp eq i8 %56, 0
  br i1 %cmp128, label %if.then130, label %if.else124.if.end172.critedge_crit_edge

if.else124.if.end172.critedge_crit_edge:          ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end172.critedge

if.then130:                                       ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #8
  %call131 = call i32 @ast_vhub_std_dev_request(ptr noundef %ep, ptr noundef nonnull %crq) #6
  br label %if.end133

if.end133:                                        ; preds = %if.then130, %if.then119, %if.then112
  %std_req_rc.0 = phi i32 [ %call113, %if.then112 ], [ %call120, %if.then119 ], [ %call131, %if.then130 ]
  %57 = zext i32 %std_req_rc.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %std_req_rc.0, label %sw.epilog [
    i32 0, label %do.body328
    i32 -1, label %if.end133.do.body290_crit_edge
    i32 1, label %if.end133.cleanup_crit_edge
  ]

if.end133.cleanup_crit_edge:                      ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end133.do.body290_crit_edge:                   ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body290

sw.epilog:                                        ; preds = %if.end133
  %58 = ptrtoint ptr %dev103 to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pr = load ptr, ptr %dev103, align 4
  %tobool138.not = icmp eq ptr %.pr, null
  br i1 %tobool138.not, label %do.end156, label %sw.epilog.if.end172.critedge_crit_edge, !prof !127

sw.epilog.if.end172.critedge_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end172.critedge

do.end156:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 148, i32 noundef 9, ptr noundef null) #6
  br label %do.body290

if.end172.critedge:                               ; preds = %sw.epilog.if.end172.critedge_crit_edge, %if.else124.if.end172.critedge_crit_edge
  %59 = phi ptr [ %.pr, %sw.epilog.if.end172.critedge_crit_edge ], [ %53, %if.else124.if.end172.critedge_crit_edge ]
  %driver = getelementptr inbounds %struct.ast_vhub_dev, ptr %59, i32 0, i32 6
  %60 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %driver, align 8
  %tobool174.not = icmp eq ptr %61, null
  br i1 %tobool174.not, label %do.body252, label %do.body177

do.body177:                                       ; preds = %if.end172.critedge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_ep0_handle_setup.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_ep0_handle_setup, %do.end208)) #6
          to label %if.then191 [label %do.end208], !srcloc !129

if.then191:                                       ; preds = %do.body177
  %vhub192 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %62 = ptrtoint ptr %vhub192 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %vhub192, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %dev194 = getelementptr inbounds %struct.platform_device, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %dev103 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev103, align 4
  %tobool196.not = icmp eq ptr %67, null
  br i1 %tobool196.not, label %if.then191.cond.end201_crit_edge, label %cond.true197

if.then191.cond.end201_crit_edge:                 ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end201

cond.true197:                                     ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #8
  %name199 = getelementptr inbounds %struct.ast_vhub_dev, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %name199 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %name199, align 4
  br label %cond.end201

cond.end201:                                      ; preds = %cond.true197, %if.then191.cond.end201_crit_edge
  %cond202 = phi ptr [ %69, %cond.true197 ], [ @.str.4, %if.then191.cond.end201_crit_edge ]
  %70 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %d_idx, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_ep0_handle_setup.__UNIQUE_ID_ddebug241, ptr noundef %dev194, ptr noundef nonnull @.str.8, ptr noundef %cond202, i32 noundef %71) #6
  br label %do.end208

do.end208:                                        ; preds = %cond.end201, %do.body177
  %vhub209 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %72 = ptrtoint ptr %vhub209 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %vhub209, align 4
  %lock = getelementptr inbounds %struct.ast_vhub, ptr %73, i32 0, i32 3
  call void @_raw_spin_unlock(ptr noundef %lock) #6
  %74 = ptrtoint ptr %dev103 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev103, align 4
  %driver211 = getelementptr inbounds %struct.ast_vhub_dev, ptr %75, i32 0, i32 6
  %76 = ptrtoint ptr %driver211 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %driver211, align 8
  %setup212 = getelementptr inbounds %struct.usb_gadget_driver, ptr %77, i32 0, i32 4
  %78 = ptrtoint ptr %setup212 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %setup212, align 4
  %gadget = getelementptr inbounds %struct.ast_vhub_dev, ptr %75, i32 0, i32 5
  %call214 = call i32 %79(ptr noundef %gadget, ptr noundef nonnull %crq) #6
  %80 = ptrtoint ptr %vhub209 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %vhub209, align 4
  %lock216 = getelementptr inbounds %struct.ast_vhub, ptr %81, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %lock216) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_ep0_handle_setup.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_ep0_handle_setup, %if.end284)) #6
          to label %if.then232 [label %if.end284], !srcloc !129

if.then232:                                       ; preds = %do.end208
  %82 = ptrtoint ptr %vhub209 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %vhub209, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %dev235 = getelementptr inbounds %struct.platform_device, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %dev103 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev103, align 4
  %tobool237.not = icmp eq ptr %87, null
  br i1 %tobool237.not, label %if.then232.cond.end242_crit_edge, label %cond.true238

if.then232.cond.end242_crit_edge:                 ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end242

cond.true238:                                     ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #8
  %name240 = getelementptr inbounds %struct.ast_vhub_dev, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %name240 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %name240, align 4
  br label %cond.end242

cond.end242:                                      ; preds = %cond.true238, %if.then232.cond.end242_crit_edge
  %cond243 = phi ptr [ %89, %cond.true238 ], [ @.str.4, %if.then232.cond.end242_crit_edge ]
  %90 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %d_idx, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_ep0_handle_setup.__UNIQUE_ID_ddebug242, ptr noundef %dev235, ptr noundef nonnull @.str.9, ptr noundef %cond243, i32 noundef %91, i32 noundef %call214) #6
  br label %if.end284

do.body252:                                       ; preds = %if.end172.critedge
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_ep0_handle_setup.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_ep0_handle_setup, %do.body290)) #6
          to label %if.then266 [label %do.body290], !srcloc !129

if.then266:                                       ; preds = %do.body252
  %vhub267 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %92 = ptrtoint ptr %vhub267 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %vhub267, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 4
  %dev269 = getelementptr inbounds %struct.platform_device, ptr %95, i32 0, i32 3
  %96 = ptrtoint ptr %dev103 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev103, align 4
  %tobool271.not = icmp eq ptr %97, null
  br i1 %tobool271.not, label %if.then266.cond.end276_crit_edge, label %cond.true272

if.then266.cond.end276_crit_edge:                 ; preds = %if.then266
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end276

cond.true272:                                     ; preds = %if.then266
  call void @__sanitizer_cov_trace_pc() #8
  %name274 = getelementptr inbounds %struct.ast_vhub_dev, ptr %97, i32 0, i32 3
  %98 = ptrtoint ptr %name274 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %name274, align 4
  br label %cond.end276

cond.end276:                                      ; preds = %cond.true272, %if.then266.cond.end276_crit_edge
  %cond277 = phi ptr [ %99, %cond.true272 ], [ @.str.4, %if.then266.cond.end276_crit_edge ]
  %100 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %d_idx, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_ep0_handle_setup.__UNIQUE_ID_ddebug243, ptr noundef %dev269, ptr noundef nonnull @.str.10, ptr noundef %cond277, i32 noundef %101) #6
  br label %do.body290

if.end284:                                        ; preds = %cond.end242, %do.end208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call214)
  %cmp285 = icmp sgt i32 %call214, -1
  br i1 %cmp285, label %if.end284.cleanup_crit_edge, label %if.end284.do.body290_crit_edge

if.end284.do.body290_crit_edge:                   ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body290

if.end284.cleanup_crit_edge:                      ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body290:                                       ; preds = %if.end284.do.body290_crit_edge, %cond.end276, %do.body252, %do.end156, %if.end133.do.body290_crit_edge, %if.then106.do.body290_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_ep0_handle_setup.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_ep0_handle_setup, %do.body322)) #6
          to label %if.then304 [label %do.body322], !srcloc !129

if.then304:                                       ; preds = %do.body290
  %vhub305 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %102 = ptrtoint ptr %vhub305 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %vhub305, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  %dev307 = getelementptr inbounds %struct.platform_device, ptr %105, i32 0, i32 3
  %106 = ptrtoint ptr %dev103 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev103, align 4
  %tobool309.not = icmp eq ptr %107, null
  br i1 %tobool309.not, label %if.then304.cond.end314_crit_edge, label %cond.true310

if.then304.cond.end314_crit_edge:                 ; preds = %if.then304
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end314

cond.true310:                                     ; preds = %if.then304
  call void @__sanitizer_cov_trace_pc() #8
  %name312 = getelementptr inbounds %struct.ast_vhub_dev, ptr %107, i32 0, i32 3
  %108 = ptrtoint ptr %name312 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %name312, align 4
  br label %cond.end314

cond.end314:                                      ; preds = %cond.true310, %if.then304.cond.end314_crit_edge
  %cond315 = phi ptr [ %109, %cond.true310 ], [ @.str.4, %if.then304.cond.end314_crit_edge ]
  %110 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %d_idx, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_ep0_handle_setup.__UNIQUE_ID_ddebug244, ptr noundef %dev307, ptr noundef nonnull @.str.11, ptr noundef %cond315, i32 noundef %111) #6
  br label %do.body322

do.body322:                                       ; preds = %cond.end314, %do.body290
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !130
  call void @arm_heavy_mb() #6
  %112 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %7, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 16777216) #6, !srcloc !131
  %114 = ptrtoint ptr %state52 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 3, ptr %state52, align 4
  %115 = ptrtoint ptr %dir_in to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %dir_in, align 4
  br label %cleanup

do.body328:                                       ; preds = %if.end133
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_ep0_handle_setup.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_ep0_handle_setup, %do.body360)) #6
          to label %if.then342 [label %do.body360], !srcloc !129

if.then342:                                       ; preds = %do.body328
  %vhub343 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %116 = ptrtoint ptr %vhub343 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %vhub343, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 4
  %dev345 = getelementptr inbounds %struct.platform_device, ptr %119, i32 0, i32 3
  %120 = ptrtoint ptr %dev103 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev103, align 4
  %tobool347.not = icmp eq ptr %121, null
  br i1 %tobool347.not, label %if.then342.cond.end352_crit_edge, label %cond.true348

if.then342.cond.end352_crit_edge:                 ; preds = %if.then342
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end352

cond.true348:                                     ; preds = %if.then342
  call void @__sanitizer_cov_trace_pc() #8
  %name350 = getelementptr inbounds %struct.ast_vhub_dev, ptr %121, i32 0, i32 3
  %122 = ptrtoint ptr %name350 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %name350, align 4
  br label %cond.end352

cond.end352:                                      ; preds = %cond.true348, %if.then342.cond.end352_crit_edge
  %cond353 = phi ptr [ %123, %cond.true348 ], [ @.str.4, %if.then342.cond.end352_crit_edge ]
  %124 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %d_idx, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_ep0_handle_setup.__UNIQUE_ID_ddebug245, ptr noundef %dev345, ptr noundef nonnull @.str.12, ptr noundef %cond353, i32 noundef %125) #6
  br label %do.body360

do.body360:                                       ; preds = %cond.end352, %do.body328
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !132
  call void @arm_heavy_mb() #6
  %126 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %7, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 33554432) #6, !srcloc !131
  %128 = ptrtoint ptr %state52 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 2, ptr %state52, align 4
  %129 = ptrtoint ptr %dir_in to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 0, ptr %dir_in, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body360, %do.body322, %if.end284.cleanup_crit_edge, %if.end133.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %crq) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_nuke(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ast_vhub_std_hub_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ast_vhub_class_hub_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ast_vhub_std_dev_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ast_vhub_ep0_handle_ack(ptr noundef %ep, i1 noundef zeroext %in_ack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vhub1 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %0 = ptrtoint ptr %vhub1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vhub1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %4 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !133
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !134
  %queue = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 1
  %9 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %queue, align 4
  %cmp.not = icmp eq ptr %10, %queue
  %add.ptr = getelementptr i8, ptr %10, i32 -56
  %spec.select = select i1 %cmp.not, ptr null, ptr %add.ptr
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_ep0_handle_ack.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_ep0_handle_ack, %do.end31)) #6
          to label %if.then [label %do.end31], !srcloc !129

if.then:                                          ; preds = %entry
  %11 = ptrtoint ptr %vhub1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vhub1, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %dev17 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  %dev18 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 3
  %15 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev18, align 4
  %tobool19.not = icmp eq ptr %16, null
  br i1 %tobool19.not, label %if.then.cond.end23_crit_edge, label %cond.true20

if.then.cond.end23_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end23

cond.true20:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.ast_vhub_dev, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name, align 4
  br label %cond.end23

cond.end23:                                       ; preds = %cond.true20, %if.then.cond.end23_crit_edge
  %cond24 = phi ptr [ %18, %cond.true20 ], [ @.str.4, %if.then.cond.end23_crit_edge ]
  %d_idx = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 2
  %19 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %d_idx, align 4
  %state = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 2
  %21 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state, align 4
  %dir_in = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 3
  %23 = ptrtoint ptr %dir_in to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %dir_in, align 4, !range !126
  %25 = zext i8 %24 to i32
  %conv27 = zext i1 %in_ack to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_ep0_handle_ack.__UNIQUE_ID_ddebug253, ptr noundef %dev17, ptr noundef nonnull @.str.14, ptr noundef %cond24, i32 noundef %20, i32 noundef %8, i32 noundef %22, i32 noundef %25, i32 noundef %conv27, ptr noundef %spec.select) #6
  br label %do.end31

do.end31:                                         ; preds = %cond.end23, %entry
  %state32 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 2
  %26 = ptrtoint ptr %state32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state32, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %27, label %do.end31.if.end105_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb42
    i32 2, label %sw.bb76
    i32 3, label %sw.bb95
  ]

do.end31.if.end105_crit_edge:                     ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105

sw.bb:                                            ; preds = %do.end31
  %tobool33.not = icmp eq ptr %spec.select, null
  br i1 %tobool33.not, label %sw.bb.do.body98_crit_edge, label %do.end37

sw.bb.do.body98_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body98

do.end37:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.15) #9
  tail call void @ast_vhub_nuke(ptr noundef %ep, i32 noundef -22) #6
  br label %do.body98

sw.bb42:                                          ; preds = %do.end31
  %dir_in43 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 3
  %29 = ptrtoint ptr %dir_in43 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %dir_in43, align 4, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool44.not = icmp eq i8 %30, 0
  %and = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool46.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool44.not, i1 true, i1 %tobool46.not
  br i1 %or.cond, label %lor.lhs.false, label %sw.bb42.do.end63_crit_edge

sw.bb42.do.end63_crit_edge:                       ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end63

lor.lhs.false:                                    ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool48.not = icmp ne i8 %30, 0
  %and50 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %or.cond150 = select i1 %tobool48.not, i1 true, i1 %tobool51.not
  %31 = zext i1 %in_ack to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %31)
  %cmp58.not = icmp eq i8 %30, %31
  %or.cond155 = and i1 %cmp58.not, %or.cond150
  br i1 %or.cond155, label %if.end64, label %lor.lhs.false.do.end63_crit_edge

lor.lhs.false.do.end63_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end63

do.end63:                                         ; preds = %lor.lhs.false.do.end63_crit_edge, %sw.bb42.do.end63_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.22) #9
  br label %if.end105

if.end64:                                         ; preds = %lor.lhs.false
  %tobool65.not = icmp eq ptr %spec.select, null
  br i1 %tobool65.not, label %if.end64.do.body98_crit_edge, label %if.end70

if.end64.do.body98_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body98

if.end70:                                         ; preds = %if.end64
  br i1 %tobool44.not, label %if.else, label %if.then73

if.then73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @ast_vhub_ep0_do_send(ptr noundef %ep, ptr noundef nonnull %spec.select)
  br label %cleanup

if.else:                                          ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  %shr = lshr i32 %8, 16
  %and74 = and i32 %shr, 127
  tail call fastcc void @ast_vhub_ep0_do_receive(ptr noundef %ep, ptr noundef nonnull %spec.select, i32 noundef %and74)
  br label %cleanup

sw.bb76:                                          ; preds = %do.end31
  %tobool77.not = icmp eq ptr %spec.select, null
  br i1 %tobool77.not, label %sw.bb76.if.end82_crit_edge, label %do.end81

sw.bb76.if.end82_crit_edge:                       ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

do.end81:                                         ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.28) #9
  tail call void @ast_vhub_nuke(ptr noundef %ep, i32 noundef -22) #6
  br label %if.end82

if.end82:                                         ; preds = %do.end81, %sw.bb76.if.end82_crit_edge
  %dir_in83 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 3
  %32 = ptrtoint ptr %dir_in83 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %dir_in83, align 4, !range !126
  %34 = zext i1 %in_ack to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %34)
  %cmp88 = icmp eq i8 %33, %34
  br i1 %cmp88, label %if.end82.do.body98_crit_edge, label %if.end82.if.end105_crit_edge

if.end82.if.end105_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105

if.end82.do.body98_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body98

sw.bb95:                                          ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ast_vhub_nuke(ptr noundef %ep, i32 noundef -5) #6
  br label %if.end105

do.body98:                                        ; preds = %if.end82.do.body98_crit_edge, %if.end64.do.body98_crit_edge, %do.end37, %sw.bb.do.body98_crit_edge
  %.str.19.sink = phi ptr [ @.str.19, %sw.bb.do.body98_crit_edge ], [ @.str.19, %do.end37 ], [ @.str.25, %if.end64.do.body98_crit_edge ], [ @.str.31, %if.end82.do.body98_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull %.str.19.sink) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !135
  tail call void @arm_heavy_mb() #6
  %35 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 16777216) #6, !srcloc !131
  br label %if.end105

if.end105:                                        ; preds = %do.body98, %sw.bb95, %if.end82.if.end105_crit_edge, %do.end63, %do.end31.if.end105_crit_edge
  %storemerge = phi i32 [ 3, %do.body98 ], [ 0, %if.end82.if.end105_crit_edge ], [ 0, %do.end31.if.end105_crit_edge ], [ 0, %do.end63 ], [ 0, %sw.bb95 ]
  %37 = ptrtoint ptr %state32 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %storemerge, ptr %state32, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end105, %if.else, %if.then73
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ast_vhub_ep0_do_send(ptr noundef %ep, ptr noundef %req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %last_desc = getelementptr inbounds %struct.ast_vhub_req, ptr %req, i32 0, i32 3
  %2 = ptrtoint ptr %last_desc to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %last_desc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %last_desc2 = getelementptr inbounds %struct.ast_vhub_req, ptr %req, i32 0, i32 3
  %3 = ptrtoint ptr %last_desc2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %last_desc2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp3 = icmp sgt i32 %4, -1
  br i1 %cmp3, label %do.body5, label %if.end22

do.body5:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_ep0_do_send.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_ep0_do_send, %do.end18)) #6
          to label %if.then9 [label %do.end18], !srcloc !129

if.then9:                                         ; preds = %do.body5
  %vhub = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %5 = ptrtoint ptr %vhub to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vhub, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  %dev10 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 3
  %9 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev10, align 4
  %tobool11.not = icmp eq ptr %10, null
  br i1 %tobool11.not, label %if.then9.cond.end_crit_edge, label %cond.true

if.then9.cond.end_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.ast_vhub_dev, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then9.cond.end_crit_edge
  %cond = phi ptr [ %12, %cond.true ], [ @.str.4, %if.then9.cond.end_crit_edge ]
  %d_idx = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 2
  %13 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %d_idx, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %15 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %actual, align 4
  %17 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_ep0_do_send.__UNIQUE_ID_ddebug246, ptr noundef %dev, ptr noundef nonnull @.str.35, ptr noundef %cond, i32 noundef %14, i32 noundef %16, i32 noundef %18) #6
  br label %do.end18

do.end18:                                         ; preds = %cond.end, %do.body5
  %19 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7
  %state = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 2
  %20 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %state, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !136
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %19, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 67108864) #6, !srcloc !131
  tail call void @ast_vhub_done(ptr noundef %ep, ptr noundef %req, i32 noundef 0) #6
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %actual26 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %23 = ptrtoint ptr %actual26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %actual26, align 4
  %sub = sub i32 %1, %24
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %25 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %25, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %bf.cast)
  %cmp28 = icmp ugt i32 %sub, %bf.cast
  br i1 %cmp28, label %if.end22.do.body50_crit_edge, label %if.else

if.end22.do.body50_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body50

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %bf.cast)
  %cmp40 = icmp ult i32 %sub, %bf.cast
  br i1 %cmp40, label %if.else.if.then45_crit_edge, label %lor.lhs.false

if.else.if.then45_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45

lor.lhs.false:                                    ; preds = %if.else
  %zero = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  %26 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %26)
  %bf.load42 = load i32, ptr %zero, align 4
  %27 = and i32 %bf.load42, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool44.not = icmp eq i32 %27, 0
  br i1 %tobool44.not, label %lor.lhs.false.if.then45_crit_edge, label %lor.lhs.false.do.body50_crit_edge

lor.lhs.false.do.body50_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body50

lor.lhs.false.if.then45_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45

if.then45:                                        ; preds = %lor.lhs.false.if.then45_crit_edge, %if.else.if.then45_crit_edge
  %28 = ptrtoint ptr %last_desc2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %last_desc2, align 4
  br label %do.body50

do.body50:                                        ; preds = %if.then45, %lor.lhs.false.do.body50_crit_edge, %if.end22.do.body50_crit_edge
  %chunk.0 = phi i32 [ %sub, %if.then45 ], [ %sub, %lor.lhs.false.do.body50_crit_edge ], [ %bf.cast, %if.end22.do.body50_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_ep0_do_send.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_ep0_do_send, %do.end89)) #6
          to label %if.then64 [label %do.end89], !srcloc !129

if.then64:                                        ; preds = %do.body50
  %vhub65 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %29 = ptrtoint ptr %vhub65 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vhub65, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %dev67 = getelementptr inbounds %struct.platform_device, ptr %32, i32 0, i32 3
  %dev68 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 3
  %33 = ptrtoint ptr %dev68 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev68, align 4
  %tobool69.not = icmp eq ptr %34, null
  br i1 %tobool69.not, label %if.then64.cond.end74_crit_edge, label %cond.true70

if.then64.cond.end74_crit_edge:                   ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end74

cond.true70:                                      ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  %name72 = getelementptr inbounds %struct.ast_vhub_dev, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %name72 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name72, align 4
  br label %cond.end74

cond.end74:                                       ; preds = %cond.true70, %if.then64.cond.end74_crit_edge
  %cond75 = phi ptr [ %36, %cond.true70 ], [ @.str.4, %if.then64.cond.end74_crit_edge ]
  %d_idx76 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 2
  %37 = ptrtoint ptr %d_idx76 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %d_idx76, align 4
  %39 = ptrtoint ptr %last_desc2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %last_desc2, align 4
  %41 = ptrtoint ptr %actual26 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %actual26, align 4
  %43 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %43, i32 7)
  %bf.load82 = load i56, ptr %maxpacket, align 2
  %bf.lshr83 = lshr i56 %bf.load82, 40
  %bf.cast84 = trunc i56 %bf.lshr83 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_ep0_do_send.__UNIQUE_ID_ddebug247, ptr noundef %dev67, ptr noundef nonnull @.str.36, ptr noundef %cond75, i32 noundef %38, i32 noundef %chunk.0, i32 noundef %40, i32 noundef %42, i32 noundef %bf.cast84) #6
  br label %do.end89

do.end89:                                         ; preds = %cond.end74, %do.body50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chunk.0)
  %tobool90.not = icmp eq i32 %chunk.0, 0
  br i1 %tobool90.not, label %do.end89.if.end99_crit_edge, label %land.lhs.true

do.end89.if.end99_crit_edge:                      ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end99

land.lhs.true:                                    ; preds = %do.end89
  %44 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %req, align 4
  %tobool92.not = icmp eq ptr %45, null
  br i1 %tobool92.not, label %land.lhs.true.if.end99_crit_edge, label %if.then93

land.lhs.true.if.end99_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end99

if.then93:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %buf94 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 5
  %46 = ptrtoint ptr %buf94 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %buf94, align 4
  %48 = ptrtoint ptr %actual26 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %actual26, align 4
  %add.ptr = getelementptr i8, ptr %45, i32 %49
  %50 = call ptr @memcpy(ptr %47, ptr %add.ptr, i32 %chunk.0)
  br label %if.end99

if.end99:                                         ; preds = %if.then93, %land.lhs.true.if.end99_crit_edge, %do.end89.if.end99_crit_edge
  %buf100 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 5
  %51 = ptrtoint ptr %buf100 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %buf100, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !137
  tail call void @arm_heavy_mb() #6
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #6, !srcloc !133
  %and = shl i32 %chunk.0, 8
  %shl = and i32 %and, 32512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !138
  tail call void @arm_heavy_mb() #6
  %54 = shl nuw nsw i32 %shl, 8
  %55 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %54) #6, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !139
  tail call void @arm_heavy_mb() #6
  %or = or i32 %shl, 2
  %58 = tail call i32 @llvm.bswap.i32(i32 %or)
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %55, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #6, !srcloc !131
  %61 = ptrtoint ptr %actual26 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %actual26, align 4
  %add = add i32 %62, %chunk.0
  store i32 %add, ptr %actual26, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end99, %do.end18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ast_vhub_ep0_do_receive(ptr noundef %ep, ptr noundef %req, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %2 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %actual, align 4
  %sub = sub i32 %1, %3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_ep0_do_receive.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_ep0_do_receive, %do.end11)) #6
          to label %if.then [label %do.end11], !srcloc !129

if.then:                                          ; preds = %entry
  %vhub = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %4 = ptrtoint ptr %vhub to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vhub, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %dev7 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 3
  %8 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev7, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %if.then.cond.end_crit_edge, label %cond.true

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.ast_vhub_dev, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond = phi ptr [ %11, %cond.true ], [ @.str.4, %if.then.cond.end_crit_edge ]
  %d_idx = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 2
  %12 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %d_idx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_ep0_do_receive.__UNIQUE_ID_ddebug249, ptr noundef %dev, ptr noundef nonnull @.str.38, ptr noundef %cond, i32 noundef %13, i32 noundef %len, i32 noundef %sub) #6
  br label %do.end11

do.end11:                                         ; preds = %cond.end, %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %len)
  %cmp = icmp ult i32 %sub, %len
  br i1 %cmp, label %do.body14, label %if.end47

do.body14:                                        ; preds = %do.end11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_ep0_do_receive.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_ep0_do_receive, %if.end47.thread)) #6
          to label %if.then28 [label %if.end47.thread], !srcloc !129

if.then28:                                        ; preds = %do.body14
  %vhub29 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %14 = ptrtoint ptr %vhub29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vhub29, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %dev31 = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  %dev32 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 3
  %18 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev32, align 4
  %tobool33.not = icmp eq ptr %19, null
  br i1 %tobool33.not, label %if.then28.cond.end38_crit_edge, label %cond.true34

if.then28.cond.end38_crit_edge:                   ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end38

cond.true34:                                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  %name36 = getelementptr inbounds %struct.ast_vhub_dev, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %name36 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name36, align 4
  br label %cond.end38

cond.end38:                                       ; preds = %cond.true34, %if.then28.cond.end38_crit_edge
  %cond39 = phi ptr [ %21, %cond.true34 ], [ @.str.4, %if.then28.cond.end38_crit_edge ]
  %d_idx40 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 2
  %22 = ptrtoint ptr %d_idx40 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %d_idx40, align 4
  %sub41 = sub i32 %len, %sub
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_ep0_do_receive.__UNIQUE_ID_ddebug250, ptr noundef %dev31, ptr noundef nonnull @.str.39, ptr noundef %cond39, i32 noundef %23, i32 noundef %sub41) #6
  br label %if.end47.thread

if.end47.thread:                                  ; preds = %cond.end38, %do.body14
  %maxpacket164 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  br label %if.end85

if.end47:                                         ; preds = %do.end11
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %24 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %24, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.cast, i32 %len)
  %cmp49 = icmp ule i32 %bf.cast, %len
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %len)
  %cmp50.not = icmp eq i32 %sub, %len
  %or.cond = select i1 %cmp49, i1 true, i1 %cmp50.not
  br i1 %or.cond, label %if.end47.if.end85_crit_edge, label %do.body53

if.end47.if.end85_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

do.body53:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_ep0_do_receive.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_ep0_do_receive, %if.end85)) #6
          to label %if.then67 [label %if.end85], !srcloc !129

if.then67:                                        ; preds = %do.body53
  %vhub68 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %25 = ptrtoint ptr %vhub68 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vhub68, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %dev70 = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 3
  %dev71 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 3
  %29 = ptrtoint ptr %dev71 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev71, align 4
  %tobool72.not = icmp eq ptr %30, null
  br i1 %tobool72.not, label %if.then67.cond.end77_crit_edge, label %cond.true73

if.then67.cond.end77_crit_edge:                   ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end77

cond.true73:                                      ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #8
  %name75 = getelementptr inbounds %struct.ast_vhub_dev, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %name75 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name75, align 4
  br label %cond.end77

cond.end77:                                       ; preds = %cond.true73, %if.then67.cond.end77_crit_edge
  %cond78 = phi ptr [ %32, %cond.true73 ], [ @.str.4, %if.then67.cond.end77_crit_edge ]
  %d_idx79 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 2
  %33 = ptrtoint ptr %d_idx79 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %d_idx79, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_ep0_do_receive.__UNIQUE_ID_ddebug251, ptr noundef %dev70, ptr noundef nonnull @.str.40, ptr noundef %cond78, i32 noundef %34) #6
  br label %if.end85

if.end85:                                         ; preds = %cond.end77, %do.body53, %if.end47.if.end85_crit_edge, %if.end47.thread
  %maxpacket172 = phi ptr [ %maxpacket, %if.end47.if.end85_crit_edge ], [ %maxpacket, %cond.end77 ], [ %maxpacket164, %if.end47.thread ], [ %maxpacket, %do.body53 ]
  %rc.0171 = phi i32 [ 0, %if.end47.if.end85_crit_edge ], [ 0, %cond.end77 ], [ -75, %if.end47.thread ], [ 0, %do.body53 ]
  %len.addr.1 = phi i32 [ %len, %if.end47.if.end85_crit_edge ], [ %sub, %cond.end77 ], [ %sub, %if.end47.thread ], [ %sub, %do.body53 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.1)
  %tobool86.not = icmp eq i32 %len.addr.1, 0
  br i1 %tobool86.not, label %if.end85.if.end96_crit_edge, label %land.lhs.true87

if.end85.if.end96_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96

land.lhs.true87:                                  ; preds = %if.end85
  %35 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %req, align 4
  %tobool89.not = icmp eq ptr %36, null
  br i1 %tobool89.not, label %land.lhs.true87.if.end96_crit_edge, label %if.then90

land.lhs.true87.if.end96_crit_edge:               ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96

if.then90:                                        ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %actual, align 4
  %add.ptr = getelementptr i8, ptr %36, i32 %38
  %buf95 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 5
  %39 = ptrtoint ptr %buf95 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buf95, align 4
  %41 = call ptr @memcpy(ptr %add.ptr, ptr %40, i32 %len.addr.1)
  br label %if.end96

if.end96:                                         ; preds = %if.then90, %land.lhs.true87.if.end96_crit_edge, %if.end85.if.end96_crit_edge
  %42 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %actual, align 4
  %add = add i32 %43, %len.addr.1
  store i32 %add, ptr %actual, align 4
  %44 = ptrtoint ptr %maxpacket172 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 7)
  %bf.load101 = load i56, ptr %maxpacket172, align 2
  %bf.lshr102 = lshr i56 %bf.load101, 40
  %bf.cast103 = trunc i56 %bf.lshr102 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.1, i32 %bf.cast103)
  %cmp104 = icmp ult i32 %len.addr.1, %bf.cast103
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.1, i32 %sub)
  %cmp105 = icmp eq i32 %len.addr.1, %sub
  %or.cond153 = select i1 %cmp104, i1 true, i1 %cmp105
  br i1 %or.cond153, label %if.then106, label %if.else

if.then106:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  %45 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7
  %state = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 2
  %46 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 2, ptr %state, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !140
  tail call void @arm_heavy_mb() #6
  %47 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %45, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 33554432) #6, !srcloc !131
  tail call void @ast_vhub_done(ptr noundef %ep, ptr noundef %req, i32 noundef %rc.0171) #6
  br label %if.end110

if.else:                                          ; preds = %if.end96
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_ep0_rx_prime.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_ep0_do_receive, %ast_vhub_ep0_rx_prime.exit)) #6
          to label %if.then.i [label %ast_vhub_ep0_rx_prime.exit], !srcloc !129

if.then.i:                                        ; preds = %if.else
  %vhub.i = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %49 = ptrtoint ptr %vhub.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %vhub.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %52, i32 0, i32 3
  %dev5.i = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 3
  %53 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev5.i, align 4
  %tobool6.not.i = icmp eq ptr %54, null
  br i1 %tobool6.not.i, label %if.then.i.cond.end.i_crit_edge, label %cond.true.i

if.then.i.cond.end.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.ast_vhub_dev, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %56, %cond.true.i ], [ @.str.4, %if.then.i.cond.end.i_crit_edge ]
  %d_idx.i = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 2
  %57 = ptrtoint ptr %d_idx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %d_idx.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_ep0_rx_prime.__UNIQUE_ID_ddebug248, ptr noundef %dev.i, ptr noundef nonnull @.str.42, ptr noundef %cond.i, i32 noundef %58) #6
  br label %ast_vhub_ep0_rx_prime.exit

ast_vhub_ep0_rx_prime.exit:                       ; preds = %cond.end.i, %if.else
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !141
  tail call void @arm_heavy_mb() #6
  %59 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 67108864) #6, !srcloc !131
  br label %if.end110

if.end110:                                        ; preds = %ast_vhub_ep0_rx_prime.exit, %if.then106
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ast_vhub_reset_ep0(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ep0 = getelementptr inbounds %struct.ast_vhub_dev, ptr %dev, i32 0, i32 8
  tail call void @ast_vhub_nuke(ptr noundef %ep0, i32 noundef -5) #6
  %state = getelementptr inbounds %struct.ast_vhub_dev, ptr %dev, i32 0, i32 8, i32 7, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %state, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ast_vhub_init_ep0(ptr noundef %vhub, ptr noundef %ep, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %ep, i32 0, i32 164)
  %ep_list = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 3
  %1 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %ep_list, ptr %ep_list, align 4
  %prev.i = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ep_list, ptr %prev.i, align 4
  %queue = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 1
  %3 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i66 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i66 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %queue, ptr %prev.i66, align 4
  %ops = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 2
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ast_vhub_ep0_ops, ptr %ops, align 4
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.33, ptr %name, align 4
  %caps = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 4
  %7 = ptrtoint ptr %caps to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -128, ptr %caps, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %ep, i32 noundef 64) #6
  %d_idx = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 2
  %8 = ptrtoint ptr %d_idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %d_idx, align 4
  %dev6 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 3
  %9 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %dev6, align 4
  %vhub7 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 4
  %10 = ptrtoint ptr %vhub7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %vhub, ptr %vhub7, align 4
  %11 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7
  %state = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 2
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %state, align 4
  %queue8 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %queue8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %queue8, ptr %queue8, align 4
  %prev.i67 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 4, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i67 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %queue8, ptr %prev.i67, align 4
  %internal = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 4, i32 4
  %15 = ptrtoint ptr %internal to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load10 = load i8, ptr %internal, align 4
  %bf.set12 = or i8 %bf.load10, 64
  store i8 %bf.set12, ptr %internal, align 4
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regs = getelementptr inbounds %struct.ast_vhub_dev, ptr %dev, i32 0, i32 1
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 8
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr, ptr %11, align 4
  %regs13 = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 1
  %19 = ptrtoint ptr %regs13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs13, align 4
  %add.ptr14 = getelementptr i8, ptr %20, i32 128
  %index = getelementptr inbounds %struct.ast_vhub_dev, ptr %dev, i32 0, i32 2
  %21 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index, align 8
  %add = shl i32 %22, 3
  %mul = add i32 %add, 8
  %add.ptr15 = getelementptr i8, ptr %add.ptr14, i32 %mul
  %setup = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 1
  %23 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr15, ptr %setup, align 4
  %ep0_bufs = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 6
  %24 = ptrtoint ptr %ep0_bufs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ep0_bufs, align 4
  %26 = load i32, ptr %index, align 8
  %add17 = shl i32 %26, 6
  %mul18 = add i32 %add17, 64
  %add.ptr19 = getelementptr i8, ptr %25, i32 %mul18
  %buf = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 5
  %27 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr19, ptr %buf, align 4
  %ep0_bufs_dma = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 7
  %28 = ptrtoint ptr %ep0_bufs_dma to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ep0_bufs_dma, align 4
  %30 = load i32, ptr %index, align 8
  %add21 = shl i32 %30, 6
  %mul22 = add i32 %29, 64
  %add23 = add i32 %mul22, %add21
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regs24 = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 1
  %31 = ptrtoint ptr %regs24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs24, align 4
  %add.ptr25 = getelementptr i8, ptr %32, i32 48
  %33 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr25, ptr %11, align 4
  %34 = load ptr, ptr %regs24, align 4
  %add.ptr28 = getelementptr i8, ptr %34, i32 128
  %setup29 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 7, i32 0, i32 1
  %35 = ptrtoint ptr %setup29 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr28, ptr %setup29, align 4
  %ep0_bufs30 = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 6
  %36 = ptrtoint ptr %ep0_bufs30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ep0_bufs30, align 4
  %buf31 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 5
  %38 = ptrtoint ptr %buf31 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %buf31, align 4
  %ep0_bufs_dma32 = getelementptr inbounds %struct.ast_vhub, ptr %vhub, i32 0, i32 7
  %39 = ptrtoint ptr %ep0_bufs_dma32 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ep0_bufs_dma32, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %add23.sink = phi i32 [ %40, %if.else ], [ %add23, %if.then ]
  %41 = getelementptr inbounds %struct.ast_vhub_ep, ptr %ep, i32 0, i32 6
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add23.sink, ptr %41, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_done(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ast_vhub_alloc_request(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_free_request(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ast_vhub_ep0_queue(ptr noundef %u_ep, ptr noundef %u_req, i32 noundef %gfp_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vhub4 = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 4
  %0 = ptrtoint ptr %vhub4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vhub4, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %tobool.not = icmp eq ptr %u_req, null
  br i1 %tobool.not, label %if.end.critedge, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %complete = getelementptr inbounds %struct.usb_request, ptr %u_req, i32 0, i32 7
  %4 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %complete, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true, label %lor.lhs.false.if.end18_crit_edge

lor.lhs.false.if.end18_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

land.lhs.true:                                    ; preds = %lor.lhs.false
  %internal = getelementptr inbounds %struct.ast_vhub_req, ptr %u_req, i32 0, i32 4
  %6 = ptrtoint ptr %internal to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %internal, align 4
  %7 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %bf.cast.not = icmp eq i8 %7, 0
  br i1 %bf.cast.not, label %do.end11.critedge, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

do.end11.critedge:                                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev5, ptr noundef nonnull @.str.43, ptr noundef nonnull %u_req) #9
  %8 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %complete, align 4
  %10 = ptrtoint ptr %internal to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load14 = load i8, ptr %internal, align 4
  %11 = lshr i8 %bf.load14, 6
  %.lobit = and i8 %11, 1
  %12 = zext i8 %.lobit to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev5, ptr noundef nonnull @.str.46, ptr noundef %9, i32 noundef %12) #9
  br label %cleanup

if.end.critedge:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev5, ptr noundef nonnull @.str.43, ptr noundef null) #9
  br label %cleanup

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %lor.lhs.false.if.end18_crit_edge
  %d_idx = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 2
  %13 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %d_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not = icmp eq i32 %14, 0
  br i1 %cmp.not, label %if.end47, label %do.end31, !prof !125

do.end31:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 380, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end47:                                         ; preds = %if.end18
  %dev48 = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 3
  %15 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev48, align 4
  %tobool49.not = icmp eq ptr %16, null
  br i1 %tobool49.not, label %if.end47.if.end57_crit_edge, label %land.lhs.true50

if.end47.if.end57_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

land.lhs.true50:                                  ; preds = %if.end47
  %enabled = getelementptr inbounds %struct.ast_vhub_dev, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load52 = load i8, ptr %enabled, align 4
  %18 = and i8 %bf.load52, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %bf.cast55.not = icmp eq i8 %18, 0
  br i1 %bf.cast55.not, label %land.lhs.true50.cleanup_crit_edge, label %land.lhs.true50.if.end57_crit_edge

land.lhs.true50.if.end57_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

land.lhs.true50.cleanup_crit_edge:                ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end57:                                         ; preds = %land.lhs.true50.if.end57_crit_edge, %if.end47.if.end57_crit_edge
  %length = getelementptr inbounds %struct.usb_request, ptr %u_req, i32 0, i32 1
  %19 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool58.not = icmp eq i32 %20, 0
  br i1 %tobool58.not, label %if.end57.do.body73_crit_edge, label %land.lhs.true59

if.end57.do.body73_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body73

land.lhs.true59:                                  ; preds = %if.end57
  %21 = ptrtoint ptr %u_req to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %u_req, align 4
  %tobool60.not = icmp eq ptr %22, null
  br i1 %tobool60.not, label %land.lhs.true61, label %land.lhs.true59.do.body73_crit_edge

land.lhs.true59.do.body73_crit_edge:              ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body73

land.lhs.true61:                                  ; preds = %land.lhs.true59
  %internal62 = getelementptr inbounds %struct.ast_vhub_req, ptr %u_req, i32 0, i32 4
  %23 = ptrtoint ptr %internal62 to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load63 = load i8, ptr %internal62, align 4
  %24 = and i8 %bf.load63, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %bf.cast66.not = icmp eq i8 %24, 0
  br i1 %bf.cast66.not, label %do.end70, label %land.lhs.true61.do.body73_crit_edge

land.lhs.true61.do.body73_crit_edge:              ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body73

do.end70:                                         ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev5, ptr noundef nonnull @.str.49) #9
  br label %cleanup

do.body73:                                        ; preds = %land.lhs.true61.do.body73_crit_edge, %land.lhs.true59.do.body73_crit_edge, %if.end57.do.body73_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_ep0_queue.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_ep0_queue, %do.body98)) #6
          to label %if.then84 [label %do.body98], !srcloc !129

if.then84:                                        ; preds = %do.body73
  %25 = ptrtoint ptr %vhub4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vhub4, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %dev87 = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev48, align 4
  %tobool89.not = icmp eq ptr %30, null
  br i1 %tobool89.not, label %if.then84.cond.end_crit_edge, label %cond.true

if.then84.cond.end_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.ast_vhub_dev, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then84.cond.end_crit_edge
  %cond = phi ptr [ %32, %cond.true ], [ @.str.4, %if.then84.cond.end_crit_edge ]
  %33 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %d_idx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_ep0_queue.__UNIQUE_ID_ddebug254, ptr noundef %dev87, ptr noundef nonnull @.str.51, ptr noundef %cond, i32 noundef %34, ptr noundef nonnull %u_req) #6
  br label %do.body98

do.body98:                                        ; preds = %cond.end, %do.body73
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_ep0_queue.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_ep0_queue, %do.end138)) #6
          to label %if.then112 [label %do.end138], !srcloc !129

if.then112:                                       ; preds = %do.body98
  %35 = ptrtoint ptr %vhub4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vhub4, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %dev115 = getelementptr inbounds %struct.platform_device, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev48, align 4
  %tobool117.not = icmp eq ptr %40, null
  br i1 %tobool117.not, label %if.then112.cond.end122_crit_edge, label %cond.true118

if.then112.cond.end122_crit_edge:                 ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end122

cond.true118:                                     ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #8
  %name120 = getelementptr inbounds %struct.ast_vhub_dev, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %name120 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %name120, align 4
  br label %cond.end122

cond.end122:                                      ; preds = %cond.true118, %if.then112.cond.end122_crit_edge
  %cond123 = phi ptr [ %42, %cond.true118 ], [ @.str.4, %if.then112.cond.end122_crit_edge ]
  %43 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %d_idx, align 4
  %45 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %length, align 4
  %zero = getelementptr inbounds %struct.usb_request, ptr %u_req, i32 0, i32 6
  %47 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %47)
  %bf.load126 = load i32, ptr %zero, align 4
  %bf.lshr127 = lshr i32 %bf.load126, 13
  %bf.clear128 = and i32 %bf.lshr127, 1
  %bf.lshr130 = lshr i32 %bf.load126, 12
  %bf.clear131 = and i32 %bf.lshr130, 1
  %dir_in = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 7, i32 0, i32 3
  %48 = ptrtoint ptr %dir_in to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %dir_in, align 4, !range !126
  %50 = zext i8 %49 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_ep0_queue.__UNIQUE_ID_ddebug255, ptr noundef %dev115, ptr noundef nonnull @.str.52, ptr noundef %cond123, i32 noundef %44, i32 noundef %46, i32 noundef %bf.clear128, i32 noundef %bf.clear131, i32 noundef %50) #6
  br label %do.end138

do.end138:                                        ; preds = %cond.end122, %do.body98
  %status = getelementptr inbounds %struct.usb_request, ptr %u_req, i32 0, i32 11
  %51 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -115, ptr %status, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %u_req, i32 0, i32 12
  %52 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %actual, align 4
  %last_desc = getelementptr inbounds %struct.ast_vhub_req, ptr %u_req, i32 0, i32 3
  %53 = ptrtoint ptr %last_desc to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %last_desc, align 4
  %active = getelementptr inbounds %struct.ast_vhub_req, ptr %u_req, i32 0, i32 4
  %54 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load139 = load i8, ptr %active, align 4
  %bf.clear140 = and i8 %bf.load139, 127
  store i8 %bf.clear140, ptr %active, align 4
  %lock = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 3
  %call147 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %queue = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 1
  %55 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %56, %queue
  br i1 %cmp.i.not, label %lor.lhs.false154, label %do.end138.do.end164_crit_edge

do.end138.do.end164_crit_edge:                    ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end164

lor.lhs.false154:                                 ; preds = %do.end138
  %57 = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 7
  %state = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 7, i32 0, i32 2
  %58 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %state, align 4
  %60 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %59, label %if.end202 [
    i32 0, label %lor.lhs.false154.do.end164_crit_edge
    i32 3, label %lor.lhs.false154.do.end164_crit_edge338
  ]

lor.lhs.false154.do.end164_crit_edge338:          ; preds = %lor.lhs.false154
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end164

lor.lhs.false154.do.end164_crit_edge:             ; preds = %lor.lhs.false154
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end164

do.end164:                                        ; preds = %lor.lhs.false154.do.end164_crit_edge, %lor.lhs.false154.do.end164_crit_edge338, %do.end138.do.end164_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev5, ptr noundef nonnull @.str.54) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_ep0_queue.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_ep0_queue, %do.end200)) #6
          to label %if.then180 [label %do.end200], !srcloc !129

if.then180:                                       ; preds = %do.end164
  %61 = ptrtoint ptr %vhub4 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %vhub4, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %dev183 = getelementptr inbounds %struct.platform_device, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev48, align 4
  %tobool185.not = icmp eq ptr %66, null
  br i1 %tobool185.not, label %if.then180.cond.end190_crit_edge, label %cond.true186

if.then180.cond.end190_crit_edge:                 ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end190

cond.true186:                                     ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #8
  %name188 = getelementptr inbounds %struct.ast_vhub_dev, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %name188 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %name188, align 4
  br label %cond.end190

cond.end190:                                      ; preds = %cond.true186, %if.then180.cond.end190_crit_edge
  %cond191 = phi ptr [ %68, %cond.true186 ], [ @.str.4, %if.then180.cond.end190_crit_edge ]
  %69 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %d_idx, align 4
  %71 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile ptr, ptr %queue, align 4
  %cmp.i332 = icmp eq ptr %72, %queue
  %conv.i333 = zext i1 %cmp.i332 to i32
  %state195 = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 7, i32 0, i32 2
  %73 = ptrtoint ptr %state195 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %state195, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_ep0_queue.__UNIQUE_ID_ddebug256, ptr noundef %dev183, ptr noundef nonnull @.str.56, ptr noundef %cond191, i32 noundef %70, i32 noundef %conv.i333, i32 noundef %74) #6
  br label %do.end200

do.end200:                                        ; preds = %cond.end190, %do.end164
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call147) #6
  br label %cleanup

if.end202:                                        ; preds = %lor.lhs.false154
  %queue203 = getelementptr inbounds %struct.ast_vhub_req, ptr %u_req, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 1, i32 1
  %75 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue203, ptr noundef %76, ptr noundef %queue) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end202.list_add_tail.exit_crit_edge

if.end202.list_add_tail.exit_crit_edge:           ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #8
  %77 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %queue203, ptr %prev.i, align 4
  %78 = ptrtoint ptr %queue203 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %queue, ptr %queue203, align 4
  %prev3.i.i = getelementptr inbounds %struct.ast_vhub_req, ptr %u_req, i32 0, i32 1, i32 1
  %79 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %76, ptr %prev3.i.i, align 4
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %queue203, ptr %76, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end202.list_add_tail.exit_crit_edge
  %dir_in205 = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 7, i32 0, i32 3
  %81 = ptrtoint ptr %dir_in205 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %dir_in205, align 4, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool206.not = icmp eq i8 %82, 0
  br i1 %tobool206.not, label %if.else, label %if.then207

if.then207:                                       ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @ast_vhub_ep0_do_send(ptr noundef %u_ep, ptr noundef nonnull %u_req)
  br label %if.end251

if.else:                                          ; preds = %list_add_tail.exit
  %83 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp209 = icmp eq i32 %84, 0
  br i1 %cmp209, label %do.body213, label %if.else249

do.body213:                                       ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_ep0_queue.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_ep0_queue, %do.end244)) #6
          to label %if.then227 [label %do.end244], !srcloc !129

if.then227:                                       ; preds = %do.body213
  %85 = ptrtoint ptr %vhub4 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %vhub4, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 4
  %dev230 = getelementptr inbounds %struct.platform_device, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev48, align 4
  %tobool232.not = icmp eq ptr %90, null
  br i1 %tobool232.not, label %if.then227.cond.end237_crit_edge, label %cond.true233

if.then227.cond.end237_crit_edge:                 ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end237

cond.true233:                                     ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #8
  %name235 = getelementptr inbounds %struct.ast_vhub_dev, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %name235 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %name235, align 4
  br label %cond.end237

cond.end237:                                      ; preds = %cond.true233, %if.then227.cond.end237_crit_edge
  %cond238 = phi ptr [ %92, %cond.true233 ], [ @.str.4, %if.then227.cond.end237_crit_edge ]
  %93 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %d_idx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_ep0_queue.__UNIQUE_ID_ddebug257, ptr noundef %dev230, ptr noundef nonnull @.str.57, ptr noundef %cond238, i32 noundef %94) #6
  br label %do.end244

do.end244:                                        ; preds = %cond.end237, %do.body213
  %95 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 2, ptr %state, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !142
  tail call void @arm_heavy_mb() #6
  %96 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %57, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 33554432) #6, !srcloc !131
  tail call void @ast_vhub_done(ptr noundef %u_ep, ptr noundef nonnull %u_req, i32 noundef 0) #6
  br label %if.end251

if.else249:                                       ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_ep0_rx_prime.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_ep0_queue, %ast_vhub_ep0_rx_prime.exit)) #6
          to label %if.then.i [label %ast_vhub_ep0_rx_prime.exit], !srcloc !129

if.then.i:                                        ; preds = %if.else249
  %98 = ptrtoint ptr %vhub4 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %vhub4, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %101, i32 0, i32 3
  %102 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev48, align 4
  %tobool6.not.i = icmp eq ptr %103, null
  br i1 %tobool6.not.i, label %if.then.i.cond.end.i_crit_edge, label %cond.true.i

if.then.i.cond.end.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.ast_vhub_dev, ptr %103, i32 0, i32 3
  %104 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %name.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %105, %cond.true.i ], [ @.str.4, %if.then.i.cond.end.i_crit_edge ]
  %106 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %d_idx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_ep0_rx_prime.__UNIQUE_ID_ddebug248, ptr noundef %dev.i, ptr noundef nonnull @.str.42, ptr noundef %cond.i, i32 noundef %107) #6
  br label %ast_vhub_ep0_rx_prime.exit

ast_vhub_ep0_rx_prime.exit:                       ; preds = %cond.end.i, %if.else249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !141
  tail call void @arm_heavy_mb() #6
  %108 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %57, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 67108864) #6, !srcloc !131
  br label %if.end251

if.end251:                                        ; preds = %ast_vhub_ep0_rx_prime.exit, %do.end244, %if.then207
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call147) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end251, %do.end200, %do.end70, %land.lhs.true50.cleanup_crit_edge, %do.end31, %if.end.critedge, %do.end11.critedge
  %retval.0 = phi i32 [ -22, %do.end31 ], [ -16, %do.end200 ], [ 0, %if.end251 ], [ -22, %do.end70 ], [ -22, %if.end.critedge ], [ -22, %do.end11.critedge ], [ -108, %land.lhs.true50.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ast_vhub_ep0_dequeue(ptr noundef %u_ep, ptr noundef readnone %u_req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vhub1 = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 4
  %0 = ptrtoint ptr %vhub1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vhub1, align 4
  %lock = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %queue = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 1
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %queue, align 4
  %cmp12.not = icmp eq ptr %3, %queue
  %add.ptr16 = getelementptr i8, ptr %3, i32 -56
  %spec.select = select i1 %cmp12.not, ptr null, ptr %add.ptr16
  %tobool.not = icmp ne ptr %spec.select, null
  %cmp18 = icmp eq ptr %spec.select, %u_req
  %or.cond = and i1 %tobool.not, %cmp18
  br i1 %or.cond, label %do.body21, label %entry.if.end44_crit_edge

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

do.body21:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ast_vhub_ep0_dequeue.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ast_vhub_ep0_dequeue, %do.end40)) #6
          to label %if.then28 [label %do.end40], !srcloc !129

if.then28:                                        ; preds = %do.body21
  %4 = ptrtoint ptr %vhub1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vhub1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %dev30 = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 3
  %8 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev30, align 4
  %tobool31.not = icmp eq ptr %9, null
  br i1 %tobool31.not, label %if.then28.cond.end35_crit_edge, label %cond.true32

if.then28.cond.end35_crit_edge:                   ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end35

cond.true32:                                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.ast_vhub_dev, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  br label %cond.end35

cond.end35:                                       ; preds = %cond.true32, %if.then28.cond.end35_crit_edge
  %cond36 = phi ptr [ %11, %cond.true32 ], [ @.str.4, %if.then28.cond.end35_crit_edge ]
  %d_idx = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 2
  %12 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %d_idx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ast_vhub_ep0_dequeue.__UNIQUE_ID_ddebug259, ptr noundef %dev, ptr noundef nonnull @.str.59, ptr noundef %cond36, i32 noundef %13, ptr noundef nonnull %u_req) #6
  br label %do.end40

do.end40:                                         ; preds = %cond.end35, %do.body21
  tail call void @ast_vhub_done(ptr noundef %u_ep, ptr noundef nonnull %u_req, i32 noundef -104) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  %14 = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 7
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 16777216) #6, !srcloc !131
  %state = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 7, i32 0, i32 2
  %17 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %state, align 4
  %dir_in = getelementptr inbounds %struct.ast_vhub_ep, ptr %u_ep, i32 0, i32 7, i32 0, i32 3
  %18 = ptrtoint ptr %dir_in to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %dir_in, align 4
  br label %if.end44

if.end44:                                         ; preds = %do.end40, %entry.if.end44_crit_edge
  %rc.0 = phi i32 [ 0, %do.end40 ], [ -22, %entry.if.end44_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #6
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !32, !34, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !62, !63, !64, !66, !67, !69, !70, !71, !73, !74, !76, !77, !79, !80, !81, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !101, !102, !104, !105, !106, !108, !109, !111, !112, !114, !115}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/ep0.c", i32 35, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/ep0.c", i32 95, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ast_vhub_ep0_handle_setup.__UNIQUE_ID_ddebug239, !3, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !3, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/ep0.c", i32 115, i32 3}
!12 = !{ptr @ast_vhub_ep0_handle_setup.__UNIQUE_ID_ddebug240, !11, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/ep0.c", i32 151, i32 3}
!15 = !{ptr @ast_vhub_ep0_handle_setup.__UNIQUE_ID_ddebug241, !14, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/ep0.c", i32 155, i32 3}
!18 = !{ptr @ast_vhub_ep0_handle_setup.__UNIQUE_ID_ddebug242, !17, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/ep0.c", i32 157, i32 3}
!21 = !{ptr @ast_vhub_ep0_handle_setup.__UNIQUE_ID_ddebug243, !20, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/ep0.c", i32 163, i32 2}
!24 = !{ptr @ast_vhub_ep0_handle_setup.__UNIQUE_ID_ddebug244, !23, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/ep0.c", i32 170, i32 2}
!27 = !{ptr @ast_vhub_ep0_handle_setup.__UNIQUE_ID_ddebug245, !26, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/ep0.c", i32 288, i32 2}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ast_vhub_ep0_handle_ack.__UNIQUE_ID_ddebug253, !29, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/ep0.c", i32 295, i32 4}
!34 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ast_vhub_ep0_handle_ack._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @ast_vhub_ep0_handle_ack._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/ep0.c", i32 298, i32 3}
!40 = !{ptr @ast_vhub_ep0_handle_ack._entry.18, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ast_vhub_ep0_handle_ack._entry_ptr.20, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/ep0.c", i32 307, i32 4}
!44 = !{ptr @ast_vhub_ep0_handle_ack._entry.21, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @ast_vhub_ep0_handle_ack._entry_ptr.23, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/ep0.c", i32 315, i32 4}
!48 = !{ptr @ast_vhub_ep0_handle_ack._entry.24, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @ast_vhub_ep0_handle_ack._entry_ptr.26, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/ep0.c", i32 329, i32 4}
!52 = !{ptr @ast_vhub_ep0_handle_ack._entry.27, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @ast_vhub_ep0_handle_ack._entry_ptr.29, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/ep0.c", i32 339, i32 4}
!56 = !{ptr @ast_vhub_ep0_handle_ack._entry.30, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @ast_vhub_ep0_handle_ack._entry_ptr.32, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/ep0.c", i32 497, i32 16}
!60 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/ep0.c", i32 191, i32 3}
!62 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @ast_vhub_ep0_do_send.__UNIQUE_ID_ddebug246, !61, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!64 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/ep0.c", i32 209, i32 2}
!66 = !{ptr @ast_vhub_ep0_do_send.__UNIQUE_ID_ddebug247, !65, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!67 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/ep0.c", i32 245, i32 2}
!69 = !{ptr @.str.38, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @ast_vhub_ep0_do_receive.__UNIQUE_ID_ddebug249, !68, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!71 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/ep0.c", i32 249, i32 3}
!73 = !{ptr @ast_vhub_ep0_do_receive.__UNIQUE_ID_ddebug250, !72, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!74 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/ep0.c", i32 257, i32 3}
!76 = !{ptr @ast_vhub_ep0_do_receive.__UNIQUE_ID_ddebug251, !75, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!77 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/ep0.c", i32 230, i32 2}
!79 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @ast_vhub_ep0_rx_prime.__UNIQUE_ID_ddebug248, !78, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!81 = !{ptr @ast_vhub_ep0_ops, !82, !"ast_vhub_ep0_ops", i1 false, i1 false}
!82 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/ep0.c", i32 473, i32 32}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/ep0.c", i32 371, i32 3}
!85 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @ast_vhub_ep0_queue._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @ast_vhub_ep0_queue._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/ep0.c", i32 373, i32 4}
!90 = !{ptr @ast_vhub_ep0_queue._entry.45, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @ast_vhub_ep0_queue._entry_ptr.47, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.49, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/ep0.c", i32 389, i32 3}
!94 = !{ptr @ast_vhub_ep0_queue._entry.48, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @ast_vhub_ep0_queue._entry_ptr.50, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/ep0.c", i32 393, i32 2}
!98 = !{ptr @ast_vhub_ep0_queue.__UNIQUE_ID_ddebug254, !97, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!99 = !{ptr @.str.52, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/ep0.c", i32 394, i32 2}
!101 = !{ptr @ast_vhub_ep0_queue.__UNIQUE_ID_ddebug255, !100, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!102 = !{ptr @.str.54, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/ep0.c", i32 410, i32 3}
!104 = !{ptr @ast_vhub_ep0_queue._entry.53, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @ast_vhub_ep0_queue._entry_ptr.55, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.56, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/ep0.c", i32 411, i32 10}
!108 = !{ptr @ast_vhub_ep0_queue.__UNIQUE_ID_ddebug256, !107, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!109 = !{ptr @.str.57, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/ep0.c", i32 425, i32 3}
!111 = !{ptr @ast_vhub_ep0_queue.__UNIQUE_ID_ddebug257, !110, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!112 = !{ptr @.str.58, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/gadget/udc/aspeed-vhub/ep0.c", i32 454, i32 3}
!114 = !{ptr @.str.59, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @ast_vhub_ep0_dequeue.__UNIQUE_ID_ddebug259, !113, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!125 = !{!"branch_weights", i32 2000, i32 1}
!126 = !{i8 0, i8 2}
!127 = !{!"branch_weights", i32 1, i32 2000}
!128 = !{!"auto-init"}
!129 = !{i64 2148703300, i64 2148703305, i64 2148703318, i64 2148703362, i64 2148703396, i64 2148703417}
!130 = !{i64 2154747162}
!131 = !{i64 5283924}
!132 = !{i64 2154754611}
!133 = !{i64 5284342}
!134 = !{i64 2154775406}
!135 = !{i64 2154793228}
!136 = !{i64 2154758038}
!137 = !{i64 2154724659}
!138 = !{i64 2154761807}
!139 = !{i64 2154762212}
!140 = !{i64 2154774740}
!141 = !{i64 2154765378}
!142 = !{i64 2154815742}
!143 = !{i64 2154824833}
