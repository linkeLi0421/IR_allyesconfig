; ModuleID = '/llk/IR_all_yes/drivers/hid/usbhid/hid-core.c_pt.bc'
source_filename = "../drivers/hid/usbhid/hid-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+usb_hid_driver\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_hid_driver\09\09\09\09"
module asm "\09.long\09__crc_usb_hid_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_hid_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_hid_driver\22\09\09\09\09\09"
module asm "__kstrtabns_usb_hid_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hid_ll_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.usbhid_device = type { ptr, ptr, i32, i32, ptr, ptr, i32, ptr, ptr, [256 x %struct.hid_control_fifo], i8, i8, ptr, i32, i32, ptr, [256 x %struct.hid_output_fifo], i8, i8, ptr, i32, i32, %struct.mutex, %struct.spinlock, i32, %struct.timer_list, i32, i32, %struct.work_struct, %struct.wait_queue_head }
%struct.hid_control_fifo = type { i8, ptr, ptr }
%struct.hid_output_fifo = type { ptr, ptr }
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.hid_collection = type { i32, i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }
%struct.hid_usage = type { i32, i32, i32, i8, i8, i16, i8, i8, i8, i8, i16 }
%struct.hid_descriptor = type <{ i8, i8, i16, i8, i8, [1 x %struct.hid_class_descriptor] }>
%struct.hid_class_descriptor = type <{ i8, i16 }>
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }

@__param_str_mousepoll = internal constant [17 x i8] c"usbhid.mousepoll\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@hid_mousepoll_interval = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_mousepoll = internal constant %struct.kernel_param { ptr @__param_str_mousepoll, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @hid_mousepoll_interval } }, section "__param", align 4
@__UNIQUE_ID_mousepolltype237 = internal constant [31 x i8] c"usbhid.parmtype=mousepoll:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_mousepoll238 = internal constant [47 x i8] c"usbhid.parm=mousepoll:Polling interval of mice\00", section ".modinfo", align 1
@__param_str_jspoll = internal constant [14 x i8] c"usbhid.jspoll\00", align 1
@hid_jspoll_interval = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_jspoll = internal constant %struct.kernel_param { ptr @__param_str_jspoll, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @hid_jspoll_interval } }, section "__param", align 4
@__UNIQUE_ID_jspolltype239 = internal constant [28 x i8] c"usbhid.parmtype=jspoll:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_jspoll240 = internal constant [49 x i8] c"usbhid.parm=jspoll:Polling interval of joysticks\00", section ".modinfo", align 1
@__param_str_kbpoll = internal constant [14 x i8] c"usbhid.kbpoll\00", align 1
@hid_kbpoll_interval = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_kbpoll = internal constant %struct.kernel_param { ptr @__param_str_kbpoll, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @hid_kbpoll_interval } }, section "__param", align 4
@__UNIQUE_ID_kbpolltype241 = internal constant [28 x i8] c"usbhid.parmtype=kbpoll:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_kbpoll242 = internal constant [49 x i8] c"usbhid.parm=kbpoll:Polling interval of keyboards\00", section ".modinfo", align 1
@__param_str_ignoreled = internal constant [17 x i8] c"usbhid.ignoreled\00", align 1
@ignoreled = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_ignoreled = internal constant %struct.kernel_param { ptr @__param_str_ignoreled, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @ignoreled } }, section "__param", align 4
@__UNIQUE_ID_ignoreledtype243 = internal constant [31 x i8] c"usbhid.parmtype=ignoreled:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_ignoreled244 = internal constant [51 x i8] c"usbhid.parm=ignoreled:Autosuspend with active leds\00", section ".modinfo", align 1
@__param_str_quirks = internal constant [14 x i8] c"usbhid.quirks\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_quirks = internal constant %struct.kparam_array { i32 4, i32 4, ptr null, ptr @param_ops_charp, ptr @quirks_param }, align 4
@__param_quirks = internal constant %struct.kernel_param { ptr @__param_str_quirks, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_quirks } }, section "__param", align 4
@__UNIQUE_ID_quirkstype245 = internal constant [38 x i8] c"usbhid.parmtype=quirks:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_quirks246 = internal constant [158 x i8] c"usbhid.parm=quirks:Add/modify USB HID quirks by specifying  quirks=vendorID:productID:quirks where vendorID, productID, and quirks are all in 0x-prefixed hex\00", section ".modinfo", align 1
@usbhid_init_reports._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 794, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"timeout initializing reports\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"usbhid_init_reports\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/hid/usbhid/hid-core.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usbhid_init_reports._entry_ptr = internal global ptr @usbhid_init_reports._entry, section ".printk_index", align 4
@usb_hid_driver = dso_local global { %struct.hid_ll_driver, [48 x i8] } { %struct.hid_ll_driver { ptr @usbhid_start, ptr @usbhid_stop, ptr @usbhid_open, ptr @usbhid_close, ptr @usbhid_power, ptr @usbhid_parse, ptr @usbhid_request, ptr @usbhid_wait_io, ptr @usbhid_raw_request, ptr @usbhid_output_report, ptr @usbhid_idle, ptr @usbhid_may_wakeup }, [48 x i8] zeroinitializer }, align 32
@__kstrtab_usb_hid_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_hid_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_hid_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_hid_driver to i32), ptr @__kstrtab_usb_hid_driver, ptr @__kstrtabns_usb_hid_driver }, section "___ksymtab_gpl+usb_hid_driver", align 4
@hid_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.16, ptr @usbhid_probe, ptr @usbhid_disconnect, ptr null, ptr @hid_suspend, ptr @hid_resume, ptr @hid_reset_resume, ptr @hid_pre_reset, ptr @hid_post_reset, ptr @hid_usb_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 64 }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_usbhid__257_1707_hid_init6 = internal global ptr @hid_init, section ".initcall6.init", align 4
@__exitcall_hid_exit = internal global ptr @hid_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author258 = internal constant [26 x i8] c"usbhid.author=Andreas Gal\00", section ".modinfo", align 1
@__UNIQUE_ID_author259 = internal constant [29 x i8] c"usbhid.author=Vojtech Pavlik\00", section ".modinfo", align 1
@__UNIQUE_ID_author260 = internal constant [26 x i8] c"usbhid.author=Jiri Kosina\00", section ".modinfo", align 1
@__UNIQUE_ID_description261 = internal constant [39 x i8] c"usbhid.description=USB HID core driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file262 = internal constant [38 x i8] c"usbhid.file=drivers/hid/usbhid/usbhid\00", section ".modinfo", align 1
@__UNIQUE_ID_license263 = internal constant [19 x i8] c"usbhid.license=GPL\00", section ".modinfo", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@quirks_param = internal global { [4 x ptr], [16 x i8] } zeroinitializer, align 32
@__usbhid_submit_report._entry = internal constant %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 533, ptr @.str.3, ptr @.str.4 }, align 1
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"output queue full\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__usbhid_submit_report\00", [41 x i8] zeroinitializer }, align 32
@__usbhid_submit_report._entry_ptr = internal global ptr @__usbhid_submit_report._entry, section ".printk_index", align 4
@__usbhid_submit_report._entry.7 = internal constant %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 539, ptr @.str.3, ptr @.str.4 }, align 1
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"output queueing failed\0A\00", [40 x i8] zeroinitializer }, align 32
@__usbhid_submit_report._entry_ptr.9 = internal global ptr @__usbhid_submit_report._entry.7, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__usbhid_submit_report._entry.10 = internal constant %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 581, ptr @.str.3, ptr @.str.4 }, align 1
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"control queue full\0A\00", [44 x i8] zeroinitializer }, align 32
@__usbhid_submit_report._entry_ptr.12 = internal global ptr @__usbhid_submit_report._entry.10, section ".printk_index", align 4
@__usbhid_submit_report._entry.13 = internal constant %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.2, i32 588, ptr @.str.3, ptr @.str.4 }, align 1
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"control queueing failed\0A\00", [39 x i8] zeroinitializer }, align 32
@__usbhid_submit_report._entry_ptr.15 = internal global ptr @__usbhid_submit_report._entry.13, section ".printk_index", align 4
@usbhid_restart_out_queue.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usbhid\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"usbhid_restart_out_queue\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Kicking head %d tail %d\00", [40 x i8] zeroinitializer }, align 32
@hid_debug = external dso_local local_unnamed_addr global i32, align 4
@hid_submit_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: submitting out urb\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hid_submit_out\00", [17 x i8] zeroinitializer }, align 32
@hid_submit_out._entry_ptr = internal global ptr @hid_submit_out._entry, section ".printk_index", align 4
@hid_submit_out._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 358, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"usb_submit_urb(out) failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@hid_submit_out._entry_ptr.24 = internal global ptr @hid_submit_out._entry.21, section ".printk_index", align 4
@usbhid_restart_ctrl_queue.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.25, ptr @.str.2, ptr @.str.18, i8 0, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"usbhid_restart_ctrl_queue\00", [38 x i8] zeroinitializer }, align 32
@hid_submit_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\017%s: submitting ctrl urb: %s wValue=0x%04x wIndex=0x%04x wLength=%u\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hid_submit_ctrl\00", [16 x i8] zeroinitializer }, align 32
@hid_submit_ctrl._entry_ptr = internal global ptr @hid_submit_ctrl._entry, section ".printk_index", align 4
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Set_Report\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Get_Report\00", [21 x i8] zeroinitializer }, align 32
@hid_submit_ctrl._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.27, ptr @.str.2, i32 414, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"usb_submit_urb(ctrl) failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@hid_submit_ctrl._entry_ptr.32 = internal global ptr @hid_submit_ctrl._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/usb.h\00", [44 x i8] zeroinitializer }, align 32
@usbhid_wait_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017%s: timeout waiting for ctrl or out queue to clear\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"usbhid_wait_io\00", [17 x i8] zeroinitializer }, align 32
@usbhid_wait_io._entry_ptr = internal global ptr @usbhid_wait_io._entry, section ".printk_index", align 4
@usbhid_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 1107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016%s: Fixing fullspeed to highspeed interval: %d -> %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usbhid_start\00", [19 x i8] zeroinitializer }, align 32
@usbhid_start._entry_ptr = internal global ptr @usbhid_start._entry, section ".printk_index", align 4
@usbhid_start._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 1174, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to start in urb: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@usbhid_start._entry_ptr.40 = internal global ptr @usbhid_start._entry.38, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@hid_irq_in._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 319, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"input irq status %d received\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hid_irq_in\00", [21 x i8] zeroinitializer }, align 32
@hid_irq_in._entry_ptr = internal global ptr @hid_irq_in._entry, section ".printk_index", align 4
@hid_irq_in._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.2, i32 329, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"can't resubmit intr, %s-%s/input%d, status %d\0A\00", [49 x i8] zeroinitializer }, align 32
@hid_irq_in._entry_ptr.45 = internal global ptr @hid_irq_in._entry.43, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@hid_irq_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 445, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"output irq status %d received\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hid_irq_out\00", [20 x i8] zeroinitializer }, align 32
@hid_irq_out._entry_ptr = internal global ptr @hid_irq_out._entry, section ".printk_index", align 4
@hid_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 497, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ctrl urb status %d received\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hid_ctrl\00", [23 x i8] zeroinitializer }, align 32
@hid_ctrl._entry_ptr = internal global ptr @hid_ctrl._entry, section ".printk_index", align 4
@usbhid_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 1008, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: class descriptor not present\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usbhid_parse\00", [19 x i8] zeroinitializer }, align 32
@usbhid_parse._entry_ptr = internal global ptr @usbhid_parse._entry, section ".printk_index", align 4
@usbhid_parse._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.2, i32 1013, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: hid descriptor is too short\0A\00", [61 x i8] zeroinitializer }, align 32
@usbhid_parse._entry_ptr.54 = internal global ptr @usbhid_parse._entry.52, section ".printk_index", align 4
@usbhid_parse._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.51, ptr @.str.2, i32 1028, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s: weird size of report descriptor (%u)\0A\00", [52 x i8] zeroinitializer }, align 32
@usbhid_parse._entry_ptr.57 = internal global ptr @usbhid_parse._entry.55, section ".printk_index", align 4
@usbhid_parse._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.51, ptr @.str.2, i32 1041, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: reading report descriptor failed\0A\00", [56 x i8] zeroinitializer }, align 32
@usbhid_parse._entry_ptr.60 = internal global ptr @usbhid_parse._entry.58, section ".printk_index", align 4
@usbhid_parse._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.51, ptr @.str.2, i32 1049, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: parsing report descriptor failed\0A\00", [56 x i8] zeroinitializer }, align 32
@usbhid_parse._entry_ptr.63 = internal global ptr @usbhid_parse._entry.61, section ".printk_index", align 4
@hid_usb_ids = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 128, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@usbhid_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 1348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: HID probe called for ifnum %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usbhid_probe\00", [19 x i8] zeroinitializer }, align 32
@usbhid_probe._entry_ptr = internal global ptr @usbhid_probe._entry, section ".printk_index", align 4
@usbhid_probe._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.2, i32 1354, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"couldn't find an input interrupt endpoint\0A\00", [53 x i8] zeroinitializer }, align 32
@usbhid_probe._entry_ptr.68 = internal global ptr @usbhid_probe._entry.66, section ".printk_index", align 4
@.str.69 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HID %04x:%04x\00", [18 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"/input\00", [25 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@usbhid_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&usbhid->wait\00", [18 x i8] zeroinitializer }, align 32
@usbhid_probe.__key.74 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.75 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&usbhid->reset_work)\00", [57 x i8] zeroinitializer }, align 32
@usbhid_probe.__key.76 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.77 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"(&usbhid->io_retry)\00", [44 x i8] zeroinitializer }, align 32
@usbhid_probe.__key.78 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.79 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&usbhid->lock\00", [18 x i8] zeroinitializer }, align 32
@usbhid_probe.__key.80 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.81 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&usbhid->mutex\00", [17 x i8] zeroinitializer }, align 32
@usbhid_probe._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.65, ptr @.str.2, i32 1427, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"can't add hid device: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@usbhid_probe._entry_ptr.84 = internal global ptr @usbhid_probe._entry.82, section ".printk_index", align 4
@.str.85 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@hid_reset.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.86, ptr @.str.2, ptr @.str.87, i8 0, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hid_reset\00", [22 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clear halt\0A\00", [20 x i8] zeroinitializer }, align 32
@hid_reset.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.86, ptr @.str.2, ptr @.str.88, i8 0, i8 32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"clear-halt failed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@hid_reset.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.86, ptr @.str.2, ptr @.str.89, i8 0, i8 34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"resetting device\0A\00", [46 x i8] zeroinitializer }, align 32
@hid_retry_timeout.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.90, ptr @.str.2, ptr @.str.91, i8 0, i8 27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hid_retry_timeout\00", [46 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"retrying intr urb\0A\00", [45 x i8] zeroinitializer }, align 32
@hid_suspend.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.92, ptr @.str.2, ptr @.str.93, i8 1, i8 -107, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hid_suspend\00", [20 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"suspend\0A\00", [23 x i8] zeroinitializer }, align 32
@hid_resume.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.94, ptr @.str.2, ptr @.str.95, i8 1, i8 -104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hid_resume\00", [21 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"resume status %d\0A\00", [46 x i8] zeroinitializer }, align 32
@hid_post_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.2, i32 1537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017%s: reading report descriptor failed (post_reset)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hid_post_reset\00", [17 x i8] zeroinitializer }, align 32
@hid_post_reset._entry_ptr = internal global ptr @hid_post_reset._entry, section ".printk_index", align 4
@hid_post_reset._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.97, ptr @.str.2, i32 1544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: report descriptor changed\0A\00", [63 x i8] zeroinitializer }, align 32
@hid_post_reset._entry_ptr.100 = internal global ptr @hid_post_reset._entry.98, section ".printk_index", align 4
@hid_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.2, i32 1692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016usbhid: USB HID core driver\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hid_init\00", [23 x i8] zeroinitializer }, align 32
@hid_init._entry_ptr = internal global ptr @hid_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 65538, i64 65540, i64 65542]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 32]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 9]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 9]
@__sancov_gen_cov_switch_values.107 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 4294967186, i64 4294967188, i64 4294967192, i64 4294967212, i64 4294967225, i64 4294967234, i64 4294967264, i64 4294967294]
@__sancov_gen_cov_switch_values.108 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967212, i64 4294967225, i64 4294967294]
@__sancov_gen_cov_switch_values.109 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967212, i64 4294967225, i64 4294967264, i64 4294967294]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@___asan_gen_.112 = private unnamed_addr constant [23 x i8] c"hid_mousepoll_interval\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 48, i32 21 }
@___asan_gen_.115 = private unnamed_addr constant [20 x i8] c"hid_jspoll_interval\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 52, i32 21 }
@___asan_gen_.118 = private unnamed_addr constant [20 x i8] c"hid_kbpoll_interval\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 56, i32 21 }
@___asan_gen_.121 = private unnamed_addr constant [10 x i8] c"ignoreled\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 60, i32 21 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 794, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [15 x i8] c"usb_hid_driver\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 1321, i32 22 }
@___asan_gen_.145 = private unnamed_addr constant [11 x i8] c"hid_driver\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 1662, i32 26 }
@___asan_gen_.148 = private unnamed_addr constant [13 x i8] c"quirks_param\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 65, i32 14 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 533, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 539, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 581, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 588, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 201, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 354, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 358, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 240, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 407, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 414, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1981, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 648, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 1106, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 1173, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 318, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 326, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 444, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 497, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 1008, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 1013, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 1028, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 1041, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 1049, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant [12 x i8] c"hid_usb_ids\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 1654, i32 35 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 1347, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 1354, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 1388, i32 23 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 1393, i32 42 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 1398, i32 21 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 1402, i32 5 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 1418, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 1419, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 1420, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 1421, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 1422, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 1427, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 912, i32 31 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 124, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 130, i32 4 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 137, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 110, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 1620, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 1634, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 1537, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 1544, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.430 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.431 = private constant [33 x i8] c"../drivers/hid/usbhid/hid-core.c\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 1692, i32 2 }
@llvm.compiler.used = appending global [163 x ptr] [ptr @__UNIQUE_ID_author258, ptr @__UNIQUE_ID_author259, ptr @__UNIQUE_ID_author260, ptr @__UNIQUE_ID_description261, ptr @__UNIQUE_ID_file262, ptr @__UNIQUE_ID_ignoreled244, ptr @__UNIQUE_ID_ignoreledtype243, ptr @__UNIQUE_ID_jspoll240, ptr @__UNIQUE_ID_jspolltype239, ptr @__UNIQUE_ID_kbpoll242, ptr @__UNIQUE_ID_kbpolltype241, ptr @__UNIQUE_ID_license263, ptr @__UNIQUE_ID_mousepoll238, ptr @__UNIQUE_ID_mousepolltype237, ptr @__UNIQUE_ID_quirks246, ptr @__UNIQUE_ID_quirkstype245, ptr @__exitcall_hid_exit, ptr @__initcall__kmod_usbhid__257_1707_hid_init6, ptr @__ksymtab_usb_hid_driver, ptr @__param_ignoreled, ptr @__param_jspoll, ptr @__param_kbpoll, ptr @__param_mousepoll, ptr @__param_quirks, ptr @__usbhid_submit_report._entry, ptr @__usbhid_submit_report._entry.10, ptr @__usbhid_submit_report._entry.13, ptr @__usbhid_submit_report._entry.7, ptr @__usbhid_submit_report._entry_ptr, ptr @__usbhid_submit_report._entry_ptr.12, ptr @__usbhid_submit_report._entry_ptr.15, ptr @__usbhid_submit_report._entry_ptr.9, ptr @hid_ctrl._entry, ptr @hid_ctrl._entry_ptr, ptr @hid_exit, ptr @hid_init._entry, ptr @hid_init._entry_ptr, ptr @hid_irq_in._entry, ptr @hid_irq_in._entry.43, ptr @hid_irq_in._entry_ptr, ptr @hid_irq_in._entry_ptr.45, ptr @hid_irq_out._entry, ptr @hid_irq_out._entry_ptr, ptr @hid_post_reset._entry, ptr @hid_post_reset._entry.98, ptr @hid_post_reset._entry_ptr, ptr @hid_post_reset._entry_ptr.100, ptr @hid_submit_ctrl._entry, ptr @hid_submit_ctrl._entry.30, ptr @hid_submit_ctrl._entry_ptr, ptr @hid_submit_ctrl._entry_ptr.32, ptr @hid_submit_out._entry, ptr @hid_submit_out._entry.21, ptr @hid_submit_out._entry_ptr, ptr @hid_submit_out._entry_ptr.24, ptr @usbhid_init_reports._entry, ptr @usbhid_init_reports._entry_ptr, ptr @usbhid_parse._entry, ptr @usbhid_parse._entry.52, ptr @usbhid_parse._entry.55, ptr @usbhid_parse._entry.58, ptr @usbhid_parse._entry.61, ptr @usbhid_parse._entry_ptr, ptr @usbhid_parse._entry_ptr.54, ptr @usbhid_parse._entry_ptr.57, ptr @usbhid_parse._entry_ptr.60, ptr @usbhid_parse._entry_ptr.63, ptr @usbhid_probe._entry, ptr @usbhid_probe._entry.66, ptr @usbhid_probe._entry.82, ptr @usbhid_probe._entry_ptr, ptr @usbhid_probe._entry_ptr.68, ptr @usbhid_probe._entry_ptr.84, ptr @usbhid_start._entry, ptr @usbhid_start._entry.38, ptr @usbhid_start._entry_ptr, ptr @usbhid_start._entry_ptr.40, ptr @usbhid_wait_io._entry, ptr @usbhid_wait_io._entry_ptr, ptr @hid_mousepoll_interval, ptr @hid_jspoll_interval, ptr @hid_kbpoll_interval, ptr @ignoreled, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @usb_hid_driver, ptr @hid_driver, ptr @quirks_param, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @hid_usb_ids, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @usbhid_probe.__key, ptr @.str.73, ptr @usbhid_probe.__key.74, ptr @.str.75, ptr @usbhid_probe.__key.76, ptr @.str.77, ptr @usbhid_probe.__key.78, ptr @.str.79, ptr @usbhid_probe.__key.80, ptr @.str.81, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.99, ptr @.str.101, ptr @.str.102], section "llvm.metadata"
@0 = internal global [107 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_mousepoll_interval to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_jspoll_interval to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_kbpoll_interval to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ignoreled to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhid_init_reports._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_hid_driver to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @quirks_param to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_submit_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_submit_out._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_submit_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_submit_ctrl._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhid_wait_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhid_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhid_start._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_irq_in._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_irq_in._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_irq_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhid_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhid_parse._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhid_parse._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhid_parse._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhid_parse._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_usb_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhid_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhid_probe._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhid_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhid_probe.__key.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhid_probe.__key.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhid_probe.__key.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhid_probe.__key.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhid_probe._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_post_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_post_reset._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbhid_init_reports(ptr noundef %hid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  %report_list = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 15, i32 0, i32 1
  %2 = ptrtoint ptr %report_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %report.061 = load ptr, ptr %report_list, align 4
  %cmp.not62 = icmp eq ptr %report.061, %report_list
  br i1 %cmp.not62, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %report.063 = phi ptr [ %report.0, %for.body.for.body_crit_edge ], [ %report.061, %entry.for.body_crit_edge ]
  tail call fastcc void @usbhid_submit_report(ptr noundef %hid, ptr noundef %report.063, i8 noundef zeroext -128)
  %3 = ptrtoint ptr %report.063 to i32
  call void @__asan_load4_noabort(i32 %3)
  %report.0 = load ptr, ptr %report.063, align 4
  %cmp.not = icmp eq ptr %report.0, %report_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %report_list11 = getelementptr %struct.hid_device, ptr %hid, i32 0, i32 15, i32 2, i32 1
  %4 = ptrtoint ptr %report_list11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %report.164 = load ptr, ptr %report_list11, align 4
  %cmp18.not65 = icmp eq ptr %report.164, %report_list11
  br i1 %cmp18.not65, label %for.end.for.end27_crit_edge, label %for.end.for.body20_crit_edge

for.end.for.body20_crit_edge:                     ; preds = %for.end
  br label %for.body20

for.end.for.end27_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end27

for.body20:                                       ; preds = %for.body20.for.body20_crit_edge, %for.end.for.body20_crit_edge
  %report.166 = phi ptr [ %report.1, %for.body20.for.body20_crit_edge ], [ %report.164, %for.end.for.body20_crit_edge ]
  tail call fastcc void @usbhid_submit_report(ptr noundef %hid, ptr noundef %report.166, i8 noundef zeroext -128)
  %5 = ptrtoint ptr %report.166 to i32
  call void @__asan_load4_noabort(i32 %5)
  %report.1 = load ptr, ptr %report.166, align 4
  %cmp18.not = icmp eq ptr %report.1, %report_list11
  br i1 %cmp18.not, label %for.body20.for.end27_crit_edge, label %for.body20.for.body20_crit_edge

for.body20.for.body20_crit_edge:                  ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body20

for.body20.for.end27_crit_edge:                   ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end27

for.end27:                                        ; preds = %for.body20.for.end27_crit_edge, %for.end.for.end27_crit_edge
  %call = tail call i32 @usbhid_wait_io(ptr noundef %hid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not67 = icmp eq i32 %call, 0
  br i1 %tobool.not67, label %for.end27.if.end38_crit_edge, label %while.body.lr.ph

for.end27.if.end38_crit_edge:                     ; preds = %for.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

while.body.lr.ph:                                 ; preds = %for.end27
  %iofl = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 24
  %urbctrl = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 7
  %urbout = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 15
  br label %while.body

while.body:                                       ; preds = %if.end34.while.body_crit_edge, %while.body.lr.ph
  %6 = ptrtoint ptr %iofl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %iofl, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool29.not = icmp eq i32 %8, 0
  br i1 %tobool29.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %urbctrl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %urbctrl, align 4
  tail call void @usb_kill_urb(ptr noundef %10) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %11 = ptrtoint ptr %iofl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %iofl, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool32.not = icmp eq i32 %13, 0
  br i1 %tobool32.not, label %if.end.if.end34_crit_edge, label %if.then33

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then33:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %urbout to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %urbout, align 4
  tail call void @usb_kill_urb(ptr noundef %15) #13
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end.if.end34_crit_edge
  %call35 = tail call i32 @usbhid_wait_io(ptr noundef %hid)
  %tobool.not = icmp eq i32 %call35, 0
  br i1 %tobool.not, label %do.end, label %if.end34.while.body_crit_edge

if.end34.while.body_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

do.end:                                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str) #16
  br label %if.end38

if.end38:                                         ; preds = %do.end, %for.end27.if.end38_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usbhid_submit_report(ptr noundef %hid, ptr noundef %report, i8 noundef zeroext %dir) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  %lock = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 23
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data, align 8
  %quirks.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 34
  %4 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %quirks.i, align 8
  %and.i = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %dir)
  %cmp.i = icmp eq i8 %dir, -128
  %or.cond.i = and i1 %cmp.i, %tobool.not.i
  br i1 %or.cond.i, label %entry.__usbhid_submit_report.exit_crit_edge, label %lor.lhs.false.i

entry.__usbhid_submit_report.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %__usbhid_submit_report.exit

lor.lhs.false.i:                                  ; preds = %entry
  %iofl.i = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 24
  %6 = ptrtoint ptr %iofl.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %iofl.i, align 4
  %8 = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not.i = icmp eq i32 %8, 0
  br i1 %tobool2.not.i, label %if.end.i, label %lor.lhs.false.i.__usbhid_submit_report.exit_crit_edge

lor.lhs.false.i.__usbhid_submit_report.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__usbhid_submit_report.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %urbout.i = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 15
  %9 = ptrtoint ptr %urbout.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %urbout.i, align 4
  %tobool3.not.i = icmp ne ptr %10, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dir)
  %cmp6.i = icmp eq i8 %dir, 0
  %or.cond212.i = and i1 %cmp6.i, %tobool3.not.i
  br i1 %or.cond212.i, label %land.lhs.true8.i, label %if.end.i.if.end68.i_crit_edge

if.end.i.if.end68.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end68.i

land.lhs.true8.i:                                 ; preds = %if.end.i
  %type.i = getelementptr inbounds %struct.hid_report, ptr %report, i32 0, i32 3
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp9.i = icmp eq i32 %12, 1
  br i1 %cmp9.i, label %if.then11.i, label %land.lhs.true8.i.if.end68.i_crit_edge

land.lhs.true8.i.if.end68.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end68.i

if.then11.i:                                      ; preds = %land.lhs.true8.i
  %outhead.i = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 17
  %13 = ptrtoint ptr %outhead.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %outhead.i, align 4
  %15 = add i8 %14, 1
  %16 = and i8 %15, 63
  %outtail.i = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 18
  %17 = ptrtoint ptr %outtail.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %outtail.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %18)
  %cmp15.i = icmp eq i8 %16, %18
  br i1 %cmp15.i, label %do.end.i, label %if.end18.i

do.end.i:                                         ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.5) #16
  br label %__usbhid_submit_report.exit

if.end18.i:                                       ; preds = %if.then11.i
  %call19.i = tail call ptr @hid_alloc_report_buf(ptr noundef %report, i32 noundef 2592) #13
  %19 = ptrtoint ptr %outhead.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %outhead.i, align 4
  %idxprom.i = zext i8 %20 to i32
  %raw_report.i = getelementptr %struct.usbhid_device, ptr %3, i32 0, i32 16, i32 %idxprom.i, i32 1
  %21 = ptrtoint ptr %raw_report.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call19.i, ptr %raw_report.i, align 4
  %tobool26.not.i = icmp eq ptr %call19.i, null
  br i1 %tobool26.not.i, label %do.end30.i, label %if.end32.i

do.end30.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev31.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev31.i, ptr noundef nonnull @.str.8) #16
  br label %__usbhid_submit_report.exit

if.end32.i:                                       ; preds = %if.end18.i
  tail call void @hid_output_report(ptr noundef %report, ptr noundef nonnull %call19.i) #13
  %22 = ptrtoint ptr %outhead.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %outhead.i, align 4
  %idxprom40.i = zext i8 %23 to i32
  %arrayidx41.i = getelementptr %struct.usbhid_device, ptr %3, i32 0, i32 16, i32 %idxprom40.i
  %24 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %report, ptr %arrayidx41.i, align 4
  store i8 %16, ptr %outhead.i, align 4
  %25 = ptrtoint ptr %iofl.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %iofl.i, align 4
  %27 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool47.not.i = icmp eq i32 %27, 0
  br i1 %tobool47.not.i, label %if.then48.i, label %if.else.i

if.then48.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @usbhid_restart_out_queue(ptr noundef %3) #13
  br label %__usbhid_submit_report.exit

if.else.i:                                        ; preds = %if.end32.i
  %last_out.i = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 21
  %28 = ptrtoint ptr %last_out.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %last_out.i, align 4
  %add50.i = add i32 %29, 500
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add50.i, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp51.i = icmp slt i32 %sub.i, 0
  br i1 %cmp51.i, label %if.then53.i, label %if.else.i.__usbhid_submit_report.exit_crit_edge

if.else.i.__usbhid_submit_report.exit_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__usbhid_submit_report.exit

if.then53.i:                                      ; preds = %if.else.i
  %intf.i = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 1
  %31 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %intf.i, align 4
  tail call void @usb_autopm_get_interface_no_resume(ptr noundef %32) #13
  %33 = ptrtoint ptr %urbout.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %urbout.i, align 4
  tail call void @usb_block_urb(ptr noundef %34) #13
  %lock.i = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 23
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #13
  %35 = ptrtoint ptr %urbout.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %urbout.i, align 4
  %call56.i = tail call i32 @usb_unlink_urb(ptr noundef %36) #13
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #13
  %37 = ptrtoint ptr %urbout.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %urbout.i, align 4
  tail call void @usb_unpoison_urb(ptr noundef %38) #13
  %39 = ptrtoint ptr %iofl.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %iofl.i, align 4
  %41 = and i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool61.not.i = icmp eq i32 %41, 0
  br i1 %tobool61.not.i, label %if.then62.i, label %if.then53.i.if.end64.i_crit_edge

if.then53.i.if.end64.i_crit_edge:                 ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64.i

if.then62.i:                                      ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @usbhid_restart_out_queue(ptr noundef %3) #13
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.then62.i, %if.then53.i.if.end64.i_crit_edge
  %42 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %intf.i, align 4
  tail call void @usb_autopm_put_interface_async(ptr noundef %43) #13
  br label %__usbhid_submit_report.exit

if.end68.i:                                       ; preds = %land.lhs.true8.i.if.end68.i_crit_edge, %if.end.i.if.end68.i_crit_edge
  %ctrlhead.i = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 10
  %44 = ptrtoint ptr %ctrlhead.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ctrlhead.i, align 4
  %46 = add i8 %45, 1
  %ctrltail.i = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 11
  %47 = ptrtoint ptr %ctrltail.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ctrltail.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %46, i8 %48)
  %cmp73.i = icmp eq i8 %46, %48
  br i1 %cmp73.i, label %do.end78.i, label %if.end80.i

do.end78.i:                                       ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev79.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev79.i, ptr noundef nonnull @.str.11) #16
  br label %__usbhid_submit_report.exit

if.end80.i:                                       ; preds = %if.end68.i
  br i1 %cmp6.i, label %if.then84.i, label %if.end80.i.if.end107.i_crit_edge

if.end80.i.if.end107.i_crit_edge:                 ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end107.i

if.then84.i:                                      ; preds = %if.end80.i
  %call85.i = tail call ptr @hid_alloc_report_buf(ptr noundef %report, i32 noundef 2592) #13
  %49 = ptrtoint ptr %ctrlhead.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %ctrlhead.i, align 4
  %idxprom87.i = zext i8 %50 to i32
  %raw_report89.i = getelementptr %struct.usbhid_device, ptr %3, i32 0, i32 9, i32 %idxprom87.i, i32 2
  %51 = ptrtoint ptr %raw_report89.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call85.i, ptr %raw_report89.i, align 4
  %tobool95.not.i = icmp eq ptr %call85.i, null
  br i1 %tobool95.not.i, label %do.end99.i, label %if.end101.i

do.end99.i:                                       ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev100.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev100.i, ptr noundef nonnull @.str.14) #16
  br label %__usbhid_submit_report.exit

if.end101.i:                                      ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @hid_output_report(ptr noundef %report, ptr noundef nonnull %call85.i) #13
  br label %if.end107.i

if.end107.i:                                      ; preds = %if.end101.i, %if.end80.i.if.end107.i_crit_edge
  %52 = ptrtoint ptr %ctrlhead.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %ctrlhead.i, align 4
  %idxprom110.i = zext i8 %53 to i32
  %report112.i = getelementptr %struct.usbhid_device, ptr %3, i32 0, i32 9, i32 %idxprom110.i, i32 1
  %54 = ptrtoint ptr %report112.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %report, ptr %report112.i, align 4
  %arrayidx116.i = getelementptr %struct.usbhid_device, ptr %3, i32 0, i32 9, i32 %idxprom110.i
  %55 = ptrtoint ptr %arrayidx116.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %dir, ptr %arrayidx116.i, align 4
  store i8 %46, ptr %ctrlhead.i, align 4
  %56 = ptrtoint ptr %iofl.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %iofl.i, align 4
  %58 = and i32 %57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool122.not.i = icmp eq i32 %58, 0
  br i1 %tobool122.not.i, label %if.then123.i, label %if.else125.i

if.then123.i:                                     ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @usbhid_restart_ctrl_queue(ptr noundef %3) #13
  br label %__usbhid_submit_report.exit

if.else125.i:                                     ; preds = %if.end107.i
  %last_ctrl.i = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 14
  %59 = ptrtoint ptr %last_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %last_ctrl.i, align 4
  %add126.i = add i32 %60, 500
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %61 = load volatile i32, ptr @jiffies, align 128
  %sub127.i = sub i32 %add126.i, %61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub127.i)
  %cmp128.i = icmp slt i32 %sub127.i, 0
  br i1 %cmp128.i, label %if.then130.i, label %if.else125.i.__usbhid_submit_report.exit_crit_edge

if.else125.i.__usbhid_submit_report.exit_crit_edge: ; preds = %if.else125.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__usbhid_submit_report.exit

if.then130.i:                                     ; preds = %if.else125.i
  %intf131.i = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 1
  %62 = ptrtoint ptr %intf131.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %intf131.i, align 4
  tail call void @usb_autopm_get_interface_no_resume(ptr noundef %63) #13
  %urbctrl.i = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 7
  %64 = ptrtoint ptr %urbctrl.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %urbctrl.i, align 4
  tail call void @usb_block_urb(ptr noundef %65) #13
  %lock132.i = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 23
  tail call void @_raw_spin_unlock(ptr noundef %lock132.i) #13
  %66 = ptrtoint ptr %urbctrl.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %urbctrl.i, align 4
  %call134.i = tail call i32 @usb_unlink_urb(ptr noundef %67) #13
  tail call void @_raw_spin_lock(ptr noundef %lock132.i) #13
  %68 = ptrtoint ptr %urbctrl.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %urbctrl.i, align 4
  tail call void @usb_unpoison_urb(ptr noundef %69) #13
  %70 = ptrtoint ptr %iofl.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %iofl.i, align 4
  %72 = and i32 %71, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool139.not.i = icmp eq i32 %72, 0
  br i1 %tobool139.not.i, label %if.then140.i, label %if.then130.i.if.end142.i_crit_edge

if.then130.i.if.end142.i_crit_edge:               ; preds = %if.then130.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end142.i

if.then140.i:                                     ; preds = %if.then130.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @usbhid_restart_ctrl_queue(ptr noundef %3) #13
  br label %if.end142.i

if.end142.i:                                      ; preds = %if.then140.i, %if.then130.i.if.end142.i_crit_edge
  %73 = ptrtoint ptr %intf131.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %intf131.i, align 4
  tail call void @usb_autopm_put_interface_async(ptr noundef %74) #13
  br label %__usbhid_submit_report.exit

__usbhid_submit_report.exit:                      ; preds = %if.end142.i, %if.else125.i.__usbhid_submit_report.exit_crit_edge, %if.then123.i, %do.end99.i, %do.end78.i, %if.end64.i, %if.else.i.__usbhid_submit_report.exit_crit_edge, %if.then48.i, %do.end30.i, %do.end.i, %lor.lhs.false.i.__usbhid_submit_report.exit_crit_edge, %entry.__usbhid_submit_report.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhid_wait_io(ptr nocapture noundef readonly %hid) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 647) #13
  %iofl = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %iofl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %iofl, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.then13_crit_edge

entry.if.then13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

land.rhs:                                         ; preds = %entry
  %5 = ptrtoint ptr %iofl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %iofl, align 4
  %7 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %land.rhs.cleanup61_crit_edge, label %land.rhs.if.then13_crit_edge

land.rhs.if.then13_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

land.rhs.cleanup61_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup61

if.then13:                                        ; preds = %land.rhs.if.then13_crit_edge, %entry.if.then13_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %8 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %wait = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 29
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then13
  %__ret14.0 = phi i32 [ 1000, %if.then13 ], [ %call42, %cleanup ]
  %call15 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %9 = ptrtoint ptr %iofl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %iofl, align 4
  %11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool19.not = icmp eq i32 %11, 0
  br i1 %tobool19.not, label %land.end25, label %for.cond.land.end25.thread_crit_edge

for.cond.land.end25.thread_crit_edge:             ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end25.thread

land.end25:                                       ; preds = %for.cond
  %12 = ptrtoint ptr %iofl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %iofl, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool23.not = icmp eq i32 %14, 0
  br i1 %tobool23.not, label %if.end45.thread90, label %land.end25.land.end25.thread_crit_edge

land.end25.land.end25.thread_crit_edge:           ; preds = %land.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end25.thread

if.end45.thread90:                                ; preds = %land.end25
  call void @__sanitizer_cov_trace_pc() #15
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %cleanup61

land.end25.thread:                                ; preds = %land.end25.land.end25.thread_crit_edge, %for.cond.land.end25.thread_crit_edge
  %tobool35.not = icmp eq i32 %__ret14.0, 0
  br i1 %tobool35.not, label %if.end45, label %cleanup

cleanup:                                          ; preds = %land.end25.thread
  call void @__sanitizer_cov_trace_pc() #15
  %call42 = call i32 @schedule_timeout(i32 noundef %__ret14.0) #13
  br label %for.cond

if.end45:                                         ; preds = %land.end25.thread
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %15 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool50.not = icmp eq i32 %15, 0
  br i1 %tobool50.not, label %if.end45.cleanup61_crit_edge, label %do.end54

if.end45.cleanup61_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup61

do.end54:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.2) #16
  br label %cleanup61

cleanup61:                                        ; preds = %do.end54, %if.end45.cleanup61_crit_edge, %if.end45.thread90, %land.rhs.cleanup61_crit_edge
  %retval.0 = phi i32 [ -1, %do.end54 ], [ -1, %if.end45.cleanup61_crit_edge ], [ 0, %if.end45.thread90 ], [ 0, %land.rhs.cleanup61_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhid_start(ptr noundef %hid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  %parent = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %cur_altsetting = getelementptr i8, ptr %1, i32 -28
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  %parent.i = getelementptr i8, ptr %1, i32 136
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 -128
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %6 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data, align 8
  %mutex = getelementptr inbounds %struct.usbhid_device, ptr %7, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %iofl = getelementptr inbounds %struct.usbhid_device, ptr %7, i32 0, i32 24
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %iofl) #13
  %bufsize = getelementptr inbounds %struct.usbhid_device, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %bufsize to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 64, ptr %bufsize, align 4
  %arrayidx.i = getelementptr %struct.hid_device, ptr %hid, i32 0, i32 15, i32 0
  %report_list.i = getelementptr %struct.hid_device, ptr %hid, i32 0, i32 15, i32 0, i32 1
  %9 = ptrtoint ptr %report_list.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %report.022.i = load ptr, ptr %report_list.i, align 4
  %cmp.not23.i = icmp eq ptr %report.022.i, %report_list.i
  br i1 %cmp.not23.i, label %entry.hid_find_max_report.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.hid_find_max_report.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hid_find_max_report.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %report.024.i = phi ptr [ %report.0.i, %for.inc.i.for.body.i_crit_edge ], [ %report.022.i, %entry.for.body.i_crit_edge ]
  %size4.i = getelementptr inbounds %struct.hid_report, ptr %report.024.i, i32 0, i32 7
  %10 = ptrtoint ptr %size4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size4.i, align 4
  %sub.i237 = add i32 %11, -1
  %shr.i = lshr i32 %sub.i237, 3
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %13, 1
  %add7.i = add i32 %add.i, %shr.i
  %14 = ptrtoint ptr %bufsize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bufsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %add7.i)
  %cmp8.i = icmp ult i32 %15, %add7.i
  br i1 %cmp8.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %bufsize to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add7.i, ptr %bufsize, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %17 = ptrtoint ptr %report.024.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %report.0.i = load ptr, ptr %report.024.i, align 4
  %cmp.not.i = icmp eq ptr %report.0.i, %report_list.i
  br i1 %cmp.not.i, label %for.inc.i.hid_find_max_report.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.hid_find_max_report.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hid_find_max_report.exit

hid_find_max_report.exit:                         ; preds = %for.inc.i.hid_find_max_report.exit_crit_edge, %entry.hid_find_max_report.exit_crit_edge
  %arrayidx.i238 = getelementptr %struct.hid_device, ptr %hid, i32 0, i32 15, i32 1
  %report_list.i239 = getelementptr %struct.hid_device, ptr %hid, i32 0, i32 15, i32 1, i32 1
  %18 = ptrtoint ptr %report_list.i239 to i32
  call void @__asan_load4_noabort(i32 %18)
  %report.022.i240 = load ptr, ptr %report_list.i239, align 4
  %cmp.not23.i241 = icmp eq ptr %report.022.i240, %report_list.i239
  br i1 %cmp.not23.i241, label %hid_find_max_report.exit.hid_find_max_report.exit254_crit_edge, label %hid_find_max_report.exit.for.body.i249_crit_edge

hid_find_max_report.exit.for.body.i249_crit_edge: ; preds = %hid_find_max_report.exit
  br label %for.body.i249

hid_find_max_report.exit.hid_find_max_report.exit254_crit_edge: ; preds = %hid_find_max_report.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %hid_find_max_report.exit254

for.body.i249:                                    ; preds = %for.inc.i253.for.body.i249_crit_edge, %hid_find_max_report.exit.for.body.i249_crit_edge
  %report.024.i242 = phi ptr [ %report.0.i251, %for.inc.i253.for.body.i249_crit_edge ], [ %report.022.i240, %hid_find_max_report.exit.for.body.i249_crit_edge ]
  %size4.i243 = getelementptr inbounds %struct.hid_report, ptr %report.024.i242, i32 0, i32 7
  %19 = ptrtoint ptr %size4.i243 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size4.i243, align 4
  %sub.i244 = add i32 %20, -1
  %shr.i245 = lshr i32 %sub.i244, 3
  %21 = ptrtoint ptr %arrayidx.i238 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i238, align 4
  %add.i246 = add i32 %22, 1
  %add7.i247 = add i32 %add.i246, %shr.i245
  %23 = ptrtoint ptr %bufsize to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bufsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %add7.i247)
  %cmp8.i248 = icmp ult i32 %24, %add7.i247
  br i1 %cmp8.i248, label %if.then.i250, label %for.body.i249.for.inc.i253_crit_edge

for.body.i249.for.inc.i253_crit_edge:             ; preds = %for.body.i249
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i253

if.then.i250:                                     ; preds = %for.body.i249
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %bufsize to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add7.i247, ptr %bufsize, align 4
  br label %for.inc.i253

for.inc.i253:                                     ; preds = %if.then.i250, %for.body.i249.for.inc.i253_crit_edge
  %26 = ptrtoint ptr %report.024.i242 to i32
  call void @__asan_load4_noabort(i32 %26)
  %report.0.i251 = load ptr, ptr %report.024.i242, align 4
  %cmp.not.i252 = icmp eq ptr %report.0.i251, %report_list.i239
  br i1 %cmp.not.i252, label %for.inc.i253.hid_find_max_report.exit254_crit_edge, label %for.inc.i253.for.body.i249_crit_edge

for.inc.i253.for.body.i249_crit_edge:             ; preds = %for.inc.i253
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i249

for.inc.i253.hid_find_max_report.exit254_crit_edge: ; preds = %for.inc.i253
  call void @__sanitizer_cov_trace_pc() #15
  br label %hid_find_max_report.exit254

hid_find_max_report.exit254:                      ; preds = %for.inc.i253.hid_find_max_report.exit254_crit_edge, %hid_find_max_report.exit.hid_find_max_report.exit254_crit_edge
  %arrayidx.i255 = getelementptr %struct.hid_device, ptr %hid, i32 0, i32 15, i32 2
  %report_list.i256 = getelementptr %struct.hid_device, ptr %hid, i32 0, i32 15, i32 2, i32 1
  %27 = ptrtoint ptr %report_list.i256 to i32
  call void @__asan_load4_noabort(i32 %27)
  %report.022.i257 = load ptr, ptr %report_list.i256, align 4
  %cmp.not23.i258 = icmp eq ptr %report.022.i257, %report_list.i256
  br i1 %cmp.not23.i258, label %hid_find_max_report.exit254.hid_find_max_report.exit271_crit_edge, label %hid_find_max_report.exit254.for.body.i266_crit_edge

hid_find_max_report.exit254.for.body.i266_crit_edge: ; preds = %hid_find_max_report.exit254
  br label %for.body.i266

hid_find_max_report.exit254.hid_find_max_report.exit271_crit_edge: ; preds = %hid_find_max_report.exit254
  call void @__sanitizer_cov_trace_pc() #15
  br label %hid_find_max_report.exit271

for.body.i266:                                    ; preds = %for.inc.i270.for.body.i266_crit_edge, %hid_find_max_report.exit254.for.body.i266_crit_edge
  %report.024.i259 = phi ptr [ %report.0.i268, %for.inc.i270.for.body.i266_crit_edge ], [ %report.022.i257, %hid_find_max_report.exit254.for.body.i266_crit_edge ]
  %size4.i260 = getelementptr inbounds %struct.hid_report, ptr %report.024.i259, i32 0, i32 7
  %28 = ptrtoint ptr %size4.i260 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size4.i260, align 4
  %sub.i261 = add i32 %29, -1
  %shr.i262 = lshr i32 %sub.i261, 3
  %30 = ptrtoint ptr %arrayidx.i255 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i255, align 4
  %add.i263 = add i32 %31, 1
  %add7.i264 = add i32 %add.i263, %shr.i262
  %32 = ptrtoint ptr %bufsize to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bufsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %add7.i264)
  %cmp8.i265 = icmp ult i32 %33, %add7.i264
  br i1 %cmp8.i265, label %if.then.i267, label %for.body.i266.for.inc.i270_crit_edge

for.body.i266.for.inc.i270_crit_edge:             ; preds = %for.body.i266
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i270

if.then.i267:                                     ; preds = %for.body.i266
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %bufsize to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add7.i264, ptr %bufsize, align 4
  br label %for.inc.i270

for.inc.i270:                                     ; preds = %if.then.i267, %for.body.i266.for.inc.i270_crit_edge
  %35 = ptrtoint ptr %report.024.i259 to i32
  call void @__asan_load4_noabort(i32 %35)
  %report.0.i268 = load ptr, ptr %report.024.i259, align 4
  %cmp.not.i269 = icmp eq ptr %report.0.i268, %report_list.i256
  br i1 %cmp.not.i269, label %for.inc.i270.hid_find_max_report.exit271_crit_edge, label %for.inc.i270.for.body.i266_crit_edge

for.inc.i270.for.body.i266_crit_edge:             ; preds = %for.inc.i270
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i266

for.inc.i270.hid_find_max_report.exit271_crit_edge: ; preds = %for.inc.i270
  call void @__sanitizer_cov_trace_pc() #15
  br label %hid_find_max_report.exit271

hid_find_max_report.exit271:                      ; preds = %for.inc.i270.hid_find_max_report.exit271_crit_edge, %hid_find_max_report.exit254.hid_find_max_report.exit271_crit_edge
  %36 = ptrtoint ptr %bufsize to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bufsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %37)
  %cmp = icmp ugt i32 %37, 16384
  br i1 %cmp, label %if.then, label %hid_find_max_report.exit271.if.end_crit_edge

hid_find_max_report.exit271.if.end_crit_edge:     ; preds = %hid_find_max_report.exit271
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %hid_find_max_report.exit271
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %bufsize to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 16384, ptr %bufsize, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %hid_find_max_report.exit271.if.end_crit_edge
  %39 = ptrtoint ptr %report_list.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %report.022.i274 = load ptr, ptr %report_list.i, align 4
  %cmp.not23.i275 = icmp eq ptr %report.022.i274, %report_list.i
  br i1 %cmp.not23.i275, label %if.end.if.end9_crit_edge, label %for.body.i283.preheader

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

for.body.i283.preheader:                          ; preds = %if.end
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i, align 4
  %add.i280 = add i32 %41, 1
  br label %for.body.i283

for.body.i283:                                    ; preds = %for.body.i283.for.body.i283_crit_edge, %for.body.i283.preheader
  %insize.0 = phi i32 [ %44, %for.body.i283.for.body.i283_crit_edge ], [ 0, %for.body.i283.preheader ]
  %report.024.i276 = phi ptr [ %report.0.i285, %for.body.i283.for.body.i283_crit_edge ], [ %report.022.i274, %for.body.i283.preheader ]
  %size4.i277 = getelementptr inbounds %struct.hid_report, ptr %report.024.i276, i32 0, i32 7
  %42 = ptrtoint ptr %size4.i277 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %size4.i277, align 4
  %sub.i278 = add i32 %43, -1
  %shr.i279 = lshr i32 %sub.i278, 3
  %add7.i281 = add i32 %add.i280, %shr.i279
  %44 = tail call i32 @llvm.umax.i32(i32 %insize.0, i32 %add7.i281)
  %45 = ptrtoint ptr %report.024.i276 to i32
  call void @__asan_load4_noabort(i32 %45)
  %report.0.i285 = load ptr, ptr %report.024.i276, align 4
  %cmp.not.i286 = icmp eq ptr %report.0.i285, %report_list.i
  br i1 %cmp.not.i286, label %hid_find_max_report.exit288, label %for.body.i283.for.body.i283_crit_edge

for.body.i283.for.body.i283_crit_edge:            ; preds = %for.body.i283
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i283

hid_find_max_report.exit288:                      ; preds = %for.body.i283
  call void @__sanitizer_cov_trace_pc() #15
  %46 = tail call i32 @llvm.umin.i32(i32 %44, i32 16384)
  br label %if.end9

if.end9:                                          ; preds = %hid_find_max_report.exit288, %if.end.if.end9_crit_edge
  %insize.3 = phi i32 [ 0, %if.end.if.end9_crit_edge ], [ %46, %hid_find_max_report.exit288 ]
  %47 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %driver_data, align 8
  %bufsize.i = getelementptr inbounds %struct.usbhid_device, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %bufsize.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bufsize.i, align 4
  %inbuf_dma.i = getelementptr inbounds %struct.usbhid_device, ptr %48, i32 0, i32 6
  %call.i = tail call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i, i32 noundef %50, i32 noundef 3264, ptr noundef %inbuf_dma.i) #13
  %inbuf.i = getelementptr inbounds %struct.usbhid_device, ptr %48, i32 0, i32 5
  %51 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i, ptr %inbuf.i, align 4
  %52 = ptrtoint ptr %bufsize.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bufsize.i, align 4
  %outbuf_dma.i = getelementptr inbounds %struct.usbhid_device, ptr %48, i32 0, i32 20
  %call2.i = tail call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i, i32 noundef %53, i32 noundef 3264, ptr noundef %outbuf_dma.i) #13
  %outbuf.i = getelementptr inbounds %struct.usbhid_device, ptr %48, i32 0, i32 19
  %54 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call2.i, ptr %outbuf.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %55 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %55, i32 noundef 3264, i32 noundef 8) #17
  %cr.i = getelementptr inbounds %struct.usbhid_device, ptr %48, i32 0, i32 8
  %56 = ptrtoint ptr %cr.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call7.i.i, ptr %cr.i, align 4
  %57 = ptrtoint ptr %bufsize.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bufsize.i, align 4
  %ctrlbuf_dma.i = getelementptr inbounds %struct.usbhid_device, ptr %48, i32 0, i32 13
  %call5.i = tail call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i, i32 noundef %58, i32 noundef 3264, ptr noundef %ctrlbuf_dma.i) #13
  %ctrlbuf.i = getelementptr inbounds %struct.usbhid_device, ptr %48, i32 0, i32 12
  %59 = ptrtoint ptr %ctrlbuf.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call5.i, ptr %ctrlbuf.i, align 4
  %60 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %inbuf.i, align 4
  %tobool.not.i289 = icmp eq ptr %61, null
  br i1 %tobool.not.i289, label %if.end9.fail_crit_edge, label %lor.lhs.false.i

if.end9.fail_crit_edge:                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

lor.lhs.false.i:                                  ; preds = %if.end9
  %62 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %outbuf.i, align 4
  %tobool8.not.i = icmp eq ptr %63, null
  br i1 %tobool8.not.i, label %lor.lhs.false.i.fail_crit_edge, label %hid_alloc_buffers.exit

lor.lhs.false.i.fail_crit_edge:                   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

hid_alloc_buffers.exit:                           ; preds = %lor.lhs.false.i
  %64 = ptrtoint ptr %cr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cr.i, align 4
  %tobool11.not.i = icmp ne ptr %65, null
  %tobool14.not.i = icmp ne ptr %call5.i, null
  %or.cond.i = select i1 %tobool11.not.i, i1 %tobool14.not.i, i1 false
  br i1 %or.cond.i, label %for.cond.preheader, label %hid_alloc_buffers.exit.fail_crit_edge

hid_alloc_buffers.exit.fail_crit_edge:            ; preds = %hid_alloc_buffers.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

for.cond.preheader:                               ; preds = %hid_alloc_buffers.exit
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 4
  %66 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %cmp13344.not = icmp eq i8 %67, 0
  br i1 %cmp13344.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %endpoint15 = getelementptr inbounds %struct.usb_host_interface, ptr %3, i32 0, i32 3
  %quirks = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 34
  %speed = getelementptr i8, ptr %5, i32 -100
  %name = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 39
  %collection = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 4
  %urbin = getelementptr inbounds %struct.usbhid_device, ptr %7, i32 0, i32 4
  %inbuf = getelementptr inbounds %struct.usbhid_device, ptr %7, i32 0, i32 5
  %inbuf_dma = getelementptr inbounds %struct.usbhid_device, ptr %7, i32 0, i32 6
  %urbout = getelementptr inbounds %struct.usbhid_device, ptr %7, i32 0, i32 15
  %outbuf = getelementptr inbounds %struct.usbhid_device, ptr %7, i32 0, i32 19
  %outbuf_dma = getelementptr inbounds %struct.usbhid_device, ptr %7, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %n.0345 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %68 = ptrtoint ptr %endpoint15 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %endpoint15, align 4
  %arrayidx = getelementptr %struct.usb_host_endpoint, ptr %69, i32 %n.0345
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %70 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %bmAttributes.i, align 1
  %72 = and i8 %71, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %72)
  %cmp.i.not = icmp eq i8 %72, 3
  br i1 %cmp.i.not, label %if.end20, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end20:                                         ; preds = %for.body
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 5
  %73 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %bInterval, align 1
  %conv21 = zext i8 %74 to i32
  %75 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %quirks, align 8
  %and = and i32 %76, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.end20.if.end33_crit_edge, label %land.lhs.true

if.end20.if.end33_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

land.lhs.true:                                    ; preds = %if.end20
  %77 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %78)
  %cmp23 = icmp eq i32 %78, 3
  br i1 %cmp23, label %if.then25, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %mul = shl nuw nsw i32 %conv21, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool.not.i = icmp eq i8 %74, 0
  %79 = tail call i32 @llvm.ctlz.i32(i32 %mul, i1 true) #13, !range !257
  %sub.i = sub nuw nsw i32 32, %79
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name, i32 noundef %conv21, i32 noundef %cond.i) #16
  br label %if.end33

if.end33:                                         ; preds = %if.then25, %land.lhs.true.if.end33_crit_edge, %if.end20.if.end33_crit_edge
  %interval.0 = phi i32 [ %cond.i, %if.then25 ], [ %conv21, %land.lhs.true.if.end33_crit_edge ], [ %conv21, %if.end20.if.end33_crit_edge ]
  %80 = ptrtoint ptr %collection to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %collection, align 8
  %usage = getelementptr inbounds %struct.hid_collection, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %usage, align 4
  %84 = zext i32 %83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values)
  switch i32 %83, label %if.end33.sw.epilog_crit_edge [
    i32 65538, label %sw.bb
    i32 65540, label %sw.bb38
    i32 65542, label %sw.bb43
  ]

if.end33.sw.epilog_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  %85 = load i32, ptr @hid_mousepoll_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp34.not = icmp eq i32 %85, 0
  %spec.select = select i1 %cmp34.not, i32 %interval.0, i32 %85
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  %86 = load i32, ptr @hid_jspoll_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp39.not = icmp eq i32 %86, 0
  %spec.select235 = select i1 %cmp39.not, i32 %interval.0, i32 %86
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  %87 = load i32, ptr @hid_kbpoll_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp44.not = icmp eq i32 %87, 0
  %spec.select236 = select i1 %cmp44.not, i32 %interval.0, i32 %87
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb43, %sw.bb38, %sw.bb, %if.end33.sw.epilog_crit_edge
  %interval.1 = phi i32 [ %interval.0, %if.end33.sw.epilog_crit_edge ], [ %spec.select, %sw.bb ], [ %spec.select235, %sw.bb38 ], [ %spec.select236, %sw.bb43 ]
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %88 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %bEndpointAddress.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %89)
  %tobool49.not = icmp sgt i8 %89, -1
  br i1 %tobool49.not, label %if.else, label %if.then50

if.then50:                                        ; preds = %sw.epilog
  %90 = ptrtoint ptr %urbin to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %urbin, align 4
  %tobool51.not = icmp eq ptr %91, null
  br i1 %tobool51.not, label %if.end53, label %if.then50.for.inc_crit_edge

if.then50.for.inc_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end53:                                         ; preds = %if.then50
  %call54 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #13
  %92 = ptrtoint ptr %urbin to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call54, ptr %urbin, align 4
  %tobool56.not = icmp eq ptr %call54, null
  br i1 %tobool56.not, label %if.end53.fail_crit_edge, label %if.end58

if.end53.fail_crit_edge:                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end58:                                         ; preds = %if.end53
  %93 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %bEndpointAddress.i, align 1
  %conv59 = zext i8 %94 to i32
  %95 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %96, 8
  %shl1.i = shl nuw nsw i32 %conv59, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or61 = or i32 %or.i, 1073741952
  %97 = ptrtoint ptr %inbuf to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %inbuf, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call54, i32 0, i32 8
  %99 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %add.ptr.i, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call54, i32 0, i32 10
  %100 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %or61, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call54, i32 0, i32 14
  %101 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %98, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call54, i32 0, i32 19
  %102 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %insize.3, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call54, i32 0, i32 28
  %103 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @hid_irq_in, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call54, i32 0, i32 27
  %104 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %hid, ptr %context4.i, align 4
  %105 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %106)
  %cmp.i290 = icmp eq i32 %106, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %106)
  %cmp6.i = icmp ugt i32 %106, 4
  %or.cond.i291 = or i1 %cmp.i290, %cmp6.i
  br i1 %or.cond.i291, label %if.then.i294, label %if.end58.for.inc.sink.split_crit_edge

if.end58.for.inc.sink.split_crit_edge:            ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.sink.split

if.then.i294:                                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  %107 = tail call i32 @llvm.smax.i32(i32 %interval.1, i32 1) #13
  %108 = tail call i32 @llvm.umin.i32(i32 %107, i32 16) #13
  %sub.i292 = add nsw i32 %108, -1
  %shl.i293 = shl nuw nsw i32 1, %sub.i292
  br label %for.inc.sink.split

if.else:                                          ; preds = %sw.epilog
  %109 = ptrtoint ptr %urbout to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %urbout, align 4
  %tobool66.not = icmp eq ptr %110, null
  br i1 %tobool66.not, label %if.end68, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end68:                                         ; preds = %if.else
  %call69 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #13
  %111 = ptrtoint ptr %urbout to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call69, ptr %urbout, align 4
  %tobool71.not = icmp eq ptr %call69, null
  br i1 %tobool71.not, label %if.end68.fail_crit_edge, label %if.end73

if.end68.fail_crit_edge:                          ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end73:                                         ; preds = %if.end68
  %112 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %bEndpointAddress.i, align 1
  %conv75 = zext i8 %113 to i32
  %114 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %add.ptr.i, align 8
  %shl.i295 = shl i32 %115, 8
  %shl1.i296 = shl nuw nsw i32 %conv75, 15
  %or.i297 = or i32 %shl1.i296, %shl.i295
  %or77 = or i32 %or.i297, 1073741824
  %116 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %outbuf, align 4
  %dev1.i298 = getelementptr inbounds %struct.urb, ptr %call69, i32 0, i32 8
  %118 = ptrtoint ptr %dev1.i298 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %add.ptr.i, ptr %dev1.i298, align 4
  %pipe2.i299 = getelementptr inbounds %struct.urb, ptr %call69, i32 0, i32 10
  %119 = ptrtoint ptr %pipe2.i299 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %or77, ptr %pipe2.i299, align 4
  %transfer_buffer3.i300 = getelementptr inbounds %struct.urb, ptr %call69, i32 0, i32 14
  %120 = ptrtoint ptr %transfer_buffer3.i300 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %117, ptr %transfer_buffer3.i300, align 4
  %transfer_buffer_length.i301 = getelementptr inbounds %struct.urb, ptr %call69, i32 0, i32 19
  %121 = ptrtoint ptr %transfer_buffer_length.i301 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %transfer_buffer_length.i301, align 4
  %complete.i302 = getelementptr inbounds %struct.urb, ptr %call69, i32 0, i32 28
  %122 = ptrtoint ptr %complete.i302 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @hid_irq_out, ptr %complete.i302, align 4
  %context4.i303 = getelementptr inbounds %struct.urb, ptr %call69, i32 0, i32 27
  %123 = ptrtoint ptr %context4.i303 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %hid, ptr %context4.i303, align 4
  %124 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %125)
  %cmp.i305 = icmp eq i32 %125, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %125)
  %cmp6.i306 = icmp ugt i32 %125, 4
  %or.cond.i307 = or i1 %cmp.i305, %cmp6.i306
  br i1 %or.cond.i307, label %if.then.i310, label %if.end73.for.inc.sink.split_crit_edge

if.end73.for.inc.sink.split_crit_edge:            ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.sink.split

if.then.i310:                                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  %126 = tail call i32 @llvm.smax.i32(i32 %interval.1, i32 1) #13
  %127 = tail call i32 @llvm.umin.i32(i32 %126, i32 16) #13
  %sub.i308 = add nsw i32 %127, -1
  %shl.i309 = shl nuw nsw i32 1, %sub.i308
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.then.i310, %if.end73.for.inc.sink.split_crit_edge, %if.then.i294, %if.end58.for.inc.sink.split_crit_edge
  %call54.sink355 = phi ptr [ %call54, %if.end58.for.inc.sink.split_crit_edge ], [ %call54, %if.then.i294 ], [ %call69, %if.end73.for.inc.sink.split_crit_edge ], [ %call69, %if.then.i310 ]
  %interval.sink.i.sink = phi i32 [ %interval.1, %if.end58.for.inc.sink.split_crit_edge ], [ %shl.i293, %if.then.i294 ], [ %interval.1, %if.end73.for.inc.sink.split_crit_edge ], [ %shl.i309, %if.then.i310 ]
  %inbuf_dma.sink = phi ptr [ %inbuf_dma, %if.end58.for.inc.sink.split_crit_edge ], [ %inbuf_dma, %if.then.i294 ], [ %outbuf_dma, %if.end73.for.inc.sink.split_crit_edge ], [ %outbuf_dma, %if.then.i310 ]
  %urbin.sink354 = phi ptr [ %urbin, %if.end58.for.inc.sink.split_crit_edge ], [ %urbin, %if.then.i294 ], [ %urbout, %if.end73.for.inc.sink.split_crit_edge ], [ %urbout, %if.then.i310 ]
  %128 = getelementptr inbounds %struct.urb, ptr %call54.sink355, i32 0, i32 25
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %interval.sink.i.sink, ptr %128, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %call54.sink355, i32 0, i32 23
  %130 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 -1, ptr %start_frame.i, align 4
  %131 = ptrtoint ptr %inbuf_dma.sink to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %inbuf_dma.sink, align 4
  %133 = ptrtoint ptr %urbin.sink354 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %urbin.sink354, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %134, i32 0, i32 15
  %135 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %132, ptr %transfer_dma, align 4
  %136 = load ptr, ptr %urbin.sink354, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %136, i32 0, i32 13
  %137 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %transfer_flags, align 4
  %or83 = or i32 %138, 4
  store i32 %or83, ptr %transfer_flags, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.else.for.inc_crit_edge, %if.then50.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %n.0345, 1
  %139 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %bNumEndpoints, align 4
  %conv = zext i8 %140 to i32
  %cmp13 = icmp ult i32 %inc, %conv
  br i1 %cmp13, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call87 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #13
  %urbctrl = getelementptr inbounds %struct.usbhid_device, ptr %7, i32 0, i32 7
  %141 = ptrtoint ptr %urbctrl to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %call87, ptr %urbctrl, align 4
  %tobool89.not = icmp eq ptr %call87, null
  br i1 %tobool89.not, label %for.end.fail_crit_edge, label %if.end91

for.end.fail_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end91:                                         ; preds = %for.end
  %cr = getelementptr inbounds %struct.usbhid_device, ptr %7, i32 0, i32 8
  %142 = ptrtoint ptr %cr to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %cr, align 4
  %ctrlbuf = getelementptr inbounds %struct.usbhid_device, ptr %7, i32 0, i32 12
  %144 = ptrtoint ptr %ctrlbuf to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %ctrlbuf, align 4
  %dev1.i314 = getelementptr inbounds %struct.urb, ptr %call87, i32 0, i32 8
  %146 = ptrtoint ptr %dev1.i314 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %add.ptr.i, ptr %dev1.i314, align 4
  %pipe2.i315 = getelementptr inbounds %struct.urb, ptr %call87, i32 0, i32 10
  %147 = ptrtoint ptr %pipe2.i315 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %pipe2.i315, align 4
  %setup_packet3.i = getelementptr inbounds %struct.urb, ptr %call87, i32 0, i32 21
  %148 = ptrtoint ptr %setup_packet3.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %143, ptr %setup_packet3.i, align 4
  %transfer_buffer4.i = getelementptr inbounds %struct.urb, ptr %call87, i32 0, i32 14
  %149 = ptrtoint ptr %transfer_buffer4.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %145, ptr %transfer_buffer4.i, align 4
  %transfer_buffer_length.i316 = getelementptr inbounds %struct.urb, ptr %call87, i32 0, i32 19
  %150 = ptrtoint ptr %transfer_buffer_length.i316 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 1, ptr %transfer_buffer_length.i316, align 4
  %complete.i317 = getelementptr inbounds %struct.urb, ptr %call87, i32 0, i32 28
  %151 = ptrtoint ptr %complete.i317 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr @hid_ctrl, ptr %complete.i317, align 4
  %context5.i = getelementptr inbounds %struct.urb, ptr %call87, i32 0, i32 27
  %152 = ptrtoint ptr %context5.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %hid, ptr %context5.i, align 4
  %ctrlbuf_dma = getelementptr inbounds %struct.usbhid_device, ptr %7, i32 0, i32 13
  %153 = ptrtoint ptr %ctrlbuf_dma to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %ctrlbuf_dma, align 4
  %155 = ptrtoint ptr %urbctrl to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %urbctrl, align 4
  %transfer_dma94 = getelementptr inbounds %struct.urb, ptr %156, i32 0, i32 15
  %157 = ptrtoint ptr %transfer_dma94 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %154, ptr %transfer_dma94, align 4
  %158 = load ptr, ptr %urbctrl, align 4
  %transfer_flags96 = getelementptr inbounds %struct.urb, ptr %158, i32 0, i32 13
  %159 = ptrtoint ptr %transfer_flags96 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %transfer_flags96, align 4
  %or97 = or i32 %160, 4
  store i32 %or97, ptr %transfer_flags96, align 4
  tail call void @_set_bit(i32 noundef 8, ptr noundef %iofl) #13
  %quirks99 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 34
  %161 = ptrtoint ptr %quirks99 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %quirks99, align 8
  %and100 = and i32 %162, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.end91.if.end119_crit_edge, label %if.then102

if.end91.if.end119_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end119

if.then102:                                       ; preds = %if.end91
  %intf103 = getelementptr inbounds %struct.usbhid_device, ptr %7, i32 0, i32 1
  %163 = ptrtoint ptr %intf103 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %intf103, align 4
  %call104 = tail call i32 @usb_autopm_get_interface(ptr noundef %164) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end107, label %if.then102.fail_crit_edge

if.then102.fail_crit_edge:                        ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end107:                                        ; preds = %if.then102
  tail call void @_set_bit(i32 noundef 14, ptr noundef %iofl) #13
  %165 = ptrtoint ptr %intf103 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %intf103, align 4
  %needs_remote_wakeup = getelementptr inbounds %struct.usb_interface, ptr %166, i32 0, i32 6
  %167 = ptrtoint ptr %needs_remote_wakeup to i32
  call void @__asan_load1_noabort(i32 %167)
  %bf.load = load i8, ptr %needs_remote_wakeup, align 8
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %needs_remote_wakeup, align 8
  %call110 = tail call fastcc i32 @hid_start_in(ptr noundef %hid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end107.if.end117_crit_edge, label %do.end115

if.end107.if.end117_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end117

do.end115:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef %call110) #16
  br label %if.end117

if.end117:                                        ; preds = %do.end115, %if.end107.if.end117_crit_edge
  %168 = ptrtoint ptr %intf103 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %intf103, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %169) #13
  br label %if.end119

if.end119:                                        ; preds = %if.end117, %if.end91.if.end119_crit_edge
  %bInterfaceSubClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 6
  %170 = ptrtoint ptr %bInterfaceSubClass to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %bInterfaceSubClass, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %171)
  %cmp122 = icmp eq i8 %171, 1
  br i1 %cmp122, label %land.lhs.true124, label %if.end119.cleanup141_crit_edge

if.end119.cleanup141_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup141

land.lhs.true124:                                 ; preds = %if.end119
  %bInterfaceProtocol = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 7
  %172 = ptrtoint ptr %bInterfaceProtocol to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %bInterfaceProtocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %173)
  %cmp127 = icmp eq i8 %173, 1
  br i1 %cmp127, label %if.then129, label %land.lhs.true124.cleanup141_crit_edge

land.lhs.true124.cleanup141_crit_edge:            ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup141

if.then129:                                       ; preds = %land.lhs.true124
  %174 = ptrtoint ptr %report_list.i239 to i32
  call void @__asan_load4_noabort(i32 %174)
  %report.06.i.i = load ptr, ptr %report_list.i239, align 4
  %cmp.not7.i.i = icmp eq ptr %report.06.i.i, %report_list.i239
  br i1 %cmp.not7.i.i, label %if.then129.usbhid_set_leds.exit_crit_edge, label %if.then129.for.cond4.preheader.i.i_crit_edge

if.then129.for.cond4.preheader.i.i_crit_edge:     ; preds = %if.then129
  br label %for.cond4.preheader.i.i

if.then129.usbhid_set_leds.exit_crit_edge:        ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #15
  br label %usbhid_set_leds.exit

for.cond.loopexit.i.i:                            ; preds = %for.inc19.i.i.for.cond.loopexit.i.i_crit_edge, %for.cond4.preheader.i.i.for.cond.loopexit.i.i_crit_edge
  %175 = ptrtoint ptr %report.08.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %report.0.i.i = load ptr, ptr %report.08.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %report.0.i.i, %report_list.i239
  br i1 %cmp.not.i.i, label %for.cond.loopexit.i.i.usbhid_set_leds.exit_crit_edge, label %for.cond.loopexit.i.i.for.cond4.preheader.i.i_crit_edge

for.cond.loopexit.i.i.for.cond4.preheader.i.i_crit_edge: ; preds = %for.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond4.preheader.i.i

for.cond.loopexit.i.i.usbhid_set_leds.exit_crit_edge: ; preds = %for.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %usbhid_set_leds.exit

for.cond4.preheader.i.i:                          ; preds = %for.cond.loopexit.i.i.for.cond4.preheader.i.i_crit_edge, %if.then129.for.cond4.preheader.i.i_crit_edge
  %report.08.i.i = phi ptr [ %report.0.i.i, %for.cond.loopexit.i.i.for.cond4.preheader.i.i_crit_edge ], [ %report.06.i.i, %if.then129.for.cond4.preheader.i.i_crit_edge ]
  %maxfield.i.i = getelementptr inbounds %struct.hid_report, ptr %report.08.i.i, i32 0, i32 6
  %176 = ptrtoint ptr %maxfield.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %maxfield.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %cmp54.not.i.i = icmp eq i32 %177, 0
  br i1 %cmp54.not.i.i, label %for.cond4.preheader.i.i.for.cond.loopexit.i.i_crit_edge, label %for.cond4.preheader.i.i.for.body6.i.i_crit_edge

for.cond4.preheader.i.i.for.body6.i.i_crit_edge:  ; preds = %for.cond4.preheader.i.i
  br label %for.body6.i.i

for.cond4.preheader.i.i.for.cond.loopexit.i.i_crit_edge: ; preds = %for.cond4.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.loopexit.i.i

for.body6.i.i:                                    ; preds = %for.inc19.i.i.for.body6.i.i_crit_edge, %for.cond4.preheader.i.i.for.body6.i.i_crit_edge
  %i.05.i.i = phi i32 [ %inc20.i.i, %for.inc19.i.i.for.body6.i.i_crit_edge ], [ 0, %for.cond4.preheader.i.i.for.body6.i.i_crit_edge ]
  %arrayidx8.i.i = getelementptr %struct.hid_report, ptr %report.08.i.i, i32 0, i32 5, i32 %i.05.i.i
  %178 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %arrayidx8.i.i, align 4
  %maxusage.i.i = getelementptr inbounds %struct.hid_field, ptr %179, i32 0, i32 4
  %180 = ptrtoint ptr %maxusage.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %maxusage.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %cmp102.not.i.i = icmp eq i32 %181, 0
  br i1 %cmp102.not.i.i, label %for.body6.i.i.for.inc19.i.i_crit_edge, label %for.body11.lr.ph.i.i

for.body6.i.i.for.inc19.i.i_crit_edge:            ; preds = %for.body6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc19.i.i

for.body11.lr.ph.i.i:                             ; preds = %for.body6.i.i
  %usage12.i.i = getelementptr inbounds %struct.hid_field, ptr %179, i32 0, i32 3
  %182 = ptrtoint ptr %usage12.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %usage12.i.i, align 4
  br label %for.body11.i.i

for.body11.i.i:                                   ; preds = %for.inc.i.i.for.body11.i.i_crit_edge, %for.body11.lr.ph.i.i
  %j.03.i.i = phi i32 [ 0, %for.body11.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body11.i.i_crit_edge ]
  %arrayidx13.i.i = getelementptr %struct.hid_usage, ptr %183, i32 %j.03.i.i
  %184 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %arrayidx13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 524289, i32 %185)
  %186 = icmp eq i32 %185, 524289
  br i1 %186, label %hid_find_field_early.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body11.i.i
  %inc.i.i = add nuw i32 %j.03.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %181
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.inc19.i.i_crit_edge, label %for.inc.i.i.for.body11.i.i_crit_edge

for.inc.i.i.for.body11.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body11.i.i

for.inc.i.i.for.inc19.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc19.i.i

for.inc19.i.i:                                    ; preds = %for.inc.i.i.for.inc19.i.i_crit_edge, %for.body6.i.i.for.inc19.i.i_crit_edge
  %inc20.i.i = add nuw i32 %i.05.i.i, 1
  %exitcond11.not.i.i = icmp eq i32 %inc20.i.i, %177
  br i1 %exitcond11.not.i.i, label %for.inc19.i.i.for.cond.loopexit.i.i_crit_edge, label %for.inc19.i.i.for.body6.i.i_crit_edge

for.inc19.i.i.for.body6.i.i_crit_edge:            ; preds = %for.inc19.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body6.i.i

for.inc19.i.i.for.cond.loopexit.i.i_crit_edge:    ; preds = %for.inc19.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.loopexit.i.i

hid_find_field_early.exit.i:                      ; preds = %for.body11.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %j.03.i.i)
  %cmp.not.i318 = icmp eq i32 %j.03.i.i, -1
  br i1 %cmp.not.i318, label %hid_find_field_early.exit.i.usbhid_set_leds.exit_crit_edge, label %if.then.i319

hid_find_field_early.exit.i.usbhid_set_leds.exit_crit_edge: ; preds = %hid_find_field_early.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %usbhid_set_leds.exit

if.then.i319:                                     ; preds = %hid_find_field_early.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i = tail call i32 @hid_set_field(ptr noundef %179, i32 noundef %j.03.i.i, i32 noundef 0) #13
  %report.i = getelementptr inbounds %struct.hid_field, ptr %179, i32 0, i32 17
  %187 = ptrtoint ptr %report.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %report.i, align 4
  tail call fastcc void @usbhid_submit_report(ptr noundef %hid, ptr noundef %188, i8 noundef zeroext 0) #13
  br label %usbhid_set_leds.exit

usbhid_set_leds.exit:                             ; preds = %if.then.i319, %hid_find_field_early.exit.i.usbhid_set_leds.exit_crit_edge, %for.cond.loopexit.i.i.usbhid_set_leds.exit_crit_edge, %if.then129.usbhid_set_leds.exit_crit_edge
  %call131 = tail call i32 @device_set_wakeup_enable(ptr noundef %5, i1 noundef zeroext true) #13
  br label %cleanup141

fail:                                             ; preds = %if.then102.fail_crit_edge, %for.end.fail_crit_edge, %if.end68.fail_crit_edge, %if.end53.fail_crit_edge, %hid_alloc_buffers.exit.fail_crit_edge, %lor.lhs.false.i.fail_crit_edge, %if.end9.fail_crit_edge
  %ret.2 = phi i32 [ %call104, %if.then102.fail_crit_edge ], [ -12, %hid_alloc_buffers.exit.fail_crit_edge ], [ -12, %for.end.fail_crit_edge ], [ -12, %lor.lhs.false.i.fail_crit_edge ], [ -12, %if.end9.fail_crit_edge ], [ -12, %if.end68.fail_crit_edge ], [ -12, %if.end53.fail_crit_edge ]
  %urbin134 = getelementptr inbounds %struct.usbhid_device, ptr %7, i32 0, i32 4
  %189 = ptrtoint ptr %urbin134 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %urbin134, align 4
  tail call void @usb_free_urb(ptr noundef %190) #13
  %urbout135 = getelementptr inbounds %struct.usbhid_device, ptr %7, i32 0, i32 15
  %191 = ptrtoint ptr %urbout135 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %urbout135, align 4
  tail call void @usb_free_urb(ptr noundef %192) #13
  %urbctrl136 = getelementptr inbounds %struct.usbhid_device, ptr %7, i32 0, i32 7
  %193 = ptrtoint ptr %urbctrl136 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %urbctrl136, align 4
  tail call void @usb_free_urb(ptr noundef %194) #13
  %195 = ptrtoint ptr %urbin134 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr null, ptr %urbin134, align 4
  %196 = ptrtoint ptr %urbout135 to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr null, ptr %urbout135, align 4
  %197 = ptrtoint ptr %urbctrl136 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr null, ptr %urbctrl136, align 4
  %198 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %driver_data, align 8
  %bufsize.i321 = getelementptr inbounds %struct.usbhid_device, ptr %199, i32 0, i32 3
  %200 = ptrtoint ptr %bufsize.i321 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %bufsize.i321, align 4
  %inbuf.i322 = getelementptr inbounds %struct.usbhid_device, ptr %199, i32 0, i32 5
  %202 = ptrtoint ptr %inbuf.i322 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %inbuf.i322, align 4
  %inbuf_dma.i323 = getelementptr inbounds %struct.usbhid_device, ptr %199, i32 0, i32 6
  %204 = ptrtoint ptr %inbuf_dma.i323 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %inbuf_dma.i323, align 4
  tail call void @usb_free_coherent(ptr noundef %add.ptr.i, i32 noundef %201, ptr noundef %203, i32 noundef %205) #13
  %206 = ptrtoint ptr %bufsize.i321 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %bufsize.i321, align 4
  %outbuf.i324 = getelementptr inbounds %struct.usbhid_device, ptr %199, i32 0, i32 19
  %208 = ptrtoint ptr %outbuf.i324 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %outbuf.i324, align 4
  %outbuf_dma.i325 = getelementptr inbounds %struct.usbhid_device, ptr %199, i32 0, i32 20
  %210 = ptrtoint ptr %outbuf_dma.i325 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %outbuf_dma.i325, align 4
  tail call void @usb_free_coherent(ptr noundef %add.ptr.i, i32 noundef %207, ptr noundef %209, i32 noundef %211) #13
  %cr.i326 = getelementptr inbounds %struct.usbhid_device, ptr %199, i32 0, i32 8
  %212 = ptrtoint ptr %cr.i326 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %cr.i326, align 4
  tail call void @kfree(ptr noundef %213) #13
  %214 = ptrtoint ptr %bufsize.i321 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %bufsize.i321, align 4
  %ctrlbuf.i327 = getelementptr inbounds %struct.usbhid_device, ptr %199, i32 0, i32 12
  %216 = ptrtoint ptr %ctrlbuf.i327 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %ctrlbuf.i327, align 4
  %ctrlbuf_dma.i328 = getelementptr inbounds %struct.usbhid_device, ptr %199, i32 0, i32 13
  %218 = ptrtoint ptr %ctrlbuf_dma.i328 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %ctrlbuf_dma.i328, align 4
  tail call void @usb_free_coherent(ptr noundef %add.ptr.i, i32 noundef %215, ptr noundef %217, i32 noundef %219) #13
  br label %cleanup141

cleanup141:                                       ; preds = %fail, %usbhid_set_leds.exit, %land.lhs.true124.cleanup141_crit_edge, %if.end119.cleanup141_crit_edge
  %retval.0 = phi i32 [ %ret.2, %fail ], [ 0, %usbhid_set_leds.exit ], [ 0, %land.lhs.true124.cleanup141_crit_edge ], [ 0, %if.end119.cleanup141_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbhid_stop(ptr nocapture noundef %hid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !258

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1211, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end23:                                         ; preds = %entry
  %quirks = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 34
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks, align 8
  %and = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %if.end23.if.end26_crit_edge, label %if.then25

if.end23.if.end26_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %iofl = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 24
  tail call void @_clear_bit(i32 noundef 14, ptr noundef %iofl) #13
  %intf = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf, align 4
  %needs_remote_wakeup = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %needs_remote_wakeup to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %needs_remote_wakeup, align 8
  %bf.clear = and i8 %bf.load, -17
  store i8 %bf.clear, ptr %needs_remote_wakeup, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end23.if.end26_crit_edge
  %mutex = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %iofl27 = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 24
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %iofl27) #13
  %lock = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 23
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  tail call void @_set_bit(i32 noundef 7, ptr noundef %iofl27) #13
  %ctrltail = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 11
  %ctrlhead = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %ctrltail to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ctrltail, align 1
  %9 = ptrtoint ptr %ctrlhead to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ctrlhead, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %10)
  %cmp.not94 = icmp eq i8 %8, %10
  br i1 %cmp.not94, label %if.end26.while.end_crit_edge, label %if.end26.while.body_crit_edge

if.end26.while.body_crit_edge:                    ; preds = %if.end26
  br label %while.body

if.end26.while.end_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %if.end45.while.body_crit_edge, %if.end26.while.body_crit_edge
  %11 = phi i8 [ %21, %if.end45.while.body_crit_edge ], [ %8, %if.end26.while.body_crit_edge ]
  %conv = zext i8 %11 to i32
  %arrayidx = getelementptr %struct.usbhid_device, ptr %1, i32 0, i32 9, i32 %conv
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp33 = icmp eq i8 %13, 0
  br i1 %cmp33, label %if.then35, label %while.body.if.end45_crit_edge

while.body.if.end45_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

if.then35:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %raw_report = getelementptr %struct.usbhid_device, ptr %1, i32 0, i32 9, i32 %conv, i32 2
  %14 = ptrtoint ptr %raw_report to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %raw_report, align 4
  tail call void @kfree(ptr noundef %15) #13
  %16 = ptrtoint ptr %ctrltail to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ctrltail, align 1
  %idxprom42 = zext i8 %17 to i32
  %raw_report44 = getelementptr %struct.usbhid_device, ptr %1, i32 0, i32 9, i32 %idxprom42, i32 2
  %18 = ptrtoint ptr %raw_report44 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %raw_report44, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then35, %while.body.if.end45_crit_edge
  %19 = ptrtoint ptr %ctrltail to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ctrltail, align 1
  %21 = add i8 %20, 1
  store i8 %21, ptr %ctrltail, align 1
  %22 = ptrtoint ptr %ctrlhead to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ctrlhead, align 4
  %cmp.not = icmp eq i8 %21, %23
  br i1 %cmp.not, label %if.end45.while.end_crit_edge, label %if.end45.while.body_crit_edge

if.end45.while.body_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end45.while.end_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %if.end45.while.end_crit_edge, %if.end26.while.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  %urbin = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %urbin to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %urbin, align 4
  tail call void @usb_kill_urb(ptr noundef %25) #13
  %urbout = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 15
  %26 = ptrtoint ptr %urbout to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %urbout, align 4
  tail call void @usb_kill_urb(ptr noundef %27) #13
  %urbctrl = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 7
  %28 = ptrtoint ptr %urbctrl to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %urbctrl, align 4
  tail call void @usb_kill_urb(ptr noundef %29) #13
  %io_retry.i = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 25
  %call.i = tail call i32 @del_timer_sync(ptr noundef %io_retry.i) #13
  %reset_work.i = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 28
  %call1.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %reset_work.i) #13
  %claimed = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 33
  %30 = ptrtoint ptr %claimed to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %claimed, align 4
  %31 = ptrtoint ptr %urbin to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %urbin, align 4
  tail call void @usb_free_urb(ptr noundef %32) #13
  %33 = ptrtoint ptr %urbctrl to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %urbctrl, align 4
  tail call void @usb_free_urb(ptr noundef %34) #13
  %35 = ptrtoint ptr %urbout to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %urbout, align 4
  tail call void @usb_free_urb(ptr noundef %36) #13
  %37 = ptrtoint ptr %urbin to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %urbin, align 4
  %38 = ptrtoint ptr %urbctrl to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %urbctrl, align 4
  %39 = ptrtoint ptr %urbout to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %urbout, align 4
  %parent = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18, i32 1
  %40 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %parent, align 8
  %parent58 = getelementptr inbounds %struct.device, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %parent58 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %parent58, align 8
  %add.ptr = getelementptr i8, ptr %43, i32 -128
  %44 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %driver_data, align 8
  %bufsize.i = getelementptr inbounds %struct.usbhid_device, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %bufsize.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bufsize.i, align 4
  %inbuf.i = getelementptr inbounds %struct.usbhid_device, ptr %45, i32 0, i32 5
  %48 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %inbuf.i, align 4
  %inbuf_dma.i = getelementptr inbounds %struct.usbhid_device, ptr %45, i32 0, i32 6
  %50 = ptrtoint ptr %inbuf_dma.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %inbuf_dma.i, align 4
  tail call void @usb_free_coherent(ptr noundef %add.ptr, i32 noundef %47, ptr noundef %49, i32 noundef %51) #13
  %52 = ptrtoint ptr %bufsize.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bufsize.i, align 4
  %outbuf.i = getelementptr inbounds %struct.usbhid_device, ptr %45, i32 0, i32 19
  %54 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %outbuf.i, align 4
  %outbuf_dma.i = getelementptr inbounds %struct.usbhid_device, ptr %45, i32 0, i32 20
  %56 = ptrtoint ptr %outbuf_dma.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %outbuf_dma.i, align 4
  tail call void @usb_free_coherent(ptr noundef %add.ptr, i32 noundef %53, ptr noundef %55, i32 noundef %57) #13
  %cr.i = getelementptr inbounds %struct.usbhid_device, ptr %45, i32 0, i32 8
  %58 = ptrtoint ptr %cr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cr.i, align 4
  tail call void @kfree(ptr noundef %59) #13
  %60 = ptrtoint ptr %bufsize.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bufsize.i, align 4
  %ctrlbuf.i = getelementptr inbounds %struct.usbhid_device, ptr %45, i32 0, i32 12
  %62 = ptrtoint ptr %ctrlbuf.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ctrlbuf.i, align 4
  %ctrlbuf_dma.i = getelementptr inbounds %struct.usbhid_device, ptr %45, i32 0, i32 13
  %64 = ptrtoint ptr %ctrlbuf_dma.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ctrlbuf_dma.i, align 4
  tail call void @usb_free_coherent(ptr noundef %add.ptr, i32 noundef %61, ptr noundef %63, i32 noundef %65) #13
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhid_open(ptr nocapture noundef readonly %hid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  %mutex = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %iofl = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 24
  tail call void @_set_bit(i32 noundef 13, ptr noundef %iofl) #13
  %quirks = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 34
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks, align 8
  %and = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.Done_crit_edge

entry.Done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %Done

if.end:                                           ; preds = %entry
  %intf = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf, align 4
  %call = tail call i32 @usb_autopm_get_interface(ptr noundef %5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.Done.sink.split_crit_edge, label %if.end3

if.end.Done.sink.split_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %Done.sink.split

if.end3:                                          ; preds = %if.end
  %6 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf, align 4
  %needs_remote_wakeup = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %needs_remote_wakeup to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %needs_remote_wakeup, align 8
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %needs_remote_wakeup, align 8
  tail call void @_set_bit(i32 noundef 12, ptr noundef %iofl) #13
  tail call void @_set_bit(i32 noundef 14, ptr noundef %iofl) #13
  %call7 = tail call fastcc i32 @hid_start_in(ptr noundef %hid)
  %9 = zext i32 %call7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %call7, label %if.then11 [
    i32 0, label %if.end3.if.then23_crit_edge
    i32 -28, label %if.end20
  ]

if.end3.if.then23_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then23

if.then11:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @hid_io_error(ptr noundef %hid)
  br label %if.then23

if.end20:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %iofl) #13
  tail call void @_clear_bit(i32 noundef 14, ptr noundef %iofl) #13
  %10 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %intf, align 4
  %needs_remote_wakeup15 = getelementptr inbounds %struct.usb_interface, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %needs_remote_wakeup15 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load16 = load i8, ptr %needs_remote_wakeup15, align 8
  %bf.clear17 = and i8 %bf.load16, -17
  store i8 %bf.clear17, ptr %needs_remote_wakeup15, align 8
  %13 = load ptr, ptr %intf, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %13) #13
  br label %Done.sink.split

if.then23:                                        ; preds = %if.then11, %if.end3.if.then23_crit_edge
  %14 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %intf, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %15) #13
  tail call void @msleep(i32 noundef 50) #13
  br label %Done.sink.split

Done.sink.split:                                  ; preds = %if.then23, %if.end20, %if.end.Done.sink.split_crit_edge
  %.sink = phi i32 [ 13, %if.end.Done.sink.split_crit_edge ], [ 12, %if.end20 ], [ 12, %if.then23 ]
  %res.1.ph = phi i32 [ -5, %if.end.Done.sink.split_crit_edge ], [ -16, %if.end20 ], [ 0, %if.then23 ]
  tail call void @_clear_bit(i32 noundef %.sink, ptr noundef %iofl) #13
  br label %Done

Done:                                             ; preds = %Done.sink.split, %entry.Done_crit_edge
  %res.1 = phi i32 [ 0, %entry.Done_crit_edge ], [ %res.1.ph, %Done.sink.split ]
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  ret i32 %res.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbhid_close(ptr nocapture noundef readonly %hid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  %mutex = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %lock = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 23
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %iofl = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 24
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %iofl) #13
  %quirks = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 34
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks, align 8
  %and = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 14, ptr noundef %iofl) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  %4 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %quirks, align 8
  %and4 = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.then6, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %io_retry.i = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 25
  %call.i = tail call i32 @del_timer_sync(ptr noundef %io_retry.i) #13
  %reset_work.i = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 28
  %call1.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %reset_work.i) #13
  %urbin = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %urbin to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %urbin, align 4
  tail call void @usb_kill_urb(ptr noundef %7) #13
  %intf = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %intf, align 4
  %needs_remote_wakeup = getelementptr inbounds %struct.usb_interface, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %needs_remote_wakeup to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %needs_remote_wakeup, align 8
  %bf.clear = and i8 %bf.load, -17
  store i8 %bf.clear, ptr %needs_remote_wakeup, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhid_power(ptr nocapture noundef readonly %hid, i32 noundef %lvl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  %2 = zext i32 %lvl to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %lvl, label %entry.sw.epilog_crit_edge [
    i32 32, label %sw.bb
    i32 2, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %intf = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %intf, align 4
  %call = tail call i32 @usb_autopm_get_interface(ptr noundef %4) #13
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %intf2 = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %intf2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intf2, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %6) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %r.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb1 ], [ %call, %sw.bb ]
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhid_parse(ptr noundef %hid) #0 align 64 {
entry:
  %hdesc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %cur_altsetting = getelementptr i8, ptr %1, i32 -28
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  %parent.i = getelementptr i8, ptr %1, i32 136
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 -128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hdesc) #13
  %6 = ptrtoint ptr %hdesc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %hdesc, align 4, !annotation !259
  %call2 = tail call i32 @hid_lookup_quirk(ptr noundef %hid) #13
  %and = and i32 %call2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %bInterfaceSubClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %bInterfaceSubClass to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bInterfaceSubClass, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp = icmp eq i8 %8, 1
  br i1 %cmp, label %if.then4, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %bInterfaceProtocol = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 7
  %9 = ptrtoint ptr %bInterfaceProtocol to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bInterfaceProtocol, align 1
  %.off = add i8 %10, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  %or = or i32 %call2, 8
  %spec.select = select i1 %switch, i32 %or, i32 %call2
  br label %if.end16

if.end16:                                         ; preds = %if.then4, %if.end.if.end16_crit_edge
  %quirks.0 = phi i32 [ %call2, %if.end.if.end16_crit_edge ], [ %spec.select, %if.then4 ]
  %extra = getelementptr inbounds %struct.usb_host_interface, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %extra, align 4
  %extralen = getelementptr inbounds %struct.usb_host_interface, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %extralen to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %extralen, align 4
  %call17 = call i32 @__usb_get_extra_descriptor(ptr noundef %12, i32 noundef %14, i8 noundef zeroext 33, ptr noundef nonnull %hdesc, i32 noundef 9) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end16.if.end37_crit_edge, label %land.lhs.true

if.end16.if.end37_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

land.lhs.true:                                    ; preds = %if.end16
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 4
  %15 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool20.not = icmp eq i8 %16, 0
  br i1 %tobool20.not, label %land.lhs.true.do.body_crit_edge, label %lor.lhs.false21

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

lor.lhs.false21:                                  ; preds = %land.lhs.true
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %3, i32 0, i32 3
  %17 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %endpoint, align 4
  %extra22 = getelementptr inbounds %struct.usb_host_endpoint, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %extra22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %extra22, align 4
  %extralen25 = getelementptr inbounds %struct.usb_host_endpoint, ptr %18, i32 0, i32 8
  %21 = ptrtoint ptr %extralen25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %extralen25, align 4
  %call26 = call i32 @__usb_get_extra_descriptor(ptr noundef %20, i32 noundef %22, i8 noundef zeroext 33, ptr noundef nonnull %hdesc, i32 noundef 9) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %lor.lhs.false21.if.end37_crit_edge, label %lor.lhs.false21.do.body_crit_edge

lor.lhs.false21.do.body_crit_edge:                ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

lor.lhs.false21.if.end37_crit_edge:               ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

do.body:                                          ; preds = %lor.lhs.false21.do.body_crit_edge, %land.lhs.true.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %23 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool29.not = icmp eq i32 %23, 0
  br i1 %tobool29.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.2) #16
  br label %cleanup

if.end37:                                         ; preds = %lor.lhs.false21.if.end37_crit_edge, %if.end16.if.end37_crit_edge
  %24 = ptrtoint ptr %hdesc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hdesc, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %27)
  %cmp39 = icmp ult i8 %27, 9
  br i1 %cmp39, label %do.body42, label %if.end53

do.body42:                                        ; preds = %if.end37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %28 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool43.not = icmp eq i32 %28, 0
  br i1 %tobool43.not, label %do.body42.cleanup_crit_edge, label %do.end47

do.body42.cleanup_crit_edge:                      ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end47:                                         ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #15
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.2) #16
  br label %cleanup

if.end53:                                         ; preds = %if.end37
  %bcdHID = getelementptr inbounds %struct.hid_descriptor, ptr %25, i32 0, i32 2
  %29 = ptrtoint ptr %bcdHID to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %bcdHID, align 1
  %31 = call i16 @llvm.bswap.i16(i16 %30)
  %conv54 = zext i16 %31 to i32
  %version = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 12
  %32 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv54, ptr %version, align 4
  %bCountryCode = getelementptr inbounds %struct.hid_descriptor, ptr %25, i32 0, i32 3
  %33 = ptrtoint ptr %bCountryCode to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bCountryCode, align 1
  %conv55 = zext i8 %34 to i32
  %country = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 14
  %35 = ptrtoint ptr %country to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv55, ptr %country, align 4
  %bNumDescriptors = getelementptr inbounds %struct.hid_descriptor, ptr %25, i32 0, i32 4
  %36 = ptrtoint ptr %bNumDescriptors to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bNumDescriptors, align 1
  %conv56 = zext i8 %37 to i32
  %38 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %25, align 1
  %conv58 = zext i8 %39 to i32
  %sub = add nsw i32 %conv58, -6
  %div = udiv i32 %sub, 3
  %40 = call i32 @llvm.umin.i32(i32 %div, i32 %conv56)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp62181.not = icmp eq i32 %40, 0
  br i1 %cmp62181.not, label %if.end53.do.body79_crit_edge, label %if.end53.for.body_crit_edge

if.end53.for.body_crit_edge:                      ; preds = %if.end53
  br label %for.body

if.end53.do.body79_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body79

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end53.for.body_crit_edge
  %rsize.0184 = phi i32 [ %rsize.1, %for.inc.for.body_crit_edge ], [ 0, %if.end53.for.body_crit_edge ]
  %n.0182 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end53.for.body_crit_edge ]
  %arrayidx65 = getelementptr %struct.hid_descriptor, ptr %25, i32 0, i32 5, i32 %n.0182
  %41 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx65, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %42)
  %cmp67 = icmp eq i8 %42, 34
  br i1 %cmp67, label %if.then69, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then69:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %wDescriptorLength = getelementptr %struct.hid_descriptor, ptr %25, i32 0, i32 5, i32 %n.0182, i32 1
  %43 = ptrtoint ptr %wDescriptorLength to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %wDescriptorLength, align 1
  %45 = call i16 @llvm.bswap.i16(i16 %44)
  %conv72 = zext i16 %45 to i32
  br label %for.inc

for.inc:                                          ; preds = %if.then69, %for.body.for.inc_crit_edge
  %rsize.1 = phi i32 [ %conv72, %if.then69 ], [ %rsize.0184, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %n.0182, 1
  %exitcond.not = icmp eq i32 %inc, %40
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  %46 = add i32 %rsize.1, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %46)
  %47 = icmp ult i32 %46, -4096
  br i1 %47, label %for.end.do.body79_crit_edge, label %if.end8.i

for.end.do.body79_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body79

do.body79:                                        ; preds = %for.end.do.body79_crit_edge, %if.end53.do.body79_crit_edge
  %rsize.0.lcssa186 = phi i32 [ %rsize.1, %for.end.do.body79_crit_edge ], [ 0, %if.end53.do.body79_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %48 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool80.not = icmp eq i32 %48, 0
  br i1 %tobool80.not, label %do.body79.cleanup_crit_edge, label %do.end84

do.body79.cleanup_crit_edge:                      ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end84:                                         ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #15
  %call86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.2, i32 noundef %rsize.0.lcssa186) #16
  br label %cleanup

if.end8.i:                                        ; preds = %for.end
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %rsize.1, i32 noundef 3264) #18
  %tobool92.not = icmp eq ptr %call9.i, null
  br i1 %tobool92.not, label %if.end8.i.cleanup_crit_edge, label %if.end94

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end94:                                         ; preds = %if.end8.i
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 2
  %49 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %bInterfaceNumber, align 2
  %51 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i = shl i32 %52, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv2.i = zext i8 %50 to i16
  %call3.i = call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or.i, i8 noundef zeroext 10, i8 noundef zeroext 33, i16 noundef zeroext 0, i16 noundef zeroext %conv2.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #13
  %53 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %bInterfaceNumber, align 2
  %55 = call ptr @memset(ptr %call9.i, i32 0, i32 %rsize.1)
  %conv3.i = zext i8 %54 to i16
  %conv4.i = trunc i32 %rsize.1 to i16
  %56 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i178 = shl i32 %57, 8
  %or1.i = or i32 %shl.i.i178, -2147483520
  %call5.i = call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or1.i, i8 noundef zeroext 6, i8 noundef zeroext -127, i16 noundef zeroext 8704, i16 noundef zeroext %conv3.i, ptr noundef nonnull %call9.i, i16 noundef zeroext %conv4.i, i32 noundef 5000) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i, i32 %rsize.1)
  %cmp.i179.not = icmp slt i32 %call5.i, %rsize.1
  br i1 %cmp.i179.not, label %do.body.i.1, label %if.end94.hid_get_class_descriptor.exit_crit_edge

if.end94.hid_get_class_descriptor.exit_crit_edge: ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #15
  br label %hid_get_class_descriptor.exit

do.body.i.1:                                      ; preds = %if.end94
  %58 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i178.1 = shl i32 %59, 8
  %or1.i.1 = or i32 %shl.i.i178.1, -2147483520
  %call5.i.1 = call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or1.i.1, i8 noundef zeroext 6, i8 noundef zeroext -127, i16 noundef zeroext 8704, i16 noundef zeroext %conv3.i, ptr noundef nonnull %call9.i, i16 noundef zeroext %conv4.i, i32 noundef 5000) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i.1, i32 %rsize.1)
  %cmp.i179.1.not = icmp slt i32 %call5.i.1, %rsize.1
  br i1 %cmp.i179.1.not, label %do.body.i.2, label %do.body.i.1.hid_get_class_descriptor.exit_crit_edge

do.body.i.1.hid_get_class_descriptor.exit_crit_edge: ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %hid_get_class_descriptor.exit

do.body.i.2:                                      ; preds = %do.body.i.1
  %60 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i178.2 = shl i32 %61, 8
  %or1.i.2 = or i32 %shl.i.i178.2, -2147483520
  %call5.i.2 = call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or1.i.2, i8 noundef zeroext 6, i8 noundef zeroext -127, i16 noundef zeroext 8704, i16 noundef zeroext %conv3.i, ptr noundef nonnull %call9.i, i16 noundef zeroext %conv4.i, i32 noundef 5000) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i.2, i32 %rsize.1)
  %cmp.i179.2.not = icmp slt i32 %call5.i.2, %rsize.1
  br i1 %cmp.i179.2.not, label %do.body.i.3, label %do.body.i.2.hid_get_class_descriptor.exit_crit_edge

do.body.i.2.hid_get_class_descriptor.exit_crit_edge: ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %hid_get_class_descriptor.exit

do.body.i.3:                                      ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #15
  %62 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i178.3 = shl i32 %63, 8
  %or1.i.3 = or i32 %shl.i.i178.3, -2147483520
  %call5.i.3 = call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or1.i.3, i8 noundef zeroext 6, i8 noundef zeroext -127, i16 noundef zeroext 8704, i16 noundef zeroext %conv3.i, ptr noundef nonnull %call9.i, i16 noundef zeroext %conv4.i, i32 noundef 5000) #13
  br label %hid_get_class_descriptor.exit

hid_get_class_descriptor.exit:                    ; preds = %do.body.i.3, %do.body.i.2.hid_get_class_descriptor.exit_crit_edge, %do.body.i.1.hid_get_class_descriptor.exit_crit_edge, %if.end94.hid_get_class_descriptor.exit_crit_edge
  %call5.i.lcssa = phi i32 [ %call5.i, %if.end94.hid_get_class_descriptor.exit_crit_edge ], [ %call5.i.1, %do.body.i.1.hid_get_class_descriptor.exit_crit_edge ], [ %call5.i.2, %do.body.i.2.hid_get_class_descriptor.exit_crit_edge ], [ %call5.i.3, %do.body.i.3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.lcssa)
  %cmp102 = icmp slt i32 %call5.i.lcssa, 0
  br i1 %cmp102, label %do.body105, label %if.end116

do.body105:                                       ; preds = %hid_get_class_descriptor.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %64 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool106.not = icmp eq i32 %64, 0
  br i1 %tobool106.not, label %do.body105.do.end115_crit_edge, label %do.end110

do.body105.do.end115_crit_edge:                   ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end115

do.end110:                                        ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #15
  %call112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.2) #16
  br label %do.end115

do.end115:                                        ; preds = %do.end110, %do.body105.do.end115_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i) #13
  br label %cleanup

if.end116:                                        ; preds = %hid_get_class_descriptor.exit
  %call117 = call i32 @hid_parse_report(ptr noundef %hid, ptr noundef nonnull %call9.i, i32 noundef %rsize.1) #13
  call void @kfree(ptr noundef nonnull %call9.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.end131, label %do.body120

do.body120:                                       ; preds = %if.end116
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %65 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool121.not = icmp eq i32 %65, 0
  br i1 %tobool121.not, label %do.body120.cleanup_crit_edge, label %do.end125

do.body120.cleanup_crit_edge:                     ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end125:                                        ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #15
  %call127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.2) #16
  br label %cleanup

if.end131:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #15
  %quirks132 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 34
  %66 = ptrtoint ptr %quirks132 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %quirks132, align 8
  %or133 = or i32 %67, %quirks.0
  store i32 %or133, ptr %quirks132, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end131, %do.end125, %do.body120.cleanup_crit_edge, %do.end115, %if.end8.i.cleanup_crit_edge, %do.end84, %do.body79.cleanup_crit_edge, %do.end47, %do.body42.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end131 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %do.end ], [ -19, %do.body.cleanup_crit_edge ], [ -22, %do.end47 ], [ -22, %do.body42.cleanup_crit_edge ], [ -22, %do.end84 ], [ -22, %do.body79.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ], [ %call5.i.lcssa, %do.end115 ], [ %call117, %do.end125 ], [ %call117, %do.body120.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdesc) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbhid_request(ptr noundef %hid, ptr noundef %rep, i32 noundef %reqtype) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reqtype to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %reqtype, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.epilog.sink.split_crit_edge
    i32 9, label %sw.bb1
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb1, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i8 [ 0, %sw.bb1 ], [ -128, %entry.sw.epilog.sink.split_crit_edge ]
  tail call fastcc void @usbhid_submit_report(ptr noundef %hid, ptr noundef %rep, i8 noundef zeroext %.sink)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhid_raw_request(ptr nocapture noundef readonly %hid, i8 noundef zeroext %reportnum, ptr noundef %buf, i32 noundef %len, i8 noundef zeroext %rtype, i32 noundef %reqtype) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reqtype to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %reqtype, label %entry.return_crit_edge [
    i32 1, label %sw.bb
    i32 9, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %driver_data.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 8
  %parent.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18, i32 1
  %3 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent.i, align 8
  %parent2.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %parent2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent2.i, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 -128
  %intf3.i = getelementptr inbounds %struct.usbhid_device, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %intf3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %intf3.i, align 4
  %cur_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cur_altsetting.i, align 4
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %reportnum, ptr %buf, align 1
  %conv.i = zext i8 %reportnum to i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %reportnum)
  %cmp.i = icmp eq i8 %reportnum, 0
  %dec.i = sext i1 %cmp.i to i32
  %count.addr.0.i = add i32 %dec.i, %len
  %buf.addr.0.idx.i = zext i1 %cmp.i to i32
  %buf.addr.0.i = getelementptr i8, ptr %buf, i32 %buf.addr.0.idx.i
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i = shl i32 %13, 8
  %or5.i = or i32 %shl.i.i, -2147483520
  %conv6.i = zext i8 %rtype to i16
  %add.i = shl nuw i16 %conv6.i, 8
  %shl.i = add i16 %add.i, 256
  %or8.i = or i16 %shl.i, %conv.i
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %10, i32 0, i32 2
  %14 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bInterfaceNumber.i, align 2
  %conv10.i = zext i8 %15 to i16
  %conv11.i = trunc i32 %count.addr.0.i to i16
  %call12.i = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or5.i, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext %or8.i, i16 noundef zeroext %conv10.i, ptr noundef %buf.addr.0.i, i16 noundef zeroext %conv11.i, i32 noundef 5000) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp sgt i32 %call12.i, 0
  %narrow.i = and i1 %cmp.i, %cmp13.i
  %spec.select.i = zext i1 %narrow.i to i32
  %ret.0.i = add i32 %call12.i, %spec.select.i
  br label %return

sw.bb1:                                           ; preds = %entry
  %conv = zext i8 %reportnum to i16
  %driver_data.i8 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %16 = ptrtoint ptr %driver_data.i8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i8, align 8
  %parent.i9 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18, i32 1
  %18 = ptrtoint ptr %parent.i9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent.i9, align 8
  %parent2.i10 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %parent2.i10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent2.i10, align 8
  %intf3.i11 = getelementptr inbounds %struct.usbhid_device, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %intf3.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %intf3.i11, align 4
  %cur_altsetting.i12 = getelementptr inbounds %struct.usb_interface, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %cur_altsetting.i12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cur_altsetting.i12, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rtype)
  %cmp.i13 = icmp eq i8 %rtype, 1
  br i1 %cmp.i13, label %land.lhs.true.i, label %sw.bb1.if.else.i_crit_edge

sw.bb1.if.else.i_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %sw.bb1
  %quirks.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 34
  %26 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %quirks.i, align 8
  %and.i = and i32 %27, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true.i.usbhid_set_raw_report.exit_crit_edge

land.lhs.true.i.usbhid_set_raw_report.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %usbhid_set_raw_report.exit

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %sw.bb1.if.else.i_crit_edge
  br label %usbhid_set_raw_report.exit

usbhid_set_raw_report.exit:                       ; preds = %if.else.i, %land.lhs.true.i.usbhid_set_raw_report.exit_crit_edge
  %storemerge.i = phi i8 [ %reportnum, %if.else.i ], [ 0, %land.lhs.true.i.usbhid_set_raw_report.exit_crit_edge ]
  %conv.i14 = zext i8 %rtype to i16
  %add.ptr.i15 = getelementptr i8, ptr %21, i32 -128
  %28 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %storemerge.i, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %storemerge.i)
  %cmp9.i = icmp eq i8 %storemerge.i, 0
  %dec.i16 = sext i1 %cmp9.i to i32
  %count.addr.0.i17 = add i32 %dec.i16, %len
  %buf.addr.0.idx.i18 = zext i1 %cmp9.i to i32
  %buf.addr.0.i19 = getelementptr i8, ptr %buf, i32 %buf.addr.0.idx.i18
  %29 = ptrtoint ptr %add.ptr.i15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i15, align 8
  %shl.i.i20 = shl i32 %30, 8
  %or.i = or i32 %shl.i.i20, -2147483648
  %add.i21 = shl nuw i16 %conv.i14, 8
  %shl.i22 = add i16 %add.i21, 256
  %or14.i = or i16 %shl.i22, %conv
  %bInterfaceNumber.i23 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %25, i32 0, i32 2
  %31 = ptrtoint ptr %bInterfaceNumber.i23 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bInterfaceNumber.i23, align 2
  %conv16.i = zext i8 %32 to i16
  %conv17.i = trunc i32 %count.addr.0.i17 to i16
  %call18.i = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i15, i32 noundef %or.i, i8 noundef zeroext 9, i8 noundef zeroext 33, i16 noundef zeroext %or14.i, i16 noundef zeroext %conv16.i, ptr noundef %buf.addr.0.i19, i16 noundef zeroext %conv17.i, i32 noundef 5000) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp sgt i32 %call18.i, 0
  %narrow.i24 = and i1 %cmp9.i, %cmp19.i
  %spec.select.i25 = zext i1 %narrow.i24 to i32
  %ret.0.i26 = add i32 %call18.i, %spec.select.i25
  br label %return

return:                                           ; preds = %usbhid_set_raw_report.exit, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %ret.0.i26, %usbhid_set_raw_report.exit ], [ %ret.0.i, %sw.bb ], [ -5, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhid_output_report(ptr nocapture noundef readonly %hid, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %actual_length = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  %parent = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %parent2 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length) #13
  %6 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %actual_length, align 4, !annotation !259
  %urbout = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 15
  %7 = ptrtoint ptr %urbout to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %urbout, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %5, i32 -128
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp = icmp eq i8 %10, 0
  %dec = sext i1 %cmp to i32
  %count.addr.0 = add i32 %dec, %count
  %buf.addr.0.idx = zext i1 %cmp to i32
  %buf.addr.0 = getelementptr i8, ptr %buf, i32 %buf.addr.0.idx
  %pipe = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 10
  %11 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pipe, align 4
  %call = call i32 @usb_interrupt_msg(ptr noundef %add.ptr, i32 noundef %12, ptr noundef %buf.addr.0, i32 noundef %count.addr.0, ptr noundef nonnull %actual_length, i32 noundef 5000) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7 = icmp eq i32 %call, 0
  br i1 %cmp7, label %if.then9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %actual_length, align 4
  %spec.select = add i32 %14, %buf.addr.0.idx
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -38, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %spec.select, %if.then9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhid_idle(ptr nocapture noundef readonly %hid, i32 noundef %report, i32 noundef %idle, i32 noundef %reqtype) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %reqtype)
  %cmp.not = icmp eq i32 %reqtype, 10
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %parent = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %cur_altsetting = getelementptr i8, ptr %1, i32 -28
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bInterfaceNumber, align 2
  %parent2 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %parent2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent2, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 -128
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr, align 8
  %shl.i.i = shl i32 %9, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %shl.i = shl i32 %idle, 8
  %or1.i = or i32 %shl.i, %report
  %conv.i = trunc i32 %or1.i to i16
  %conv2.i = zext i8 %5 to i16
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %add.ptr, i32 noundef %or.i, i8 noundef zeroext 10, i8 noundef zeroext 33, i16 noundef zeroext %conv.i, i16 noundef zeroext %conv2.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3.i, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @usbhid_may_wakeup(ptr nocapture noundef readonly %hid) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %parent2 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent2, align 8
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.device_may_wakeup.exit_crit_edge, label %land.rhs.i

entry.device_may_wakeup.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %device_may_wakeup.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %wakeup.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i = icmp ne ptr %6, null
  br label %device_may_wakeup.exit

device_may_wakeup.exit:                           ; preds = %land.rhs.i, %entry.device_may_wakeup.exit_crit_edge
  %7 = phi i1 [ false, %entry.device_may_wakeup.exit_crit_edge ], [ %tobool2.i, %land.rhs.i ]
  ret i1 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @usbhid_find_interface(i32 noundef %minor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usb_find_interface(ptr noundef nonnull @hid_driver, i32 noundef %minor) #13
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_find_interface(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hid_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @usb_deregister(ptr noundef nonnull @hid_driver) #13
  tail call void @hid_quirks_exit(i16 noundef zeroext 3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_quirks_exit(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @hid_quirks_init(ptr noundef nonnull @quirks_param, i16 noundef zeroext 3, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @usb_register_driver(ptr noundef nonnull @hid_driver, ptr noundef null, ptr noundef nonnull @.str.16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.end, label %usb_register_fail

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101) #16
  br label %cleanup

usb_register_fail:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @hid_quirks_exit(i16 noundef zeroext 3) #13
  br label %cleanup

cleanup:                                          ; preds = %usb_register_fail, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %usb_register_fail ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hid_alloc_report_buf(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_output_report(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usbhid_restart_out_queue(ptr noundef %usbhid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %intf = getelementptr inbounds %struct.usbhid_device, ptr %usbhid, i32 0, i32 1
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %iofl = getelementptr inbounds %struct.usbhid_device, ptr %usbhid, i32 0, i32 24
  %4 = ptrtoint ptr %iofl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %iofl, align 4
  %6 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %lor.lhs.false3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %7 = ptrtoint ptr %iofl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %iofl, align 4
  %9 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  br i1 %tobool6.not, label %if.end, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %outhead = getelementptr inbounds %struct.usbhid_device, ptr %usbhid, i32 0, i32 17
  %10 = ptrtoint ptr %outhead to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %outhead, align 4
  %outtail = getelementptr inbounds %struct.usbhid_device, ptr %usbhid, i32 0, i32 18
  %12 = ptrtoint ptr %outtail to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %outtail, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %13)
  %cmp.not = icmp eq i8 %11, %13
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhid_restart_out_queue.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhid_restart_out_queue, %if.then14)) #13
          to label %do.end [label %if.then14], !srcloc !260

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 18
  %14 = ptrtoint ptr %outhead to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %outhead, align 4
  %conv16 = zext i8 %15 to i32
  %16 = ptrtoint ptr %outtail to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %outtail, align 1
  %conv18 = zext i8 %17 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhid_restart_out_queue.__UNIQUE_ID_ddebug251, ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %conv16, i32 noundef %conv18) #13
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body
  %18 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %intf, align 4
  %call21 = tail call i32 @usb_autopm_get_interface_async(ptr noundef %19) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %do.end.cleanup_crit_edge, label %if.end25

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end25:                                         ; preds = %do.end
  %20 = ptrtoint ptr %iofl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %iofl, align 4
  %22 = and i32 %21, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool28.not = icmp eq i32 %22, 0
  br i1 %tobool28.not, label %if.end31, label %if.then29

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %intf, align 4
  tail call void @usb_autopm_put_interface_no_suspend(ptr noundef %24) #13
  br label %cleanup

if.end31:                                         ; preds = %if.end25
  tail call void @_set_bit(i32 noundef 2, ptr noundef %iofl) #13
  %call33 = tail call fastcc i32 @hid_submit_out(ptr noundef nonnull %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end31.if.end38_crit_edge, label %if.then35

if.end31.if.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %iofl) #13
  %25 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %intf, align 4
  tail call void @usb_autopm_put_interface_async(ptr noundef %26) #13
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end31.if.end38_crit_edge
  %wait = getelementptr inbounds %struct.usbhid_device, ptr %usbhid, i32 0, i32 29
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then29, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_get_interface_no_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_block_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unpoison_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface_async(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usbhid_restart_ctrl_queue(ptr noundef %usbhid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %intf = getelementptr inbounds %struct.usbhid_device, ptr %usbhid, i32 0, i32 1
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %cond = icmp eq ptr %3, null
  br i1 %cond, label %do.end, label %lor.lhs.false, !prof !258

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 234, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %iofl = getelementptr inbounds %struct.usbhid_device, ptr %usbhid, i32 0, i32 24
  %4 = ptrtoint ptr %iofl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %iofl, align 4
  %6 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool21.not = icmp eq i32 %6, 0
  br i1 %tobool21.not, label %lor.lhs.false22, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false22:                                  ; preds = %lor.lhs.false
  %7 = ptrtoint ptr %iofl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %iofl, align 4
  %9 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool25.not = icmp eq i32 %9, 0
  br i1 %tobool25.not, label %if.end27, label %lor.lhs.false22.cleanup_crit_edge

lor.lhs.false22.cleanup_crit_edge:                ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end27:                                         ; preds = %lor.lhs.false22
  %ctrlhead = getelementptr inbounds %struct.usbhid_device, ptr %usbhid, i32 0, i32 10
  %10 = ptrtoint ptr %ctrlhead to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ctrlhead, align 4
  %ctrltail = getelementptr inbounds %struct.usbhid_device, ptr %usbhid, i32 0, i32 11
  %12 = ptrtoint ptr %ctrltail to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ctrltail, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %13)
  %cmp29.not = icmp eq i8 %11, %13
  br i1 %cmp29.not, label %if.end27.cleanup_crit_edge, label %do.body32

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body32:                                        ; preds = %if.end27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhid_restart_ctrl_queue.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhid_restart_ctrl_queue, %if.then42)) #13
          to label %do.end49 [label %if.then42], !srcloc !260

if.then42:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 18
  %14 = ptrtoint ptr %ctrlhead to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ctrlhead, align 4
  %conv44 = zext i8 %15 to i32
  %16 = ptrtoint ptr %ctrltail to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ctrltail, align 1
  %conv46 = zext i8 %17 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhid_restart_ctrl_queue.__UNIQUE_ID_ddebug252, ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %conv44, i32 noundef %conv46) #13
  br label %do.end49

do.end49:                                         ; preds = %if.then42, %do.body32
  %18 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %intf, align 4
  %call51 = tail call i32 @usb_autopm_get_interface_async(ptr noundef %19) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %do.end49.cleanup_crit_edge, label %if.end55

do.end49.cleanup_crit_edge:                       ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end55:                                         ; preds = %do.end49
  %20 = ptrtoint ptr %iofl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %iofl, align 4
  %22 = and i32 %21, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool58.not = icmp eq i32 %22, 0
  br i1 %tobool58.not, label %if.end61, label %if.then59

if.then59:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %intf, align 4
  tail call void @usb_autopm_put_interface_no_suspend(ptr noundef %24) #13
  br label %cleanup

if.end61:                                         ; preds = %if.end55
  tail call void @_set_bit(i32 noundef 1, ptr noundef %iofl) #13
  %call63 = tail call fastcc i32 @hid_submit_ctrl(ptr noundef nonnull %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end61.if.end68_crit_edge, label %if.then65

if.end61.if.end68_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end68

if.then65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %iofl) #13
  %25 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %intf, align 4
  tail call void @usb_autopm_put_interface_async(ptr noundef %26) #13
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %if.end61.if.end68_crit_edge
  %wait = getelementptr inbounds %struct.usbhid_device, ptr %usbhid, i32 0, i32 29
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %if.then59, %do.end49.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %lor.lhs.false22.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface_async(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface_no_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hid_submit_out(ptr noundef %hid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  %outtail = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %outtail to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %outtail, align 1
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.usbhid_device, ptr %1, i32 0, i32 16, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %raw_report6 = getelementptr %struct.usbhid_device, ptr %1, i32 0, i32 16, i32 %idxprom, i32 1
  %6 = ptrtoint ptr %raw_report6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %raw_report6, align 4
  %size.i = getelementptr inbounds %struct.hid_report, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size.i, align 4
  %sub.i = add i32 %9, 7
  %div3.i = lshr i32 %sub.i, 3
  %id.i = getelementptr inbounds %struct.hid_report, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp ne i32 %11, 0
  %conv.i = zext i1 %cmp.i to i32
  %add1.i = add nuw nsw i32 %div3.i, %conv.i
  %urbout = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 15
  %12 = ptrtoint ptr %urbout to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %urbout, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 19
  %14 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add1.i, ptr %transfer_buffer_length, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  %parent = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18, i32 1
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent, align 8
  %parent7 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %parent7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent7, align 8
  %add.ptr = getelementptr i8, ptr %18, i32 -128
  %19 = load ptr, ptr %urbout, align 4
  %dev9 = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %dev9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr, ptr %dev9, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %outbuf = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 19
  %21 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %outbuf, align 4
  %23 = ptrtoint ptr %urbout to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %urbout, align 4
  %transfer_buffer_length11 = getelementptr inbounds %struct.urb, ptr %24, i32 0, i32 19
  %25 = ptrtoint ptr %transfer_buffer_length11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %transfer_buffer_length11, align 4
  %27 = call ptr @memcpy(ptr %22, ptr %7, i32 %26)
  tail call void @kfree(ptr noundef nonnull %7) #13
  %28 = ptrtoint ptr %outtail to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %outtail, align 1
  %idxprom14 = zext i8 %29 to i32
  %raw_report16 = getelementptr %struct.usbhid_device, ptr %1, i32 0, i32 16, i32 %idxprom14, i32 1
  %30 = ptrtoint ptr %raw_report16 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %raw_report16, align 4
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %31 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool17.not = icmp eq i32 %31, 0
  br i1 %tobool17.not, label %do.body.do.end24_crit_edge, label %do.end

do.body.do.end24_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end24

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.2) #16
  br label %do.end24

do.end24:                                         ; preds = %do.end, %do.body.do.end24_crit_edge
  %32 = ptrtoint ptr %urbout to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %urbout, align 4
  %call26 = tail call i32 @usb_submit_urb(ptr noundef %33, i32 noundef 2592) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp = icmp slt i32 %call26, 0
  br i1 %cmp, label %do.end30, label %if.end32

do.end30:                                         ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %call26) #16
  br label %cleanup

if.end32:                                         ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %last_out = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 21
  %35 = ptrtoint ptr %last_out to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %last_out, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %do.end30
  %retval.0 = phi i32 [ %call26, %do.end30 ], [ 0, %if.end32 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hid_submit_ctrl(ptr noundef %hid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  %ctrltail = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %ctrltail to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ctrltail, align 1
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.usbhid_device, ptr %1, i32 0, i32 9, i32 %idxprom
  %report1 = getelementptr %struct.usbhid_device, ptr %1, i32 0, i32 9, i32 %idxprom, i32 1
  %4 = ptrtoint ptr %report1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %report1, align 4
  %raw_report6 = getelementptr %struct.usbhid_device, ptr %1, i32 0, i32 9, i32 %idxprom, i32 2
  %6 = ptrtoint ptr %raw_report6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %raw_report6, align 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 4
  %size.i = getelementptr inbounds %struct.hid_report, ptr %5, i32 0, i32 7
  %10 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size.i, align 4
  %sub.i = add i32 %11, 7
  %div3.i = lshr i32 %sub.i, 3
  %id.i = getelementptr inbounds %struct.hid_report, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i = icmp ne i32 %13, 0
  %conv.i = zext i1 %cmp.i to i32
  %add1.i = add nuw nsw i32 %div3.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp = icmp eq i8 %9, 0
  %parent = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18, i32 1
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent, align 8
  %parent13 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %parent13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent13, align 8
  %add.ptr = getelementptr i8, ptr %17, i32 -128
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr, align 8
  %shl.i = shl i32 %19, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %or = or i32 %shl.i, -2147483648
  %urbctrl = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %urbctrl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %urbctrl, align 4
  %pipe = getelementptr inbounds %struct.urb, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or, ptr %pipe, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.then.if.end52_crit_edge, label %if.then15

if.then.if.end52_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

if.then15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %ctrlbuf = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 12
  %23 = ptrtoint ptr %ctrlbuf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctrlbuf, align 4
  %25 = call ptr @memcpy(ptr %24, ptr %7, i32 %add1.i)
  tail call void @kfree(ptr noundef nonnull %7) #13
  %26 = ptrtoint ptr %ctrltail to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ctrltail, align 1
  %idxprom18 = zext i8 %27 to i32
  %raw_report20 = getelementptr %struct.usbhid_device, ptr %1, i32 0, i32 9, i32 %idxprom18, i32 2
  %28 = ptrtoint ptr %raw_report20 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %raw_report20, align 4
  br label %if.end52

if.else:                                          ; preds = %entry
  %or29 = or i32 %shl.i, -2147483520
  %urbctrl30 = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 7
  %29 = ptrtoint ptr %urbctrl30 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %urbctrl30, align 4
  %pipe31 = getelementptr inbounds %struct.urb, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %pipe31 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or29, ptr %pipe31, align 4
  %32 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %parent, align 8
  %parent35 = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %parent35 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parent35, align 8
  %add.ptr37 = getelementptr i8, ptr %35, i32 -128
  %36 = load ptr, ptr %urbctrl30, align 4
  %pipe39 = getelementptr inbounds %struct.urb, ptr %36, i32 0, i32 10
  %37 = ptrtoint ptr %pipe39 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pipe39, align 4
  %39 = lshr i32 %38, 15
  %and.i = and i32 %39, 15
  %and24.i = and i32 %38, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %do.end43.i, label %if.else.if.end49.i_crit_edge, !prof !258

if.else.if.end49.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49.i

do.end43.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 1984, i32 noundef 9, ptr noundef null) #13
  br label %if.end49.i

if.end49.i:                                       ; preds = %do.end43.i, %if.else.if.end49.i_crit_edge
  %arrayidx57.i = getelementptr %struct.usb_device, ptr %add.ptr37, i32 0, i32 21, i32 %and.i
  %40 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx57.i, align 4
  %tobool59.not.i = icmp eq ptr %41, null
  br i1 %tobool59.not.i, label %if.end49.i.usb_maxpacket.exit_crit_edge, label %if.end61.i

if.end49.i.usb_maxpacket.exit_crit_edge:          ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %usb_maxpacket.exit

if.end61.i:                                       ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #15
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %44 = and i16 %43, -249
  %45 = tail call i16 @llvm.bswap.i16(i16 %44) #13
  %phi.cast = zext i16 %45 to i32
  %phi.bo = add nsw i32 %phi.cast, -1
  br label %usb_maxpacket.exit

usb_maxpacket.exit:                               ; preds = %if.end61.i, %if.end49.i.usb_maxpacket.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.bo, %if.end61.i ], [ -1, %if.end49.i.usb_maxpacket.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add1.i)
  %cmp42 = icmp eq i32 %add1.i, 0
  %conv43 = zext i1 %cmp42 to i32
  %add = add nsw i32 %add1.i, -1
  %sub = add nsw i32 %add, %conv43
  %or45 = or i32 %retval.0.i, %sub
  %add46 = add i32 %or45, 1
  %bufsize = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 3
  %46 = ptrtoint ptr %bufsize to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bufsize, align 4
  %48 = tail call i32 @llvm.umin.i32(i32 %add46, i32 %47)
  br label %if.end52

if.end52:                                         ; preds = %usb_maxpacket.exit, %if.then15, %if.then.if.end52_crit_edge
  %cond = phi i8 [ 9, %if.then.if.end52_crit_edge ], [ 9, %if.then15 ], [ 1, %usb_maxpacket.exit ]
  %len.1 = phi i32 [ %add1.i, %if.then.if.end52_crit_edge ], [ %add1.i, %if.then15 ], [ %48, %usb_maxpacket.exit ]
  %urbctrl53 = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 7
  %49 = ptrtoint ptr %urbctrl53 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %urbctrl53, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %50, i32 0, i32 19
  %51 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %len.1, ptr %transfer_buffer_length, align 4
  %dev55 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  %parent56 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18, i32 1
  %52 = ptrtoint ptr %parent56 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %parent56, align 8
  %parent57 = getelementptr inbounds %struct.device, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %parent57 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %parent57, align 8
  %add.ptr59 = getelementptr i8, ptr %55, i32 -128
  %56 = load ptr, ptr %urbctrl53, align 4
  %dev61 = getelementptr inbounds %struct.urb, ptr %56, i32 0, i32 8
  %57 = ptrtoint ptr %dev61 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %add.ptr59, ptr %dev61, align 4
  %58 = or i8 %9, 33
  %cr = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 8
  %59 = ptrtoint ptr %cr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cr, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %58, ptr %60, align 1
  %62 = load ptr, ptr %cr, align 4
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %bRequest to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %cond, ptr %bRequest, align 1
  %type = getelementptr inbounds %struct.hid_report, ptr %5, i32 0, i32 3
  %64 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %type, align 4
  %add70 = shl i32 %65, 8
  %shl = add i32 %add70, 256
  %66 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %id.i, align 4
  %or71 = or i32 %shl, %67
  %conv72 = trunc i32 %or71 to i16
  %68 = tail call i16 @llvm.bswap.i16(i16 %conv72)
  %69 = ptrtoint ptr %cr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cr, align 4
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %wValue to i32
  call void @__asan_storeN_noabort(i32 %71, i32 2)
  store i16 %68, ptr %wValue, align 1
  %ifnum = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 2
  %72 = ptrtoint ptr %ifnum to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ifnum, align 4
  %conv74 = trunc i32 %73 to i16
  %74 = tail call i16 @llvm.bswap.i16(i16 %conv74)
  %75 = ptrtoint ptr %cr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cr, align 4
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %wIndex to i32
  call void @__asan_storeN_noabort(i32 %77, i32 2)
  store i16 %74, ptr %wIndex, align 1
  %conv76 = trunc i32 %len.1 to i16
  %78 = tail call i16 @llvm.bswap.i16(i16 %conv76)
  %79 = ptrtoint ptr %cr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cr, align 4
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %80, i32 0, i32 4
  %81 = ptrtoint ptr %wLength to i32
  call void @__asan_storeN_noabort(i32 %81, i32 2)
  store i16 %78, ptr %wLength, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %82 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool78.not = icmp eq i32 %82, 0
  br i1 %tobool78.not, label %if.end52.do.end100_crit_edge, label %do.end

if.end52.do.end100_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end100

do.end:                                           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  %83 = ptrtoint ptr %cr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cr, align 4
  %bRequest83 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %bRequest83 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %bRequest83, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %86)
  %cmp85 = icmp eq i8 %86, 9
  %cond87 = select i1 %cmp85, ptr @.str.28, ptr @.str.29
  %wValue89 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %84, i32 0, i32 2
  %87 = ptrtoint ptr %wValue89 to i32
  call void @__asan_loadN_noabort(i32 %87, i32 2)
  %88 = load i16, ptr %wValue89, align 1
  %conv90 = zext i16 %88 to i32
  %wIndex92 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %84, i32 0, i32 3
  %89 = ptrtoint ptr %wIndex92 to i32
  call void @__asan_loadN_noabort(i32 %89, i32 2)
  %90 = load i16, ptr %wIndex92, align 1
  %conv93 = zext i16 %90 to i32
  %wLength95 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %84, i32 0, i32 4
  %91 = ptrtoint ptr %wLength95 to i32
  call void @__asan_loadN_noabort(i32 %91, i32 2)
  %92 = load i16, ptr %wLength95, align 1
  %conv96 = zext i16 %92 to i32
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.2, ptr noundef nonnull %cond87, i32 noundef %conv90, i32 noundef %conv93, i32 noundef %conv96) #16
  br label %do.end100

do.end100:                                        ; preds = %do.end, %if.end52.do.end100_crit_edge
  %93 = ptrtoint ptr %urbctrl53 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %urbctrl53, align 4
  %call102 = tail call i32 @usb_submit_urb(ptr noundef %94, i32 noundef 2592) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %cmp103 = icmp slt i32 %call102, 0
  br i1 %cmp103, label %do.end108, label %if.end110

do.end108:                                        ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev55, ptr noundef nonnull @.str.31, i32 noundef %call102) #16
  br label %cleanup

if.end110:                                        ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %95 = load volatile i32, ptr @jiffies, align 128
  %last_ctrl = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 14
  %96 = ptrtoint ptr %last_ctrl to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %last_ctrl, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end110, %do.end108
  %retval.0 = phi i32 [ %call102, %do.end108 ], [ 0, %if.end110 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hid_irq_in(ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data, align 8
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status1, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %5, label %do.end [
    i32 0, label %sw.bb
    i32 -32, label %sw.bb15
    i32 -104, label %entry.sw.bb19_crit_edge
    i32 -2, label %entry.sw.bb19_crit_edge85
    i32 -108, label %entry.sw.bb19_crit_edge86
    i32 -84, label %entry.sw.bb21_crit_edge
    i32 -71, label %entry.sw.bb21_crit_edge87
    i32 -62, label %entry.sw.bb21_crit_edge88
    i32 -110, label %entry.sw.bb21_crit_edge89
  ]

entry.sw.bb21_crit_edge89:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb21

entry.sw.bb21_crit_edge88:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb21

entry.sw.bb21_crit_edge87:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb21

entry.sw.bb21_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb21

entry.sw.bb19_crit_edge86:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb19

entry.sw.bb19_crit_edge85:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb19

entry.sw.bb19_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb19

sw.bb:                                            ; preds = %entry
  %retry_delay = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 27
  %7 = ptrtoint ptr %retry_delay to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %retry_delay, align 4
  %iofl = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 24
  %8 = ptrtoint ptr %iofl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %iofl, align 4
  %10 = and i32 %9, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.end

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  %intf1.i = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %intf1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %intf1.i, align 4
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %12, i32 0, i32 7, i32 1
  %13 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent.i.i, align 8
  %call.i.i.i = tail call i64 @ktime_get_mono_fast_ns() #13
  %last_busy.i.i.i = getelementptr i8, ptr %14, i32 704
  %15 = ptrtoint ptr %last_busy.i.i.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store volatile i64 %call.i.i.i, ptr %last_busy.i.i.i, align 8
  %16 = ptrtoint ptr %iofl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %iofl, align 4
  %18 = and i32 %17, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool4.not = icmp eq i32 %18, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then5:                                         ; preds = %if.end
  %19 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %context, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %21 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %transfer_buffer, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %23 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %actual_length, align 4
  %call7 = tail call i32 @hid_input_report(ptr noundef %20, i32 noundef 0, ptr noundef %22, i32 noundef %24, i32 noundef 1) #13
  %call8 = tail call i32 @hid_check_keys_pressed(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 10, ptr noundef %iofl) #13
  br label %sw.epilog

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %iofl) #13
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %intf1.i77 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 1
  %25 = ptrtoint ptr %intf1.i77 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %intf1.i77, align 4
  %parent.i.i78 = getelementptr inbounds %struct.usb_interface, ptr %26, i32 0, i32 7, i32 1
  %27 = ptrtoint ptr %parent.i.i78 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parent.i.i78, align 8
  %call.i.i.i79 = tail call i64 @ktime_get_mono_fast_ns() #13
  %last_busy.i.i.i80 = getelementptr i8, ptr %28, i32 704
  %29 = ptrtoint ptr %last_busy.i.i.i80 to i32
  call void @__asan_store8_noabort(i32 %29)
  store volatile i64 %call.i.i.i79, ptr %last_busy.i.i.i80, align 8
  %iofl16 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 24
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %iofl16) #13
  tail call void @_set_bit(i32 noundef 6, ptr noundef %iofl16) #13
  %reset_work = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %30 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %30, ptr noundef %reset_work) #13
  br label %cleanup

sw.bb19:                                          ; preds = %entry.sw.bb19_crit_edge, %entry.sw.bb19_crit_edge85, %entry.sw.bb19_crit_edge86
  %iofl20 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 24
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %iofl20) #13
  br label %cleanup

sw.bb21:                                          ; preds = %entry.sw.bb21_crit_edge, %entry.sw.bb21_crit_edge87, %entry.sw.bb21_crit_edge88, %entry.sw.bb21_crit_edge89
  %intf1.i81 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 1
  %31 = ptrtoint ptr %intf1.i81 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %intf1.i81, align 4
  %parent.i.i82 = getelementptr inbounds %struct.usb_interface, ptr %32, i32 0, i32 7, i32 1
  %33 = ptrtoint ptr %parent.i.i82 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %parent.i.i82, align 8
  %call.i.i.i83 = tail call i64 @ktime_get_mono_fast_ns() #13
  %last_busy.i.i.i84 = getelementptr i8, ptr %34, i32 704
  %35 = ptrtoint ptr %last_busy.i.i.i84 to i32
  call void @__asan_store8_noabort(i32 %35)
  store volatile i64 %call.i.i.i83, ptr %last_busy.i.i.i84, align 8
  %iofl22 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 24
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %iofl22) #13
  tail call fastcc void @hid_io_error(ptr noundef %1)
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  %dev23 = getelementptr inbounds %struct.usb_device, ptr %37, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev23, ptr noundef nonnull @.str.41, i32 noundef %5) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.else, %if.then10, %if.end.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %call25 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %sw.epilog.cleanup_crit_edge, label %if.then27

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then27:                                        ; preds = %sw.epilog
  %iofl28 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 24
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %iofl28) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call25)
  %cmp.not = icmp eq i32 %call25, -1
  br i1 %cmp.not, label %if.then27.cleanup_crit_edge, label %do.end32

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end32:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  %dev33 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  %parent = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18, i32 1
  %38 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %parent, align 8
  %parent35 = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %parent35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %parent35, align 8
  %bus = getelementptr i8, ptr %41, i32 -64
  %42 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bus, align 8
  %bus_name = getelementptr inbounds %struct.usb_bus, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %bus_name to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bus_name, align 4
  %devpath = getelementptr i8, ptr %41, i32 -124
  %ifnum = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 2
  %46 = ptrtoint ptr %ifnum to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ifnum, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33, ptr noundef nonnull @.str.44, ptr noundef %45, ptr noundef %devpath, i32 noundef %47, i32 noundef %call25) #16
  tail call fastcc void @hid_io_error(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %do.end32, %if.then27.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb21, %sw.bb19, %sw.bb15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hid_irq_out(ptr nocapture noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data, align 8
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %5, label %do.end [
    i32 0, label %entry.if.else_crit_edge
    i32 -108, label %if.then
    i32 -84, label %entry.if.else_crit_edge54
    i32 -71, label %entry.if.else_crit_edge55
    i32 -104, label %entry.if.else_crit_edge56
    i32 -2, label %entry.if.else_crit_edge57
  ]

entry.if.else_crit_edge57:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

entry.if.else_crit_edge56:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

entry.if.else_crit_edge55:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

entry.if.else_crit_edge54:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %dev2 = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.46, i32 noundef %5) #16
  br label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %lock = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 23
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %outhead = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 17
  %9 = ptrtoint ptr %outhead to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %outhead, align 4
  %outtail = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 18
  %11 = ptrtoint ptr %outtail to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %outtail, align 1
  br label %if.end26

if.else:                                          ; preds = %do.end, %entry.if.else_crit_edge, %entry.if.else_crit_edge54, %entry.if.else_crit_edge55, %entry.if.else_crit_edge56, %entry.if.else_crit_edge57
  %lock48 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 23
  %call649 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock48) #13
  %outtail11 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 18
  %12 = ptrtoint ptr %outtail11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %outtail11, align 1
  %14 = add i8 %13, 1
  %15 = and i8 %14, 63
  store i8 %15, ptr %outtail11, align 1
  %outhead15 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 17
  %16 = ptrtoint ptr %outhead15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %outhead15, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %15)
  %cmp19.not = icmp eq i8 %17, %15
  br i1 %cmp19.not, label %if.else.if.end26_crit_edge, label %land.lhs.true

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

land.lhs.true:                                    ; preds = %if.else
  %call21 = tail call fastcc i32 @hid_submit_out(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then24, label %land.lhs.true.if.end26_crit_edge

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock48, i32 noundef %call649) #13
  br label %cleanup

if.end26:                                         ; preds = %land.lhs.true.if.end26_crit_edge, %if.else.if.end26_crit_edge, %if.then
  %call653 = phi i32 [ %call649, %if.else.if.end26_crit_edge ], [ %call649, %land.lhs.true.if.end26_crit_edge ], [ %call6, %if.then ]
  %lock51 = phi ptr [ %lock48, %if.else.if.end26_crit_edge ], [ %lock48, %land.lhs.true.if.end26_crit_edge ], [ %lock, %if.then ]
  %iofl = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 24
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %iofl) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock51, i32 noundef %call653) #13
  %intf = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %intf, align 4
  tail call void @usb_autopm_put_interface_async(ptr noundef %19) #13
  %wait = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 29
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hid_ctrl(ptr nocapture noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data, align 8
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status1, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %5, label %do.end [
    i32 0, label %sw.bb
    i32 -108, label %if.then21
    i32 -84, label %entry.if.else_crit_edge
    i32 -71, label %entry.if.else_crit_edge85
    i32 -104, label %entry.if.else_crit_edge86
    i32 -2, label %entry.if.else_crit_edge87
    i32 -32, label %entry.if.else_crit_edge88
  ]

entry.if.else_crit_edge88:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

entry.if.else_crit_edge87:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

entry.if.else_crit_edge86:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

entry.if.else_crit_edge85:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

sw.bb:                                            ; preds = %entry
  %ctrltail = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 11
  %7 = ptrtoint ptr %ctrltail to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ctrltail, align 1
  %idxprom = zext i8 %8 to i32
  %arrayidx = getelementptr %struct.usbhid_device, ptr %3, i32 0, i32 9, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %10)
  %cmp = icmp eq i8 %10, -128
  br i1 %cmp, label %if.then, label %sw.bb.if.else_crit_edge

sw.bb.if.else_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %report = getelementptr %struct.usbhid_device, ptr %3, i32 0, i32 9, i32 %idxprom, i32 1
  %11 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %report, align 4
  %type = getelementptr inbounds %struct.hid_report, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %15 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %transfer_buffer, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %17 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %actual_length, align 4
  %call = tail call i32 @hid_input_report(ptr noundef %1, i32 noundef %14, ptr noundef %16, i32 noundef %18, i32 noundef 0) #13
  br label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %dev10 = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev10, ptr noundef nonnull @.str.48, i32 noundef %5) #16
  br label %if.else

if.then21:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %lock = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 23
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %ctrlhead = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 10
  %21 = ptrtoint ptr %ctrlhead to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ctrlhead, align 4
  %ctrltail22 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 11
  %23 = ptrtoint ptr %ctrltail22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %ctrltail22, align 1
  br label %if.end47

if.else:                                          ; preds = %do.end, %if.then, %sw.bb.if.else_crit_edge, %entry.if.else_crit_edge, %entry.if.else_crit_edge85, %entry.if.else_crit_edge86, %entry.if.else_crit_edge87, %entry.if.else_crit_edge88
  %lock79 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 23
  %call1680 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock79) #13
  %ctrlhead23 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 10
  %24 = ptrtoint ptr %ctrlhead23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ctrlhead23, align 4
  %ctrltail25 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 11
  %26 = ptrtoint ptr %ctrltail25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ctrltail25, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %27)
  %cmp27.not = icmp eq i8 %25, %27
  br i1 %cmp27.not, label %if.else.if.end47_crit_edge, label %if.then29

if.else.if.end47_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

if.then29:                                        ; preds = %if.else
  %28 = add i8 %27, 1
  %29 = ptrtoint ptr %ctrltail25 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %ctrltail25, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %28)
  %cmp38.not = icmp eq i8 %25, %28
  br i1 %cmp38.not, label %if.then29.if.end47_crit_edge, label %land.lhs.true

if.then29.if.end47_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

land.lhs.true:                                    ; preds = %if.then29
  %call40 = tail call fastcc i32 @hid_submit_ctrl(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %if.then43, label %land.lhs.true.if.end47_crit_edge

land.lhs.true.if.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

if.then43:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock79, i32 noundef %call1680) #13
  br label %cleanup

if.end47:                                         ; preds = %land.lhs.true.if.end47_crit_edge, %if.then29.if.end47_crit_edge, %if.else.if.end47_crit_edge, %if.then21
  %call1684 = phi i32 [ %call1680, %if.else.if.end47_crit_edge ], [ %call1680, %land.lhs.true.if.end47_crit_edge ], [ %call1680, %if.then29.if.end47_crit_edge ], [ %call16, %if.then21 ]
  %lock82 = phi ptr [ %lock79, %if.else.if.end47_crit_edge ], [ %lock79, %land.lhs.true.if.end47_crit_edge ], [ %lock79, %if.then29.if.end47_crit_edge ], [ %lock, %if.then21 ]
  %iofl = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 24
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %iofl) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock82, i32 noundef %call1684) #13
  %intf = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 1
  %30 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %intf, align 4
  tail call void @usb_autopm_put_interface_async(ptr noundef %31) #13
  %wait = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 29
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.then43
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hid_start_in(ptr nocapture noundef readonly %hid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  %lock = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 23
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %iofl = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %iofl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %iofl, align 4
  %4 = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end28_crit_edge, label %land.lhs.true

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

land.lhs.true:                                    ; preds = %entry
  %5 = ptrtoint ptr %iofl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %iofl, align 4
  %7 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %land.lhs.true9, label %land.lhs.true.if.end28_crit_edge

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

land.lhs.true9:                                   ; preds = %land.lhs.true
  %8 = ptrtoint ptr %iofl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %iofl, align 4
  %10 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool12.not = icmp eq i32 %10, 0
  br i1 %tobool12.not, label %land.lhs.true13, label %land.lhs.true9.if.end28_crit_edge

land.lhs.true9.if.end28_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

land.lhs.true13:                                  ; preds = %land.lhs.true9
  %call15 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %iofl) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then, label %land.lhs.true13.if.end28_crit_edge

land.lhs.true13.if.end28_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.then:                                          ; preds = %land.lhs.true13
  %urbin = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %urbin to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %urbin, align 4
  %call17 = tail call i32 @usb_submit_urb(ptr noundef %12, i32 noundef 2592) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18.not = icmp eq i32 %call17, 0
  br i1 %cmp18.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.then
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %iofl) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call17)
  %cmp22 = icmp eq i32 %call17, -28
  br i1 %cmp22, label %if.then24, label %if.then20.if.end28_crit_edge

if.then20.if.end28_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.then24:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 11, ptr noundef %iofl) #13
  br label %if.end28

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %iofl) #13
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then24, %if.then20.if.end28_crit_edge, %land.lhs.true13.if.end28_crit_edge, %land.lhs.true9.if.end28_crit_edge, %land.lhs.true.if.end28_crit_edge, %entry.if.end28_crit_edge
  %rc.0 = phi i32 [ 0, %land.lhs.true.if.end28_crit_edge ], [ 0, %land.lhs.true9.if.end28_crit_edge ], [ 0, %land.lhs.true13.if.end28_crit_edge ], [ -28, %if.then24 ], [ %call17, %if.then20.if.end28_crit_edge ], [ 0, %if.else ], [ 0, %entry.if.end28_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #13
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_input_report(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_check_keys_pressed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hid_io_error(ptr nocapture noundef readonly %hid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  %lock = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 23
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %iofl = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %iofl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %iofl, align 4
  %4 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end:                                           ; preds = %entry
  %stop_retry = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 26
  %5 = ptrtoint ptr %stop_retry to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stop_retry, align 4
  %add = add i32 %6, 50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp6 = icmp slt i32 %sub, 0
  br i1 %cmp6, label %if.then8, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %retry_delay = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 27
  %8 = ptrtoint ptr %retry_delay to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %retry_delay, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  %retry_delay10 = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 27
  %9 = ptrtoint ptr %retry_delay10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %retry_delay10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp11 = icmp eq i32 %10, 0
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %retry_delay10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 13, ptr %retry_delay10, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %add16 = add i32 %12, 100
  %13 = ptrtoint ptr %stop_retry to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add16, ptr %stop_retry, align 4
  br label %if.end24

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %10)
  %cmp19 = icmp ult i32 %10, 100
  br i1 %cmp19, label %if.then21, label %if.else.if.end24_crit_edge

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %mul = shl nuw nsw i32 %10, 1
  %14 = ptrtoint ptr %retry_delay10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul, ptr %retry_delay10, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.else.if.end24_crit_edge, %if.then13
  %15 = ptrtoint ptr %stop_retry to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %stop_retry, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %sub26 = sub i32 %16, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub26)
  %cmp27 = icmp slt i32 %sub26, 0
  br i1 %cmp27, label %if.then29, label %if.end24.if.end39_crit_edge

if.end24.if.end39_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then29:                                        ; preds = %if.end24
  %18 = ptrtoint ptr %iofl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %iofl, align 4
  %20 = and i32 %19, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool32.not = icmp eq i32 %20, 0
  br i1 %tobool32.not, label %land.lhs.true, label %if.then29.if.end39_crit_edge

if.then29.if.end39_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

land.lhs.true:                                    ; preds = %if.then29
  %call34 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %iofl) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then36, label %land.lhs.true.if.end39_crit_edge

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then36:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %reset_work = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %21 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %21, ptr noundef %reset_work) #13
  br label %done

if.end39:                                         ; preds = %land.lhs.true.if.end39_crit_edge, %if.then29.if.end39_crit_edge, %if.end24.if.end39_crit_edge
  %io_retry = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %23 = ptrtoint ptr %retry_delay10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %retry_delay10, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %24) #13
  %add42 = add i32 %call2.i, %22
  %call43 = tail call i32 @mod_timer(ptr noundef %io_retry, i32 noundef %add42) #13
  br label %done

done:                                             ; preds = %if.end39, %if.then36, %entry.done_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_set_field(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_lookup_quirk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usb_get_extra_descriptor(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_parse_report(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interrupt_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbhid_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %0 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_altsetting, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %4 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intf, align 8
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bInterfaceNumber, align 2
  %conv = zext i8 %8 to i32
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.2, i32 noundef %conv) #16
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bNumEndpoints, align 4
  %conv6 = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp245.not = icmp eq i8 %10, 0
  br i1 %cmp245.not, label %do.end4.do.end18_crit_edge, label %for.body.lr.ph

do.end4.do.end18_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end18

for.body.lr.ph:                                   ; preds = %do.end4
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %endpoint, align 4
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %has_in.0247 = phi i32 [ 0, %for.body.lr.ph ], [ %18, %for.cond.for.body_crit_edge ]
  %n.0246 = phi i32 [ 0, %for.body.lr.ph ], [ %inc13, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.usb_host_endpoint, ptr %12, i32 %n.0246
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %13 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bmAttributes.i.i, align 1
  %15 = and i8 %14, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %15)
  %cmp.i.not.i = icmp eq i8 %15, 3
  br i1 %cmp.i.not.i, label %usb_endpoint_is_int_in.exit, label %for.body.usb_endpoint_is_int_in.exit.thread_crit_edge

for.body.usb_endpoint_is_int_in.exit.thread_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %usb_endpoint_is_int_in.exit.thread

usb_endpoint_is_int_in.exit:                      ; preds = %for.body
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %16 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %tobool10.not = icmp sgt i8 %17, -1
  %inc = add i32 %has_in.0247, 1
  br i1 %tobool10.not, label %usb_endpoint_is_int_in.exit.usb_endpoint_is_int_in.exit.thread_crit_edge, label %usb_endpoint_is_int_in.exit.for.cond_crit_edge

usb_endpoint_is_int_in.exit.for.cond_crit_edge:   ; preds = %usb_endpoint_is_int_in.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

usb_endpoint_is_int_in.exit.usb_endpoint_is_int_in.exit.thread_crit_edge: ; preds = %usb_endpoint_is_int_in.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %usb_endpoint_is_int_in.exit.thread

usb_endpoint_is_int_in.exit.thread:               ; preds = %usb_endpoint_is_int_in.exit.usb_endpoint_is_int_in.exit.thread_crit_edge, %for.body.usb_endpoint_is_int_in.exit.thread_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %usb_endpoint_is_int_in.exit.thread, %usb_endpoint_is_int_in.exit.for.cond_crit_edge
  %18 = phi i32 [ %has_in.0247, %usb_endpoint_is_int_in.exit.thread ], [ %inc, %usb_endpoint_is_int_in.exit.for.cond_crit_edge ]
  %inc13 = add nuw nsw i32 %n.0246, 1
  %exitcond.not = icmp eq i32 %inc13, %conv6
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool14.not = icmp eq i32 %18, 0
  br i1 %tobool14.not, label %for.end.do.end18_crit_edge, label %if.end20

for.end.do.end18_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end18

do.end18:                                         ; preds = %for.end.do.end18_crit_edge, %do.end4.do.end18_crit_edge
  %dev19 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.67) #16
  br label %cleanup

if.end20:                                         ; preds = %for.end
  %call21 = tail call ptr @hid_allocate_device() #13
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %call21 to i32
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call21, ptr %driver_data.i.i, align 4
  %ll_driver = getelementptr inbounds %struct.hid_device, ptr %call21, i32 0, i32 20
  %21 = ptrtoint ptr %ll_driver to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @usb_hid_driver, ptr %ll_driver, align 4
  %ff_init = getelementptr inbounds %struct.hid_device, ptr %call21, i32 0, i32 43
  %22 = ptrtoint ptr %ff_init to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @hid_pidff_init, ptr %ff_init, align 4
  %hiddev_connect = getelementptr inbounds %struct.hid_device, ptr %call21, i32 0, i32 44
  %23 = ptrtoint ptr %hiddev_connect to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @hiddev_connect, ptr %hiddev_connect, align 8
  %hiddev_disconnect = getelementptr inbounds %struct.hid_device, ptr %call21, i32 0, i32 45
  %24 = ptrtoint ptr %hiddev_disconnect to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @hiddev_disconnect, ptr %hiddev_disconnect, align 4
  %hiddev_hid_event = getelementptr inbounds %struct.hid_device, ptr %call21, i32 0, i32 46
  %25 = ptrtoint ptr %hiddev_hid_event to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @hiddev_hid_event, ptr %hiddev_hid_event, align 8
  %hiddev_report_event = getelementptr inbounds %struct.hid_device, ptr %call21, i32 0, i32 47
  %26 = ptrtoint ptr %hiddev_report_event to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @hiddev_report_event, ptr %hiddev_report_event, align 4
  %dev26 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %parent = getelementptr inbounds %struct.hid_device, ptr %call21, i32 0, i32 18, i32 1
  %27 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dev26, ptr %parent, align 8
  %bus = getelementptr inbounds %struct.hid_device, ptr %call21, i32 0, i32 8
  %28 = ptrtoint ptr %bus to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 3, ptr %bus, align 8
  %idVendor = getelementptr i8, ptr %3, i32 936
  %29 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %idVendor, align 8
  %31 = tail call i16 @llvm.bswap.i16(i16 %30)
  %conv28 = zext i16 %31 to i32
  %vendor = getelementptr inbounds %struct.hid_device, ptr %call21, i32 0, i32 10
  %32 = ptrtoint ptr %vendor to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv28, ptr %vendor, align 4
  %idProduct = getelementptr i8, ptr %3, i32 938
  %33 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %idProduct, align 2
  %35 = tail call i16 @llvm.bswap.i16(i16 %34)
  %conv30 = zext i16 %35 to i32
  %product = getelementptr inbounds %struct.hid_device, ptr %call21, i32 0, i32 11
  %36 = ptrtoint ptr %product to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv30, ptr %product, align 8
  %bcdDevice = getelementptr i8, ptr %3, i32 940
  %37 = ptrtoint ptr %bcdDevice to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %bcdDevice, align 4
  %39 = tail call i16 @llvm.bswap.i16(i16 %38)
  %conv32 = zext i16 %39 to i32
  %version = getelementptr inbounds %struct.hid_device, ptr %call21, i32 0, i32 12
  %40 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv32, ptr %version, align 4
  %name = getelementptr inbounds %struct.hid_device, ptr %call21, i32 0, i32 39
  %41 = ptrtoint ptr %name to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %name, align 8
  %42 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceProtocol = getelementptr inbounds %struct.usb_interface_descriptor, ptr %43, i32 0, i32 7
  %44 = ptrtoint ptr %bInterfaceProtocol to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %bInterfaceProtocol, align 1
  %46 = zext i8 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.110)
  switch i8 %45, label %if.end25.if.end49_crit_edge [
    i8 2, label %if.end25.if.end49.sink.split_crit_edge
    i8 0, label %if.then46
  ]

if.end25.if.end49.sink.split_crit_edge:           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49.sink.split

if.end25.if.end49_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.then46:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49.sink.split

if.end49.sink.split:                              ; preds = %if.then46, %if.end25.if.end49.sink.split_crit_edge
  %.sink = phi i32 [ 2, %if.then46 ], [ 1, %if.end25.if.end49.sink.split_crit_edge ]
  %type47 = getelementptr inbounds %struct.hid_device, ptr %call21, i32 0, i32 13
  %47 = ptrtoint ptr %type47 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %.sink, ptr %type47, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.end49.sink.split, %if.end25.if.end49_crit_edge
  %manufacturer = getelementptr i8, ptr %3, i32 1108
  %48 = ptrtoint ptr %manufacturer to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %manufacturer, align 4
  %tobool50.not = icmp eq ptr %49, null
  br i1 %tobool50.not, label %if.end49.if.end55_crit_edge, label %if.then51

if.end49.if.end55_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  %call54 = tail call i32 @strlcpy(ptr noundef %name, ptr noundef nonnull %49, i32 noundef 128) #13
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %if.end49.if.end55_crit_edge
  %product56 = getelementptr i8, ptr %3, i32 1104
  %50 = ptrtoint ptr %product56 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %product56, align 8
  %tobool57.not = icmp eq ptr %51, null
  br i1 %tobool57.not, label %if.end55.if.end70_crit_edge, label %if.then58

if.end55.if.end70_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70

if.then58:                                        ; preds = %if.end55
  %52 = ptrtoint ptr %manufacturer to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %manufacturer, align 4
  %tobool60.not = icmp eq ptr %53, null
  br i1 %tobool60.not, label %if.then58.if.end65_crit_edge, label %if.then61

if.then58.if.end65_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

if.then61:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #15
  %call64 = tail call i32 @strlcat(ptr noundef %name, ptr noundef nonnull @.str.69, i32 noundef 128) #13
  br label %if.end65

if.end65:                                         ; preds = %if.then61, %if.then58.if.end65_crit_edge
  %54 = ptrtoint ptr %product56 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %product56, align 8
  %call69 = tail call i32 @strlcat(ptr noundef %name, ptr noundef %55, i32 noundef 128) #13
  br label %if.end70

if.end70:                                         ; preds = %if.end65, %if.end55.if.end70_crit_edge
  %56 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %56)
  %char0 = load i8, ptr %name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool74.not = icmp eq i8 %char0, 0
  br i1 %tobool74.not, label %if.then75, label %if.end70.if.end85_crit_edge

if.end70.if.end85_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

if.then75:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  %57 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %idVendor, align 8
  %59 = tail call i16 @llvm.bswap.i16(i16 %58)
  %conv80 = zext i16 %59 to i32
  %60 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %idProduct, align 2
  %62 = tail call i16 @llvm.bswap.i16(i16 %61)
  %conv83 = zext i16 %62 to i32
  %call84 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 128, ptr noundef nonnull @.str.70, i32 noundef %conv80, i32 noundef %conv83)
  br label %if.end85

if.end85:                                         ; preds = %if.then75, %if.end70.if.end85_crit_edge
  %phys = getelementptr inbounds %struct.hid_device, ptr %call21, i32 0, i32 40
  %bus.i = getelementptr i8, ptr %3, i32 -64
  %63 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr i8, ptr %3, i32 -124
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 64, ptr noundef nonnull @.str.85, ptr noundef %66, ptr noundef %devpath.i) #13
  %call90 = tail call i32 @strlcat(ptr noundef %phys, ptr noundef nonnull @.str.71, i32 noundef 64) #13
  %call93 = tail call i32 @strlen(ptr noundef %phys) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %call93)
  %cmp94 = icmp ult i32 %call93, 63
  br i1 %cmp94, label %if.then96, label %if.end85.if.end105_crit_edge

if.end85.if.end105_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end105

if.then96:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %phys, i32 %call93
  %sub = sub nuw nsw i32 64, %call93
  %67 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %intf, align 8
  %bInterfaceNumber102 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %bInterfaceNumber102 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %bInterfaceNumber102, align 2
  %conv103 = zext i8 %70 to i32
  %call104 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.72, i32 noundef %conv103)
  br label %if.end105

if.end105:                                        ; preds = %if.then96, %if.end85.if.end105_crit_edge
  %iSerialNumber = getelementptr i8, ptr %3, i32 944
  %71 = ptrtoint ptr %iSerialNumber to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %iSerialNumber, align 8
  %conv107 = zext i8 %72 to i32
  %uniq = getelementptr inbounds %struct.hid_device, ptr %call21, i32 0, i32 41
  %call109 = tail call i32 @usb_string(ptr noundef %add.ptr.i, i32 noundef %conv107, ptr noundef %uniq, i32 noundef 64) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call109)
  %cmp110 = icmp slt i32 %call109, 1
  br i1 %cmp110, label %if.then112, label %if.end105.if.end115_crit_edge

if.end105.if.end115_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end115

if.then112:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #15
  %73 = ptrtoint ptr %uniq to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %uniq, align 8
  br label %if.end115

if.end115:                                        ; preds = %if.then112, %if.end105.if.end115_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %74 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %74, i32 noundef 3520, i32 noundef 5484) #17
  %cmp117 = icmp eq ptr %call7.i.i, null
  br i1 %cmp117, label %if.end115.err_crit_edge, label %if.end120

if.end115.err_crit_edge:                          ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.end120:                                        ; preds = %if.end115
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %call21, i32 0, i32 42
  %75 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call7.i.i, ptr %driver_data, align 8
  %76 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call21, ptr %call7.i.i, align 8
  %intf122 = getelementptr inbounds %struct.usbhid_device, ptr %call7.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %intf122 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %intf, ptr %intf122, align 4
  %bInterfaceNumber124 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 2
  %78 = ptrtoint ptr %bInterfaceNumber124 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %bInterfaceNumber124, align 2
  %conv125 = zext i8 %79 to i32
  %ifnum = getelementptr inbounds %struct.usbhid_device, ptr %call7.i.i, i32 0, i32 2
  %80 = ptrtoint ptr %ifnum to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %conv125, ptr %ifnum, align 8
  %wait = getelementptr inbounds %struct.usbhid_device, ptr %call7.i.i, i32 0, i32 29
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.73, ptr noundef nonnull @usbhid_probe.__key) #13
  %reset_work = getelementptr inbounds %struct.usbhid_device, ptr %call7.i.i, i32 0, i32 28
  tail call void @__init_work(ptr noundef %reset_work, i32 noundef 0) #13
  %81 = ptrtoint ptr %reset_work to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -64, ptr %reset_work, align 4
  %lockdep_map = getelementptr inbounds %struct.usbhid_device, ptr %call7.i.i, i32 0, i32 28, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.75, ptr noundef nonnull @usbhid_probe.__key.74, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry133 = getelementptr inbounds %struct.usbhid_device, ptr %call7.i.i, i32 0, i32 28, i32 1
  %82 = ptrtoint ptr %entry133 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %entry133, ptr %entry133, align 8
  %prev.i = getelementptr inbounds %struct.usbhid_device, ptr %call7.i.i, i32 0, i32 28, i32 1, i32 1
  %83 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %entry133, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.usbhid_device, ptr %call7.i.i, i32 0, i32 28, i32 2
  %84 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @hid_reset, ptr %func, align 8
  %io_retry = getelementptr inbounds %struct.usbhid_device, ptr %call7.i.i, i32 0, i32 25
  tail call void @init_timer_key(ptr noundef %io_retry, ptr noundef nonnull @hid_retry_timeout, i32 noundef 0, ptr noundef nonnull @.str.77, ptr noundef nonnull @usbhid_probe.__key.76) #13
  %lock = getelementptr inbounds %struct.usbhid_device, ptr %call7.i.i, i32 0, i32 23
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.79, ptr noundef nonnull @usbhid_probe.__key.78, i16 noundef signext 3) #13
  %mutex = getelementptr inbounds %struct.usbhid_device, ptr %call7.i.i, i32 0, i32 22
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.81, ptr noundef nonnull @usbhid_probe.__key.80) #13
  %call147 = tail call i32 @hid_add_device(ptr noundef %call21) #13
  %85 = zext i32 %call147 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %call147, label %do.end155 [
    i32 0, label %if.end120.cleanup_crit_edge
    i32 -19, label %if.end120.err_free_crit_edge
  ]

if.end120.err_free_crit_edge:                     ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free

if.end120.cleanup_crit_edge:                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end155:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.83, i32 noundef %call147) #16
  br label %err_free

err_free:                                         ; preds = %do.end155, %if.end120.err_free_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %err

err:                                              ; preds = %err_free, %if.end115.err_crit_edge
  %ret.0 = phi i32 [ %call147, %err_free ], [ -12, %if.end115.err_crit_edge ]
  tail call void @hid_destroy_device(ptr noundef %call21) #13
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end120.cleanup_crit_edge, %if.then23, %do.end18
  %retval.0 = phi i32 [ %19, %if.then23 ], [ %ret.0, %err ], [ -19, %do.end18 ], [ %call147, %if.end120.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbhid_disconnect(ptr nocapture noundef readonly %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !258

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1444, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data, align 8
  %lock = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 23
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %iofl = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 24
  tail call void @_set_bit(i32 noundef 7, ptr noundef %iofl) #13
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  tail call void @hid_destroy_device(ptr noundef nonnull %1) #13
  tail call void @kfree(ptr noundef %3) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_suspend(ptr noundef %intf, [1 x i32] %message.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %message.coerce.fca.0.extract = extractvalue [1 x i32] %message.coerce, 0
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data, align 8
  %and = and i32 %message.coerce.fca.0.extract, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.else30, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @hidinput_count_leds(ptr noundef %1) #13
  %lock = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 23
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %iofl = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %iofl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %iofl, align 4
  %6 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.then.if.else_crit_edge

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %if.then
  %7 = ptrtoint ptr %iofl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %iofl, align 4
  %9 = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %land.lhs.true6, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true6:                                   ; preds = %land.lhs.true
  %10 = ptrtoint ptr %iofl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %iofl, align 4
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool9.not = icmp eq i32 %12, 0
  br i1 %tobool9.not, label %land.lhs.true10, label %land.lhs.true6.if.else_crit_edge

land.lhs.true6.if.else_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true10:                                  ; preds = %land.lhs.true6
  %13 = ptrtoint ptr %iofl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %iofl, align 4
  %15 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool13.not = icmp eq i32 %15, 0
  br i1 %tobool13.not, label %land.lhs.true14, label %land.lhs.true10.if.else_crit_edge

land.lhs.true10.if.else_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true14:                                  ; preds = %land.lhs.true10
  %16 = ptrtoint ptr %iofl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %iofl, align 4
  %18 = and i32 %17, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool17.not = icmp eq i32 %18, 0
  br i1 %tobool17.not, label %land.lhs.true18, label %land.lhs.true14.if.else_crit_edge

land.lhs.true14.if.else_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true18:                                  ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool19.not = icmp eq i32 %call1, 0
  br i1 %tobool19.not, label %land.lhs.true18.if.then21_crit_edge, label %lor.lhs.false

land.lhs.true18.if.then21_crit_edge:              ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then21

lor.lhs.false:                                    ; preds = %land.lhs.true18
  %19 = load i32, ptr @ignoreled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool20.not = icmp eq i32 %19, 0
  br i1 %tobool20.not, label %lor.lhs.false.if.else_crit_edge, label %lor.lhs.false.if.then21_crit_edge

lor.lhs.false.if.then21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then21

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then21:                                        ; preds = %lor.lhs.false.if.then21_crit_edge, %land.lhs.true18.if.then21_crit_edge
  tail call void @_set_bit(i32 noundef 5, ptr noundef %iofl) #13
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  %call25 = tail call i32 @hid_driver_suspend(ptr noundef %1, [1 x i32] %message.coerce) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %failed, label %if.then21.if.end40_crit_edge

if.then21.if.end40_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.else:                                          ; preds = %lor.lhs.false.if.else_crit_edge, %land.lhs.true14.if.else_crit_edge, %land.lhs.true10.if.else_crit_edge, %land.lhs.true6.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.then.if.else_crit_edge
  %intf1.i = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %intf1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %intf1.i, align 4
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %21, i32 0, i32 7, i32 1
  %22 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent.i.i, align 8
  %call.i.i.i = tail call i64 @ktime_get_mono_fast_ns() #13
  %last_busy.i.i.i = getelementptr i8, ptr %23, i32 704
  %24 = ptrtoint ptr %last_busy.i.i.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store volatile i64 %call.i.i.i, ptr %last_busy.i.i.i, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  br label %cleanup

if.else30:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call32 = tail call i32 @hid_driver_suspend(ptr noundef %1, [1 x i32] %message.coerce) #13
  %lock33 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 23
  tail call void @_raw_spin_lock_irq(ptr noundef %lock33) #13
  %iofl34 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 24
  tail call void @_set_bit(i32 noundef 5, ptr noundef %iofl34) #13
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock33) #13
  %call36 = tail call i32 @usbhid_wait_io(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  %spec.select = select i1 %cmp37, i32 -5, i32 %call32
  br label %if.end40

if.end40:                                         ; preds = %if.else30, %if.then21.if.end40_crit_edge
  %status.0 = phi i32 [ %call25, %if.then21.if.end40_crit_edge ], [ %spec.select, %if.else30 ]
  %io_retry.i = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 25
  %call.i = tail call i32 @del_timer_sync(ptr noundef %io_retry.i) #13
  %reset_work.i = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 28
  %call1.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %reset_work.i) #13
  %call.i102 = tail call i32 @del_timer_sync(ptr noundef %io_retry.i) #13
  %urbin.i = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 4
  %25 = ptrtoint ptr %urbin.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %urbin.i, align 4
  tail call void @usb_kill_urb(ptr noundef %26) #13
  %urbctrl.i = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 7
  %27 = ptrtoint ptr %urbctrl.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %urbctrl.i, align 4
  tail call void @usb_kill_urb(ptr noundef %28) #13
  %urbout.i = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 15
  %29 = ptrtoint ptr %urbout.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %urbout.i, align 4
  tail call void @usb_kill_urb(ptr noundef %30) #13
  br i1 %cmp.not, label %if.end40.do.body_crit_edge, label %land.lhs.true44

if.end40.do.body_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

land.lhs.true44:                                  ; preds = %if.end40
  %iofl45 = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 24
  %31 = ptrtoint ptr %iofl45 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %iofl45, align 4
  %33 = and i32 %32, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool47.not = icmp eq i32 %33, 0
  br i1 %tobool47.not, label %land.lhs.true44.do.body_crit_edge, label %if.then.i

land.lhs.true44.do.body_crit_edge:                ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.body:                                          ; preds = %land.lhs.true44.do.body_crit_edge, %if.end40.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hid_suspend.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hid_suspend, %if.then54)) #13
          to label %cleanup [label %if.then54], !srcloc !260

if.then54:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hid_suspend.__UNIQUE_ID_ddebug255, ptr noundef %dev, ptr noundef nonnull @.str.93) #13
  br label %cleanup

failed:                                           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @hid_restart_io(ptr noundef %1) #13
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @hid_restart_io(ptr noundef %1) #13
  %call.i103 = tail call i32 @hid_driver_resume(ptr noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %failed, %if.then54, %do.body, %if.else
  %retval.0 = phi i32 [ -16, %if.else ], [ %status.0, %if.then54 ], [ %status.0, %do.body ], [ %call25, %failed ], [ -16, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_resume(ptr noundef %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @hid_restart_io(ptr noundef %1) #13
  %call.i = tail call i32 @hid_driver_resume(ptr noundef %1) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hid_resume.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hid_resume, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !260

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hid_resume.__UNIQUE_ID_ddebug256, ptr noundef %dev, ptr noundef nonnull @.str.95, i32 noundef %call.i) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_reset_resume(ptr nocapture noundef readonly %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @hid_post_reset(ptr noundef %intf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp = icmp sgt i32 %call1, -1
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call i32 @hid_driver_reset_resume(ptr noundef %1) #13
  %2 = tail call i32 @llvm.smin.i32(i32 %call2, i32 0)
  br label %if.end5

if.end5:                                          ; preds = %if.then, %entry.if.end5_crit_edge
  %status.1 = phi i32 [ %2, %if.then ], [ %call1, %entry.if.end5_crit_edge ]
  ret i32 %status.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_pre_reset(ptr nocapture noundef readonly %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data, align 8
  %lock = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 23
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %iofl = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 24
  tail call void @_set_bit(i32 noundef 4, ptr noundef %iofl) #13
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  %io_retry.i = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 25
  %call.i = tail call i32 @del_timer_sync(ptr noundef %io_retry.i) #13
  %urbin.i = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %urbin.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %urbin.i, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #13
  %urbctrl.i = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %urbctrl.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %urbctrl.i, align 4
  tail call void @usb_kill_urb(ptr noundef %7) #13
  %urbout.i = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 15
  %8 = ptrtoint ptr %urbout.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %urbout.i, align 4
  tail call void @usb_kill_urb(ptr noundef %9) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_post_reset(ptr nocapture noundef readonly %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 42
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data, align 8
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %6 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_altsetting, align 4
  %dev_rsize = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %dev_rsize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_rsize, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3264) #18
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bInterfaceNumber, align 2
  %12 = ptrtoint ptr %dev_rsize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dev_rsize, align 4
  %14 = call ptr @memset(ptr %call9.i, i32 0, i32 %13)
  %conv3.i = zext i8 %11 to i16
  %conv4.i = trunc i32 %13 to i16
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i = shl i32 %16, 8
  %or1.i = or i32 %shl.i.i, -2147483520
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or1.i, i8 noundef zeroext 6, i8 noundef zeroext -127, i16 noundef zeroext 8704, i16 noundef zeroext %conv3.i, ptr noundef nonnull %call9.i, i16 noundef zeroext %conv4.i, i32 noundef 5000) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i, i32 %13)
  %cmp.i62.not = icmp slt i32 %call5.i, %13
  br i1 %cmp.i62.not, label %do.body.i.1, label %if.end.hid_get_class_descriptor.exit_crit_edge

if.end.hid_get_class_descriptor.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %hid_get_class_descriptor.exit

do.body.i.1:                                      ; preds = %if.end
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i.1 = shl i32 %18, 8
  %or1.i.1 = or i32 %shl.i.i.1, -2147483520
  %call5.i.1 = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or1.i.1, i8 noundef zeroext 6, i8 noundef zeroext -127, i16 noundef zeroext 8704, i16 noundef zeroext %conv3.i, ptr noundef nonnull %call9.i, i16 noundef zeroext %conv4.i, i32 noundef 5000) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i.1, i32 %13)
  %cmp.i62.1.not = icmp slt i32 %call5.i.1, %13
  br i1 %cmp.i62.1.not, label %do.body.i.2, label %do.body.i.1.hid_get_class_descriptor.exit_crit_edge

do.body.i.1.hid_get_class_descriptor.exit_crit_edge: ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %hid_get_class_descriptor.exit

do.body.i.2:                                      ; preds = %do.body.i.1
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i.2 = shl i32 %20, 8
  %or1.i.2 = or i32 %shl.i.i.2, -2147483520
  %call5.i.2 = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or1.i.2, i8 noundef zeroext 6, i8 noundef zeroext -127, i16 noundef zeroext 8704, i16 noundef zeroext %conv3.i, ptr noundef nonnull %call9.i, i16 noundef zeroext %conv4.i, i32 noundef 5000) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i.2, i32 %13)
  %cmp.i62.2.not = icmp slt i32 %call5.i.2, %13
  br i1 %cmp.i62.2.not, label %do.body.i.3, label %do.body.i.2.hid_get_class_descriptor.exit_crit_edge

do.body.i.2.hid_get_class_descriptor.exit_crit_edge: ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %hid_get_class_descriptor.exit

do.body.i.3:                                      ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i.3 = shl i32 %22, 8
  %or1.i.3 = or i32 %shl.i.i.3, -2147483520
  %call5.i.3 = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or1.i.3, i8 noundef zeroext 6, i8 noundef zeroext -127, i16 noundef zeroext 8704, i16 noundef zeroext %conv3.i, ptr noundef nonnull %call9.i, i16 noundef zeroext %conv4.i, i32 noundef 5000) #13
  br label %hid_get_class_descriptor.exit

hid_get_class_descriptor.exit:                    ; preds = %do.body.i.3, %do.body.i.2.hid_get_class_descriptor.exit_crit_edge, %do.body.i.1.hid_get_class_descriptor.exit_crit_edge, %if.end.hid_get_class_descriptor.exit_crit_edge
  %call5.i.lcssa = phi i32 [ %call5.i, %if.end.hid_get_class_descriptor.exit_crit_edge ], [ %call5.i.1, %do.body.i.1.hid_get_class_descriptor.exit_crit_edge ], [ %call5.i.2, %do.body.i.2.hid_get_class_descriptor.exit_crit_edge ], [ %call5.i.3, %do.body.i.3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.lcssa)
  %cmp = icmp slt i32 %call5.i.lcssa, 0
  br i1 %cmp, label %do.body, label %if.end14

do.body:                                          ; preds = %hid_get_class_descriptor.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %23 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool7.not = icmp eq i32 %23, 0
  br i1 %tobool7.not, label %do.body.do.end13_crit_edge, label %do.end

do.body.do.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end13

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.2) #16
  br label %do.end13

do.end13:                                         ; preds = %do.end, %do.body.do.end13_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i) #13
  br label %cleanup

if.end14:                                         ; preds = %hid_get_class_descriptor.exit
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 8
  %26 = ptrtoint ptr %dev_rsize to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dev_rsize, align 4
  %bcmp = tail call i32 @bcmp(ptr nonnull %call9.i, ptr %25, i32 %27) #19
  tail call void @kfree(ptr noundef nonnull %call9.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp17.not = icmp eq i32 %bcmp, 0
  br i1 %cmp17.not, label %if.end31, label %do.body20

do.body20:                                        ; preds = %if.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %28 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool21.not = icmp eq i32 %28, 0
  br i1 %tobool21.not, label %do.body20.cleanup_crit_edge, label %do.end25

do.body20.cleanup_crit_edge:                      ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end25:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #15
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.2) #16
  br label %cleanup

if.end31:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %lock = getelementptr inbounds %struct.usbhid_device, ptr %5, i32 0, i32 23
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %iofl = getelementptr inbounds %struct.usbhid_device, ptr %5, i32 0, i32 24
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %iofl) #13
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %iofl) #13
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  %29 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber36 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %bInterfaceNumber36 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bInterfaceNumber36, align 2
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i63 = shl i32 %34, 8
  %or.i = or i32 %shl.i.i63, -2147483648
  %conv2.i = zext i8 %32 to i16
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or.i, i8 noundef zeroext 10, i8 noundef zeroext 33, i16 noundef zeroext 0, i16 noundef zeroext %conv2.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #13
  tail call fastcc void @hid_restart_io(ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end25, %do.body20.cleanup_crit_edge, %do.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5.i.lcssa, %do.end13 ], [ 0, %if.end31 ], [ -12, %entry.cleanup_crit_edge ], [ -1, %do.end25 ], [ -1, %do.body20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hid_allocate_device() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_pidff_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hiddev_connect(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hiddev_disconnect(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hiddev_hid_event(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hiddev_report_event(ptr noundef, ptr noundef) #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hid_reset(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -5388
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %iofl = getelementptr i8, ptr %work, i32 -60
  %2 = ptrtoint ptr %iofl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %iofl, align 4
  %4 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %do.body

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hid_reset.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hid_reset, %if.then7)) #13
          to label %do.end [label %if.then7], !srcloc !260

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %intf = getelementptr i8, ptr %work, i32 -5384
  %5 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %6, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hid_reset.__UNIQUE_ID_ddebug248, ptr noundef %dev, ptr noundef nonnull @.str.87) #13
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %parent = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 8
  %parent10 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %parent10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent10, align 8
  %add.ptr12 = getelementptr i8, ptr %10, i32 -128
  %urbin = getelementptr i8, ptr %work, i32 -5372
  %11 = ptrtoint ptr %urbin to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %urbin, align 4
  %pipe = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pipe, align 4
  %call13 = tail call i32 @usb_clear_halt(ptr noundef %add.ptr12, i32 noundef %14) #13
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %iofl) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp eq i32 %call13, 0
  br i1 %cmp, label %if.then15, label %do.body17

if.then15:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %call16 = tail call fastcc i32 @hid_start_in(ptr noundef %1)
  br label %if.end37

do.body17:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hid_reset.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hid_reset, %if.then29)) #13
          to label %do.end34 [label %if.then29], !srcloc !260

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #15
  %intf30 = getelementptr i8, ptr %work, i32 -5384
  %15 = ptrtoint ptr %intf30 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %intf30, align 4
  %dev31 = getelementptr inbounds %struct.usb_interface, ptr %16, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hid_reset.__UNIQUE_ID_ddebug249, ptr noundef %dev31, ptr noundef nonnull @.str.88, i32 noundef %call13) #13
  br label %do.end34

do.end34:                                         ; preds = %if.then29, %do.body17
  tail call void @_set_bit(i32 noundef 4, ptr noundef %iofl) #13
  br label %if.end37

if.end37:                                         ; preds = %do.end34, %if.then15, %entry.if.end37_crit_edge
  %17 = ptrtoint ptr %iofl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %iofl, align 4
  %19 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool40.not = icmp eq i32 %19, 0
  br i1 %tobool40.not, label %if.end37.if.end61_crit_edge, label %do.body42

if.end37.if.end61_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

do.body42:                                        ; preds = %if.end37
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hid_reset.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hid_reset, %if.then54)) #13
          to label %do.end59 [label %if.then54], !srcloc !260

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #15
  %intf55 = getelementptr i8, ptr %work, i32 -5384
  %20 = ptrtoint ptr %intf55 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %intf55, align 4
  %dev56 = getelementptr inbounds %struct.usb_interface, ptr %21, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hid_reset.__UNIQUE_ID_ddebug250, ptr noundef %dev56, ptr noundef nonnull @.str.89) #13
  br label %do.end59

do.end59:                                         ; preds = %if.then54, %do.body42
  %intf60 = getelementptr i8, ptr %work, i32 -5384
  %22 = ptrtoint ptr %intf60 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %intf60, align 4
  tail call void @usb_queue_reset_device(ptr noundef %23) #13
  br label %if.end61

if.end61:                                         ; preds = %do.end59, %if.end37.if.end61_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hid_retry_timeout(ptr nocapture noundef readonly %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -5332
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hid_retry_timeout.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hid_retry_timeout, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !260

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %intf = getelementptr i8, ptr %t, i32 -5328
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hid_retry_timeout.__UNIQUE_ID_ddebug247, ptr noundef %dev, ptr noundef nonnull @.str.91) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = tail call fastcc i32 @hid_start_in(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.end.if.end8_crit_edge, label %if.then7

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @hid_io_error(ptr noundef %1)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %do.end.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_add_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_destroy_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_clear_halt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_queue_reset_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hidinput_count_leds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_driver_suspend(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hid_restart_io(ptr nocapture noundef readonly %hid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  %iofl = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %iofl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %iofl, align 4
  %4 = load volatile i32, ptr %iofl, align 4
  %lock = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 23
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %iofl) #13
  %intf1.i = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %intf1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intf1.i, align 4
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %6, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent.i.i, align 8
  %call.i.i.i = tail call i64 @ktime_get_mono_fast_ns() #13
  %last_busy.i.i.i = getelementptr i8, ptr %8, i32 704
  %9 = ptrtoint ptr %last_busy.i.i.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store volatile i64 %call.i.i.i, ptr %last_busy.i.i.i, align 8
  %10 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  %11 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not = icmp eq i32 %11, 0
  %or.cond = select i1 %tobool.not, i1 %tobool4.not, i1 false
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %reset_work = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %12 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %reset_work) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %retry_delay = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 27
  %13 = ptrtoint ptr %retry_delay to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %retry_delay, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  br i1 %tobool4.not, label %lor.lhs.false8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false8:                                   ; preds = %if.end
  %14 = ptrtoint ptr %iofl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %iofl, align 4
  %16 = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool11.not = icmp eq i32 %16, 0
  br i1 %tobool11.not, label %lor.lhs.false8.cleanup_crit_edge, label %if.end13

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false8
  br i1 %tobool.not, label %if.then15, label %if.end13.if.end19_crit_edge

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then15:                                        ; preds = %if.end13
  %call16 = tail call fastcc i32 @hid_start_in(ptr noundef %hid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %if.then17, label %if.then15.if.end19_crit_edge

if.then15.if.end19_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then17:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @hid_io_error(ptr noundef %hid)
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.then15.if.end19_crit_edge, %if.end13.if.end19_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %urbout = getelementptr inbounds %struct.usbhid_device, ptr %1, i32 0, i32 15
  %17 = ptrtoint ptr %urbout to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %urbout, align 4
  %tobool21.not = icmp eq ptr %18, null
  br i1 %tobool21.not, label %if.end19.if.end27_crit_edge, label %land.lhs.true

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end19
  %19 = ptrtoint ptr %iofl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %iofl, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool24.not = icmp eq i32 %21, 0
  br i1 %tobool24.not, label %if.then25, label %land.lhs.true.if.end27_crit_edge

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @usbhid_restart_out_queue(ptr noundef %1)
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %land.lhs.true.if.end27_crit_edge, %if.end19.if.end27_crit_edge
  %22 = ptrtoint ptr %iofl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %iofl, align 4
  %24 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool30.not = icmp eq i32 %24, 0
  br i1 %tobool30.not, label %if.then31, label %if.end27.if.end33_crit_edge

if.end27.if.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @usbhid_restart_ctrl_queue(ptr noundef %1)
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end27.if.end33_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %lor.lhs.false8.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_driver_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_driver_reset_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_quirks_init(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !29, !30, !31, !32, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !52, !54, !56, !58, !60, !61, !62, !63, !64, !65, !66, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !100, !102, !103, !105, !106, !107, !108, !109, !110, !112, !113, !114, !116, !118, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !132, !133, !134, !135, !137, !138, !139, !141, !142, !143, !144, !146, !147, !148, !149, !151, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !174, !175, !176, !177, !179, !180, !181, !183, !185, !187, !189, !191, !192, !194, !195, !197, !198, !200, !201, !203, !204, !206, !207, !208, !210, !212, !213, !214, !216, !217, !219, !220, !222, !223, !224, !226, !227, !228, !230, !231, !232, !234, !235, !236, !237, !239, !240, !241, !243, !245, !246, !247}
!llvm.module.flags = !{!248, !249, !250, !251, !252, !253, !254, !255}
!llvm.ident = !{!256}

!0 = !{ptr @__param_mousepoll, !1, !"__param_mousepoll", i1 false, i1 false}
!1 = !{!"../drivers/hid/usbhid/hid-core.c", i32 49, i32 1}
!2 = !{ptr @__UNIQUE_ID_mousepolltype237, !1, !"__UNIQUE_ID_mousepolltype237", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_mousepoll238, !4, !"__UNIQUE_ID_mousepoll238", i1 false, i1 false}
!4 = !{!"../drivers/hid/usbhid/hid-core.c", i32 50, i32 1}
!5 = !{ptr @__param_jspoll, !6, !"__param_jspoll", i1 false, i1 false}
!6 = !{!"../drivers/hid/usbhid/hid-core.c", i32 53, i32 1}
!7 = !{ptr @__UNIQUE_ID_jspolltype239, !6, !"__UNIQUE_ID_jspolltype239", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_jspoll240, !9, !"__UNIQUE_ID_jspoll240", i1 false, i1 false}
!9 = !{!"../drivers/hid/usbhid/hid-core.c", i32 54, i32 1}
!10 = !{ptr @__param_kbpoll, !11, !"__param_kbpoll", i1 false, i1 false}
!11 = !{!"../drivers/hid/usbhid/hid-core.c", i32 57, i32 1}
!12 = !{ptr @__UNIQUE_ID_kbpolltype241, !11, !"__UNIQUE_ID_kbpolltype241", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_kbpoll242, !14, !"__UNIQUE_ID_kbpoll242", i1 false, i1 false}
!14 = !{!"../drivers/hid/usbhid/hid-core.c", i32 58, i32 1}
!15 = !{ptr @__param_ignoreled, !16, !"__param_ignoreled", i1 false, i1 false}
!16 = !{!"../drivers/hid/usbhid/hid-core.c", i32 61, i32 1}
!17 = !{ptr @__UNIQUE_ID_ignoreledtype243, !16, !"__UNIQUE_ID_ignoreledtype243", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_ignoreled244, !19, !"__UNIQUE_ID_ignoreled244", i1 false, i1 false}
!19 = !{!"../drivers/hid/usbhid/hid-core.c", i32 62, i32 1}
!20 = !{ptr @__param_quirks, !21, !"__param_quirks", i1 false, i1 false}
!21 = !{!"../drivers/hid/usbhid/hid-core.c", i32 66, i32 1}
!22 = !{ptr @__UNIQUE_ID_quirkstype245, !21, !"__UNIQUE_ID_quirkstype245", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_quirks246, !24, !"__UNIQUE_ID_quirks246", i1 false, i1 false}
!24 = !{!"../drivers/hid/usbhid/hid-core.c", i32 67, i32 1}
!25 = !{ptr @.str, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hid/usbhid/hid-core.c", i32 794, i32 3}
!27 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @usbhid_init_reports._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @usbhid_init_reports._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @usb_hid_driver, !34, !"usb_hid_driver", i1 false, i1 false}
!34 = !{!"../drivers/hid/usbhid/hid-core.c", i32 1321, i32 22}
!35 = !{ptr @__ksymtab_usb_hid_driver, !36, !"__ksymtab_usb_hid_driver", i1 false, i1 false}
!36 = !{!"../drivers/hid/usbhid/hid-core.c", i32 1335, i32 1}
!37 = !{ptr @__initcall__kmod_usbhid__257_1707_hid_init6, !38, !"__initcall__kmod_usbhid__257_1707_hid_init6", i1 false, i1 false}
!38 = !{!"../drivers/hid/usbhid/hid-core.c", i32 1707, i32 1}
!39 = !{ptr @__exitcall_hid_exit, !40, !"__exitcall_hid_exit", i1 false, i1 false}
!40 = !{!"../drivers/hid/usbhid/hid-core.c", i32 1708, i32 1}
!41 = !{ptr @__UNIQUE_ID_author258, !42, !"__UNIQUE_ID_author258", i1 false, i1 false}
!42 = !{!"../drivers/hid/usbhid/hid-core.c", i32 1710, i32 1}
!43 = !{ptr @__UNIQUE_ID_author259, !44, !"__UNIQUE_ID_author259", i1 false, i1 false}
!44 = !{!"../drivers/hid/usbhid/hid-core.c", i32 1711, i32 1}
!45 = !{ptr @__UNIQUE_ID_author260, !46, !"__UNIQUE_ID_author260", i1 false, i1 false}
!46 = !{!"../drivers/hid/usbhid/hid-core.c", i32 1712, i32 1}
!47 = !{ptr @__UNIQUE_ID_description261, !48, !"__UNIQUE_ID_description261", i1 false, i1 false}
!48 = !{!"../drivers/hid/usbhid/hid-core.c", i32 1713, i32 1}
!49 = !{ptr @__UNIQUE_ID_file262, !50, !"__UNIQUE_ID_file262", i1 false, i1 false}
!50 = !{!"../drivers/hid/usbhid/hid-core.c", i32 1714, i32 1}
!51 = !{ptr @__UNIQUE_ID_license263, !50, !"__UNIQUE_ID_license263", i1 false, i1 false}
!52 = !{ptr @hid_mousepoll_interval, !53, !"hid_mousepoll_interval", i1 false, i1 false}
!53 = !{!"../drivers/hid/usbhid/hid-core.c", i32 48, i32 21}
!54 = !{ptr @hid_jspoll_interval, !55, !"hid_jspoll_interval", i1 false, i1 false}
!55 = !{!"../drivers/hid/usbhid/hid-core.c", i32 52, i32 21}
!56 = !{ptr @hid_kbpoll_interval, !57, !"hid_kbpoll_interval", i1 false, i1 false}
!57 = !{!"../drivers/hid/usbhid/hid-core.c", i32 56, i32 21}
!58 = !{ptr @ignoreled, !59, !"ignoreled", i1 false, i1 false}
!59 = !{!"../drivers/hid/usbhid/hid-core.c", i32 60, i32 21}
!60 = !{ptr @__param_str_mousepoll, !1, !"__param_str_mousepoll", i1 false, i1 false}
!61 = !{ptr @__param_str_jspoll, !6, !"__param_str_jspoll", i1 false, i1 false}
!62 = !{ptr @__param_str_kbpoll, !11, !"__param_str_kbpoll", i1 false, i1 false}
!63 = !{ptr @__param_str_ignoreled, !16, !"__param_str_ignoreled", i1 false, i1 false}
!64 = !{ptr @__param_str_quirks, !21, !"__param_str_quirks", i1 false, i1 false}
!65 = !{ptr @__param_arr_quirks, !21, !"__param_arr_quirks", i1 false, i1 false}
!66 = !{ptr @quirks_param, !67, !"quirks_param", i1 false, i1 false}
!67 = !{!"../drivers/hid/usbhid/hid-core.c", i32 65, i32 14}
!68 = !{ptr @.str.5, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hid/usbhid/hid-core.c", i32 533, i32 4}
!70 = !{ptr @.str.6, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @__usbhid_submit_report._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @__usbhid_submit_report._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.8, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/hid/usbhid/hid-core.c", i32 539, i32 4}
!75 = !{ptr @__usbhid_submit_report._entry.7, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @__usbhid_submit_report._entry_ptr.9, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.11, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/hid/usbhid/hid-core.c", i32 581, i32 3}
!79 = !{ptr @__usbhid_submit_report._entry.10, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @__usbhid_submit_report._entry_ptr.12, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.14, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/hid/usbhid/hid-core.c", i32 588, i32 4}
!83 = !{ptr @__usbhid_submit_report._entry.13, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @__usbhid_submit_report._entry_ptr.15, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.16, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/hid/usbhid/hid-core.c", i32 201, i32 3}
!87 = !{ptr @.str.17, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.18, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @usbhid_restart_out_queue.__UNIQUE_ID_ddebug251, !86, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!90 = !{ptr @.str.19, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/hid/usbhid/hid-core.c", i32 354, i32 2}
!92 = !{ptr @.str.20, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @hid_submit_out._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @hid_submit_out._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.22, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/hid/usbhid/hid-core.c", i32 358, i32 3}
!97 = !{ptr @.str.23, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @hid_submit_out._entry.21, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @hid_submit_out._entry_ptr.24, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.25, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/hid/usbhid/hid-core.c", i32 240, i32 3}
!102 = !{ptr @usbhid_restart_ctrl_queue.__UNIQUE_ID_ddebug252, !101, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!103 = !{ptr @.str.26, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/hid/usbhid/hid-core.c", i32 407, i32 2}
!105 = !{ptr @.str.27, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @hid_submit_ctrl._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @hid_submit_ctrl._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.28, !104, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.29, !104, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.31, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/hid/usbhid/hid-core.c", i32 414, i32 3}
!112 = !{ptr @hid_submit_ctrl._entry.30, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @hid_submit_ctrl._entry_ptr.32, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.33, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../include/linux/usb.h", i32 1981, i32 3}
!116 = !{ptr @.str.34, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/hid/usbhid/hid-core.c", i32 648, i32 3}
!118 = !{ptr @.str.35, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @usbhid_wait_io._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @usbhid_wait_io._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.36, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/hid/usbhid/hid-core.c", i32 1106, i32 4}
!123 = !{ptr @.str.37, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @usbhid_start._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @usbhid_start._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.39, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/hid/usbhid/hid-core.c", i32 1173, i32 4}
!128 = !{ptr @usbhid_start._entry.38, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @usbhid_start._entry_ptr.40, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.41, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/hid/usbhid/hid-core.c", i32 318, i32 3}
!132 = !{ptr @.str.42, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @hid_irq_in._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @hid_irq_in._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.44, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/hid/usbhid/hid-core.c", i32 326, i32 4}
!137 = !{ptr @hid_irq_in._entry.43, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @hid_irq_in._entry_ptr.45, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.46, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/hid/usbhid/hid-core.c", i32 444, i32 3}
!141 = !{ptr @.str.47, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @hid_irq_out._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @hid_irq_out._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.48, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/hid/usbhid/hid-core.c", i32 497, i32 3}
!146 = !{ptr @.str.49, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @hid_ctrl._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @hid_ctrl._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.50, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/hid/usbhid/hid-core.c", i32 1008, i32 3}
!151 = !{ptr @.str.51, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @usbhid_parse._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @usbhid_parse._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.53, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/hid/usbhid/hid-core.c", i32 1013, i32 3}
!156 = !{ptr @usbhid_parse._entry.52, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @usbhid_parse._entry_ptr.54, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.56, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/hid/usbhid/hid-core.c", i32 1028, i32 3}
!160 = !{ptr @usbhid_parse._entry.55, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @usbhid_parse._entry_ptr.57, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.59, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/hid/usbhid/hid-core.c", i32 1041, i32 3}
!164 = !{ptr @usbhid_parse._entry.58, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @usbhid_parse._entry_ptr.60, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.62, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/hid/usbhid/hid-core.c", i32 1049, i32 3}
!168 = !{ptr @usbhid_parse._entry.61, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @usbhid_parse._entry_ptr.63, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @hid_driver, !171, !"hid_driver", i1 false, i1 false}
!171 = !{!"../drivers/hid/usbhid/hid-core.c", i32 1662, i32 26}
!172 = !{ptr @.str.64, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/hid/usbhid/hid-core.c", i32 1347, i32 2}
!174 = !{ptr @.str.65, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @usbhid_probe._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @usbhid_probe._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.67, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/hid/usbhid/hid-core.c", i32 1354, i32 3}
!179 = !{ptr @usbhid_probe._entry.66, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @usbhid_probe._entry_ptr.68, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.69, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/hid/usbhid/hid-core.c", i32 1388, i32 23}
!183 = !{ptr @.str.70, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/hid/usbhid/hid-core.c", i32 1393, i32 42}
!185 = !{ptr @.str.71, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/hid/usbhid/hid-core.c", i32 1398, i32 21}
!187 = !{ptr @.str.72, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/hid/usbhid/hid-core.c", i32 1402, i32 5}
!189 = !{ptr @usbhid_probe.__key, !190, !"__key", i1 false, i1 false}
!190 = !{!"../drivers/hid/usbhid/hid-core.c", i32 1418, i32 2}
!191 = !{ptr @.str.73, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @usbhid_probe.__key.74, !193, !"__key", i1 false, i1 false}
!193 = !{!"../drivers/hid/usbhid/hid-core.c", i32 1419, i32 2}
!194 = !{ptr @.str.75, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @usbhid_probe.__key.76, !196, !"__key", i1 false, i1 false}
!196 = !{!"../drivers/hid/usbhid/hid-core.c", i32 1420, i32 2}
!197 = !{ptr @.str.77, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @usbhid_probe.__key.78, !199, !"__key", i1 false, i1 false}
!199 = !{!"../drivers/hid/usbhid/hid-core.c", i32 1421, i32 2}
!200 = !{ptr @.str.79, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @usbhid_probe.__key.80, !202, !"__key", i1 false, i1 false}
!202 = !{!"../drivers/hid/usbhid/hid-core.c", i32 1422, i32 2}
!203 = !{ptr @.str.81, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.83, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/hid/usbhid/hid-core.c", i32 1427, i32 4}
!206 = !{ptr @usbhid_probe._entry.82, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @usbhid_probe._entry_ptr.84, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.85, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../include/linux/usb.h", i32 912, i32 31}
!210 = !{ptr @.str.86, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/hid/usbhid/hid-core.c", i32 124, i32 3}
!212 = !{ptr @.str.87, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @hid_reset.__UNIQUE_ID_ddebug248, !211, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!214 = !{ptr @.str.88, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/hid/usbhid/hid-core.c", i32 130, i32 4}
!216 = !{ptr @hid_reset.__UNIQUE_ID_ddebug249, !215, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!217 = !{ptr @.str.89, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/hid/usbhid/hid-core.c", i32 137, i32 3}
!219 = !{ptr @hid_reset.__UNIQUE_ID_ddebug250, !218, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!220 = !{ptr @.str.90, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/hid/usbhid/hid-core.c", i32 110, i32 2}
!222 = !{ptr @.str.91, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @hid_retry_timeout.__UNIQUE_ID_ddebug247, !221, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!224 = !{ptr @.str.92, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/hid/usbhid/hid-core.c", i32 1620, i32 2}
!226 = !{ptr @.str.93, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @hid_suspend.__UNIQUE_ID_ddebug255, !225, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!228 = !{ptr @.str.94, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/hid/usbhid/hid-core.c", i32 1634, i32 2}
!230 = !{ptr @.str.95, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @hid_resume.__UNIQUE_ID_ddebug256, !229, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!232 = !{ptr @.str.96, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/hid/usbhid/hid-core.c", i32 1537, i32 3}
!234 = !{ptr @.str.97, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @hid_post_reset._entry, !233, !"_entry", i1 false, i1 false}
!236 = !{ptr @hid_post_reset._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.99, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/hid/usbhid/hid-core.c", i32 1544, i32 3}
!239 = !{ptr @hid_post_reset._entry.98, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @hid_post_reset._entry_ptr.100, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @hid_usb_ids, !242, !"hid_usb_ids", i1 false, i1 false}
!242 = !{!"../drivers/hid/usbhid/hid-core.c", i32 1654, i32 35}
!243 = !{ptr @.str.101, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/hid/usbhid/hid-core.c", i32 1692, i32 2}
!245 = !{ptr @.str.102, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @hid_init._entry, !244, !"_entry", i1 false, i1 false}
!247 = !{ptr @hid_init._entry_ptr, !244, !"_entry_ptr", i1 false, i1 false}
!248 = !{i32 1, !"wchar_size", i32 2}
!249 = !{i32 1, !"min_enum_size", i32 4}
!250 = !{i32 8, !"branch-target-enforcement", i32 0}
!251 = !{i32 8, !"sign-return-address", i32 0}
!252 = !{i32 8, !"sign-return-address-all", i32 0}
!253 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!254 = !{i32 7, !"uwtable", i32 1}
!255 = !{i32 7, !"frame-pointer", i32 2}
!256 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!257 = !{i32 0, i32 33}
!258 = !{!"branch_weights", i32 1, i32 2000}
!259 = !{!"auto-init"}
!260 = !{i64 2148997926, i64 2148997931, i64 2148997944, i64 2148997988, i64 2148998022, i64 2148998043}
