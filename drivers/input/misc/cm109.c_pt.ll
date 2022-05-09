; ModuleID = '/llk/IR_all_yes/drivers/input/misc/cm109.c_pt.bc'
source_filename = "../drivers/input/misc/cm109.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.driver_info = type { ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.cm109_dev = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, ptr, i8, %struct.spinlock, i8, i8, %struct.mutex, [271 x i16], [64 x i8], i32, i32, i8 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }

@__param_str_phone = internal constant [12 x i8] c"cm109.phone\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@phone = internal global { ptr, [28 x i8] } { ptr @.str, [28 x i8] zeroinitializer }, align 32
@__param_phone = internal constant %struct.kernel_param { ptr @__param_str_phone, ptr null, ptr @param_ops_charp, i16 256, i8 -1, i8 0, %union.anon.62 { ptr @phone } }, section "__param", align 4
@__UNIQUE_ID_phonetype232 = internal constant [27 x i8] c"cm109.parmtype=phone:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_phone233 = internal constant [61 x i8] c"cm109.parm=phone:Phone name {kip1000, gtalk, usbph01, atcom}\00", section ".modinfo", align 1
@cm109_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @cm109_usb_probe, ptr @cm109_usb_disconnect, ptr null, ptr @cm109_usb_suspend, ptr @cm109_usb_resume, ptr @cm109_usb_resume, ptr @cm109_usb_pre_reset, ptr @cm109_usb_post_reset, ptr @cm109_usb_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 64 }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_cm109__237_942_cm109_init6 = internal global ptr @cm109_init, section ".initcall6.init", align 4
@__exitcall_cm109_exit = internal global ptr @cm109_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author238 = internal constant [33 x i8] c"cm109.author=Alfred E. Heggestad\00", section ".modinfo", align 1
@__UNIQUE_ID_description239 = internal constant [37 x i8] c"cm109.description=CM109 phone driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [36 x i8] c"cm109.file=drivers/input/misc/cm109\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [18 x i8] c"cm109.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"kip1000\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cm109\00", [26 x i8] zeroinitializer }, align 32
@cm109_usb_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 899, i16 3468, i16 14, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @info_cm109 to i32) }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@cm109_usb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&dev->ctl_submit_lock\00", [42 x i8] zeroinitializer }, align 32
@cm109_usb_probe.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&dev->pm_mutex\00", [17 x i8] zeroinitializer }, align 32
@cm109_usb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 751, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"invalid payload size %d, expected %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cm109_usb_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/input/misc/cm109.c\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cm109_usb_probe._entry_ptr = internal global ptr @cm109_usb_probe._entry, section ".printk_index", align 4
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"/input0\00", [24 x i8] zeroinitializer }, align 32
@keymap = internal global { ptr, [28 x i8] } { ptr @keymap_kip1000, [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/usb.h\00", [44 x i8] zeroinitializer }, align 32
@cm109_urb_irq_callback.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str.7, ptr @.str.13, i8 0, i8 93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cm109_urb_irq_callback\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"### URB IRQ: [0x%02x 0x%02x 0x%02x 0x%02x] keybit=0x%02x\0A\00", [38 x i8] zeroinitializer }, align 32
@cm109_urb_irq_callback._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@cm109_urb_irq_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.12, ptr @.str.7, i32 379, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: urb status %d\0A\00", [45 x i8] zeroinitializer }, align 32
@cm109_urb_irq_callback._entry_ptr = internal global ptr @cm109_urb_irq_callback._entry, section ".printk_index", align 4
@cm109_urb_irq_callback._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.7, i32 426, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: usb_submit_urb (urb_ctl) failed %d\0A\00", [56 x i8] zeroinitializer }, align 32
@cm109_urb_irq_callback._entry_ptr.18 = internal global ptr @cm109_urb_irq_callback._entry.16, section ".printk_index", align 4
@cm109_urb_ctl_callback.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.19, ptr @.str.7, ptr @.str.20, i8 0, i8 110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cm109_urb_ctl_callback\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"### URB CTL: [0x%02x 0x%02x 0x%02x 0x%02x]\0A\00", [52 x i8] zeroinitializer }, align 32
@cm109_urb_ctl_callback._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cm109_urb_ctl_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.19, ptr @.str.7, i32 449, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@cm109_urb_ctl_callback._entry_ptr = internal global ptr @cm109_urb_ctl_callback._entry, section ".printk_index", align 4
@cm109_urb_ctl_callback._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.7, i32 469, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: usb_submit_urb (urb_irq) failed %d\0A\00", [56 x i8] zeroinitializer }, align 32
@cm109_urb_ctl_callback._entry_ptr.23 = internal global ptr @cm109_urb_ctl_callback._entry.21, section ".printk_index", align 4
@cm109_submit_buzz_toggle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.24, ptr @.str.7, i32 355, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cm109_submit_buzz_toggle\00", [39 x i8] zeroinitializer }, align 32
@cm109_submit_buzz_toggle._entry_ptr = internal global ptr @cm109_submit_buzz_toggle._entry, section ".printk_index", align 4
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@cm109_input_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.7, i32 555, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s - cannot autoresume, result %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cm109_input_open\00", [47 x i8] zeroinitializer }, align 32
@cm109_input_open._entry_ptr = internal global ptr @cm109_input_open._entry, section ".printk_index", align 4
@cm109_input_open._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.27, ptr @.str.7, i32 576, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@cm109_input_open._entry_ptr.29 = internal global ptr @cm109_input_open._entry.28, section ".printk_index", align 4
@cm109_toggle_buzzer_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.7, i32 512, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: usb_control_msg() failed %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cm109_toggle_buzzer_sync\00", [39 x i8] zeroinitializer }, align 32
@cm109_toggle_buzzer_sync._entry_ptr = internal global ptr @cm109_toggle_buzzer_sync._entry, section ".printk_index", align 4
@cm109_input_ev.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.32, ptr @.str.7, ptr @.str.33, i8 0, i8 -103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cm109_input_ev\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"input_ev: type=%u code=%u value=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@cm109_usb_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.7, i32 824, ptr @.str.36, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cm109: usb_suspend (event=%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cm109_usb_suspend\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cm109_usb_suspend._entry_ptr = internal global ptr @cm109_usb_suspend._entry, section ".printk_index", align 4
@cm109_usb_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.7, i32 837, ptr @.str.36, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cm109: usb_resume\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cm109_usb_resume\00", [47 x i8] zeroinitializer }, align 32
@cm109_usb_resume._entry_ptr = internal global ptr @cm109_usb_resume._entry, section ".printk_index", align 4
@info_cm109 = internal constant { %struct.driver_info, [28 x i8] } { %struct.driver_info { ptr @.str.39 }, [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CM109 USB driver\00", [47 x i8] zeroinitializer }, align 32
@cm109_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.7, i32 932, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016cm109: CM109 phone driver: 20080805 (C) Alfred E. Heggestad\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cm109_init\00", [21 x i8] zeroinitializer }, align 32
@cm109_init._entry_ptr = internal global ptr @cm109_init._entry, section ".printk_index", align 4
@cm109_select_keymap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.7, i32 897, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016cm109: Keymap for Komunikate KIP1000 phone loaded\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cm109_select_keymap\00", [44 x i8] zeroinitializer }, align 32
@cm109_select_keymap._entry_ptr = internal global ptr @cm109_select_keymap._entry, section ".printk_index", align 4
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gtalk\00", [26 x i8] zeroinitializer }, align 32
@cm109_select_keymap._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.43, ptr @.str.7, i32 901, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016cm109: Keymap for Genius G-talk phone loaded\0A\00", [48 x i8] zeroinitializer }, align 32
@cm109_select_keymap._entry_ptr.47 = internal global ptr @cm109_select_keymap._entry.45, section ".printk_index", align 4
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usbph01\00", [24 x i8] zeroinitializer }, align 32
@cm109_select_keymap._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.43, ptr @.str.7, i32 905, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016cm109: Keymap for Allied-Telesis Corega USBPH01 phone loaded\0A\00", [32 x i8] zeroinitializer }, align 32
@cm109_select_keymap._entry_ptr.51 = internal global ptr @cm109_select_keymap._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"atcom\00", [26 x i8] zeroinitializer }, align 32
@cm109_select_keymap._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.43, ptr @.str.7, i32 909, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016cm109: Keymap for ATCom AU-100 phone loaded\0A\00", [49 x i8] zeroinitializer }, align 32
@cm109_select_keymap._entry_ptr.55 = internal global ptr @cm109_select_keymap._entry.53, section ".printk_index", align 4
@cm109_select_keymap._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.43, ptr @.str.7, i32 912, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013cm109: Unsupported phone: %s\0A\00", [32 x i8] zeroinitializer }, align 32
@cm109_select_keymap._entry_ptr.58 = internal global ptr @cm109_select_keymap._entry.56, section ".printk_index", align 4
@switch.table.keymap_kip1000 = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 115, i16 114, i16 0, i16 113, i16 0, i16 0, i16 0, i16 248], [16 x i8] zeroinitializer }, align 32
@switch.table.keymap_gtalk = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 115, i16 114, i16 0, i16 113, i16 0, i16 0, i16 0, i16 248], [16 x i8] zeroinitializer }, align 32
@switch.table.keymap_usbph01 = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 115, i16 114, i16 0, i16 113, i16 0, i16 0, i16 0, i16 248], [16 x i8] zeroinitializer }, align 32
@switch.table.keymap_atcom = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 115, i16 114, i16 0, i16 113, i16 0, i16 0, i16 0, i16 248], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967188]
@__sancov_gen_cov_switch_values.59 = internal global [18 x i64] [i64 16, i64 32, i64 17, i64 18, i64 20, i64 24, i64 33, i64 34, i64 36, i64 40, i64 65, i64 66, i64 68, i64 72, i64 129, i64 130, i64 132, i64 136]
@__sancov_gen_cov_switch_values.60 = internal global [18 x i64] [i64 16, i64 32, i64 17, i64 18, i64 20, i64 24, i64 33, i64 34, i64 36, i64 40, i64 65, i64 66, i64 68, i64 72, i64 129, i64 130, i64 132, i64 136]
@__sancov_gen_cov_switch_values.61 = internal global [18 x i64] [i64 16, i64 32, i64 17, i64 18, i64 20, i64 24, i64 33, i64 34, i64 36, i64 40, i64 65, i64 66, i64 68, i64 72, i64 129, i64 130, i64 132, i64 136]
@__sancov_gen_cov_switch_values.62 = internal global [18 x i64] [i64 16, i64 32, i64 17, i64 18, i64 20, i64 24, i64 33, i64 34, i64 36, i64 40, i64 65, i64 66, i64 68, i64 72, i64 129, i64 130, i64 132, i64 136]
@___asan_gen_.63 = private unnamed_addr constant [6 x i8] c"phone\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 40, i32 14 }
@___asan_gen_.66 = private unnamed_addr constant [13 x i8] c"cm109_driver\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 878, i32 26 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 40, i32 22 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 879, i32 11 }
@___asan_gen_.75 = private unnamed_addr constant [16 x i8] c"cm109_usb_table\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 651, i32 35 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 712, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 713, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 750, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 778, i32 21 }
@___asan_gen_.111 = private unnamed_addr constant [7 x i8] c"keymap\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 288, i32 25 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1981, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 368, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 378, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 424, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 439, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 448, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 467, i32 5 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 353, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 912, i32 31 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 554, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 575, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 511, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 613, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 824, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 837, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant [11 x i8] c"info_cm109\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 641, i32 33 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 642, i32 10 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 931, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 896, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 898, i32 32 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 900, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 902, i32 32 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 904, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 906, i32 32 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 908, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.270 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.271 = private constant [30 x i8] c"../drivers/input/misc/cm109.c\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 911, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant [28 x i8] c"switch.table.keymap_kip1000\00", align 1
@___asan_gen_.274 = private unnamed_addr constant [26 x i8] c"switch.table.keymap_gtalk\00", align 1
@___asan_gen_.275 = private unnamed_addr constant [28 x i8] c"switch.table.keymap_usbph01\00", align 1
@___asan_gen_.276 = private unnamed_addr constant [26 x i8] c"switch.table.keymap_atcom\00", align 1
@llvm.compiler.used = appending global [101 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__UNIQUE_ID_phone233, ptr @__UNIQUE_ID_phonetype232, ptr @__exitcall_cm109_exit, ptr @__initcall__kmod_cm109__237_942_cm109_init6, ptr @__param_phone, ptr @cm109_exit, ptr @cm109_init._entry, ptr @cm109_init._entry_ptr, ptr @cm109_input_open._entry, ptr @cm109_input_open._entry.28, ptr @cm109_input_open._entry_ptr, ptr @cm109_input_open._entry_ptr.29, ptr @cm109_select_keymap._entry, ptr @cm109_select_keymap._entry.45, ptr @cm109_select_keymap._entry.49, ptr @cm109_select_keymap._entry.53, ptr @cm109_select_keymap._entry.56, ptr @cm109_select_keymap._entry_ptr, ptr @cm109_select_keymap._entry_ptr.47, ptr @cm109_select_keymap._entry_ptr.51, ptr @cm109_select_keymap._entry_ptr.55, ptr @cm109_select_keymap._entry_ptr.58, ptr @cm109_submit_buzz_toggle._entry, ptr @cm109_submit_buzz_toggle._entry_ptr, ptr @cm109_toggle_buzzer_sync._entry, ptr @cm109_toggle_buzzer_sync._entry_ptr, ptr @cm109_urb_ctl_callback._entry, ptr @cm109_urb_ctl_callback._entry.21, ptr @cm109_urb_ctl_callback._entry_ptr, ptr @cm109_urb_ctl_callback._entry_ptr.23, ptr @cm109_urb_irq_callback._entry, ptr @cm109_urb_irq_callback._entry.16, ptr @cm109_urb_irq_callback._entry_ptr, ptr @cm109_urb_irq_callback._entry_ptr.18, ptr @cm109_usb_probe._entry, ptr @cm109_usb_probe._entry_ptr, ptr @cm109_usb_resume._entry, ptr @cm109_usb_resume._entry_ptr, ptr @cm109_usb_suspend._entry, ptr @cm109_usb_suspend._entry_ptr, ptr @phone, ptr @cm109_driver, ptr @.str, ptr @.str.1, ptr @cm109_usb_table, ptr @cm109_usb_probe.__key, ptr @.str.2, ptr @cm109_usb_probe.__key.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @keymap, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @cm109_urb_irq_callback._rs, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @cm109_urb_ctl_callback._rs, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @info_cm109, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @switch.table.keymap_kip1000, ptr @switch.table.keymap_gtalk, ptr @switch.table.keymap_usbph01, ptr @switch.table.keymap_atcom], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phone to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm109_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm109_usb_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm109_usb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm109_usb_probe.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm109_usb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keymap to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm109_urb_irq_callback._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm109_urb_irq_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm109_urb_irq_callback._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm109_urb_ctl_callback._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm109_urb_ctl_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm109_urb_ctl_callback._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm109_submit_buzz_toggle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm109_input_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm109_input_open._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm109_toggle_buzzer_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm109_usb_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm109_usb_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @info_cm109 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm109_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm109_select_keymap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm109_select_keymap._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm109_select_keymap._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm109_select_keymap._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm109_select_keymap._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.keymap_kip1000 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.keymap_gtalk to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.keymap_usbph01 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.keymap_atcom to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cm109_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_deregister(ptr noundef nonnull @cm109_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cm109_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cm109_select_keymap() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @usb_register_driver(ptr noundef nonnull @cm109_driver, ptr noundef null, ptr noundef nonnull @.str.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm109_usb_probe(ptr noundef %intf, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i216 = getelementptr i8, ptr %1, i32 -128
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %2 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_info, align 4
  %4 = inttoptr i32 %3 to ptr
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %5 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp = icmp eq i8 %8, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %endpoint2 = getelementptr inbounds %struct.usb_host_interface, ptr %6, i32 0, i32 3
  %9 = ptrtoint ptr %endpoint2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %endpoint2, align 4
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bmAttributes.i.i, align 1
  %13 = and i8 %12, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp.i.not.i = icmp eq i8 %13, 3
  br i1 %cmp.i.not.i, label %usb_endpoint_is_int_in.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

usb_endpoint_is_int_in.exit:                      ; preds = %if.end
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %10, i32 0, i32 2
  %14 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %tobool.not = icmp sgt i8 %15, -1
  br i1 %tobool.not, label %usb_endpoint_is_int_in.exit.cleanup_crit_edge, label %if.end6

usb_endpoint_is_int_in.exit.cleanup_crit_edge:    ; preds = %usb_endpoint_is_int_in.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %usb_endpoint_is_int_in.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 804) #16
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %do.body

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %if.end6
  %ctl_submit_lock = getelementptr inbounds %struct.cm109_dev, ptr %call7.i.i, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %ctl_submit_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @cm109_usb_probe.__key, i16 noundef signext 3) #11
  %pm_mutex = getelementptr inbounds %struct.cm109_dev, ptr %call7.i.i, i32 0, i32 14
  tail call void @__mutex_init(ptr noundef %pm_mutex, ptr noundef nonnull @.str.4, ptr noundef nonnull @cm109_usb_probe.__key.3) #11
  %udev15 = getelementptr inbounds %struct.cm109_dev, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %udev15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.i216, ptr %udev15, align 4
  %intf16 = getelementptr inbounds %struct.cm109_dev, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %intf16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %intf, ptr %intf16, align 8
  %call17 = tail call ptr @input_allocate_device() #11
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call17, ptr %call7.i.i, align 8
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %do.body.err_out_crit_edge, label %if.end20

do.body.err_out_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out

if.end20:                                         ; preds = %do.body
  %irq_dma = getelementptr inbounds %struct.cm109_dev, ptr %call7.i.i, i32 0, i32 4
  %call21 = tail call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i216, i32 noundef 4, i32 noundef 3264, ptr noundef %irq_dma) #11
  %irq_data = getelementptr inbounds %struct.cm109_dev, ptr %call7.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %irq_data to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call21, ptr %irq_data, align 4
  %tobool23.not = icmp eq ptr %call21, null
  br i1 %tobool23.not, label %if.end20.err_out_crit_edge, label %if.end25

if.end20.err_out_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out

if.end25:                                         ; preds = %if.end20
  %ctl_dma = getelementptr inbounds %struct.cm109_dev, ptr %call7.i.i, i32 0, i32 7
  %call26 = tail call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i216, i32 noundef 4, i32 noundef 3264, ptr noundef %ctl_dma) #11
  %ctl_data = getelementptr inbounds %struct.cm109_dev, ptr %call7.i.i, i32 0, i32 6
  %21 = ptrtoint ptr %ctl_data to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call26, ptr %ctl_data, align 8
  %tobool28.not = icmp eq ptr %call26, null
  br i1 %tobool28.not, label %if.end25.err_out_crit_edge, label %if.end30

if.end25.err_out_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out

if.end30:                                         ; preds = %if.end25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3264, i32 noundef 8) #16
  %ctl_req = getelementptr inbounds %struct.cm109_dev, ptr %call7.i.i, i32 0, i32 8
  %23 = ptrtoint ptr %ctl_req to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i, ptr %ctl_req, align 8
  %tobool33.not = icmp eq ptr %call7.i, null
  br i1 %tobool33.not, label %if.end30.err_out_crit_edge, label %if.end35

if.end30.err_out_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out

if.end35:                                         ; preds = %if.end30
  %call36 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %urb_irq = getelementptr inbounds %struct.cm109_dev, ptr %call7.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %urb_irq to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call36, ptr %urb_irq, align 4
  %tobool38.not = icmp eq ptr %call36, null
  br i1 %tobool38.not, label %if.end35.err_out_crit_edge, label %if.end40

if.end35.err_out_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out

if.end40:                                         ; preds = %if.end35
  %call41 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %urb_ctl = getelementptr inbounds %struct.cm109_dev, ptr %call7.i.i, i32 0, i32 9
  %25 = ptrtoint ptr %urb_ctl to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call41, ptr %urb_ctl, align 4
  %tobool43.not = icmp eq ptr %call41, null
  br i1 %tobool43.not, label %if.end40.err_out_crit_edge, label %if.end45

if.end40.err_out_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out

if.end45:                                         ; preds = %if.end40
  %26 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bEndpointAddress.i.i, align 1
  %conv46 = zext i8 %27 to i32
  %28 = ptrtoint ptr %add.ptr.i216 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.i216, align 8
  %shl.i217 = shl i32 %29, 8
  %shl1.i = shl nuw nsw i32 %conv46, 15
  %or.i218 = or i32 %shl1.i, %shl.i217
  %or48 = or i32 %or.i218, 1073741952
  %call50 = tail call fastcc zeroext i16 @usb_maxpacket(ptr noundef %add.ptr.i216, i32 noundef %or48)
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %call50)
  %cmp52.not = icmp eq i16 %call50, 4
  br i1 %cmp52.not, label %if.end45.if.end59_crit_edge, label %do.end57

if.end45.if.end59_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

do.end57:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  %conv51 = zext i16 %call50 to i32
  %dev58 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev58, ptr noundef nonnull @.str.5, i32 noundef %conv51, i32 noundef 4) #15
  br label %if.end59

if.end59:                                         ; preds = %do.end57, %if.end45.if.end59_crit_edge
  %30 = ptrtoint ptr %urb_irq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %urb_irq, align 4
  %32 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %irq_data, align 4
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %10, i32 0, i32 5
  %34 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bInterval, align 1
  %conv62 = zext i8 %35 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 8
  %36 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr.i216, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 10
  %37 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or48, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 14
  %38 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %33, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 19
  %39 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 4, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 28
  %40 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @cm109_urb_irq_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 27
  %41 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i, ptr %context4.i, align 4
  %speed.i = getelementptr i8, ptr %1, i32 -100
  %42 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %43)
  %cmp.i = icmp eq i32 %43, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %43)
  %cmp6.i = icmp ugt i32 %43, 4
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  br i1 %or.cond.i, label %if.then.i, label %if.end59.usb_fill_int_urb.exit_crit_edge

if.end59.usb_fill_int_urb.exit_crit_edge:         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %usb_fill_int_urb.exit

if.then.i:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  %44 = tail call i32 @llvm.smax.i32(i32 %conv62, i32 1) #11
  %45 = tail call i32 @llvm.umin.i32(i32 %44, i32 16) #11
  %sub.i = add nsw i32 %45, -1
  %shl.i219 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i, %if.end59.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i219, %if.then.i ], [ %conv62, %if.end59.usb_fill_int_urb.exit_crit_edge ]
  %46 = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 25
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %interval.sink.i, ptr %46, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 23
  %48 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %start_frame.i, align 4
  %49 = ptrtoint ptr %irq_dma to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %irq_dma, align 8
  %51 = ptrtoint ptr %urb_irq to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %urb_irq, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %52, i32 0, i32 15
  %53 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %50, ptr %transfer_dma, align 4
  %54 = load ptr, ptr %urb_irq, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %54, i32 0, i32 13
  %55 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %transfer_flags, align 4
  %or66 = or i32 %56, 4
  store i32 %or66, ptr %transfer_flags, align 4
  %57 = load ptr, ptr %urb_irq, align 4
  %dev68 = getelementptr inbounds %struct.urb, ptr %57, i32 0, i32 8
  %58 = ptrtoint ptr %dev68 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %add.ptr.i216, ptr %dev68, align 4
  %59 = ptrtoint ptr %ctl_req to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ctl_req, align 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 33, ptr %60, align 1
  %62 = load ptr, ptr %ctl_req, align 8
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %bRequest to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 9, ptr %bRequest, align 1
  %64 = load ptr, ptr %ctl_req, align 8
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %wValue to i32
  call void @__asan_storeN_noabort(i32 %65, i32 2)
  store i16 2, ptr %wValue, align 1
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %6, i32 0, i32 2
  %66 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %bInterfaceNumber, align 2
  %conv73 = zext i8 %67 to i16
  %68 = shl nuw i16 %conv73, 8
  %69 = load ptr, ptr %ctl_req, align 8
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %wIndex to i32
  call void @__asan_storeN_noabort(i32 %70, i32 2)
  store i16 %68, ptr %wIndex, align 1
  %71 = load ptr, ptr %ctl_req, align 8
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %wLength to i32
  call void @__asan_storeN_noabort(i32 %72, i32 2)
  store i16 1024, ptr %wLength, align 1
  %73 = ptrtoint ptr %urb_ctl to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %urb_ctl, align 4
  %75 = ptrtoint ptr %add.ptr.i216 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %add.ptr.i216, align 8
  %shl.i220 = shl i32 %76, 8
  %or78 = or i32 %shl.i220, -2147483648
  %77 = load ptr, ptr %ctl_req, align 8
  %78 = ptrtoint ptr %ctl_data to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ctl_data, align 8
  %dev1.i221 = getelementptr inbounds %struct.urb, ptr %74, i32 0, i32 8
  %80 = ptrtoint ptr %dev1.i221 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %add.ptr.i216, ptr %dev1.i221, align 4
  %pipe2.i222 = getelementptr inbounds %struct.urb, ptr %74, i32 0, i32 10
  %81 = ptrtoint ptr %pipe2.i222 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or78, ptr %pipe2.i222, align 4
  %setup_packet3.i = getelementptr inbounds %struct.urb, ptr %74, i32 0, i32 21
  %82 = ptrtoint ptr %setup_packet3.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %77, ptr %setup_packet3.i, align 4
  %transfer_buffer4.i = getelementptr inbounds %struct.urb, ptr %74, i32 0, i32 14
  %83 = ptrtoint ptr %transfer_buffer4.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %79, ptr %transfer_buffer4.i, align 4
  %transfer_buffer_length.i223 = getelementptr inbounds %struct.urb, ptr %74, i32 0, i32 19
  %84 = ptrtoint ptr %transfer_buffer_length.i223 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 4, ptr %transfer_buffer_length.i223, align 4
  %complete.i224 = getelementptr inbounds %struct.urb, ptr %74, i32 0, i32 28
  %85 = ptrtoint ptr %complete.i224 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @cm109_urb_ctl_callback, ptr %complete.i224, align 4
  %context5.i = getelementptr inbounds %struct.urb, ptr %74, i32 0, i32 27
  %86 = ptrtoint ptr %context5.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call7.i.i, ptr %context5.i, align 4
  %87 = ptrtoint ptr %ctl_dma to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %ctl_dma, align 4
  %89 = load ptr, ptr %urb_ctl, align 4
  %transfer_dma83 = getelementptr inbounds %struct.urb, ptr %89, i32 0, i32 15
  %90 = ptrtoint ptr %transfer_dma83 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %88, ptr %transfer_dma83, align 4
  %91 = load ptr, ptr %urb_ctl, align 4
  %transfer_flags85 = getelementptr inbounds %struct.urb, ptr %91, i32 0, i32 13
  %92 = ptrtoint ptr %transfer_flags85 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %transfer_flags85, align 4
  %or86 = or i32 %93, 4
  store i32 %or86, ptr %transfer_flags85, align 4
  %94 = load ptr, ptr %urb_ctl, align 4
  %dev88 = getelementptr inbounds %struct.urb, ptr %94, i32 0, i32 8
  %95 = ptrtoint ptr %dev88 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %add.ptr.i216, ptr %dev88, align 4
  %phys = getelementptr inbounds %struct.cm109_dev, ptr %call7.i.i, i32 0, i32 16
  %bus.i = getelementptr i8, ptr %1, i32 -64
  %96 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %97, i32 0, i32 3
  %98 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr i8, ptr %1, i32 -124
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 64, ptr noundef nonnull @.str.25, ptr noundef %99, ptr noundef %devpath.i) #11
  %call92 = tail call i32 @strlcat(ptr noundef %phys, ptr noundef nonnull @.str.10, i32 noundef 64) #11
  %100 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %4, align 4
  %102 = ptrtoint ptr %call17 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %101, ptr %call17, align 8
  %phys96 = getelementptr inbounds %struct.input_dev, ptr %call17, i32 0, i32 1
  %103 = ptrtoint ptr %phys96 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %phys, ptr %phys96, align 4
  %id97 = getelementptr inbounds %struct.input_dev, ptr %call17, i32 0, i32 3
  %104 = ptrtoint ptr %id97 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 3, ptr %id97, align 2
  %idVendor.i = getelementptr i8, ptr %1, i32 936
  %105 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %idVendor.i, align 8
  %107 = tail call i16 @llvm.bswap.i16(i16 %106) #11
  %vendor.i = getelementptr inbounds %struct.input_dev, ptr %call17, i32 0, i32 3, i32 1
  %108 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %107, ptr %vendor.i, align 2
  %idProduct.i = getelementptr i8, ptr %1, i32 938
  %109 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %idProduct.i, align 2
  %111 = tail call i16 @llvm.bswap.i16(i16 %110) #11
  %product.i = getelementptr inbounds %struct.input_dev, ptr %call17, i32 0, i32 3, i32 2
  %112 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %111, ptr %product.i, align 2
  %bcdDevice.i = getelementptr i8, ptr %1, i32 940
  %113 = ptrtoint ptr %bcdDevice.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %bcdDevice.i, align 4
  %115 = tail call i16 @llvm.bswap.i16(i16 %114) #11
  %version.i = getelementptr inbounds %struct.input_dev, ptr %call17, i32 0, i32 3, i32 3
  %116 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %115, ptr %version.i, align 2
  %dev98 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %parent = getelementptr inbounds %struct.input_dev, ptr %call17, i32 0, i32 40, i32 1
  %117 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %dev98, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call17, i32 0, i32 40, i32 8
  %118 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call17, i32 0, i32 31
  %119 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @cm109_input_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call17, i32 0, i32 32
  %120 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @cm109_input_close, ptr %close, align 4
  %event = getelementptr inbounds %struct.input_dev, ptr %call17, i32 0, i32 34
  %121 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @cm109_input_ev, ptr %event, align 4
  %keymap = getelementptr inbounds %struct.cm109_dev, ptr %call7.i.i, i32 0, i32 15
  %keycode = getelementptr inbounds %struct.input_dev, ptr %call17, i32 0, i32 17
  %122 = ptrtoint ptr %keycode to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %keymap, ptr %keycode, align 4
  %keycodesize = getelementptr inbounds %struct.input_dev, ptr %call17, i32 0, i32 16
  %123 = ptrtoint ptr %keycodesize to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 1, ptr %keycodesize, align 8
  %keycodemax = getelementptr inbounds %struct.input_dev, ptr %call17, i32 0, i32 15
  %124 = ptrtoint ptr %keycodemax to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 271, ptr %keycodemax, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call17, i32 0, i32 5
  %125 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 262146, ptr %evbit, align 8
  %sndbit = getelementptr inbounds %struct.input_dev, ptr %call17, i32 0, i32 11
  %126 = ptrtoint ptr %sndbit to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 6, ptr %sndbit, align 8
  %keybit = getelementptr inbounds %struct.input_dev, ptr %call17, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %usb_fill_int_urb.exit
  %i.0227 = phi i32 [ 0, %usb_fill_int_urb.exit ], [ %inc, %for.body.for.body_crit_edge ]
  %127 = load ptr, ptr @keymap, align 4
  %call105 = tail call zeroext i16 %127(i32 noundef %i.0227) #11, !callees !154
  %arrayidx107 = getelementptr %struct.cm109_dev, ptr %call7.i.i, i32 0, i32 15, i32 %i.0227
  %128 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %call105, ptr %arrayidx107, align 2
  %conv108 = zext i16 %call105 to i32
  %rem.i = and i32 %conv108, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %conv108, 5
  %add.ptr.i = getelementptr i32, ptr %keybit, i32 %div2.i
  %129 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %shl.i, %130
  store i32 %or.i, ptr %add.ptr.i, align 4
  %inc = add nuw nsw i32 %i.0227, 1
  %exitcond.not = icmp eq i32 %inc, 271
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  %131 = ptrtoint ptr %keybit to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %keybit, align 4
  %and.i = and i32 %132, -2
  store i32 %and.i, ptr %keybit, align 4
  %133 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %call7.i.i, align 8
  %call113 = tail call i32 @input_register_device(ptr noundef %134) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end116, label %for.end.err_out_crit_edge

for.end.err_out_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out

if.end116:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i.i225 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %135 = ptrtoint ptr %driver_data.i.i225 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call7.i.i, ptr %driver_data.i.i225, align 4
  br label %cleanup

err_out:                                          ; preds = %for.end.err_out_crit_edge, %if.end40.err_out_crit_edge, %if.end35.err_out_crit_edge, %if.end30.err_out_crit_edge, %if.end25.err_out_crit_edge, %if.end20.err_out_crit_edge, %do.body.err_out_crit_edge
  %error.0 = phi i32 [ %call113, %for.end.err_out_crit_edge ], [ -12, %if.end40.err_out_crit_edge ], [ -12, %if.end35.err_out_crit_edge ], [ -12, %if.end30.err_out_crit_edge ], [ -12, %if.end25.err_out_crit_edge ], [ -12, %if.end20.err_out_crit_edge ], [ -12, %do.body.err_out_crit_edge ]
  tail call void @input_free_device(ptr noundef %call17) #11
  %ctl_req.i = getelementptr inbounds %struct.cm109_dev, ptr %call7.i.i, i32 0, i32 8
  %136 = ptrtoint ptr %ctl_req.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ctl_req.i, align 8
  tail call void @kfree(ptr noundef %137) #11
  %138 = ptrtoint ptr %udev15 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %udev15, align 4
  %ctl_data.i = getelementptr inbounds %struct.cm109_dev, ptr %call7.i.i, i32 0, i32 6
  %140 = ptrtoint ptr %ctl_data.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %ctl_data.i, align 8
  %ctl_dma.i = getelementptr inbounds %struct.cm109_dev, ptr %call7.i.i, i32 0, i32 7
  %142 = ptrtoint ptr %ctl_dma.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %ctl_dma.i, align 4
  tail call void @usb_free_coherent(ptr noundef %139, i32 noundef 4, ptr noundef %141, i32 noundef %143) #11
  %144 = ptrtoint ptr %udev15 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %udev15, align 4
  %irq_data.i = getelementptr inbounds %struct.cm109_dev, ptr %call7.i.i, i32 0, i32 3
  %146 = ptrtoint ptr %irq_data.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %irq_data.i, align 4
  %irq_dma.i = getelementptr inbounds %struct.cm109_dev, ptr %call7.i.i, i32 0, i32 4
  %148 = ptrtoint ptr %irq_dma.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %irq_dma.i, align 8
  tail call void @usb_free_coherent(ptr noundef %145, i32 noundef 4, ptr noundef %147, i32 noundef %149) #11
  %urb_irq.i = getelementptr inbounds %struct.cm109_dev, ptr %call7.i.i, i32 0, i32 5
  %150 = ptrtoint ptr %urb_irq.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %urb_irq.i, align 4
  tail call void @usb_free_urb(ptr noundef %151) #11
  %urb_ctl.i = getelementptr inbounds %struct.cm109_dev, ptr %call7.i.i, i32 0, i32 9
  %152 = ptrtoint ptr %urb_ctl.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %urb_ctl.i, align 4
  tail call void @usb_free_urb(ptr noundef %153) #11
  tail call void @kfree(ptr noundef %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end116, %if.end6.cleanup_crit_edge, %usb_endpoint_is_int_in.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %err_out ], [ 0, %if.end116 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %usb_endpoint_is_int_in.exit.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cm109_usb_disconnect(ptr nocapture noundef %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @input_unregister_device(ptr noundef %3) #11
  %ctl_req.i = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %ctl_req.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctl_req.i, align 4
  tail call void @kfree(ptr noundef %5) #11
  %udev.i = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev.i, align 4
  %ctl_data.i = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %ctl_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctl_data.i, align 4
  %ctl_dma.i = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %ctl_dma.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctl_dma.i, align 4
  tail call void @usb_free_coherent(ptr noundef %7, i32 noundef 4, ptr noundef %9, i32 noundef %11) #11
  %12 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %udev.i, align 4
  %irq_data.i = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %irq_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_data.i, align 4
  %irq_dma.i = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %irq_dma.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq_dma.i, align 4
  tail call void @usb_free_coherent(ptr noundef %13, i32 noundef 4, ptr noundef %15, i32 noundef %17) #11
  %urb_irq.i = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %urb_irq.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %urb_irq.i, align 4
  tail call void @usb_free_urb(ptr noundef %19) #11
  %urb_ctl.i = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %urb_ctl.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %urb_ctl.i, align 4
  tail call void @usb_free_urb(ptr noundef %21) #11
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm109_usb_suspend(ptr noundef %intf, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %message.coerce.fca.0.extract = extractvalue [1 x i32] %message.coerce, 0
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.34, i32 noundef %message.coerce.fca.0.extract) #15
  %pm_mutex = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %pm_mutex, i32 noundef 0) #11
  tail call fastcc void @cm109_stop_traffic(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %pm_mutex) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm109_usb_resume(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.37) #15
  %pm_mutex = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %pm_mutex, i32 noundef 0) #11
  %open.i = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %open.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %open.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.cm109_restore_state.exit_crit_edge, label %if.then.i

entry.cm109_restore_state.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cm109_restore_state.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @cm109_toggle_buzzer_async(ptr noundef %1) #11
  br label %cm109_restore_state.exit

cm109_restore_state.exit:                         ; preds = %if.then.i, %entry.cm109_restore_state.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %pm_mutex) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm109_usb_pre_reset(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pm_mutex = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %pm_mutex, i32 noundef 0) #11
  %resetting = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %resetting to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %resetting, align 1
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %resetting, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !155
  tail call fastcc void @cm109_stop_traffic(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm109_usb_post_reset(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %resetting = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %resetting to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %resetting, align 1
  %bf.clear = and i8 %bf.load, -65
  store i8 %bf.clear, ptr %resetting, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !156
  %3 = ptrtoint ptr %resetting to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load.i = load i8, ptr %resetting, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.cm109_restore_state.exit_crit_edge, label %if.then.i

entry.cm109_restore_state.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cm109_restore_state.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @cm109_toggle_buzzer_async(ptr noundef %1) #11
  br label %cm109_restore_state.exit

cm109_restore_state.exit:                         ; preds = %if.then.i, %entry.cm109_restore_state.exit_crit_edge
  %pm_mutex = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 14
  tail call void @mutex_unlock(ptr noundef %pm_mutex) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @usb_maxpacket(ptr nocapture noundef readonly %udev, i32 noundef %pipe) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = lshr i32 %pipe, 15
  %and = and i32 %0, 15
  %and24 = and i32 %pipe, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.end43, label %entry.if.end49_crit_edge, !prof !157

entry.if.end49_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

do.end43:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1984, i32 noundef 9, ptr noundef null) #11
  br label %if.end49

if.end49:                                         ; preds = %do.end43, %entry.if.end49_crit_edge
  %arrayidx57 = getelementptr %struct.usb_device, ptr %udev, i32 0, i32 21, i32 %and
  %1 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx57, align 4
  %tobool59.not = icmp eq ptr %2, null
  br i1 %tobool59.not, label %if.end49.cleanup_crit_edge, label %if.end61

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end61:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %wMaxPacketSize.i, align 1
  %5 = and i16 %4, -249
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.end49.cleanup_crit_edge
  %retval.0 = phi i16 [ %6, %if.end61 ], [ 0, %if.end49.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cm109_urb_irq_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm109_urb_irq_callback.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm109_urb_irq_callback, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !158

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %intf = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf, align 4
  %dev4 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  %irq_data = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_data, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv = zext i8 %9 to i32
  %arrayidx7 = getelementptr [4 x i8], ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %11 to i32
  %arrayidx11 = getelementptr [4 x i8], ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %13 to i32
  %arrayidx15 = getelementptr [4 x i8], ptr %7, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %15 to i32
  %keybit = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 18
  %16 = ptrtoint ptr %keybit to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %keybit, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cm109_urb_irq_callback.__UNIQUE_ID_ddebug234, ptr noundef %dev4, ptr noundef nonnull @.str.13, i32 noundef %conv, i32 noundef %conv8, i32 noundef %conv12, i32 noundef %conv16, i32 noundef %17) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %18 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.body22 [
    i32 0, label %if.end34
    i32 -108, label %do.end.cleanup_crit_edge
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body22:                                        ; preds = %do.end
  %call23 = tail call i32 @___ratelimit(ptr noundef nonnull @cm109_urb_irq_callback._rs, ptr noundef nonnull @.str.12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.body22.do.body71_crit_edge, label %do.end28

do.body22.do.body71_crit_edge:                    ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body71

do.end28:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #13
  %intf29 = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %intf29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %intf29, align 4
  %dev30 = getelementptr inbounds %struct.usb_interface, ptr %20, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12, i32 noundef %3) #15
  br label %do.body71

if.end34:                                         ; preds = %do.end
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %irq_data.i = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %irq_data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %irq_data.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 1
  %conv6.i = zext i8 %26 to i32
  %arrayidx2.i = getelementptr %struct.cm109_dev, ptr %1, i32 0, i32 15, i32 256
  %27 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp3.i = icmp eq i16 %28, 0
  br i1 %cmp3.i, label %if.end34.for.inc.i_crit_edge, label %if.end.i

if.end34.for.inc.i_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i16 %28 to i32
  %29 = and i32 %conv6.i, 1
  tail call void @input_event(ptr noundef %22, i32 noundef 1, i32 noundef %conv.i, i32 noundef %29) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %if.end34.for.inc.i_crit_edge
  %arrayidx2.1.i = getelementptr %struct.cm109_dev, ptr %1, i32 0, i32 15, i32 257
  %30 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx2.1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp3.1.i = icmp eq i16 %31, 0
  br i1 %cmp3.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1.i

if.end.1.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.1.i = zext i16 %31 to i32
  %32 = lshr i32 %conv6.i, 1
  %33 = and i32 %32, 1
  tail call void @input_event(ptr noundef %22, i32 noundef 1, i32 noundef %conv.1.i, i32 noundef %33) #11
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx2.2.i = getelementptr %struct.cm109_dev, ptr %1, i32 0, i32 15, i32 259
  %34 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx2.2.i, align 2
  %conv.2.i = zext i16 %35 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %cmp3.2.i = icmp eq i16 %35, 0
  br i1 %cmp3.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.end.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2.i

if.end.2.i:                                       ; preds = %for.inc.1.i
  %36 = lshr i32 %conv6.i, 2
  %37 = and i32 %36, 1
  tail call void @input_event(ptr noundef %22, i32 noundef 1, i32 noundef %conv.2.i, i32 noundef %37) #11
  %and11.2.i = and i32 %conv6.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.2.i)
  %tobool.not.2.i = icmp eq i32 %and11.2.i, 0
  br i1 %tobool.not.2.i, label %if.end.2.i.for.inc.2.i_crit_edge, label %if.then12.2.i

if.end.2.i.for.inc.2.i_crit_edge:                 ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2.i

if.then12.2.i:                                    ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @input_event(ptr noundef %22, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  tail call void @input_event(ptr noundef %22, i32 noundef 1, i32 noundef %conv.2.i, i32 noundef 0) #11
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then12.2.i, %if.end.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %arrayidx2.3.i = getelementptr %struct.cm109_dev, ptr %1, i32 0, i32 15, i32 263
  %38 = ptrtoint ptr %arrayidx2.3.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx2.3.i, align 2
  %conv.3.i = zext i16 %39 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %cmp3.3.i = icmp eq i16 %39, 0
  br i1 %cmp3.3.i, label %for.inc.2.i.cm109_report_special.exit_crit_edge, label %if.end.3.i

for.inc.2.i.cm109_report_special.exit_crit_edge:  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cm109_report_special.exit

if.end.3.i:                                       ; preds = %for.inc.2.i
  %40 = lshr i32 %conv6.i, 3
  %41 = and i32 %40, 1
  tail call void @input_event(ptr noundef %22, i32 noundef 1, i32 noundef %conv.3.i, i32 noundef %41) #11
  %and11.3.i = and i32 %conv6.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.3.i)
  %tobool.not.3.i = icmp eq i32 %and11.3.i, 0
  br i1 %tobool.not.3.i, label %if.end.3.i.cm109_report_special.exit_crit_edge, label %if.then12.3.i

if.end.3.i.cm109_report_special.exit_crit_edge:   ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cm109_report_special.exit

if.then12.3.i:                                    ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @input_event(ptr noundef %22, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  tail call void @input_event(ptr noundef %22, i32 noundef 1, i32 noundef %conv.3.i, i32 noundef 0) #11
  br label %cm109_report_special.exit

cm109_report_special.exit:                        ; preds = %if.then12.3.i, %if.end.3.i.cm109_report_special.exit_crit_edge, %for.inc.2.i.cm109_report_special.exit_crit_edge
  tail call void @input_event(ptr noundef %22, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  %keybit35 = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 18
  %42 = ptrtoint ptr %keybit35 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %keybit35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %43)
  %cmp36 = icmp eq i32 %43, 15
  br i1 %cmp36, label %if.then38, label %if.else

if.then38:                                        ; preds = %cm109_report_special.exit
  %gpi = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 19
  %44 = ptrtoint ptr %gpi to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %gpi, align 4
  %46 = and i8 %45, -16
  %47 = ptrtoint ptr %irq_data.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %irq_data.i, align 4
  %arrayidx42 = getelementptr [4 x i8], ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx42, align 1
  %51 = and i8 %50, -16
  call void @__sanitizer_cov_trace_cmp1(i8 %46, i8 %51)
  %cmp45 = icmp eq i8 %46, %51
  br i1 %cmp45, label %if.then38.do.body71_crit_edge, label %if.end48

if.then38.do.body71_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body71

if.end48:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %gpi to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %gpi, align 4
  %53 = ptrtoint ptr %keybit35 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %keybit35, align 4
  br label %do.body71

if.else:                                          ; preds = %cm109_report_special.exit
  %54 = ptrtoint ptr %irq_data.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %irq_data.i, align 4
  %arrayidx59 = getelementptr [4 x i8], ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx59, align 1
  %idxprom = zext i8 %57 to i32
  %arrayidx60 = getelementptr %struct.cm109_dev, ptr %1, i32 0, i32 15, i32 %idxprom
  %58 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx60, align 2
  %conv61 = zext i16 %59 to i32
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %key_code.i = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 17
  %62 = ptrtoint ptr %key_code.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %key_code.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %63)
  %cmp.i = icmp sgt i32 %63, -1
  br i1 %cmp.i, label %if.then.i, label %if.else.report_key.exit_crit_edge

if.else.report_key.exit_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %report_key.exit

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @input_event(ptr noundef %61, i32 noundef 1, i32 noundef %63, i32 noundef 0) #11
  br label %report_key.exit

report_key.exit:                                  ; preds = %if.then.i, %if.else.report_key.exit_crit_edge
  %64 = ptrtoint ptr %key_code.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv61, ptr %key_code.i, align 4
  tail call void @input_event(ptr noundef %61, i32 noundef 1, i32 noundef %conv61, i32 noundef 1) #11
  tail call void @input_event(ptr noundef %61, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  %65 = ptrtoint ptr %keybit35 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %keybit35, align 4
  %shl = shl i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %shl)
  %cmp64 = icmp sgt i32 %shl, 8
  %spec.store.select = select i1 %cmp64, i32 15, i32 %shl
  %67 = ptrtoint ptr %keybit35 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %spec.store.select, ptr %keybit35, align 4
  br label %do.body71

do.body71:                                        ; preds = %report_key.exit, %if.end48, %if.then38.do.body71_crit_edge, %do.end28, %do.body22.do.body71_crit_edge
  %ctl_submit_lock = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 11
  %call76 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctl_submit_lock) #11
  %irq_urb_pending = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 10
  %68 = ptrtoint ptr %irq_urb_pending to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load = load i8, ptr %irq_urb_pending, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %irq_urb_pending, align 4
  %shutdown = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 13
  %69 = ptrtoint ptr %shutdown to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load81 = load i8, ptr %shutdown, align 1
  %70 = and i8 %bf.load81, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool83.not = icmp eq i8 %70, 0
  br i1 %tobool83.not, label %if.then92, label %do.body71.if.end132_crit_edge, !prof !159

do.body71.if.end132_crit_edge:                    ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end132

if.then92:                                        ; preds = %do.body71
  %buzzer_state = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 12
  %71 = ptrtoint ptr %buzzer_state to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %buzzer_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool93.not = icmp eq i8 %72, 0
  %ctl_data100 = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 6
  %73 = ptrtoint ptr %ctl_data100 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ctl_data100, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %74, align 1
  %77 = and i8 %76, -33
  %masksel = select i1 %tobool93.not, i8 0, i8 32
  %.sink = or i8 %77, %masksel
  store i8 %.sink, ptr %74, align 1
  %keybit107 = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 18
  %78 = ptrtoint ptr %keybit107 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %keybit107, align 4
  %conv108 = trunc i32 %79 to i8
  %ctl_data109 = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 6
  %80 = ptrtoint ptr %ctl_data109 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ctl_data109, align 4
  %arrayidx111 = getelementptr [4 x i8], ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv108, ptr %arrayidx111, align 1
  %83 = load i32, ptr %keybit107, align 4
  %conv113 = trunc i32 %83 to i8
  %84 = load ptr, ptr %ctl_data109, align 4
  %arrayidx116 = getelementptr [4 x i8], ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv113, ptr %arrayidx116, align 1
  %86 = ptrtoint ptr %irq_urb_pending to i32
  call void @__asan_load1_noabort(i32 %86)
  %bf.load117 = load i8, ptr %irq_urb_pending, align 4
  %bf.clear121 = and i8 %bf.load117, -97
  %bf.set122 = or i8 %bf.clear121, 64
  store i8 %bf.set122, ptr %irq_urb_pending, align 4
  %urb_ctl = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 9
  %87 = ptrtoint ptr %urb_ctl to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %urb_ctl, align 4
  %call123 = tail call i32 @usb_submit_urb(ptr noundef %88, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.then92.if.end132_crit_edge, label %do.end128

if.then92.if.end132_crit_edge:                    ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end132

do.end128:                                        ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #13
  %intf129 = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 2
  %89 = ptrtoint ptr %intf129 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %intf129, align 4
  %dev130 = getelementptr inbounds %struct.usb_interface, ptr %90, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev130, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.12, i32 noundef %call123) #15
  br label %if.end132

if.end132:                                        ; preds = %do.end128, %if.then92.if.end132_crit_edge, %do.body71.if.end132_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctl_submit_lock, i32 noundef %call76) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end132, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cm109_urb_ctl_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm109_urb_ctl_callback.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm109_urb_ctl_callback, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !158

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %intf = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf, align 4
  %dev4 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  %ctl_data = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %ctl_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctl_data, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv = zext i8 %9 to i32
  %arrayidx7 = getelementptr [4 x i8], ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %11 to i32
  %arrayidx11 = getelementptr [4 x i8], ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %13 to i32
  %arrayidx15 = getelementptr [4 x i8], ptr %7, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cm109_urb_ctl_callback.__UNIQUE_ID_ddebug235, ptr noundef %dev4, ptr noundef nonnull @.str.20, i32 noundef %conv, i32 noundef %conv8, i32 noundef %conv12, i32 noundef %conv16) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool17.not = icmp eq i32 %3, 0
  br i1 %tobool17.not, label %do.end.do.body36_crit_edge, label %if.then18

do.end.do.body36_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body36

if.then18:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -108, i32 %3)
  %cmp = icmp eq i32 %3, -108
  br i1 %cmp, label %if.then18.cleanup_crit_edge, label %do.body22

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body22:                                        ; preds = %if.then18
  %call23 = tail call i32 @___ratelimit(ptr noundef nonnull @cm109_urb_ctl_callback._rs, ptr noundef nonnull @.str.19) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.body22.do.body36_crit_edge, label %do.end28

do.body22.do.body36_crit_edge:                    ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body36

do.end28:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #13
  %intf29 = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %intf29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %intf29, align 4
  %dev30 = getelementptr inbounds %struct.usb_interface, ptr %17, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.19, i32 noundef %3) #15
  br label %do.body36

do.body36:                                        ; preds = %do.end28, %do.body22.do.body36_crit_edge, %do.end.do.body36_crit_edge
  %ctl_submit_lock = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 11
  %call41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctl_submit_lock) #11
  %ctl_urb_pending = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %ctl_urb_pending to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %ctl_urb_pending, align 4
  %bf.clear = and i8 %bf.load, -65
  store i8 %bf.clear, ptr %ctl_urb_pending, align 4
  %shutdown = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 13
  %19 = ptrtoint ptr %shutdown to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load46 = load i8, ptr %shutdown, align 1
  %20 = and i8 %bf.load46, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool48.not = icmp eq i8 %20, 0
  br i1 %tobool48.not, label %if.then57, label %do.body36.if.end101_crit_edge, !prof !159

do.body36.if.end101_crit_edge:                    ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101

if.then57:                                        ; preds = %do.body36
  %21 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool62.not = icmp ne i8 %21, 0
  %tobool17.not.not = xor i1 %tobool17.not, true
  %brmerge = select i1 %tobool62.not, i1 true, i1 %tobool17.not.not
  br i1 %brmerge, label %if.then64, label %if.else

if.then64:                                        ; preds = %if.then57
  %bf.clear71 = and i8 %bf.load, -97
  %bf.set72 = or i8 %bf.clear71, 64
  %22 = ptrtoint ptr %ctl_urb_pending to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %bf.set72, ptr %ctl_urb_pending, align 4
  %buzzer_state.i = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 12
  %23 = ptrtoint ptr %buzzer_state.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %buzzer_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  %ctl_data2.i = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 6
  %25 = ptrtoint ptr %ctl_data2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctl_data2.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 1
  %29 = and i8 %28, -33
  %masksel.i = select i1 %tobool.not.i, i8 0, i8 32
  %.sink.i = or i8 %29, %masksel.i
  store i8 %.sink.i, ptr %26, align 1
  %urb_ctl.i = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 9
  %30 = ptrtoint ptr %urb_ctl.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %urb_ctl.i, align 4
  %call.i = tail call i32 @usb_submit_urb(ptr noundef %31, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool7.not.i, label %if.then64.if.end101_crit_edge, label %do.end.i

if.then64.if.end101_crit_edge:                    ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101

do.end.i:                                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #13
  %intf.i = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 2
  %32 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %intf.i, align 4
  %dev9.i = getelementptr inbounds %struct.usb_interface, ptr %33, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.24, i32 noundef %call.i) #15
  br label %if.end101

if.else:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool76.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool76.not, label %if.then85, label %if.else.if.end101_crit_edge, !prof !159

if.else.if.end101_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101

if.then85:                                        ; preds = %if.else
  %bf.clear88 = and i8 %bf.load, 63
  %bf.set89 = or i8 %bf.clear88, -128
  %34 = ptrtoint ptr %ctl_urb_pending to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %bf.set89, ptr %ctl_urb_pending, align 4
  %urb_irq = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 5
  %35 = ptrtoint ptr %urb_irq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %urb_irq, align 4
  %call90 = tail call i32 @usb_submit_urb(ptr noundef %36, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.then85.if.end101_crit_edge, label %do.end95

if.then85.if.end101_crit_edge:                    ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101

do.end95:                                         ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #13
  %intf96 = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %intf96 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %intf96, align 4
  %dev97 = getelementptr inbounds %struct.usb_interface, ptr %38, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev97, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.19, i32 noundef %call90) #15
  br label %if.end101

if.end101:                                        ; preds = %do.end95, %if.then85.if.end101_crit_edge, %if.else.if.end101_crit_edge, %do.end.i, %if.then64.if.end101_crit_edge, %do.body36.if.end101_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctl_submit_lock, i32 noundef %call41) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end101, %if.then18.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm109_input_open(ptr noundef %idev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %idev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %intf = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %call1 = tail call i32 @usb_autopm_get_interface(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev2 = getelementptr inbounds %struct.input_dev, ptr %idev, i32 0, i32 40
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef %call1) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %pm_mutex = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %pm_mutex, i32 noundef 0) #11
  %buzzer_state = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %buzzer_state to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %buzzer_state, align 4
  %key_code = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 17
  %5 = ptrtoint ptr %key_code to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %key_code, align 4
  %keybit = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %keybit to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 15, ptr %keybit, align 4
  %ctl_data = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %ctl_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctl_data, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %8, align 1
  %10 = load i32, ptr %keybit, align 4
  %conv = trunc i32 %10 to i8
  %11 = load ptr, ptr %ctl_data, align 4
  %arrayidx6 = getelementptr [4 x i8], ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %arrayidx6, align 1
  %13 = load i32, ptr %keybit, align 4
  %conv8 = trunc i32 %13 to i8
  %14 = load ptr, ptr %ctl_data, align 4
  %arrayidx11 = getelementptr [4 x i8], ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv8, ptr %arrayidx11, align 1
  %16 = load ptr, ptr %ctl_data, align 4
  %arrayidx14 = getelementptr [4 x i8], ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx14, align 1
  %ctl_urb_pending = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %ctl_urb_pending to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %ctl_urb_pending, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %ctl_urb_pending, align 4
  %urb_ctl = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %urb_ctl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %urb_ctl, align 4
  %call15 = tail call i32 @usb_submit_urb(ptr noundef %20, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %ctl_urb_pending to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load18 = load i8, ptr %ctl_urb_pending, align 4
  %bf.clear19 = and i8 %bf.load18, -65
  store i8 %bf.clear19, ptr %ctl_urb_pending, align 4
  %22 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %intf, align 4
  %dev25 = getelementptr inbounds %struct.usb_interface, ptr %23, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.27, i32 noundef %call15) #15
  tail call void @mutex_unlock(ptr noundef %pm_mutex) #11
  %24 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %intf, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %25) #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %open = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 13
  %26 = ptrtoint ptr %open to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load26 = load i8, ptr %open, align 1
  %bf.set28 = or i8 %bf.load26, -128
  store i8 %bf.set28, ptr %open, align 1
  tail call void @mutex_unlock(ptr noundef %pm_mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then16, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ 0, %if.else ], [ %call15, %if.then16 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cm109_input_close(ptr nocapture noundef readonly %idev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %idev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pm_mutex = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %pm_mutex, i32 noundef 0) #11
  tail call fastcc void @cm109_stop_traffic(ptr noundef %1)
  %open = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %open to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %open, align 1
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %open, align 1
  tail call void @mutex_unlock(ptr noundef %pm_mutex) #11
  %intf = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %intf, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm109_input_ev(ptr nocapture noundef readonly %idev, i32 noundef %type, i32 noundef %code, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %idev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm109_input_ev.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm109_input_ev, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !158

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %intf = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %dev4 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cm109_input_ev.__UNIQUE_ID_ddebug236, ptr noundef %dev4, ptr noundef nonnull @.str.33, i32 noundef %type, i32 noundef %code, i32 noundef %value) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %type)
  %cmp.not = icmp eq i32 %type, 18
  %code.off = add i32 %code, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %code.off)
  %switch = icmp ult i32 %code.off, 2
  %or.cond = and i1 %cmp.not, %switch
  br i1 %or.cond, label %sw.bb, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool7 = icmp ne i32 %value, 0
  %conv = zext i1 %tobool7 to i8
  %buzzer_state = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %buzzer_state to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %buzzer_state, align 4
  %resetting = getelementptr inbounds %struct.cm109_dev, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %resetting to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %resetting, align 1
  %6 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool12.not = icmp eq i8 %6, 0
  br i1 %tobool12.not, label %if.then13, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then13:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @cm109_toggle_buzzer_async(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %sw.bb.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.cleanup_crit_edge ], [ 0, %if.then13 ], [ 0, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cm109_stop_traffic(ptr nocapture noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %shutdown = getelementptr inbounds %struct.cm109_dev, ptr %dev, i32 0, i32 13
  %0 = ptrtoint ptr %shutdown to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %shutdown, align 1
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %shutdown, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !160
  %urb_ctl = getelementptr inbounds %struct.cm109_dev, ptr %dev, i32 0, i32 9
  %1 = ptrtoint ptr %urb_ctl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %urb_ctl, align 4
  tail call void @usb_kill_urb(ptr noundef %2) #11
  %urb_irq = getelementptr inbounds %struct.cm109_dev, ptr %dev, i32 0, i32 5
  %3 = ptrtoint ptr %urb_irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %urb_irq, align 4
  tail call void @usb_kill_urb(ptr noundef %4) #11
  %ctl_data2.i = getelementptr inbounds %struct.cm109_dev, ptr %dev, i32 0, i32 6
  %5 = ptrtoint ptr %ctl_data2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctl_data2.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 1
  %9 = and i8 %8, -33
  store i8 %9, ptr %6, align 1
  %udev.i = getelementptr inbounds %struct.cm109_dev, ptr %dev, i32 0, i32 1
  %10 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udev.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i.i = shl i32 %13, 8
  %or8.i = or i32 %shl.i.i, -2147483648
  %ctl_req.i = getelementptr inbounds %struct.cm109_dev, ptr %dev, i32 0, i32 8
  %14 = ptrtoint ptr %ctl_req.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctl_req.i, align 4
  %bRequest.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %bRequest.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bRequest.i, align 1
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %15, align 1
  %wValue.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %15, i32 0, i32 2
  %20 = ptrtoint ptr %wValue.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %wValue.i, align 1
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #11
  %wIndex.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %15, i32 0, i32 3
  %23 = ptrtoint ptr %wIndex.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %wIndex.i, align 1
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #11
  %26 = ptrtoint ptr %ctl_data2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctl_data2.i, align 4
  %call13.i = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or8.i, i8 noundef zeroext %17, i8 noundef zeroext %19, i16 noundef zeroext %22, i16 noundef zeroext %25, ptr noundef %27, i16 noundef zeroext 4, i32 noundef 5000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call13.i)
  %cmp.i = icmp sgt i32 %call13.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call13.i)
  %cmp15.not.i = icmp eq i32 %call13.i, -4
  %or.cond.i = or i1 %cmp.i, %cmp15.not.i
  br i1 %or.cond.i, label %entry.cm109_toggle_buzzer_sync.exit_crit_edge, label %do.end.i

entry.cm109_toggle_buzzer_sync.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cm109_toggle_buzzer_sync.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %intf.i = getelementptr inbounds %struct.cm109_dev, ptr %dev, i32 0, i32 2
  %28 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %intf.i, align 4
  %dev18.i = getelementptr inbounds %struct.usb_interface, ptr %29, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef %call13.i) #15
  br label %cm109_toggle_buzzer_sync.exit

cm109_toggle_buzzer_sync.exit:                    ; preds = %do.end.i, %entry.cm109_toggle_buzzer_sync.exit_crit_edge
  %30 = ptrtoint ptr %shutdown to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load4 = load i8, ptr %shutdown, align 1
  %bf.clear5 = and i8 %bf.load4, -33
  store i8 %bf.clear5, ptr %shutdown, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !161
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cm109_toggle_buzzer_async(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ctl_submit_lock = getelementptr inbounds %struct.cm109_dev, ptr %dev, i32 0, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctl_submit_lock) #11
  %ctl_urb_pending = getelementptr inbounds %struct.cm109_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %ctl_urb_pending to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %ctl_urb_pending, align 4
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set = or i8 %bf.load, 32
  %2 = ptrtoint ptr %ctl_urb_pending to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %bf.set, ptr %ctl_urb_pending, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %bf.set10 = or i8 %bf.load, 64
  %3 = ptrtoint ptr %ctl_urb_pending to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %bf.set10, ptr %ctl_urb_pending, align 4
  %buzzer_state.i = getelementptr inbounds %struct.cm109_dev, ptr %dev, i32 0, i32 12
  %4 = ptrtoint ptr %buzzer_state.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %buzzer_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %ctl_data2.i = getelementptr inbounds %struct.cm109_dev, ptr %dev, i32 0, i32 6
  %6 = ptrtoint ptr %ctl_data2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctl_data2.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %10 = and i8 %9, -33
  %masksel.i = select i1 %tobool.not.i, i8 0, i8 32
  %.sink.i = or i8 %10, %masksel.i
  store i8 %.sink.i, ptr %7, align 1
  %urb_ctl.i = getelementptr inbounds %struct.cm109_dev, ptr %dev, i32 0, i32 9
  %11 = ptrtoint ptr %urb_ctl.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %urb_ctl.i, align 4
  %call.i = tail call i32 @usb_submit_urb(ptr noundef %12, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool7.not.i, label %if.else.if.end_crit_edge, label %do.end.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %intf.i = getelementptr inbounds %struct.cm109_dev, ptr %dev, i32 0, i32 2
  %13 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %intf.i, align 4
  %dev9.i = getelementptr inbounds %struct.usb_interface, ptr %14, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.24, i32 noundef %call.i) #15
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.else.if.end_crit_edge, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctl_submit_lock, i32 noundef %call2) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @keymap_kip1000(i32 noundef %scancode) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %scancode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %scancode, label %sw.default [
    i32 130, label %entry.return_crit_edge
    i32 20, label %sw.bb1
    i32 18, label %sw.bb2
    i32 17, label %sw.bb3
    i32 36, label %sw.bb4
    i32 34, label %sw.bb5
    i32 33, label %sw.bb6
    i32 68, label %sw.bb7
    i32 66, label %sw.bb8
    i32 65, label %sw.bb9
    i32 129, label %sw.bb10
    i32 132, label %sw.bb11
    i32 136, label %sw.bb12
    i32 72, label %sw.bb13
    i32 40, label %sw.bb14
    i32 24, label %sw.bb15
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %scancode)
  %cmp.i = icmp sgt i32 %scancode, 255
  br i1 %cmp.i, label %if.then.i, label %sw.default.return_crit_edge

sw.default.return_crit_edge:                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then.i:                                        ; preds = %sw.default
  %switch.tableidx = add i32 %scancode, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %1 = icmp ult i32 %switch.tableidx, 8
  br i1 %1, label %switch.lookup, label %if.then.i.return_crit_edge

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

switch.lookup:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [8 x i16], ptr @switch.table.keymap_kip1000, i32 0, i32 %switch.tableidx
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %2)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %return

return:                                           ; preds = %switch.lookup, %if.then.i.return_crit_edge, %sw.default.return_crit_edge, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i16 [ 106, %sw.bb15 ], [ 105, %sw.bb14 ], [ 1, %sw.bb13 ], [ 28, %sw.bb12 ], [ 522, %sw.bb11 ], [ 523, %sw.bb10 ], [ 521, %sw.bb9 ], [ 520, %sw.bb8 ], [ 519, %sw.bb7 ], [ 518, %sw.bb6 ], [ 517, %sw.bb5 ], [ 516, %sw.bb4 ], [ 515, %sw.bb3 ], [ 514, %sw.bb2 ], [ 513, %sw.bb1 ], [ 512, %entry.return_crit_edge ], [ %switch.load, %switch.lookup ], [ 0, %if.then.i.return_crit_edge ], [ 0, %sw.default.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cm109_select_keymap() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @phone, align 4
  %call = tail call i32 @strcasecmp(ptr noundef %0, ptr noundef nonnull @.str)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  store ptr @keymap_kip1000, ptr @keymap, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #15
  br label %return

if.else:                                          ; preds = %entry
  %call2 = tail call i32 @strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.else9

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  store ptr @keymap_gtalk, ptr @keymap, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #15
  br label %return

if.else9:                                         ; preds = %if.else
  %call10 = tail call i32 @strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.else17

if.then12:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #13
  store ptr @keymap_usbph01, ptr @keymap, align 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #15
  br label %return

if.else17:                                        ; preds = %if.else9
  %call18 = tail call i32 @strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.52)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then20, label %do.end27

if.then20:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #13
  store ptr @keymap_atcom, ptr @keymap, align 4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #15
  br label %return

do.end27:                                         ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #13
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %0) #15
  br label %return

return:                                           ; preds = %do.end27, %if.then20, %if.then12, %if.then4, %if.then
  %retval.0 = phi i32 [ -22, %do.end27 ], [ 0, %if.then4 ], [ 0, %if.then20 ], [ 0, %if.then12 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @keymap_gtalk(i32 noundef %scancode) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %scancode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %scancode, label %sw.default [
    i32 17, label %entry.return_crit_edge
    i32 33, label %sw.bb1
    i32 65, label %sw.bb2
    i32 129, label %sw.bb3
    i32 18, label %sw.bb4
    i32 34, label %sw.bb5
    i32 66, label %sw.bb6
    i32 130, label %sw.bb7
    i32 20, label %sw.bb8
    i32 36, label %sw.bb9
    i32 68, label %sw.bb10
    i32 132, label %sw.bb11
    i32 24, label %sw.bb12
    i32 40, label %sw.bb13
    i32 72, label %sw.bb14
    i32 136, label %sw.bb15
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %scancode)
  %cmp.i = icmp sgt i32 %scancode, 255
  br i1 %cmp.i, label %if.then.i, label %sw.default.return_crit_edge

sw.default.return_crit_edge:                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then.i:                                        ; preds = %sw.default
  %switch.tableidx = add i32 %scancode, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %1 = icmp ult i32 %switch.tableidx, 8
  br i1 %1, label %switch.lookup, label %if.then.i.return_crit_edge

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

switch.lookup:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [8 x i16], ptr @switch.table.keymap_gtalk, i32 0, i32 %switch.tableidx
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %2)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %return

return:                                           ; preds = %switch.lookup, %if.then.i.return_crit_edge, %sw.default.return_crit_edge, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i16 [ 108, %sw.bb15 ], [ 103, %sw.bb14 ], [ 1, %sw.bb13 ], [ 28, %sw.bb12 ], [ 522, %sw.bb11 ], [ 523, %sw.bb10 ], [ 521, %sw.bb9 ], [ 520, %sw.bb8 ], [ 519, %sw.bb7 ], [ 518, %sw.bb6 ], [ 517, %sw.bb5 ], [ 516, %sw.bb4 ], [ 515, %sw.bb3 ], [ 514, %sw.bb2 ], [ 513, %sw.bb1 ], [ 512, %entry.return_crit_edge ], [ %switch.load, %switch.lookup ], [ 0, %if.then.i.return_crit_edge ], [ 0, %sw.default.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @keymap_usbph01(i32 noundef %scancode) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %scancode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %scancode, label %sw.default [
    i32 17, label %entry.return_crit_edge
    i32 33, label %sw.bb1
    i32 65, label %sw.bb2
    i32 129, label %sw.bb3
    i32 18, label %sw.bb4
    i32 34, label %sw.bb5
    i32 66, label %sw.bb6
    i32 130, label %sw.bb7
    i32 20, label %sw.bb8
    i32 36, label %sw.bb9
    i32 68, label %sw.bb10
    i32 132, label %sw.bb11
    i32 24, label %sw.bb12
    i32 40, label %sw.bb13
    i32 72, label %sw.bb14
    i32 136, label %sw.bb15
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %scancode)
  %cmp.i = icmp sgt i32 %scancode, 255
  br i1 %cmp.i, label %if.then.i, label %sw.default.return_crit_edge

sw.default.return_crit_edge:                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then.i:                                        ; preds = %sw.default
  %switch.tableidx = add i32 %scancode, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %1 = icmp ult i32 %switch.tableidx, 8
  br i1 %1, label %switch.lookup, label %if.then.i.return_crit_edge

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

switch.lookup:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [8 x i16], ptr @switch.table.keymap_usbph01, i32 0, i32 %switch.tableidx
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %2)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %return

return:                                           ; preds = %switch.lookup, %if.then.i.return_crit_edge, %sw.default.return_crit_edge, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i16 [ 106, %sw.bb15 ], [ 105, %sw.bb14 ], [ 1, %sw.bb13 ], [ 28, %sw.bb12 ], [ 522, %sw.bb11 ], [ 523, %sw.bb10 ], [ 521, %sw.bb9 ], [ 520, %sw.bb8 ], [ 519, %sw.bb7 ], [ 518, %sw.bb6 ], [ 517, %sw.bb5 ], [ 516, %sw.bb4 ], [ 515, %sw.bb3 ], [ 514, %sw.bb2 ], [ 513, %sw.bb1 ], [ 512, %entry.return_crit_edge ], [ %switch.load, %switch.lookup ], [ 0, %if.then.i.return_crit_edge ], [ 0, %sw.default.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @keymap_atcom(i32 noundef %scancode) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %scancode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %scancode, label %sw.default [
    i32 130, label %entry.return_crit_edge
    i32 17, label %sw.bb1
    i32 18, label %sw.bb2
    i32 20, label %sw.bb3
    i32 33, label %sw.bb4
    i32 34, label %sw.bb5
    i32 36, label %sw.bb6
    i32 65, label %sw.bb7
    i32 66, label %sw.bb8
    i32 68, label %sw.bb9
    i32 132, label %sw.bb10
    i32 129, label %sw.bb11
    i32 24, label %sw.bb12
    i32 40, label %sw.bb13
    i32 72, label %sw.bb14
    i32 136, label %sw.bb15
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %scancode)
  %cmp.i = icmp sgt i32 %scancode, 255
  br i1 %cmp.i, label %if.then.i, label %sw.default.return_crit_edge

sw.default.return_crit_edge:                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then.i:                                        ; preds = %sw.default
  %switch.tableidx = add i32 %scancode, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %1 = icmp ult i32 %switch.tableidx, 8
  br i1 %1, label %switch.lookup, label %if.then.i.return_crit_edge

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

switch.lookup:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [8 x i16], ptr @switch.table.keymap_atcom, i32 0, i32 %switch.tableidx
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %2)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %return

return:                                           ; preds = %switch.lookup, %if.then.i.return_crit_edge, %sw.default.return_crit_edge, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i16 [ 106, %sw.bb15 ], [ 105, %sw.bb14 ], [ 1, %sw.bb13 ], [ 28, %sw.bb12 ], [ 522, %sw.bb11 ], [ 523, %sw.bb10 ], [ 521, %sw.bb9 ], [ 520, %sw.bb8 ], [ 519, %sw.bb7 ], [ 518, %sw.bb6 ], [ 517, %sw.bb5 ], [ 516, %sw.bb4 ], [ 515, %sw.bb3 ], [ 514, %sw.bb2 ], [ 513, %sw.bb1 ], [ 512, %entry.return_crit_edge ], [ %switch.load, %switch.lookup ], [ 0, %if.then.i.return_crit_edge ], [ 0, %sw.default.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !17, !19, !21, !23, !25, !27, !28, !30, !31, !33, !34, !35, !36, !37, !38, !39, !41, !43, !45, !46, !47, !49, !50, !51, !52, !53, !55, !56, !57, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !79, !80, !81, !82, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !98, !99, !100, !101, !102, !104, !105, !106, !107, !109, !111, !113, !115, !116, !117, !118, !120, !121, !122, !123, !125, !127, !128, !129, !131, !133, !134, !135, !137, !139, !140, !141, !143, !144}
!llvm.module.flags = !{!145, !146, !147, !148, !149, !150, !151, !152}
!llvm.ident = !{!153}

!0 = !{ptr @__param_phone, !1, !"__param_phone", i1 false, i1 false}
!1 = !{!"../drivers/input/misc/cm109.c", i32 41, i32 1}
!2 = !{ptr @__UNIQUE_ID_phonetype232, !1, !"__UNIQUE_ID_phonetype232", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_phone233, !4, !"__UNIQUE_ID_phone233", i1 false, i1 false}
!4 = !{!"../drivers/input/misc/cm109.c", i32 42, i32 1}
!5 = !{ptr @__initcall__kmod_cm109__237_942_cm109_init6, !6, !"__initcall__kmod_cm109__237_942_cm109_init6", i1 false, i1 false}
!6 = !{!"../drivers/input/misc/cm109.c", i32 942, i32 1}
!7 = !{ptr @__exitcall_cm109_exit, !8, !"__exitcall_cm109_exit", i1 false, i1 false}
!8 = !{!"../drivers/input/misc/cm109.c", i32 943, i32 1}
!9 = !{ptr @__UNIQUE_ID_author238, !10, !"__UNIQUE_ID_author238", i1 false, i1 false}
!10 = !{!"../drivers/input/misc/cm109.c", i32 947, i32 1}
!11 = !{ptr @__UNIQUE_ID_description239, !12, !"__UNIQUE_ID_description239", i1 false, i1 false}
!12 = !{!"../drivers/input/misc/cm109.c", i32 948, i32 1}
!13 = !{ptr @__UNIQUE_ID_file240, !14, !"__UNIQUE_ID_file240", i1 false, i1 false}
!14 = !{!"../drivers/input/misc/cm109.c", i32 949, i32 1}
!15 = !{ptr @__UNIQUE_ID_license241, !14, !"__UNIQUE_ID_license241", i1 false, i1 false}
!16 = !{ptr @__param_str_phone, !1, !"__param_str_phone", i1 false, i1 false}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/input/misc/cm109.c", i32 40, i32 22}
!19 = !{ptr @phone, !20, !"phone", i1 false, i1 false}
!20 = !{!"../drivers/input/misc/cm109.c", i32 40, i32 14}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/input/misc/cm109.c", i32 879, i32 11}
!23 = !{ptr @cm109_driver, !24, !"cm109_driver", i1 false, i1 false}
!24 = !{!"../drivers/input/misc/cm109.c", i32 878, i32 26}
!25 = !{ptr @cm109_usb_probe.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/input/misc/cm109.c", i32 712, i32 2}
!27 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @cm109_usb_probe.__key.3, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/input/misc/cm109.c", i32 713, i32 2}
!30 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/misc/cm109.c", i32 750, i32 3}
!33 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @cm109_usb_probe._entry, !32, !"_entry", i1 false, i1 false}
!38 = !{ptr @cm109_usb_probe._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/misc/cm109.c", i32 778, i32 21}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/usb.h", i32 1981, i32 3}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/misc/cm109.c", i32 368, i32 2}
!45 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @cm109_urb_irq_callback.__UNIQUE_ID_ddebug234, !44, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/misc/cm109.c", i32 378, i32 3}
!49 = !{ptr @cm109_urb_irq_callback._rs, !48, !"_rs", i1 false, i1 false}
!50 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @cm109_urb_irq_callback._entry, !48, !"_entry", i1 false, i1 false}
!52 = !{ptr @cm109_urb_irq_callback._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/input/misc/cm109.c", i32 424, i32 4}
!55 = !{ptr @cm109_urb_irq_callback._entry.16, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @cm109_urb_irq_callback._entry_ptr.18, !54, !"_entry_ptr", i1 false, i1 false}
!57 = distinct !{null, !58, !"autorelease", i1 false, i1 false}
!58 = !{!"../drivers/input/misc/cm109.c", i32 318, i32 18}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/input/misc/cm109.c", i32 439, i32 2}
!61 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @cm109_urb_ctl_callback.__UNIQUE_ID_ddebug235, !60, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!63 = !{ptr @cm109_urb_ctl_callback._rs, !64, !"_rs", i1 false, i1 false}
!64 = !{!"../drivers/input/misc/cm109.c", i32 448, i32 3}
!65 = !{ptr @cm109_urb_ctl_callback._entry, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @cm109_urb_ctl_callback._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/input/misc/cm109.c", i32 467, i32 5}
!69 = !{ptr @cm109_urb_ctl_callback._entry.21, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @cm109_urb_ctl_callback._entry_ptr.23, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/input/misc/cm109.c", i32 353, i32 3}
!73 = !{ptr @cm109_submit_buzz_toggle._entry, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @cm109_submit_buzz_toggle._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../include/linux/usb.h", i32 912, i32 31}
!77 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/input/misc/cm109.c", i32 554, i32 3}
!79 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @cm109_input_open._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @cm109_input_open._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @cm109_input_open._entry.28, !83, !"_entry", i1 false, i1 false}
!83 = !{!"../drivers/input/misc/cm109.c", i32 575, i32 3}
!84 = !{ptr @cm109_input_open._entry_ptr.29, !83, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.30, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/input/misc/cm109.c", i32 511, i32 3}
!87 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @cm109_toggle_buzzer_sync._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @cm109_toggle_buzzer_sync._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.32, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/input/misc/cm109.c", i32 613, i32 2}
!92 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @cm109_input_ev.__UNIQUE_ID_ddebug236, !91, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!94 = !{ptr @keymap, !95, !"keymap", i1 false, i1 false}
!95 = !{!"../drivers/input/misc/cm109.c", i32 288, i32 25}
!96 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/input/misc/cm109.c", i32 824, i32 2}
!98 = !{ptr @.str.35, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @cm109_usb_suspend._entry, !97, !"_entry", i1 false, i1 false}
!101 = !{ptr @cm109_usb_suspend._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/input/misc/cm109.c", i32 837, i32 2}
!104 = !{ptr @.str.38, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @cm109_usb_resume._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @cm109_usb_resume._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @cm109_usb_table, !108, !"cm109_usb_table", i1 false, i1 false}
!108 = !{!"../drivers/input/misc/cm109.c", i32 651, i32 35}
!109 = !{ptr @.str.39, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/input/misc/cm109.c", i32 642, i32 10}
!111 = !{ptr @info_cm109, !112, !"info_cm109", i1 false, i1 false}
!112 = !{!"../drivers/input/misc/cm109.c", i32 641, i32 33}
!113 = !{ptr @.str.40, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/input/misc/cm109.c", i32 931, i32 2}
!115 = !{ptr @.str.41, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @cm109_init._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @cm109_init._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.42, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/input/misc/cm109.c", i32 896, i32 3}
!120 = !{ptr @.str.43, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @cm109_select_keymap._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @cm109_select_keymap._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.44, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/input/misc/cm109.c", i32 898, i32 32}
!125 = !{ptr @.str.46, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/input/misc/cm109.c", i32 900, i32 3}
!127 = !{ptr @cm109_select_keymap._entry.45, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @cm109_select_keymap._entry_ptr.47, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.48, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/input/misc/cm109.c", i32 902, i32 32}
!131 = !{ptr @.str.50, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/input/misc/cm109.c", i32 904, i32 3}
!133 = !{ptr @cm109_select_keymap._entry.49, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @cm109_select_keymap._entry_ptr.51, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.52, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/input/misc/cm109.c", i32 906, i32 32}
!137 = !{ptr @.str.54, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/input/misc/cm109.c", i32 908, i32 3}
!139 = !{ptr @cm109_select_keymap._entry.53, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @cm109_select_keymap._entry_ptr.55, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.57, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/input/misc/cm109.c", i32 911, i32 3}
!143 = !{ptr @cm109_select_keymap._entry.56, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @cm109_select_keymap._entry_ptr.58, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{i32 1, !"wchar_size", i32 2}
!146 = !{i32 1, !"min_enum_size", i32 4}
!147 = !{i32 8, !"branch-target-enforcement", i32 0}
!148 = !{i32 8, !"sign-return-address", i32 0}
!149 = !{i32 8, !"sign-return-address-all", i32 0}
!150 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!151 = !{i32 7, !"uwtable", i32 1}
!152 = !{i32 7, !"frame-pointer", i32 2}
!153 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!154 = !{ptr @keymap_atcom, ptr @keymap_gtalk, ptr @keymap_kip1000, ptr @keymap_usbph01}
!155 = !{i64 2154034608}
!156 = !{i64 2154034764}
!157 = !{!"branch_weights", i32 1, i32 2000}
!158 = !{i64 2148714463, i64 2148714468, i64 2148714481, i64 2148714525, i64 2148714559, i64 2148714580}
!159 = !{!"branch_weights", i32 2000, i32 1}
!160 = !{i64 2154019773}
!161 = !{i64 2154019929}
