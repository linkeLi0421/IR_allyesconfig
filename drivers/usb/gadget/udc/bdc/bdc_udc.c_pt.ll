; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/udc/bdc/bdc_udc.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/bdc/bdc_udc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bdc = type { %struct.usb_gadget, ptr, ptr, %struct.spinlock, ptr, i32, i32, ptr, ptr, %struct.bdc_scratchpad, i32, %struct.srr, %struct.usb_ctrlrequest, %struct.bdc_req, %struct.bdc_req, i32, i8, i8, i8, i8, i32, i32, ptr, i32, ptr, i8, [2 x ptr], [3 x ptr], [6 x i8], %struct.delayed_work, ptr }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.bdc_scratchpad = type { i32, ptr, i32 }
%struct.srr = type { ptr, i16, i16, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.bdc_req = type { %struct.usb_request, %struct.list_head, ptr, %struct.bd_transfer, i32 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.bd_transfer = type { ptr, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.bdc_ep = type { %struct.usb_ep, %struct.list_head, ptr, i8, i8, i8, ptr, ptr, i32, [20 x i8], %struct.bd_list, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.bd_list = type { ptr, i32, i32, i32, i32, i32 }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bdc_sr = type { [4 x i32] }

@bdc_sr_uspc.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 59, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bdc\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bdc_sr_uspc\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/usb/gadget/udc/bdc/bdc_udc.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s uspc=0x%08x\0A\00", [16 x i8] zeroinitializer }, align 32
@bdc_sr_uspc.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 63, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Do a softconnect\0A\00", [46 x i8] zeroinitializer }, align 32
@bdc_sr_uspc.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 65, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Port reset or disconn\0A\00", [41 x i8] zeroinitializer }, align 32
@bdc_sr_uspc.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 69, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Connected\0A\00", [21 x i8] zeroinitializer }, align 32
@bdc_sr_uspc.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 70, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uspc=%x\0A\00", [23 x i8] zeroinitializer }, align 32
@bdc_udc_init.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 -126, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bdc_udc_init\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s()\0A\00", [26 x i8] zeroinitializer }, align 32
@bdc_gadget_ops = internal constant { %struct.usb_gadget_ops, [36 x i8] } { %struct.usb_gadget_ops { ptr null, ptr @bdc_udc_wakeup, ptr @bdc_udc_set_selfpowered, ptr null, ptr null, ptr @bdc_udc_pullup, ptr null, ptr null, ptr @bdc_udc_start, ptr @bdc_udc_stop, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bdc_udc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 537, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to request irq #%d %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bdc_udc_init._entry_ptr = internal global ptr @bdc_udc_init._entry, section ".printk_index", align 4
@bdc_udc_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str.2, i32 543, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bdc init ep fail: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@bdc_udc_init._entry_ptr.15 = internal global ptr @bdc_udc_init._entry.13, section ".printk_index", align 4
@bdc_udc_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.8, ptr @.str.2, i32 549, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to register udc\0A\00", [40 x i8] zeroinitializer }, align 32
@bdc_udc_init._entry_ptr.18 = internal global ptr @bdc_udc_init._entry.16, section ".printk_index", align 4
@bdc_gadget_ep0_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 0, i16 2, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@bdc_udc_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.8, ptr @.str.2, i32 561, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fail to enable %s\0A\00", [45 x i8] zeroinitializer }, align 32
@bdc_udc_init._entry_ptr.21 = internal global ptr @bdc_udc_init._entry.19, section ".printk_index", align 4
@bdc_udc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&(&bdc->func_wake_notify)->work)\00", [45 x i8] zeroinitializer }, align 32
@bdc_udc_init.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&(&bdc->func_wake_notify)->timer\00", [63 x i8] zeroinitializer }, align 32
@bdc_udc_exit.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.9, i8 0, i8 -111, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bdc_udc_exit\00", [19 x i8] zeroinitializer }, align 32
@bdc_uspc_disconnected.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 33, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bdc_uspc_disconnected\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@handle_link_state_change.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 45, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"handle_link_state_change\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Link state change\00", [46 x i8] zeroinitializer }, align 32
@handle_link_state_change.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.30, i8 0, i8 47, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Entered Suspend mode\0A\00", [42 x i8] zeroinitializer }, align 32
@handle_link_state_change.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.31, i8 0, i8 53, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sched func_wake_notify\0A\00", [40 x i8] zeroinitializer }, align 32
@handle_link_state_change.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.32, i8 0, i8 54, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Resumed from Suspend\0A\00", [42 x i8] zeroinitializer }, align 32
@handle_link_state_change.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.33, i8 0, i8 56, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"link state:%d\0A\00", [17 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@bdc_uspc_connected.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 0, i8 20, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bdc_uspc_connected\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s speed=%x\0A\00", [19 x i8] zeroinitializer }, align 32
@bdc_uspc_connected._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 114, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"UNDEFINED SPEED\0A\00", [47 x i8] zeroinitializer }, align 32
@bdc_uspc_connected._entry_ptr = internal global ptr @bdc_uspc_connected._entry, section ".printk_index", align 4
@bdc_uspc_connected.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.37, i8 0, i8 29, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"connected at %s\0A\00", [47 x i8] zeroinitializer }, align 32
@conn_speed_str = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], [44 x i8] zeroinitializer }, align 32
@bdc_uspc_connected._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.2, i32 122, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"EP0 config failed\0A\00", [45 x i8] zeroinitializer }, align 32
@bdc_uspc_connected._entry_ptr.40 = internal global ptr @bdc_uspc_connected._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Not connected\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Full Speed\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Low Speed\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"High Speed\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Super Speed\00", [20 x i8] zeroinitializer }, align 32
@bdc_udc_wakeup.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 0, i8 118, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bdc_udc_wakeup\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s() bdc->devstatus=%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@bdc_udc_wakeup.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.48, i8 0, i8 120, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"link_state =%d portsc=%x\00", [39 x i8] zeroinitializer }, align 32
@bdc_udc_wakeup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.46, ptr @.str.2, i32 487, ptr @.str.50, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"can't wakeup from link state %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bdc_udc_wakeup._entry_ptr = internal global ptr @bdc_udc_wakeup._entry, section ".printk_index", align 4
@bdc_udc_wakeup.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.48, i8 0, i8 125, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@bdc_udc_set_selfpowered.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.9, i8 0, i8 113, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bdc_udc_set_selfpowered\00", [40 x i8] zeroinitializer }, align 32
@bdc_udc_pullup.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.53, i8 0, i8 104, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bdc_udc_pullup\00", [17 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s() is_on:%d\0A\00", [17 x i8] zeroinitializer }, align 32
@bdc_udc_start.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.9, i8 0, i8 92, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bdc_udc_start\00", [18 x i8] zeroinitializer }, align 32
@bdc_udc_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.54, ptr @.str.2, i32 374, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s is already bound to %s\0A\00", [37 x i8] zeroinitializer }, align 32
@bdc_udc_start._entry_ptr = internal global ptr @bdc_udc_start._entry, section ".printk_index", align 4
@bdc_udc_start._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.54, ptr @.str.2, i32 385, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s bdc run fail\0A\00", [47 x i8] zeroinitializer }, align 32
@bdc_udc_start._entry_ptr.58 = internal global ptr @bdc_udc_start._entry.56, section ".printk_index", align 4
@bdc_udc_stop.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.9, i8 0, i8 100, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bdc_udc_stop\00", [19 x i8] zeroinitializer }, align 32
@bdc_udc_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 305, ptr @.str.50, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Global irq pending but SRR IP is 0\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bdc_udc_interrupt\00", [46 x i8] zeroinitializer }, align 32
@bdc_udc_interrupt._entry_ptr = internal global ptr @bdc_udc_interrupt._entry, section ".printk_index", align 4
@bdc_udc_interrupt.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.62, i8 0, i8 78, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s eqp_index=%d dqp_index=%d  srr.dqp_index=%d\0A\0A\00", [47 x i8] zeroinitializer }, align 32
@bdc_udc_interrupt.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.63, i8 0, i8 79, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SRR empty?\0A\00", [20 x i8] zeroinitializer }, align 32
@bdc_udc_interrupt._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.64, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@bdc_udc_interrupt.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.65, i8 0, i8 81, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sr_type=%d\0A\00", [20 x i8] zeroinitializer }, align 32
@bdc_udc_interrupt._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.61, ptr @.str.2, i32 337, ptr @.str.50, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SR:%d not handled\0A\00", [45 x i8] zeroinitializer }, align 32
@bdc_udc_interrupt._entry_ptr.68 = internal global ptr @bdc_udc_interrupt._entry.66, section ".printk_index", align 4
@bdc_udc_interrupt._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.61, ptr @.str.2, i32 353, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"err in bdc reinit\0A\00", [45 x i8] zeroinitializer }, align 32
@bdc_udc_interrupt._entry_ptr.71 = internal global ptr @bdc_udc_interrupt._entry.69, section ".printk_index", align 4
@srr_dqp_index_advc._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.64, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@srr_dqp_index_advc.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.2, ptr @.str.73, i8 0, i8 16, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"srr_dqp_index_advc\00", [45 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"srr->dqp_index:%d\0A\00", [45 x i8] zeroinitializer }, align 32
@bdc_func_wake_timer.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.2, ptr @.str.27, i8 0, i8 40, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bdc_func_wake_timer\00", [44 x i8] zeroinitializer }, align 32
@bdc_func_wake_timer.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.2, ptr @.str.75, i8 0, i8 42, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"FUNC_WAKE_ISSUED FLAG IS STILL SET\0A\00", [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 3, i64 15]
@__sancov_gen_cov_switch_values.76 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 238, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 253, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 261, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 277, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 283, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 522, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [15 x i8] c"bdc_gadget_ops\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 508, i32 36 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 535, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 543, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 549, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [20 x i8] c"bdc_gadget_ep0_desc\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 51, i32 39 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 560, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 564, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 582, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 133, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 183, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 189, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 212, i32 5 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 218, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 225, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 81, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 114, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 117, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant [15 x i8] c"conn_speed_str\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 42, i32 27 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 122, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 43, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 44, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 45, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 46, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 47, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 473, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 483, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 485, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 452, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 417, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 369, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 372, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 385, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 401, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 305, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 311, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 317, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 327, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 337, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 353, i32 4 }
@___asan_gen_.303 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 65, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 162, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.316 = private constant [40 x i8] c"../drivers/usb/gadget/udc/bdc/bdc_udc.c\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 169, i32 3 }
@llvm.compiler.used = appending global [92 x ptr] [ptr @bdc_udc_init._entry, ptr @bdc_udc_init._entry.13, ptr @bdc_udc_init._entry.16, ptr @bdc_udc_init._entry.19, ptr @bdc_udc_init._entry_ptr, ptr @bdc_udc_init._entry_ptr.15, ptr @bdc_udc_init._entry_ptr.18, ptr @bdc_udc_init._entry_ptr.21, ptr @bdc_udc_interrupt._entry, ptr @bdc_udc_interrupt._entry.66, ptr @bdc_udc_interrupt._entry.69, ptr @bdc_udc_interrupt._entry_ptr, ptr @bdc_udc_interrupt._entry_ptr.68, ptr @bdc_udc_interrupt._entry_ptr.71, ptr @bdc_udc_start._entry, ptr @bdc_udc_start._entry.56, ptr @bdc_udc_start._entry_ptr, ptr @bdc_udc_start._entry_ptr.58, ptr @bdc_udc_wakeup._entry, ptr @bdc_udc_wakeup._entry_ptr, ptr @bdc_uspc_connected._entry, ptr @bdc_uspc_connected._entry.38, ptr @bdc_uspc_connected._entry_ptr, ptr @bdc_uspc_connected._entry_ptr.40, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @bdc_gadget_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @bdc_gadget_ep0_desc, ptr @.str.20, ptr @bdc_udc_init.__key, ptr @.str.22, ptr @bdc_udc_init.__key.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @conn_speed_str, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @bdc_udc_interrupt._rs, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @srr_dqp_index_advc._rs, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_gadget_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_udc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_udc_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_udc_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_gadget_ep0_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_udc_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_udc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_udc_init.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_uspc_connected._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @conn_speed_str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_uspc_connected._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_udc_wakeup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_udc_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_udc_start._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_udc_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_udc_interrupt._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_udc_interrupt._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_udc_interrupt._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srr_dqp_index_advc._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bdc_sr_uspc(ptr noundef %bdc, ptr nocapture noundef readnone %sreport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 8
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 32
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !178
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !179
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_sr_uspc.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_sr_uspc, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !180

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_sr_uspc.__UNIQUE_ID_ddebug307, ptr noundef %5, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %3) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %3, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.end.if.end23_crit_edge, label %if.then6

do.end.if.end23_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.then6:                                         ; preds = %do.end
  %6 = and i32 %3, -2105540608
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %6)
  %7 = icmp eq i32 %6, -2147483648
  br i1 %7, label %if.then6.if.end23_crit_edge, label %if.else

if.then6.if.end23_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.else:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  %8 = and i32 %3, 8388623
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388608, i32 %8)
  %9 = icmp eq i32 %8, 8388608
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then6.if.end23_crit_edge, %do.end.if.end23_crit_edge
  %disconn.1.off0 = phi i1 [ false, %do.end.if.end23_crit_edge ], [ true, %if.then6.if.end23_crit_edge ], [ false, %if.else ]
  %connected.1.off0 = phi i1 [ false, %do.end.if.end23_crit_edge ], [ false, %if.then6.if.end23_crit_edge ], [ %9, %if.else ]
  %clear_flags.0 = phi i32 [ 0, %do.end.if.end23_crit_edge ], [ 134217728, %if.then6.if.end23_crit_edge ], [ 134217728, %if.else ]
  %10 = and i32 %3, -2113929216
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2113929216, i32 %10)
  %.not = icmp eq i32 %10, -2113929216
  br i1 %.not, label %if.then29, label %if.else53

if.then29:                                        ; preds = %if.end23
  %pullup = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 19
  %11 = ptrtoint ptr %pullup to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pullup, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool30.not = icmp eq i8 %12, 0
  br i1 %tobool30.not, label %if.then29.if.end51_crit_edge, label %do.body32

if.then29.if.end51_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51

do.body32:                                        ; preds = %if.then29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_sr_uspc.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_sr_uspc, %do.end50)) #4
          to label %if.then46 [label %do.end50], !srcloc !180

if.then46:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #6
  %dev47 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %13 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev47, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_sr_uspc.__UNIQUE_ID_ddebug308, ptr noundef %14, ptr noundef nonnull @.str.4) #4
  br label %do.end50

do.end50:                                         ; preds = %if.then46, %do.body32
  tail call void @bdc_softconn(ptr noundef %bdc) #4
  tail call void @usb_gadget_set_state(ptr noundef %bdc, i32 noundef 2) #4
  br label %if.end51

if.end51:                                         ; preds = %do.end50, %if.then29.if.end51_crit_edge
  %or52 = or i32 %clear_flags.0, -2147483648
  br label %if.end92

if.else53:                                        ; preds = %if.end23
  %15 = and i32 %3, 1090519040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %16 = icmp ne i32 %15, 0
  %brmerge = or i1 %16, %disconn.1.off0
  br i1 %brmerge, label %do.body61, label %if.else82

do.body61:                                        ; preds = %if.else53
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_sr_uspc.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_sr_uspc, %do.end79)) #4
          to label %if.then75 [label %do.end79], !srcloc !180

if.then75:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #6
  %dev76 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %17 = ptrtoint ptr %dev76 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev76, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_sr_uspc.__UNIQUE_ID_ddebug309, ptr noundef %18, ptr noundef nonnull @.str.5) #4
  br label %do.end79

do.end79:                                         ; preds = %if.then75, %do.body61
  tail call fastcc void @bdc_uspc_disconnected(ptr noundef %bdc, i1 noundef zeroext %disconn.1.off0)
  %or81 = or i32 %clear_flags.0, 1073741824
  br label %if.end92

if.else82:                                        ; preds = %if.else53
  %19 = and i32 %3, 75497472
  call void @__sanitizer_cov_trace_const_cmp4(i32 75497472, i32 %19)
  %.not197 = icmp eq i32 %19, 75497472
  br i1 %.not197, label %if.then88, label %if.else82.if.end92_crit_edge

if.else82.if.end92_crit_edge:                     ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end92

if.then88:                                        ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @handle_link_state_change(ptr noundef %bdc, i32 noundef %3)
  %or89 = or i32 %clear_flags.0, 67108864
  br label %if.end92

if.end92:                                         ; preds = %if.then88, %if.else82.if.end92_crit_edge, %do.end79, %if.end51
  %clear_flags.1 = phi i32 [ %or52, %if.end51 ], [ %or81, %do.end79 ], [ %or89, %if.then88 ], [ %clear_flags.0, %if.else82.if.end92_crit_edge ]
  br i1 %connected.1.off0, label %do.body95, label %if.end92.if.end115_crit_edge

if.end92.if.end115_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end115

do.body95:                                        ; preds = %if.end92
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_sr_uspc.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_sr_uspc, %do.end113)) #4
          to label %if.then109 [label %do.end113], !srcloc !180

if.then109:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #6
  %dev110 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %20 = ptrtoint ptr %dev110 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev110, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_sr_uspc.__UNIQUE_ID_ddebug310, ptr noundef %21, ptr noundef nonnull @.str.6) #4
  br label %do.end113

do.end113:                                        ; preds = %if.then109, %do.body95
  tail call fastcc void @bdc_uspc_connected(ptr noundef %bdc)
  %devstatus = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 20
  %22 = ptrtoint ptr %devstatus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %devstatus, align 4
  %and114 = and i32 %23, -131073
  store i32 %and114, ptr %devstatus, align 4
  br label %if.end115

if.end115:                                        ; preds = %do.end113, %if.end92.if.end115_crit_edge
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %add.ptr.i190 = getelementptr i8, ptr %25, i32 32
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i190) #4, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !179
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_sr_uspc.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_sr_uspc, %do.end137)) #4
          to label %if.then133 [label %do.end137], !srcloc !180

if.then133:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #6
  %27 = and i32 %26, 1627324415
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %dev134 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %29 = ptrtoint ptr %dev134 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev134, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_sr_uspc.__UNIQUE_ID_ddebug311, ptr noundef %30, ptr noundef nonnull @.str.7, i32 noundef %28) #4
  br label %do.end137

do.end137:                                        ; preds = %if.then133, %if.end115
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !182
  tail call void @arm_heavy_mb() #4
  %33 = tail call i32 @llvm.bswap.i32(i32 %clear_flags.1) #4
  %add.ptr.i191 = getelementptr i8, ptr %32, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i191, i32 %33) #4, !srcloc !183
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdc_softconn(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_set_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bdc_uspc_disconnected(ptr noundef %bdc, i1 noundef zeroext %reinit) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_uspc_disconnected.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_uspc_disconnected, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !180

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_uspc_disconnected.__UNIQUE_ID_ddebug299, ptr noundef %1, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %bdc_ep_array = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 7
  %2 = ptrtoint ptr %bdc_ep_array to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdc_ep_array, align 8
  %arrayidx = getelementptr ptr, ptr %3, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %do.end.if.end9_crit_edge, label %land.lhs.true

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

land.lhs.true:                                    ; preds = %do.end
  %flags = getelementptr inbounds %struct.bdc_ep, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end9_crit_edge, label %if.then7

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %call8 = tail call i32 @bdc_ep_disable(ptr noundef nonnull %5) #4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %land.lhs.true.if.end9_crit_edge, %do.end.if.end9_crit_edge
  %gadget_driver = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 1
  %8 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gadget_driver, align 8
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %if.end9.if.end18_crit_edge, label %land.lhs.true11

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

land.lhs.true11:                                  ; preds = %if.end9
  %disconnect = getelementptr inbounds %struct.usb_gadget_driver, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %disconnect, align 4
  %tobool13.not = icmp eq ptr %11, null
  br i1 %tobool13.not, label %land.lhs.true11.if.end18_crit_edge, label %if.then14

land.lhs.true11.if.end18_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then14:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #6
  %lock = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 3
  tail call void @_raw_spin_unlock(ptr noundef %lock) #4
  %12 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gadget_driver, align 8
  %disconnect16 = getelementptr inbounds %struct.usb_gadget_driver, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %disconnect16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %disconnect16, align 4
  tail call void %15(ptr noundef %bdc) #4
  tail call void @_raw_spin_lock(ptr noundef %lock) #4
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %land.lhs.true11.if.end18_crit_edge, %if.end9.if.end18_crit_edge
  %frombool = zext i1 %reinit to i8
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %bdc, i32 0, i32 5
  %16 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %speed, align 8
  %devstatus = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 20
  %17 = ptrtoint ptr %devstatus to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %devstatus, align 4
  %and20 = and i32 %18, 1
  store i32 %and20, ptr %devstatus, align 4
  %delayed_status = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 16
  %19 = ptrtoint ptr %delayed_status to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %delayed_status, align 8
  %reinit22 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 18
  %20 = ptrtoint ptr %reinit22 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool, ptr %reinit22, align 2
  %test_mode = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 25
  %21 = ptrtoint ptr %test_mode to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %test_mode, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_link_state_change(ptr noundef %bdc, i32 noundef %uspc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_link_state_change.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_link_state_change, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !180

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_link_state_change.__UNIQUE_ID_ddebug302, ptr noundef %1, ptr noundef nonnull @.str.29) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %uspc, 15
  %2 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %do.body96 [
    i32 3, label %sw.bb
    i32 0, label %sw.bb30
    i32 15, label %do.body68
  ]

sw.bb:                                            ; preds = %do.end
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %bdc, i32 0, i32 5
  %3 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %sw.bb.sw.epilog_crit_edge, label %land.lhs.true

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  %gadget_driver = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 1
  %5 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gadget_driver, align 8
  %suspend = getelementptr inbounds %struct.usb_gadget_driver, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %suspend, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %land.lhs.true.sw.epilog_crit_edge, label %do.body6

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.body6:                                         ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_link_state_change.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_link_state_change, %do.end24)) #4
          to label %if.then20 [label %do.end24], !srcloc !180

if.then20:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  %dev21 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %9 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev21, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_link_state_change.__UNIQUE_ID_ddebug303, ptr noundef %10, ptr noundef nonnull @.str.30) #4
  br label %do.end24

do.end24:                                         ; preds = %if.then20, %do.body6
  %lock = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 3
  tail call void @_raw_spin_unlock(ptr noundef %lock) #4
  %devstatus = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 20
  %11 = ptrtoint ptr %devstatus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %devstatus, align 4
  %or = or i32 %12, 131072
  store i32 %or, ptr %devstatus, align 4
  %13 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gadget_driver, align 8
  %suspend26 = getelementptr inbounds %struct.usb_gadget_driver, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %suspend26 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %suspend26, align 4
  tail call void %16(ptr noundef %bdc) #4
  tail call void @_raw_spin_lock(ptr noundef %lock) #4
  br label %sw.epilog

sw.bb30:                                          ; preds = %do.end
  %devstatus31 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 20
  %17 = ptrtoint ptr %devstatus31 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %devstatus31, align 4
  %and32 = and i32 %18, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %sw.bb30.sw.epilog_crit_edge, label %if.then34

sw.bb30.sw.epilog_crit_edge:                      ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then34:                                        ; preds = %sw.bb30
  %and36 = and i32 %18, -65537
  %19 = ptrtoint ptr %devstatus31 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and36, ptr %devstatus31, align 4
  %speed38 = getelementptr inbounds %struct.usb_gadget, ptr %bdc, i32 0, i32 5
  %20 = ptrtoint ptr %speed38 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %speed38, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %21)
  %cmp39 = icmp eq i32 %21, 5
  br i1 %cmp39, label %if.then40, label %if.then34.sw.epilog_crit_edge

if.then34.sw.epilog_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then40:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #6
  %call41 = tail call i32 @bdc_function_wake_fh(ptr noundef %bdc, i8 noundef zeroext 0) #4
  %22 = ptrtoint ptr %devstatus31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %devstatus31, align 4
  %or43 = or i32 %23, 262144
  store i32 %or43, ptr %devstatus31, align 4
  %func_wake_notify = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %24 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %24, ptr noundef %func_wake_notify, i32 noundef 250) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_link_state_change.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_link_state_change, %sw.epilog)) #4
          to label %if.then60 [label %sw.epilog], !srcloc !180

if.then60:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #6
  %dev61 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %25 = ptrtoint ptr %dev61 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev61, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_link_state_change.__UNIQUE_ID_ddebug304, ptr noundef %26, ptr noundef nonnull @.str.31) #4
  br label %sw.epilog

do.body68:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_link_state_change.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_link_state_change, %do.end86)) #4
          to label %if.then82 [label %do.end86], !srcloc !180

if.then82:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #6
  %dev83 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %27 = ptrtoint ptr %dev83 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev83, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_link_state_change.__UNIQUE_ID_ddebug305, ptr noundef %28, ptr noundef nonnull @.str.32) #4
  br label %do.end86

do.end86:                                         ; preds = %if.then82, %do.body68
  %devstatus87 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 20
  %29 = ptrtoint ptr %devstatus87 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %devstatus87, align 4
  %and88 = and i32 %30, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %do.end86.sw.epilog_crit_edge, label %if.then90

do.end86.sw.epilog_crit_edge:                     ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then90:                                        ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #6
  %gadget_driver91 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 1
  %31 = ptrtoint ptr %gadget_driver91 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %gadget_driver91, align 8
  %resume = getelementptr inbounds %struct.usb_gadget_driver, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %resume, align 4
  tail call void %34(ptr noundef %bdc) #4
  %35 = ptrtoint ptr %devstatus87 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %devstatus87, align 4
  %and94 = and i32 %36, -131073
  store i32 %and94, ptr %devstatus87, align 4
  br label %sw.epilog

do.body96:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_link_state_change.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_link_state_change, %sw.epilog)) #4
          to label %if.then110 [label %sw.epilog], !srcloc !180

if.then110:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #6
  %dev111 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %37 = ptrtoint ptr %dev111 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev111, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_link_state_change.__UNIQUE_ID_ddebug306, ptr noundef %38, ptr noundef nonnull @.str.33, i32 noundef %and) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then110, %do.body96, %if.then90, %do.end86.sw.epilog_crit_edge, %if.then60, %if.then40, %if.then34.sw.epilog_crit_edge, %sw.bb30.sw.epilog_crit_edge, %do.end24, %land.lhs.true.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bdc_uspc_connected(ptr noundef %bdc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 8
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 32
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !179
  %3 = lshr i32 %2, 12
  %shr = and i32 %3, 7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_uspc_connected.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_uspc_connected, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !180

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_uspc_connected.__UNIQUE_ID_ddebug297, ptr noundef %5, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.34, i32 noundef %shr) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %shr, label %do.end41 [
    i32 4, label %sw.bb
    i32 3, label %sw.bb12
    i32 1, label %sw.bb21
    i32 2, label %sw.bb30
  ]

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  store i16 2, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @bdc_gadget_ep0_desc, i32 0, i32 4), align 1
  %ep0 = getelementptr inbounds %struct.usb_gadget, ptr %bdc, i32 0, i32 3
  %7 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ep0, align 4
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %9, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.clear = and i56 %bf.load, 1099511627775
  %bf.set = or i56 %bf.clear, 562949953421312
  store i56 %bf.set, ptr %maxpacket, align 2
  %speed6 = getelementptr inbounds %struct.usb_gadget, ptr %bdc, i32 0, i32 5
  %10 = ptrtoint ptr %speed6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 5, ptr %speed6, align 8
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %add.ptr.i111 = getelementptr i8, ptr %12, i32 40
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i111) #4, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !179
  %14 = and i32 %13, 16776703
  %15 = or i32 %14, -134217216
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !182
  tail call void @arm_heavy_mb() #4
  %add.ptr.i112 = getelementptr i8, ptr %17, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112, i32 %15) #4, !srcloc !183
  br label %do.body43

sw.bb12:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  store i16 16384, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @bdc_gadget_ep0_desc, i32 0, i32 4), align 1
  %ep014 = getelementptr inbounds %struct.usb_gadget, ptr %bdc, i32 0, i32 3
  %18 = ptrtoint ptr %ep014 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ep014, align 4
  %maxpacket15 = getelementptr inbounds %struct.usb_ep, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %maxpacket15 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 7)
  %bf.load16 = load i56, ptr %maxpacket15, align 2
  %bf.clear17 = and i56 %bf.load16, 1099511627775
  %bf.set18 = or i56 %bf.clear17, 70368744177664
  store i56 %bf.set18, ptr %maxpacket15, align 2
  %speed20 = getelementptr inbounds %struct.usb_gadget, ptr %bdc, i32 0, i32 5
  %21 = ptrtoint ptr %speed20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %speed20, align 8
  br label %do.body43

sw.bb21:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  store i16 16384, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @bdc_gadget_ep0_desc, i32 0, i32 4), align 1
  %ep023 = getelementptr inbounds %struct.usb_gadget, ptr %bdc, i32 0, i32 3
  %22 = ptrtoint ptr %ep023 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ep023, align 4
  %maxpacket24 = getelementptr inbounds %struct.usb_ep, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %maxpacket24 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 7)
  %bf.load25 = load i56, ptr %maxpacket24, align 2
  %bf.clear26 = and i56 %bf.load25, 1099511627775
  %bf.set27 = or i56 %bf.clear26, 70368744177664
  store i56 %bf.set27, ptr %maxpacket24, align 2
  %speed29 = getelementptr inbounds %struct.usb_gadget, ptr %bdc, i32 0, i32 5
  %25 = ptrtoint ptr %speed29 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %speed29, align 8
  br label %do.body43

sw.bb30:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  store i16 2048, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @bdc_gadget_ep0_desc, i32 0, i32 4), align 1
  %ep032 = getelementptr inbounds %struct.usb_gadget, ptr %bdc, i32 0, i32 3
  %26 = ptrtoint ptr %ep032 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ep032, align 4
  %maxpacket33 = getelementptr inbounds %struct.usb_ep, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %maxpacket33 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 7)
  %bf.load34 = load i56, ptr %maxpacket33, align 2
  %bf.clear35 = and i56 %bf.load34, 1099511627775
  %bf.set36 = or i56 %bf.clear35, 8796093022208
  store i56 %bf.set36, ptr %maxpacket33, align 2
  %speed38 = getelementptr inbounds %struct.usb_gadget, ptr %bdc, i32 0, i32 5
  %29 = ptrtoint ptr %speed38 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %speed38, align 8
  br label %do.body43

do.end41:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev42 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %30 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev42, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.36) #7
  br label %cleanup

do.body43:                                        ; preds = %sw.bb30, %sw.bb21, %sw.bb12, %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_uspc_connected.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_uspc_connected, %do.end61)) #4
          to label %if.then57 [label %do.end61], !srcloc !180

if.then57:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #6
  %dev58 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %32 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev58, align 4
  %arrayidx = getelementptr [5 x ptr], ptr @conn_speed_str, i32 0, i32 %shr
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_uspc_connected.__UNIQUE_ID_ddebug298, ptr noundef %33, ptr noundef nonnull @.str.37, ptr noundef %35) #4
  br label %do.end61

do.end61:                                         ; preds = %if.then57, %do.body43
  %bdc_ep_array = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 7
  %36 = ptrtoint ptr %bdc_ep_array to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bdc_ep_array, align 8
  %arrayidx62 = getelementptr ptr, ptr %37, i32 1
  %38 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx62, align 4
  %desc = getelementptr inbounds %struct.bdc_ep, ptr %39, i32 0, i32 7
  %40 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @bdc_gadget_ep0_desc, ptr %desc, align 4
  %41 = load ptr, ptr %bdc_ep_array, align 8
  %arrayidx64 = getelementptr ptr, ptr %41, i32 1
  %42 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx64, align 4
  %call65 = tail call i32 @bdc_config_ep(ptr noundef %bdc, ptr noundef %43) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %do.end61.if.end72_crit_edge, label %do.end70

do.end61.if.end72_crit_edge:                      ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end72

do.end70:                                         ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #6
  %dev71 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %44 = ptrtoint ptr %dev71 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev71, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.39) #7
  br label %if.end72

if.end72:                                         ; preds = %do.end70, %do.end61.if.end72_crit_edge
  %46 = ptrtoint ptr %bdc_ep_array to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bdc_ep_array, align 8
  %arrayidx74 = getelementptr ptr, ptr %47, i32 1
  %48 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx74, align 4
  %desc75 = getelementptr inbounds %struct.usb_ep, ptr %49, i32 0, i32 9
  %50 = ptrtoint ptr %desc75 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @bdc_gadget_ep0_desc, ptr %desc75, align 4
  %51 = load ptr, ptr %bdc_ep_array, align 8
  %arrayidx77 = getelementptr ptr, ptr %51, i32 1
  %52 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx77, align 4
  %flags = getelementptr inbounds %struct.bdc_ep, ptr %53, i32 0, i32 8
  %54 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags, align 4
  %or78 = or i32 %55, 1
  store i32 %or78, ptr %flags, align 4
  tail call void @usb_gadget_set_state(ptr noundef %bdc, i32 noundef 5) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %do.end41
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bdc_udc_init(ptr noundef %bdc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_udc_init.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_udc_init, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !180

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_udc_init.__UNIQUE_ID_ddebug321, ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ops = getelementptr inbounds %struct.usb_gadget, ptr %bdc, i32 0, i32 2
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @bdc_gadget_ops, ptr %ops, align 8
  %max_speed = getelementptr inbounds %struct.usb_gadget, ptr %bdc, i32 0, i32 6
  %3 = ptrtoint ptr %max_speed to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 5, ptr %max_speed, align 4
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %bdc, i32 0, i32 5
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %speed, align 8
  %dev6 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %5 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev6, align 4
  %parent = getelementptr inbounds %struct.usb_gadget, ptr %bdc, i32 0, i32 11, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %parent, align 8
  %sg_supported = getelementptr inbounds %struct.usb_gadget, ptr %bdc, i32 0, i32 17
  %8 = ptrtoint ptr %sg_supported to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load = load i32, ptr %sg_supported, align 4
  %bf.clear = and i32 %bf.load, 2147483647
  store i32 %bf.clear, ptr %sg_supported, align 4
  %name = getelementptr inbounds %struct.usb_gadget, ptr %bdc, i32 0, i32 10
  %9 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str, ptr %name, align 4
  %irq = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 21
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 8
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %6, i32 noundef %11, ptr noundef nonnull @bdc_udc_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %bdc) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %if.end20, label %do.end17

do.end17:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev6, align 4
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.10, i32 noundef %15, i32 noundef %call.i) #7
  br label %cleanup

if.end20:                                         ; preds = %do.end
  %call21 = tail call i32 @bdc_init_ep(ptr noundef %bdc) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  %16 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev6, align 4
  br i1 %tobool22.not, label %if.end28, label %do.end26

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.14, i32 noundef %call21) #7
  br label %cleanup

if.end28:                                         ; preds = %if.end20
  %call31 = tail call i32 @usb_add_gadget_udc(ptr noundef %17, ptr noundef %bdc) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end38, label %do.end36

do.end36:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.17) #7
  br label %err0

if.end38:                                         ; preds = %if.end28
  tail call void @usb_gadget_set_state(ptr noundef %bdc, i32 noundef 0) #4
  %bdc_ep_array = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 7
  %20 = ptrtoint ptr %bdc_ep_array to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bdc_ep_array, align 8
  %arrayidx = getelementptr ptr, ptr %21, i32 1
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %desc = getelementptr inbounds %struct.bdc_ep, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @bdc_gadget_ep0_desc, ptr %desc, align 4
  %25 = load ptr, ptr %bdc_ep_array, align 8
  %arrayidx41 = getelementptr ptr, ptr %25, i32 1
  %26 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx41, align 4
  %call42 = tail call i32 @bdc_ep_enable(ptr noundef %27) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %do.body54, label %do.end47

do.end47:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev6, align 4
  %30 = ptrtoint ptr %bdc_ep_array to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bdc_ep_array, align 8
  %arrayidx50 = getelementptr ptr, ptr %31, i32 1
  %32 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx50, align 4
  %name51 = getelementptr inbounds %struct.bdc_ep, ptr %33, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.20, ptr noundef %name51) #7
  tail call void @usb_del_gadget_udc(ptr noundef %bdc) #4
  br label %err0

do.body54:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  %func_wake_notify = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 29
  tail call void @__init_work(ptr noundef %func_wake_notify, i32 noundef 0) #4
  %34 = ptrtoint ptr %func_wake_notify to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -64, ptr %func_wake_notify, align 8
  %lockdep_map = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 29, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.22, ptr noundef nonnull @bdc_udc_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry61 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 29, i32 0, i32 1
  %35 = ptrtoint ptr %entry61 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %entry61, ptr %entry61, align 4
  %prev.i = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 29, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %entry61, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 29, i32 0, i32 2
  %37 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @bdc_func_wake_timer, ptr %func, align 4
  %timer = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 29, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.24, ptr noundef nonnull @bdc_udc_init.__key.23) #4
  %regs = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 8
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %39, i32 64
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !179
  %41 = or i32 %40, 33554432
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !182
  tail call void @arm_heavy_mb() #4
  %add.ptr.i117 = getelementptr i8, ptr %43, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117, i32 %41) #4, !srcloc !183
  br label %cleanup

err0:                                             ; preds = %do.end47, %do.end36
  %ret.0 = phi i32 [ %call31, %do.end36 ], [ %call42, %do.end47 ]
  tail call void @bdc_free_ep(ptr noundef %bdc) #4
  br label %cleanup

cleanup:                                          ; preds = %err0, %do.body54, %do.end26, %do.end17
  %retval.0 = phi i32 [ %call.i, %do.end17 ], [ %call21, %do.end26 ], [ %ret.0, %err0 ], [ 0, %do.body54 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdc_udc_interrupt(i32 noundef %irq, ptr noundef %_bdc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.bdc, ptr %_bdc, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #4
  %regs = getelementptr inbounds %struct.bdc, ptr %_bdc, i32 0, i32 8
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 64
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !179
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr.i163 = getelementptr i8, ptr %5, i32 520
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i163) #4, !srcloc !178
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !179
  %and4 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.bdc, ptr %_bdc, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.60) #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %shr = lshr i32 %7, 24
  %and10 = lshr i32 %7, 16
  %shr11 = and i32 %and10, 255
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_udc_interrupt.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_udc_interrupt, %do.end23)) #4
          to label %if.then18 [label %do.end23], !srcloc !180

if.then18:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %dev19 = getelementptr inbounds %struct.bdc, ptr %_bdc, i32 0, i32 2
  %10 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev19, align 4
  %dqp_index20 = getelementptr inbounds %struct.bdc, ptr %_bdc, i32 0, i32 11, i32 2
  %12 = ptrtoint ptr %dqp_index20 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dqp_index20, align 2
  %conv = zext i16 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_udc_interrupt.__UNIQUE_ID_ddebug312, ptr noundef %11, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.61, i32 noundef %shr, i32 noundef %shr11, i32 noundef %conv) #4
  br label %do.end23

do.end23:                                         ; preds = %if.then18, %if.end8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %shr11)
  %cmp = icmp eq i32 %shr, %shr11
  br i1 %cmp, label %do.body26, label %while.cond.preheader

while.cond.preheader:                             ; preds = %do.end23
  %dqp_index48 = getelementptr inbounds %struct.bdc, ptr %_bdc, i32 0, i32 11, i32 2
  %14 = ptrtoint ptr %dqp_index48 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %dqp_index48, align 2
  %conv49170 = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv49170)
  %cmp50.not171 = icmp eq i32 %shr, %conv49170
  br i1 %cmp50.not171, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %srr47 = getelementptr inbounds %struct.bdc, ptr %_bdc, i32 0, i32 11
  %dev74 = getelementptr inbounds %struct.bdc, ptr %_bdc, i32 0, i32 2
  %arrayidx81 = getelementptr %struct.bdc, ptr %_bdc, i32 0, i32 26, i32 1
  %sr_handler = getelementptr inbounds %struct.bdc, ptr %_bdc, i32 0, i32 26
  br label %while.body

do.body26:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_udc_interrupt.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_udc_interrupt, %cleanup)) #4
          to label %if.then40 [label %cleanup], !srcloc !180

if.then40:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #6
  %dev41 = getelementptr inbounds %struct.bdc, ptr %_bdc, i32 0, i32 2
  %16 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev41, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_udc_interrupt.__UNIQUE_ID_ddebug313, ptr noundef %17, ptr noundef nonnull @.str.63) #4
  br label %cleanup

while.body:                                       ; preds = %srr_dqp_index_advc.exit.while.body_crit_edge, %while.body.lr.ph
  %conv49172 = phi i32 [ %conv49170, %while.body.lr.ph ], [ %conv49, %srr_dqp_index_advc.exit.while.body_crit_edge ]
  %18 = ptrtoint ptr %srr47 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %srr47, align 8
  %arrayidx = getelementptr %struct.bdc_sr, ptr %19, i32 %conv49172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !184
  %arrayidx55 = getelementptr [4 x i32], ptr %arrayidx, i32 0, i32 3
  %20 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx55, align 4
  %22 = lshr i32 %21, 24
  %and56 = and i32 %22, 15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_udc_interrupt.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_udc_interrupt, %do.end77)) #4
          to label %land.lhs.true [label %do.end77], !srcloc !180

land.lhs.true:                                    ; preds = %while.body
  %call71 = tail call i32 @___ratelimit(ptr noundef nonnull @bdc_udc_interrupt._rs, ptr noundef nonnull @.str.61) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %land.lhs.true.do.end77_crit_edge, label %if.then73

land.lhs.true.do.end77_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end77

if.then73:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %dev74 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev74, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_udc_interrupt.descriptor, ptr noundef %24, ptr noundef nonnull @.str.65, i32 noundef %and56) #4
  br label %do.end77

do.end77:                                         ; preds = %if.then73, %land.lhs.true.do.end77_crit_edge, %while.body
  %25 = zext i32 %and56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %and56, label %do.end84 [
    i32 0, label %sw.bb
    i32 4, label %sw.bb79
  ]

sw.bb:                                            ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %sr_handler to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sr_handler, align 4
  tail call void %27(ptr noundef %_bdc, ptr noundef %arrayidx) #4
  br label %sw.epilog

sw.bb79:                                          ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx81, align 4
  tail call void %29(ptr noundef %_bdc, ptr noundef %arrayidx) #4
  br label %sw.epilog

do.end84:                                         ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %dev74 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev74, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.67, i32 noundef %and56) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end84, %sw.bb79, %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @srr_dqp_index_advc.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_udc_interrupt, %srr_dqp_index_advc.exit)) #4
          to label %land.lhs.true.i [label %srr_dqp_index_advc.exit], !srcloc !180

land.lhs.true.i:                                  ; preds = %sw.epilog
  %call5.i = tail call i32 @___ratelimit(ptr noundef nonnull @srr_dqp_index_advc._rs, ptr noundef nonnull @.str.72) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.srr_dqp_index_advc.exit_crit_edge, label %if.then.i

land.lhs.true.i.srr_dqp_index_advc.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %srr_dqp_index_advc.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %dev74 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev74, align 4
  %34 = ptrtoint ptr %dqp_index48 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %dqp_index48, align 2
  %conv.i = zext i16 %35 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @srr_dqp_index_advc.descriptor, ptr noundef %33, ptr noundef nonnull @.str.73, i32 noundef %conv.i) #4
  br label %srr_dqp_index_advc.exit

srr_dqp_index_advc.exit:                          ; preds = %if.then.i, %land.lhs.true.i.srr_dqp_index_advc.exit_crit_edge, %sw.epilog
  %36 = ptrtoint ptr %dqp_index48 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %dqp_index48, align 2
  %inc.i = add i16 %37, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %inc.i)
  %cmp.i = icmp eq i16 %inc.i, 64
  %spec.select.i = select i1 %cmp.i, i16 0, i16 %inc.i
  %38 = ptrtoint ptr %dqp_index48 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %spec.select.i, ptr %dqp_index48, align 2
  %conv49 = zext i16 %spec.select.i to i32
  %cmp50.not = icmp eq i32 %shr, %conv49
  br i1 %cmp50.not, label %srr_dqp_index_advc.exit.while.end_crit_edge, label %srr_dqp_index_advc.exit.while.body_crit_edge

srr_dqp_index_advc.exit.while.body_crit_edge:     ; preds = %srr_dqp_index_advc.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

srr_dqp_index_advc.exit.while.end_crit_edge:      ; preds = %srr_dqp_index_advc.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %srr_dqp_index_advc.exit.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %39 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs, align 4
  %add.ptr.i164 = getelementptr i8, ptr %40, i32 520
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i164) #4, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !179
  %42 = and i32 %41, -486604545
  %43 = ptrtoint ptr %dqp_index48 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %dqp_index48, align 2
  %conv92 = zext i16 %44 to i32
  %shl = shl nuw i32 %conv92, 16
  %45 = or i32 %42, 16777216
  %46 = call i32 @llvm.bswap.i32(i32 %45)
  %or93 = or i32 %46, %shl
  %47 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !182
  tail call void @arm_heavy_mb() #4
  %49 = tail call i32 @llvm.bswap.i32(i32 %or93) #4
  %add.ptr.i165 = getelementptr i8, ptr %48, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i165, i32 %49) #4, !srcloc !183
  %50 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs, align 4
  %add.ptr.i166 = getelementptr i8, ptr %51, i32 520
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i166) #4, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !179
  %reinit = getelementptr inbounds %struct.bdc, ptr %_bdc, i32 0, i32 18
  %53 = ptrtoint ptr %reinit to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %reinit, align 2, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool97.not = icmp eq i8 %54, 0
  br i1 %tobool97.not, label %while.end.cleanup_crit_edge, label %if.then98

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then98:                                        ; preds = %while.end
  %call99 = tail call i32 @bdc_reinit(ptr noundef %_bdc) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.then98.cleanup_crit_edge, label %do.end104

if.then98.cleanup_crit_edge:                      ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end104:                                        ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #6
  %dev105 = getelementptr inbounds %struct.bdc, ptr %_bdc, i32 0, i32 2
  %55 = ptrtoint ptr %dev105 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev105, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.70) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end104, %if.then98.cleanup_crit_edge, %while.end.cleanup_crit_edge, %if.then40, %do.body26, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 1, %do.body26 ], [ 1, %if.then40 ], [ 1, %if.then98.cleanup_crit_edge ], [ 1, %do.end104 ], [ 1, %while.end.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #4
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdc_init_ep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_gadget_udc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdc_ep_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bdc_func_wake_timer(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1392
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_func_wake_timer.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_func_wake_timer, %do.body6)) #4
          to label %if.then [label %do.body6], !srcloc !180

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr i8, ptr %work, i32 -340
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_func_wake_timer.__UNIQUE_ID_ddebug300, ptr noundef %1, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.74) #4
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  %lock = getelementptr i8, ptr %work, i32 -336
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %devstatus = getelementptr i8, ptr %work, i32 -52
  %2 = ptrtoint ptr %devstatus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %devstatus, align 4
  %and = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %do.body6.if.end38_crit_edge, label %do.body16

do.body6.if.end38_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

do.body16:                                        ; preds = %do.body6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_func_wake_timer.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_func_wake_timer, %do.end34)) #4
          to label %if.then30 [label %do.end34], !srcloc !180

if.then30:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #6
  %dev31 = getelementptr i8, ptr %work, i32 -340
  %4 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev31, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_func_wake_timer.__UNIQUE_ID_ddebug301, ptr noundef %5, ptr noundef nonnull @.str.75) #4
  br label %do.end34

do.end34:                                         ; preds = %if.then30, %do.body16
  %call35 = tail call i32 @bdc_function_wake_fh(ptr noundef %add.ptr, i8 noundef zeroext 0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %work, i32 noundef 250) #4
  br label %if.end38

if.end38:                                         ; preds = %do.end34, %do.body6.if.end38_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_del_gadget_udc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdc_free_ep(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bdc_udc_exit(ptr noundef %bdc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_udc_exit.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_udc_exit, %do.body5)) #4
          to label %if.then [label %do.body5], !srcloc !180

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_udc_exit.__UNIQUE_ID_ddebug322, ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.25) #4
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 3
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %bdc_ep_array = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 7
  %2 = ptrtoint ptr %bdc_ep_array to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdc_ep_array, align 8
  %arrayidx = getelementptr ptr, ptr %3, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call13 = tail call i32 @bdc_ep_disable(ptr noundef %5) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #4
  tail call void @usb_del_gadget_udc(ptr noundef %bdc) #4
  tail call void @bdc_free_ep(ptr noundef %bdc) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdc_ep_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdc_function_wake_fh(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdc_config_ep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdc_udc_wakeup(ptr noundef %gadget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_udc_wakeup.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_udc_wakeup, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !180

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.bdc, ptr %gadget, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %devstatus = getelementptr inbounds %struct.bdc, ptr %gadget, i32 0, i32 20
  %2 = ptrtoint ptr %devstatus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %devstatus, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_udc_wakeup.__UNIQUE_ID_ddebug318, ptr noundef %1, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %3) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %devstatus5 = getelementptr inbounds %struct.bdc, ptr %gadget, i32 0, i32 20
  %4 = ptrtoint ptr %devstatus5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %devstatus5, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %do.body10

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body10:                                        ; preds = %do.end
  %lock = getelementptr inbounds %struct.bdc, ptr %gadget, i32 0, i32 3
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %regs = getelementptr inbounds %struct.bdc, ptr %gadget, i32 0, i32 8
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 32
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !178
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !179
  %10 = trunc i32 %9 to i8
  %conv20 = and i8 %10, 15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_udc_wakeup.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_udc_wakeup, %do.end40)) #4
          to label %if.then35 [label %do.end40], !srcloc !180

if.then35:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #6
  %dev36 = getelementptr inbounds %struct.bdc, ptr %gadget, i32 0, i32 2
  %11 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev36, align 4
  %conv37 = zext i8 %conv20 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_udc_wakeup.__UNIQUE_ID_ddebug319, ptr noundef %12, ptr noundef nonnull @.str.48, i32 noundef %conv37, i32 noundef %9) #4
  br label %do.end40

do.end40:                                         ; preds = %if.then35, %do.body10
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv20)
  %cmp42.not = icmp eq i8 %conv20, 3
  br i1 %cmp42.not, label %if.end50, label %do.end47

do.end47:                                         ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #6
  %conv41 = zext i8 %conv20 to i32
  %dev48 = getelementptr inbounds %struct.bdc, ptr %gadget, i32 0, i32 2
  %13 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev48, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.49, i32 noundef %conv41) #7
  br label %out

if.end50:                                         ; preds = %do.end40
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 5
  %15 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %16)
  %cmp52 = icmp eq i32 %16, 5
  br i1 %cmp52, label %if.then54, label %if.end50.if.end56_crit_edge

if.end50.if.end56_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end56

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %devstatus5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %devstatus5, align 4
  %or = or i32 %18, 65536
  store i32 %or, ptr %devstatus5, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end50.if.end56_crit_edge
  %and58 = and i32 %9, -416
  %or60 = or i32 %and58, 16
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !182
  tail call void @arm_heavy_mb() #4
  %21 = tail call i32 @llvm.bswap.i32(i32 %or60) #4
  %add.ptr.i120 = getelementptr i8, ptr %20, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i120, i32 %21) #4, !srcloc !183
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %add.ptr.i121 = getelementptr i8, ptr %23, i32 32
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i121) #4, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !179
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_udc_wakeup.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_udc_wakeup, %out)) #4
          to label %if.then80 [label %out], !srcloc !180

if.then80:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #4
  %conv65 = and i32 %25, 15
  %dev81 = getelementptr inbounds %struct.bdc, ptr %gadget, i32 0, i32 2
  %26 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev81, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_udc_wakeup.__UNIQUE_ID_ddebug320, ptr noundef %27, ptr noundef nonnull @.str.48, i32 noundef %conv65, i32 noundef %25) #4
  br label %out

out:                                              ; preds = %if.then80, %if.end56, %do.end47
  %ret.0 = phi i32 [ -22, %do.end47 ], [ 0, %if.then80 ], [ 0, %if.end56 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call13) #4
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -95, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdc_udc_set_selfpowered(ptr noundef %gadget, i32 noundef %is_self) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_udc_set_selfpowered.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_udc_set_selfpowered, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !180

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.bdc, ptr %gadget, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_udc_set_selfpowered.__UNIQUE_ID_ddebug317, ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.51) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_self)
  %cmp.not = icmp eq i32 %is_self, 0
  %is_selfpowered = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 17
  %2 = ptrtoint ptr %is_selfpowered to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %is_selfpowered, align 4
  %bf.shl = select i1 %cmp.not, i32 0, i32 262144
  %bf.clear = and i32 %bf.load, -262145
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %is_selfpowered, align 4
  %lock = getelementptr inbounds %struct.bdc, ptr %gadget, i32 0, i32 3
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %devstatus = getelementptr inbounds %struct.bdc, ptr %gadget, i32 0, i32 20
  %3 = ptrtoint ptr %devstatus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %devstatus, align 4
  %and = and i32 %4, -2
  %masksel = zext i1 %cmp.not to i32
  %and.sink = or i32 %and, %masksel
  store i32 %and.sink, ptr %devstatus, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdc_udc_pullup(ptr noundef %gadget, i32 noundef %is_on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_udc_pullup.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_udc_pullup, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !180

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.bdc, ptr %gadget, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_udc_pullup.__UNIQUE_ID_ddebug316, ptr noundef %1, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.52, i32 noundef %is_on) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool5.not = icmp eq ptr %gadget, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %do.body9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body9:                                         ; preds = %do.end
  %lock = getelementptr inbounds %struct.bdc, ptr %gadget, i32 0, i32 3
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %tobool17.not = icmp eq i32 %is_on, 0
  br i1 %tobool17.not, label %if.then18, label %if.else

if.then18:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @bdc_softdisconn(ptr noundef nonnull %gadget) #4
  %pullup = getelementptr inbounds %struct.bdc, ptr %gadget, i32 0, i32 19
  %2 = ptrtoint ptr %pullup to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %pullup, align 1
  br label %if.end24

if.else:                                          ; preds = %do.body9
  %pullup19 = getelementptr inbounds %struct.bdc, ptr %gadget, i32 0, i32 19
  %3 = ptrtoint ptr %pullup19 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %pullup19, align 1
  %regs = getelementptr inbounds %struct.bdc, ptr %gadget, i32 0, i32 8
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 32
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !179
  %7 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool21.not = icmp eq i32 %7, 0
  br i1 %tobool21.not, label %if.else.if.end24_crit_edge, label %if.then22

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @bdc_softconn(ptr noundef nonnull %gadget) #4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.else.if.end24_crit_edge, %if.then18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdc_udc_start(ptr noundef %gadget, ptr noundef %driver) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_udc_start.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_udc_start, %do.body6)) #4
          to label %if.then [label %do.body6], !srcloc !180

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.bdc, ptr %gadget, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_udc_start.__UNIQUE_ID_ddebug314, ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.54) #4
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.bdc, ptr %gadget, i32 0, i32 3
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %gadget_driver = getelementptr inbounds %struct.bdc, ptr %gadget, i32 0, i32 1
  %2 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gadget_driver, align 8
  %tobool14.not = icmp eq ptr %3, null
  br i1 %tobool14.not, label %if.end24, label %do.end18

do.end18:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  %dev19 = getelementptr inbounds %struct.bdc, ptr %gadget, i32 0, i32 2
  %4 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev19, align 4
  %name = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 10
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %driver22 = getelementptr inbounds %struct.usb_gadget_driver, ptr %3, i32 0, i32 9
  %8 = ptrtoint ptr %driver22 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.55, ptr noundef %7, ptr noundef %9) #7
  br label %err

if.end24:                                         ; preds = %do.body6
  %call25 = tail call i32 @bdc_run(ptr noundef %gadget) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end32, label %do.end30

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %dev31 = getelementptr inbounds %struct.bdc, ptr %gadget, i32 0, i32 2
  %10 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.54) #7
  br label %err

if.end32:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %driver, ptr %gadget_driver, align 8
  %driver34 = getelementptr inbounds %struct.usb_gadget_driver, ptr %driver, i32 0, i32 9
  %driver37 = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 11, i32 6
  %13 = ptrtoint ptr %driver37 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %driver34, ptr %driver37, align 4
  br label %err

err:                                              ; preds = %if.end32, %do.end30, %do.end18
  %ret.0 = phi i32 [ -16, %do.end18 ], [ %call25, %do.end30 ], [ 0, %if.end32 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #4
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdc_udc_stop(ptr noundef %gadget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_udc_stop.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_udc_stop, %do.body6)) #4
          to label %if.then [label %do.body6], !srcloc !180

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.bdc, ptr %gadget, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_udc_stop.__UNIQUE_ID_ddebug315, ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.59) #4
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.bdc, ptr %gadget, i32 0, i32 3
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %call14 = tail call i32 @bdc_stop(ptr noundef %gadget) #4
  %gadget_driver = getelementptr inbounds %struct.bdc, ptr %gadget, i32 0, i32 1
  %2 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %gadget_driver, align 8
  %driver = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 11, i32 6
  %3 = ptrtoint ptr %driver to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %driver, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #4
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdc_softdisconn(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdc_run(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdc_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdc_reinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !81, !82, !83, !85, !87, !89, !91, !93, !95, !97, !99, !100, !101, !103, !104, !106, !107, !108, !109, !111, !113, !114, !116, !117, !118, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !134, !135, !136, !137, !139, !140, !142, !143, !145, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !161, !163, !165, !166, !168}
!llvm.module.flags = !{!169, !170, !171, !172, !173, !174, !175, !176}
!llvm.ident = !{!177}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 238, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @bdc_sr_uspc.__UNIQUE_ID_ddebug307, !1, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 253, i32 4}
!8 = !{ptr @bdc_sr_uspc.__UNIQUE_ID_ddebug308, !7, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 261, i32 3}
!11 = !{ptr @bdc_sr_uspc.__UNIQUE_ID_ddebug309, !10, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 277, i32 3}
!14 = !{ptr @bdc_sr_uspc.__UNIQUE_ID_ddebug310, !13, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 283, i32 2}
!17 = !{ptr @bdc_sr_uspc.__UNIQUE_ID_ddebug311, !16, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 522, i32 2}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @bdc_udc_init.__UNIQUE_ID_ddebug321, !19, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 535, i32 3}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @bdc_udc_init._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @bdc_udc_init._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 543, i32 3}
!30 = !{ptr @bdc_udc_init._entry.13, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @bdc_udc_init._entry_ptr.15, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 549, i32 3}
!34 = !{ptr @bdc_udc_init._entry.16, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @bdc_udc_init._entry_ptr.18, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 560, i32 3}
!38 = !{ptr @bdc_udc_init._entry.19, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @bdc_udc_init._entry_ptr.21, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @bdc_udc_init.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 564, i32 2}
!42 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @bdc_udc_init.__key.23, !41, !"__key", i1 false, i1 false}
!44 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 582, i32 2}
!47 = !{ptr @bdc_udc_exit.__UNIQUE_ID_ddebug322, !46, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 133, i32 2}
!50 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @bdc_uspc_disconnected.__UNIQUE_ID_ddebug299, !49, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 183, i32 2}
!54 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @handle_link_state_change.__UNIQUE_ID_ddebug302, !53, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 189, i32 4}
!58 = !{ptr @handle_link_state_change.__UNIQUE_ID_ddebug303, !57, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 212, i32 5}
!61 = !{ptr @handle_link_state_change.__UNIQUE_ID_ddebug304, !60, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 218, i32 3}
!64 = !{ptr @handle_link_state_change.__UNIQUE_ID_ddebug305, !63, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 225, i32 3}
!67 = !{ptr @handle_link_state_change.__UNIQUE_ID_ddebug306, !66, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 81, i32 2}
!70 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @bdc_uspc_connected.__UNIQUE_ID_ddebug297, !69, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 114, i32 3}
!74 = !{ptr @bdc_uspc_connected._entry, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @bdc_uspc_connected._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 117, i32 2}
!78 = !{ptr @bdc_uspc_connected.__UNIQUE_ID_ddebug298, !77, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 122, i32 3}
!81 = !{ptr @bdc_uspc_connected._entry.38, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @bdc_uspc_connected._entry_ptr.40, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 43, i32 2}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 44, i32 2}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 45, i32 2}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 46, i32 2}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 47, i32 2}
!93 = !{ptr @conn_speed_str, !94, !"conn_speed_str", i1 false, i1 false}
!94 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 42, i32 27}
!95 = !{ptr @bdc_gadget_ops, !96, !"bdc_gadget_ops", i1 false, i1 false}
!96 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 508, i32 36}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 473, i32 2}
!99 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @bdc_udc_wakeup.__UNIQUE_ID_ddebug318, !98, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!101 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 483, i32 2}
!103 = !{ptr @bdc_udc_wakeup.__UNIQUE_ID_ddebug319, !102, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 485, i32 3}
!106 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @bdc_udc_wakeup._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @bdc_udc_wakeup._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @bdc_udc_wakeup.__UNIQUE_ID_ddebug320, !110, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!110 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 501, i32 2}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 452, i32 2}
!113 = !{ptr @bdc_udc_set_selfpowered.__UNIQUE_ID_ddebug317, !112, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 417, i32 2}
!116 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @bdc_udc_pullup.__UNIQUE_ID_ddebug316, !115, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 369, i32 2}
!120 = !{ptr @bdc_udc_start.__UNIQUE_ID_ddebug314, !119, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 372, i32 3}
!123 = !{ptr @bdc_udc_start._entry, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @bdc_udc_start._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.57, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 385, i32 3}
!127 = !{ptr @bdc_udc_start._entry.56, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @bdc_udc_start._entry_ptr.58, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.59, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 401, i32 2}
!131 = !{ptr @bdc_udc_stop.__UNIQUE_ID_ddebug315, !130, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!132 = !{ptr @.str.60, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 305, i32 3}
!134 = !{ptr @.str.61, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @bdc_udc_interrupt._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @bdc_udc_interrupt._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.62, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 311, i32 2}
!139 = !{ptr @bdc_udc_interrupt.__UNIQUE_ID_ddebug312, !138, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!140 = !{ptr @.str.63, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 317, i32 3}
!142 = !{ptr @bdc_udc_interrupt.__UNIQUE_ID_ddebug313, !141, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!143 = !{ptr @.str.64, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 327, i32 3}
!145 = !{ptr @bdc_udc_interrupt._rs, !144, !"_rs", i1 false, i1 false}
!146 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @bdc_udc_interrupt.descriptor, !144, !"descriptor", i1 false, i1 false}
!148 = !{ptr @.str.67, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 337, i32 4}
!150 = !{ptr @bdc_udc_interrupt._entry.66, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @bdc_udc_interrupt._entry_ptr.68, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.70, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 353, i32 4}
!154 = !{ptr @bdc_udc_interrupt._entry.69, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @bdc_udc_interrupt._entry_ptr.71, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @srr_dqp_index_advc._rs, !157, !"_rs", i1 false, i1 false}
!157 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 65, i32 2}
!158 = !{ptr @.str.72, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.73, !157, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @srr_dqp_index_advc.descriptor, !157, !"descriptor", i1 false, i1 false}
!161 = !{ptr @bdc_gadget_ep0_desc, !162, !"bdc_gadget_ep0_desc", i1 false, i1 false}
!162 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 51, i32 39}
!163 = !{ptr @.str.74, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 162, i32 2}
!165 = !{ptr @bdc_func_wake_timer.__UNIQUE_ID_ddebug300, !164, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!166 = !{ptr @.str.75, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/usb/gadget/udc/bdc/bdc_udc.c", i32 169, i32 3}
!168 = !{ptr @bdc_func_wake_timer.__UNIQUE_ID_ddebug301, !167, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!169 = !{i32 1, !"wchar_size", i32 2}
!170 = !{i32 1, !"min_enum_size", i32 4}
!171 = !{i32 8, !"branch-target-enforcement", i32 0}
!172 = !{i32 8, !"sign-return-address", i32 0}
!173 = !{i32 8, !"sign-return-address-all", i32 0}
!174 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!175 = !{i32 7, !"uwtable", i32 1}
!176 = !{i32 7, !"frame-pointer", i32 2}
!177 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!178 = !{i64 4993956}
!179 = !{i64 2155642101}
!180 = !{i64 2148967108, i64 2148967113, i64 2148967126, i64 2148967170, i64 2148967204, i64 2148967225}
!181 = !{i8 0, i8 2}
!182 = !{i64 2155642482}
!183 = !{i64 4993538}
!184 = !{i64 2155699251}
