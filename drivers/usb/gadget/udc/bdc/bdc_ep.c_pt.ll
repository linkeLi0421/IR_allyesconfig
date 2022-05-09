; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/udc/bdc/bdc_ep.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/bdc/bdc_ep.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
%struct.bdc_ep = type { %struct.usb_ep, %struct.list_head, ptr, i8, i8, i8, ptr, ptr, i32, [20 x i8], %struct.bd_list, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.bd_list = type { ptr, i32, i32, i32, i32, i32 }
%struct.bd_table = type { ptr, i32 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.bdc_bd = type { [4 x i32] }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@bdc_notify_xfr.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 86, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bdc\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bdc_notify_xfr\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/usb/gadget/udc/bdc/bdc_ep.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s epnum:%d\0A\00", [19 x i8] zeroinitializer }, align 32
@bdc_ep_disable.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 -115, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bdc_ep_disable\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s() ep->ep_num=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@bdc_ep_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 584, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"dconfig fail but continue with memory free\00", [53 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bdc_ep_disable._entry_ptr = internal global ptr @bdc_ep_disable._entry, section ".printk_index", align 4
@bdc_ep_enable.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 -104, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bdc_ep_enable\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s NUM_TABLES:%d %d\0A\00", [43 x i8] zeroinitializer }, align 32
@bdc_ep_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 613, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ep bd list allocation failed:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@bdc_ep_enable._entry_ptr = internal global ptr @bdc_ep_enable._entry, section ".printk_index", align 4
@bdc_free_ep.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 -30, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bdc_free_ep\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@bdc_xsf_ep0_setup_recv.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 1, i8 11, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bdc_xsf_ep0_setup_recv\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s ep0_state:%s\0A\00", [47 x i8] zeroinitializer }, align 32
@ep0_state_string = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65], [40 x i8] zeroinitializer }, align 32
@bdc_xsf_ep0_setup_recv.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.17, i8 1, i8 15, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s exit ep0_state:%s\0A\00", [42 x i8] zeroinitializer }, align 32
@bdc_xsf_ep0_data_start.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.14, i8 1, i8 122, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bdc_xsf_ep0_data_start\00", [41 x i8] zeroinitializer }, align 32
@bdc_xsf_ep0_data_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.18, ptr @.str.2, i32 1526, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Data stage not expected ep0_state:%s\0A\00", [58 x i8] zeroinitializer }, align 32
@bdc_xsf_ep0_data_start._entry_ptr = internal global ptr @bdc_xsf_ep0_data_start._entry, section ".printk_index", align 4
@bdc_xsf_ep0_data_start.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.20, i8 1, i8 -127, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ep0_state:%s\00", [19 x i8] zeroinitializer }, align 32
@bdc_xsf_ep0_status_start.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 1, i8 -123, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bdc_xsf_ep0_status_start\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s ep0_state:%s\00", [16 x i8] zeroinitializer }, align 32
@bdc_xsf_ep0_status_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 1573, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Status stage recv but ep0_state:%s\0A\00", [60 x i8] zeroinitializer }, align 32
@bdc_xsf_ep0_status_start._entry_ptr = internal global ptr @bdc_xsf_ep0_status_start._entry, section ".printk_index", align 4
@bdc_xsf_ep0_status_start.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.24, i8 1, i8 -117, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"status started but data  not transmitted yet\0A\00", [50 x i8] zeroinitializer }, align 32
@bdc_xsf_ep0_status_start.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.20, i8 1, i8 -112, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@bdc_sr_xsf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 1653, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"xsf for ep not enabled\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bdc_sr_xsf\00", [21 x i8] zeroinitializer }, align 32
@bdc_sr_xsf._entry_ptr = internal global ptr @bdc_sr_xsf._entry, section ".printk_index", align 4
@bdc_sr_xsf.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 1, i8 -97, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s clearing FUNC_WAKE_ISSUED flag\0A\00", [61 x i8] zeroinitializer }, align 32
@bdc_sr_xsf._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@bdc_sr_xsf.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.29, i8 1, i8 -96, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s sr_status=%d ep:%s\0A\00", [41 x i8] zeroinitializer }, align 32
@bdc_sr_xsf._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.2, i32 1682, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ep0 related packets on non ep0 endpoint\00", [56 x i8] zeroinitializer }, align 32
@bdc_sr_xsf._entry_ptr.32 = internal global ptr @bdc_sr_xsf._entry.30, section ".printk_index", align 4
@bdc_sr_xsf.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.33, i8 1, i8 -90, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Babble on ep0 zlp_need:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@bdc_sr_xsf._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.26, ptr @.str.2, i32 1702, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Babble on ep not handled\0A\00", [38 x i8] zeroinitializer }, align 32
@bdc_sr_xsf._entry_ptr.36 = internal global ptr @bdc_sr_xsf._entry.34, section ".printk_index", align 4
@bdc_sr_xsf._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.26, ptr @.str.2, i32 1705, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sr status not handled:%x\0A\00", [38 x i8] zeroinitializer }, align 32
@bdc_sr_xsf._entry_ptr.39 = internal global ptr @bdc_sr_xsf._entry.37, section ".printk_index", align 4
@bdc_init_ep.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 1, i8 -12, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bdc_init_ep\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s()\0A\00", [26 x i8] zeroinitializer }, align 32
@bdc_init_ep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 2005, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"init ep ep0 fail %d\0A\00", [43 x i8] zeroinitializer }, align 32
@bdc_init_ep._entry_ptr = internal global ptr @bdc_init_ep._entry, section ".printk_index", align 4
@bdc_init_ep._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.40, ptr @.str.2, i32 2015, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"init ep failed for:%d error: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@bdc_init_ep._entry_ptr.45 = internal global ptr @bdc_init_ep._entry.43, section ".printk_index", align 4
@bdc_init_ep._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.40, ptr @.str.2, i32 2024, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@bdc_init_ep._entry_ptr.47 = internal global ptr @bdc_init_ep._entry.46, section ".printk_index", align 4
@bdc_req_complete.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 0, i8 -120, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bdc_req_complete\00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s ep:%s status:%d\0A\00", [44 x i8] zeroinitializer }, align 32
@ep_bd_list_free.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 0, i8 15, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ep_bd_list_free\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s ep:%s num_tabs:%d\0A\00", [42 x i8] zeroinitializer }, align 32
@ep_bd_list_free.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.52, i8 0, i8 15, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s already freed\0A\00", [46 x i8] zeroinitializer }, align 32
@ep_bd_list_free.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.53, i8 0, i8 18, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bd_table:%p index:%d\0A\00", [42 x i8] zeroinitializer }, align 32
@ep_bd_list_free.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.54, i8 0, i8 18, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bd_table not allocated\0A\00", [40 x i8] zeroinitializer }, align 32
@ep_bd_list_free.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.55, i8 0, i8 19, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bd dma pool not allocated\0A\00", [37 x i8] zeroinitializer }, align 32
@ep_bd_list_free.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.56, i8 0, i8 21, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Free dma pool start_bd:%p dma:%llx\0A\00", [60 x i8] zeroinitializer }, align 32
@ep_bd_list_alloc.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.58, i8 0, i8 34, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ep_bd_list_alloc\00", [47 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s ep:%p num_tabs:%d\0A\00", [42 x i8] zeroinitializer }, align 32
@ep_bd_list_alloc.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.59, i8 0, i8 41, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"index:%d start_bd:%p dma=%08llx prev_table:%p\0A\00", [49 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"WAIT_FOR_SETUP\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"WAIT_FOR_DATA_START\00", [44 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"WAIT_FOR_DATA_XMIT\00", [45 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"WAIT_FOR_STATUS_START\00", [42 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WAIT_FOR_STATUS_XMIT\00", [43 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"STATUS_PENDING\00", [17 x i8] zeroinitializer }, align 32
@ep_set_halt.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.2, ptr @.str.67, i8 0, i8 -38, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ep_set_halt\00", [20 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s ep:%s value=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@ep_set_halt.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.2, ptr @.str.68, i8 0, i8 -38, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Halt\0A\00", [26 x i8] zeroinitializer }, align 32
@ep_set_halt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.66, ptr @.str.2, i32 882, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to set STALL on %s\0A\00", [37 x i8] zeroinitializer }, align 32
@ep_set_halt._entry_ptr = internal global ptr @ep_set_halt._entry, section ".printk_index", align 4
@ep_set_halt.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.2, ptr @.str.70, i8 0, i8 -35, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Before Clear\0A\00", [18 x i8] zeroinitializer }, align 32
@ep_set_halt._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.66, ptr @.str.2, i32 891, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to clear STALL on %s\0A\00", [35 x i8] zeroinitializer }, align 32
@ep_set_halt._entry_ptr.73 = internal global ptr @ep_set_halt._entry.71, section ".printk_index", align 4
@ep_set_halt.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.2, ptr @.str.74, i8 0, i8 -33, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"After  Clear\0A\00", [18 x i8] zeroinitializer }, align 32
@handle_control_request.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.14, i8 1, i8 104, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"handle_control_request\00", [41 x i8] zeroinitializer }, align 32
@handle_control_request.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.76, i8 1, i8 105, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"USB_REQ_SET_ADDRESS\0A\00", [43 x i8] zeroinitializer }, align 32
@handle_control_request.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.77, i8 1, i8 106, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"USB_REQ_SET_CONFIGURATION\0A\00", [37 x i8] zeroinitializer }, align 32
@handle_control_request.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.78, i8 1, i8 111, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"USB_REQ_SET_FEATURE\0A\00", [43 x i8] zeroinitializer }, align 32
@handle_control_request.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.79, i8 1, i8 112, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"USB_REQ_CLEAR_FEATURE\0A\00", [41 x i8] zeroinitializer }, align 32
@handle_control_request.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.80, i8 1, i8 113, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"USB_REQ_GET_STATUS\0A\00", [44 x i8] zeroinitializer }, align 32
@handle_control_request.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.81, i8 1, i8 115, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"USB_REQ_SET_SEL\0A\00", [47 x i8] zeroinitializer }, align 32
@handle_control_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.75, ptr @.str.2, i32 1490, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"USB_REQ_SET_ISOCH_DELAY not handled\0A\00", [59 x i8] zeroinitializer }, align 32
@handle_control_request._entry_ptr = internal global ptr @handle_control_request._entry, section ".printk_index", align 4
@ep0_set_address.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.84, i8 1, i8 22, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ep0_set_address\00", [16 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s addr:%d dev state:%d\0A\00", [39 x i8] zeroinitializer }, align 32
@ep0_set_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.2, i32 1138, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"SET Address in wrong device state %d\0A\00", [58 x i8] zeroinitializer }, align 32
@ep0_set_address._entry_ptr = internal global ptr @ep0_set_address._entry, section ".printk_index", align 4
@ep0_handle_feature.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.86, ptr @.str.2, ptr @.str.87, i8 1, i8 55, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ep0_handle_feature\00", [45 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s wValue=%d wIndex=%d\09devstate=%08x speed=%d set=%d\00", [43 x i8] zeroinitializer }, align 32
@ep0_handle_feature.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.86, ptr @.str.2, ptr @.str.88, i8 1, i8 56, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"USB_RECIP_INTERFACE\0A\00", [43 x i8] zeroinitializer }, align 32
@ep0_handle_feature.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.86, ptr @.str.2, ptr @.str.89, i8 1, i8 58, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SET REMOTE_WAKEUP\0A\00", [45 x i8] zeroinitializer }, align 32
@ep0_handle_feature.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.86, ptr @.str.2, ptr @.str.90, i8 1, i8 59, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CLEAR REMOTE_WAKEUP\0A\00", [43 x i8] zeroinitializer }, align 32
@ep0_handle_feature.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.86, ptr @.str.2, ptr @.str.91, i8 1, i8 60, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"USB_RECIP_ENDPOINT\0A\00", [44 x i8] zeroinitializer }, align 32
@ep0_handle_feature.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.86, ptr @.str.2, ptr @.str.92, i8 1, i8 65, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ep0 stall already cleared\0A\00", [37 x i8] zeroinitializer }, align 32
@ep0_handle_feature.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.86, ptr @.str.2, ptr @.str.93, i8 1, i8 66, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"epnum=%d\0A\00", [22 x i8] zeroinitializer }, align 32
@ep0_handle_feature._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.86, ptr @.str.2, i32 1296, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Unknown recipient\0A\00", [45 x i8] zeroinitializer }, align 32
@ep0_handle_feature._entry_ptr = internal global ptr @ep0_handle_feature._entry, section ".printk_index", align 4
@ep0_handle_feature_dev.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.2, ptr @.str.96, i8 1, i8 32, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ep0_handle_feature_dev\00", [41 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s set:%d dev state:%d\0A\00", [40 x i8] zeroinitializer }, align 32
@ep0_handle_feature_dev.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.2, ptr @.str.97, i8 1, i8 33, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"USB_DEVICE_REMOTE_WAKEUP\0A\00", [38 x i8] zeroinitializer }, align 32
@ep0_handle_feature_dev.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.2, ptr @.str.98, i8 1, i8 35, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"USB_DEVICE_TEST_MODE\0A\00", [42 x i8] zeroinitializer }, align 32
@ep0_handle_feature_dev.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.2, ptr @.str.99, i8 1, i8 37, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"USB_DEVICE_U1_ENABLE\0A\00", [42 x i8] zeroinitializer }, align 32
@ep0_handle_feature_dev.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.2, ptr @.str.100, i8 1, i8 42, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"USB_DEVICE_U2_ENABLE\0A\00", [42 x i8] zeroinitializer }, align 32
@ep0_handle_feature_dev.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.2, ptr @.str.101, i8 1, i8 47, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"USB_DEVICE_LTM_ENABLE?\0A\00", [40 x i8] zeroinitializer }, align 32
@ep0_handle_feature_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.95, ptr @.str.2, i32 1221, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Unknown wValue:%d\0A\00", [45 x i8] zeroinitializer }, align 32
@ep0_handle_feature_dev._entry_ptr = internal global ptr @ep0_handle_feature_dev._entry, section ".printk_index", align 4
@ep0_handle_status.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.103, ptr @.str.2, ptr @.str.14, i8 1, i8 73, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ep0_handle_status\00", [46 x i8] zeroinitializer }, align 32
@ep0_handle_status.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.103, ptr @.str.2, ptr @.str.104, i8 1, i8 74, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"USB_RECIP_DEVICE devstatus:%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@ep0_handle_status.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.103, ptr @.str.2, ptr @.str.88, i8 1, i8 76, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ep0_handle_status.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.103, ptr @.str.2, ptr @.str.91, i8 1, i8 80, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ep0_handle_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.103, ptr @.str.2, i32 1358, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ISSUE, GET_STATUS for invalid EP ?\00", [61 x i8] zeroinitializer }, align 32
@ep0_handle_status._entry_ptr = internal global ptr @ep0_handle_status._entry, section ".printk_index", align 4
@ep0_handle_status._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.103, ptr @.str.2, i32 1366, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unknown recipient for get_status\0A\00", [62 x i8] zeroinitializer }, align 32
@ep0_handle_status._entry_ptr.108 = internal global ptr @ep0_handle_status._entry.106, section ".printk_index", align 4
@ep0_handle_status.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.103, ptr @.str.2, ptr @.str.109, i8 1, i8 86, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usb_status=%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@ep0_queue_data_stage.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.110, ptr @.str.2, ptr @.str.14, i8 0, i8 -81, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ep0_queue_data_stage\00", [43 x i8] zeroinitializer }, align 32
@ep0_queue.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.2, ptr @.str.41, i8 0, i8 -91, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ep0_queue\00", [22 x i8] zeroinitializer }, align 32
@ep0_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.111, ptr @.str.2, i32 688, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dma mapping failed %s\0A\00", [41 x i8] zeroinitializer }, align 32
@ep0_queue._entry_ptr = internal global ptr @ep0_queue._entry, section ".printk_index", align 4
@bdc_queue_xfr.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.113, ptr @.str.2, ptr @.str.114, i8 0, i8 -127, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bdc_queue_xfr\00", [18 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s req:%p\0A\00", [21 x i8] zeroinitializer }, align 32
@bdc_queue_xfr.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.113, ptr @.str.2, ptr @.str.115, i8 0, i8 -127, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"eqp_bdi:%d hwd_bdi:%d\0A\00", [41 x i8] zeroinitializer }, align 32
@bd_available_ep.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.116, ptr @.str.2, ptr @.str.117, i8 0, i8 78, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bd_available_ep\00", [16 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"chain_bd1:%d chain_bd2:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@bd_available_ep.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.116, ptr @.str.2, ptr @.str.118, i8 0, i8 83, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"available_bd:%d\0A\00", [47 x i8] zeroinitializer }, align 32
@bdi_to_tbi.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.119, ptr @.str.2, ptr @.str.120, i8 0, i8 66, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bdi_to_tbi\00", [21 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bdi:%d num_bds_table:%d tbi:%d\0A\00", [32 x i8] zeroinitializer }, align 32
@setup_bd_list_xfr.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.121, ptr @.str.2, ptr @.str.122, i8 0, i8 111, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"setup_bd_list_xfr\00", [46 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s ep:%s num_bds:%d tfs:%d r_len:%d bd:%p\0A\00", [53 x i8] zeroinitializer }, align 32
@setup_bd_list_xfr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.121, ptr @.str.2, i32 478, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Err bd pointing to wrong addr\0A\00", [33 x i8] zeroinitializer }, align 32
@setup_bd_list_xfr._entry_ptr = internal global ptr @setup_bd_list_xfr._entry, section ".printk_index", align 4
@setup_bd_list_xfr.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.121, ptr @.str.2, ptr @.str.124, i8 0, i8 123, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"buf_add:%08llx req_len:%d bd:%p eqp:%d\0A\00", [56 x i8] zeroinitializer }, align 32
@bdi_to_bd.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.125, ptr @.str.2, ptr @.str.126, i8 0, i8 91, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bdi_to_bd\00", [22 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s bdi:%d local_bdi:%d\0A\00", [40 x i8] zeroinitializer }, align 32
@setup_first_bd_ep0.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.127, ptr @.str.2, ptr @.str.128, i8 0, i8 100, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.127 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"setup_first_bd_ep0\00", [45 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ZLP needed wVal:%d len:%d MaxP:%d\0A\00", [61 x i8] zeroinitializer }, align 32
@setup_first_bd_ep0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.127, ptr @.str.2, i32 417, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Unknown ep0 state for queueing bd ep0_state:%s\0A\00", [48 x i8] zeroinitializer }, align 32
@setup_first_bd_ep0._entry_ptr = internal global ptr @setup_first_bd_ep0._entry, section ".printk_index", align 4
@ep0_set_sel.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.130, ptr @.str.2, ptr @.str.14, i8 1, i8 91, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ep0_set_sel\00", [20 x i8] zeroinitializer }, align 32
@ep0_set_sel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.130, ptr @.str.2, i32 1394, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s Wrong wLength:%d\0A\00", [43 x i8] zeroinitializer }, align 32
@ep0_set_sel._entry_ptr = internal global ptr @ep0_set_sel._entry, section ".printk_index", align 4
@ep0_stall.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.132, ptr @.str.2, ptr @.str.14, i8 1, i8 17, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.132 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ep0_stall\00", [22 x i8] zeroinitializer }, align 32
@handle_xsr_succ_status.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.133, ptr @.str.2, ptr @.str.134, i8 0, i8 -15, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"handle_xsr_succ_status\00", [41 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s  ep:%p\0A\00", [21 x i8] zeroinitializer }, align 32
@handle_xsr_succ_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.133, ptr @.str.2, i32 975, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"xfr srr with no BD's queued\0A\00", [35 x i8] zeroinitializer }, align 32
@handle_xsr_succ_status._entry_ptr = internal global ptr @handle_xsr_succ_status._entry, section ".printk_index", align 4
@handle_xsr_succ_status._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.133, ptr @.str.2, i32 1000, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bd doesn't exist?\0A\00", [45 x i8] zeroinitializer }, align 32
@handle_xsr_succ_status._entry_ptr.138 = internal global ptr @handle_xsr_succ_status._entry.136, section ".printk_index", align 4
@handle_xsr_succ_status.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.133, ptr @.str.2, ptr @.str.139, i8 1, i8 5, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.139 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"len=%d actual=%d bd_xfr->next_hwd_bdi:%d\0A\00", [54 x i8] zeroinitializer }, align 32
@handle_xsr_succ_status.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.133, ptr @.str.2, ptr @.str.140, i8 1, i8 6, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.140 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"short xfr on %d\0A\00", [47 x i8] zeroinitializer }, align 32
@bd_add_to_bdi.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.141, ptr @.str.2, ptr @.str.142, i8 0, i8 56, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.141 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bd_add_to_bdi\00", [18 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s  %llx\0A\00", [22 x i8] zeroinitializer }, align 32
@bd_add_to_bdi.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.141, ptr @.str.2, ptr @.str.143, i8 0, i8 60, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.143 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"dma_first_bd:%llx dma_last_bd:%llx\0A\00", [60 x i8] zeroinitializer }, align 32
@bd_add_to_bdi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.141, ptr @.str.2, i32 247, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s FATAL err, bd not found\0A\00", [36 x i8] zeroinitializer }, align 32
@bd_add_to_bdi._entry_ptr = internal global ptr @bd_add_to_bdi._entry, section ".printk_index", align 4
@ep0_xsf_complete.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.145, ptr @.str.2, ptr @.str.14, i8 1, i8 -109, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.145 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ep0_xsf_complete\00", [47 x i8] zeroinitializer }, align 32
@ep0_xsf_complete.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.145, ptr @.str.2, ptr @.str.146, i8 1, i8 -107, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.146 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"test_mode:%d\0A\00", [18 x i8] zeroinitializer }, align 32
@ep0_xsf_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.145, ptr @.str.2, i32 1625, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Err in setting Test mode\0A\00", [38 x i8] zeroinitializer }, align 32
@ep0_xsf_complete._entry_ptr = internal global ptr @ep0_xsf_complete._entry, section ".printk_index", align 4
@ep0_xsf_complete._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.145, ptr @.str.2, i32 1638, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unknown ep0_state:%s\0A\00", [42 x i8] zeroinitializer }, align 32
@ep0_xsf_complete._entry_ptr.150 = internal global ptr @ep0_xsf_complete._entry.148, section ".printk_index", align 4
@bdc_set_test_mode.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.151, ptr @.str.2, ptr @.str.14, i8 0, i8 -24, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.151 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bdc_set_test_mode\00", [46 x i8] zeroinitializer }, align 32
@bdc_set_test_mode.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.151, ptr @.str.2, ptr @.str.152, i8 0, i8 -21, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.152 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usb2_pm=%08x\00", [19 x i8] zeroinitializer }, align 32
@ep0_queue_zlp.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.153, ptr @.str.2, ptr @.str.14, i8 1, i8 97, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.153 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ep0_queue_zlp\00", [18 x i8] zeroinitializer }, align 32
@ep0_queue_zlp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.153, ptr @.str.2, i32 1422, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"err queueing zlp :%d\0A\00", [42 x i8] zeroinitializer }, align 32
@ep0_queue_zlp._entry_ptr = internal global ptr @ep0_queue_zlp._entry, section ".printk_index", align 4
@init_ep.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.155, ptr @.str.2, ptr @.str.156, i8 1, i8 -27, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.155 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"init_ep\00", [24 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s epnum=%d dir=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ep%d\00", [27 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep%d%s\00", [25 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@bdc_gadget_ep_ops = internal constant { %struct.usb_ep_ops, [52 x i8] } { %struct.usb_ep_ops { ptr @bdc_gadget_ep_enable, ptr @bdc_gadget_ep_disable, ptr null, ptr @bdc_gadget_alloc_request, ptr @bdc_gadget_free_request, ptr @bdc_gadget_ep_queue, ptr @bdc_gadget_ep_dequeue, ptr @bdc_gadget_ep_set_halt, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@init_ep.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.155, ptr @.str.2, ptr @.str.161, i8 1, i8 -16, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.161 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ep=%p ep->usb_ep.name=%s epnum=%d ep->epnum=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@bdc_gadget_ep_enable.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.162, ptr @.str.2, ptr @.str.163, i8 1, i8 -47, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.162 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bdc_gadget_ep_enable\00", [43 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s invalid parameters\0A\00", [41 x i8] zeroinitializer }, align 32
@bdc_gadget_ep_enable.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.162, ptr @.str.2, ptr @.str.164, i8 1, i8 -46, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.164 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s missing wMaxPacketSize\0A\00", [37 x i8] zeroinitializer }, align 32
@bdc_gadget_ep_enable.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.162, ptr @.str.2, ptr @.str.165, i8 1, i8 -42, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.165 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s Enabling %s\0A\00", [16 x i8] zeroinitializer }, align 32
@bdc_gadget_ep_disable.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.166, ptr @.str.2, ptr @.str.167, i8 1, i8 -37, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.166 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bdc_gadget_ep_disable\00", [42 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bdc: invalid parameters\0A\00", [39 x i8] zeroinitializer }, align 32
@bdc_gadget_ep_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.166, ptr @.str.2, i32 1908, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s called for ep0\0A\00", [45 x i8] zeroinitializer }, align 32
@bdc_gadget_ep_disable._entry_ptr = internal global ptr @bdc_gadget_ep_disable._entry, section ".printk_index", align 4
@bdc_gadget_ep_disable.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.166, ptr @.str.2, ptr @.str.169, i8 1, i8 -34, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.169 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s() ep:%s ep->flags:%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@bdc_gadget_ep_disable._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.166, ptr @.str.2, i32 1918, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s is already disabled\0A\00", [40 x i8] zeroinitializer }, align 32
@bdc_gadget_ep_disable._entry_ptr.172 = internal global ptr @bdc_gadget_ep_disable._entry.170, section ".printk_index", align 4
@bdc_gadget_alloc_request.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.173, ptr @.str.2, ptr @.str.174, i8 1, i8 -54, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.173 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bdc_gadget_alloc_request\00", [39 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s ep:%s req:%p\0A\00", [47 x i8] zeroinitializer }, align 32
@bdc_gadget_ep_queue.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.175, ptr @.str.2, ptr @.str.176, i8 1, i8 -80, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.175 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bdc_gadget_ep_queue\00", [44 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s ep:%p req:%p\0A\00", [47 x i8] zeroinitializer }, align 32
@bdc_gadget_ep_queue.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.175, ptr @.str.2, ptr @.str.177, i8 1, i8 -80, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.177 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"queuing request %p to %s length %d zero:%d\0A\00", [52 x i8] zeroinitializer }, align 32
@bdc_gadget_ep_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.175, ptr @.str.2, i32 1735, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"trying to queue req %p to disabled %s\0A\00", [57 x i8] zeroinitializer }, align 32
@bdc_gadget_ep_queue._entry_ptr = internal global ptr @bdc_gadget_ep_queue._entry, section ".printk_index", align 4
@bdc_gadget_ep_queue._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.175, ptr @.str.2, i32 1742, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"req length > supported MAX:%d requested:%d\0A\00", [52 x i8] zeroinitializer }, align 32
@bdc_gadget_ep_queue._entry_ptr.181 = internal global ptr @bdc_gadget_ep_queue._entry.179, section ".printk_index", align 4
@ep_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.183, ptr @.str.2, i32 725, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dma mapping failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ep_queue\00", [23 x i8] zeroinitializer }, align 32
@ep_queue._entry_ptr = internal global ptr @ep_queue._entry, section ".printk_index", align 4
@bdc_gadget_ep_dequeue.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.184, ptr @.str.2, ptr @.str.174, i8 1, i8 -70, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.184 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bdc_gadget_ep_dequeue\00", [42 x i8] zeroinitializer }, align 32
@bdc_gadget_ep_dequeue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.184, ptr @.str.2, i32 1781, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usb_req !=req n\00", [16 x i8] zeroinitializer }, align 32
@bdc_gadget_ep_dequeue._entry_ptr = internal global ptr @bdc_gadget_ep_dequeue._entry, section ".printk_index", align 4
@ep_dequeue.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.186, ptr @.str.2, ptr @.str.187, i8 0, i8 -67, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.186 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ep_dequeue\00", [21 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s ep:%s start:%d end:%d\0A\00", [38 x i8] zeroinitializer }, align 32
@ep_dequeue.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.186, ptr @.str.2, ptr @.str.188, i8 0, i8 -66, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.188 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s ep=%p ep->desc=%p\0A\00", [42 x i8] zeroinitializer }, align 32
@ep_dequeue.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.186, ptr @.str.2, ptr @.str.189, i8 0, i8 -54, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.189 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"start_pending:%d end_pending:%d speed:%d\0A\00", [54 x i8] zeroinitializer }, align 32
@ep_dequeue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.186, ptr @.str.2, i32 857, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"error in ep_bla:%d\0A\00", [44 x i8] zeroinitializer }, align 32
@ep_dequeue._entry_ptr = internal global ptr @ep_dequeue._entry, section ".printk_index", align 4
@bdc_gadget_ep_set_halt.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.191, ptr @.str.2, ptr @.str.67, i8 1, i8 -61, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.191 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bdc_gadget_ep_set_halt\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 32767]
@__sancov_gen_cov_switch_values.192 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 3, i64 5, i64 9, i64 48, i64 49]
@__sancov_gen_cov_switch_values.193 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 7]
@__sancov_gen_cov_switch_values.194 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 32767]
@__sancov_gen_cov_switch_values.195 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 3, i64 4, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.196 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.197 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.198 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.199 = internal global [7 x i64] [i64 5, i64 16, i64 1, i64 2, i64 48, i64 49, i64 50]
@__sancov_gen_cov_switch_values.200 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 345, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 566, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 583, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 608, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 613, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 906, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1069, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant [17 x i8] c"ep0_state_string\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 42, i32 27 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1082, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1515, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1524, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1539, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1554, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1571, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1579, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1653, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1662, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1666, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1681, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1690, i32 4 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1702, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1705, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 2000, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 2005, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 2013, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 2022, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 546, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 59, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 63, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 73, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 75, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 79, i32 4 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 83, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 136, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 164, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 43, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 44, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 45, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 46, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 47, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 48, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 872, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 875, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 881, i32 4 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 887, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 890, i32 4 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 894, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1440, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1444, i32 4 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1450, i32 4 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1469, i32 4 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1474, i32 4 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1479, i32 4 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1484, i32 4 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1489, i32 4 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1113, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1136, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1241, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1250, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1257, i32 5 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1260, i32 5 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1267, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1286, i32 4 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1289, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1296, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1152, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1156, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1164, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1173, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1195, i32 3 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1215, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1221, i32 3 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1317, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1321, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1358, i32 4 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1366, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1370, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 700, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 662, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 688, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 516, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 517, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 311, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 335, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 263, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 446, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 478, i32 4 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 490, i32 3 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 363, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 401, i32 4 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 415, i32 3 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1391, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1394, i32 3 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1093, i32 2 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 966, i32 2 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 975, i32 3 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1000, i32 4 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1042, i32 3 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1051, i32 3 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 225, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 238, i32 3 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 247, i32 3 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1612, i32 2 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1622, i32 4 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1625, i32 5 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1636, i32 3 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 930, i32 2 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 942, i32 2 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1415, i32 2 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1422, i32 3 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1943, i32 2 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1960, i32 40 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1972, i32 40 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1973, i32 15 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1973, i32 22 }
@___asan_gen_.723 = private unnamed_addr constant [18 x i8] c"bdc_gadget_ep_ops\00", align 1
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1928, i32 32 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1986, i32 2 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1861, i32 3 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1866, i32 3 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1882, i32 2 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1900, i32 3 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1908, i32 3 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1911, i32 2 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1917, i32 4 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1835, i32 2 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1728, i32 2 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1729, i32 2 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1733, i32 3 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1740, i32 3 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 725, i32 3 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1771, i32 2 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1781, i32 3 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 757, i32 2 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 759, i32 2 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 808, i32 2 }
@___asan_gen_.819 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 857, i32 4 }
@___asan_gen_.825 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.826 = private constant [39 x i8] c"../drivers/usb/gadget/udc/bdc/bdc_ep.c\00", align 1
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 1807, i32 2 }
@llvm.compiler.used = appending global [245 x ptr] [ptr @bd_add_to_bdi._entry, ptr @bd_add_to_bdi._entry_ptr, ptr @bdc_ep_disable._entry, ptr @bdc_ep_disable._entry_ptr, ptr @bdc_ep_enable._entry, ptr @bdc_ep_enable._entry_ptr, ptr @bdc_gadget_ep_dequeue._entry, ptr @bdc_gadget_ep_dequeue._entry_ptr, ptr @bdc_gadget_ep_disable._entry, ptr @bdc_gadget_ep_disable._entry.170, ptr @bdc_gadget_ep_disable._entry_ptr, ptr @bdc_gadget_ep_disable._entry_ptr.172, ptr @bdc_gadget_ep_queue._entry, ptr @bdc_gadget_ep_queue._entry.179, ptr @bdc_gadget_ep_queue._entry_ptr, ptr @bdc_gadget_ep_queue._entry_ptr.181, ptr @bdc_init_ep._entry, ptr @bdc_init_ep._entry.43, ptr @bdc_init_ep._entry.46, ptr @bdc_init_ep._entry_ptr, ptr @bdc_init_ep._entry_ptr.45, ptr @bdc_init_ep._entry_ptr.47, ptr @bdc_sr_xsf._entry, ptr @bdc_sr_xsf._entry.30, ptr @bdc_sr_xsf._entry.34, ptr @bdc_sr_xsf._entry.37, ptr @bdc_sr_xsf._entry_ptr, ptr @bdc_sr_xsf._entry_ptr.32, ptr @bdc_sr_xsf._entry_ptr.36, ptr @bdc_sr_xsf._entry_ptr.39, ptr @bdc_xsf_ep0_data_start._entry, ptr @bdc_xsf_ep0_data_start._entry_ptr, ptr @bdc_xsf_ep0_status_start._entry, ptr @bdc_xsf_ep0_status_start._entry_ptr, ptr @ep0_handle_feature._entry, ptr @ep0_handle_feature._entry_ptr, ptr @ep0_handle_feature_dev._entry, ptr @ep0_handle_feature_dev._entry_ptr, ptr @ep0_handle_status._entry, ptr @ep0_handle_status._entry.106, ptr @ep0_handle_status._entry_ptr, ptr @ep0_handle_status._entry_ptr.108, ptr @ep0_queue._entry, ptr @ep0_queue._entry_ptr, ptr @ep0_queue_zlp._entry, ptr @ep0_queue_zlp._entry_ptr, ptr @ep0_set_address._entry, ptr @ep0_set_address._entry_ptr, ptr @ep0_set_sel._entry, ptr @ep0_set_sel._entry_ptr, ptr @ep0_xsf_complete._entry, ptr @ep0_xsf_complete._entry.148, ptr @ep0_xsf_complete._entry_ptr, ptr @ep0_xsf_complete._entry_ptr.150, ptr @ep_dequeue._entry, ptr @ep_dequeue._entry_ptr, ptr @ep_queue._entry, ptr @ep_queue._entry_ptr, ptr @ep_set_halt._entry, ptr @ep_set_halt._entry.71, ptr @ep_set_halt._entry_ptr, ptr @ep_set_halt._entry_ptr.73, ptr @handle_control_request._entry, ptr @handle_control_request._entry_ptr, ptr @handle_xsr_succ_status._entry, ptr @handle_xsr_succ_status._entry.136, ptr @handle_xsr_succ_status._entry_ptr, ptr @handle_xsr_succ_status._entry_ptr.138, ptr @setup_bd_list_xfr._entry, ptr @setup_bd_list_xfr._entry_ptr, ptr @setup_first_bd_ep0._entry, ptr @setup_first_bd_ep0._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @ep0_state_string, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @bdc_sr_xsf._rs, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.107, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.137, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.149, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @bdc_gadget_ep_ops, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.171, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.180, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191], section "llvm.metadata"
@0 = internal global [209 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_ep_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_ep_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep0_state_string to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_xsf_ep0_data_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_xsf_ep0_status_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_sr_xsf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_sr_xsf._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_sr_xsf._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_sr_xsf._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_sr_xsf._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_init_ep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_init_ep._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_init_ep._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep_set_halt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep_set_halt._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_control_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep0_set_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep0_handle_feature._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep0_handle_feature_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep0_handle_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep0_handle_status._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep0_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_bd_list_xfr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_first_bd_ep0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep0_set_sel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_xsr_succ_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_xsr_succ_status._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd_add_to_bdi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep0_xsf_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep0_xsf_complete._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep0_queue_zlp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_gadget_ep_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_gadget_ep_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_gadget_ep_disable._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_gadget_ep_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_gadget_ep_queue._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_gadget_ep_dequeue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep_dequeue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bdc_notify_xfr(ptr nocapture noundef readonly %bdc, i32 noundef %epnum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bdc_ep_array = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 7
  %0 = ptrtoint ptr %bdc_ep_array to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdc_ep_array, align 8
  %arrayidx = getelementptr ptr, ptr %1, i32 %epnum
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_notify_xfr.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_notify_xfr, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !486

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_notify_xfr.__UNIQUE_ID_ddebug310, ptr noundef %5, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %epnum) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags = getelementptr inbounds %struct.bdc_ep, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.end.if.end14_crit_edge, label %if.then11, !prof !487

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %and13 = and i32 %7, -5
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and13, ptr %flags, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %do.end.if.end14_crit_edge
  %regs = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 8
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @arm_heavy_mb() #9
  %11 = tail call i32 @llvm.bswap.i32(i32 %epnum) #9
  %add.ptr.i = getelementptr i8, ptr %10, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #9, !srcloc !489
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bdc_ep_disable(ptr noundef %ep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bdc1 = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 2
  %0 = ptrtoint ptr %bdc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdc1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_ep_disable.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_ep_disable, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !486

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %ep_num = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 5
  %4 = ptrtoint ptr %ep_num to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ep_num, align 2
  %conv = zext i8 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_ep_disable.__UNIQUE_ID_ddebug318, ptr noundef %3, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef %conv) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ep_num5 = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 5
  %6 = ptrtoint ptr %ep_num5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ep_num5, align 2
  %conv6 = zext i8 %7 to i32
  %call7 = tail call i32 @bdc_stop_ep(ptr noundef %1, i32 noundef %conv6) #9
  %queue = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 1
  %8 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not49 = icmp eq ptr %9, %queue
  br i1 %cmp.i.not49, label %do.end.while.end_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  br label %while.body

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end.while.body_crit_edge
  %10 = phi ptr [ %12, %while.body.while.body_crit_edge ], [ %9, %do.end.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %10, i32 -56
  tail call fastcc void @bdc_req_complete(ptr noundef %ep, ptr noundef %add.ptr, i32 noundef -108)
  %11 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %12, %queue
  br i1 %cmp.i.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.end.while.end_crit_edge
  %call14 = tail call i32 @bdc_dconfig_ep(ptr noundef %1, ptr noundef %ep) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %while.end.if.end21_crit_edge, label %do.end19

while.end.if.end21_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

do.end19:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev20 = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev20, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.6) #12
  br label %if.end21

if.end21:                                         ; preds = %do.end19, %while.end.if.end21_crit_edge
  %flags = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 8
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %flags, align 4
  %16 = ptrtoint ptr %ep_num5 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ep_num5, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp = icmp eq i8 %17, 1
  br i1 %cmp, label %if.end21.cleanup_crit_edge, label %if.end26

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %num_tabs = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %num_tabs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_tabs, align 4
  tail call fastcc void @ep_bd_list_free(ptr noundef %ep, i32 noundef %19)
  %desc = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 7
  %20 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %desc, align 4
  %comp_desc = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 6
  %21 = ptrtoint ptr %comp_desc to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %comp_desc, align 4
  %desc27 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 9
  %22 = ptrtoint ptr %desc27 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %desc27, align 4
  %ep_type = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 3
  %23 = ptrtoint ptr %ep_type to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %ep_type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end21.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end26 ], [ 0, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdc_stop_ep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bdc_req_complete(ptr noundef %ep, ptr noundef %req, i32 noundef %status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bdc1 = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 2
  %0 = ptrtoint ptr %bdc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdc1, align 4
  %cmp = icmp eq ptr %req, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_req_complete.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_req_complete, %do.end)) #9
          to label %if.then5 [label %do.end], !srcloc !486

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_req_complete.__UNIQUE_ID_ddebug317, ptr noundef %3, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48, ptr noundef %name, i32 noundef %status) #9
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %queue = getelementptr inbounds %struct.bdc_req, ptr %req, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_del.exit_crit_edge

do.end.list_del.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.bdc_req, ptr %req, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %queue, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end.list_del.exit_crit_edge
  %10 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %queue, align 4
  %prev.i = getelementptr inbounds %struct.bdc_req, ptr %req, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %status7 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %12 = ptrtoint ptr %status7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %status, ptr %status7, align 4
  %dir = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 4
  %13 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dir, align 1
  %conv = zext i8 %14 to i32
  tail call void @usb_gadget_unmap_request(ptr noundef %1, ptr noundef nonnull %req, i32 noundef %conv) #9
  %complete = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 7
  %15 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %complete, align 4
  %tobool10.not = icmp eq ptr %16, null
  br i1 %tobool10.not, label %list_del.exit.cleanup_crit_edge, label %if.then11

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then11:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  tail call void @usb_gadget_giveback_request(ptr noundef %ep, ptr noundef nonnull %req) #9
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %list_del.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdc_dconfig_ep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ep_bd_list_free(ptr noundef %ep, i32 noundef %num_tabs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_list1 = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10
  %bdc2 = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 2
  %0 = ptrtoint ptr %bdc2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdc2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep_bd_list_free.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep_bd_list_free, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !486

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep_bd_list_free.__UNIQUE_ID_ddebug297, ptr noundef %3, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.50, ptr noundef %name, i32 noundef %num_tabs) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %bd_list1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bd_list1, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %do.body8, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_tabs)
  %cmp164.not = icmp eq i32 %num_tabs, 0
  br i1 %cmp164.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev46 = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 2
  %bd_table_pool = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 24
  br label %for.body

do.body8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep_bd_list_free.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep_bd_list_free, %cleanup)) #9
          to label %if.then22 [label %cleanup], !srcloc !486

if.then22:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  %dev23 = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev23, align 4
  %name24 = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep_bd_list_free.__UNIQUE_ID_ddebug298, ptr noundef %7, ptr noundef nonnull @.str.52, ptr noundef %name24) #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %index.0165 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %bd_list1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bd_list1, align 4
  %arrayidx = getelementptr ptr, ptr %9, i32 %index.0165
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep_bd_list_free.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep_bd_list_free, %do.end49)) #9
          to label %if.then45 [label %do.end49], !srcloc !486

if.then45:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev46, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep_bd_list_free.__UNIQUE_ID_ddebug299, ptr noundef %13, ptr noundef nonnull @.str.53, ptr noundef %11, i32 noundef %index.0165) #9
  br label %do.end49

do.end49:                                         ; preds = %if.then45, %for.body
  %tobool50.not = icmp eq ptr %11, null
  br i1 %tobool50.not, label %do.body52, label %if.end71

do.body52:                                        ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep_bd_list_free.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep_bd_list_free, %for.inc)) #9
          to label %if.then66 [label %for.inc], !srcloc !486

if.then66:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev46, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep_bd_list_free.__UNIQUE_ID_ddebug300, ptr noundef %15, ptr noundef nonnull @.str.54) #9
  br label %for.inc

if.end71:                                         ; preds = %do.end49
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %11, align 4
  %tobool72.not = icmp eq ptr %17, null
  br i1 %tobool72.not, label %do.body74, label %do.body94

do.body74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep_bd_list_free.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep_bd_list_free, %for.inc)) #9
          to label %if.then88 [label %for.inc], !srcloc !486

if.then88:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev46, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep_bd_list_free.__UNIQUE_ID_ddebug301, ptr noundef %19, ptr noundef nonnull @.str.55) #9
  br label %for.inc

do.body94:                                        ; preds = %if.end71
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep_bd_list_free.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep_bd_list_free, %do.end113)) #9
          to label %if.then108 [label %do.end113], !srcloc !486

if.then108:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev46, align 4
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %11, align 4
  %dma = getelementptr inbounds %struct.bd_table, ptr %11, i32 0, i32 1
  %24 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma, align 4
  %conv = zext i32 %25 to i64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep_bd_list_free.__UNIQUE_ID_ddebug302, ptr noundef %21, ptr noundef nonnull @.str.56, ptr noundef %23, i64 noundef %conv) #9
  br label %do.end113

do.end113:                                        ; preds = %if.then108, %do.body94
  %26 = ptrtoint ptr %bd_table_pool to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bd_table_pool, align 4
  %28 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %11, align 4
  %dma115 = getelementptr inbounds %struct.bd_table, ptr %11, i32 0, i32 1
  %30 = ptrtoint ptr %dma115 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma115, align 4
  tail call void @dma_pool_free(ptr noundef %27, ptr noundef %29, i32 noundef %31) #9
  tail call void @kfree(ptr noundef nonnull %11) #9
  br label %for.inc

for.inc:                                          ; preds = %do.end113, %if.then88, %do.body74, %if.then66, %do.body52
  %inc = add nuw i32 %index.0165, 1
  %exitcond.not = icmp eq i32 %inc, %num_tabs
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %32 = ptrtoint ptr %bd_list1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bd_list1, align 4
  tail call void @kfree(ptr noundef %33) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then22, %do.body8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bdc_ep_enable(ptr noundef %ep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bdc1 = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 2
  %0 = ptrtoint ptr %bdc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdc1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_ep_enable.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_ep_enable, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !486

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_ep_enable.__UNIQUE_ID_ddebug319, ptr noundef %3, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, i32 noundef 2, i32 noundef 6) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = tail call fastcc i32 @ep_bd_list_alloc(ptr noundef %ep)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end12, label %do.end10

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev11 = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.11, i32 noundef %call5) #12
  br label %cleanup

if.end12:                                         ; preds = %do.end
  tail call void @bdc_dbg_bd_list(ptr noundef %1, ptr noundef %ep) #9
  %ep_num = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 5
  %6 = ptrtoint ptr %ep_num to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ep_num, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp = icmp eq i8 %7, 1
  br i1 %cmp, label %if.end12.cleanup_crit_edge, label %if.end15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  %call16 = tail call i32 @bdc_config_ep(ptr noundef %1, ptr noundef %ep) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %desc = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 7
  %8 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc, align 4
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %wMaxPacketSize.i, align 1
  %12 = and i16 %11, -249
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #9
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %14 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %14, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.value = zext i16 %13 to i56
  %bf.shl = shl nuw nsw i56 %bf.value, 40
  %bf.clear = and i56 %bf.load, 1099511627775
  %bf.set = or i56 %bf.shl, %bf.clear
  store i56 %bf.set, ptr %maxpacket, align 2
  %desc23 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 9
  %15 = ptrtoint ptr %desc23 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %9, ptr %desc23, align 4
  %comp_desc = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 6
  %16 = ptrtoint ptr %comp_desc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %comp_desc, align 4
  %comp_desc25 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 10
  %18 = ptrtoint ptr %comp_desc25 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %comp_desc25, align 4
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %9, i32 0, i32 3
  %19 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bmAttributes.i, align 1
  %21 = and i8 %20, 3
  %ep_type = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 3
  %22 = ptrtoint ptr %ep_type to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %ep_type, align 4
  %flags = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 8
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  %or = or i32 %24, 1
  store i32 %or, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end15.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %do.end10
  %retval.0 = phi i32 [ -12, %do.end10 ], [ 0, %if.end19 ], [ 0, %if.end12.cleanup_crit_edge ], [ %call16, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ep_bd_list_alloc(ptr noundef %ep) unnamed_addr #0 align 64 {
entry:
  %dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bdc1 = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 2
  %0 = ptrtoint ptr %bdc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdc1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma) #9
  %2 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %dma, align 4, !annotation !490
  %desc = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 7
  %3 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %desc, align 4
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bmAttributes.i, align 1
  %7 = and i8 %6, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp.i.not = icmp eq i8 %7, 1
  %. = select i1 %cmp.i.not, i32 6, i32 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep_bd_list_alloc.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep_bd_list_alloc, %if.end7.i.i)) #9
          to label %if.then7 [label %if.end7.i.i], !srcloc !486

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep_bd_list_alloc.__UNIQUE_ID_ddebug303, ptr noundef %9, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.57, ptr noundef %ep, i32 noundef %.) #9
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then7, %entry
  %10 = shl nuw nsw i32 %., 2
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 2848) #13
  %bd_list = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10
  %11 = ptrtoint ptr %bd_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call8.i.i, ptr %bd_list, align 4
  %tobool12.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool12.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i.i
  %bd_table_pool = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 24
  %dev40 = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end50.for.body_crit_edge, %for.cond.preheader
  %prev_table.0127 = phi ptr [ null, %for.cond.preheader ], [ %call7.i.i, %if.end50.for.body_crit_edge ]
  %index.0125 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %if.end50.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 2848, i32 noundef 8) #14
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %for.body.fail_crit_edge, label %if.end18

for.body.fail_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end18:                                         ; preds = %for.body
  %13 = ptrtoint ptr %bd_table_pool to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bd_table_pool, align 4
  %call.i = call ptr @dma_pool_alloc(ptr noundef %14, i32 noundef 2848, ptr noundef nonnull %dma) #9
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %call7.i.i, align 8
  %tobool21.not = icmp eq ptr %call.i, null
  br i1 %tobool21.not, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %fail

if.end23:                                         ; preds = %if.end18
  %16 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma, align 4
  %dma24 = getelementptr inbounds %struct.bd_table, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %dma24 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %dma24, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep_bd_list_alloc.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep_bd_list_alloc, %do.end45)) #9
          to label %if.then39 [label %do.end45], !srcloc !486

if.then39:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev40, align 4
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call7.i.i, align 8
  %23 = ptrtoint ptr %dma24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma24, align 4
  %conv = zext i32 %24 to i64
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep_bd_list_alloc.__UNIQUE_ID_ddebug304, ptr noundef %20, ptr noundef nonnull @.str.59, i32 noundef %index.0125, ptr noundef %22, i64 noundef %conv, ptr noundef %prev_table.0127) #9
  br label %do.end45

do.end45:                                         ; preds = %if.then39, %if.end23
  %25 = ptrtoint ptr %bd_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bd_list, align 4
  %arrayidx = getelementptr ptr, ptr %26, i32 %index.0125
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  %tobool48.not = icmp eq ptr %prev_table.0127, null
  br i1 %tobool48.not, label %do.end45.if.end50_crit_edge, label %if.then49

do.end45.if.end50_crit_edge:                      ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then49:                                        ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %dma24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma24, align 4
  %30 = call i32 @llvm.bswap.i32(i32 %29) #9
  %31 = ptrtoint ptr %prev_table.0127 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev_table.0127, align 8
  %arrayidx.i = getelementptr %struct.bdc_bd, ptr %32, i32 63
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %30, ptr %arrayidx.i, align 4
  %34 = load ptr, ptr %prev_table.0127, align 8
  %arrayidx8.i = getelementptr %struct.bdc_bd, ptr %34, i32 63, i32 0, i32 1
  %35 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %arrayidx8.i, align 4
  %36 = load ptr, ptr %prev_table.0127, align 8
  %arrayidx13.i = getelementptr %struct.bdc_bd, ptr %36, i32 63, i32 0, i32 2
  %37 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %arrayidx13.i, align 4
  %38 = load ptr, ptr %prev_table.0127, align 8
  %arrayidx18.i = getelementptr %struct.bdc_bd, ptr %38, i32 63, i32 0, i32 3
  %39 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 251658252, ptr %arrayidx18.i, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %do.end45.if.end50_crit_edge
  %inc = add nuw nsw i32 %index.0125, 1
  %exitcond.not = icmp eq i32 %inc, %.
  br i1 %exitcond.not, label %for.end, label %if.end50.for.body_crit_edge

if.end50.for.body_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %bd_list to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bd_list, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %dma.i112 = getelementptr inbounds %struct.bd_table, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %dma.i112 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dma.i112, align 4
  %46 = call i32 @llvm.bswap.i32(i32 %45) #9
  %47 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call7.i.i, align 8
  %arrayidx.i113 = getelementptr %struct.bdc_bd, ptr %48, i32 63
  %49 = ptrtoint ptr %arrayidx.i113 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %46, ptr %arrayidx.i113, align 4
  %50 = load ptr, ptr %call7.i.i, align 8
  %arrayidx8.i114 = getelementptr %struct.bdc_bd, ptr %50, i32 63, i32 0, i32 1
  %51 = ptrtoint ptr %arrayidx8.i114 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %arrayidx8.i114, align 4
  %52 = load ptr, ptr %call7.i.i, align 8
  %arrayidx13.i115 = getelementptr %struct.bdc_bd, ptr %52, i32 63, i32 0, i32 2
  %53 = ptrtoint ptr %arrayidx13.i115 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %arrayidx13.i115, align 4
  %54 = load ptr, ptr %call7.i.i, align 8
  %arrayidx18.i116 = getelementptr %struct.bdc_bd, ptr %54, i32 63, i32 0, i32 3
  %55 = ptrtoint ptr %arrayidx18.i116 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 251658252, ptr %arrayidx18.i116, align 4
  %num_tabs55 = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10, i32 1
  %mul = shl nuw nsw i32 %., 6
  %sub = add nsw i32 %mul, -1
  %max_bdi = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10, i32 2
  %56 = ptrtoint ptr %max_bdi to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %sub, ptr %max_bdi, align 4
  %57 = ptrtoint ptr %num_tabs55 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %., ptr %num_tabs55, align 4
  %num_bds_table = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10, i32 5
  %58 = ptrtoint ptr %num_bds_table to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 64, ptr %num_bds_table, align 4
  %eqp_bdi = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10, i32 3
  %59 = ptrtoint ptr %eqp_bdi to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %eqp_bdi, align 4
  %hwd_bdi = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10, i32 4
  %60 = ptrtoint ptr %hwd_bdi to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %hwd_bdi, align 4
  br label %cleanup

fail:                                             ; preds = %if.then22, %for.body.fail_crit_edge
  call fastcc void @ep_bd_list_free(ptr noundef %ep, i32 noundef %.)
  br label %cleanup

cleanup:                                          ; preds = %fail, %for.end, %if.end7.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %fail ], [ 0, %for.end ], [ -12, %if.end7.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma) #9
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdc_dbg_bd_list(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdc_config_ep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bdc_free_ep(ptr nocapture noundef readonly %bdc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_free_ep.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_free_ep, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !486

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_free_ep.__UNIQUE_ID_ddebug329, ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %num_eps = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 6
  %2 = ptrtoint ptr %num_eps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_eps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp27 = icmp ugt i32 %3, 1
  br i1 %cmp27, label %for.body.lr.ph, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %bdc_ep_array = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv30 = phi i32 [ 1, %for.body.lr.ph ], [ %conv, %for.inc.for.body_crit_edge ]
  %epnum.028 = phi i8 [ 1, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %bdc_ep_array to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bdc_ep_array, align 8
  %arrayidx = getelementptr ptr, ptr %5, i32 %conv30
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %for.body.for.inc_crit_edge, label %if.end7

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end7:                                          ; preds = %for.body
  %flags = getelementptr inbounds %struct.bdc_ep, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end7.if.end10_crit_edge, label %if.then9

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %num_tabs = getelementptr inbounds %struct.bdc_ep, ptr %7, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %num_tabs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_tabs, align 4
  tail call fastcc void @ep_bd_list_free(ptr noundef nonnull %7, i32 noundef %11)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7.if.end10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %epnum.028)
  %cmp12.not = icmp eq i8 %epnum.028, 1
  br i1 %cmp12.not, label %if.end10.if.end15_crit_edge, label %if.then14

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then14:                                        ; preds = %if.end10
  %ep_list = getelementptr inbounds %struct.usb_ep, ptr %7, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ep_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then14.list_del.exit_crit_edge

if.then14.list_del.exit_crit_edge:                ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.usb_ep, ptr %7, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %ep_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ep_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then14.list_del.exit_crit_edge
  %18 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %ep_list, align 4
  %prev.i = getelementptr inbounds %struct.usb_ep, ptr %7, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end15

if.end15:                                         ; preds = %list_del.exit, %if.end10.if.end15_crit_edge
  tail call void @kfree(ptr noundef nonnull %7) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end15, %for.body.for.inc_crit_edge
  %inc = add i8 %epnum.028, 1
  %conv = zext i8 %inc to i32
  %20 = ptrtoint ptr %num_eps to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_eps, align 4
  %cmp = icmp ugt i32 %21, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bdc_xsf_ep0_setup_recv(ptr nocapture noundef %bdc, ptr nocapture noundef readonly %sreport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_xsf_ep0_setup_recv.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_xsf_ep0_setup_recv, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !486

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %ep0_state = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 15
  %2 = ptrtoint ptr %ep0_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ep0_state, align 4
  %arrayidx = getelementptr [6 x ptr], ptr @ep0_state_string, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_xsf_ep0_setup_recv.__UNIQUE_ID_ddebug335, ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, ptr noundef %5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %setup_pkt4 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 12
  %6 = ptrtoint ptr %sreport to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %sreport, align 4
  %8 = ptrtoint ptr %setup_pkt4 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %7, ptr %setup_pkt4, align 1
  %9 = trunc i64 %7 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool6.not = icmp eq i16 %9, 0
  %spec.select = select i1 %tobool6.not, i32 3, i32 1
  %10 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 15
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select, ptr %10, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_xsf_ep0_setup_recv.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_xsf_ep0_setup_recv, %do.end31)) #9
          to label %if.then25 [label %do.end31], !srcloc !486

if.then25:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev26 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %12 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev26, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %10, align 4
  %arrayidx28 = getelementptr [6 x ptr], ptr @ep0_state_string, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx28, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_xsf_ep0_setup_recv.__UNIQUE_ID_ddebug336, ptr noundef %13, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, ptr noundef %17) #9
  br label %do.end31

do.end31:                                         ; preds = %if.then25, %do.end
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bdc_xsf_ep0_data_start(ptr noundef %bdc, ptr nocapture noundef readnone %sreport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_xsf_ep0_data_start.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_xsf_ep0_data_start, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !486

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_xsf_ep0_data_start.__UNIQUE_ID_ddebug366, ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.18) #9
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
  %flags = getelementptr inbounds %struct.bdc_ep, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.end.if.end10_crit_edge, label %if.then5

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then5:                                         ; preds = %do.end
  %call6 = tail call fastcc i32 @ep_set_halt(ptr noundef %5, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.if.end10_crit_edge, label %if.then5.err_crit_edge

if.then5.err_crit_edge:                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end10:                                         ; preds = %if.then5.if.end10_crit_edge, %do.end.if.end10_crit_edge
  %ep0_state = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 15
  %8 = ptrtoint ptr %ep0_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ep0_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not = icmp eq i32 %9, 1
  br i1 %cmp.not, label %if.end10.if.end18_crit_edge, label %do.end14

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

do.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %dev15 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %10 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev15, align 4
  %arrayidx17 = getelementptr [6 x ptr], ptr @ep0_state_string, i32 0, i32 %9
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx17, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.19, ptr noundef %13) #12
  br label %if.end18

if.end18:                                         ; preds = %do.end14, %if.end10.if.end18_crit_edge
  %call19 = tail call fastcc i32 @handle_control_request(ptr noundef %bdc)
  %14 = zext i32 %call19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call19, label %if.end18.err_crit_edge [
    i32 32767, label %if.then21
    i32 0, label %if.then24
  ]

if.end18.err_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %delayed_status = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 16
  %15 = ptrtoint ptr %delayed_status to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %delayed_status, align 8
  br label %cleanup

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %ep0_state to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %ep0_state, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_xsf_ep0_data_start.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_xsf_ep0_data_start, %cleanup)) #9
          to label %if.then40 [label %cleanup], !srcloc !486

if.then40:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %dev41 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %17 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev41, align 4
  %19 = ptrtoint ptr %ep0_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ep0_state, align 4
  %arrayidx43 = getelementptr [6 x ptr], ptr @ep0_state_string, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx43, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_xsf_ep0_data_start.__UNIQUE_ID_ddebug367, ptr noundef %18, ptr noundef nonnull @.str.20, ptr noundef %22) #9
  br label %cleanup

err:                                              ; preds = %if.end18.err_crit_edge, %if.then5.err_crit_edge
  %23 = ptrtoint ptr %bdc_ep_array to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bdc_ep_array, align 8
  %arrayidx.i = getelementptr ptr, ptr %24, i32 1
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_stall.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_xsf_ep0_data_start, %do.end.i)) #9
          to label %if.then.i [label %do.end.i], !srcloc !486

if.then.i:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_stall.__UNIQUE_ID_ddebug337, ptr noundef %28, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.132) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %err
  %delayed_status.i = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 16
  %29 = ptrtoint ptr %delayed_status.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %delayed_status.i, align 8
  %call4.i = tail call fastcc i32 @ep_set_halt(ptr noundef %26, i32 noundef 1) #9
  %queue.i = getelementptr inbounds %struct.bdc_ep, ptr %26, i32 0, i32 1
  %30 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not17.i = icmp eq ptr %31, %queue.i
  br i1 %cmp.i.not17.i, label %do.end.i.cleanup_crit_edge, label %do.end.i.while.body.i_crit_edge

do.end.i.while.body.i_crit_edge:                  ; preds = %do.end.i
  br label %while.body.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end.i.while.body.i_crit_edge
  %32 = phi ptr [ %34, %while.body.i.while.body.i_crit_edge ], [ %31, %do.end.i.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %32, i32 -56
  tail call fastcc void @bdc_req_complete(ptr noundef %26, ptr noundef %add.ptr.i, i32 noundef -108) #9
  %33 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %34, %queue.i
  br i1 %cmp.i.not.i, label %while.body.i.cleanup_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %while.body.i.cleanup_crit_edge, %do.end.i.cleanup_crit_edge, %if.then40, %if.then24, %if.then21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ep_set_halt(ptr noundef %ep, i32 noundef %value) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bdc1 = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 2
  %0 = ptrtoint ptr %bdc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdc1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep_set_halt.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep_set_halt, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !486

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep_set_halt.__UNIQUE_ID_ddebug325, ptr noundef %3, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.66, ptr noundef %name, i32 noundef %value) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool5.not = icmp eq i32 %value, 0
  br i1 %tobool5.not, label %do.body42, label %do.body7

do.body7:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep_set_halt.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep_set_halt, %do.end25)) #9
          to label %if.then21 [label %do.end25], !srcloc !486

if.then21:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  %dev22 = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev22, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep_set_halt.__UNIQUE_ID_ddebug326, ptr noundef %5, ptr noundef nonnull @.str.68) #9
  br label %do.end25

do.end25:                                         ; preds = %if.then21, %do.body7
  %ep_num = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 5
  %6 = ptrtoint ptr %ep_num to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ep_num, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp = icmp eq i8 %7, 1
  br i1 %cmp, label %if.then27, label %do.end25.if.end28_crit_edge

do.end25.if.end28_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then27:                                        ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #11
  %ep0_state = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %ep0_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %ep0_state, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %do.end25.if.end28_crit_edge
  %9 = ptrtoint ptr %ep_num to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ep_num, align 2
  %conv30 = zext i8 %10 to i32
  %call31 = tail call i32 @bdc_ep_set_stall(ptr noundef %1, i32 noundef %conv30) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.else, label %do.end36

do.end36:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %dev37 = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev37, align 4
  %name38 = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.69, ptr noundef %name38) #12
  br label %if.end94

if.else:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 8
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %or = or i32 %14, 2
  store i32 %or, ptr %flags, align 4
  br label %if.end94

do.body42:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep_set_halt.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep_set_halt, %do.end60)) #9
          to label %if.then56 [label %do.end60], !srcloc !486

if.then56:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #11
  %dev57 = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev57, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep_set_halt.__UNIQUE_ID_ddebug327, ptr noundef %16, ptr noundef nonnull @.str.70) #9
  br label %do.end60

do.end60:                                         ; preds = %if.then56, %do.body42
  %ep_num61 = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 5
  %17 = ptrtoint ptr %ep_num61 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ep_num61, align 2
  %conv62 = zext i8 %18 to i32
  %call63 = tail call i32 @bdc_ep_clear_stall(ptr noundef %1, i32 noundef %conv62) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.else72, label %do.end68

do.end68:                                         ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #11
  %dev69 = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %dev69 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev69, align 4
  %name70 = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.72, ptr noundef %name70) #12
  br label %do.body75

if.else72:                                        ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #11
  %flags73 = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 8
  %21 = ptrtoint ptr %flags73 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags73, align 4
  %and = and i32 %22, -3
  store i32 %and, ptr %flags73, align 4
  br label %do.body75

do.body75:                                        ; preds = %if.else72, %do.end68
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep_set_halt.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep_set_halt, %if.end94)) #9
          to label %if.then89 [label %if.end94], !srcloc !486

if.then89:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #11
  %dev90 = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev90, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep_set_halt.__UNIQUE_ID_ddebug328, ptr noundef %24, ptr noundef nonnull @.str.74) #9
  br label %if.end94

if.end94:                                         ; preds = %if.then89, %do.body75, %if.else, %do.end36
  %ret.0 = phi i32 [ %call31, %do.end36 ], [ 0, %if.else ], [ %call63, %if.then89 ], [ %call63, %do.body75 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @handle_control_request(ptr noundef %bdc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.usb_gadget, ptr %bdc, i32 0, i32 9
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state1, align 8
  %setup_pkt2 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_control_request.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_control_request, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !486

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_control_request.__UNIQUE_ID_ddebug359, ptr noundef %3, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.75) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %setup_pkt2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %setup_pkt2, align 1
  %6 = and i8 %5, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp = icmp eq i8 %6, 0
  br i1 %cmp, label %if.then7, label %do.end.if.then156_crit_edge

do.end.if.then156_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then156

if.then7:                                         ; preds = %do.end
  %bRequest = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 12, i32 1
  %7 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bRequest, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.192)
  switch i8 %8, label %if.then7.if.then156_crit_edge [
    i8 5, label %do.body9
    i8 9, label %do.body31
    i8 3, label %do.body65
    i8 1, label %do.body86
    i8 0, label %do.body107
    i8 48, label %do.body128
    i8 49, label %do.end151
  ]

if.then7.if.then156_crit_edge:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then156

do.body9:                                         ; preds = %if.then7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_control_request.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_control_request, %do.end27)) #9
          to label %if.then23 [label %do.end27], !srcloc !486

if.then23:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  %dev24 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %10 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev24, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_control_request.__UNIQUE_ID_ddebug360, ptr noundef %11, ptr noundef nonnull @.str.76) #9
  br label %do.end27

do.end27:                                         ; preds = %if.then23, %do.body9
  %call28 = tail call fastcc i32 @ep0_set_address(ptr noundef %bdc, ptr noundef %setup_pkt2)
  %devstatus = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 20
  %12 = ptrtoint ptr %devstatus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %devstatus, align 4
  %and29 = and i32 %13, 1
  store i32 %and29, ptr %devstatus, align 4
  br label %if.end160

do.body31:                                        ; preds = %if.then7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_control_request.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_control_request, %do.end49)) #9
          to label %if.then45 [label %do.end49], !srcloc !486

if.then45:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #11
  %dev46 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %14 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev46, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_control_request.__UNIQUE_ID_ddebug361, ptr noundef %15, ptr noundef nonnull @.str.77) #9
  br label %do.end49

do.end49:                                         ; preds = %if.then45, %do.body31
  %16 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.193)
  switch i32 %1, label %do.end49.if.then156_crit_edge [
    i32 6, label %do.end49.if.then156.sink.split_crit_edge
    i32 7, label %if.then56
  ]

do.end49.if.then156.sink.split_crit_edge:         ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then156.sink.split

do.end49.if.then156_crit_edge:                    ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then156

if.then56:                                        ; preds = %do.end49
  %wValue = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 12, i32 2
  %17 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %wValue, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool58.not = icmp eq i16 %18, 0
  br i1 %tobool58.not, label %if.then56.if.then156.sink.split_crit_edge, label %if.then56.if.then156_crit_edge

if.then56.if.then156_crit_edge:                   ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then156

if.then56.if.then156.sink.split_crit_edge:        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then156.sink.split

do.body65:                                        ; preds = %if.then7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_control_request.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_control_request, %do.end83)) #9
          to label %if.then79 [label %do.end83], !srcloc !486

if.then79:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #11
  %dev80 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %19 = ptrtoint ptr %dev80 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev80, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_control_request.__UNIQUE_ID_ddebug362, ptr noundef %20, ptr noundef nonnull @.str.78) #9
  br label %do.end83

do.end83:                                         ; preds = %if.then79, %do.body65
  %call84 = tail call fastcc i32 @ep0_handle_feature(ptr noundef %bdc, ptr noundef %setup_pkt2, i1 noundef zeroext true)
  br label %if.end160

do.body86:                                        ; preds = %if.then7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_control_request.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_control_request, %do.end104)) #9
          to label %if.then100 [label %do.end104], !srcloc !486

if.then100:                                       ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #11
  %dev101 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %21 = ptrtoint ptr %dev101 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev101, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_control_request.__UNIQUE_ID_ddebug363, ptr noundef %22, ptr noundef nonnull @.str.79) #9
  br label %do.end104

do.end104:                                        ; preds = %if.then100, %do.body86
  %call105 = tail call fastcc i32 @ep0_handle_feature(ptr noundef %bdc, ptr noundef %setup_pkt2, i1 noundef zeroext false)
  br label %if.end160

do.body107:                                       ; preds = %if.then7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_control_request.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_control_request, %do.end125)) #9
          to label %if.then121 [label %do.end125], !srcloc !486

if.then121:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #11
  %dev122 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %23 = ptrtoint ptr %dev122 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev122, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_control_request.__UNIQUE_ID_ddebug364, ptr noundef %24, ptr noundef nonnull @.str.80) #9
  br label %do.end125

do.end125:                                        ; preds = %if.then121, %do.body107
  %call126 = tail call fastcc i32 @ep0_handle_status(ptr noundef %bdc, ptr noundef %setup_pkt2)
  br label %if.end160

do.body128:                                       ; preds = %if.then7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_control_request.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_control_request, %do.end146)) #9
          to label %if.then142 [label %do.end146], !srcloc !486

if.then142:                                       ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #11
  %dev143 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %25 = ptrtoint ptr %dev143 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev143, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_control_request.__UNIQUE_ID_ddebug365, ptr noundef %26, ptr noundef nonnull @.str.81) #9
  br label %do.end146

do.end146:                                        ; preds = %if.then142, %do.body128
  %call147 = tail call fastcc i32 @ep0_set_sel(ptr noundef %bdc, ptr noundef %setup_pkt2)
  br label %if.end160

do.end151:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %dev152 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %27 = ptrtoint ptr %dev152 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev152, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.82) #12
  br label %if.end160

if.then156.sink.split:                            ; preds = %if.then56.if.then156.sink.split_crit_edge, %do.end49.if.then156.sink.split_crit_edge
  %.sink = phi i32 [ 7, %do.end49.if.then156.sink.split_crit_edge ], [ 6, %if.then56.if.then156.sink.split_crit_edge ]
  tail call void @usb_gadget_set_state(ptr noundef %bdc, i32 noundef %.sink) #9
  br label %if.then156

if.then156:                                       ; preds = %if.then156.sink.split, %if.then56.if.then156_crit_edge, %do.end49.if.then156_crit_edge, %if.then7.if.then156_crit_edge, %do.end.if.then156_crit_edge
  %lock = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 3
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  %gadget_driver = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 1
  %29 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %gadget_driver, align 8
  %setup = getelementptr inbounds %struct.usb_gadget_driver, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %setup, align 4
  %call158 = tail call i32 %32(ptr noundef %bdc, ptr noundef %setup_pkt2) #9
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  br label %if.end160

if.end160:                                        ; preds = %if.then156, %do.end151, %do.end146, %do.end125, %do.end104, %do.end83, %do.end27
  %ret.1 = phi i32 [ %call158, %if.then156 ], [ %call28, %do.end27 ], [ %call84, %do.end83 ], [ %call105, %do.end104 ], [ %call126, %do.end125 ], [ %call147, %do.end146 ], [ 0, %do.end151 ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bdc_xsf_ep0_status_start(ptr noundef %bdc, ptr nocapture readnone %sreport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_xsf_ep0_status_start.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_xsf_ep0_status_start, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !486

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %ep0_state = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 15
  %2 = ptrtoint ptr %ep0_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ep0_state, align 4
  %arrayidx = getelementptr [6 x ptr], ptr @ep0_state_string, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_xsf_ep0_status_start.__UNIQUE_ID_ddebug368, ptr noundef %1, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, ptr noundef %5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %bdc_ep_array = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 7
  %6 = ptrtoint ptr %bdc_ep_array to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bdc_ep_array, align 8
  %arrayidx4 = getelementptr ptr, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4, align 4
  %zlp_needed = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 17
  %10 = ptrtoint ptr %zlp_needed to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %zlp_needed, align 1, !range !491
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool5.not = icmp eq i8 %11, 0
  br i1 %tobool5.not, label %do.end.if.end8_crit_edge, label %if.then6

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %zlp_needed to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %zlp_needed, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %do.end.if.end8_crit_edge
  %flags = getelementptr inbounds %struct.bdc_ep, ptr %9, i32 0, i32 8
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end8.if.end15_crit_edge, label %if.then10

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then10:                                        ; preds = %if.end8
  %call11 = tail call fastcc i32 @ep_set_halt(ptr noundef %9, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.if.end15_crit_edge, label %if.then10.err_crit_edge

if.then10.err_crit_edge:                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end15:                                         ; preds = %if.then10.if.end15_crit_edge, %if.end8.if.end15_crit_edge
  %ep0_state16 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 15
  %15 = ptrtoint ptr %ep0_state16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ep0_state16, align 4
  %17 = and i32 %16, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %switch = icmp eq i32 %17, 2
  br i1 %switch, label %if.end15.if.end26_crit_edge, label %do.end22

if.end15.if.end26_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

do.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %dev23 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %18 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev23, align 4
  %arrayidx25 = getelementptr [6 x ptr], ptr @ep0_state_string, i32 0, i32 %16
  %20 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.23, ptr noundef %21) #12
  %22 = ptrtoint ptr %ep0_state16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr = load i32, ptr %ep0_state16, align 4
  br label %if.end26

if.end26:                                         ; preds = %do.end22, %if.end15.if.end26_crit_edge
  %23 = phi i32 [ %16, %if.end15.if.end26_crit_edge ], [ %.pr, %do.end22 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp28 = icmp eq i32 %23, 2
  br i1 %cmp28, label %if.then29, label %if.end50

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %ep0_state16 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 5, ptr %ep0_state16, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_xsf_ep0_status_start.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_xsf_ep0_status_start, %cleanup)) #9
          to label %if.then45 [label %cleanup], !srcloc !486

if.then45:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  %dev46 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %25 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev46, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_xsf_ep0_status_start.__UNIQUE_ID_ddebug369, ptr noundef %26, ptr noundef nonnull @.str.24) #9
  br label %cleanup

if.end50:                                         ; preds = %if.end26
  %wLength = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 12, i32 4
  %27 = ptrtoint ptr %wLength to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %wLength, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool52.not = icmp eq i16 %28, 0
  br i1 %tobool52.not, label %if.then53, label %if.end50.if.then60_crit_edge

if.end50.if.then60_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then60

if.then53:                                        ; preds = %if.end50
  %call54 = tail call fastcc i32 @handle_control_request(ptr noundef %bdc)
  %29 = zext i32 %call54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.194)
  switch i32 %call54, label %if.then53.err_crit_edge [
    i32 32767, label %if.then56
    i32 0, label %if.then53.if.then60_crit_edge
  ]

if.then53.if.then60_crit_edge:                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then60

if.then53.err_crit_edge:                          ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.then56:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  %delayed_status = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 16
  %30 = ptrtoint ptr %delayed_status to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %delayed_status, align 8
  br label %cleanup

if.then60:                                        ; preds = %if.then53.if.then60_crit_edge, %if.end50.if.then60_crit_edge
  %status_req1.i = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 14
  %31 = ptrtoint ptr %bdc_ep_array to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bdc_ep_array, align 8
  %arrayidx.i = getelementptr ptr, ptr %32, i32 1
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i, align 4
  %ep2.i = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 14, i32 2
  %35 = ptrtoint ptr %ep2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %ep2.i, align 4
  %length.i = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 14, i32 0, i32 1
  %36 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %length.i, align 4
  %status.i = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 14, i32 0, i32 11
  %37 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -115, ptr %status.i, align 4
  %actual.i = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 14, i32 0, i32 12
  %38 = ptrtoint ptr %actual.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %actual.i, align 4
  %complete.i = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 14, i32 0, i32 7
  %39 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %complete.i, align 4
  %call.i = tail call fastcc i32 @bdc_queue_xfr(ptr noundef %bdc, ptr noundef %status_req1.i) #9
  %40 = ptrtoint ptr %ep0_state16 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 4, ptr %ep0_state16, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_xsf_ep0_status_start.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_xsf_ep0_status_start, %cleanup)) #9
          to label %if.then77 [label %cleanup], !srcloc !486

if.then77:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  %dev78 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %41 = ptrtoint ptr %dev78 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev78, align 4
  %43 = ptrtoint ptr %ep0_state16 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ep0_state16, align 4
  %arrayidx80 = getelementptr [6 x ptr], ptr @ep0_state_string, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx80, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_xsf_ep0_status_start.__UNIQUE_ID_ddebug370, ptr noundef %42, ptr noundef nonnull @.str.20, ptr noundef %46) #9
  br label %cleanup

err:                                              ; preds = %if.then53.err_crit_edge, %if.then10.err_crit_edge
  %47 = ptrtoint ptr %bdc_ep_array to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bdc_ep_array, align 8
  %arrayidx.i116 = getelementptr ptr, ptr %48, i32 1
  %49 = ptrtoint ptr %arrayidx.i116 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i116, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_stall.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_xsf_ep0_status_start, %do.end.i)) #9
          to label %if.then.i [label %do.end.i], !srcloc !486

if.then.i:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %51 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_stall.__UNIQUE_ID_ddebug337, ptr noundef %52, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.132) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %err
  %delayed_status.i = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 16
  %53 = ptrtoint ptr %delayed_status.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %delayed_status.i, align 8
  %call4.i = tail call fastcc i32 @ep_set_halt(ptr noundef %50, i32 noundef 1) #9
  %queue.i = getelementptr inbounds %struct.bdc_ep, ptr %50, i32 0, i32 1
  %54 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not17.i = icmp eq ptr %55, %queue.i
  br i1 %cmp.i.not17.i, label %do.end.i.cleanup_crit_edge, label %do.end.i.while.body.i_crit_edge

do.end.i.while.body.i_crit_edge:                  ; preds = %do.end.i
  br label %while.body.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end.i.while.body.i_crit_edge
  %56 = phi ptr [ %58, %while.body.i.while.body.i_crit_edge ], [ %55, %do.end.i.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %56, i32 -56
  tail call fastcc void @bdc_req_complete(ptr noundef %50, ptr noundef %add.ptr.i, i32 noundef -108) #9
  %57 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %58, %queue.i
  br i1 %cmp.i.not.i, label %while.body.i.cleanup_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %while.body.i.cleanup_crit_edge, %do.end.i.cleanup_crit_edge, %if.then77, %if.then60, %if.then56, %if.then45, %if.then29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bdc_sr_xsf(ptr noundef %bdc, ptr noundef %sreport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr %sreport, i32 0, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %shr = lshr i32 %2, 4
  %conv = and i32 %shr, 31
  %bdc_ep_array = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 7
  %3 = ptrtoint ptr %bdc_ep_array to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bdc_ep_array, align 8
  %arrayidx1 = getelementptr ptr, ptr %4, i32 %conv
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx1, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.bdc_ep, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and2 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.25) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %devstatus = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 20
  %11 = ptrtoint ptr %devstatus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %devstatus, align 4
  %and4 = and i32 %12, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end19_crit_edge, label %if.then6

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %and8 = and i32 %12, -262145
  %13 = ptrtoint ptr %devstatus to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and8, ptr %devstatus, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_sr_xsf.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_sr_xsf, %if.end19)) #9
          to label %if.then14 [label %if.end19], !srcloc !486

if.then14:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %dev15 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %14 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev15, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_sr_xsf.__UNIQUE_ID_ddebug373, ptr noundef %15, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26) #9
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.then6, %if.end.if.end19_crit_edge
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %18 = lshr i32 %17, 4
  %shr22 = and i32 %18, 15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_sr_xsf.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_sr_xsf, %do.end44)) #9
          to label %land.lhs.true [label %do.end44], !srcloc !486

land.lhs.true:                                    ; preds = %if.end19
  %call38 = tail call i32 @___ratelimit(ptr noundef nonnull @bdc_sr_xsf._rs, ptr noundef nonnull @.str.26) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %land.lhs.true.do.end44_crit_edge, label %if.then40

land.lhs.true.do.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44

if.then40:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %dev41 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %19 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev41, align 4
  %name = getelementptr inbounds %struct.bdc_ep, ptr %6, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_sr_xsf.descriptor, ptr noundef %20, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.26, i32 noundef %shr22, ptr noundef %name) #9
  br label %do.end44

do.end44:                                         ; preds = %if.then40, %land.lhs.true.do.end44_crit_edge, %if.end19
  %21 = zext i32 %shr22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.195)
  switch i32 %shr22, label %do.end98 [
    i32 1, label %do.end44.sw.bb_crit_edge
    i32 3, label %do.end44.sw.bb_crit_edge140
    i32 6, label %do.end44.sw.bb49_crit_edge
    i32 7, label %do.end44.sw.bb49_crit_edge141
    i32 8, label %do.end44.sw.bb49_crit_edge142
    i32 4, label %sw.bb60
  ]

do.end44.sw.bb49_crit_edge142:                    ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb49

do.end44.sw.bb49_crit_edge141:                    ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb49

do.end44.sw.bb49_crit_edge:                       ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb49

do.end44.sw.bb_crit_edge140:                      ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

do.end44.sw.bb_crit_edge:                         ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %do.end44.sw.bb_crit_edge, %do.end44.sw.bb_crit_edge140
  tail call fastcc void @handle_xsr_succ_status(ptr noundef %bdc, ptr noundef nonnull %6, ptr noundef %sreport)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv)
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then47, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then47:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ep0_xsf_complete(ptr noundef %bdc, ptr noundef %sreport)
  br label %cleanup

sw.bb49:                                          ; preds = %do.end44.sw.bb49_crit_edge, %do.end44.sw.bb49_crit_edge141, %do.end44.sw.bb49_crit_edge142
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv)
  %cmp51.not = icmp eq i32 %conv, 1
  br i1 %cmp51.not, label %if.end58, label %do.end56

do.end56:                                         ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #11
  %dev57 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %22 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev57, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.31) #12
  br label %cleanup

if.end58:                                         ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add nsw i32 %shr22, -6
  %arrayidx59 = getelementptr %struct.bdc, ptr %bdc, i32 0, i32 27, i32 %sub
  %24 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx59, align 4
  tail call void %25(ptr noundef %bdc, ptr noundef %sreport) #9
  br label %cleanup

sw.bb60:                                          ; preds = %do.end44
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv)
  %cmp62 = icmp eq i32 %conv, 1
  br i1 %cmp62, label %do.body65, label %sw.bb60.do.end94_crit_edge

sw.bb60.do.end94_crit_edge:                       ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end94

do.body65:                                        ; preds = %sw.bb60
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_sr_xsf.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_sr_xsf, %do.end85)) #9
          to label %if.then79 [label %do.end85], !srcloc !486

if.then79:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #11
  %dev80 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %26 = ptrtoint ptr %dev80 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev80, align 4
  %zlp_needed = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 17
  %28 = ptrtoint ptr %zlp_needed to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %zlp_needed, align 1, !range !491
  %30 = zext i8 %29 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_sr_xsf.__UNIQUE_ID_ddebug374, ptr noundef %27, ptr noundef nonnull @.str.33, i32 noundef %30) #9
  br label %do.end85

do.end85:                                         ; preds = %if.then79, %do.body65
  %zlp_needed86 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 17
  %31 = ptrtoint ptr %zlp_needed86 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %zlp_needed86, align 1, !range !491
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool87.not = icmp eq i8 %32, 0
  br i1 %tobool87.not, label %do.end85.do.end94_crit_edge, label %if.then88

do.end85.do.end94_crit_edge:                      ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end94

if.then88:                                        ; preds = %do.end85
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_queue_zlp.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_sr_xsf, %do.end.i)) #9
          to label %if.then.i [label %do.end.i], !srcloc !486

if.then.i:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_queue_zlp.__UNIQUE_ID_ddebug358, ptr noundef %34, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.153) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then88
  %35 = ptrtoint ptr %bdc_ep_array to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bdc_ep_array, align 8
  %arrayidx.i = getelementptr ptr, ptr %36, i32 1
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i, align 4
  %ep0_req.i = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 13
  %ep.i = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 13, i32 2
  %39 = ptrtoint ptr %ep.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %ep.i, align 4
  %length.i = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 13, i32 0, i32 1
  %40 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %length.i, align 4
  %complete.i = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 13, i32 0, i32 7
  %41 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %complete.i, align 4
  %ep0_state.i = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 15
  %42 = ptrtoint ptr %ep0_state.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %ep0_state.i, align 4
  %call8.i = tail call fastcc i32 @bdc_queue_xfr(ptr noundef %bdc, ptr noundef %ep0_req.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end15.i, label %do.end13.i

do.end13.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev14.i = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %43 = ptrtoint ptr %dev14.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev14.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.154, i32 noundef %call8.i) #12
  br label %cleanup

if.end15.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %ep0_state.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %ep0_state.i, align 4
  br label %cleanup

do.end94:                                         ; preds = %do.end85.do.end94_crit_edge, %sw.bb60.do.end94_crit_edge
  %dev95 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %46 = ptrtoint ptr %dev95 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev95, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %47, ptr noundef nonnull @.str.35) #12
  br label %cleanup

do.end98:                                         ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #11
  %dev99 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %48 = ptrtoint ptr %dev99 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev99, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %49, ptr noundef nonnull @.str.38, i32 noundef %shr22) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end98, %do.end94, %if.end15.i, %do.end13.i, %if.end58, %do.end56, %if.then47, %sw.bb.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_xsr_succ_status(ptr noundef %bdc, ptr noundef %ep, ptr nocapture noundef readonly %sreport) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_xsr_succ_status.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_xsr_succ_status, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !486

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_xsr_succ_status.__UNIQUE_ID_ddebug332, ptr noundef %1, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.133, ptr noundef %ep) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @bdc_dbg_srr(ptr noundef %bdc, i32 noundef 0) #9
  %ignore_next_sr = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 11
  %2 = ptrtoint ptr %ignore_next_sr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ignore_next_sr, align 4, !range !491
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not = icmp eq i8 %3, 0
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %ignore_next_sr to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %ignore_next_sr, align 4
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %queue = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 1
  %5 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %6, %queue
  br i1 %cmp.i.not, label %do.end20, label %if.end22, !prof !492

do.end20:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %dev21 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %7 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev21, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.135) #12
  br label %cleanup

if.end22:                                         ; preds = %if.end8
  %bd_xfr25 = getelementptr i8, ptr %6, i32 12
  %arrayidx = getelementptr [4 x i32], ptr %sreport, i32 0, i32 3
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %11 = and i32 %10, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %11)
  %cmp = icmp eq i32 %11, 48
  br i1 %cmp, label %land.lhs.true, label %if.end22.if.else91_crit_edge

if.end22.if.else91_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else91

land.lhs.true:                                    ; preds = %if.end22
  %num_bds = getelementptr i8, ptr %6, i32 24
  %12 = ptrtoint ptr %num_bds to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_bds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp26 = icmp sgt i32 %13, 1
  br i1 %cmp26, label %if.then27, label %land.lhs.true.if.else91_crit_edge

land.lhs.true.if.else91_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else91

if.then27:                                        ; preds = %land.lhs.true
  %14 = ptrtoint ptr %sreport to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sreport, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  %call34 = tail call fastcc i32 @bd_add_to_bdi(ptr noundef %ep, i32 noundef %16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %do.end46, label %if.then27.if.end48_crit_edge, !prof !492

if.then27.if.end48_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

do.end46:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  %dev47 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %17 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev47, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.137) #12
  br label %if.end48

if.end48:                                         ; preds = %do.end46, %if.then27.if.end48_crit_edge
  %start_bdi49 = getelementptr i8, ptr %6, i32 16
  %19 = ptrtoint ptr %start_bdi49 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %start_bdi49, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call34, i32 %20)
  %cmp50.not = icmp slt i32 %call34, %20
  br i1 %cmp50.not, label %if.else65, label %if.then52

if.then52:                                        ; preds = %if.end48
  %sub = sub i32 %call34, %20
  %num_bds_table = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10, i32 5
  %21 = ptrtoint ptr %num_bds_table to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_bds_table, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %22)
  %cmp53.not = icmp sgt i32 %sub, %22
  br i1 %cmp53.not, label %if.else, label %if.then55

if.then55:                                        ; preds = %if.then52
  %div.i = sdiv i32 %20, %22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdi_to_tbi.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_xsr_succ_status, %bdi_to_tbi.exit)) #9
          to label %if.then.i [label %bdi_to_tbi.exit], !srcloc !486

if.then.i:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  %bdc.i = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 2
  %23 = ptrtoint ptr %bdc.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bdc.i, align 4
  %dev.i = getelementptr inbounds %struct.bdc, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  %27 = ptrtoint ptr %num_bds_table to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_bds_table, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdi_to_tbi.__UNIQUE_ID_ddebug307, ptr noundef %26, ptr noundef nonnull @.str.120, i32 noundef %20, i32 noundef %28, i32 noundef %div.i) #9
  br label %bdi_to_tbi.exit

bdi_to_tbi.exit:                                  ; preds = %if.then.i, %if.then55
  %29 = ptrtoint ptr %num_bds_table to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_bds_table, align 4
  %div.i246 = sdiv i32 %call34, %30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdi_to_tbi.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_xsr_succ_status, %bdi_to_tbi.exit250)) #9
          to label %if.then.i249 [label %bdi_to_tbi.exit250], !srcloc !486

if.then.i249:                                     ; preds = %bdi_to_tbi.exit
  call void @__sanitizer_cov_trace_pc() #11
  %bdc.i247 = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 2
  %31 = ptrtoint ptr %bdc.i247 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bdc.i247, align 4
  %dev.i248 = getelementptr inbounds %struct.bdc, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %dev.i248 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i248, align 4
  %35 = ptrtoint ptr %num_bds_table to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_bds_table, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdi_to_tbi.__UNIQUE_ID_ddebug307, ptr noundef %34, ptr noundef nonnull @.str.120, i32 noundef %call34, i32 noundef %36, i32 noundef %div.i246) #9
  br label %bdi_to_tbi.exit250

bdi_to_tbi.exit250:                               ; preds = %if.then.i249, %bdi_to_tbi.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %div.i246)
  %cmp58 = icmp ne i32 %div.i, %div.i246
  %dec = sext i1 %cmp58 to i32
  %spec.select = add i32 %sub, %dec
  br label %if.end75

if.else:                                          ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  %div = sdiv i32 %sub, %22
  %sub63 = sub i32 %sub, %div
  br label %if.end75

if.else65:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %max_bdi = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10, i32 2
  %37 = ptrtoint ptr %max_bdi to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_bdi, align 4
  %sub66 = sub i32 %38, %20
  %num_bds_table67 = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10, i32 5
  %39 = ptrtoint ptr %num_bds_table67 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_bds_table67, align 4
  %div68 = sdiv i32 %sub66, %40
  %div70 = sdiv i32 %call34, %40
  %add.neg = add i32 %sub66, %call34
  %41 = add i32 %div68, %div70
  %sub74 = sub i32 %add.neg, %41
  br label %if.end75

if.end75:                                         ; preds = %if.else65, %if.else, %bdi_to_tbi.exit250
  %max_len_bds.0 = phi i32 [ %sub63, %if.else ], [ %sub74, %if.else65 ], [ %spec.select, %bdi_to_tbi.exit250 ]
  %next_hwd_bdi = getelementptr i8, ptr %6, i32 20
  %42 = ptrtoint ptr %next_hwd_bdi to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %next_hwd_bdi, align 4
  %sub.i = add i32 %43, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i251 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i251, label %if.then.i252, label %if.else.i

if.then.i252:                                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  %max_bdi.i = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10, i32 2
  %44 = ptrtoint ptr %max_bdi.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %max_bdi.i, align 4
  %sub1.i = add i32 %45, -1
  br label %find_end_bdi.exit

if.else.i:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  %num_bds_table.i253 = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10, i32 5
  %46 = ptrtoint ptr %num_bds_table.i253 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_bds_table.i253, align 4
  %sub3.i = add i32 %47, -1
  %rem.i = srem i32 %sub.i, %sub3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp4.i = icmp eq i32 %rem.i, 0
  %dec.i = add i32 %43, -2
  %spec.select.i = select i1 %cmp4.i, i32 %dec.i, i32 %sub.i
  br label %find_end_bdi.exit

find_end_bdi.exit:                                ; preds = %if.else.i, %if.then.i252
  %end_bdi.0.i = phi i32 [ %sub1.i, %if.then.i252 ], [ %spec.select.i, %if.else.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %end_bdi.0.i, i32 %call34)
  %cmp77 = icmp eq i32 %end_bdi.0.i, %call34
  br i1 %cmp77, label %find_end_bdi.exit.if.end81_crit_edge, label %if.then79

find_end_bdi.exit.if.end81_crit_edge:             ; preds = %find_end_bdi.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.then79:                                        ; preds = %find_end_bdi.exit
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %ignore_next_sr to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %ignore_next_sr, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %find_end_bdi.exit.if.end81_crit_edge
  %mul = shl i32 %max_len_bds.0, 16
  %num_bds_table.i.i = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10, i32 5
  %49 = ptrtoint ptr %num_bds_table.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_bds_table.i.i, align 4
  %div.i.i = sdiv i32 %call34, %50
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdi_to_tbi.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_xsr_succ_status, %bdi_to_tbi.exit.i)) #9
          to label %if.then.i.i [label %bdi_to_tbi.exit.i], !srcloc !486

if.then.i.i:                                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  %bdc.i.i = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 2
  %51 = ptrtoint ptr %bdc.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bdc.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.bdc, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i.i, align 4
  %55 = ptrtoint ptr %num_bds_table.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num_bds_table.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdi_to_tbi.__UNIQUE_ID_ddebug307, ptr noundef %54, ptr noundef nonnull @.str.120, i32 noundef %call34, i32 noundef %56, i32 noundef %div.i.i) #9
  br label %bdi_to_tbi.exit.i

bdi_to_tbi.exit.i:                                ; preds = %if.then.i.i, %if.end81
  %57 = ptrtoint ptr %num_bds_table.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_bds_table.i.i, align 4
  %mul.i = mul i32 %58, %div.i.i
  %sub.i254 = sub i32 %call34, %mul.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdi_to_bd.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_xsr_succ_status, %bdi_to_bd.exit)) #9
          to label %if.then.i257 [label %bdi_to_bd.exit], !srcloc !486

if.then.i257:                                     ; preds = %bdi_to_tbi.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %bdc.i255 = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 2
  %59 = ptrtoint ptr %bdc.i255 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bdc.i255, align 4
  %dev.i256 = getelementptr inbounds %struct.bdc, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %dev.i256 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i256, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdi_to_bd.__UNIQUE_ID_ddebug311, ptr noundef %62, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.125, i32 noundef %call34, i32 noundef %sub.i254) #9
  br label %bdi_to_bd.exit

bdi_to_bd.exit:                                   ; preds = %if.then.i257, %bdi_to_tbi.exit.i
  %bd_list.i = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10
  %63 = ptrtoint ptr %bd_list.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bd_list.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %64, i32 %div.i.i
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %arrayidx84 = getelementptr %struct.bdc_bd, ptr %68, i32 %sub.i254, i32 0, i32 2
  %69 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx84, align 4
  %71 = and i32 %70, -57600
  %72 = tail call i32 @llvm.bswap.i32(i32 %71)
  %arrayidx87 = getelementptr [4 x i32], ptr %sreport, i32 0, i32 2
  %73 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx87, align 4
  %75 = and i32 %74, -256
  %76 = tail call i32 @llvm.bswap.i32(i32 %75)
  %sub89 = add i32 %72, %mul
  %add90 = sub i32 %sub89, %76
  %actual = getelementptr i8, ptr %6, i32 -4
  %77 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %add90, ptr %actual, align 4
  br label %if.end123

if.else91:                                        ; preds = %land.lhs.true.if.else91_crit_edge, %if.end22.if.else91_crit_edge
  %length = getelementptr i8, ptr %6, i32 -52
  %78 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %length, align 4
  %arrayidx94 = getelementptr [4 x i32], ptr %sreport, i32 0, i32 2
  %80 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx94, align 4
  %82 = and i32 %81, -256
  %83 = tail call i32 @llvm.bswap.i32(i32 %82)
  %sub96 = sub i32 %79, %83
  %actual98 = getelementptr i8, ptr %6, i32 -4
  %84 = ptrtoint ptr %actual98 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %sub96, ptr %actual98, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_xsr_succ_status.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_xsr_succ_status, %if.end123)) #9
          to label %if.then113 [label %if.end123], !srcloc !486

if.then113:                                       ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #11
  %dev114 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %85 = ptrtoint ptr %dev114 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev114, align 4
  %87 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %length, align 4
  %89 = ptrtoint ptr %actual98 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %actual98, align 4
  %next_hwd_bdi119 = getelementptr i8, ptr %6, i32 20
  %91 = ptrtoint ptr %next_hwd_bdi119 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %next_hwd_bdi119, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_xsr_succ_status.__UNIQUE_ID_ddebug333, ptr noundef %86, ptr noundef nonnull @.str.139, i32 noundef %88, i32 noundef %90, i32 noundef %92) #9
  br label %if.end123

if.end123:                                        ; preds = %if.then113, %if.else91, %bdi_to_bd.exit
  %next_hwd_bdi124 = getelementptr i8, ptr %6, i32 20
  %93 = ptrtoint ptr %next_hwd_bdi124 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %next_hwd_bdi124, align 4
  %hwd_bdi = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10, i32 4
  %95 = ptrtoint ptr %hwd_bdi to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %hwd_bdi, align 4
  %actual127 = getelementptr i8, ptr %6, i32 -4
  %96 = ptrtoint ptr %actual127 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %actual127, align 4
  %length129 = getelementptr i8, ptr %6, i32 -52
  %98 = ptrtoint ptr %length129 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %length129, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %99)
  %cmp130 = icmp ult i32 %97, %99
  br i1 %cmp130, label %do.body133, label %if.end123.if.end157_crit_edge

if.end123.if.end157_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end157

do.body133:                                       ; preds = %if.end123
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_xsr_succ_status.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_xsr_succ_status, %do.end152)) #9
          to label %if.then147 [label %do.end152], !srcloc !486

if.then147:                                       ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #11
  %dev148 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %100 = ptrtoint ptr %dev148 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev148, align 4
  %ep_num = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 5
  %102 = ptrtoint ptr %ep_num to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %ep_num, align 2
  %conv149 = zext i8 %103 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_xsr_succ_status.__UNIQUE_ID_ddebug334, ptr noundef %101, ptr noundef nonnull @.str.140, i32 noundef %conv149) #9
  br label %do.end152

do.end152:                                        ; preds = %if.then147, %do.body133
  %short_not_ok = getelementptr i8, ptr %6, i32 -32
  %104 = ptrtoint ptr %short_not_ok to i32
  call void @__asan_load4_noabort(i32 %104)
  %bf.load = load i32, ptr %short_not_ok, align 4
  %105 = and i32 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool154.not = icmp eq i32 %105, 0
  %spec.select238 = select i1 %tobool154.not, i32 0, i32 -121
  br label %if.end157

if.end157:                                        ; preds = %do.end152, %if.end123.if.end157_crit_edge
  %status.0 = phi i32 [ 0, %if.end123.if.end157_crit_edge ], [ %spec.select238, %do.end152 ]
  %106 = ptrtoint ptr %bd_xfr25 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %bd_xfr25, align 4
  tail call fastcc void @bdc_req_complete(ptr noundef %ep, ptr noundef %107, i32 noundef %status.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end157, %do.end20, %if.then6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ep0_xsf_complete(ptr noundef %bdc, ptr nocapture noundef readnone %sreport) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_xsf_complete.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_xsf_complete, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !486

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_xsf_complete.__UNIQUE_ID_ddebug371, ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.145) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ep0_state = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 15
  %2 = ptrtoint ptr %ep0_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ep0_state, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.196)
  switch i32 %3, label %do.end41 [
    i32 2, label %sw.bb
    i32 4, label %sw.bb5
    i32 5, label %sw.bb38
  ]

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %ep0_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %ep0_state, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.end
  %6 = ptrtoint ptr %ep0_state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %ep0_state, align 4
  %test_mode = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 25
  %7 = ptrtoint ptr %test_mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %test_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not = icmp eq i8 %8, 0
  br i1 %tobool7.not, label %sw.bb5.sw.epilog_crit_edge, label %if.then8

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then8:                                         ; preds = %sw.bb5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_xsf_complete.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_xsf_complete, %do.end27)) #9
          to label %if.then23 [label %do.end27], !srcloc !486

if.then23:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %dev24 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %9 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev24, align 4
  %11 = ptrtoint ptr %test_mode to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %test_mode, align 8
  %conv = zext i8 %12 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_xsf_complete.__UNIQUE_ID_ddebug372, ptr noundef %10, ptr noundef nonnull @.str.146, i32 noundef %conv) #9
  br label %do.end27

do.end27:                                         ; preds = %if.then23, %if.then8
  %call28 = tail call fastcc i32 @bdc_set_test_mode(ptr noundef %bdc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp = icmp slt i32 %call28, 0
  br i1 %cmp, label %do.end33, label %if.end35

do.end33:                                         ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #11
  %dev34 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %13 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev34, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.147) #12
  br label %sw.epilog

if.end35:                                         ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %test_mode to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %test_mode, align 8
  br label %sw.epilog

sw.bb38:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @bdc_xsf_ep0_status_start(ptr noundef %bdc, ptr undef)
  br label %sw.epilog

do.end41:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev42 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %16 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev42, align 4
  %arrayidx = getelementptr [6 x ptr], ptr @ep0_state_string, i32 0, i32 %3
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.149, ptr noundef %19) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end41, %sw.bb38, %if.end35, %do.end33, %sw.bb5.sw.epilog_crit_edge, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bdc_init_ep(ptr noundef %bdc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_init_ep.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_init_ep, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !486

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_init_ep.__UNIQUE_ID_ddebug387, ptr noundef %1, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ep_list = getelementptr inbounds %struct.usb_gadget, ptr %bdc, i32 0, i32 4
  %2 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %ep_list, ptr %ep_list, align 4
  %prev.i = getelementptr inbounds %struct.usb_gadget, ptr %bdc, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ep_list, ptr %prev.i, align 4
  %call4 = tail call fastcc i32 @init_ep(ptr noundef %bdc, i32 noundef 1, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %for.cond.preheader, label %do.end9

for.cond.preheader:                               ; preds = %do.end
  %num_eps = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 6
  %4 = ptrtoint ptr %num_eps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_eps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp.not61 = icmp ult i32 %5, 4
  br i1 %cmp.not61, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev10 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %6 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.42, i32 noundef %call4) #12
  br label %cleanup

for.cond:                                         ; preds = %if.end22
  %inc = add i8 %epnum.062, 1
  %conv = zext i8 %inc to i32
  %8 = ptrtoint ptr %num_eps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_eps, align 4
  %div55 = lshr i32 %9, 1
  %cmp.not = icmp ult i32 %div55, %conv
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %conv63 = phi i32 [ %conv, %for.cond.for.body_crit_edge ], [ 2, %for.cond.preheader.for.body_crit_edge ]
  %epnum.062 = phi i8 [ %inc, %for.cond.for.body_crit_edge ], [ 2, %for.cond.preheader.for.body_crit_edge ]
  %call14 = tail call fastcc i32 @init_ep(ptr noundef %bdc, i32 noundef %conv63, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end22, label %do.end19

do.end19:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev20 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %10 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.44, i32 noundef %conv63, i32 noundef %call14) #12
  br label %cleanup

if.end22:                                         ; preds = %for.body
  %call24 = tail call fastcc i32 @init_ep(ptr noundef %bdc, i32 noundef %conv63, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %for.cond, label %do.end29

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %dev30 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %12 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.44, i32 noundef %conv63, i32 noundef %call24) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %do.end19, %for.cond.cleanup_crit_edge, %do.end9, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end9 ], [ %call14, %do.end19 ], [ %call24, %do.end29 ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_ep(ptr noundef %bdc, i32 noundef %epnum, i32 noundef %dir) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_ep.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@init_ep, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !486

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @init_ep.__UNIQUE_ID_ddebug385, ptr noundef %1, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.155, i32 noundef %epnum, i32 noundef %dir) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 120) #14
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %bdc8 = getelementptr inbounds %struct.bdc_ep, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %bdc8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %bdc, ptr %bdc8, align 4
  %conv = trunc i32 %dir to i8
  %dir9 = getelementptr inbounds %struct.bdc_ep, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %dir9 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %dir9, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %tobool10.not = icmp eq i32 %dir, 0
  %caps13 = getelementptr inbounds %struct.usb_ep, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %caps13 to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load14 = load i8, ptr %caps13, align 4
  br i1 %tobool10.not, label %if.end17, label %if.end17.thread

if.end17:                                         ; preds = %if.end7
  %bf.set16 = or i8 %bf.load14, 4
  %6 = ptrtoint ptr %caps13 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %bf.set16, ptr %caps13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %epnum)
  %cmp = icmp eq i32 %epnum, 1
  br i1 %cmp, label %if.end17.if.then19_crit_edge, label %if.end17.if.end40_crit_edge

if.end17.if.end40_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.end17.if.then19_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

if.end17.thread:                                  ; preds = %if.end7
  %bf.set = or i8 %bf.load14, 8
  %7 = ptrtoint ptr %caps13 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %bf.set, ptr %caps13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %epnum)
  %cmp156 = icmp eq i32 %epnum, 1
  br i1 %cmp156, label %if.end17.thread.if.then19_crit_edge, label %if.end17.thread.if.end40_crit_edge

if.end17.thread.if.end40_crit_edge:               ; preds = %if.end17.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.end17.thread.if.then19_crit_edge:              ; preds = %if.end17.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

if.then19:                                        ; preds = %if.end17.thread.if.then19_crit_edge, %if.end17.if.then19_crit_edge
  %ep_num = getelementptr inbounds %struct.bdc_ep, ptr %call7.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %ep_num to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %ep_num, align 2
  %bdc_ep_array = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 7
  %9 = ptrtoint ptr %bdc_ep_array to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bdc_ep_array, align 8
  %arrayidx = getelementptr ptr, ptr %10, i32 1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  %name = getelementptr inbounds %struct.bdc_ep, ptr %call7.i.i, i32 0, i32 9
  %call21 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 20, ptr noundef nonnull @.str.157, i32 noundef 0)
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef nonnull %call7.i.i, i32 noundef 512) #9
  %caps24 = getelementptr inbounds %struct.usb_ep, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %caps24 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load25 = load i8, ptr %caps24, align 4
  %bf.set27 = or i8 %bf.load25, -128
  store i8 %bf.set27, ptr %caps24, align 4
  %comp_desc = getelementptr inbounds %struct.bdc_ep, ptr %call7.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %comp_desc to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %comp_desc, align 4
  %ep0 = getelementptr inbounds %struct.usb_gadget, ptr %bdc, i32 0, i32 3
  %14 = ptrtoint ptr %ep0 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %ep0, align 4
  br label %if.end73

if.end40:                                         ; preds = %if.end17.thread.if.end40_crit_edge, %if.end17.if.end40_crit_edge
  %.sink158 = phi i8 [ -1, %if.end17.thread.if.end40_crit_edge ], [ -2, %if.end17.if.end40_crit_edge ]
  %epnum.tr = trunc i32 %epnum to i8
  %15 = shl i8 %epnum.tr, 1
  %conv38 = add i8 %15, %.sink158
  %ep_num39 = getelementptr inbounds %struct.bdc_ep, ptr %call7.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %ep_num39 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv38, ptr %ep_num39, align 2
  %bdc_ep_array41 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 7
  %17 = ptrtoint ptr %bdc_ep_array41 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bdc_ep_array41, align 8
  %idxprom43 = zext i8 %conv38 to i32
  %arrayidx44 = getelementptr ptr, ptr %18, i32 %idxprom43
  %19 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %arrayidx44, align 4
  %name45 = getelementptr inbounds %struct.bdc_ep, ptr %call7.i.i, i32 0, i32 9
  %sub47 = add i32 %epnum, -1
  %and = and i32 %dir, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool48.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool48.not, ptr @.str.160, ptr @.str.159
  %call49 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name45, i32 noundef 20, ptr noundef nonnull @.str.158, i32 noundef %sub47, ptr noundef nonnull %cond)
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef nonnull %call7.i.i, i32 noundef 1024) #9
  %caps52 = getelementptr inbounds %struct.usb_ep, ptr %call7.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %caps52 to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load53 = load i8, ptr %caps52, align 4
  %bf.set65 = or i8 %bf.load53, 112
  store i8 %bf.set65, ptr %caps52, align 4
  %max_streams = getelementptr inbounds %struct.usb_ep, ptr %call7.i.i, i32 0, i32 7
  %21 = ptrtoint ptr %max_streams to i32
  call void @__asan_loadN_noabort(i32 %21, i32 7)
  %bf.load67 = load i56, ptr %max_streams, align 2
  %bf.clear68 = and i56 %bf.load67, -16776961
  store i56 %bf.clear68, ptr %max_streams, align 2
  %ep_list = getelementptr inbounds %struct.usb_ep, ptr %call7.i.i, i32 0, i32 3
  %ep_list72 = getelementptr inbounds %struct.usb_gadget, ptr %bdc, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.usb_gadget, ptr %bdc, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list, ptr noundef %23, ptr noundef %ep_list72) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end40.if.end73_crit_edge

if.end40.if.end73_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

if.end.i.i:                                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %ep_list, ptr %prev.i, align 4
  %25 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %ep_list72, ptr %ep_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.usb_ep, ptr %call7.i.i, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i, align 8
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %ep_list, ptr %23, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.end.i.i, %if.end40.if.end73_crit_edge, %if.then19
  %ops = getelementptr inbounds %struct.usb_ep, ptr %call7.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @bdc_gadget_ep_ops, ptr %ops, align 8
  %name75 = getelementptr inbounds %struct.bdc_ep, ptr %call7.i.i, i32 0, i32 9
  %name78 = getelementptr inbounds %struct.usb_ep, ptr %call7.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %name78 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %name75, ptr %name78, align 4
  %flags = getelementptr inbounds %struct.bdc_ep, ptr %call7.i.i, i32 0, i32 8
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %flags, align 4
  %ignore_next_sr = getelementptr inbounds %struct.bdc_ep, ptr %call7.i.i, i32 0, i32 11
  %31 = ptrtoint ptr %ignore_next_sr to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %ignore_next_sr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_ep.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@init_ep, %do.end101)) #9
          to label %if.then93 [label %do.end101], !srcloc !486

if.then93:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  %dev94 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %32 = ptrtoint ptr %dev94 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev94, align 4
  %34 = ptrtoint ptr %name78 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name78, align 4
  %ep_num97 = getelementptr inbounds %struct.bdc_ep, ptr %call7.i.i, i32 0, i32 5
  %36 = ptrtoint ptr %ep_num97 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ep_num97, align 2
  %conv98 = zext i8 %37 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @init_ep.__UNIQUE_ID_ddebug386, ptr noundef %33, ptr noundef nonnull @.str.161, ptr noundef nonnull %call7.i.i, ptr noundef %35, i32 noundef %epnum, i32 noundef %conv98) #9
  br label %do.end101

do.end101:                                        ; preds = %if.then93, %if.end73
  %queue = getelementptr inbounds %struct.bdc_ep, ptr %call7.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i154 = getelementptr inbounds %struct.bdc_ep, ptr %call7.i.i, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %prev.i154 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %queue, ptr %prev.i154, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end101, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end101 ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_unmap_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_giveback_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdc_ep_set_stall(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdc_ep_clear_stall(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ep0_set_address(ptr noundef %bdc, ptr nocapture noundef readonly %ctrl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.usb_gadget, ptr %bdc, i32 0, i32 9
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state1, align 8
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 2
  %2 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %wValue, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv = zext i16 %4 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_set_address.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_set_address, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !486

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_set_address.__UNIQUE_ID_ddebug338, ptr noundef %6, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.83, i32 noundef %conv, i32 noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %4)
  %cmp = icmp ugt i16 %4, 127
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %.off = add i32 %1, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %do.end19

sw.bb:                                            ; preds = %if.end7
  %call8 = tail call i32 @bdc_address_device(ptr noundef %bdc, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool12.not = icmp eq i16 %3, 0
  %. = select i1 %tobool12.not, i32 5, i32 6
  tail call void @usb_gadget_set_state(ptr noundef %bdc, i32 noundef %.) #9
  %dev_addr = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 23
  %7 = ptrtoint ptr %dev_addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %dev_addr, align 8
  br label %cleanup

do.end19:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %dev20 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %8 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev20, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.85, i32 noundef %1) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %if.end11, %sw.bb.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.cleanup_crit_edge ], [ %call8, %sw.bb.cleanup_crit_edge ], [ -22, %do.end19 ], [ 0, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_set_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ep0_handle_feature(ptr noundef %bdc, ptr nocapture noundef readonly %setup_pkt, i1 noundef zeroext %set) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.usb_gadget, ptr %bdc, i32 0, i32 9
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state1, align 8
  %wValue2 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup_pkt, i32 0, i32 2
  %2 = ptrtoint ptr %wValue2 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %wValue2, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %wIndex3 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup_pkt, i32 0, i32 3
  %5 = ptrtoint ptr %wIndex3 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %wIndex3, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_handle_feature.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_handle_feature, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !486

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %conv = zext i16 %4 to i32
  %conv8 = zext i16 %7 to i32
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %bdc, i32 0, i32 5
  %10 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %speed, align 8
  %conv11 = zext i1 %set to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_handle_feature.__UNIQUE_ID_ddebug345, ptr noundef %9, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.86, i32 noundef %conv, i32 noundef %conv8, i32 noundef %1, i32 noundef %11, i32 noundef %conv11) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %12 = ptrtoint ptr %setup_pkt to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %setup_pkt, align 1
  %14 = and i8 %13, 31
  %and = zext i8 %14 to i32
  %15 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.197)
  switch i32 %and, label %do.end177 [
    i32 0, label %sw.bb
    i32 1, label %do.body16
    i32 2, label %do.body88
  ]

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = tail call fastcc i32 @ep0_handle_feature_dev(ptr noundef %bdc, i16 noundef zeroext %4, i16 noundef zeroext %7, i1 noundef zeroext %set)
  br label %cleanup

do.body16:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_handle_feature.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_handle_feature, %do.end34)) #9
          to label %if.then30 [label %do.end34], !srcloc !486

if.then30:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  %dev31 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %16 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev31, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_handle_feature.__UNIQUE_ID_ddebug346, ptr noundef %17, ptr noundef nonnull @.str.88) #9
  br label %do.end34

do.end34:                                         ; preds = %if.then30, %do.body16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.not = icmp ne i16 %3, 0
  %set.not = xor i1 %set, true
  %brmerge215 = or i1 %cmp.not, %set.not
  %.mux = select i1 %cmp.not, i32 -22, i32 0
  br i1 %brmerge215, label %do.end34.cleanup_crit_edge, label %if.then40

do.end34.cleanup_crit_edge:                       ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then40:                                        ; preds = %do.end34
  %18 = and i16 %7, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool43.not = icmp eq i16 %18, 0
  br i1 %tobool43.not, label %do.body64, label %do.body45

do.body45:                                        ; preds = %if.then40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_handle_feature.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_handle_feature, %do.end63)) #9
          to label %if.then59 [label %do.end63], !srcloc !486

if.then59:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #11
  %dev60 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %19 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev60, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_handle_feature.__UNIQUE_ID_ddebug347, ptr noundef %20, ptr noundef nonnull @.str.89) #9
  br label %do.end63

do.end63:                                         ; preds = %if.then59, %do.body45
  %devstatus = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 20
  %21 = ptrtoint ptr %devstatus to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %devstatus, align 4
  %or = or i32 %22, 2
  store i32 %or, ptr %devstatus, align 4
  br label %cleanup

do.body64:                                        ; preds = %if.then40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_handle_feature.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_handle_feature, %do.end82)) #9
          to label %if.then78 [label %do.end82], !srcloc !486

if.then78:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #11
  %dev79 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %23 = ptrtoint ptr %dev79 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev79, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_handle_feature.__UNIQUE_ID_ddebug348, ptr noundef %24, ptr noundef nonnull @.str.90) #9
  br label %do.end82

do.end82:                                         ; preds = %if.then78, %do.body64
  %devstatus83 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 20
  %25 = ptrtoint ptr %devstatus83 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %devstatus83, align 4
  %and84 = and i32 %26, -3
  store i32 %and84, ptr %devstatus83, align 4
  br label %cleanup

do.body88:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_handle_feature.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_handle_feature, %do.end106)) #9
          to label %if.then102 [label %do.end106], !srcloc !486

if.then102:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #11
  %dev103 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %27 = ptrtoint ptr %dev103 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev103, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_handle_feature.__UNIQUE_ID_ddebug349, ptr noundef %28, ptr noundef nonnull @.str.91) #9
  br label %do.end106

do.end106:                                        ; preds = %if.then102, %do.body88
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp108.not = icmp eq i16 %3, 0
  br i1 %cmp108.not, label %if.end111, label %do.end106.cleanup_crit_edge

do.end106.cleanup_crit_edge:                      ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end111:                                        ; preds = %do.end106
  %conv112 = zext i16 %7 to i32
  %and113 = and i32 %conv112, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %if.end125, label %if.then115

if.then115:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  %mul122 = shl nuw nsw i32 %and113, 1
  %and117 = lshr i32 %conv112, 7
  %29 = and i32 %and117, 1
  %30 = or i32 %29, %mul122
  br label %do.body150

if.end125:                                        ; preds = %if.end111
  br i1 %set, label %if.end125.do.body150_crit_edge, label %do.body130

if.end125.do.body150_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body150

do.body130:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_handle_feature.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_handle_feature, %cleanup)) #9
          to label %if.then144 [label %cleanup], !srcloc !486

if.then144:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #11
  %dev145 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %31 = ptrtoint ptr %dev145 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev145, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_handle_feature.__UNIQUE_ID_ddebug350, ptr noundef %32, ptr noundef nonnull @.str.92) #9
  br label %cleanup

do.body150:                                       ; preds = %if.end125.do.body150_crit_edge, %if.then115
  %epnum.0243 = phi i32 [ 1, %if.end125.do.body150_crit_edge ], [ %30, %if.then115 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_handle_feature.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_handle_feature, %do.end168)) #9
          to label %if.then164 [label %do.end168], !srcloc !486

if.then164:                                       ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #11
  %dev165 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %33 = ptrtoint ptr %dev165 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev165, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_handle_feature.__UNIQUE_ID_ddebug351, ptr noundef %34, ptr noundef nonnull @.str.93, i32 noundef %epnum.0243) #9
  br label %do.end168

do.end168:                                        ; preds = %if.then164, %do.body150
  %bdc_ep_array = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 7
  %35 = ptrtoint ptr %bdc_ep_array to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bdc_ep_array, align 8
  %arrayidx = getelementptr ptr, ptr %36, i32 %epnum.0243
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx, align 4
  %tobool169.not = icmp eq ptr %38, null
  br i1 %tobool169.not, label %do.end168.cleanup_crit_edge, label %if.end171

do.end168.cleanup_crit_edge:                      ; preds = %do.end168
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end171:                                        ; preds = %do.end168
  call void @__sanitizer_cov_trace_pc() #11
  %conv173 = zext i1 %set to i32
  %call174 = tail call fastcc i32 @ep_set_halt(ptr noundef nonnull %38, i32 noundef %conv173)
  br label %cleanup

do.end177:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev178 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %39 = ptrtoint ptr %dev178 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev178, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.94) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end177, %if.end171, %do.end168.cleanup_crit_edge, %if.then144, %do.body130, %do.end106.cleanup_crit_edge, %do.end82, %do.end63, %do.end34.cleanup_crit_edge, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end177 ], [ %call174, %if.end171 ], [ %call14, %sw.bb ], [ %.mux, %do.end34.cleanup_crit_edge ], [ -22, %do.end106.cleanup_crit_edge ], [ 0, %if.then144 ], [ -22, %do.end168.cleanup_crit_edge ], [ 0, %do.end82 ], [ 0, %do.end63 ], [ 0, %do.body130 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ep0_handle_status(ptr noundef %bdc, ptr nocapture noundef readonly %setup_pkt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.usb_gadget, ptr %bdc, i32 0, i32 9
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp eq i32 %1, 5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %wIndex2 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup_pkt, i32 0, i32 3
  %2 = ptrtoint ptr %wIndex2 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %wIndex2, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_handle_status.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_handle_status, %do.end)) #9
          to label %if.then6 [label %do.end], !srcloc !486

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_handle_status.__UNIQUE_ID_ddebug352, ptr noundef %6, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.103) #9
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.end
  %devstatus = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 20
  %7 = ptrtoint ptr %devstatus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %devstatus, align 4
  %conv = trunc i32 %8 to i16
  %9 = ptrtoint ptr %setup_pkt to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %setup_pkt, align 1
  %11 = and i8 %10, 31
  %and = zext i8 %11 to i32
  %12 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.198)
  switch i32 %and, label %do.end120 [
    i32 0, label %do.body9
    i32 1, label %do.body38
    i32 2, label %do.body71
  ]

do.body9:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_handle_status.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_handle_status, %do.end28)) #9
          to label %if.then23 [label %do.end28], !srcloc !486

if.then23:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  %dev24 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %13 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev24, align 4
  %15 = ptrtoint ptr %devstatus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %devstatus, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_handle_status.__UNIQUE_ID_ddebug353, ptr noundef %14, ptr noundef nonnull @.str.104, i32 noundef %16) #9
  br label %do.end28

do.end28:                                         ; preds = %if.then23, %do.body9
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %bdc, i32 0, i32 5
  %17 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %18)
  %cmp30 = icmp eq i32 %18, 5
  %conv35 = and i16 %conv, -3
  %spec.select = select i1 %cmp30, i16 %conv35, i16 %conv
  br label %do.body122

do.body38:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_handle_status.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_handle_status, %do.end56)) #9
          to label %if.then52 [label %do.end56], !srcloc !486

if.then52:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #11
  %dev53 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %19 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev53, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_handle_status.__UNIQUE_ID_ddebug354, ptr noundef %20, ptr noundef nonnull @.str.88) #9
  br label %do.end56

do.end56:                                         ; preds = %if.then52, %do.body38
  %speed58 = getelementptr inbounds %struct.usb_gadget, ptr %bdc, i32 0, i32 5
  %21 = ptrtoint ptr %speed58 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %speed58, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %22)
  %cmp59 = icmp eq i32 %22, 5
  br i1 %cmp59, label %if.then61, label %do.end56.do.body122_crit_edge

do.end56.do.body122_crit_edge:                    ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body122

if.then61:                                        ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %devstatus to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %devstatus, align 4
  %25 = trunc i32 %24 to i16
  %26 = and i16 %25, 2
  %27 = or i16 %26, %conv
  br label %do.body122

do.body71:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_handle_status.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_handle_status, %do.end89)) #9
          to label %if.then85 [label %do.end89], !srcloc !486

if.then85:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #11
  %dev86 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %28 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev86, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_handle_status.__UNIQUE_ID_ddebug355, ptr noundef %29, ptr noundef nonnull @.str.91) #9
  br label %do.end89

do.end89:                                         ; preds = %if.then85, %do.body71
  %conv90 = zext i16 %4 to i32
  %and91 = and i32 %conv90, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  %mul100 = shl nuw nsw i32 %and91, 1
  %and95 = lshr i32 %conv90, 7
  %30 = and i32 %and95, 1
  %31 = or i32 %30, %mul100
  %epnum.0 = select i1 %tobool92.not, i32 1, i32 %31
  %bdc_ep_array = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 7
  %32 = ptrtoint ptr %bdc_ep_array to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bdc_ep_array, align 8
  %arrayidx = getelementptr ptr, ptr %33, i32 %epnum.0
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx, align 4
  %tobool104.not = icmp eq ptr %35, null
  br i1 %tobool104.not, label %do.end108, label %if.end110

do.end108:                                        ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #11
  %dev109 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %36 = ptrtoint ptr %dev109 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev109, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.105) #12
  br label %cleanup

if.end110:                                        ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr inbounds %struct.bdc_ep, ptr %35, i32 0, i32 8
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags, align 4
  %40 = trunc i32 %39 to i16
  %41 = lshr i16 %40, 1
  %42 = and i16 %41, 1
  %43 = or i16 %42, %conv
  br label %do.body122

do.end120:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev121 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %44 = ptrtoint ptr %dev121 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev121, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.107) #12
  br label %cleanup

do.body122:                                       ; preds = %if.end110, %if.then61, %do.end56.do.body122_crit_edge, %do.end28
  %usb_status.0 = phi i16 [ 0, %do.end56.do.body122_crit_edge ], [ %spec.select, %do.end28 ], [ %27, %if.then61 ], [ %43, %if.end110 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_handle_status.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_handle_status, %do.end141)) #9
          to label %if.then136 [label %do.end141], !srcloc !486

if.then136:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #11
  %dev137 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %46 = ptrtoint ptr %dev137 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev137, align 4
  %conv138 = zext i16 %usb_status.0 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_handle_status.__UNIQUE_ID_ddebug356, ptr noundef %47, ptr noundef nonnull @.str.109, i32 noundef %conv138) #9
  br label %do.end141

do.end141:                                        ; preds = %if.then136, %do.body122
  %48 = tail call i16 @llvm.bswap.i16(i16 %usb_status.0)
  %ep0_response_buff = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 28
  %49 = ptrtoint ptr %ep0_response_buff to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %ep0_response_buff, align 8
  %ep0_req = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 13
  %length = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 13, i32 0, i32 1
  %50 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2, ptr %length, align 4
  %51 = ptrtoint ptr %ep0_req to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %ep0_response_buff, ptr %ep0_req, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_queue_data_stage.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_handle_status, %ep0_queue_data_stage.exit)) #9
          to label %if.then.i [label %ep0_queue_data_stage.exit], !srcloc !486

if.then.i:                                        ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %52 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_queue_data_stage.__UNIQUE_ID_ddebug321, ptr noundef %53, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.110) #9
  br label %ep0_queue_data_stage.exit

ep0_queue_data_stage.exit:                        ; preds = %if.then.i, %do.end141
  %bdc_ep_array.i = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 7
  %54 = ptrtoint ptr %bdc_ep_array.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bdc_ep_array.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %55, i32 1
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i, align 4
  %ep4.i = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 13, i32 2
  %58 = ptrtoint ptr %ep4.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %ep4.i, align 4
  %complete.i = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 13, i32 0, i32 7
  %59 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %complete.i, align 4
  %call7.i = tail call fastcc i32 @ep0_queue(ptr noundef %57, ptr noundef %ep0_req) #9
  br label %cleanup

cleanup:                                          ; preds = %ep0_queue_data_stage.exit, %do.end120, %do.end108, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end120 ], [ 0, %ep0_queue_data_stage.exit ], [ -22, %do.end108 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ep0_set_sel(ptr noundef %bdc, ptr nocapture noundef readonly %setup_pkt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_set_sel.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_set_sel, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !486

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_set_sel.__UNIQUE_ID_ddebug357, ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.130) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %wLength4 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup_pkt, i32 0, i32 4
  %2 = ptrtoint ptr %wLength4 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %wLength4, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %3)
  %cmp.not = icmp eq i16 %3, 1536
  br i1 %cmp.not, label %if.end18, label %do.end15, !prof !487

do.end15:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv = zext i16 %4 to i32
  %dev16 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %5 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.130, i32 noundef %conv) #12
  br label %cleanup

if.end18:                                         ; preds = %do.end
  %bdc_ep_array = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 7
  %7 = ptrtoint ptr %bdc_ep_array to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bdc_ep_array, align 8
  %arrayidx = getelementptr ptr, ptr %8, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %ep0_req = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 13
  %ep19 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 13, i32 2
  %11 = ptrtoint ptr %ep19 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %ep19, align 4
  %length = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 13, i32 0, i32 1
  %12 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 6, ptr %length, align 4
  %ep0_response_buff = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 28
  %13 = ptrtoint ptr %ep0_req to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %ep0_response_buff, ptr %ep0_req, align 4
  %complete = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 13, i32 0, i32 7
  %14 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ep0_set_sel_cmpl, ptr %complete, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_queue_data_stage.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_set_sel, %ep0_queue_data_stage.exit)) #9
          to label %if.then.i [label %ep0_queue_data_stage.exit], !srcloc !486

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_queue_data_stage.__UNIQUE_ID_ddebug321, ptr noundef %16, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.110) #9
  br label %ep0_queue_data_stage.exit

ep0_queue_data_stage.exit:                        ; preds = %if.then.i, %if.end18
  %17 = ptrtoint ptr %bdc_ep_array to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bdc_ep_array, align 8
  %arrayidx.i = getelementptr ptr, ptr %18, i32 1
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %21 = ptrtoint ptr %ep19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %ep19, align 4
  %22 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %complete, align 4
  %call7.i = tail call fastcc i32 @ep0_queue(ptr noundef %20, ptr noundef %ep0_req) #9
  br label %cleanup

cleanup:                                          ; preds = %ep0_queue_data_stage.exit, %do.end15
  %retval.0 = phi i32 [ -22, %do.end15 ], [ 0, %ep0_queue_data_stage.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdc_address_device(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ep0_handle_feature_dev(ptr noundef %bdc, i16 noundef zeroext %wValue, i16 noundef zeroext %wIndex, i1 noundef zeroext %set) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.usb_gadget, ptr %bdc, i32 0, i32 9
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_handle_feature_dev.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_handle_feature_dev, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !486

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %conv = zext i1 %set to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_handle_feature_dev.__UNIQUE_ID_ddebug339, ptr noundef %3, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.95, i32 noundef %conv, i32 noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = zext i16 %wValue to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.199)
  switch i16 %wValue, label %do.end181 [
    i16 1, label %do.body8
    i16 2, label %do.body32
    i16 48, label %do.body63
    i16 49, label %do.body107
    i16 50, label %do.body151
  ]

do.body8:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_handle_feature_dev.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_handle_feature_dev, %do.end26)) #9
          to label %if.then22 [label %do.end26], !srcloc !486

if.then22:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  %dev23 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %5 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev23, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_handle_feature_dev.__UNIQUE_ID_ddebug340, ptr noundef %6, ptr noundef nonnull @.str.97) #9
  br label %do.end26

do.end26:                                         ; preds = %if.then22, %do.body8
  %devstatus = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 20
  %7 = ptrtoint ptr %devstatus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %devstatus, align 4
  br i1 %set, label %if.then28, label %if.else

if.then28:                                        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %8, 2
  %9 = ptrtoint ptr %devstatus to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %devstatus, align 4
  br label %sw.epilog

if.else:                                          ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %8, -3
  %10 = ptrtoint ptr %devstatus to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and, ptr %devstatus, align 4
  br label %sw.epilog

do.body32:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_handle_feature_dev.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_handle_feature_dev, %do.end50)) #9
          to label %if.then46 [label %do.end50], !srcloc !486

if.then46:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #11
  %dev47 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %11 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev47, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_handle_feature_dev.__UNIQUE_ID_ddebug341, ptr noundef %12, ptr noundef nonnull @.str.98) #9
  br label %do.end50

do.end50:                                         ; preds = %if.then46, %do.body32
  %13 = and i16 %wIndex, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool53.not = icmp eq i16 %13, 0
  br i1 %tobool53.not, label %lor.lhs.false, label %do.end50.cleanup_crit_edge

do.end50.cleanup_crit_edge:                       ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end50
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %bdc, i32 0, i32 5
  %14 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp.not = icmp eq i32 %15, 3
  %16 = and i1 %cmp.not, %set
  br i1 %16, label %if.end59, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end59:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %17 = lshr i16 %wIndex, 8
  %conv61 = trunc i16 %17 to i8
  %test_mode = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 25
  %18 = ptrtoint ptr %test_mode to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv61, ptr %test_mode, align 8
  br label %sw.epilog

do.body63:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_handle_feature_dev.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_handle_feature_dev, %do.end81)) #9
          to label %if.then77 [label %do.end81], !srcloc !486

if.then77:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #11
  %dev78 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %19 = ptrtoint ptr %dev78 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev78, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_handle_feature_dev.__UNIQUE_ID_ddebug342, ptr noundef %20, ptr noundef nonnull @.str.99) #9
  br label %do.end81

do.end81:                                         ; preds = %if.then77, %do.body63
  %speed83 = getelementptr inbounds %struct.usb_gadget, ptr %bdc, i32 0, i32 5
  %21 = ptrtoint ptr %speed83 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %speed83, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %22)
  %cmp84.not = icmp eq i32 %22, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp87.not = icmp eq i32 %1, 7
  %or.cond = select i1 %cmp84.not, i1 %cmp87.not, i1 false
  br i1 %or.cond, label %if.end90, label %do.end81.cleanup_crit_edge

do.end81.cleanup_crit_edge:                       ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end90:                                         ; preds = %do.end81
  %regs = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 8
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 40
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !493
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !494
  br i1 %set, label %if.then93, label %if.else99

if.then93:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  %and94 = and i32 %26, -1073873152
  %or96 = or i32 %and94, 1073873144
  %devstatus97 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 20
  %27 = ptrtoint ptr %devstatus97 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %devstatus97, align 4
  %or98 = or i32 %28, 4
  store i32 %or98, ptr %devstatus97, align 4
  br label %if.end104

if.else99:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  %and100 = and i32 %26, -1073872897
  %or101 = or i32 %and100, 131072
  %devstatus102 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 20
  %29 = ptrtoint ptr %devstatus102 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %devstatus102, align 4
  %and103 = and i32 %30, -5
  store i32 %and103, ptr %devstatus102, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.else99, %if.then93
  %usppms.0 = phi i32 [ %or96, %if.then93 ], [ %or101, %if.else99 ]
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @arm_heavy_mb() #9
  %33 = tail call i32 @llvm.bswap.i32(i32 %usppms.0) #9
  %add.ptr.i243 = getelementptr i8, ptr %32, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i243, i32 %33) #9, !srcloc !489
  br label %sw.epilog

do.body107:                                       ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_handle_feature_dev.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_handle_feature_dev, %do.end125)) #9
          to label %if.then121 [label %do.end125], !srcloc !486

if.then121:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #11
  %dev122 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %34 = ptrtoint ptr %dev122 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev122, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_handle_feature_dev.__UNIQUE_ID_ddebug343, ptr noundef %35, ptr noundef nonnull @.str.100) #9
  br label %do.end125

do.end125:                                        ; preds = %if.then121, %do.body107
  %speed127 = getelementptr inbounds %struct.usb_gadget, ptr %bdc, i32 0, i32 5
  %36 = ptrtoint ptr %speed127 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %speed127, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %37)
  %cmp128.not = icmp eq i32 %37, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp131.not = icmp eq i32 %1, 7
  %or.cond226 = select i1 %cmp128.not, i1 %cmp131.not, i1 false
  br i1 %or.cond226, label %if.end134, label %do.end125.cleanup_crit_edge

do.end125.cleanup_crit_edge:                      ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end134:                                        ; preds = %do.end125
  %regs135 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 8
  %38 = ptrtoint ptr %regs135 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs135, align 4
  %add.ptr.i244 = getelementptr i8, ptr %39, i32 40
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i244) #9, !srcloc !493
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !494
  br i1 %set, label %if.then138, label %if.else143

if.then138:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  %or140 = or i32 %41, -1610612736
  %devstatus141 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 20
  %42 = ptrtoint ptr %devstatus141 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %devstatus141, align 4
  %or142 = or i32 %43, 8
  store i32 %or142, ptr %devstatus141, align 4
  br label %if.end148

if.else143:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  %and145 = and i32 %41, 1610612735
  %devstatus146 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 20
  %44 = ptrtoint ptr %devstatus146 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %devstatus146, align 4
  %and147 = and i32 %45, -9
  store i32 %and147, ptr %devstatus146, align 4
  br label %if.end148

if.end148:                                        ; preds = %if.else143, %if.then138
  %usppms.1 = phi i32 [ %or140, %if.then138 ], [ %and145, %if.else143 ]
  %46 = ptrtoint ptr %regs135 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs135, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @arm_heavy_mb() #9
  %48 = tail call i32 @llvm.bswap.i32(i32 %usppms.1) #9
  %add.ptr.i245 = getelementptr i8, ptr %47, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i245, i32 %48) #9, !srcloc !489
  br label %sw.epilog

do.body151:                                       ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_handle_feature_dev.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_handle_feature_dev, %do.end169)) #9
          to label %if.then165 [label %do.end169], !srcloc !486

if.then165:                                       ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #11
  %dev166 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %49 = ptrtoint ptr %dev166 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev166, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_handle_feature_dev.__UNIQUE_ID_ddebug344, ptr noundef %50, ptr noundef nonnull @.str.101) #9
  br label %do.end169

do.end169:                                        ; preds = %if.then165, %do.body151
  %speed171 = getelementptr inbounds %struct.usb_gadget, ptr %bdc, i32 0, i32 5
  %51 = ptrtoint ptr %speed171 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %speed171, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %52)
  %cmp172.not = icmp eq i32 %52, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp175.not = icmp eq i32 %1, 7
  %or.cond227 = select i1 %cmp172.not, i1 %cmp175.not, i1 false
  br i1 %or.cond227, label %do.end169.sw.epilog_crit_edge, label %do.end169.cleanup_crit_edge

do.end169.cleanup_crit_edge:                      ; preds = %do.end169
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end169.sw.epilog_crit_edge:                    ; preds = %do.end169
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end181:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv7 = zext i16 %wValue to i32
  %dev182 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %53 = ptrtoint ptr %dev182 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev182, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.102, i32 noundef %conv7) #12
  br label %cleanup

sw.epilog:                                        ; preds = %do.end169.sw.epilog_crit_edge, %if.end148, %if.end104, %if.end59, %if.else, %if.then28
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end181, %do.end169.cleanup_crit_edge, %do.end125.cleanup_crit_edge, %do.end81.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end50.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %do.end181 ], [ 0, %sw.epilog ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %do.end50.cleanup_crit_edge ], [ -22, %do.end81.cleanup_crit_edge ], [ -22, %do.end125.cleanup_crit_edge ], [ -22, %do.end169.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ep0_queue(ptr noundef %ep, ptr noundef %req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bdc1 = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 2
  %0 = ptrtoint ptr %bdc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdc1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep0_queue.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep0_queue, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !486

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep0_queue.__UNIQUE_ID_ddebug320, ptr noundef %3, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.111) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %4 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %actual, align 4
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %5 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -115, ptr %status, align 4
  %ep_num = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 5
  %6 = ptrtoint ptr %ep_num to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ep_num, align 2
  %conv = zext i8 %7 to i32
  %epnum = getelementptr inbounds %struct.bdc_req, ptr %req, i32 0, i32 4
  %8 = ptrtoint ptr %epnum to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %epnum, align 4
  %delayed_status = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 16
  %9 = ptrtoint ptr %delayed_status to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %delayed_status, align 8, !range !491
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool6.not = icmp eq i8 %10, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %do.end
  %11 = ptrtoint ptr %delayed_status to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %delayed_status, align 8
  %ep0_state = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 15
  %12 = ptrtoint ptr %ep0_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ep0_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp = icmp eq i32 %13, 3
  br i1 %cmp, label %if.then10, label %if.then7.if.end19_crit_edge

if.then7.if.end19_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %status_req1.i = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 14
  %bdc_ep_array.i = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %bdc_ep_array.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bdc_ep_array.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %15, i32 1
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %ep2.i = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 14, i32 2
  %18 = ptrtoint ptr %ep2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %ep2.i, align 4
  %length.i = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 14, i32 0, i32 1
  %19 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %length.i, align 4
  %status.i = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 14, i32 0, i32 11
  %20 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -115, ptr %status.i, align 4
  %actual.i = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 14, i32 0, i32 12
  %21 = ptrtoint ptr %actual.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %actual.i, align 4
  %complete.i = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 14, i32 0, i32 7
  %22 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %complete.i, align 4
  %call.i = tail call fastcc i32 @bdc_queue_xfr(ptr noundef %1, ptr noundef %status_req1.i) #9
  %23 = ptrtoint ptr %ep0_state to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4, ptr %ep0_state, align 4
  br label %cleanup

if.else:                                          ; preds = %do.end
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %24 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp15 = icmp eq i32 %25, 0
  br i1 %cmp15, label %if.else.cleanup_crit_edge, label %if.else.if.end19_crit_edge

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %if.else.if.end19_crit_edge, %if.then7.if.end19_crit_edge
  %dir = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 4
  %26 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %dir, align 1
  %conv21 = zext i8 %27 to i32
  %call22 = tail call i32 @usb_gadget_map_request(ptr noundef %1, ptr noundef %req, i32 noundef %conv21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end29, label %do.end27

do.end27:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %dev28 = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev28, align 4
  %name = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.112, ptr noundef %name) #12
  br label %cleanup

if.end29:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %call30 = tail call fastcc i32 @bdc_queue_xfr(ptr noundef %1, ptr noundef %req)
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %do.end27, %if.else.cleanup_crit_edge, %if.then10
  %retval.0 = phi i32 [ 0, %if.then10 ], [ %call22, %do.end27 ], [ %call30, %if.end29 ], [ 0, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_map_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bdc_queue_xfr(ptr noundef %bdc, ptr noundef %req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ep1 = getelementptr inbounds %struct.bdc_req, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %ep1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_queue_xfr.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_queue_xfr, %do.body5)) #9
          to label %if.then [label %do.body5], !srcloc !486

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_queue_xfr.__UNIQUE_ID_ddebug315, ptr noundef %3, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.113, ptr noundef %req) #9
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_queue_xfr.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_queue_xfr, %do.end24)) #9
          to label %if.then19 [label %do.end24], !srcloc !486

if.then19:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  %dev20 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %4 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev20, align 4
  %eqp_bdi = getelementptr inbounds %struct.bdc_ep, ptr %1, i32 0, i32 10, i32 3
  %6 = ptrtoint ptr %eqp_bdi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %eqp_bdi, align 4
  %hwd_bdi = getelementptr inbounds %struct.bdc_ep, ptr %1, i32 0, i32 10, i32 4
  %8 = ptrtoint ptr %hwd_bdi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwd_bdi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_queue_xfr.__UNIQUE_ID_ddebug316, ptr noundef %5, ptr noundef nonnull @.str.115, i32 noundef %7, i32 noundef %9) #9
  br label %do.end24

do.end24:                                         ; preds = %if.then19, %do.body5
  %length.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  %rem.i = and i32 %11, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp ne i32 %rem.i, 0
  %spec.select.i = zext i1 %tobool.not.i to i32
  %div13.i = lshr i32 %11, 16
  %add.i = add nuw nsw i32 %div13.i, %spec.select.i
  %retval.0.i55 = select i1 %cmp.i, i32 1, i32 %add.i
  %call26 = tail call fastcc i32 @bd_available_ep(ptr noundef %1)
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i55, i32 %call26)
  %cmp = icmp sgt i32 %retval.0.i55, %call26
  br i1 %cmp, label %do.end24.cleanup_crit_edge, label %if.end28

do.end24.cleanup_crit_edge:                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %do.end24
  %call29 = tail call fastcc i32 @setup_bd_list_xfr(ptr noundef %bdc, ptr noundef %req, i32 noundef %retval.0.i55)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  %queue = getelementptr inbounds %struct.bdc_req, ptr %req, i32 0, i32 1
  %queue33 = getelementptr inbounds %struct.bdc_ep, ptr %1, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.bdc_ep, ptr %1, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue, ptr noundef %13, ptr noundef %queue33) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end32.list_add_tail.exit_crit_edge

if.end32.list_add_tail.exit_crit_edge:            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %queue, ptr %prev.i, align 4
  %15 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %queue33, ptr %queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.bdc_req, ptr %req, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %queue, ptr %13, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end32.list_add_tail.exit_crit_edge
  tail call void @bdc_dbg_bd_list(ptr noundef %bdc, ptr noundef %1) #9
  %ep_num = getelementptr inbounds %struct.bdc_ep, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %ep_num to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ep_num, align 2
  %conv = zext i8 %19 to i32
  %bdc_ep_array.i = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 7
  %20 = ptrtoint ptr %bdc_ep_array.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bdc_ep_array.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %21, i32 %conv
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_notify_xfr.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_queue_xfr, %do.end.i)) #9
          to label %if.then.i [label %do.end.i], !srcloc !486

if.then.i:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_notify_xfr.__UNIQUE_ID_ddebug310, ptr noundef %25, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %conv) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %list_add_tail.exit
  %flags.i = getelementptr inbounds %struct.bdc_ep, ptr %23, i32 0, i32 8
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %do.end.i.bdc_notify_xfr.exit_crit_edge, label %if.then11.i, !prof !487

do.end.i.bdc_notify_xfr.exit_crit_edge:           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bdc_notify_xfr.exit

if.then11.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %and13.i = and i32 %27, -5
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and13.i, ptr %flags.i, align 4
  br label %bdc_notify_xfr.exit

bdc_notify_xfr.exit:                              ; preds = %if.then11.i, %do.end.i.bdc_notify_xfr.exit_crit_edge
  %regs.i = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 8
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @arm_heavy_mb() #9
  %31 = shl nuw i32 %conv, 24
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %31) #9, !srcloc !489
  br label %cleanup

cleanup:                                          ; preds = %bdc_notify_xfr.exit, %if.end28.cleanup_crit_edge, %do.end24.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %bdc_notify_xfr.exit ], [ -12, %do.end24.cleanup_crit_edge ], [ %call29, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bd_available_ep(ptr nocapture noundef readonly %ep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bdc2 = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 2
  %0 = ptrtoint ptr %bdc2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdc2, align 4
  %eqp_bdi = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10, i32 3
  %2 = ptrtoint ptr %eqp_bdi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eqp_bdi, align 4
  %hwd_bdi = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10, i32 4
  %4 = ptrtoint ptr %hwd_bdi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwd_bdi, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp = icmp eq i32 %5, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %max_bdi = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10, i32 2
  %6 = ptrtoint ptr %max_bdi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_bdi, align 4
  %num_tabs = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %num_tabs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_tabs, align 4
  %sub = sub i32 %7, %9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp5 = icmp slt i32 %5, %3
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %max_bdi7 = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10, i32 2
  %10 = ptrtoint ptr %max_bdi7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_bdi7, align 4
  %sub9 = sub i32 %11, %3
  %num_bds_table = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10, i32 5
  %12 = ptrtoint ptr %num_bds_table to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_bds_table, align 4
  %div = sdiv i32 %sub9, %13
  %div12 = sdiv i32 %5, %13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bd_available_ep.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bd_available_ep, %do.end)) #9
          to label %if.then16 [label %do.end], !srcloc !486

if.then16:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bd_available_ep.__UNIQUE_ID_ddebug308, ptr noundef %15, ptr noundef nonnull @.str.117, i32 noundef %div, i32 noundef %div12) #9
  br label %do.end

do.end:                                           ; preds = %if.then16, %if.then6
  %.neg = add i32 %sub9, %5
  %16 = add i32 %div, %div12
  %sub19 = sub i32 %.neg, %16
  br label %if.end42

if.else:                                          ; preds = %if.end
  %sub22 = sub i32 %5, %3
  %num_bds_table26 = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10, i32 5
  %17 = ptrtoint ptr %num_bds_table26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_bds_table26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub22, i32 %18)
  %cmp27.not = icmp sgt i32 %sub22, %18
  br i1 %cmp27.not, label %if.else37, label %if.then28

if.then28:                                        ; preds = %if.else
  %div.i = sdiv i32 %5, %18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdi_to_tbi.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bd_available_ep, %bdi_to_tbi.exit)) #9
          to label %if.then.i [label %bdi_to_tbi.exit], !srcloc !486

if.then.i:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %bdc2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bdc2, align 4
  %dev.i = getelementptr inbounds %struct.bdc, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %23 = ptrtoint ptr %num_bds_table26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_bds_table26, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdi_to_tbi.__UNIQUE_ID_ddebug307, ptr noundef %22, ptr noundef nonnull @.str.120, i32 noundef %5, i32 noundef %24, i32 noundef %div.i) #9
  br label %bdi_to_tbi.exit

bdi_to_tbi.exit:                                  ; preds = %if.then.i, %if.then28
  %25 = ptrtoint ptr %eqp_bdi to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %eqp_bdi, align 4
  %27 = ptrtoint ptr %num_bds_table26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_bds_table26, align 4
  %div.i106 = sdiv i32 %26, %28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdi_to_tbi.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bd_available_ep, %bdi_to_tbi.exit110)) #9
          to label %if.then.i109 [label %bdi_to_tbi.exit110], !srcloc !486

if.then.i109:                                     ; preds = %bdi_to_tbi.exit
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %bdc2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bdc2, align 4
  %dev.i108 = getelementptr inbounds %struct.bdc, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %dev.i108 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i108, align 4
  %33 = ptrtoint ptr %num_bds_table26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_bds_table26, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdi_to_tbi.__UNIQUE_ID_ddebug307, ptr noundef %32, ptr noundef nonnull @.str.120, i32 noundef %26, i32 noundef %34, i32 noundef %div.i106) #9
  br label %bdi_to_tbi.exit110

bdi_to_tbi.exit110:                               ; preds = %if.then.i109, %bdi_to_tbi.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %div.i106)
  %cmp33 = icmp eq i32 %div.i, %div.i106
  %sub35 = add i32 %sub22, -1
  %spec.select = select i1 %cmp33, i32 0, i32 %sub35
  br label %if.end42

if.else37:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %div39 = sdiv i32 %sub22, %18
  %sub40 = sub i32 %sub22, %div39
  br label %if.end42

if.end42:                                         ; preds = %if.else37, %bdi_to_tbi.exit110, %do.end
  %available_bd.0 = phi i32 [ %sub19, %do.end ], [ %sub40, %if.else37 ], [ %spec.select, %bdi_to_tbi.exit110 ]
  %dec = add i32 %available_bd.0, -1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bd_available_ep.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bd_available_ep, %cleanup)) #9
          to label %if.then57 [label %cleanup], !srcloc !486

if.then57:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %dev58 = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 2
  %35 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev58, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bd_available_ep.__UNIQUE_ID_ddebug309, ptr noundef %36, ptr noundef nonnull @.str.118, i32 noundef %dec) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then57, %if.end42, %if.then
  %retval.0 = phi i32 [ %sub, %if.then ], [ %dec, %if.then57 ], [ %dec, %if.end42 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @setup_bd_list_xfr(ptr nocapture noundef %bdc, ptr noundef %req, i32 noundef %num_bds) unnamed_addr #0 align 64 {
entry:
  %dword3 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dma = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dword3) #9
  %ep1 = getelementptr inbounds %struct.bdc_req, ptr %req, i32 0, i32 2
  %2 = ptrtoint ptr %ep1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep1, align 4
  %bd_xfr3 = getelementptr inbounds %struct.bdc_req, ptr %req, i32 0, i32 3
  %4 = ptrtoint ptr %bd_xfr3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %req, ptr %bd_xfr3, align 4
  %eqp_bdi = getelementptr inbounds %struct.bdc_ep, ptr %3, i32 0, i32 10, i32 3
  %5 = ptrtoint ptr %eqp_bdi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %eqp_bdi, align 4
  %start_bdi = getelementptr inbounds %struct.bdc_req, ptr %req, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %start_bdi to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %start_bdi, align 4
  %8 = load i32, ptr %eqp_bdi, align 4
  %num_bds_table.i.i = getelementptr inbounds %struct.bdc_ep, ptr %3, i32 0, i32 10, i32 5
  %9 = ptrtoint ptr %num_bds_table.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_bds_table.i.i, align 4
  %div.i.i = sdiv i32 %8, %10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdi_to_tbi.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@setup_bd_list_xfr, %bdi_to_tbi.exit.i)) #9
          to label %if.then.i.i [label %bdi_to_tbi.exit.i], !srcloc !486

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bdc.i.i = getelementptr inbounds %struct.bdc_ep, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %bdc.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bdc.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.bdc, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i.i, align 4
  %15 = ptrtoint ptr %num_bds_table.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_bds_table.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdi_to_tbi.__UNIQUE_ID_ddebug307, ptr noundef %14, ptr noundef nonnull @.str.120, i32 noundef %8, i32 noundef %16, i32 noundef %div.i.i) #9
  br label %bdi_to_tbi.exit.i

bdi_to_tbi.exit.i:                                ; preds = %if.then.i.i, %entry
  %17 = ptrtoint ptr %num_bds_table.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_bds_table.i.i, align 4
  %mul.i = mul i32 %18, %div.i.i
  %sub.i = sub i32 %8, %mul.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdi_to_bd.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@setup_bd_list_xfr, %bdi_to_bd.exit)) #9
          to label %if.then.i [label %bdi_to_bd.exit], !srcloc !486

if.then.i:                                        ; preds = %bdi_to_tbi.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %bdc.i = getelementptr inbounds %struct.bdc_ep, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %bdc.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bdc.i, align 4
  %dev.i = getelementptr inbounds %struct.bdc, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdi_to_bd.__UNIQUE_ID_ddebug311, ptr noundef %22, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.125, i32 noundef %8, i32 noundef %sub.i) #9
  br label %bdi_to_bd.exit

bdi_to_bd.exit:                                   ; preds = %if.then.i, %bdi_to_tbi.exit.i
  %bd_list.i = getelementptr inbounds %struct.bdc_ep, ptr %3, i32 0, i32 10
  %23 = ptrtoint ptr %bd_list.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bd_list.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %24, i32 %div.i.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %29 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %length, align 4
  %desc = getelementptr inbounds %struct.bdc_ep, ptr %3, i32 0, i32 7
  %31 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %desc, align 4
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %wMaxPacketSize.i, align 1
  %35 = and i16 %34, -249
  %36 = tail call i16 @llvm.bswap.i16(i16 %35) #9
  %and.i = zext i16 %36 to i32
  %sub = add i32 %30, -1
  %add = add i32 %sub, %and.i
  %div = udiv i32 %add, %and.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @setup_bd_list_xfr.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@setup_bd_list_xfr, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !486

if.then:                                          ; preds = %bdi_to_bd.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr %struct.bdc_bd, ptr %28, i32 %sub.i
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.bdc_ep, ptr %3, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @setup_bd_list_xfr.__UNIQUE_ID_ddebug313, ptr noundef %38, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.121, ptr noundef %name, i32 noundef %num_bds, i32 noundef %div, i32 noundef %30, ptr noundef %add.ptr.i) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %bdi_to_bd.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_bds)
  %cmp225 = icmp sgt i32 %num_bds, 0
  br i1 %cmp225, label %for.body.lr.ph, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %shl = shl i32 %div, 4
  %or = or i32 %shl, -2080374784
  %ep_num = getelementptr inbounds %struct.bdc_ep, ptr %3, i32 0, i32 5
  %bdc.i.i180 = getelementptr inbounds %struct.bdc_ep, ptr %3, i32 0, i32 2
  %max_bdi.i = getelementptr inbounds %struct.bdc_ep, ptr %3, i32 0, i32 10, i32 2
  %dev85 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %bdi_to_bd.exit207.for.body_crit_edge, %for.body.lr.ph
  %buf_add.0228 = phi i32 [ %1, %for.body.lr.ph ], [ %add69, %bdi_to_bd.exit207.for.body_crit_edge ]
  %req_len.0227 = phi i32 [ %30, %for.body.lr.ph ], [ %req_len.1, %bdi_to_bd.exit207.for.body_crit_edge ]
  %bdnum.0226 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %bdi_to_bd.exit207.for.body_crit_edge ]
  %39 = ptrtoint ptr %dword3 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %dword3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bdnum.0226)
  %tobool16.not = icmp eq i32 %bdnum.0226, 0
  br i1 %tobool16.not, label %if.then17, label %for.body.if.end28_crit_edge

for.body.if.end28_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then17:                                        ; preds = %for.body
  %40 = ptrtoint ptr %dword3 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or, ptr %dword3, align 4
  %41 = ptrtoint ptr %ep_num to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ep_num, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %42)
  %cmp20 = icmp eq i8 %42, 1
  br i1 %cmp20, label %if.then22, label %if.then17.if.end28_crit_edge

if.then17.if.end28_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then22:                                        ; preds = %if.then17
  %call23 = call fastcc i32 @setup_first_bd_ep0(ptr noundef %bdc, ptr noundef %req, ptr noundef nonnull %dword3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then22.if.end28_crit_edge, label %if.then22.cleanup_crit_edge

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then22.if.end28_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.end28:                                         ; preds = %if.then22.if.end28_crit_edge, %if.then17.if.end28_crit_edge, %for.body.if.end28_crit_edge
  %dword2.0 = phi i32 [ 0, %for.body.if.end28_crit_edge ], [ 33554432, %if.then22.if.end28_crit_edge ], [ 33554432, %if.then17.if.end28_crit_edge ]
  %43 = ptrtoint ptr %ep1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ep1, align 4
  %dir = getelementptr inbounds %struct.bdc_ep, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %dir, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool30.not = icmp eq i8 %46, 0
  br i1 %tobool30.not, label %if.then31, label %if.end28.if.end33_crit_edge

if.end28.if.end33_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %dword3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dword3, align 4
  %or32 = or i32 %48, 536870912
  store i32 %or32, ptr %dword3, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end28.if.end33_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %req_len.0227)
  %cmp34 = icmp ugt i32 %req_len.0227, 65536
  br i1 %cmp34, label %if.then36, label %if.else

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %or37 = or i32 %dword2.0, 65536
  %sub38 = add i32 %req_len.0227, -65536
  br label %if.end42

if.else:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %or39 = or i32 %dword2.0, %req_len.0227
  %49 = ptrtoint ptr %dword3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dword3, align 4
  %or41 = or i32 %50, 1207959552
  store i32 %or41, ptr %dword3, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then36
  %req_len.1 = phi i32 [ %sub38, %if.then36 ], [ %req_len.0227, %if.else ]
  %dword2.1 = phi i32 [ %or37, %if.then36 ], [ %or39, %if.else ]
  %51 = ptrtoint ptr %eqp_bdi to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %eqp_bdi, align 4
  %53 = ptrtoint ptr %num_bds_table.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_bds_table.i.i, align 4
  %div.i.i179 = sdiv i32 %52, %54
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdi_to_tbi.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@setup_bd_list_xfr, %bdi_to_tbi.exit.i185)) #9
          to label %if.then.i.i182 [label %bdi_to_tbi.exit.i185], !srcloc !486

if.then.i.i182:                                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %bdc.i.i180 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bdc.i.i180, align 4
  %dev.i.i181 = getelementptr inbounds %struct.bdc, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %dev.i.i181 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i.i181, align 4
  %59 = ptrtoint ptr %num_bds_table.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_bds_table.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdi_to_tbi.__UNIQUE_ID_ddebug307, ptr noundef %58, ptr noundef nonnull @.str.120, i32 noundef %52, i32 noundef %60, i32 noundef %div.i.i179) #9
  br label %bdi_to_tbi.exit.i185

bdi_to_tbi.exit.i185:                             ; preds = %if.then.i.i182, %if.end42
  %61 = ptrtoint ptr %num_bds_table.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_bds_table.i.i, align 4
  %mul.i183 = mul i32 %62, %div.i.i179
  %sub.i184 = sub i32 %52, %mul.i183
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdi_to_bd.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@setup_bd_list_xfr, %bdi_to_bd.exit192)) #9
          to label %if.then.i188 [label %bdi_to_bd.exit192], !srcloc !486

if.then.i188:                                     ; preds = %bdi_to_tbi.exit.i185
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %bdc.i.i180 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bdc.i.i180, align 4
  %dev.i187 = getelementptr inbounds %struct.bdc, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %dev.i187 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i187, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdi_to_bd.__UNIQUE_ID_ddebug311, ptr noundef %66, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.125, i32 noundef %52, i32 noundef %sub.i184) #9
  br label %bdi_to_bd.exit192

bdi_to_bd.exit192:                                ; preds = %if.then.i188, %bdi_to_tbi.exit.i185
  %67 = ptrtoint ptr %bd_list.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bd_list.i, align 4
  %arrayidx.i190 = getelementptr ptr, ptr %68, i32 %div.i.i179
  %69 = ptrtoint ptr %arrayidx.i190 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.i190, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %add.ptr.i191 = getelementptr %struct.bdc_bd, ptr %72, i32 %sub.i184
  %tobool47.not = icmp eq ptr %add.ptr.i191, null
  br i1 %tobool47.not, label %do.end59, label %if.end61, !prof !492

do.end59:                                         ; preds = %bdi_to_bd.exit192
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %dev85 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev85, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.123) #12
  br label %cleanup

if.end61:                                         ; preds = %bdi_to_bd.exit192
  %75 = tail call i32 @llvm.bswap.i32(i32 %buf_add.0228)
  %76 = ptrtoint ptr %add.ptr.i191 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %add.ptr.i191, align 4
  %arrayidx64 = getelementptr [4 x i32], ptr %add.ptr.i191, i32 0, i32 1
  %77 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %arrayidx64, align 4
  %78 = tail call i32 @llvm.bswap.i32(i32 %dword2.1)
  %arrayidx66 = getelementptr [4 x i32], ptr %add.ptr.i191, i32 0, i32 2
  %79 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %arrayidx66, align 4
  %80 = ptrtoint ptr %dword3 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dword3, align 4
  %82 = tail call i32 @llvm.bswap.i32(i32 %81)
  %arrayidx68 = getelementptr [4 x i32], ptr %add.ptr.i191, i32 0, i32 3
  %83 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %arrayidx68, align 4
  %84 = ptrtoint ptr %eqp_bdi to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %eqp_bdi, align 4
  %inc.i = add i32 %85, 1
  %add.i = add i32 %85, 2
  %86 = ptrtoint ptr %num_bds_table.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %num_bds_table.i.i, align 4
  %rem.i = srem i32 %add.i, %87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.i = icmp eq i32 %rem.i, 0
  %spec.store.select.i = select i1 %cmp.i, i32 %add.i, i32 %inc.i
  %88 = ptrtoint ptr %max_bdi.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %max_bdi.i, align 4
  %add10.i = add i32 %89, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select.i, i32 %add10.i)
  %cmp11.i = icmp eq i32 %spec.store.select.i, %add10.i
  %spec.store.select22.i = select i1 %cmp11.i, i32 0, i32 %spec.store.select.i
  %90 = ptrtoint ptr %eqp_bdi to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %spec.store.select22.i, ptr %eqp_bdi, align 4
  %add69 = add i32 %buf_add.0228, 65536
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @setup_bd_list_xfr.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@setup_bd_list_xfr, %do.end91)) #9
          to label %if.then84 [label %do.end91], !srcloc !486

if.then84:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  %91 = ptrtoint ptr %dev85 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev85, align 4
  %conv86 = zext i32 %add69 to i64
  %93 = ptrtoint ptr %eqp_bdi to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %eqp_bdi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @setup_bd_list_xfr.__UNIQUE_ID_ddebug314, ptr noundef %92, ptr noundef nonnull @.str.124, i64 noundef %conv86, i32 noundef %req_len.1, ptr noundef nonnull %add.ptr.i191, i32 noundef %94) #9
  br label %do.end91

do.end91:                                         ; preds = %if.then84, %if.end61
  %95 = ptrtoint ptr %eqp_bdi to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %eqp_bdi, align 4
  %97 = ptrtoint ptr %num_bds_table.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %num_bds_table.i.i, align 4
  %div.i.i194 = sdiv i32 %96, %98
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdi_to_tbi.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@setup_bd_list_xfr, %bdi_to_tbi.exit.i200)) #9
          to label %if.then.i.i197 [label %bdi_to_tbi.exit.i200], !srcloc !486

if.then.i.i197:                                   ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #11
  %99 = ptrtoint ptr %bdc.i.i180 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %bdc.i.i180, align 4
  %dev.i.i196 = getelementptr inbounds %struct.bdc, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %dev.i.i196 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev.i.i196, align 4
  %103 = ptrtoint ptr %num_bds_table.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %num_bds_table.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdi_to_tbi.__UNIQUE_ID_ddebug307, ptr noundef %102, ptr noundef nonnull @.str.120, i32 noundef %96, i32 noundef %104, i32 noundef %div.i.i194) #9
  br label %bdi_to_tbi.exit.i200

bdi_to_tbi.exit.i200:                             ; preds = %if.then.i.i197, %do.end91
  %105 = ptrtoint ptr %num_bds_table.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %num_bds_table.i.i, align 4
  %mul.i198 = mul i32 %106, %div.i.i194
  %sub.i199 = sub i32 %96, %mul.i198
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdi_to_bd.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@setup_bd_list_xfr, %bdi_to_bd.exit207)) #9
          to label %if.then.i203 [label %bdi_to_bd.exit207], !srcloc !486

if.then.i203:                                     ; preds = %bdi_to_tbi.exit.i200
  call void @__sanitizer_cov_trace_pc() #11
  %107 = ptrtoint ptr %bdc.i.i180 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %bdc.i.i180, align 4
  %dev.i202 = getelementptr inbounds %struct.bdc, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %dev.i202 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev.i202, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdi_to_bd.__UNIQUE_ID_ddebug311, ptr noundef %110, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.125, i32 noundef %96, i32 noundef %sub.i199) #9
  br label %bdi_to_bd.exit207

bdi_to_bd.exit207:                                ; preds = %if.then.i203, %bdi_to_tbi.exit.i200
  %111 = ptrtoint ptr %bd_list.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %bd_list.i, align 4
  %arrayidx.i205 = getelementptr ptr, ptr %112, i32 %div.i.i194
  %113 = ptrtoint ptr %arrayidx.i205 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx.i205, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %114, align 4
  %arrayidx96 = getelementptr %struct.bdc_bd, ptr %116, i32 %sub.i199, i32 0, i32 3
  %117 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 128, ptr %arrayidx96, align 4
  %inc = add nuw nsw i32 %bdnum.0226, 1
  %exitcond.not = icmp eq i32 %inc, %num_bds
  br i1 %exitcond.not, label %bdi_to_bd.exit207.for.end_crit_edge, label %bdi_to_bd.exit207.for.body_crit_edge

bdi_to_bd.exit207.for.body_crit_edge:             ; preds = %bdi_to_bd.exit207
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

bdi_to_bd.exit207.for.end_crit_edge:              ; preds = %bdi_to_bd.exit207
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %bdi_to_bd.exit207.for.end_crit_edge, %do.end.for.end_crit_edge
  %118 = ptrtoint ptr %start_bdi to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %start_bdi, align 4
  %120 = ptrtoint ptr %num_bds_table.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %num_bds_table.i.i, align 4
  %div.i.i209 = sdiv i32 %119, %121
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdi_to_tbi.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@setup_bd_list_xfr, %bdi_to_tbi.exit.i215)) #9
          to label %if.then.i.i212 [label %bdi_to_tbi.exit.i215], !srcloc !486

if.then.i.i212:                                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %bdc.i.i210 = getelementptr inbounds %struct.bdc_ep, ptr %3, i32 0, i32 2
  %122 = ptrtoint ptr %bdc.i.i210 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %bdc.i.i210, align 4
  %dev.i.i211 = getelementptr inbounds %struct.bdc, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %dev.i.i211 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev.i.i211, align 4
  %126 = ptrtoint ptr %num_bds_table.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %num_bds_table.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdi_to_tbi.__UNIQUE_ID_ddebug307, ptr noundef %125, ptr noundef nonnull @.str.120, i32 noundef %119, i32 noundef %127, i32 noundef %div.i.i209) #9
  br label %bdi_to_tbi.exit.i215

bdi_to_tbi.exit.i215:                             ; preds = %if.then.i.i212, %for.end
  %128 = ptrtoint ptr %num_bds_table.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %num_bds_table.i.i, align 4
  %mul.i213 = mul i32 %129, %div.i.i209
  %sub.i214 = sub i32 %119, %mul.i213
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdi_to_bd.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@setup_bd_list_xfr, %bdi_to_bd.exit222)) #9
          to label %if.then.i218 [label %bdi_to_bd.exit222], !srcloc !486

if.then.i218:                                     ; preds = %bdi_to_tbi.exit.i215
  call void @__sanitizer_cov_trace_pc() #11
  %bdc.i216 = getelementptr inbounds %struct.bdc_ep, ptr %3, i32 0, i32 2
  %130 = ptrtoint ptr %bdc.i216 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %bdc.i216, align 4
  %dev.i217 = getelementptr inbounds %struct.bdc, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %dev.i217 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev.i217, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdi_to_bd.__UNIQUE_ID_ddebug311, ptr noundef %133, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.125, i32 noundef %119, i32 noundef %sub.i214) #9
  br label %bdi_to_bd.exit222

bdi_to_bd.exit222:                                ; preds = %if.then.i218, %bdi_to_tbi.exit.i215
  %134 = ptrtoint ptr %bd_list.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %bd_list.i, align 4
  %arrayidx.i220 = getelementptr ptr, ptr %135, i32 %div.i.i209
  %136 = ptrtoint ptr %arrayidx.i220 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx.i220, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %137, align 4
  %arrayidx100 = getelementptr %struct.bdc_bd, ptr %139, i32 %sub.i214, i32 0, i32 3
  %140 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx100, align 4
  %and101 = and i32 %141, -129
  store i32 %and101, ptr %arrayidx100, align 4
  %num_bds102 = getelementptr inbounds %struct.bdc_req, ptr %req, i32 0, i32 3, i32 3
  %142 = ptrtoint ptr %num_bds102 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %num_bds, ptr %num_bds102, align 4
  %143 = ptrtoint ptr %eqp_bdi to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %eqp_bdi, align 4
  %next_hwd_bdi = getelementptr inbounds %struct.bdc_req, ptr %req, i32 0, i32 3, i32 2
  %145 = ptrtoint ptr %next_hwd_bdi to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %next_hwd_bdi, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !495
  tail call void @arm_heavy_mb() #9
  br label %cleanup

cleanup:                                          ; preds = %bdi_to_bd.exit222, %do.end59, %if.then22.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end59 ], [ 0, %bdi_to_bd.exit222 ], [ %call23, %if.then22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dword3) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @bdi_to_bd(ptr nocapture noundef readonly %ep, i32 noundef %bdi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num_bds_table.i = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10, i32 5
  %0 = ptrtoint ptr %num_bds_table.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_bds_table.i, align 4
  %div.i = sdiv i32 %bdi, %1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdi_to_tbi.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdi_to_bd, %bdi_to_tbi.exit)) #9
          to label %if.then.i [label %bdi_to_tbi.exit], !srcloc !486

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bdc.i = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 2
  %2 = ptrtoint ptr %bdc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdc.i, align 4
  %dev.i = getelementptr inbounds %struct.bdc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %6 = ptrtoint ptr %num_bds_table.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_bds_table.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdi_to_tbi.__UNIQUE_ID_ddebug307, ptr noundef %5, ptr noundef nonnull @.str.120, i32 noundef %bdi, i32 noundef %7, i32 noundef %div.i) #9
  br label %bdi_to_tbi.exit

bdi_to_tbi.exit:                                  ; preds = %if.then.i, %entry
  %8 = ptrtoint ptr %num_bds_table.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_bds_table.i, align 4
  %mul = mul i32 %9, %div.i
  %sub = sub i32 %bdi, %mul
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdi_to_bd.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdi_to_bd, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !486

if.then:                                          ; preds = %bdi_to_tbi.exit
  call void @__sanitizer_cov_trace_pc() #11
  %bdc = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 2
  %10 = ptrtoint ptr %bdc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bdc, align 4
  %dev = getelementptr inbounds %struct.bdc, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdi_to_bd.__UNIQUE_ID_ddebug311, ptr noundef %13, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.125, i32 noundef %bdi, i32 noundef %sub) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %bdi_to_tbi.exit
  %bd_list = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10
  %14 = ptrtoint ptr %bd_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bd_list, align 4
  %arrayidx = getelementptr ptr, ptr %15, i32 %div.i
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %add.ptr = getelementptr %struct.bdc_bd, ptr %19, i32 %sub
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @setup_first_bd_ep0(ptr nocapture noundef %bdc, ptr nocapture noundef readonly %req, ptr nocapture noundef %dword3) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ep = getelementptr inbounds %struct.bdc_req, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %dir = getelementptr inbounds %struct.bdc_ep, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dir to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %dir, align 1
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %3 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %length, align 4
  %ep0_state = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 15
  %5 = ptrtoint ptr %ep0_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ep0_state, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.200)
  switch i32 %6, label %do.end37 [
    i32 1, label %sw.bb
    i32 3, label %sw.bb23
  ]

sw.bb:                                            ; preds = %entry
  %8 = ptrtoint ptr %dword3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dword3, align 4
  %or = or i32 %9, 1
  store i32 %or, ptr %dword3, align 4
  %setup_pkt = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 12
  %10 = ptrtoint ptr %setup_pkt to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %setup_pkt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %tobool.not = icmp sgt i8 %11, -1
  br i1 %tobool.not, label %sw.bb.if.end_crit_edge, label %if.then

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %or1 = or i32 %9, 33554433
  %12 = ptrtoint ptr %dword3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or1, ptr %dword3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %wValue3 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 12, i32 2
  %13 = ptrtoint ptr %wValue3 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %wValue3, align 2
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %conv4 = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv4)
  %cmp = icmp ult i32 %4, %conv4
  br i1 %cmp, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %ep0 = getelementptr inbounds %struct.usb_gadget, ptr %bdc, i32 0, i32 3
  %16 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ep0, align 4
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %18, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  %rem = urem i32 %4, %bf.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp6 = icmp eq i32 %rem, 0
  br i1 %cmp6, label %do.body, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @setup_first_bd_ep0.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@setup_first_bd_ep0, %do.end)) #9
          to label %if.then13 [label %do.end], !srcloc !486

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %21 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ep0, align 4
  %maxpacket17 = getelementptr inbounds %struct.usb_ep, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %maxpacket17 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 7)
  %bf.load18 = load i56, ptr %maxpacket17, align 2
  %bf.lshr19 = lshr i56 %bf.load18, 40
  %bf.cast20 = trunc i56 %bf.lshr19 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @setup_first_bd_ep0.__UNIQUE_ID_ddebug312, ptr noundef %20, ptr noundef nonnull @.str.128, i32 noundef %conv4, i32 noundef %4, i32 noundef %bf.cast20) #9
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  %zlp_needed = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 17
  %24 = ptrtoint ptr %zlp_needed to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %zlp_needed, align 1
  br label %cleanup

sw.bb23:                                          ; preds = %entry
  %25 = ptrtoint ptr %dword3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dword3, align 4
  %or24 = or i32 %26, 2
  store i32 %or24, ptr %dword3, align 4
  %wLength = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 12, i32 4
  %27 = ptrtoint ptr %wLength to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %wLength, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool26.not = icmp eq i16 %28, 0
  br i1 %tobool26.not, label %sw.bb23.if.then32_crit_edge, label %lor.lhs.false

sw.bb23.if.then32_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32

lor.lhs.false:                                    ; preds = %sw.bb23
  %setup_pkt25 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 12
  %29 = ptrtoint ptr %setup_pkt25 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %setup_pkt25, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %30)
  %tobool31.not = icmp sgt i8 %30, -1
  br i1 %tobool31.not, label %lor.lhs.false.if.then32_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.if.then32_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32

if.then32:                                        ; preds = %lor.lhs.false.if.then32_crit_edge, %sw.bb23.if.then32_crit_edge
  %or33 = or i32 %26, 33554434
  %31 = ptrtoint ptr %dword3 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or33, ptr %dword3, align 4
  br label %cleanup

do.end37:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev38 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %32 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev38, align 4
  %arrayidx = getelementptr [6 x ptr], ptr @ep0_state_string, i32 0, i32 %6
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.129, ptr noundef %35) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %if.then32, %lor.lhs.false.cleanup_crit_edge, %do.end, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end37 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.then32 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ep0_set_sel_cmpl(ptr nocapture noundef %_ep, ptr nocapture noundef %_req) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdc_dbg_srr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bd_add_to_bdi(ptr nocapture noundef readonly %ep, i32 noundef %bd_dma_addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_list1 = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10
  %bdc2 = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 2
  %0 = ptrtoint ptr %bdc2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdc2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bd_add_to_bdi.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bd_add_to_bdi, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !486

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %conv = zext i32 %bd_dma_addr to i64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bd_add_to_bdi.__UNIQUE_ID_ddebug305, ptr noundef %3, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.141, i64 noundef %conv) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %num_tabs = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10, i32 1
  %4 = ptrtoint ptr %num_tabs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_tabs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp86 = icmp sgt i32 %5, 0
  br i1 %cmp86, label %for.body.lr.ph, label %do.end.do.end47_crit_edge

do.end.do.end47_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end47

for.body.lr.ph:                                   ; preds = %do.end
  %num_bds_table = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10, i32 5
  %dev23 = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %tbi.087 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %bd_list1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bd_list1, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 %tbi.087
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %dma = getelementptr inbounds %struct.bd_table, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma, align 4
  %12 = ptrtoint ptr %num_bds_table to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_bds_table, align 4
  %sub = shl i32 %13, 4
  %mul = add i32 %11, -16
  %add = add i32 %mul, %sub
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bd_add_to_bdi.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bd_add_to_bdi, %do.end28)) #9
          to label %if.then22 [label %do.end28], !srcloc !486

if.then22:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev23, align 4
  %conv24 = zext i32 %11 to i64
  %conv25 = zext i32 %add to i64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bd_add_to_bdi.__UNIQUE_ID_ddebug306, ptr noundef %15, ptr noundef nonnull @.str.143, i64 noundef %conv24, i64 noundef %conv25) #9
  br label %do.end28

do.end28:                                         ; preds = %if.then22, %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %bd_dma_addr)
  %cmp29.not = icmp ugt i32 %11, %bd_dma_addr
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %bd_dma_addr)
  %cmp31.not = icmp ult i32 %add, %bd_dma_addr
  %or.cond = select i1 %cmp29.not, i1 true, i1 %cmp31.not
  br i1 %or.cond, label %for.inc, label %if.end49

for.inc:                                          ; preds = %do.end28
  %inc = add nuw nsw i32 %tbi.087, 1
  %16 = ptrtoint ptr %num_tabs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_tabs, align 4
  %cmp = icmp slt i32 %inc, %17
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.do.end47_crit_edge

for.inc.do.end47_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end47

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.end47:                                         ; preds = %for.inc.do.end47_crit_edge, %do.end.do.end47_crit_edge
  %dev48 = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev48, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.141) #12
  br label %cleanup

if.end49:                                         ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #11
  %sub50 = sub i32 %bd_dma_addr, %11
  %div77 = lshr i32 %sub50, 4
  %20 = ptrtoint ptr %num_bds_table to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_bds_table, align 4
  %mul52 = mul i32 %21, %tbi.087
  %add53 = add i32 %mul52, %div77
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %do.end47
  %retval.0 = phi i32 [ -22, %do.end47 ], [ %add53, %if.end49 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bdc_set_test_mode(ptr nocapture noundef readonly %bdc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 8
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 44
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !493
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !494
  %3 = and i32 %2, -241
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_set_test_mode.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_set_test_mode, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !486

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_set_test_mode.__UNIQUE_ID_ddebug330, ptr noundef %6, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.151) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %test_mode = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 25
  %7 = ptrtoint ptr %test_mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %test_mode, align 8
  %.off = add i8 %8, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %.off)
  %switch = icmp ult i8 %.off, 5
  br i1 %switch, label %sw.bb, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  %conv6 = zext i8 %8 to i32
  %shl = shl nuw nsw i32 %conv6, 28
  %or = or i32 %shl, %4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_set_test_mode.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_set_test_mode, %do.end25)) #9
          to label %if.then21 [label %do.end25], !srcloc !486

if.then21:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %dev22 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %9 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev22, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_set_test_mode.__UNIQUE_ID_ddebug331, ptr noundef %10, ptr noundef nonnull @.str.152, i32 noundef %or) #9
  br label %do.end25

do.end25:                                         ; preds = %if.then21, %sw.bb
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @arm_heavy_mb() #9
  %13 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  %add.ptr.i38 = getelementptr i8, ptr %12, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 %13) #9, !srcloc !489
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end25 ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdc_gadget_ep_enable(ptr noundef %_ep, ptr noundef %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  %tobool1.not = icmp eq ptr %desc, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.do.body_crit_edge, label %lor.lhs.false2

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false2:                                   ; preds = %entry
  %bDescriptorType = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bDescriptorType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %cmp.not = icmp eq i8 %1, 5
  br i1 %cmp.not, label %if.end9, label %lor.lhs.false2.do.body_crit_edge

lor.lhs.false2.do.body_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false2.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_gadget_ep_enable.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_gadget_ep_enable, %cleanup)) #9
          to label %if.then8 [label %cleanup], !srcloc !486

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bdc_gadget_ep_enable.__UNIQUE_ID_ddebug380, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.162) #9
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false2
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 4
  %2 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %wMaxPacketSize, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool10.not = icmp eq i16 %3, 0
  br i1 %tobool10.not, label %do.body12, label %if.end30

do.body12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_gadget_ep_enable.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_gadget_ep_enable, %cleanup)) #9
          to label %if.then26 [label %cleanup], !srcloc !486

if.then26:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bdc_gadget_ep_enable.__UNIQUE_ID_ddebug381, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.162) #9
  br label %cleanup

if.end30:                                         ; preds = %if.end9
  %bdc32 = getelementptr inbounds %struct.bdc_ep, ptr %_ep, i32 0, i32 2
  %4 = ptrtoint ptr %bdc32 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bdc32, align 4
  %bdc_ep_array = getelementptr inbounds %struct.bdc, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %bdc_ep_array to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bdc_ep_array, align 8
  %arrayidx = getelementptr ptr, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %cmp33 = icmp eq ptr %9, %_ep
  br i1 %cmp33, label %if.end30.cleanup_crit_edge, label %if.end36

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end36:                                         ; preds = %if.end30
  %gadget_driver = getelementptr inbounds %struct.bdc, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gadget_driver, align 8
  %tobool37.not = icmp eq ptr %11, null
  br i1 %tobool37.not, label %if.end36.cleanup_crit_edge, label %lor.lhs.false38

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false38:                                  ; preds = %if.end36
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 5
  %12 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp39 = icmp eq i32 %13, 0
  br i1 %cmp39, label %lor.lhs.false38.cleanup_crit_edge, label %do.body43

lor.lhs.false38.cleanup_crit_edge:                ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body43:                                        ; preds = %lor.lhs.false38
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_gadget_ep_enable.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_gadget_ep_enable, %do.body62)) #9
          to label %if.then57 [label %do.body62], !srcloc !486

if.then57:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.bdc, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.bdc_ep, ptr %_ep, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_gadget_ep_enable.__UNIQUE_ID_ddebug382, ptr noundef %15, ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.162, ptr noundef %name) #9
  br label %do.body62

do.body62:                                        ; preds = %if.then57, %do.body43
  %lock = getelementptr inbounds %struct.bdc, ptr %5, i32 0, i32 3
  %call67 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %desc72 = getelementptr inbounds %struct.bdc_ep, ptr %_ep, i32 0, i32 7
  %16 = ptrtoint ptr %desc72 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %desc, ptr %desc72, align 4
  %comp_desc = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 10
  %17 = ptrtoint ptr %comp_desc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %comp_desc, align 4
  %comp_desc73 = getelementptr inbounds %struct.bdc_ep, ptr %_ep, i32 0, i32 6
  %19 = ptrtoint ptr %comp_desc73 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %comp_desc73, align 4
  %call74 = tail call i32 @bdc_ep_enable(ptr noundef nonnull %_ep)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call67) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body62, %lor.lhs.false38.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.then26, %do.body12, %if.then8, %do.body
  %retval.0 = phi i32 [ %call74, %do.body62 ], [ -22, %if.then8 ], [ -22, %if.then26 ], [ -22, %if.end30.cleanup_crit_edge ], [ -108, %lor.lhs.false38.cleanup_crit_edge ], [ -108, %if.end36.cleanup_crit_edge ], [ -22, %do.body ], [ -22, %do.body12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdc_gadget_ep_disable(ptr noundef %_ep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_gadget_ep_disable.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_gadget_ep_disable, %cleanup)) #9
          to label %if.then5 [label %cleanup], !srcloc !486

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bdc_gadget_ep_disable.__UNIQUE_ID_ddebug383, ptr noundef nonnull @.str.167) #9
  br label %cleanup

if.end6:                                          ; preds = %entry
  %bdc8 = getelementptr inbounds %struct.bdc_ep, ptr %_ep, i32 0, i32 2
  %0 = ptrtoint ptr %bdc8 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdc8, align 4
  %bdc_ep_array = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %bdc_ep_array to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdc_ep_array, align 8
  %arrayidx = getelementptr ptr, ptr %3, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %5, %_ep
  br i1 %cmp, label %do.end12, label %do.body14

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.166) #12
  br label %cleanup

do.body14:                                        ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_gadget_ep_disable.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_gadget_ep_disable, %do.end33)) #9
          to label %if.then28 [label %do.end33], !srcloc !486

if.then28:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  %dev29 = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev29, align 4
  %name = getelementptr inbounds %struct.bdc_ep, ptr %_ep, i32 0, i32 9
  %flags30 = getelementptr inbounds %struct.bdc_ep, ptr %_ep, i32 0, i32 8
  %10 = ptrtoint ptr %flags30 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags30, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_gadget_ep_disable.__UNIQUE_ID_ddebug384, ptr noundef %9, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.166, ptr noundef %name, i32 noundef %11) #9
  br label %do.end33

do.end33:                                         ; preds = %if.then28, %do.body14
  %flags34 = getelementptr inbounds %struct.bdc_ep, ptr %_ep, i32 0, i32 8
  %12 = ptrtoint ptr %flags34 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags34, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool35.not = icmp eq i32 %and, 0
  br i1 %tobool35.not, label %if.then36, label %do.body48

if.then36:                                        ; preds = %do.end33
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp37.not = icmp eq i32 %15, 0
  br i1 %cmp37.not, label %if.then36.cleanup_crit_edge, label %do.end41

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end41:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  %dev42 = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev42, align 4
  %name43 = getelementptr inbounds %struct.bdc_ep, ptr %_ep, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.171, ptr noundef %name43) #12
  br label %cleanup

do.body48:                                        ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 3
  %call52 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %call57 = tail call i32 @bdc_ep_disable(ptr noundef nonnull %_ep)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call52) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body48, %do.end41, %if.then36.cleanup_crit_edge, %do.end12, %if.then5, %do.body
  %retval.0 = phi i32 [ -22, %do.end12 ], [ %call57, %do.body48 ], [ -22, %if.then5 ], [ 0, %do.end41 ], [ 0, %if.then36.cleanup_crit_edge ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bdc_gadget_alloc_request(ptr noundef %_ep, i32 noundef %gfp_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %or.i = or i32 %gfp_flags, 256
  %and.i.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i20.i.i, !prof !487

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit

if.end.i20.i.i:                                   ; preds = %entry
  %and2.i.i.i = and i32 %gfp_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i20.i.i.kzalloc.exit_crit_edge

if.end.i20.i.i.kzalloc.exit_crit_edge:            ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and6.i.i.i = and i32 %gfp_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i20.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i21.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i20.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 88) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ep1 = getelementptr inbounds %struct.bdc_req, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %ep1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %_ep, ptr %ep1, align 8
  %ep_num = getelementptr inbounds %struct.bdc_ep, ptr %_ep, i32 0, i32 5
  %3 = ptrtoint ptr %ep_num to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ep_num, align 2
  %conv = zext i8 %4 to i32
  %epnum = getelementptr inbounds %struct.bdc_req, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %epnum to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %epnum, align 4
  %dma = getelementptr inbounds %struct.usb_request, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %dma, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_gadget_alloc_request.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_gadget_alloc_request, %cleanup)) #9
          to label %if.then8 [label %cleanup], !srcloc !486

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %bdc = getelementptr inbounds %struct.bdc_ep, ptr %_ep, i32 0, i32 2
  %7 = ptrtoint ptr %bdc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bdc, align 4
  %dev = getelementptr inbounds %struct.bdc, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.bdc_ep, ptr %_ep, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_gadget_alloc_request.__UNIQUE_ID_ddebug379, ptr noundef %10, ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.173, ptr noundef %name, ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end, %kzalloc.exit.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bdc_gadget_free_request(ptr nocapture noundef readnone %_ep, ptr noundef %_req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %_req) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdc_gadget_ep_queue(ptr noundef %_ep, ptr noundef %_req, i32 noundef %gfp_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %desc = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 9
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %tobool2.not = icmp eq ptr %_req, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false3:                                   ; preds = %if.end
  %complete = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 7
  %2 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %complete, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %lor.lhs.false3.cleanup_crit_edge, label %lor.lhs.false5

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %4 = ptrtoint ptr %_req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_req, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %lor.lhs.false5.cleanup_crit_edge, label %if.end8

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false5
  %bdc12 = getelementptr inbounds %struct.bdc_ep, ptr %_ep, i32 0, i32 2
  %6 = ptrtoint ptr %bdc12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bdc12, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_gadget_ep_queue.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_gadget_ep_queue, %do.body20)) #9
          to label %if.then18 [label %do.body20], !srcloc !486

if.then18:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.bdc, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_gadget_ep_queue.__UNIQUE_ID_ddebug375, ptr noundef %9, ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.175, ptr noundef nonnull %_ep, ptr noundef nonnull %_req) #9
  br label %do.body20

do.body20:                                        ; preds = %if.then18, %if.end8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_gadget_ep_queue.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_gadget_ep_queue, %do.end38)) #9
          to label %if.then34 [label %do.end38], !srcloc !486

if.then34:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  %dev35 = getelementptr inbounds %struct.bdc, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev35, align 4
  %name = getelementptr inbounds %struct.bdc_ep, ptr %_ep, i32 0, i32 9
  %length = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 1
  %12 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length, align 4
  %zero = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 6
  %14 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load = load i32, ptr %zero, align 4
  %bf.lshr = lshr i32 %bf.load, 13
  %bf.clear = and i32 %bf.lshr, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_gadget_ep_queue.__UNIQUE_ID_ddebug376, ptr noundef %11, ptr noundef nonnull @.str.177, ptr noundef nonnull %_req, ptr noundef %name, i32 noundef %13, i32 noundef %bf.clear) #9
  br label %do.end38

do.end38:                                         ; preds = %if.then34, %do.body20
  %15 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %desc, align 4
  %tobool40.not = icmp eq ptr %16, null
  br i1 %tobool40.not, label %do.end44, label %if.end48

do.end44:                                         ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #11
  %dev45 = getelementptr inbounds %struct.bdc, ptr %7, i32 0, i32 2
  %17 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev45, align 4
  %name46 = getelementptr inbounds %struct.bdc_ep, ptr %_ep, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.178, ptr noundef nonnull %_req, ptr noundef %name46) #12
  br label %cleanup

if.end48:                                         ; preds = %do.end38
  %length49 = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 1
  %19 = ptrtoint ptr %length49 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %20)
  %cmp = icmp ugt i32 %20, 16777215
  br i1 %cmp, label %do.end53, label %do.body58

do.end53:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %dev54 = getelementptr inbounds %struct.bdc, ptr %7, i32 0, i32 2
  %21 = ptrtoint ptr %dev54 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev54, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.180, i32 noundef 16777215, i32 noundef %20) #12
  br label %cleanup

do.body58:                                        ; preds = %if.end48
  %lock = getelementptr inbounds %struct.bdc, ptr %7, i32 0, i32 3
  %call62 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %bdc_ep_array = getelementptr inbounds %struct.bdc, ptr %7, i32 0, i32 7
  %23 = ptrtoint ptr %bdc_ep_array to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bdc_ep_array, align 8
  %arrayidx = getelementptr ptr, ptr %24, i32 1
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  %cmp67 = icmp eq ptr %26, %_ep
  br i1 %cmp67, label %if.then69, label %lor.lhs.false.i

if.then69:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #11
  %call70 = tail call fastcc i32 @ep0_queue(ptr noundef nonnull %_ep, ptr noundef nonnull %_req)
  br label %if.end72

lor.lhs.false.i:                                  ; preds = %do.body58
  %27 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %desc, align 4
  %tobool1.not.i = icmp eq ptr %28, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end72_crit_edge, label %if.end.i

lor.lhs.false.i.if.end72_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.end.i:                                         ; preds = %lor.lhs.false.i
  %29 = ptrtoint ptr %bdc12 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bdc12, align 4
  %actual.i = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 12
  %31 = ptrtoint ptr %actual.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %actual.i, align 4
  %status.i = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 11
  %32 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -115, ptr %status.i, align 4
  %ep_num.i = getelementptr inbounds %struct.bdc_ep, ptr %_ep, i32 0, i32 5
  %33 = ptrtoint ptr %ep_num.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ep_num.i, align 2
  %conv.i = zext i8 %34 to i32
  %epnum.i = getelementptr inbounds %struct.bdc_req, ptr %_req, i32 0, i32 4
  %35 = ptrtoint ptr %epnum.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv.i, ptr %epnum.i, align 4
  %dir.i = getelementptr inbounds %struct.bdc_ep, ptr %_ep, i32 0, i32 4
  %36 = ptrtoint ptr %dir.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %dir.i, align 1
  %conv5.i = zext i8 %37 to i32
  %call.i = tail call i32 @usb_gadget_map_request(ptr noundef %30, ptr noundef nonnull %_req, i32 noundef %conv5.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.bdc, ptr %30, i32 0, i32 2
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.182) #12
  br label %if.end72

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call9.i = tail call fastcc i32 @bdc_queue_xfr(ptr noundef %30, ptr noundef nonnull %_req) #9
  br label %if.end72

if.end72:                                         ; preds = %if.end8.i, %do.end.i, %lor.lhs.false.i.if.end72_crit_edge, %if.then69
  %ret.0 = phi i32 [ %call70, %if.then69 ], [ %call.i, %do.end.i ], [ %call9.i, %if.end8.i ], [ -22, %lor.lhs.false.i.if.end72_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call62) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %do.end53, %do.end44, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %do.end53 ], [ %ret.0, %if.end72 ], [ -108, %do.end44 ], [ -108, %lor.lhs.false.cleanup_crit_edge ], [ -108, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false5.cleanup_crit_edge ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdc_gadget_ep_dequeue(ptr noundef %_ep, ptr noundef %_req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  %tobool1.not = icmp eq ptr %_req, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %bdc5 = getelementptr inbounds %struct.bdc_ep, ptr %_ep, i32 0, i32 2
  %0 = ptrtoint ptr %bdc5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdc5, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_gadget_ep_dequeue.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_gadget_ep_dequeue, %do.end)) #9
          to label %if.then11 [label %do.end], !srcloc !486

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.bdc_ep, ptr %_ep, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_gadget_ep_dequeue.__UNIQUE_ID_ddebug377, ptr noundef %3, ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.184, ptr noundef %name, ptr noundef nonnull %_req) #9
  br label %do.end

do.end:                                           ; preds = %if.then11, %if.end
  tail call void @bdc_dbg_bd_list(ptr noundef %1, ptr noundef nonnull %_ep) #9
  %lock = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 3
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %queue = getelementptr inbounds %struct.bdc_ep, ptr %_ep, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %do.end
  %.pn.in = phi ptr [ %queue, %do.end ], [ %.pn, %for.cond.for.cond_crit_edge ]
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in, align 4
  %req.0 = getelementptr i8, ptr %.pn, i32 -56
  %cmp27.not = icmp eq ptr %.pn, %queue
  %cmp31 = icmp eq ptr %req.0, %_req
  %or.cond84 = or i1 %cmp27.not, %cmp31
  br i1 %or.cond84, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br i1 %cmp31, label %if.end49, label %if.then43

if.then43:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call17) #9
  %dev48 = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev48, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.185) #12
  br label %cleanup

if.end49:                                         ; preds = %for.end
  %call50 = tail call fastcc i32 @ep_dequeue(ptr noundef nonnull %_ep, ptr noundef %_req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end49.err_crit_edge

if.end49.err_crit_edge:                           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end53:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @bdc_req_complete(ptr noundef nonnull %_ep, ptr noundef %_req, i32 noundef -104)
  br label %err

err:                                              ; preds = %if.end53, %if.end49.err_crit_edge
  %ret.0 = phi i32 [ 0, %if.end53 ], [ -95, %if.end49.err_crit_edge ]
  tail call void @bdc_dbg_bd_list(ptr noundef %1, ptr noundef nonnull %_ep) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call17) #9
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then43, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then43 ], [ %ret.0, %err ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdc_gadget_ep_set_halt(ptr noundef %_ep, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bdc1 = getelementptr inbounds %struct.bdc_ep, ptr %_ep, i32 0, i32 2
  %0 = ptrtoint ptr %bdc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdc1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_gadget_ep_set_halt.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_gadget_ep_set_halt, %do.body7)) #9
          to label %if.then [label %do.body7], !srcloc !486

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.bdc_ep, ptr %_ep, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_gadget_ep_set_halt.__UNIQUE_ID_ddebug378, ptr noundef %3, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.191, ptr noundef %name, i32 noundef %value) #9
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 3
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %desc = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 9
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 4
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bmAttributes.i, align 1
  %8 = and i8 %7, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp.i.not = icmp eq i8 %8, 1
  br i1 %cmp.i.not, label %do.body7.if.end24_crit_edge, label %if.else

do.body7.if.end24_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.else:                                          ; preds = %do.body7
  %queue = getelementptr inbounds %struct.bdc_ep, ptr %_ep, i32 0, i32 1
  %9 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %queue, align 4
  %cmp.i33.not = icmp eq ptr %10, %queue
  br i1 %cmp.i33.not, label %if.else21, label %if.else.if.end24_crit_edge

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.else21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call22 = tail call fastcc i32 @ep_set_halt(ptr noundef %_ep, i32 noundef %value)
  br label %if.end24

if.end24:                                         ; preds = %if.else21, %if.else.if.end24_crit_edge, %do.body7.if.end24_crit_edge
  %ret.0 = phi i32 [ %call22, %if.else21 ], [ -22, %do.body7.if.end24_crit_edge ], [ -11, %if.else.if.end24_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ep_dequeue(ptr noundef %ep, ptr noundef readonly %req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bdc1 = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 2
  %0 = ptrtoint ptr %bdc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdc1, align 4
  %bd_list = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10
  %eqp_bdi2 = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10, i32 3
  %2 = ptrtoint ptr %eqp_bdi2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eqp_bdi2, align 4
  %sub = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %max_bdi = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10, i32 2
  %4 = ptrtoint ptr %max_bdi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_bdi, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %eqp_bdi.0 = phi i32 [ %5, %if.then ], [ %sub, %entry.if.end_crit_edge ]
  %start_bdi4 = getelementptr inbounds %struct.bdc_req, ptr %req, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %start_bdi4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %start_bdi4, align 4
  %next_hwd_bdi = getelementptr inbounds %struct.bdc_req, ptr %req, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %next_hwd_bdi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %next_hwd_bdi, align 4
  %sub.i = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %max_bdi.i = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10, i32 2
  %10 = ptrtoint ptr %max_bdi.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_bdi.i, align 4
  %sub1.i = add i32 %11, -1
  br label %find_end_bdi.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %num_bds_table.i = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10, i32 5
  %12 = ptrtoint ptr %num_bds_table.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_bds_table.i, align 4
  %sub3.i = add i32 %13, -1
  %rem.i = srem i32 %sub.i, %sub3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp4.i = icmp eq i32 %rem.i, 0
  %dec.i = add i32 %9, -2
  %spec.select.i = select i1 %cmp4.i, i32 %dec.i, i32 %sub.i
  br label %find_end_bdi.exit

find_end_bdi.exit:                                ; preds = %if.else.i, %if.then.i
  %end_bdi.0.i = phi i32 [ %sub1.i, %if.then.i ], [ %spec.select.i, %if.else.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep_dequeue.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep_dequeue, %do.body12)) #9
          to label %if.then10 [label %do.body12], !srcloc !486

if.then10:                                        ; preds = %find_end_bdi.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep_dequeue.__UNIQUE_ID_ddebug322, ptr noundef %15, ptr noundef nonnull @.str.187, ptr noundef nonnull @.str.186, ptr noundef %name, i32 noundef %7, i32 noundef %end_bdi.0.i) #9
  br label %do.body12

do.body12:                                        ; preds = %if.then10, %find_end_bdi.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep_dequeue.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep_dequeue, %do.end30)) #9
          to label %if.then26 [label %do.end30], !srcloc !486

if.then26:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  %dev27 = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev27, align 4
  %desc = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 9
  %18 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %desc, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep_dequeue.__UNIQUE_ID_ddebug323, ptr noundef %17, ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.186, ptr noundef %ep, ptr noundef %19) #9
  br label %do.end30

do.end30:                                         ; preds = %if.then26, %do.body12
  %regs = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 32
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !493
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !494
  %23 = and i32 %22, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool32.not = icmp eq i32 %23, 0
  br i1 %tobool32.not, label %if.then33, label %do.end30.cleanup_crit_edge

do.end30.cleanup_crit_edge:                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then33:                                        ; preds = %do.end30
  %ep_num = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 5
  %24 = ptrtoint ptr %ep_num to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ep_num, align 2
  %conv = zext i8 %25 to i32
  %call34 = tail call i32 @bdc_stop_ep(ptr noundef %1, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end38, label %if.then33.cleanup_crit_edge

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end38:                                         ; preds = %if.then33
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %add.ptr.i239 = getelementptr i8, ptr %27, i32 96
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i239) #9, !srcloc !493
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !494
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 4
  %add.ptr.i240 = getelementptr i8, ptr %31, i32 100
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i240) #9, !srcloc !493
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !494
  %call46 = tail call fastcc i32 @bd_add_to_bdi(ptr noundef %ep, i32 noundef %29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.end38.cleanup_crit_edge, label %if.end50

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end50:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_cmp4(i32 %call46, i32 %eqp_bdi.0)
  %cmp51 = icmp sgt i32 %call46, %eqp_bdi.0
  br i1 %cmp51, label %if.then53, label %if.else68

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %call46)
  %cmp54.not = icmp slt i32 %7, %call46
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %eqp_bdi.0)
  %cmp56.not = icmp sgt i32 %7, %eqp_bdi.0
  %or.cond = select i1 %cmp54.not, i1 %cmp56.not, i1 false
  br i1 %or.cond, label %if.else59, label %if.then53.do.body79_crit_edge

if.then53.do.body79_crit_edge:                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body79

if.else59:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_cmp4(i32 %end_bdi.0.i, i32 %call46)
  %cmp60.not = icmp sge i32 %end_bdi.0.i, %call46
  call void @__sanitizer_cov_trace_cmp4(i32 %end_bdi.0.i, i32 %eqp_bdi.0)
  %cmp63.not = icmp sle i32 %end_bdi.0.i, %eqp_bdi.0
  %or.cond230 = select i1 %cmp60.not, i1 true, i1 %cmp63.not
  br label %do.body79

if.else68:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %call46)
  %cmp69.not = icmp sge i32 %7, %call46
  call void @__sanitizer_cov_trace_cmp4(i32 %end_bdi.0.i, i32 %call46)
  %cmp73.not = icmp sge i32 %end_bdi.0.i, %call46
  %spec.select = select i1 %cmp69.not, i1 true, i1 %cmp73.not
  br label %do.body79

do.body79:                                        ; preds = %if.else68, %if.else59, %if.then53.do.body79_crit_edge
  %end_pending.0.off0 = phi i1 [ true, %if.then53.do.body79_crit_edge ], [ %or.cond230, %if.else59 ], [ %spec.select, %if.else68 ]
  %start_pending.0.off0 = phi i1 [ true, %if.then53.do.body79_crit_edge ], [ false, %if.else59 ], [ %cmp69.not, %if.else68 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep_dequeue.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep_dequeue, %do.end101)) #9
          to label %if.then93 [label %do.end101], !srcloc !486

if.then93:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #11
  %dev94 = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 2
  %33 = ptrtoint ptr %dev94 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev94, align 4
  %conv96 = zext i1 %start_pending.0.off0 to i32
  %conv98 = zext i1 %end_pending.0.off0 to i32
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 5
  %35 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %speed, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep_dequeue.__UNIQUE_ID_ddebug324, ptr noundef %34, ptr noundef nonnull @.str.189, i32 noundef %conv96, i32 noundef %conv98, i32 noundef %36) #9
  br label %do.end101

do.end101:                                        ; preds = %if.then93, %do.body79
  %brmerge = select i1 %start_pending.0.off0, i1 true, i1 %end_pending.0.off0
  br i1 %brmerge, label %if.end105, label %do.end101.cleanup_crit_edge

do.end101.cleanup_crit_edge:                      ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end105:                                        ; preds = %do.end101
  %speed107 = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 5
  %37 = ptrtoint ptr %speed107 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %speed107, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp108 = icmp eq i32 %38, 0
  br i1 %cmp108, label %if.end105.cleanup_crit_edge, label %if.end111

if.end105.cleanup_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end111:                                        ; preds = %if.end105
  %39 = ptrtoint ptr %next_hwd_bdi to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %next_hwd_bdi, align 4
  %num_bds_table.i241 = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10, i32 5
  %41 = ptrtoint ptr %num_bds_table.i241 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_bds_table.i241, align 4
  %div.i = sdiv i32 %40, %42
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdi_to_tbi.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep_dequeue, %bdi_to_tbi.exit)) #9
          to label %if.then.i242 [label %bdi_to_tbi.exit], !srcloc !486

if.then.i242:                                     ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %bdc1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bdc1, align 4
  %dev.i = getelementptr inbounds %struct.bdc, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i, align 4
  %47 = ptrtoint ptr %num_bds_table.i241 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_bds_table.i241, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdi_to_tbi.__UNIQUE_ID_ddebug307, ptr noundef %46, ptr noundef nonnull @.str.120, i32 noundef %40, i32 noundef %48, i32 noundef %div.i) #9
  br label %bdi_to_tbi.exit

bdi_to_tbi.exit:                                  ; preds = %if.then.i242, %if.end111
  %49 = ptrtoint ptr %bd_list to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bd_list, align 4
  %arrayidx = getelementptr ptr, ptr %50, i32 %div.i
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx, align 4
  %dma = getelementptr inbounds %struct.bd_table, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dma, align 4
  %55 = ptrtoint ptr %next_hwd_bdi to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %next_hwd_bdi, align 4
  %57 = ptrtoint ptr %num_bds_table.i241 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_bds_table.i241, align 4
  %mul = mul i32 %58, %div.i
  %sub119 = sub i32 %56, %mul
  %mul120 = shl i32 %sub119, 4
  %add = add i32 %mul120, %54
  %queue = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 1
  %59 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %queue, align 4
  %add.ptr = getelementptr i8, ptr %60, i32 -56
  %cmp122 = icmp eq ptr %add.ptr, %req
  %start_pending.0.off0.not = xor i1 %start_pending.0.off0, true
  %brmerge231 = select i1 %start_pending.0.off0.not, i1 true, i1 %cmp122
  br i1 %brmerge231, label %if.else141, label %if.then130

if.then130:                                       ; preds = %bdi_to_tbi.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call131 = tail call fastcc ptr @bdi_to_bd(ptr noundef %ep, i32 noundef %7)
  %61 = tail call i32 @llvm.bswap.i32(i32 %add)
  %62 = ptrtoint ptr %call131 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %call131, align 4
  %arrayidx136 = getelementptr [4 x i32], ptr %call131, i32 0, i32 1
  %63 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %arrayidx136, align 4
  %arrayidx138 = getelementptr [4 x i32], ptr %call131, i32 0, i32 2
  %64 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %arrayidx138, align 4
  %arrayidx140 = getelementptr [4 x i32], ptr %call131, i32 0, i32 3
  %65 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 251658252, ptr %arrayidx140, align 4
  tail call void @bdc_dbg_bd_list(ptr noundef %1, ptr noundef %ep) #9
  br label %cleanup

if.else141:                                       ; preds = %bdi_to_tbi.exit
  br i1 %end_pending.0.off0, label %if.then143, label %if.else141.cleanup_crit_edge

if.else141.cleanup_crit_edge:                     ; preds = %if.else141
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then143:                                       ; preds = %if.else141
  %call144 = tail call i32 @bdc_ep_bla(ptr noundef %1, ptr noundef %ep, i32 noundef %add) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.then143.cleanup_crit_edge, label %do.end149

if.then143.cleanup_crit_edge:                     ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end149:                                        ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #11
  %dev150 = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 2
  %66 = ptrtoint ptr %dev150 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev150, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.190, i32 noundef %call144) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end149, %if.then143.cleanup_crit_edge, %if.else141.cleanup_crit_edge, %if.then130, %if.end105.cleanup_crit_edge, %do.end101.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.then33.cleanup_crit_edge, %do.end30.cleanup_crit_edge
  %retval.0 = phi i32 [ %call144, %do.end149 ], [ 0, %if.then33.cleanup_crit_edge ], [ 0, %do.end30.cleanup_crit_edge ], [ %call46, %if.end38.cleanup_crit_edge ], [ -22, %do.end101.cleanup_crit_edge ], [ 0, %if.end105.cleanup_crit_edge ], [ 0, %if.else141.cleanup_crit_edge ], [ 0, %if.then143.cleanup_crit_edge ], [ 0, %if.then130 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdc_ep_bla(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 209)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 209)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !38, !39, !41, !42, !43, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !59, !61, !62, !63, !64, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !124, !125, !127, !128, !129, !131, !132, !134, !136, !138, !140, !142, !144, !146, !148, !149, !150, !152, !153, !155, !156, !157, !159, !160, !162, !163, !164, !166, !167, !169, !170, !172, !173, !175, !176, !178, !179, !181, !182, !184, !185, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !209, !210, !212, !213, !215, !216, !218, !219, !221, !222, !224, !225, !226, !228, !229, !230, !232, !233, !235, !236, !238, !239, !241, !242, !244, !245, !247, !248, !249, !251, !252, !254, !255, !257, !259, !261, !262, !263, !265, !266, !267, !269, !270, !272, !273, !275, !276, !278, !279, !280, !282, !283, !284, !286, !287, !289, !290, !291, !293, !294, !296, !297, !298, !300, !301, !302, !304, !305, !306, !308, !309, !311, !312, !313, !315, !316, !317, !319, !320, !321, !323, !324, !326, !327, !328, !330, !331, !333, !334, !335, !337, !338, !339, !341, !342, !343, !345, !346, !348, !349, !351, !352, !353, !355, !356, !358, !359, !360, !362, !363, !365, !366, !368, !369, !370, !372, !373, !374, !376, !377, !379, !380, !382, !383, !385, !386, !387, !389, !390, !391, !393, !395, !397, !399, !401, !402, !404, !406, !407, !408, !410, !411, !413, !414, !416, !417, !418, !420, !421, !422, !424, !425, !427, !428, !429, !431, !432, !433, !435, !436, !437, !439, !440, !442, !443, !444, !446, !447, !448, !450, !451, !452, !453, !455, !456, !458, !459, !460, !462, !463, !464, !466, !467, !469, !470, !472, !473, !474, !476}
!llvm.module.flags = !{!477, !478, !479, !480, !481, !482, !483, !484}
!llvm.ident = !{!485}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 345, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @bdc_notify_xfr.__UNIQUE_ID_ddebug310, !1, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 566, i32 2}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @bdc_ep_disable.__UNIQUE_ID_ddebug318, !7, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 583, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @bdc_ep_disable._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @bdc_ep_disable._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 608, i32 2}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @bdc_ep_enable.__UNIQUE_ID_ddebug319, !17, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 613, i32 3}
!22 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @bdc_ep_enable._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @bdc_ep_enable._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 906, i32 2}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @bdc_free_ep.__UNIQUE_ID_ddebug329, !26, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1069, i32 2}
!31 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @bdc_xsf_ep0_setup_recv.__UNIQUE_ID_ddebug335, !30, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1082, i32 2}
!35 = !{ptr @bdc_xsf_ep0_setup_recv.__UNIQUE_ID_ddebug336, !34, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1515, i32 2}
!38 = !{ptr @bdc_xsf_ep0_data_start.__UNIQUE_ID_ddebug366, !37, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1524, i32 3}
!41 = !{ptr @bdc_xsf_ep0_data_start._entry, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @bdc_xsf_ep0_data_start._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1539, i32 3}
!45 = !{ptr @bdc_xsf_ep0_data_start.__UNIQUE_ID_ddebug367, !44, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1554, i32 2}
!48 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @bdc_xsf_ep0_status_start.__UNIQUE_ID_ddebug368, !47, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1571, i32 3}
!52 = !{ptr @bdc_xsf_ep0_status_start._entry, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @bdc_xsf_ep0_status_start._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1579, i32 3}
!56 = !{ptr @bdc_xsf_ep0_status_start.__UNIQUE_ID_ddebug369, !55, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!57 = !{ptr @bdc_xsf_ep0_status_start.__UNIQUE_ID_ddebug370, !58, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!58 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1601, i32 3}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1653, i32 3}
!61 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @bdc_sr_xsf._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @bdc_sr_xsf._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1662, i32 3}
!66 = !{ptr @bdc_sr_xsf.__UNIQUE_ID_ddebug373, !65, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1666, i32 2}
!69 = !{ptr @bdc_sr_xsf._rs, !68, !"_rs", i1 false, i1 false}
!70 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @bdc_sr_xsf.descriptor, !68, !"descriptor", i1 false, i1 false}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1681, i32 4}
!74 = !{ptr @bdc_sr_xsf._entry.30, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @bdc_sr_xsf._entry_ptr.32, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1690, i32 4}
!78 = !{ptr @bdc_sr_xsf.__UNIQUE_ID_ddebug374, !77, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1702, i32 3}
!81 = !{ptr @bdc_sr_xsf._entry.34, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @bdc_sr_xsf._entry_ptr.36, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1705, i32 3}
!85 = !{ptr @bdc_sr_xsf._entry.37, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @bdc_sr_xsf._entry_ptr.39, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 2000, i32 2}
!89 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @bdc_init_ep.__UNIQUE_ID_ddebug387, !88, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 2005, i32 3}
!93 = !{ptr @bdc_init_ep._entry, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @bdc_init_ep._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 2013, i32 4}
!97 = !{ptr @bdc_init_ep._entry.43, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @bdc_init_ep._entry_ptr.45, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @bdc_init_ep._entry.46, !100, !"_entry", i1 false, i1 false}
!100 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 2022, i32 4}
!101 = !{ptr @bdc_init_ep._entry_ptr.47, !100, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 546, i32 2}
!104 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @bdc_req_complete.__UNIQUE_ID_ddebug317, !103, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 59, i32 2}
!108 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @ep_bd_list_free.__UNIQUE_ID_ddebug297, !107, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 63, i32 3}
!112 = !{ptr @ep_bd_list_free.__UNIQUE_ID_ddebug298, !111, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 73, i32 3}
!115 = !{ptr @ep_bd_list_free.__UNIQUE_ID_ddebug299, !114, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!116 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 75, i32 4}
!118 = !{ptr @ep_bd_list_free.__UNIQUE_ID_ddebug300, !117, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!119 = !{ptr @.str.55, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 79, i32 4}
!121 = !{ptr @ep_bd_list_free.__UNIQUE_ID_ddebug301, !120, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!122 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 83, i32 3}
!124 = !{ptr @ep_bd_list_free.__UNIQUE_ID_ddebug302, !123, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!125 = !{ptr @.str.57, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 136, i32 2}
!127 = !{ptr @.str.58, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @ep_bd_list_alloc.__UNIQUE_ID_ddebug303, !126, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!129 = !{ptr @.str.59, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 164, i32 3}
!131 = !{ptr @ep_bd_list_alloc.__UNIQUE_ID_ddebug304, !130, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!132 = !{ptr @.str.60, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 43, i32 2}
!134 = !{ptr @.str.61, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 44, i32 2}
!136 = !{ptr @.str.62, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 45, i32 2}
!138 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 46, i32 2}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 47, i32 2}
!142 = !{ptr @.str.65, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 48, i32 2}
!144 = !{ptr @ep0_state_string, !145, !"ep0_state_string", i1 false, i1 false}
!145 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 42, i32 27}
!146 = !{ptr @.str.66, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 872, i32 2}
!148 = !{ptr @.str.67, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @ep_set_halt.__UNIQUE_ID_ddebug325, !147, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!150 = !{ptr @.str.68, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 875, i32 3}
!152 = !{ptr @ep_set_halt.__UNIQUE_ID_ddebug326, !151, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!153 = !{ptr @.str.69, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 881, i32 4}
!155 = !{ptr @ep_set_halt._entry, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @ep_set_halt._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.70, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 887, i32 3}
!159 = !{ptr @ep_set_halt.__UNIQUE_ID_ddebug327, !158, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!160 = !{ptr @.str.72, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 890, i32 4}
!162 = !{ptr @ep_set_halt._entry.71, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @ep_set_halt._entry_ptr.73, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.74, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 894, i32 3}
!166 = !{ptr @ep_set_halt.__UNIQUE_ID_ddebug328, !165, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!167 = !{ptr @.str.75, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1440, i32 2}
!169 = !{ptr @handle_control_request.__UNIQUE_ID_ddebug359, !168, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!170 = !{ptr @.str.76, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1444, i32 4}
!172 = !{ptr @handle_control_request.__UNIQUE_ID_ddebug360, !171, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!173 = !{ptr @.str.77, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1450, i32 4}
!175 = !{ptr @handle_control_request.__UNIQUE_ID_ddebug361, !174, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!176 = !{ptr @.str.78, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1469, i32 4}
!178 = !{ptr @handle_control_request.__UNIQUE_ID_ddebug362, !177, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!179 = !{ptr @.str.79, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1474, i32 4}
!181 = !{ptr @handle_control_request.__UNIQUE_ID_ddebug363, !180, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!182 = !{ptr @.str.80, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1479, i32 4}
!184 = !{ptr @handle_control_request.__UNIQUE_ID_ddebug364, !183, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!185 = !{ptr @.str.81, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1484, i32 4}
!187 = !{ptr @handle_control_request.__UNIQUE_ID_ddebug365, !186, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!188 = !{ptr @.str.82, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1489, i32 4}
!190 = !{ptr @handle_control_request._entry, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @handle_control_request._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.83, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1113, i32 2}
!194 = !{ptr @.str.84, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @ep0_set_address.__UNIQUE_ID_ddebug338, !193, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!196 = !{ptr @.str.85, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1136, i32 3}
!198 = !{ptr @ep0_set_address._entry, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @ep0_set_address._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.86, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1241, i32 2}
!202 = !{ptr @.str.87, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @ep0_handle_feature.__UNIQUE_ID_ddebug345, !201, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!204 = !{ptr @.str.88, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1250, i32 3}
!206 = !{ptr @ep0_handle_feature.__UNIQUE_ID_ddebug346, !205, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!207 = !{ptr @.str.89, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1257, i32 5}
!209 = !{ptr @ep0_handle_feature.__UNIQUE_ID_ddebug347, !208, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!210 = !{ptr @.str.90, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1260, i32 5}
!212 = !{ptr @ep0_handle_feature.__UNIQUE_ID_ddebug348, !211, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!213 = !{ptr @.str.91, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1267, i32 3}
!215 = !{ptr @ep0_handle_feature.__UNIQUE_ID_ddebug349, !214, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!216 = !{ptr @.str.92, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1286, i32 4}
!218 = !{ptr @ep0_handle_feature.__UNIQUE_ID_ddebug350, !217, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!219 = !{ptr @.str.93, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1289, i32 3}
!221 = !{ptr @ep0_handle_feature.__UNIQUE_ID_ddebug351, !220, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!222 = !{ptr @.str.94, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1296, i32 3}
!224 = !{ptr @ep0_handle_feature._entry, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @ep0_handle_feature._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.95, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1152, i32 2}
!228 = !{ptr @.str.96, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @ep0_handle_feature_dev.__UNIQUE_ID_ddebug339, !227, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!230 = !{ptr @.str.97, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1156, i32 3}
!232 = !{ptr @ep0_handle_feature_dev.__UNIQUE_ID_ddebug340, !231, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!233 = !{ptr @.str.98, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1164, i32 3}
!235 = !{ptr @ep0_handle_feature_dev.__UNIQUE_ID_ddebug341, !234, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!236 = !{ptr @.str.99, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1173, i32 3}
!238 = !{ptr @ep0_handle_feature_dev.__UNIQUE_ID_ddebug342, !237, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!239 = !{ptr @.str.100, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1195, i32 3}
!241 = !{ptr @ep0_handle_feature_dev.__UNIQUE_ID_ddebug343, !240, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!242 = !{ptr @.str.101, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1215, i32 3}
!244 = !{ptr @ep0_handle_feature_dev.__UNIQUE_ID_ddebug344, !243, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!245 = !{ptr @.str.102, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1221, i32 3}
!247 = !{ptr @ep0_handle_feature_dev._entry, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @ep0_handle_feature_dev._entry_ptr, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.103, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1317, i32 2}
!251 = !{ptr @ep0_handle_status.__UNIQUE_ID_ddebug352, !250, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!252 = !{ptr @.str.104, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1321, i32 3}
!254 = !{ptr @ep0_handle_status.__UNIQUE_ID_ddebug353, !253, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!255 = !{ptr @ep0_handle_status.__UNIQUE_ID_ddebug354, !256, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!256 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1330, i32 3}
!257 = !{ptr @ep0_handle_status.__UNIQUE_ID_ddebug355, !258, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!258 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1345, i32 3}
!259 = !{ptr @.str.105, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1358, i32 4}
!261 = !{ptr @ep0_handle_status._entry, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @ep0_handle_status._entry_ptr, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.107, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1366, i32 3}
!265 = !{ptr @ep0_handle_status._entry.106, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @ep0_handle_status._entry_ptr.108, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.109, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1370, i32 2}
!269 = !{ptr @ep0_handle_status.__UNIQUE_ID_ddebug356, !268, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!270 = !{ptr @.str.110, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 700, i32 2}
!272 = !{ptr @ep0_queue_data_stage.__UNIQUE_ID_ddebug321, !271, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!273 = !{ptr @.str.111, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 662, i32 2}
!275 = !{ptr @ep0_queue.__UNIQUE_ID_ddebug320, !274, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!276 = !{ptr @.str.112, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 688, i32 3}
!278 = !{ptr @ep0_queue._entry, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @ep0_queue._entry_ptr, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.113, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 516, i32 2}
!282 = !{ptr @.str.114, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @bdc_queue_xfr.__UNIQUE_ID_ddebug315, !281, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!284 = !{ptr @.str.115, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 517, i32 2}
!286 = !{ptr @bdc_queue_xfr.__UNIQUE_ID_ddebug316, !285, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!287 = !{ptr @.str.116, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 311, i32 3}
!289 = !{ptr @.str.117, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @bd_available_ep.__UNIQUE_ID_ddebug308, !288, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!291 = !{ptr @.str.118, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 335, i32 2}
!293 = !{ptr @bd_available_ep.__UNIQUE_ID_ddebug309, !292, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!294 = !{ptr @.str.119, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 263, i32 2}
!296 = !{ptr @.str.120, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @bdi_to_tbi.__UNIQUE_ID_ddebug307, !295, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!298 = !{ptr @.str.121, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 446, i32 2}
!300 = !{ptr @.str.122, !299, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @setup_bd_list_xfr.__UNIQUE_ID_ddebug313, !299, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!302 = !{ptr @.str.123, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 478, i32 4}
!304 = !{ptr @setup_bd_list_xfr._entry, !303, !"_entry", i1 false, i1 false}
!305 = !{ptr @setup_bd_list_xfr._entry_ptr, !303, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.124, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 490, i32 3}
!308 = !{ptr @setup_bd_list_xfr.__UNIQUE_ID_ddebug314, !307, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!309 = !{ptr @.str.125, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 363, i32 2}
!311 = !{ptr @.str.126, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @bdi_to_bd.__UNIQUE_ID_ddebug311, !310, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!313 = !{ptr @.str.127, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 401, i32 4}
!315 = !{ptr @.str.128, !314, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @setup_first_bd_ep0.__UNIQUE_ID_ddebug312, !314, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!317 = !{ptr @.str.129, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 415, i32 3}
!319 = !{ptr @setup_first_bd_ep0._entry, !318, !"_entry", i1 false, i1 false}
!320 = !{ptr @setup_first_bd_ep0._entry_ptr, !318, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.130, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1391, i32 2}
!323 = !{ptr @ep0_set_sel.__UNIQUE_ID_ddebug357, !322, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!324 = !{ptr @.str.131, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1394, i32 3}
!326 = !{ptr @ep0_set_sel._entry, !325, !"_entry", i1 false, i1 false}
!327 = !{ptr @ep0_set_sel._entry_ptr, !325, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.132, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1093, i32 2}
!330 = !{ptr @ep0_stall.__UNIQUE_ID_ddebug337, !329, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!331 = !{ptr @.str.133, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 966, i32 2}
!333 = !{ptr @.str.134, !332, !"<string literal>", i1 false, i1 false}
!334 = !{ptr @handle_xsr_succ_status.__UNIQUE_ID_ddebug332, !332, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!335 = !{ptr @.str.135, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 975, i32 3}
!337 = !{ptr @handle_xsr_succ_status._entry, !336, !"_entry", i1 false, i1 false}
!338 = !{ptr @handle_xsr_succ_status._entry_ptr, !336, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @.str.137, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1000, i32 4}
!341 = !{ptr @handle_xsr_succ_status._entry.136, !340, !"_entry", i1 false, i1 false}
!342 = !{ptr @handle_xsr_succ_status._entry_ptr.138, !340, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @.str.139, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1042, i32 3}
!345 = !{ptr @handle_xsr_succ_status.__UNIQUE_ID_ddebug333, !344, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!346 = !{ptr @.str.140, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1051, i32 3}
!348 = !{ptr @handle_xsr_succ_status.__UNIQUE_ID_ddebug334, !347, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!349 = !{ptr @.str.141, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 225, i32 2}
!351 = !{ptr @.str.142, !350, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @bd_add_to_bdi.__UNIQUE_ID_ddebug305, !350, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!353 = !{ptr @.str.143, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 238, i32 3}
!355 = !{ptr @bd_add_to_bdi.__UNIQUE_ID_ddebug306, !354, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!356 = !{ptr @.str.144, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 247, i32 3}
!358 = !{ptr @bd_add_to_bdi._entry, !357, !"_entry", i1 false, i1 false}
!359 = !{ptr @bd_add_to_bdi._entry_ptr, !357, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @.str.145, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1612, i32 2}
!362 = !{ptr @ep0_xsf_complete.__UNIQUE_ID_ddebug371, !361, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!363 = !{ptr @.str.146, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1622, i32 4}
!365 = !{ptr @ep0_xsf_complete.__UNIQUE_ID_ddebug372, !364, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!366 = !{ptr @.str.147, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1625, i32 5}
!368 = !{ptr @ep0_xsf_complete._entry, !367, !"_entry", i1 false, i1 false}
!369 = !{ptr @ep0_xsf_complete._entry_ptr, !367, !"_entry_ptr", i1 false, i1 false}
!370 = !{ptr @.str.149, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1636, i32 3}
!372 = !{ptr @ep0_xsf_complete._entry.148, !371, !"_entry", i1 false, i1 false}
!373 = !{ptr @ep0_xsf_complete._entry_ptr.150, !371, !"_entry_ptr", i1 false, i1 false}
!374 = !{ptr @.str.151, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 930, i32 2}
!376 = !{ptr @bdc_set_test_mode.__UNIQUE_ID_ddebug330, !375, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!377 = !{ptr @.str.152, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 942, i32 2}
!379 = !{ptr @bdc_set_test_mode.__UNIQUE_ID_ddebug331, !378, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!380 = !{ptr @.str.153, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1415, i32 2}
!382 = !{ptr @ep0_queue_zlp.__UNIQUE_ID_ddebug358, !381, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!383 = !{ptr @.str.154, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1422, i32 3}
!385 = !{ptr @ep0_queue_zlp._entry, !384, !"_entry", i1 false, i1 false}
!386 = !{ptr @ep0_queue_zlp._entry_ptr, !384, !"_entry_ptr", i1 false, i1 false}
!387 = !{ptr @.str.155, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1943, i32 2}
!389 = !{ptr @.str.156, !388, !"<string literal>", i1 false, i1 false}
!390 = !{ptr @init_ep.__UNIQUE_ID_ddebug385, !388, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!391 = !{ptr @.str.157, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1960, i32 40}
!393 = !{ptr @.str.158, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1972, i32 40}
!395 = !{ptr @.str.159, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1973, i32 15}
!397 = !{ptr @.str.160, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1973, i32 22}
!399 = !{ptr @.str.161, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1986, i32 2}
!401 = !{ptr @init_ep.__UNIQUE_ID_ddebug386, !400, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!402 = !{ptr @bdc_gadget_ep_ops, !403, !"bdc_gadget_ep_ops", i1 false, i1 false}
!403 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1928, i32 32}
!404 = !{ptr @.str.162, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1861, i32 3}
!406 = !{ptr @.str.163, !405, !"<string literal>", i1 false, i1 false}
!407 = !{ptr @bdc_gadget_ep_enable.__UNIQUE_ID_ddebug380, !405, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!408 = !{ptr @.str.164, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1866, i32 3}
!410 = !{ptr @bdc_gadget_ep_enable.__UNIQUE_ID_ddebug381, !409, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!411 = !{ptr @.str.165, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1882, i32 2}
!413 = !{ptr @bdc_gadget_ep_enable.__UNIQUE_ID_ddebug382, !412, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!414 = !{ptr @.str.166, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1900, i32 3}
!416 = !{ptr @.str.167, !415, !"<string literal>", i1 false, i1 false}
!417 = !{ptr @bdc_gadget_ep_disable.__UNIQUE_ID_ddebug383, !415, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!418 = !{ptr @.str.168, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1908, i32 3}
!420 = !{ptr @bdc_gadget_ep_disable._entry, !419, !"_entry", i1 false, i1 false}
!421 = !{ptr @bdc_gadget_ep_disable._entry_ptr, !419, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @.str.169, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1911, i32 2}
!424 = !{ptr @bdc_gadget_ep_disable.__UNIQUE_ID_ddebug384, !423, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!425 = !{ptr @.str.171, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1917, i32 4}
!427 = !{ptr @bdc_gadget_ep_disable._entry.170, !426, !"_entry", i1 false, i1 false}
!428 = !{ptr @bdc_gadget_ep_disable._entry_ptr.172, !426, !"_entry_ptr", i1 false, i1 false}
!429 = !{ptr @.str.173, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1835, i32 2}
!431 = !{ptr @.str.174, !430, !"<string literal>", i1 false, i1 false}
!432 = !{ptr @bdc_gadget_alloc_request.__UNIQUE_ID_ddebug379, !430, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!433 = !{ptr @.str.175, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1728, i32 2}
!435 = !{ptr @.str.176, !434, !"<string literal>", i1 false, i1 false}
!436 = !{ptr @bdc_gadget_ep_queue.__UNIQUE_ID_ddebug375, !434, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!437 = !{ptr @.str.177, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1729, i32 2}
!439 = !{ptr @bdc_gadget_ep_queue.__UNIQUE_ID_ddebug376, !438, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!440 = !{ptr @.str.178, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1733, i32 3}
!442 = !{ptr @bdc_gadget_ep_queue._entry, !441, !"_entry", i1 false, i1 false}
!443 = !{ptr @bdc_gadget_ep_queue._entry_ptr, !441, !"_entry_ptr", i1 false, i1 false}
!444 = !{ptr @.str.180, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1740, i32 3}
!446 = !{ptr @bdc_gadget_ep_queue._entry.179, !445, !"_entry", i1 false, i1 false}
!447 = !{ptr @bdc_gadget_ep_queue._entry_ptr.181, !445, !"_entry_ptr", i1 false, i1 false}
!448 = !{ptr @.str.182, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 725, i32 3}
!450 = !{ptr @.str.183, !449, !"<string literal>", i1 false, i1 false}
!451 = !{ptr @ep_queue._entry, !449, !"_entry", i1 false, i1 false}
!452 = !{ptr @ep_queue._entry_ptr, !449, !"_entry_ptr", i1 false, i1 false}
!453 = !{ptr @.str.184, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1771, i32 2}
!455 = !{ptr @bdc_gadget_ep_dequeue.__UNIQUE_ID_ddebug377, !454, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!456 = !{ptr @.str.185, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1781, i32 3}
!458 = !{ptr @bdc_gadget_ep_dequeue._entry, !457, !"_entry", i1 false, i1 false}
!459 = !{ptr @bdc_gadget_ep_dequeue._entry_ptr, !457, !"_entry_ptr", i1 false, i1 false}
!460 = !{ptr @.str.186, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 757, i32 2}
!462 = !{ptr @.str.187, !461, !"<string literal>", i1 false, i1 false}
!463 = !{ptr @ep_dequeue.__UNIQUE_ID_ddebug322, !461, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!464 = !{ptr @.str.188, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 759, i32 2}
!466 = !{ptr @ep_dequeue.__UNIQUE_ID_ddebug323, !465, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!467 = !{ptr @.str.189, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 808, i32 2}
!469 = !{ptr @ep_dequeue.__UNIQUE_ID_ddebug324, !468, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!470 = !{ptr @.str.190, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 857, i32 4}
!472 = !{ptr @ep_dequeue._entry, !471, !"_entry", i1 false, i1 false}
!473 = !{ptr @ep_dequeue._entry_ptr, !471, !"_entry_ptr", i1 false, i1 false}
!474 = !{ptr @.str.191, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/usb/gadget/udc/bdc/bdc_ep.c", i32 1807, i32 2}
!476 = !{ptr @bdc_gadget_ep_set_halt.__UNIQUE_ID_ddebug378, !475, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!477 = !{i32 1, !"wchar_size", i32 2}
!478 = !{i32 1, !"min_enum_size", i32 4}
!479 = !{i32 8, !"branch-target-enforcement", i32 0}
!480 = !{i32 8, !"sign-return-address", i32 0}
!481 = !{i32 8, !"sign-return-address-all", i32 0}
!482 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!483 = !{i32 7, !"uwtable", i32 1}
!484 = !{i32 7, !"frame-pointer", i32 2}
!485 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!486 = !{i64 2149002238, i64 2149002243, i64 2149002256, i64 2149002300, i64 2149002334, i64 2149002355}
!487 = !{!"branch_weights", i32 2000, i32 1}
!488 = !{i64 2155722851}
!489 = !{i64 5028668}
!490 = !{!"auto-init"}
!491 = !{i8 0, i8 2}
!492 = !{!"branch_weights", i32 1, i32 2000}
!493 = !{i64 5029086}
!494 = !{i64 2155722470}
!495 = !{i64 2155778637}
