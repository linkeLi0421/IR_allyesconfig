; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/udc/bdc/bdc_cmd.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/bdc/bdc_cmd.c"
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.bdc_ep = type { %struct.usb_ep, %struct.list_head, ptr, i8, i8, i8, ptr, ptr, i32, [20 x i8], %struct.bd_list, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.bd_list = type { ptr, i32, i32, i32, i32, i32 }
%struct.bdc = type { %struct.usb_gadget, ptr, ptr, %struct.spinlock, ptr, i32, i32, ptr, ptr, %struct.bdc_scratchpad, i32, %struct.srr, %struct.usb_ctrlrequest, %struct.bdc_req, %struct.bdc_req, i32, i8, i8, i8, i8, i32, i32, ptr, i32, ptr, i8, [2 x ptr], [3 x ptr], [6 x i8], %struct.delayed_work, ptr }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.bd_table = type { ptr, i32 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }

@bdc_dconfig_ep.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 28, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bdc\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bdc_dconfig_ep\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/usb/gadget/udc/bdc/bdc_cmd.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s ep->ep_num =%d cmd_sc=%x\0A\00", [35 x i8] zeroinitializer }, align 32
@bdc_config_ep.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 37, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bdc_config_ep\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: param0=%08x param1=%08x\00", [36 x i8] zeroinitializer }, align 32
@bdc_config_ep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 201, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"UNKNOWN speed ERR\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bdc_config_ep._entry_ptr = internal global ptr @bdc_config_ep._entry, section ".printk_index", align 4
@bdc_config_ep.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.9, i8 0, i8 51, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cmd_sc=%x param2=%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@bdc_config_ep._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str.2, i32 210, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"command failed :%x\0A\00", [44 x i8] zeroinitializer }, align 32
@bdc_config_ep._entry_ptr.12 = internal global ptr @bdc_config_ep._entry.10, section ".printk_index", align 4
@bdc_ep_bla.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 57, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bdc_ep_bla\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: add=%08llx\0A\00", [16 x i8] zeroinitializer }, align 32
@bdc_ep_bla.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.15, i8 0, i8 58, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cmd_sc=%x\0A\00", [21 x i8] zeroinitializer }, align 32
@bdc_address_device.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 61, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bdc_address_device\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: add=%d\0A\00", [20 x i8] zeroinitializer }, align 32
@bdc_function_wake_fh.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 65, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bdc_function_wake_fh\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s intf=%d\0A\00", [20 x i8] zeroinitializer }, align 32
@bdc_function_wake_fh.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.20, i8 0, i8 66, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"param0=%08x param1=%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@bdc_function_wake.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 69, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bdc_function_wake\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s intf=%d\00", [21 x i8] zeroinitializer }, align 32
@bdc_ep_set_stall.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 72, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bdc_ep_set_stall\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s epnum=%d\0A\00", [19 x i8] zeroinitializer }, align 32
@bdc_ep_clear_stall.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 75, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bdc_ep_clear_stall\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: epnum=%d\0A\00", [18 x i8] zeroinitializer }, align 32
@bdc_ep_clear_stall._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 326, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"command failed:%x\0A\00", [45 x i8] zeroinitializer }, align 32
@bdc_ep_clear_stall._entry_ptr = internal global ptr @bdc_ep_clear_stall._entry, section ".printk_index", align 4
@bdc_stop_ep.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 85, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bdc_stop_ep\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: ep:%s ep->flags:%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@bdc_stop_ep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 346, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"stop endpoint called for disabled ep\0A\00", [58 x i8] zeroinitializer }, align 32
@bdc_stop_ep._entry_ptr = internal global ptr @bdc_stop_ep._entry, section ".printk_index", align 4
@bdc_stop_ep._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.28, ptr @.str.2, i32 360, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"stop endpoint command didn't complete:%d ep:%s\0A\00", [48 x i8] zeroinitializer }, align 32
@bdc_stop_ep._entry_ptr.33 = internal global ptr @bdc_stop_ep._entry.31, section ".printk_index", align 4
@bdc_submit_cmd.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 0, i8 15, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bdc_submit_cmd\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s:CMDSC:%08x cmdsc:%08x param0=%08x param1=%08x param2=%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@bdc_submit_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 64, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"command processor busy: %x\0A\00", [36 x i8] zeroinitializer }, align 32
@bdc_submit_cmd._entry_ptr = internal global ptr @bdc_submit_cmd._entry, section ".printk_index", align 4
@bdc_submit_cmd.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.37, i8 0, i8 17, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"command completed successfully\0A\00", [32 x i8] zeroinitializer }, align 32
@bdc_submit_cmd._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.2, i32 75, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"command parameter error\0A\00", [39 x i8] zeroinitializer }, align 32
@bdc_submit_cmd._entry_ptr.40 = internal global ptr @bdc_submit_cmd._entry.38, section ".printk_index", align 4
@bdc_submit_cmd._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.34, ptr @.str.2, i32 80, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid device/ep state\0A\00", [39 x i8] zeroinitializer }, align 32
@bdc_submit_cmd._entry_ptr.43 = internal global ptr @bdc_submit_cmd._entry.41, section ".printk_index", align 4
@bdc_submit_cmd._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.34, ptr @.str.2, i32 85, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Command failed?\0A\00", [47 x i8] zeroinitializer }, align 32
@bdc_submit_cmd._entry_ptr.46 = internal global ptr @bdc_submit_cmd._entry.44, section ".printk_index", align 4
@bdc_submit_cmd._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.34, ptr @.str.2, i32 90, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"BDC Internal error\0A\00", [44 x i8] zeroinitializer }, align 32
@bdc_submit_cmd._entry_ptr.49 = internal global ptr @bdc_submit_cmd._entry.47, section ".printk_index", align 4
@bdc_submit_cmd._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.34, ptr @.str.2, i32 97, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"command timedout waited for %dusec\0A\00", [60 x i8] zeroinitializer }, align 32
@bdc_submit_cmd._entry_ptr.52 = internal global ptr @bdc_submit_cmd._entry.50, section ".printk_index", align 4
@bdc_submit_cmd.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.53, i8 0, i8 25, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unknown command completion code:%x\0A\00", [60 x i8] zeroinitializer }, align 32
@bdc_issue_cmd._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.54, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@bdc_issue_cmd.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.56, i8 0, i8 8, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bdc_issue_cmd\00", [18 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cmdsc=%x\00", [23 x i8] zeroinitializer }, align 32
@bdc_issue_cmd.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.57, i8 0, i8 9, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"command completed cmd_sts:%x\0A\00", [34 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@bdc_issue_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.55, ptr @.str.2, i32 45, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"command operation timedout cmd_status=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@bdc_issue_cmd._entry_ptr = internal global ptr @bdc_issue_cmd._entry, section ".printk_index", align 4
@ep_bd_list_reinit.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.60, i8 0, i8 32, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ep_bd_list_reinit\00", [46 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s ep:%p bd:%p\0A\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 3, i64 4, i64 5, i64 6, i64 15]
@__sancov_gen_cov_switch_values.61 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 3]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 3]
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 113, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 150, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 201, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 207, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 210, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 227, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 235, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 246, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 260, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 266, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 277, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 289, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 303, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 326, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 342, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 346, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 358, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 58, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 64, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 70, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 75, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 80, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 85, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 90, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 95, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 101, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 34, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 37, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 44, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.242 = private constant [40 x i8] c"../drivers/usb/gadget/udc/bdc/bdc_cmd.c\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 128, i32 2 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @bdc_config_ep._entry, ptr @bdc_config_ep._entry.10, ptr @bdc_config_ep._entry_ptr, ptr @bdc_config_ep._entry_ptr.12, ptr @bdc_ep_clear_stall._entry, ptr @bdc_ep_clear_stall._entry_ptr, ptr @bdc_issue_cmd._entry, ptr @bdc_issue_cmd._entry_ptr, ptr @bdc_stop_ep._entry, ptr @bdc_stop_ep._entry.31, ptr @bdc_stop_ep._entry_ptr, ptr @bdc_stop_ep._entry_ptr.33, ptr @bdc_submit_cmd._entry, ptr @bdc_submit_cmd._entry.38, ptr @bdc_submit_cmd._entry.41, ptr @bdc_submit_cmd._entry.44, ptr @bdc_submit_cmd._entry.47, ptr @bdc_submit_cmd._entry.50, ptr @bdc_submit_cmd._entry_ptr, ptr @bdc_submit_cmd._entry_ptr.40, ptr @bdc_submit_cmd._entry_ptr.43, ptr @bdc_submit_cmd._entry_ptr.46, ptr @bdc_submit_cmd._entry_ptr.49, ptr @bdc_submit_cmd._entry_ptr.52, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @bdc_issue_cmd._rs, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_config_ep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_config_ep._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_ep_clear_stall._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_stop_ep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_stop_ep._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_submit_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_submit_cmd._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_submit_cmd._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_submit_cmd._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_submit_cmd._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_submit_cmd._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_issue_cmd._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdc_issue_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bdc_dconfig_ep(ptr nocapture noundef readonly %bdc, ptr nocapture noundef readonly %ep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ep_num = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 5
  %0 = ptrtoint ptr %ep_num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ep_num, align 2
  %2 = and i8 %1, 31
  %and = zext i8 %2 to i32
  %shl = shl nuw nsw i32 %and, 10
  %or1 = or i32 %shl, 262146
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_dconfig_ep.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_dconfig_ep, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !129

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %5 = ptrtoint ptr %ep_num to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ep_num, align 2
  %conv6 = zext i8 %6 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_dconfig_ep.__UNIQUE_ID_ddebug243, ptr noundef %4, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %conv6, i32 noundef %or1) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call7 = tail call fastcc i32 @bdc_submit_cmd(ptr noundef %bdc, i32 noundef %or1, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  ret i32 %call7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bdc_submit_cmd(ptr nocapture noundef readonly %bdc, i32 noundef %cmd_sc, i32 noundef %param0, i32 noundef %param1, i32 noundef %param2) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 8
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 28
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !130
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !131
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_submit_cmd.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_submit_cmd, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !129

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_submit_cmd.__UNIQUE_ID_ddebug240, ptr noundef %5, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.34, i32 noundef %3, i32 noundef %cmd_sc, i32 noundef %param0, i32 noundef %param1, i32 noundef %param2) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = and i32 %3, 960
  call void @__sanitizer_cov_trace_const_cmp4(i32 960, i32 %6)
  %cmp = icmp eq i32 %6, 960
  br i1 %cmp, label %do.end8, label %if.end10

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev9 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %7 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.36, i32 noundef 15) #7
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %call11 = tail call fastcc i32 @bdc_issue_cmd(ptr noundef %bdc, i32 noundef %cmd_sc, i32 noundef %param0, i32 noundef %param1, i32 noundef %param2)
  %9 = zext i32 %call11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call11, label %do.body56 [
    i32 1, label %do.body12
    i32 3, label %do.end34
    i32 4, label %do.end39
    i32 5, label %do.end44
    i32 6, label %do.end49
    i32 15, label %do.end54
  ]

do.body12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_submit_cmd.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_submit_cmd, %cleanup)) #4
          to label %if.then26 [label %cleanup], !srcloc !129

if.then26:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #6
  %dev27 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %10 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev27, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_submit_cmd.__UNIQUE_ID_ddebug241, ptr noundef %11, ptr noundef nonnull @.str.37) #4
  br label %cleanup

do.end34:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %dev35 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %12 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev35, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.39) #7
  br label %cleanup

do.end39:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %dev40 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %14 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.42) #7
  br label %cleanup

do.end44:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %dev45 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %16 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev45, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.45) #7
  br label %cleanup

do.end49:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %dev50 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %18 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev50, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.48) #7
  br label %cleanup

do.end54:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %dev55 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %20 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev55, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.51, i32 noundef 1000) #7
  br label %cleanup

do.body56:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_submit_cmd.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_submit_cmd, %cleanup)) #4
          to label %if.then70 [label %cleanup], !srcloc !129

if.then70:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #6
  %dev71 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %22 = ptrtoint ptr %dev71 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev71, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_submit_cmd.__UNIQUE_ID_ddebug242, ptr noundef %23, ptr noundef nonnull @.str.53, i32 noundef %call11) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then70, %do.body56, %do.end54, %do.end49, %do.end44, %do.end39, %do.end34, %if.then26, %do.body12, %do.end8
  %retval.0 = phi i32 [ -16, %do.end8 ], [ %call11, %if.then70 ], [ -104, %do.end54 ], [ -104, %do.end49 ], [ -11, %do.end44 ], [ -22, %do.end39 ], [ -22, %do.end34 ], [ 0, %if.then26 ], [ 0, %do.body12 ], [ %call11, %do.body56 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bdc_config_ep(ptr nocapture noundef readonly %bdc, ptr noundef %ep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %desc1 = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 7
  %0 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc1, align 4
  %comp_desc2 = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 6
  %2 = ptrtoint ptr %comp_desc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %comp_desc2, align 4
  %bd_list = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10
  %4 = ptrtoint ptr %bd_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bd_list, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dma = getelementptr inbounds %struct.bd_table, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_config_ep.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_config_ep, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !129

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_config_ep.__UNIQUE_ID_ddebug245, ptr noundef %12, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef %10, i32 noundef 0) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bInterval, align 1
  %conv = zext i8 %14 to i32
  %15 = tail call i8 @llvm.umax.i8(i8 %14, i8 1)
  %16 = tail call i8 @llvm.umin.i8(i8 %15, i8 16)
  %17 = zext i8 %16 to i32
  %sub = add nsw i32 %17, -1
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %wMaxPacketSize.i, align 1
  %20 = and i16 %19, -249
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #4
  %and.i = zext i16 %21 to i32
  %shl = shl nuw nsw i32 %and.i, 10
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bmAttributes.i, align 1
  %24 = and i8 %23, 3
  %and.i170 = zext i8 %24 to i32
  %shl22 = shl nuw nsw i32 %and.i170, 22
  %or23 = or i32 %shl, %shl22
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %bdc, i32 0, i32 5
  %25 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %speed, align 8
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %26, label %do.end74 [
    i32 5, label %sw.bb
    i32 3, label %sw.bb45
    i32 2, label %do.end.sw.bb57_crit_edge
    i32 1, label %do.end.sw.bb57_crit_edge205
  ]

do.end.sw.bb57_crit_edge205:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb57

do.end.sw.bb57_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb57

sw.bb:                                            ; preds = %do.end
  %trunc204 = trunc i8 %23 to i2
  %28 = zext i2 %trunc204 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.62)
  switch i2 %trunc204, label %sw.bb.if.end36_crit_edge [
    i2 -1, label %sw.bb.if.then28_crit_edge
    i2 1, label %sw.bb.if.then28_crit_edge206
  ]

sw.bb.if.then28_crit_edge206:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then28

sw.bb.if.then28_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then28

sw.bb.if.end36_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.then28:                                        ; preds = %sw.bb.if.then28_crit_edge, %sw.bb.if.then28_crit_edge206
  %or29 = or i32 %or23, %sub
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp.i176 = icmp ne i8 %24, 1
  %tobool32.not = icmp eq ptr %3, null
  %or.cond = select i1 %cmp.i176, i1 true, i1 %tobool32.not
  br i1 %or.cond, label %if.then28.if.end36_crit_edge, label %if.end36.thread

if.then28.if.end36_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.end36.thread:                                  ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #6
  %bmAttributes = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, ptr %3, i32 0, i32 3
  %29 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bmAttributes, align 1
  %conv34 = zext i8 %30 to i32
  %phi.bo = shl nuw nsw i32 %conv34, 4
  %or38198 = or i32 %phi.bo, %or29
  br label %if.then40

if.end36:                                         ; preds = %if.then28.if.end36_crit_edge, %sw.bb.if.end36_crit_edge
  %param2.0 = phi i32 [ %or29, %if.then28.if.end36_crit_edge ], [ %or23, %sw.bb.if.end36_crit_edge ]
  %tobool39.not = icmp eq ptr %3, null
  br i1 %tobool39.not, label %if.end36.if.end42_crit_edge, label %if.end36.if.then40_crit_edge

if.end36.if.then40_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then40

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

if.then40:                                        ; preds = %if.end36.if.then40_crit_edge, %if.end36.thread
  %or38200 = phi i32 [ %or38198, %if.end36.thread ], [ %param2.0, %if.end36.if.then40_crit_edge ]
  %bMaxBurst = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, ptr %3, i32 0, i32 2
  %31 = ptrtoint ptr %bMaxBurst to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bMaxBurst, align 1
  %conv41 = zext i8 %32 to i32
  %phi.bo166 = shl nuw nsw i32 %conv41, 6
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end36.if.end42_crit_edge
  %or38201 = phi i32 [ %or38200, %if.then40 ], [ %param2.0, %if.end36.if.end42_crit_edge ]
  %mbs.0 = phi i32 [ %phi.bo166, %if.then40 ], [ 0, %if.end36.if.end42_crit_edge ]
  %or44 = or i32 %mbs.0, %or38201
  br label %sw.epilog

sw.bb45:                                          ; preds = %do.end
  %trunc = trunc i8 %23 to i2
  %33 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.63)
  switch i2 %trunc, label %sw.bb45.sw.epilog_crit_edge [
    i2 1, label %sw.bb45.if.then51_crit_edge
    i2 -1, label %sw.bb45.if.then51_crit_edge207
  ]

sw.bb45.if.then51_crit_edge207:                   ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then51

sw.bb45.if.then51_crit_edge:                      ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then51

sw.bb45.sw.epilog_crit_edge:                      ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then51:                                        ; preds = %sw.bb45.if.then51_crit_edge, %sw.bb45.if.then51_crit_edge207
  %34 = shl i16 %19, 3
  %narrow.i = and i16 %34, 192
  %35 = add nuw nsw i16 %narrow.i, 64
  %shl54 = zext i16 %35 to i32
  %or52 = or i32 %sub, %shl54
  %or55 = or i32 %or52, %or23
  br label %sw.epilog

sw.bb57:                                          ; preds = %do.end.sw.bb57_crit_edge, %do.end.sw.bb57_crit_edge205
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp.i186.not = icmp eq i8 %24, 1
  %add = add nuw nsw i32 %17, 2
  %spec.select = select i1 %cmp.i186.not, i32 %add, i32 %sub
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %24)
  %cmp.i189.not = icmp eq i8 %24, 3
  br i1 %cmp.i189.not, label %if.then64, label %sw.bb57.if.end70_crit_edge

sw.bb57.if.end70_crit_edge:                       ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end70

if.then64:                                        ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #6
  %mul67 = shl nuw nsw i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  %36 = tail call i32 @llvm.ctlz.i32(i32 %mul67, i1 true) #4, !range !132
  %sub.i.op = xor i32 %36, 31
  %sub69 = select i1 %tobool.not.i, i32 -1, i32 %sub.i.op
  br label %if.end70

if.end70:                                         ; preds = %if.then64, %sw.bb57.if.end70_crit_edge
  %si.1 = phi i32 [ %sub69, %if.then64 ], [ %spec.select, %sw.bb57.if.end70_crit_edge ]
  %or71 = or i32 %si.1, %or23
  br label %sw.epilog

do.end74:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev75 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %37 = ptrtoint ptr %dev75 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev75, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.6) #7
  br label %cleanup

sw.epilog:                                        ; preds = %if.end70, %if.then51, %sw.bb45.sw.epilog_crit_edge, %if.end42
  %param2.1 = phi i32 [ %or71, %if.end70 ], [ %or55, %if.then51 ], [ %or44, %if.end42 ], [ %or23, %sw.bb45.sw.epilog_crit_edge ]
  %ep_num = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 5
  %39 = ptrtoint ptr %ep_num to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ep_num, align 2
  %41 = and i8 %40, 31
  %and77 = zext i8 %41 to i32
  %shl78 = shl nuw nsw i32 %and77, 10
  %or80 = or i32 %shl78, 131074
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_config_ep.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_config_ep, %do.end100)) #4
          to label %if.then96 [label %do.end100], !srcloc !129

if.then96:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %dev97 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %42 = ptrtoint ptr %dev97 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev97, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_config_ep.__UNIQUE_ID_ddebug250, ptr noundef %43, ptr noundef nonnull @.str.9, i32 noundef %or80, i32 noundef %param2.1) #4
  br label %do.end100

do.end100:                                        ; preds = %if.then96, %sw.epilog
  %call101 = tail call fastcc i32 @bdc_submit_cmd(ptr noundef %bdc, i32 noundef %or80, i32 noundef %10, i32 noundef 0, i32 noundef %param2.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end108, label %do.end106

do.end106:                                        ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #6
  %dev107 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %44 = ptrtoint ptr %dev107 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev107, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.11, i32 noundef %call101) #7
  br label %cleanup

if.end108:                                        ; preds = %do.end100
  %bdc1.i = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 2
  %46 = ptrtoint ptr %bdc1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bdc1.i, align 4
  %eqp_bdi.i = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10, i32 3
  %48 = ptrtoint ptr %eqp_bdi.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %eqp_bdi.i, align 4
  %hwd_bdi.i = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10, i32 4
  %49 = ptrtoint ptr %hwd_bdi.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %hwd_bdi.i, align 4
  %50 = ptrtoint ptr %bd_list to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bd_list, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep_bd_list_reinit.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_config_ep, %ep_bd_list_reinit.exit)) #4
          to label %if.then.i [label %ep_bd_list_reinit.exit], !srcloc !129

if.then.i:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.bdc, ptr %47, i32 0, i32 2
  %56 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep_bd_list_reinit.__UNIQUE_ID_ddebug244, ptr noundef %57, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.59, ptr noundef %ep, ptr noundef %55) #4
  br label %ep_bd_list_reinit.exit

ep_bd_list_reinit.exit:                           ; preds = %if.then.i, %if.end108
  %58 = call ptr @memset(ptr %55, i32 0, i32 12)
  %arrayidx7.i = getelementptr [4 x i32], ptr %55, i32 0, i32 3
  %59 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 128, ptr %arrayidx7.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %ep_bd_list_reinit.exit, %do.end106, %do.end74
  %retval.0 = phi i32 [ -22, %do.end74 ], [ %call101, %do.end106 ], [ 0, %ep_bd_list_reinit.exit ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bdc_ep_bla(ptr nocapture noundef readonly %bdc, ptr nocapture noundef readonly %ep, i32 noundef %dma_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_ep_bla.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_ep_bla, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !129

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %conv = zext i32 %dma_addr to i64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_ep_bla.__UNIQUE_ID_ddebug251, ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13, i64 noundef %conv) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ep_num = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 5
  %2 = ptrtoint ptr %ep_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ep_num, align 2
  %4 = and i8 %3, 31
  %and6 = zext i8 %4 to i32
  %shl = shl nuw nsw i32 %and6, 10
  %or = or i32 %shl, 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_ep_bla.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_ep_bla, %do.end26)) #4
          to label %if.then22 [label %do.end26], !srcloc !129

if.then22:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev23 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %5 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev23, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_ep_bla.__UNIQUE_ID_ddebug252, ptr noundef %6, ptr noundef nonnull @.str.15, i32 noundef %or) #4
  br label %do.end26

do.end26:                                         ; preds = %if.then22, %do.end
  %7 = tail call i32 @llvm.bswap.i32(i32 %dma_addr) #4
  %call27 = tail call fastcc i32 @bdc_submit_cmd(ptr noundef %bdc, i32 noundef %or, i32 noundef %7, i32 noundef 0, i32 noundef 0)
  ret i32 %call27
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bdc_address_device(ptr nocapture noundef readonly %bdc, i32 noundef %add) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_address_device.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_address_device, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !129

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_address_device.__UNIQUE_ID_ddebug253, ptr noundef %1, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef %add) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %add, 127
  %call4 = tail call fastcc i32 @bdc_submit_cmd(ptr noundef %bdc, i32 noundef 131073, i32 noundef 0, i32 noundef 0, i32 noundef %and)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bdc_function_wake_fh(ptr nocapture noundef readonly %bdc, i8 noundef zeroext %intf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_function_wake_fh.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_function_wake_fh, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !129

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %conv = zext i8 %intf to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_function_wake_fh.__UNIQUE_ID_ddebug254, ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, i32 noundef %conv) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev_addr = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 23
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_addr, align 8
  %shl = shl i32 %3, 25
  %or5 = or i32 %shl, 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_function_wake_fh.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_function_wake_fh, %do.end26)) #4
          to label %if.then22 [label %do.end26], !srcloc !129

if.then22:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev23 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %4 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev23, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_function_wake_fh.__UNIQUE_ID_ddebug255, ptr noundef %5, ptr noundef nonnull @.str.20, i32 noundef %or5, i32 noundef 22) #4
  br label %do.end26

do.end26:                                         ; preds = %if.then22, %do.end
  %call27 = tail call fastcc i32 @bdc_submit_cmd(ptr noundef %bdc, i32 noundef 14, i32 noundef %or5, i32 noundef 22, i32 noundef 0)
  ret i32 %call27
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bdc_function_wake(ptr nocapture noundef readonly %bdc, i8 noundef zeroext %intf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_function_wake.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_function_wake, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !129

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %conv = zext i8 %intf to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_function_wake.__UNIQUE_ID_ddebug256, ptr noundef %1, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef %conv) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv4 = zext i8 %intf to i32
  %call6 = tail call fastcc i32 @bdc_submit_cmd(ptr noundef %bdc, i32 noundef 524294, i32 noundef 0, i32 noundef 0, i32 noundef %conv4)
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bdc_ep_set_stall(ptr nocapture noundef readonly %bdc, i32 noundef %epnum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_ep_set_stall.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_ep_set_stall, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !129

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_ep_set_stall.__UNIQUE_ID_ddebug257, ptr noundef %1, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, i32 noundef %epnum) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = shl i32 %epnum, 10
  %shl = and i32 %and, 31744
  %or4 = or i32 %shl, 524292
  %call6 = tail call fastcc i32 @bdc_submit_cmd(ptr noundef %bdc, i32 noundef %or4, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bdc_ep_clear_stall(ptr noundef %bdc, i32 noundef %epnum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_ep_clear_stall.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_ep_clear_stall, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !129

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_ep_clear_stall.__UNIQUE_ID_ddebug258, ptr noundef %1, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25, i32 noundef %epnum) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %epnum)
  %cmp.not = icmp eq i32 %epnum, 1
  br i1 %cmp.not, label %do.end.if.end12_crit_edge, label %if.then4

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then4:                                         ; preds = %do.end
  %bdc_ep_array = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 7
  %2 = ptrtoint ptr %bdc_ep_array to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdc_ep_array, align 8
  %arrayidx = getelementptr ptr, ptr %3, i32 %epnum
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %flags = getelementptr inbounds %struct.bdc_ep, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.then6, label %if.then4.if.end12_crit_edge

if.then4.if.end12_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then6:                                         ; preds = %if.then4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_ep_set_stall.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_ep_clear_stall, %bdc_ep_set_stall.exit)) #4
          to label %if.then.i [label %bdc_ep_set_stall.exit], !srcloc !129

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_ep_set_stall.__UNIQUE_ID_ddebug257, ptr noundef %9, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, i32 noundef %epnum) #4
  br label %bdc_ep_set_stall.exit

bdc_ep_set_stall.exit:                            ; preds = %if.then.i, %if.then6
  %and.i = shl i32 %epnum, 10
  %shl.i = and i32 %and.i, 31744
  %or4.i = or i32 %shl.i, 524292
  %call6.i = tail call fastcc i32 @bdc_submit_cmd(ptr noundef %bdc, i32 noundef %or4.i, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool8.not = icmp eq i32 %call6.i, 0
  br i1 %tobool8.not, label %bdc_ep_set_stall.exit.if.end12_crit_edge, label %bdc_ep_set_stall.exit.cleanup_crit_edge

bdc_ep_set_stall.exit.cleanup_crit_edge:          ; preds = %bdc_ep_set_stall.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

bdc_ep_set_stall.exit.if.end12_crit_edge:         ; preds = %bdc_ep_set_stall.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.end12:                                         ; preds = %bdc_ep_set_stall.exit.if.end12_crit_edge, %if.then4.if.end12_crit_edge, %do.end.if.end12_crit_edge
  %spec.select = phi i32 [ 65536, %if.then4.if.end12_crit_edge ], [ 65536, %bdc_ep_set_stall.exit.if.end12_crit_edge ], [ 0, %do.end.if.end12_crit_edge ]
  %and16 = shl i32 %epnum, 10
  %shl = and i32 %and16, 31744
  %or18 = or i32 %shl, %spec.select
  %or19 = or i32 %or18, 131076
  %call20 = tail call fastcc i32 @bdc_submit_cmd(ptr noundef %bdc, i32 noundef %or19, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end27, label %do.end25

do.end25:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %dev26 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %10 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev26, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.27, i32 noundef %call20) #7
  br label %cleanup

if.end27:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @bdc_notify_xfr(ptr noundef %bdc, i32 noundef %epnum) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %do.end25, %bdc_ep_set_stall.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %do.end25 ], [ 0, %if.end27 ], [ %call6.i, %bdc_ep_set_stall.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdc_notify_xfr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bdc_stop_ep(ptr noundef %bdc, i32 noundef %epnum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bdc_ep_array = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 7
  %0 = ptrtoint ptr %bdc_ep_array to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdc_ep_array, align 8
  %arrayidx = getelementptr ptr, ptr %1, i32 %epnum
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_stop_ep.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_stop_ep, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !129

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.bdc_ep, ptr %3, i32 0, i32 9
  %flags = getelementptr inbounds %struct.bdc_ep, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_stop_ep.__UNIQUE_ID_ddebug259, ptr noundef %5, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, ptr noundef %name, i32 noundef %7) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags4 = getelementptr inbounds %struct.bdc_ep, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags4, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.end9, label %if.end11

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev10 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %10 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.30) #7
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %12 = and i32 %9, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %if.end19, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  %and20 = shl i32 %epnum, 10
  %shl = and i32 %and20, 31744
  %or21 = or i32 %shl, 327684
  %call23 = tail call fastcc i32 @bdc_submit_cmd(ptr noundef %bdc, i32 noundef %or21, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end32, label %do.end28

do.end28:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %dev29 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %14 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev29, align 4
  %name30 = getelementptr inbounds %struct.bdc_ep, ptr %3, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.32, i32 noundef %call23, ptr noundef %name30) #7
  br label %cleanup

if.end32:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags4, align 4
  %or34 = or i32 %17, 4
  store i32 %or34, ptr %flags4, align 4
  tail call void @bdc_dump_epsts(ptr noundef %bdc) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %do.end28, %if.end11.cleanup_crit_edge, %do.end9
  %retval.0 = phi i32 [ %call23, %do.end28 ], [ 0, %if.end32 ], [ -22, %do.end9 ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdc_dump_epsts(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bdc_issue_cmd(ptr nocapture noundef readonly %bdc, i32 noundef %cmd_sc, i32 noundef %param0, i32 noundef %param1, i32 noundef %param2) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 8
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !133
  tail call void @arm_heavy_mb() #4
  %2 = tail call i32 @llvm.bswap.i32(i32 %param0) #4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #4, !srcloc !134
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !133
  tail call void @arm_heavy_mb() #4
  %5 = tail call i32 @llvm.bswap.i32(i32 %param1) #4
  %add.ptr.i61 = getelementptr i8, ptr %4, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 %5) #4, !srcloc !134
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !133
  tail call void @arm_heavy_mb() #4
  %8 = tail call i32 @llvm.bswap.i32(i32 %param2) #4
  %add.ptr.i62 = getelementptr i8, ptr %7, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 %8) #4, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !135
  tail call void @arm_heavy_mb() #4
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %or4 = or i32 %cmd_sc, 134217760
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !133
  tail call void @arm_heavy_mb() #4
  %11 = tail call i32 @llvm.bswap.i32(i32 %or4) #4
  %add.ptr.i63 = getelementptr i8, ptr %10, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 %11) #4, !srcloc !134
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  br label %do.body5

do.body5:                                         ; preds = %if.end36.do.body5_crit_edge, %entry
  %timeout.0 = phi i32 [ 1000, %entry ], [ %dec, %if.end36.do.body5_crit_edge ]
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr.i64 = getelementptr i8, ptr %13, i32 28
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64) #4, !srcloc !130
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !131
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_issue_cmd.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_issue_cmd, %do.end15)) #4
          to label %land.lhs.true [label %do.end15], !srcloc !129

land.lhs.true:                                    ; preds = %do.body5
  %call12 = tail call i32 @___ratelimit(ptr noundef nonnull @bdc_issue_cmd._rs, ptr noundef nonnull @.str.55) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true.do.end15_crit_edge, label %if.then

land.lhs.true.do.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end15

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_issue_cmd.descriptor, ptr noundef %17, ptr noundef nonnull @.str.56, i32 noundef %15) #4
  br label %do.end15

do.end15:                                         ; preds = %if.then, %land.lhs.true.do.end15_crit_edge, %do.body5
  %and = lshr i32 %15, 6
  %shr = and i32 %and, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %shr)
  %cmp.not = icmp eq i32 %shr, 15
  br i1 %cmp.not, label %if.end36, label %do.body17

do.body17:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_issue_cmd.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_issue_cmd, %cleanup)) #4
          to label %if.then31 [label %cleanup], !srcloc !129

if.then31:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_issue_cmd.__UNIQUE_ID_ddebug239, ptr noundef %19, ptr noundef nonnull @.str.57, i32 noundef %shr) #4
  br label %cleanup

if.end36:                                         ; preds = %do.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #4
  %dec = add nsw i32 %timeout.0, -1
  %tobool38.not = icmp eq i32 %timeout.0, 0
  br i1 %tobool38.not, label %do.end42, label %if.end36.do.body5_crit_edge

if.end36.do.body5_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5

do.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.58, i32 noundef 15) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %if.then31, %do.body17
  ret i32 %shr
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !16, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !105, !106, !107, !108, !109, !111, !112, !114, !115, !116, !118, !119}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/udc/bdc/bdc_cmd.c", i32 113, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @bdc_dconfig_ep.__UNIQUE_ID_ddebug243, !1, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/usb/gadget/udc/bdc/bdc_cmd.c", i32 150, i32 2}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @bdc_config_ep.__UNIQUE_ID_ddebug245, !7, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/gadget/udc/bdc/bdc_cmd.c", i32 201, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @bdc_config_ep._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @bdc_config_ep._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/gadget/udc/bdc/bdc_cmd.c", i32 207, i32 2}
!18 = !{ptr @bdc_config_ep.__UNIQUE_ID_ddebug250, !17, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/usb/gadget/udc/bdc/bdc_cmd.c", i32 210, i32 3}
!21 = !{ptr @bdc_config_ep._entry.10, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @bdc_config_ep._entry_ptr.12, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/gadget/udc/bdc/bdc_cmd.c", i32 227, i32 2}
!25 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @bdc_ep_bla.__UNIQUE_ID_ddebug251, !24, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/gadget/udc/bdc/bdc_cmd.c", i32 235, i32 2}
!29 = !{ptr @bdc_ep_bla.__UNIQUE_ID_ddebug252, !28, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/gadget/udc/bdc/bdc_cmd.c", i32 246, i32 2}
!32 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @bdc_address_device.__UNIQUE_ID_ddebug253, !31, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/gadget/udc/bdc/bdc_cmd.c", i32 260, i32 2}
!36 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @bdc_function_wake_fh.__UNIQUE_ID_ddebug254, !35, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/gadget/udc/bdc/bdc_cmd.c", i32 266, i32 2}
!40 = !{ptr @bdc_function_wake_fh.__UNIQUE_ID_ddebug255, !39, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/gadget/udc/bdc/bdc_cmd.c", i32 277, i32 2}
!43 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @bdc_function_wake.__UNIQUE_ID_ddebug256, !42, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/gadget/udc/bdc/bdc_cmd.c", i32 289, i32 2}
!47 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @bdc_ep_set_stall.__UNIQUE_ID_ddebug257, !46, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/gadget/udc/bdc/bdc_cmd.c", i32 303, i32 2}
!51 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @bdc_ep_clear_stall.__UNIQUE_ID_ddebug258, !50, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/gadget/udc/bdc/bdc_cmd.c", i32 326, i32 3}
!55 = !{ptr @bdc_ep_clear_stall._entry, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @bdc_ep_clear_stall._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/gadget/udc/bdc/bdc_cmd.c", i32 342, i32 2}
!59 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @bdc_stop_ep.__UNIQUE_ID_ddebug259, !58, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/gadget/udc/bdc/bdc_cmd.c", i32 346, i32 3}
!63 = !{ptr @bdc_stop_ep._entry, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @bdc_stop_ep._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/gadget/udc/bdc/bdc_cmd.c", i32 358, i32 3}
!67 = !{ptr @bdc_stop_ep._entry.31, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @bdc_stop_ep._entry_ptr.33, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/usb/gadget/udc/bdc/bdc_cmd.c", i32 58, i32 2}
!71 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @bdc_submit_cmd.__UNIQUE_ID_ddebug240, !70, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/gadget/udc/bdc/bdc_cmd.c", i32 64, i32 3}
!75 = !{ptr @bdc_submit_cmd._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @bdc_submit_cmd._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/usb/gadget/udc/bdc/bdc_cmd.c", i32 70, i32 3}
!79 = !{ptr @bdc_submit_cmd.__UNIQUE_ID_ddebug241, !78, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/gadget/udc/bdc/bdc_cmd.c", i32 75, i32 3}
!82 = !{ptr @bdc_submit_cmd._entry.38, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @bdc_submit_cmd._entry_ptr.40, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/gadget/udc/bdc/bdc_cmd.c", i32 80, i32 3}
!86 = !{ptr @bdc_submit_cmd._entry.41, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @bdc_submit_cmd._entry_ptr.43, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/gadget/udc/bdc/bdc_cmd.c", i32 85, i32 3}
!90 = !{ptr @bdc_submit_cmd._entry.44, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @bdc_submit_cmd._entry_ptr.46, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/gadget/udc/bdc/bdc_cmd.c", i32 90, i32 3}
!94 = !{ptr @bdc_submit_cmd._entry.47, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @bdc_submit_cmd._entry_ptr.49, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/gadget/udc/bdc/bdc_cmd.c", i32 95, i32 3}
!98 = !{ptr @bdc_submit_cmd._entry.50, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @bdc_submit_cmd._entry_ptr.52, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/gadget/udc/bdc/bdc_cmd.c", i32 101, i32 3}
!102 = !{ptr @bdc_submit_cmd.__UNIQUE_ID_ddebug242, !101, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!103 = !{ptr @.str.54, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/usb/gadget/udc/bdc/bdc_cmd.c", i32 34, i32 3}
!105 = !{ptr @bdc_issue_cmd._rs, !104, !"_rs", i1 false, i1 false}
!106 = !{ptr @.str.55, !104, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.56, !104, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @bdc_issue_cmd.descriptor, !104, !"descriptor", i1 false, i1 false}
!109 = !{ptr @.str.57, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/usb/gadget/udc/bdc/bdc_cmd.c", i32 37, i32 4}
!111 = !{ptr @bdc_issue_cmd.__UNIQUE_ID_ddebug239, !110, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!112 = !{ptr @.str.58, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/gadget/udc/bdc/bdc_cmd.c", i32 44, i32 2}
!114 = !{ptr @bdc_issue_cmd._entry, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @bdc_issue_cmd._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/gadget/udc/bdc/bdc_cmd.c", i32 128, i32 2}
!118 = !{ptr @.str.60, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @ep_bd_list_reinit.__UNIQUE_ID_ddebug244, !117, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 1, !"min_enum_size", i32 4}
!122 = !{i32 8, !"branch-target-enforcement", i32 0}
!123 = !{i32 8, !"sign-return-address", i32 0}
!124 = !{i32 8, !"sign-return-address-all", i32 0}
!125 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!126 = !{i32 7, !"uwtable", i32 1}
!127 = !{i32 7, !"frame-pointer", i32 2}
!128 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!129 = !{i64 2148195067, i64 2148195072, i64 2148195085, i64 2148195129, i64 2148195163, i64 2148195184}
!130 = !{i64 5791958}
!131 = !{i64 2154377878}
!132 = !{i32 0, i32 33}
!133 = !{i64 2154378259}
!134 = !{i64 5791540}
!135 = !{i64 2154380165}
