; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/udc/bdc/bdc_core.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/bdc/bdc_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bdc = type { %struct.usb_gadget, ptr, ptr, %struct.spinlock, ptr, i32, i32, ptr, ptr, %struct.bdc_scratchpad, i32, %struct.srr, %struct.usb_ctrlrequest, %struct.bdc_req, %struct.bdc_req, i32, i8, i8, i8, i8, i32, i32, ptr, i32, ptr, i8, [2 x ptr], [3 x ptr], [6 x i8], %struct.delayed_work, ptr }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@bdc_stop.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 13, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bdc\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bdc_stop\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/usb/gadget/udc/bdc/bdc_core.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s ()\0A\0A\00", [24 x i8] zeroinitializer }, align 32
@bdc_stop.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 14, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"BDC already halted\0A\00", [44 x i8] zeroinitializer }, align 32
@bdc_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 67, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bdc stop operation failed\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bdc_stop._entry_ptr = internal global ptr @bdc_stop._entry, section ".printk_index", align 4
@bdc_reset.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 19, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bdc_reset\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s ()\0A\00", [25 x i8] zeroinitializer }, align 32
@bdc_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 90, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bdc reset operation failed\00", [37 x i8] zeroinitializer }, align 32
@bdc_reset._entry_ptr = internal global ptr @bdc_reset._entry, section ".printk_index", align 4
@bdc_run.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.9, i8 0, i8 25, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bdc_run\00", [24 x i8] zeroinitializer }, align 32
@bdc_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.11, ptr @.str.2, i32 105, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bdc is already in running state\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bdc_run._entry_ptr = internal global ptr @bdc_run._entry, section ".printk_index", align 4
@bdc_run._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.11, ptr @.str.2, i32 114, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bdc run operation failed:%d\00", [36 x i8] zeroinitializer }, align 32
@bdc_run._entry_ptr.16 = internal global ptr @bdc_run._entry.14, section ".printk_index", align 4
@bdc_run._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.11, ptr @.str.2, i32 120, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"bdc not in normal mode after RUN op :%d\0A\00", [55 x i8] zeroinitializer }, align 32
@bdc_run._entry_ptr.19 = internal global ptr @bdc_run._entry.17, section ".printk_index", align 4
@bdc_softconn.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 34, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bdc_softconn\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s () uspc=%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@bdc_softdisconn.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 37, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bdc_softdisconn\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s () uspc=%x\0A\00", [17 x i8] zeroinitializer }, align 32
@bdc_reinit.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 86, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bdc_reinit\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@__initcall__kmod_bdc__325_654_bdc_driver_init6 = internal global ptr @bdc_driver_init, section ".initcall6.init", align 4
@bdc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bdc_probe, ptr @bdc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bdc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bdc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bdc_driver_exit = internal global ptr @bdc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author326 = internal constant [52 x i8] c"bdc.author=Ashwini Pahuja <ashwini.linux@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file327 = internal constant [40 x i8] c"bdc.file=drivers/usb/gadget/udc/bdc/bdc\00", section ".modinfo", align 1
@__UNIQUE_ID_license328 = internal constant [16 x i8] c"bdc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description329 = internal constant [54 x i8] c"bdc.description=Broadcom USB Device Controller driver\00", section ".modinfo", align 1
@poll_oip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 41, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"operation timedout BDCSC: 0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"poll_oip\00", [23 x i8] zeroinitializer }, align 32
@poll_oip._entry_ptr = internal global ptr @poll_oip._entry, section ".printk_index", align 4
@poll_oip.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 10, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s complete status=%d\00", [42 x i8] zeroinitializer }, align 32
@bdc_mem_init.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.9, i8 0, i8 55, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bdc_mem_init\00", [19 x i8] zeroinitializer }, align 32
@bdc_mem_init.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 58, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bdc->srr.sr_bds =%p\0A\00", [43 x i8] zeroinitializer }, align 32
@bdc_mem_init.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.31, i8 0, i8 59, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"SRRBAL[0]=%08x NUM_SR_ENTRIES:%d size:%d\0A\00", [54 x i8] zeroinitializer }, align 32
@bdc_mem_init.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.32, i8 0, i8 65, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usb2_pm=%08x\00", [19 x i8] zeroinitializer }, align 32
@bdc_mem_init.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.33, i8 0, i8 67, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usb2_pm=%08x\0A\00", [18 x i8] zeroinitializer }, align 32
@bdc_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bdc-udc-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bdc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@bdc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @bdc_suspend, ptr @bdc_resume, ptr @bdc_suspend, ptr @bdc_resume, ptr @bdc_suspend, ptr @bdc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bdc_probe.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 0, i8 123, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bdc_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s()\0A\00", [26 x i8] zeroinitializer }, align 32
@bdc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&bdc->lock\00", [21 x i8] zeroinitializer }, align 32
@bdc_probe.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.37, i8 0, i8 127, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bdc->regs: %p irq=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"phys\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"#phy-cells\00", [21 x i8] zeroinitializer }, align 32
@bdc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.34, ptr @.str.2, i32 522, ptr @.str.41, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Using %d phy(s)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@bdc_probe._entry_ptr = internal global ptr @bdc_probe._entry, section ".printk_index", align 4
@bdc_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.34, ptr @.str.2, i32 530, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"BDC phy specified but not found:%d\0A\00", [60 x i8] zeroinitializer }, align 32
@bdc_probe._entry_ptr.44 = internal global ptr @bdc_probe._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sw_usbd\00", [24 x i8] zeroinitializer }, align 32
@bdc_probe._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.34, ptr @.str.2, i32 541, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"could not enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@bdc_probe._entry_ptr.48 = internal global ptr @bdc_probe._entry.46, section ".printk_index", align 4
@bdc_probe._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.34, ptr @.str.2, i32 547, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"BDC phy init failure:%d\0A\00", [39 x i8] zeroinitializer }, align 32
@bdc_probe._entry_ptr.51 = internal global ptr @bdc_probe._entry.49, section ".printk_index", align 4
@bdc_probe.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.52, i8 0, i8 -118, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Using 64-bit address\0A\00", [42 x i8] zeroinitializer }, align 32
@bdc_probe._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.34, ptr @.str.2, i32 559, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"No suitable DMA config available, abort\0A\00", [55 x i8] zeroinitializer }, align 32
@bdc_probe._entry_ptr.55 = internal global ptr @bdc_probe._entry.53, section ".printk_index", align 4
@bdc_probe.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.56, i8 0, i8 -116, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Using 32-bit address\0A\00", [42 x i8] zeroinitializer }, align 32
@bdc_probe._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.34, ptr @.str.2, i32 567, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"BDC init failure:%d\0A\00", [43 x i8] zeroinitializer }, align 32
@bdc_probe._entry_ptr.59 = internal global ptr @bdc_probe._entry.57, section ".printk_index", align 4
@bdc_probe._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.34, ptr @.str.2, i32 572, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"BDC Gadget init failure:%d\0A\00", [36 x i8] zeroinitializer }, align 32
@bdc_probe._entry_ptr.62 = internal global ptr @bdc_probe._entry.60, section ".printk_index", align 4
@bdc_hw_init.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.2, ptr @.str.9, i8 0, i8 107, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bdc_hw_init\00", [20 x i8] zeroinitializer }, align 32
@bdc_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.63, ptr @.str.2, i32 432, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"err resetting bdc abort bdc init%d\0A\00", [60 x i8] zeroinitializer }, align 32
@bdc_hw_init._entry_ptr = internal global ptr @bdc_hw_init._entry, section ".printk_index", align 4
@bdc_hw_init._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.63, ptr @.str.2, i32 437, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Mem alloc failed, aborting\0A\00", [36 x i8] zeroinitializer }, align 32
@bdc_hw_init._entry_ptr.67 = internal global ptr @bdc_hw_init._entry.65, section ".printk_index", align 4
@bdc_hw_init.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.2, ptr @.str.68, i8 0, i8 110, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HW Init done\0A\00", [18 x i8] zeroinitializer }, align 32
@bdc_mem_alloc.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.2, ptr @.str.70, i8 0, i8 93, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bdc_mem_alloc\00", [18 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s() NUM_BDS_PER_TABLE:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@bdc_mem_alloc.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.2, ptr @.str.71, i8 0, i8 94, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"page_size=%d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"BDC BD tables\00", [18 x i8] zeroinitializer }, align 32
@bdc_mem_alloc.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.2, ptr @.str.73, i8 0, i8 99, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ieps:%d eops:%d num_eps:%d\0A\00", [36 x i8] zeroinitializer }, align 32
@bdc_mem_alloc.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.2, ptr @.str.74, i8 0, i8 101, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Allocating sr report0\0A\00", [41 x i8] zeroinitializer }, align 32
@bdc_mem_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.69, ptr @.str.2, i32 411, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Couldn't initialize memory\0A\00", [36 x i8] zeroinitializer }, align 32
@bdc_mem_alloc._entry_ptr = internal global ptr @bdc_mem_alloc._entry, section ".printk_index", align 4
@scratchpad_setup.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.76, ptr @.str.2, ptr @.str.77, i8 0, i8 40, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"scratchpad_setup\00", [47 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s() sp_buff_size=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@scratchpad_setup.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.76, ptr @.str.2, ptr @.str.78, i8 0, i8 41, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Scratchpad buffer not needed\0A\00", [34 x i8] zeroinitializer }, align 32
@scratchpad_setup.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.76, ptr @.str.2, ptr @.str.79, i8 0, i8 42, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Allocating %d bytes for scratchpad\0A\00", [60 x i8] zeroinitializer }, align 32
@setup_srr.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.2, ptr @.str.81, i8 0, i8 49, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"setup_srr\00", [22 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s() NUM_SR_ENTRIES:%d\0A\00", [40 x i8] zeroinitializer }, align 32
@bdc_mem_free.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.2, ptr @.str.25, i8 0, i8 78, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bdc_mem_free\00", [19 x i8] zeroinitializer }, align 32
@bdc_hw_exit.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.9, i8 0, i8 105, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bdc_hw_exit\00", [20 x i8] zeroinitializer }, align 32
@bdc_remove.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.2, ptr @.str.9, i8 0, i8 -109, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bdc_remove\00", [21 x i8] zeroinitializer }, align 32
@bdc_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 620, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"err enabling the clock\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bdc_resume\00", [21 x i8] zeroinitializer }, align 32
@bdc_resume._entry_ptr = internal global ptr @bdc_resume._entry, section ".printk_index", align 4
@bdc_resume._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.2, i32 625, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"err in bdc reinit\0A\00", [45 x i8] zeroinitializer }, align 32
@bdc_resume._entry_ptr.89 = internal global ptr @bdc_resume._entry.87, section ".printk_index", align 4
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 54, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 58, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 67, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 78, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 90, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 101, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 105, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 114, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 119, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 139, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 151, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 346, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant [11 x i8] c"bdc_driver\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 644, i32 31 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 41, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 43, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 220, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 233, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 237, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 261, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 268, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant [13 x i8] c"bdc_of_match\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 638, i32 34 }
@___asan_gen_.204 = private unnamed_addr constant [11 x i8] c"bdc_pm_ops\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 635, i32 8 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 493, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 506, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 510, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 513, i32 7 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 513, i32 15 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 522, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 529, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 535, i32 40 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 541, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 547, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 554, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 558, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 563, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 567, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 572, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 429, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 432, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 437, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 442, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 370, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 378, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 382, i32 22 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 396, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 405, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 411, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 163, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 165, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 170, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 197, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 314, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 420, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 591, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 620, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.363 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.364 = private constant [41 x i8] c"../drivers/usb/gadget/udc/bdc/bdc_core.c\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 625, i32 3 }
@llvm.compiler.used = appending global [117 x ptr] [ptr @__UNIQUE_ID_author326, ptr @__UNIQUE_ID_description329, ptr @__UNIQUE_ID_file327, ptr @__UNIQUE_ID_license328, ptr @__exitcall_bdc_driver_exit, ptr @__initcall__kmod_bdc__325_654_bdc_driver_init6, ptr @bdc_driver_exit, ptr @bdc_hw_init._entry, ptr @bdc_hw_init._entry.65, ptr @bdc_hw_init._entry_ptr, ptr @bdc_hw_init._entry_ptr.67, ptr @bdc_mem_alloc._entry, ptr @bdc_mem_alloc._entry_ptr, ptr @bdc_probe._entry, ptr @bdc_probe._entry.42, ptr @bdc_probe._entry.46, ptr @bdc_probe._entry.49, ptr @bdc_probe._entry.53, ptr @bdc_probe._entry.57, ptr @bdc_probe._entry.60, ptr @bdc_probe._entry_ptr, ptr @bdc_probe._entry_ptr.44, ptr @bdc_probe._entry_ptr.48, ptr @bdc_probe._entry_ptr.51, ptr @bdc_probe._entry_ptr.55, ptr @bdc_probe._entry_ptr.59, ptr @bdc_probe._entry_ptr.62, ptr @bdc_reset._entry, ptr @bdc_reset._entry_ptr, ptr @bdc_resume._entry, ptr @bdc_resume._entry.87, ptr @bdc_resume._entry_ptr, ptr @bdc_resume._entry_ptr.89, ptr @bdc_run._entry, ptr @bdc_run._entry.14, ptr @bdc_run._entry.17, ptr @bdc_run._entry_ptr, ptr @bdc_run._entry_ptr.16, ptr @bdc_run._entry_ptr.19, ptr @bdc_stop._entry, ptr @bdc_stop._entry_ptr, ptr @poll_oip._entry, ptr @poll_oip._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @bdc_driver, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @bdc_of_match, ptr @bdc_pm_ops, ptr @.str.34, ptr @.str.35, ptr @bdc_probe.__key, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.88], section "llvm.metadata"
@0 = internal global [92 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_run._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_run._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poll_oip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_probe._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_probe._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_probe._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_probe._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_probe._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_hw_init._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_mem_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_resume._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bdc_stop(ptr nocapture noundef readonly %bdc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_stop.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_stop, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !215

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_stop.__UNIQUE_ID_ddebug296, ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regs = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 8
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 64
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !216
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !217
  %6 = and i32 %5, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %6)
  %cmp = icmp eq i32 %6, 1048576
  br i1 %cmp, label %do.body6, label %if.end25

do.body6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_stop.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_stop, %cleanup)) #7
          to label %if.then20 [label %cleanup], !srcloc !215

if.then20:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  %dev21 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %7 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev21, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_stop.__UNIQUE_ID_ddebug297, ptr noundef %8, ptr noundef nonnull @.str.4) #7
  br label %cleanup

if.end25:                                         ; preds = %do.end
  %and26 = and i32 %5, 268435455
  %or = or i32 %and26, -1879048192
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  tail call void @arm_heavy_mb() #7
  %11 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %add.ptr.i49 = getelementptr i8, ptr %10, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 %11) #7, !srcloc !219
  %call28 = tail call fastcc i32 @poll_oip(ptr noundef %bdc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end25.cleanup_crit_edge, label %do.end33

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end33:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %dev34 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %12 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev34, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.5) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %if.end25.cleanup_crit_edge, %if.then20, %do.body6
  %retval.0 = phi i32 [ 0, %if.then20 ], [ %call28, %do.end33 ], [ 0, %if.end25.cleanup_crit_edge ], [ 0, %do.body6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @poll_oip(ptr nocapture noundef readonly %bdc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #7
  %add.i = add i64 %call, 500000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 39) #7
  %regs = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 8
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr5 = getelementptr i8, ptr %1, i32 64
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #7, !srcloc !216
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !220
  %4 = and i32 %3, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 7340032, i32 %4)
  %cmp11.not6 = icmp eq i32 %4, 7340032
  br i1 %cmp11.not6, label %entry.land.lhs.true_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then29.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call15 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call15, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call15, %add.i
  br i1 %cmp3.i, label %if.then19, label %if.then29

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %add.ptr23 = getelementptr i8, ptr %6, i32 64
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #7, !srcloc !216
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !221
  br label %for.end

if.then29:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #7
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 64
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !216
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !220
  %13 = and i32 %12, 7340032
  %cmp11.not = icmp eq i32 %13, 7340032
  br i1 %cmp11.not, label %if.then29.land.lhs.true_crit_edge, label %if.then29.for.end_crit_edge

if.then29.for.end_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then29.land.lhs.true_crit_edge:                ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

for.end:                                          ; preds = %if.then29.for.end_crit_edge, %if.then19, %entry.for.end_crit_edge
  %status.0 = phi i32 [ %8, %if.then19 ], [ %3, %entry.for.end_crit_edge ], [ %12, %if.then29.for.end_crit_edge ]
  %and33 = lshr i32 %status.0, 20
  %shr34 = and i32 %and33, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr34)
  %cmp35.not = icmp eq i32 %shr34, 7
  br i1 %cmp35.not, label %do.end41, label %do.body42

do.end41:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.26, i32 noundef %status.0) #10
  br label %if.end56

do.body42:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @poll_oip.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@poll_oip, %if.end56)) #7
          to label %if.then49 [label %if.end56], !srcloc !215

if.then49:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #9
  %dev50 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %16 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev50, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @poll_oip.__UNIQUE_ID_ddebug295, ptr noundef %17, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, i32 noundef %shr34) #7
  br label %if.end56

if.end56:                                         ; preds = %if.then49, %do.body42, %do.end41
  %cond = phi i32 [ 0, %if.then49 ], [ -110, %do.end41 ], [ 0, %do.body42 ]
  ret i32 %cond
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bdc_reset(ptr nocapture noundef readonly %bdc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_reset.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_reset, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !215

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_reset.__UNIQUE_ID_ddebug298, ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call i32 @bdc_stop(ptr noundef %bdc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %regs = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 8
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 64
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !217
  %5 = and i32 %4, -241
  %6 = or i32 %5, 48
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  tail call void @arm_heavy_mb() #7
  %add.ptr.i29 = getelementptr i8, ptr %8, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 %6) #7, !srcloc !219
  %call10 = tail call fastcc i32 @poll_oip(ptr noundef %bdc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end7.cleanup_crit_edge, label %do.end15

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %dev16 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %9 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.10) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %if.end7.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end.cleanup_crit_edge ], [ %call10, %do.end15 ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bdc_run(ptr nocapture noundef readonly %bdc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_run.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_run, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !215

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_run.__UNIQUE_ID_ddebug299, ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regs = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 8
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 64
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !216
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !217
  %6 = and i32 %5, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %6)
  %cmp = icmp eq i32 %6, 2097152
  br i1 %cmp, label %do.end8, label %if.end10

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev9 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %7 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.12) #10
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %and11 = and i32 %5, 268435455
  %or12 = or i32 %and11, 1342177280
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  tail call void @arm_heavy_mb() #7
  %11 = tail call i32 @llvm.bswap.i32(i32 %or12) #7
  %add.ptr.i51 = getelementptr i8, ptr %10, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 %11) #7, !srcloc !219
  %call14 = tail call fastcc i32 @poll_oip(ptr noundef %bdc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end21, label %do.end19

do.end19:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %dev20 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %12 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.15, i32 noundef %call14) #10
  br label %cleanup

if.end21:                                         ; preds = %if.end10
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr.i52 = getelementptr i8, ptr %15, i32 64
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i52) #7, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !217
  %17 = lshr i32 %16, 12
  %shr25 = and i32 %17, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr25)
  %cmp26.not = icmp eq i32 %shr25, 2
  br i1 %cmp26.not, label %if.end21.cleanup_crit_edge, label %do.end30

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end30:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %dev31 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %18 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.18, i32 noundef %shr25) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %if.end21.cleanup_crit_edge, %do.end19, %do.end8
  %retval.0 = phi i32 [ 0, %do.end8 ], [ %call14, %do.end19 ], [ -108, %do.end30 ], [ 0, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bdc_softconn(ptr nocapture noundef readonly %bdc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 8
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 32
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !217
  %3 = and i32 %2, -520093697
  %4 = or i32 %3, 352321536
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_softconn.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_softconn, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !215

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_softconn.__UNIQUE_ID_ddebug300, ptr noundef %7, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef %5) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  tail call void @arm_heavy_mb() #7
  %add.ptr.i13 = getelementptr i8, ptr %9, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %4) #7, !srcloc !219
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bdc_softdisconn(ptr nocapture noundef readonly %bdc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 8
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 32
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !217
  %3 = and i32 %2, 2147418111
  %4 = or i32 %3, -2147483648
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_softdisconn.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_softdisconn, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !215

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_softdisconn.__UNIQUE_ID_ddebug301, ptr noundef %7, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i32 noundef %5) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  tail call void @arm_heavy_mb() #7
  %add.ptr.i11 = getelementptr i8, ptr %9, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %4) #7, !srcloc !219
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bdc_reinit(ptr noundef %bdc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_reinit.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_reinit, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !215

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_reinit.__UNIQUE_ID_ddebug312, ptr noundef %1, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call i32 @bdc_stop(ptr noundef %bdc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %do.end.out_crit_edge

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end7:                                          ; preds = %do.end
  %call8 = tail call i32 @bdc_reset(ptr noundef %bdc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.out_crit_edge

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @bdc_mem_init(ptr noundef %bdc, i1 noundef zeroext true)
  %call12 = tail call i32 @bdc_run(ptr noundef %bdc)
  br label %out

out:                                              ; preds = %if.end11, %if.end7.out_crit_edge, %do.end.out_crit_edge
  %ret.0 = phi i32 [ %call4, %do.end.out_crit_edge ], [ %call8, %if.end7.out_crit_edge ], [ %call12, %if.end11 ]
  %reinit = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 18
  %2 = ptrtoint ptr %reinit to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %reinit, align 2
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bdc_mem_init(ptr noundef %bdc, i1 noundef zeroext %reinit) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_mem_init.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_mem_init, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !215

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_mem_init.__UNIQUE_ID_ddebug306, ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.29) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ep0_state = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 15
  %2 = ptrtoint ptr %ep0_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ep0_state, align 4
  %dev_addr = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 23
  %3 = ptrtoint ptr %dev_addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %dev_addr, align 8
  %srr = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 11
  %eqp_index = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 11, i32 1
  %4 = ptrtoint ptr %eqp_index to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %eqp_index, align 4
  %dqp_index = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 11, i32 2
  %5 = ptrtoint ptr %dqp_index to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %dqp_index, align 2
  %zlp_needed = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 17
  %6 = ptrtoint ptr %zlp_needed to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %zlp_needed, align 1
  %delayed_status = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 16
  %7 = ptrtoint ptr %delayed_status to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %delayed_status, align 8
  %regs = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 8
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %scratchpad = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 9
  %10 = ptrtoint ptr %scratchpad to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %scratchpad, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  %add.ptr.i = getelementptr i8, ptr %9, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #7, !srcloc !219
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  tail call void @arm_heavy_mb() #7
  %add.ptr.i207 = getelementptr i8, ptr %14, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i207, i32 402653184) #7, !srcloc !219
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_mem_init.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_mem_init, %do.end26)) #7
          to label %if.then21 [label %do.end26], !srcloc !215

if.then21:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev22 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %15 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev22, align 4
  %17 = ptrtoint ptr %srr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %srr, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_mem_init.__UNIQUE_ID_ddebug307, ptr noundef %16, ptr noundef nonnull @.str.30, ptr noundef %18) #7
  br label %do.end26

do.end26:                                         ; preds = %if.then21, %do.end
  %dma_addr = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 11, i32 3
  %19 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma_addr, align 8
  %or = or i32 %20, 5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_mem_init.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_mem_init, %do.end49)) #7
          to label %if.then44 [label %do.end49], !srcloc !215

if.then44:                                        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #9
  %dev45 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %21 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev45, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_mem_init.__UNIQUE_ID_ddebug308, ptr noundef %22, ptr noundef nonnull @.str.31, i32 noundef %or, i32 noundef 64, i32 noundef 5) #7
  br label %do.end49

do.end49:                                         ; preds = %if.then44, %do.end26
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  tail call void @arm_heavy_mb() #7
  %add.ptr.i208 = getelementptr i8, ptr %24, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i208, i32 %or) #7, !srcloc !219
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  tail call void @arm_heavy_mb() #7
  %add.ptr.i209 = getelementptr i8, ptr %26, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i209, i32 0) #7, !srcloc !219
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  %add.ptr.i210 = getelementptr i8, ptr %28, i32 520
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i210) #7, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !217
  %30 = and i32 %29, -436207617
  %31 = or i32 %30, 33554432
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  tail call void @arm_heavy_mb() #7
  %add.ptr.i211 = getelementptr i8, ptr %33, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i211, i32 %31) #7, !srcloc !219
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 4
  %add.ptr.i212 = getelementptr i8, ptr %35, i32 524
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i212) #7, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !217
  %37 = and i32 %36, 65535
  %38 = or i32 %37, -201261056
  %39 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  tail call void @arm_heavy_mb() #7
  %add.ptr.i213 = getelementptr i8, ptr %40, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i213, i32 %38) #7, !srcloc !219
  %41 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs, align 4
  %add.ptr.i214 = getelementptr i8, ptr %42, i32 44
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i214) #7, !srcloc !216
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !217
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_mem_init.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_mem_init, %do.end86)) #7
          to label %if.then82 [label %do.end86], !srcloc !215

if.then82:                                        ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #9
  %dev83 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %45 = ptrtoint ptr %dev83 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev83, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_mem_init.__UNIQUE_ID_ddebug309, ptr noundef %46, ptr noundef nonnull @.str.32, i32 noundef %44) #7
  br label %do.end86

do.end86:                                         ; preds = %if.then82, %do.end49
  %or87 = or i32 %44, 65536
  %47 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  tail call void @arm_heavy_mb() #7
  %49 = tail call i32 @llvm.bswap.i32(i32 %or87) #7
  %add.ptr.i215 = getelementptr i8, ptr %48, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i215, i32 %49) #7, !srcloc !219
  %50 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs, align 4
  %add.ptr.i216 = getelementptr i8, ptr %51, i32 44
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i216) #7, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !217
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_mem_init.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_mem_init, %do.end109)) #7
          to label %if.then105 [label %do.end109], !srcloc !215

if.then105:                                       ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #9
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #7
  %dev106 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %54 = ptrtoint ptr %dev106 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev106, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_mem_init.__UNIQUE_ID_ddebug310, ptr noundef %55, ptr noundef nonnull @.str.33, i32 noundef %53) #7
  br label %do.end109

do.end109:                                        ; preds = %if.then105, %do.end86
  %56 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs, align 4
  %add.ptr.i217 = getelementptr i8, ptr %57, i32 64
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i217) #7, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !217
  %59 = or i32 %58, -2147483648
  %60 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  tail call void @arm_heavy_mb() #7
  %add.ptr.i218 = getelementptr i8, ptr %61, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i218, i32 %59) #7, !srcloc !219
  br i1 %reinit, label %if.then115, label %if.else

if.then115:                                       ; preds = %do.end109
  %62 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs, align 4
  %add.ptr.i219 = getelementptr i8, ptr %63, i32 64
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i219) #7, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !217
  %65 = or i32 %64, 33554432
  %66 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  tail call void @arm_heavy_mb() #7
  %add.ptr.i220 = getelementptr i8, ptr %67, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i220, i32 %65) #7, !srcloc !219
  %buff = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 9, i32 1
  %68 = ptrtoint ptr %buff to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %buff, align 4
  %sp_buff_size = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 10
  %70 = ptrtoint ptr %sp_buff_size to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %sp_buff_size, align 4
  %72 = call ptr @memset(ptr %69, i32 0, i32 %71)
  %73 = ptrtoint ptr %srr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %srr, align 8
  %75 = call ptr @memset(ptr %74, i32 0, i32 1024)
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %bdc, i32 0, i32 5
  %76 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool123.not = icmp eq i32 %77, 0
  br i1 %tobool123.not, label %for.cond.preheader, label %if.then115.if.end135_crit_edge

if.then115.if.end135_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end135

for.cond.preheader:                               ; preds = %if.then115
  %num_eps = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 6
  %78 = ptrtoint ptr %num_eps to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_eps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %79)
  %cmp228 = icmp ugt i32 %79, 1
  br i1 %cmp228, label %for.body.lr.ph, label %for.cond.preheader.if.end135_crit_edge

for.cond.preheader.if.end135_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end135

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %bdc_ep_array = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0229 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %80 = ptrtoint ptr %bdc_ep_array to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bdc_ep_array, align 8
  %arrayidx = getelementptr ptr, ptr %81, i32 %i.0229
  %82 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx, align 4
  %flags = getelementptr inbounds %struct.bdc_ep, ptr %83, i32 0, i32 8
  %84 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %flags, align 4
  %inc = add nuw i32 %i.0229, 1
  %85 = ptrtoint ptr %num_eps to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %num_eps, align 4
  %cmp = icmp ult i32 %inc, %86
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end135_crit_edge

for.body.if.end135_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end135

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.else:                                          ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #9
  %sr_handler = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 26
  %87 = ptrtoint ptr %sr_handler to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @bdc_sr_xsf, ptr %sr_handler, align 4
  %arrayidx129 = getelementptr %struct.bdc, ptr %bdc, i32 0, i32 26, i32 1
  %88 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @bdc_sr_uspc, ptr %arrayidx129, align 4
  %sr_xsf_ep0 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 27
  %89 = ptrtoint ptr %sr_xsf_ep0 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @bdc_xsf_ep0_setup_recv, ptr %sr_xsf_ep0, align 4
  %arrayidx132 = getelementptr %struct.bdc, ptr %bdc, i32 0, i32 27, i32 1
  %90 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @bdc_xsf_ep0_data_start, ptr %arrayidx132, align 4
  %arrayidx134 = getelementptr %struct.bdc, ptr %bdc, i32 0, i32 27, i32 2
  %91 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @bdc_xsf_ep0_status_start, ptr %arrayidx134, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.else, %for.body.if.end135_crit_edge, %for.cond.preheader.if.end135_crit_edge, %if.then115.if.end135_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bdc_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bdc_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bdc_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @bdc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdc_sr_xsf(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdc_sr_uspc(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdc_xsf_ep0_setup_recv(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdc_xsf_ep0_data_start(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdc_xsf_ep0_status_start(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdc_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_probe.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_probe, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !215

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_probe.__UNIQUE_ID_ddebug320, ptr noundef %dev1, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.34) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1496, i32 noundef 3520) #7
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %do.end.cleanup167_crit_edge, label %if.end8

do.end.cleanup167_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup167

if.end8:                                          ; preds = %do.end
  %call9 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %regs = getelementptr inbounds %struct.bdc, ptr %call.i, i32 0, i32 8
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call9, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call9 to i32
  br label %cleanup167

if.end15:                                         ; preds = %if.end8
  %call16 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %if.end15.cleanup167_crit_edge, label %do.body19

if.end15.cleanup167_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup167

do.body19:                                        ; preds = %if.end15
  %lock = getelementptr inbounds %struct.bdc, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.36, ptr noundef nonnull @bdc_probe.__key, i16 noundef signext 3) #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %irq23 = getelementptr inbounds %struct.bdc, ptr %call.i, i32 0, i32 21
  %3 = ptrtoint ptr %irq23 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call16, ptr %irq23, align 8
  %dev24 = getelementptr inbounds %struct.bdc, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %dev24 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %dev24, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_probe.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_probe, %do.end44)) #7
          to label %if.then39 [label %do.end44], !srcloc !215

if.then39:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %7 = ptrtoint ptr %irq23 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq23, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_probe.__UNIQUE_ID_ddebug321, ptr noundef %dev1, ptr noundef nonnull @.str.37, ptr noundef %6, i32 noundef %8) #7
  br label %do.end44

do.end44:                                         ; preds = %if.then39, %do.body19
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %call45 = tail call i32 @of_count_phandle_with_args(ptr noundef %10, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39) #7
  %num_phys = getelementptr inbounds %struct.bdc, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %num_phys to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call45, ptr %num_phys, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp47 = icmp sgt i32 %call45, 0
  br i1 %cmp47, label %if.then48, label %if.else

if.then48:                                        ; preds = %do.end44
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call45, i32 4) #7
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !222

devm_kcalloc.exit.thread:                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  %phys258 = getelementptr inbounds %struct.bdc, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %phys258 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %phys258, align 4
  br label %cleanup167

devm_kcalloc.exit:                                ; preds = %if.then48
  %15 = extractvalue { i32, i1 } %12, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %15, i32 noundef 3520) #7
  %phys = getelementptr inbounds %struct.bdc, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call5.i.i, ptr %phys, align 4
  %tobool52.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool52.not, label %devm_kcalloc.exit.cleanup167_crit_edge, label %devm_kcalloc.exit.do.end59_crit_edge

devm_kcalloc.exit.do.end59_crit_edge:             ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end59

devm_kcalloc.exit.cleanup167_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup167

if.else:                                          ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %num_phys to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %num_phys, align 8
  br label %do.end59

do.end59:                                         ; preds = %if.else, %devm_kcalloc.exit.do.end59_crit_edge
  %18 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_phys, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.40, i32 noundef %19) #10
  %20 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_phys, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp62262 = icmp sgt i32 %21, 0
  br i1 %cmp62262, label %for.body.lr.ph, label %do.end59.for.end_crit_edge

do.end59.for.end_crit_edge:                       ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end59
  %phys65 = getelementptr inbounds %struct.bdc, ptr %call.i, i32 0, i32 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %phy_num.0263, 1
  %22 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_phys, align 8
  %cmp62 = icmp slt i32 %inc, %23
  br i1 %cmp62, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %phy_num.0263 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %24 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node, align 8
  %call64 = tail call ptr @devm_of_phy_get_by_index(ptr noundef %dev1, ptr noundef %25, i32 noundef %phy_num.0263) #7
  %26 = ptrtoint ptr %phys65 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %phys65, align 4
  %arrayidx = getelementptr ptr, ptr %27, i32 %phy_num.0263
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call64, ptr %arrayidx, align 4
  %29 = load ptr, ptr %phys65, align 4
  %arrayidx67 = getelementptr ptr, ptr %29, i32 %phy_num.0263
  %30 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx67, align 4
  %cmp.i253 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i253, label %if.then69, label %for.cond

if.then69:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %31 to i32
  %33 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.43, i32 noundef %32) #10
  br label %cleanup167

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %do.end59.for.end_crit_edge
  %call78 = tail call ptr @devm_clk_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.45) #7
  %clk = getelementptr inbounds %struct.bdc, ptr %call.i, i32 0, i32 30
  %35 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call78, ptr %clk, align 4
  %cmp.i254 = icmp ugt ptr %call78, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i254, label %if.then81, label %if.end84

if.then81:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %call78 to i32
  br label %cleanup167

if.end84:                                         ; preds = %for.end
  %call86 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %call78)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end92, label %do.end91

do.end91:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.47) #10
  br label %cleanup167

if.end92:                                         ; preds = %if.end84
  %call93 = tail call fastcc i32 @bdc_phy_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end100, label %do.end98

do.end98:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.50, i32 noundef %call93) #10
  br label %disable_clk

if.end100:                                        ; preds = %if.end92
  %39 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %40, i32 12
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !217
  %42 = and i32 %41, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool103.not = icmp eq i32 %42, 0
  br i1 %tobool103.not, label %if.end100.if.else125_crit_edge, label %land.lhs.true

if.end100.if.else125_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else125

land.lhs.true:                                    ; preds = %if.end100
  %call104 = tail call fastcc i32 @dma_set_mask_and_coherent(ptr noundef %dev1, i64 noundef -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %do.body107, label %land.lhs.true.if.else125_crit_edge

land.lhs.true.if.else125_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else125

do.body107:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_probe.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_probe, %if.end151)) #7
          to label %if.then121 [label %if.end151], !srcloc !215

if.then121:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_probe.__UNIQUE_ID_ddebug322, ptr noundef %dev1, ptr noundef nonnull @.str.52) #7
  br label %if.end151

if.else125:                                       ; preds = %land.lhs.true.if.else125_crit_edge, %if.end100.if.else125_crit_edge
  %call126 = tail call fastcc i32 @dma_set_mask_and_coherent(ptr noundef %dev1, i64 noundef 4294967295)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %do.body133, label %do.end131

do.end131:                                        ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.54) #10
  br label %phycleanup

do.body133:                                       ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_probe.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_probe, %if.end151)) #7
          to label %if.then147 [label %if.end151], !srcloc !215

if.then147:                                       ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_probe.__UNIQUE_ID_ddebug323, ptr noundef %dev1, ptr noundef nonnull @.str.56) #7
  br label %if.end151

if.end151:                                        ; preds = %if.then147, %do.body133, %if.then121, %do.body107
  %call152 = tail call fastcc i32 @bdc_hw_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %if.end158, label %do.end157

do.end157:                                        ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.58, i32 noundef %call152) #10
  br label %phycleanup

if.end158:                                        ; preds = %if.end151
  %call159 = tail call i32 @bdc_udc_init(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %if.end158.cleanup167_crit_edge, label %do.end164

if.end158.cleanup167_crit_edge:                   ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup167

do.end164:                                        ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.61, i32 noundef %call159) #10
  tail call fastcc void @bdc_hw_exit(ptr noundef nonnull %call.i)
  br label %phycleanup

phycleanup:                                       ; preds = %do.end164, %do.end157, %do.end131
  %ret.0 = phi i32 [ -524, %do.end131 ], [ %call152, %do.end157 ], [ %call159, %do.end164 ]
  tail call fastcc void @bdc_phy_exit(ptr noundef nonnull %call.i)
  br label %disable_clk

disable_clk:                                      ; preds = %phycleanup, %do.end98
  %ret.1 = phi i32 [ %call93, %do.end98 ], [ %ret.0, %phycleanup ]
  %43 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %44) #7
  tail call void @clk_unprepare(ptr noundef %44) #7
  br label %cleanup167

cleanup167:                                       ; preds = %disable_clk, %if.end158.cleanup167_crit_edge, %do.end91, %if.then81, %if.then69, %devm_kcalloc.exit.cleanup167_crit_edge, %devm_kcalloc.exit.thread, %if.end15.cleanup167_crit_edge, %if.then12, %do.end.cleanup167_crit_edge
  %retval.0 = phi i32 [ %1, %if.then12 ], [ %32, %if.then69 ], [ %36, %if.then81 ], [ %call86, %do.end91 ], [ %ret.1, %disable_clk ], [ -12, %do.end.cleanup167_crit_edge ], [ %call16, %if.end15.cleanup167_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup167_crit_edge ], [ 0, %if.end158.cleanup167_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdc_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_remove.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_remove, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !215

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_remove.__UNIQUE_ID_ddebug324, ptr noundef %3, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.84) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @bdc_udc_exit(ptr noundef %1) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_hw_exit.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_remove, %bdc_hw_exit.exit)) #7
          to label %if.then.i [label %bdc_hw_exit.exit], !srcloc !215

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_hw_exit.__UNIQUE_ID_ddebug317, ptr noundef %5, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.83) #7
  br label %bdc_hw_exit.exit

bdc_hw_exit.exit:                                 ; preds = %if.then.i, %do.end
  tail call fastcc void @bdc_mem_free(ptr noundef %1) #7
  %num_phys.i = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_phys.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp9.i = icmp sgt i32 %7, 0
  br i1 %cmp9.i, label %for.body.lr.ph.i, label %bdc_hw_exit.exit.bdc_phy_exit.exit_crit_edge

bdc_hw_exit.exit.bdc_phy_exit.exit_crit_edge:     ; preds = %bdc_hw_exit.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %bdc_phy_exit.exit

for.body.lr.ph.i:                                 ; preds = %bdc_hw_exit.exit
  %phys.i = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %phy_num.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phys.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %9, i32 %phy_num.010.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @phy_power_off(ptr noundef %11) #7
  %12 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phys.i, align 4
  %arrayidx2.i = getelementptr ptr, ptr %13, i32 %phy_num.010.i
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx2.i, align 4
  %call3.i = tail call i32 @phy_exit(ptr noundef %15) #7
  %inc.i = add nuw nsw i32 %phy_num.010.i, 1
  %16 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_phys.i, align 8
  %cmp.i = icmp slt i32 %inc.i, %17
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.bdc_phy_exit.exit_crit_edge

for.body.i.bdc_phy_exit.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bdc_phy_exit.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

bdc_phy_exit.exit:                                ; preds = %for.body.i.bdc_phy_exit.exit_crit_edge, %bdc_hw_exit.exit.bdc_phy_exit.exit_crit_edge
  %clk = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 30
  %18 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %19) #7
  tail call void @clk_unprepare(ptr noundef %19) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_phy_get_by_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %clk) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bdc_phy_init(ptr nocapture noundef readonly %bdc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_phys = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 5
  %0 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_phys, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp39 = icmp sgt i32 %1, 0
  br i1 %cmp39, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %phys = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %phy_num.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phys, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %phy_num.040
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @phy_init(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.body.err_exit_phy_crit_edge

for.body.err_exit_phy_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_exit_phy

if.end:                                           ; preds = %for.body
  %6 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phys, align 4
  %arrayidx2 = getelementptr ptr, ptr %7, i32 %phy_num.040
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2, align 4
  %call3 = tail call i32 @phy_power_on(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %for.inc, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phys, align 4
  %arrayidx7 = getelementptr ptr, ptr %11, i32 %phy_num.040
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx7, align 4
  %call8 = tail call i32 @phy_exit(ptr noundef %13) #7
  br label %err_exit_phy

for.inc:                                          ; preds = %if.end
  %inc = add nuw nsw i32 %phy_num.040, 1
  %14 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_phys, align 8
  %cmp = icmp slt i32 %inc, %15
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

err_exit_phy:                                     ; preds = %if.then5, %for.body.err_exit_phy_crit_edge
  %ret.0 = phi i32 [ %call3, %if.then5 ], [ %call, %for.body.err_exit_phy_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phy_num.040)
  %cmp1042.not = icmp eq i32 %phy_num.040, 0
  br i1 %cmp1042.not, label %err_exit_phy.cleanup_crit_edge, label %err_exit_phy.while.body_crit_edge

err_exit_phy.while.body_crit_edge:                ; preds = %err_exit_phy
  br label %while.body

err_exit_phy.cleanup_crit_edge:                   ; preds = %err_exit_phy
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %err_exit_phy.while.body_crit_edge
  %dec43.in = phi i32 [ %dec43, %while.body.while.body_crit_edge ], [ %phy_num.040, %err_exit_phy.while.body_crit_edge ]
  %dec43 = add nsw i32 %dec43.in, -1
  %16 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phys, align 4
  %arrayidx12 = getelementptr ptr, ptr %17, i32 %dec43
  %18 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx12, align 4
  %call13 = tail call i32 @phy_power_off(ptr noundef %19) #7
  %20 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %phys, align 4
  %arrayidx15 = getelementptr ptr, ptr %21, i32 %dec43
  %22 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx15, align 4
  %call16 = tail call i32 @phy_exit(ptr noundef %23) #7
  %cmp10 = icmp sgt i32 %dec43.in, 1
  br i1 %cmp10, label %while.body.while.body_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %err_exit_phy.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_exit_phy.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %ret.0, %while.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dma_set_mask_and_coherent(ptr noundef %dev, i64 noundef %mask) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef %mask) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef %mask) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bdc_hw_init(ptr noundef %bdc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_hw_init.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_hw_init, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !215

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_hw_init.__UNIQUE_ID_ddebug318, ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.63) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call i32 @bdc_reset(ptr noundef %bdc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end11, label %do.end9

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev10 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %2 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.64, i32 noundef %call4) #10
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %call12 = tail call fastcc i32 @bdc_mem_alloc(ptr noundef %bdc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end19, label %do.end17

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %dev18 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %4 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.66) #10
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @bdc_mem_init(ptr noundef %bdc, i1 noundef zeroext false)
  tail call void @bdc_dbg_regs(ptr noundef %bdc) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_hw_init.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_hw_init, %cleanup)) #7
          to label %if.then34 [label %cleanup], !srcloc !215

if.then34:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %dev35 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %6 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev35, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_hw_init.__UNIQUE_ID_ddebug319, ptr noundef %7, ptr noundef nonnull @.str.68) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %if.end19, %do.end17, %do.end9
  %retval.0 = phi i32 [ %call4, %do.end9 ], [ -12, %do.end17 ], [ 0, %if.then34 ], [ 0, %if.end19 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdc_udc_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bdc_hw_exit(ptr nocapture noundef %bdc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_hw_exit.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_hw_exit, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !215

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_hw_exit.__UNIQUE_ID_ddebug317, ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.83) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @bdc_mem_free(ptr noundef %bdc)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bdc_phy_exit(ptr nocapture noundef readonly %bdc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_phys = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 5
  %0 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_phys, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp9 = icmp sgt i32 %1, 0
  br i1 %cmp9, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %phys = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %phy_num.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phys, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %phy_num.010
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @phy_power_off(ptr noundef %5) #7
  %6 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phys, align 4
  %arrayidx2 = getelementptr ptr, ptr %7, i32 %phy_num.010
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2, align 4
  %call3 = tail call i32 @phy_exit(ptr noundef %9) #7
  %inc = add nuw nsw i32 %phy_num.010, 1
  %10 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_phys, align 8
  %cmp = icmp slt i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bdc_mem_alloc(ptr noundef %bdc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_mem_alloc.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_mem_alloc, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !215

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_mem_alloc.__UNIQUE_ID_ddebug313, ptr noundef %1, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.69, i32 noundef 64) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regs = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 8
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !216
  %5 = lshr i32 %4, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !217
  %shr = and i32 %5, 7
  %shl5 = shl nuw nsw i32 1024, %shr
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_mem_alloc.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_mem_alloc, %do.end24)) #7
          to label %if.then20 [label %do.end24], !srcloc !215

if.then20:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev21 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %6 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev21, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_mem_alloc.__UNIQUE_ID_ddebug314, ptr noundef %7, ptr noundef nonnull @.str.71, i32 noundef %shl5) #7
  br label %do.end24

do.end24:                                         ; preds = %if.then20, %do.end
  %dev25 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %8 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev25, align 4
  %call26 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.72, ptr noundef %9, i32 noundef 1024, i32 noundef 16, i32 noundef %shl5) #7
  %bd_table_pool = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 24
  %10 = ptrtoint ptr %bd_table_pool to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call26, ptr %bd_table_pool, align 4
  %tobool28.not = icmp eq ptr %call26, null
  br i1 %tobool28.not, label %do.end24.do.end93_crit_edge, label %if.end30

do.end24.do.end93_crit_edge:                      ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end93

if.end30:                                         ; preds = %do.end24
  %call31 = tail call fastcc i32 @scratchpad_setup(ptr noundef %bdc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.do.end93_crit_edge

if.end30.do.end93_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end93

if.end34:                                         ; preds = %if.end30
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 3300
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !217
  %14 = lshr i32 %13, 4
  %shr37 = and i32 %14, 15
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %add.ptr.i129 = getelementptr i8, ptr %16, i32 3284
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i129) #7, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !217
  %18 = lshr i32 %17, 4
  %shr40 = and i32 %18, 15
  %add = add nuw nsw i32 %shr37, 2
  %add41 = add nuw nsw i32 %add, %shr40
  %num_eps = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 6
  %19 = ptrtoint ptr %num_eps to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add41, ptr %num_eps, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_mem_alloc.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_mem_alloc, %do.end61)) #7
          to label %if.then56 [label %do.end61], !srcloc !215

if.then56:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev25, align 4
  %22 = ptrtoint ptr %num_eps to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_eps, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_mem_alloc.__UNIQUE_ID_ddebug315, ptr noundef %21, ptr noundef nonnull @.str.73, i32 noundef %shr37, i32 noundef %shr40, i32 noundef %23) #7
  br label %do.end61

do.end61:                                         ; preds = %if.then56, %if.end34
  %24 = ptrtoint ptr %num_eps to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_eps, align 4
  %26 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %25, i32 4) #7
  %27 = extractvalue { i32, i1 } %26, 1
  br i1 %27, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !222

kcalloc.exit.thread:                              ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #9
  %bdc_ep_array134 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 7
  %28 = ptrtoint ptr %bdc_ep_array134 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %bdc_ep_array134, align 8
  br label %do.end93

if.end7.i.i:                                      ; preds = %do.end61
  %29 = extractvalue { i32, i1 } %26, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %29, i32 noundef 3520) #11
  %bdc_ep_array = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 7
  %30 = ptrtoint ptr %bdc_ep_array to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call8.i.i, ptr %bdc_ep_array, align 8
  %tobool65.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool65.not, label %if.end7.i.i.do.end93_crit_edge, label %do.body68

if.end7.i.i.do.end93_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end93

do.body68:                                        ; preds = %if.end7.i.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_mem_alloc.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_mem_alloc, %do.end86)) #7
          to label %if.then82 [label %do.end86], !srcloc !215

if.then82:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev25, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_mem_alloc.__UNIQUE_ID_ddebug316, ptr noundef %32, ptr noundef nonnull @.str.74) #7
  br label %do.end86

do.end86:                                         ; preds = %if.then82, %do.body68
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @setup_srr.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_mem_alloc, %setup_srr.exit)) #7
          to label %if.then.i [label %setup_srr.exit], !srcloc !215

if.then.i:                                        ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev25, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @setup_srr.__UNIQUE_ID_ddebug305, ptr noundef %34, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i32 noundef 64) #7
  br label %setup_srr.exit

setup_srr.exit:                                   ; preds = %if.then.i, %do.end86
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 402653184) #7, !srcloc !219
  %srr.i = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 11
  %dqp_index.i = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 11, i32 2
  %37 = ptrtoint ptr %dqp_index.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %dqp_index.i, align 2
  %38 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev25, align 4
  %dma_addr.i = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 11, i32 3
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %39, i32 noundef 1024, ptr noundef %dma_addr.i, i32 noundef 3264, i32 noundef 0) #7
  %40 = ptrtoint ptr %srr.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i.i, ptr %srr.i, align 8
  %tobool10.not.i.not = icmp eq ptr %call.i.i, null
  br i1 %tobool10.not.i.not, label %setup_srr.exit.do.end93_crit_edge, label %setup_srr.exit.cleanup_crit_edge

setup_srr.exit.cleanup_crit_edge:                 ; preds = %setup_srr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

setup_srr.exit.do.end93_crit_edge:                ; preds = %setup_srr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end93

do.end93:                                         ; preds = %setup_srr.exit.do.end93_crit_edge, %if.end7.i.i.do.end93_crit_edge, %kcalloc.exit.thread, %if.end30.do.end93_crit_edge, %do.end24.do.end93_crit_edge
  %41 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev25, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.75) #10
  tail call fastcc void @bdc_mem_free(ptr noundef %bdc)
  br label %cleanup

cleanup:                                          ; preds = %do.end93, %setup_srr.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end93 ], [ 0, %setup_srr.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdc_dbg_regs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scratchpad_setup(ptr noundef %bdc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 8
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !216
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !217
  %and = and i32 %3, 7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scratchpad_setup.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@scratchpad_setup, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !215

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scratchpad_setup.__UNIQUE_ID_ddebug302, ptr noundef %5, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.76, i32 noundef %and) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body7, label %if.end26

do.body7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scratchpad_setup.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@scratchpad_setup, %cleanup)) #7
          to label %if.then21 [label %cleanup], !srcloc !215

if.then21:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  %dev22 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %6 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev22, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scratchpad_setup.__UNIQUE_ID_ddebug303, ptr noundef %7, ptr noundef nonnull @.str.78) #7
  br label %cleanup

if.end26:                                         ; preds = %do.end
  %shl = shl nuw nsw i32 32, %and
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scratchpad_setup.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@scratchpad_setup, %do.end45)) #7
          to label %if.then41 [label %do.end45], !srcloc !215

if.then41:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %dev42 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %8 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev42, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scratchpad_setup.__UNIQUE_ID_ddebug304, ptr noundef %9, ptr noundef nonnull @.str.79, i32 noundef %shl) #7
  br label %do.end45

do.end45:                                         ; preds = %if.then41, %if.end26
  %dev46 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %10 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev46, align 4
  %scratchpad = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 9
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %11, i32 noundef %shl, ptr noundef %scratchpad, i32 noundef 3264, i32 noundef 0) #7
  %buff = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %buff to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %buff, align 4
  %tobool51.not = icmp eq ptr %call.i, null
  br i1 %tobool51.not, label %fail, label %if.end53

if.end53:                                         ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #9
  %sp_buff_size54 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 10
  %13 = ptrtoint ptr %sp_buff_size54 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shl, ptr %sp_buff_size54, align 4
  %size = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 9, i32 2
  %14 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shl, ptr %size, align 8
  %15 = ptrtoint ptr %scratchpad to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %scratchpad, align 8
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  tail call void @arm_heavy_mb() #7
  %add.ptr.i = getelementptr i8, ptr %18, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #7, !srcloc !219
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  tail call void @arm_heavy_mb() #7
  %add.ptr.i94 = getelementptr i8, ptr %20, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94, i32 0) #7, !srcloc !219
  br label %cleanup

fail:                                             ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %buff to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %buff, align 4
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end53, %if.then21, %do.body7
  %retval.0 = phi i32 [ 0, %if.end53 ], [ -12, %fail ], [ 0, %if.then21 ], [ 0, %do.body7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bdc_mem_free(ptr nocapture noundef %bdc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_mem_free.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_mem_free, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !215

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_mem_free.__UNIQUE_ID_ddebug311, ptr noundef %1, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.82) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %srr = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 11
  %2 = ptrtoint ptr %srr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %srr, align 8
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %do.end.if.end10_crit_edge, label %if.then5

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev6 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %4 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev6, align 4
  %dma_addr = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 11, i32 3
  %6 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_addr, align 8
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef 1024, ptr noundef nonnull %3, i32 noundef %7, i32 noundef 0) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %do.end.if.end10_crit_edge
  %buff = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %buff to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buff, align 4
  %tobool11.not = icmp eq ptr %9, null
  br i1 %tobool11.not, label %if.end10.if.end17_crit_edge, label %if.then12

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %scratchpad = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 9
  %dev13 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %10 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev13, align 4
  %sp_buff_size = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 10
  %12 = ptrtoint ptr %sp_buff_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sp_buff_size, align 4
  %14 = ptrtoint ptr %scratchpad to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %scratchpad, align 8
  tail call void @dma_free_attrs(ptr noundef %11, i32 noundef %13, ptr noundef nonnull %9, i32 noundef %15, i32 noundef 0) #7
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.end10.if.end17_crit_edge
  %bd_table_pool = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 24
  %16 = ptrtoint ptr %bd_table_pool to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bd_table_pool, align 4
  tail call void @dma_pool_destroy(ptr noundef %17) #7
  %bdc_ep_array = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 7
  %18 = ptrtoint ptr %bdc_ep_array to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bdc_ep_array, align 8
  tail call void @kfree(ptr noundef %19) #7
  %20 = ptrtoint ptr %srr to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %srr, align 8
  %21 = ptrtoint ptr %buff to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %buff, align 4
  %22 = ptrtoint ptr %bd_table_pool to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %bd_table_pool, align 4
  %23 = ptrtoint ptr %bdc_ep_array to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %bdc_ep_array, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdc_udc_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdc_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @bdc_stop(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %clk = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdc_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %3) #7
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %dev2 = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.85) #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_reinit.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_resume, %do.end.i)) #7
          to label %if.then.i [label %do.end.i], !srcloc !215

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_reinit.__UNIQUE_ID_ddebug312, ptr noundef %7, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end
  %call4.i = tail call i32 @bdc_stop(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %do.end.i.bdc_reinit.exit.thread_crit_edge

do.end.i.bdc_reinit.exit.thread_crit_edge:        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bdc_reinit.exit.thread

if.end7.i:                                        ; preds = %do.end.i
  %call8.i = tail call i32 @bdc_reset(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %bdc_reinit.exit, label %if.end7.i.bdc_reinit.exit.thread_crit_edge

if.end7.i.bdc_reinit.exit.thread_crit_edge:       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bdc_reinit.exit.thread

bdc_reinit.exit.thread:                           ; preds = %if.end7.i.bdc_reinit.exit.thread_crit_edge, %do.end.i.bdc_reinit.exit.thread_crit_edge
  %ret.0.i.ph = phi i32 [ %call8.i, %if.end7.i.bdc_reinit.exit.thread_crit_edge ], [ %call4.i, %do.end.i.bdc_reinit.exit.thread_crit_edge ]
  %reinit.i24 = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 18
  %8 = ptrtoint ptr %reinit.i24 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %reinit.i24, align 2
  br label %do.end8

bdc_reinit.exit:                                  ; preds = %if.end7.i
  tail call fastcc void @bdc_mem_init(ptr noundef %1, i1 noundef zeroext true) #7
  %call12.i = tail call i32 @bdc_run(ptr noundef %1) #7
  %reinit.i = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 18
  %9 = ptrtoint ptr %reinit.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %reinit.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool4.not = icmp eq i32 %call12.i, 0
  br i1 %tobool4.not, label %bdc_reinit.exit.cleanup_crit_edge, label %bdc_reinit.exit.do.end8_crit_edge

bdc_reinit.exit.do.end8_crit_edge:                ; preds = %bdc_reinit.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

bdc_reinit.exit.cleanup_crit_edge:                ; preds = %bdc_reinit.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end8:                                          ; preds = %bdc_reinit.exit.do.end8_crit_edge, %bdc_reinit.exit.thread
  %ret.0.i26 = phi i32 [ %ret.0.i.ph, %bdc_reinit.exit.thread ], [ %call12.i, %bdc_reinit.exit.do.end8_crit_edge ]
  %dev9 = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.88) #10
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %13) #7
  tail call void @clk_unprepare(ptr noundef %13) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %bdc_reinit.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %ret.0.i26, %do.end8 ], [ 0, %bdc_reinit.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !56, !58, !59, !61, !63, !64, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84, !86, !88, !89, !90, !92, !93, !95, !96, !98, !100, !102, !103, !104, !105, !107, !108, !109, !111, !113, !114, !115, !117, !118, !119, !121, !122, !124, !125, !126, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !153, !154, !155, !157, !158, !160, !162, !163, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !179, !180, !182, !183, !184, !186, !187, !189, !190, !192, !193, !195, !197, !199, !200, !201, !202, !204, !205}
!llvm.module.flags = !{!206, !207, !208, !209, !210, !211, !212, !213}
!llvm.ident = !{!214}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 54, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @bdc_stop.__UNIQUE_ID_ddebug296, !1, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 58, i32 3}
!8 = !{ptr @bdc_stop.__UNIQUE_ID_ddebug297, !7, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 67, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @bdc_stop._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @bdc_stop._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 78, i32 2}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @bdc_reset.__UNIQUE_ID_ddebug298, !16, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 90, i32 3}
!21 = !{ptr @bdc_reset._entry, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @bdc_reset._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 101, i32 2}
!25 = !{ptr @bdc_run.__UNIQUE_ID_ddebug299, !24, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 105, i32 3}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @bdc_run._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @bdc_run._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 114, i32 3}
!33 = !{ptr @bdc_run._entry.14, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @bdc_run._entry_ptr.16, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 119, i32 3}
!37 = !{ptr @bdc_run._entry.17, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @bdc_run._entry_ptr.19, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 139, i32 2}
!41 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @bdc_softconn.__UNIQUE_ID_ddebug300, !40, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 151, i32 2}
!45 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @bdc_softdisconn.__UNIQUE_ID_ddebug301, !44, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 346, i32 2}
!49 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @bdc_reinit.__UNIQUE_ID_ddebug312, !48, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!51 = !{ptr @__initcall__kmod_bdc__325_654_bdc_driver_init6, !52, !"__initcall__kmod_bdc__325_654_bdc_driver_init6", i1 false, i1 false}
!52 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 654, i32 1}
!53 = !{ptr @__exitcall_bdc_driver_exit, !52, !"__exitcall_bdc_driver_exit", i1 false, i1 false}
!54 = !{ptr @__UNIQUE_ID_author326, !55, !"__UNIQUE_ID_author326", i1 false, i1 false}
!55 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 655, i32 1}
!56 = !{ptr @__UNIQUE_ID_file327, !57, !"__UNIQUE_ID_file327", i1 false, i1 false}
!57 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 656, i32 1}
!58 = !{ptr @__UNIQUE_ID_license328, !57, !"__UNIQUE_ID_license328", i1 false, i1 false}
!59 = !{ptr @__UNIQUE_ID_description329, !60, !"__UNIQUE_ID_description329", i1 false, i1 false}
!60 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 657, i32 1}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 41, i32 3}
!63 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @poll_oip._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @poll_oip._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 43, i32 3}
!68 = !{ptr @poll_oip.__UNIQUE_ID_ddebug295, !67, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 220, i32 2}
!71 = !{ptr @bdc_mem_init.__UNIQUE_ID_ddebug306, !70, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 233, i32 2}
!74 = !{ptr @bdc_mem_init.__UNIQUE_ID_ddebug307, !73, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 237, i32 2}
!77 = !{ptr @bdc_mem_init.__UNIQUE_ID_ddebug308, !76, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 261, i32 2}
!80 = !{ptr @bdc_mem_init.__UNIQUE_ID_ddebug309, !79, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 268, i32 2}
!83 = !{ptr @bdc_mem_init.__UNIQUE_ID_ddebug310, !82, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!84 = !{ptr @bdc_driver, !85, !"bdc_driver", i1 false, i1 false}
!85 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 644, i32 31}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 493, i32 2}
!88 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @bdc_probe.__UNIQUE_ID_ddebug320, !87, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!90 = !{ptr @bdc_probe.__key, !91, !"__key", i1 false, i1 false}
!91 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 506, i32 2}
!92 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 510, i32 2}
!95 = !{ptr @bdc_probe.__UNIQUE_ID_ddebug321, !94, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 513, i32 7}
!98 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 513, i32 15}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 522, i32 2}
!102 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @bdc_probe._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @bdc_probe._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 529, i32 4}
!107 = !{ptr @bdc_probe._entry.42, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @bdc_probe._entry_ptr.44, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 535, i32 40}
!111 = !{ptr @.str.47, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 541, i32 3}
!113 = !{ptr @bdc_probe._entry.46, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @bdc_probe._entry_ptr.48, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 547, i32 3}
!117 = !{ptr @bdc_probe._entry.49, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @bdc_probe._entry_ptr.51, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.52, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 554, i32 3}
!121 = !{ptr @bdc_probe.__UNIQUE_ID_ddebug322, !120, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!122 = !{ptr @.str.54, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 558, i32 4}
!124 = !{ptr @bdc_probe._entry.53, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @bdc_probe._entry_ptr.55, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.56, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 563, i32 3}
!128 = !{ptr @bdc_probe.__UNIQUE_ID_ddebug323, !127, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!129 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 567, i32 3}
!131 = !{ptr @bdc_probe._entry.57, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @bdc_probe._entry_ptr.59, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.61, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 572, i32 3}
!135 = !{ptr @bdc_probe._entry.60, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @bdc_probe._entry_ptr.62, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.63, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 429, i32 2}
!139 = !{ptr @bdc_hw_init.__UNIQUE_ID_ddebug318, !138, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 432, i32 3}
!142 = !{ptr @bdc_hw_init._entry, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @bdc_hw_init._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.66, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 437, i32 3}
!146 = !{ptr @bdc_hw_init._entry.65, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @bdc_hw_init._entry_ptr.67, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.68, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 442, i32 2}
!150 = !{ptr @bdc_hw_init.__UNIQUE_ID_ddebug319, !149, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!151 = !{ptr @.str.69, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 370, i32 2}
!153 = !{ptr @.str.70, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @bdc_mem_alloc.__UNIQUE_ID_ddebug313, !152, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!155 = !{ptr @.str.71, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 378, i32 2}
!157 = !{ptr @bdc_mem_alloc.__UNIQUE_ID_ddebug314, !156, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!158 = !{ptr @.str.72, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 382, i32 22}
!160 = !{ptr @.str.73, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 396, i32 2}
!162 = !{ptr @bdc_mem_alloc.__UNIQUE_ID_ddebug315, !161, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!163 = !{ptr @.str.74, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 405, i32 2}
!165 = !{ptr @bdc_mem_alloc.__UNIQUE_ID_ddebug316, !164, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!166 = !{ptr @.str.75, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 411, i32 2}
!168 = !{ptr @bdc_mem_alloc._entry, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @bdc_mem_alloc._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.76, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 163, i32 2}
!172 = !{ptr @.str.77, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @scratchpad_setup.__UNIQUE_ID_ddebug302, !171, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!174 = !{ptr @.str.78, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 165, i32 3}
!176 = !{ptr @scratchpad_setup.__UNIQUE_ID_ddebug303, !175, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!177 = !{ptr @.str.79, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 170, i32 2}
!179 = !{ptr @scratchpad_setup.__UNIQUE_ID_ddebug304, !178, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!180 = !{ptr @.str.80, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 197, i32 2}
!182 = !{ptr @.str.81, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @setup_srr.__UNIQUE_ID_ddebug305, !181, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!184 = !{ptr @.str.82, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 314, i32 2}
!186 = !{ptr @bdc_mem_free.__UNIQUE_ID_ddebug311, !185, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!187 = !{ptr @.str.83, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 420, i32 2}
!189 = !{ptr @bdc_hw_exit.__UNIQUE_ID_ddebug317, !188, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!190 = !{ptr @.str.84, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 591, i32 2}
!192 = !{ptr @bdc_remove.__UNIQUE_ID_ddebug324, !191, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!193 = !{ptr @bdc_of_match, !194, !"bdc_of_match", i1 false, i1 false}
!194 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 638, i32 34}
!195 = !{ptr @bdc_pm_ops, !196, !"bdc_pm_ops", i1 false, i1 false}
!196 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 635, i32 8}
!197 = !{ptr @.str.85, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 620, i32 3}
!199 = !{ptr @.str.86, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @bdc_resume._entry, !198, !"_entry", i1 false, i1 false}
!201 = !{ptr @bdc_resume._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.88, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/usb/gadget/udc/bdc/bdc_core.c", i32 625, i32 3}
!204 = !{ptr @bdc_resume._entry.87, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @bdc_resume._entry_ptr.89, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{i32 1, !"wchar_size", i32 2}
!207 = !{i32 1, !"min_enum_size", i32 4}
!208 = !{i32 8, !"branch-target-enforcement", i32 0}
!209 = !{i32 8, !"sign-return-address", i32 0}
!210 = !{i32 8, !"sign-return-address-all", i32 0}
!211 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!212 = !{i32 7, !"uwtable", i32 1}
!213 = !{i32 7, !"frame-pointer", i32 2}
!214 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!215 = !{i64 2148966985, i64 2148966990, i64 2148967003, i64 2148967047, i64 2148967081, i64 2148967102}
!216 = !{i64 5278407}
!217 = !{i64 2155344857}
!218 = !{i64 2155345238}
!219 = !{i64 5277989}
!220 = !{i64 2155347941}
!221 = !{i64 2155348423}
!222 = !{!"branch_weights", i32 1, i32 2000}
