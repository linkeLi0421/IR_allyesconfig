; ModuleID = '/llk/IR_all_yes/drivers/media/rc/xbox_remote.c_pt.bc'
source_filename = "../drivers/media/rc/xbox_remote.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.xbox_remote = type { ptr, ptr, ptr, ptr, [8 x i8], [80 x i8], [80 x i8] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }

@__initcall__kmod_xbox_remote__239_304_xbox_remote_driver_init6 = internal global ptr @xbox_remote_driver_init, section ".initcall6.init", align 4
@xbox_remote_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @xbox_remote_probe, ptr @xbox_remote_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xbox_remote_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_xbox_remote_driver_exit = internal global ptr @xbox_remote_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author240 = internal constant [63 x i8] c"xbox_remote.author=Benjamin Valentin <benpicco@googlemail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [52 x i8] c"xbox_remote.description=Xbox DVD USB Remote Control\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [46 x i8] c"xbox_remote.file=drivers/media/rc/xbox_remote\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [24 x i8] c"xbox_remote.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xbox_remote\00", [20 x i8] zeroinitializer }, align 32
@xbox_remote_table = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1035, i16 25889, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1118, i16 644, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@xbox_remote_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: Unexpected desc.bNumEndpoints: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xbox_remote_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/media/rc/xbox_remote.c\00", [33 x i8] zeroinitializer }, align 32
@xbox_remote_probe._entry_ptr = internal global ptr @xbox_remote_probe._entry, section ".printk_index", align 4
@xbox_remote_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: Unexpected endpoint_in\0A\00", [34 x i8] zeroinitializer }, align 32
@xbox_remote_probe._entry_ptr.6 = internal global ptr @xbox_remote_probe._entry.4, section ".printk_index", align 4
@xbox_remote_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: endpoint_in message size==0?\0A\00", [60 x i8] zeroinitializer }, align 32
@xbox_remote_probe._entry_ptr.9 = internal global ptr @xbox_remote_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"/input0\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s%s%s\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Xbox DVD USB Remote Control(%04x,%04x)\00", [57 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rc-xbox-dvd\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@xbox_remote_rc_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 72, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: usb_submit_urb failed!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xbox_remote_rc_open\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xbox_remote_rc_open._entry_ptr = internal global ptr @xbox_remote_rc_open._entry, section ".printk_index", align 4
@xbox_remote_irq_in.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.3, ptr @.str.23, i8 0, i8 32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xbox_remote_irq_in\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: urb error status, unlink?\0A\00", [33 x i8] zeroinitializer }, align 32
@xbox_remote_irq_in.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.3, ptr @.str.24, i8 0, i8 34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Nonzero urb status %d\0A\00", [37 x i8] zeroinitializer }, align 32
@xbox_remote_irq_in._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.22, ptr @.str.3, i32 143, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: usb_submit_urb()=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@xbox_remote_irq_in._entry_ptr = internal global ptr @xbox_remote_irq_in._entry, section ".printk_index", align 4
@xbox_remote_input_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 106, ptr @.str.28, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Weird data, len=%d: %*ph\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"xbox_remote_input_report\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@xbox_remote_input_report._entry_ptr = internal global ptr @xbox_remote_input_report._entry, section ".printk_index", align 4
@xbox_remote_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 286, ptr @.str.28, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s - null device?\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"xbox_remote_disconnect\00", [41 x i8] zeroinitializer }, align 32
@xbox_remote_disconnect._entry_ptr = internal global ptr @xbox_remote_disconnect._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.31 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@___asan_gen_.32 = private unnamed_addr constant [19 x i8] c"xbox_remote_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 297, i32 26 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 304, i32 1 }
@___asan_gen_.38 = private unnamed_addr constant [18 x i8] c"xbox_remote_table\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 38, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 202, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 210, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 214, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 234, i32 32 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 236, i32 63 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 237, i32 26 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 238, i32 42 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 243, i32 5 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 247, i32 21 }
@___asan_gen_.84 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 912, i32 31 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 71, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 129, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 134, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 141, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 105, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.135 = private constant [34 x i8] c"../drivers/media/rc/xbox_remote.c\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 286, i32 3 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_xbox_remote_driver_exit, ptr @__initcall__kmod_xbox_remote__239_304_xbox_remote_driver_init6, ptr @xbox_remote_disconnect._entry, ptr @xbox_remote_disconnect._entry_ptr, ptr @xbox_remote_driver_exit, ptr @xbox_remote_input_report._entry, ptr @xbox_remote_input_report._entry_ptr, ptr @xbox_remote_irq_in._entry, ptr @xbox_remote_irq_in._entry_ptr, ptr @xbox_remote_probe._entry, ptr @xbox_remote_probe._entry.4, ptr @xbox_remote_probe._entry.7, ptr @xbox_remote_probe._entry_ptr, ptr @xbox_remote_probe._entry_ptr.6, ptr @xbox_remote_probe._entry_ptr.9, ptr @xbox_remote_rc_open._entry, ptr @xbox_remote_rc_open._entry_ptr, ptr @xbox_remote_driver, ptr @.str, ptr @xbox_remote_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xbox_remote_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xbox_remote_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xbox_remote_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xbox_remote_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xbox_remote_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xbox_remote_rc_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xbox_remote_irq_in._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xbox_remote_input_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xbox_remote_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xbox_remote_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @xbox_remote_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xbox_remote_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_deregister(ptr noundef nonnull @xbox_remote_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xbox_remote_probe(ptr noundef %interface, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 1
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bNumEndpoints, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %do.end [
    i8 0, label %entry.cleanup_crit_edge
    i8 1, label %if.end12
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %5 to i32
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %conv) #11
  br label %cleanup

if.end12:                                         ; preds = %entry
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %endpoint, align 4
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bmAttributes.i.i, align 1
  %11 = and i8 %10, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %11)
  %cmp.i.not.i = icmp eq i8 %11, 3
  br i1 %cmp.i.not.i, label %usb_endpoint_is_int_in.exit, label %if.end12.do.end18_crit_edge

if.end12.do.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

usb_endpoint_is_int_in.exit:                      ; preds = %if.end12
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %8, i32 0, i32 2
  %12 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %tobool.not = icmp sgt i8 %13, -1
  br i1 %tobool.not, label %usb_endpoint_is_int_in.exit.do.end18_crit_edge, label %if.end21

usb_endpoint_is_int_in.exit.do.end18_crit_edge:   ; preds = %usb_endpoint_is_int_in.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

do.end18:                                         ; preds = %usb_endpoint_is_int_in.exit.do.end18_crit_edge, %if.end12.do.end18_crit_edge
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end21:                                         ; preds = %usb_endpoint_is_int_in.exit
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %8, i32 0, i32 4
  %14 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %wMaxPacketSize, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp23 = icmp eq i16 %15, 0
  br i1 %cmp23, label %do.end28, label %if.end31

do.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end31:                                         ; preds = %if.end21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 184) #12
  %call33 = tail call ptr @rc_allocate_device(i32 noundef 0) #8
  %tobool34.not = icmp eq ptr %call7.i.i, null
  %tobool35.not = icmp eq ptr %call33, null
  %or.cond = select i1 %tobool34.not, i1 true, i1 %tobool35.not
  br i1 %or.cond, label %if.end31.exit_free_dev_rdev_crit_edge, label %if.end37

if.end31.exit_free_dev_rdev_crit_edge:            ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_free_dev_rdev

if.end37:                                         ; preds = %if.end31
  %call38 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %irq_urb = getelementptr inbounds %struct.xbox_remote, ptr %call7.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %irq_urb to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call38, ptr %irq_urb, align 4
  %tobool40.not = icmp eq ptr %call38, null
  br i1 %tobool40.not, label %if.end37.exit_free_buffers_crit_edge, label %if.end42

if.end37.exit_free_buffers_crit_edge:             ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_free_buffers

if.end42:                                         ; preds = %if.end37
  %udev43 = getelementptr inbounds %struct.xbox_remote, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %udev43 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr.i, ptr %udev43, align 4
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call33, ptr %call7.i.i, align 8
  %interface44 = getelementptr inbounds %struct.xbox_remote, ptr %call7.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %interface44 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %interface, ptr %interface44, align 8
  %rc_phys = getelementptr inbounds %struct.xbox_remote, ptr %call7.i.i, i32 0, i32 6
  %bus.i = getelementptr i8, ptr %1, i32 -64
  %21 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr i8, ptr %1, i32 -124
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %rc_phys, i32 noundef 80, ptr noundef nonnull @.str.16, ptr noundef %24, ptr noundef %devpath.i) #8
  %call48 = tail call i32 @strlcat(ptr noundef %rc_phys, ptr noundef nonnull @.str.10, i32 noundef 80) #8
  %rc_name = getelementptr inbounds %struct.xbox_remote, ptr %call7.i.i, i32 0, i32 5
  %manufacturer = getelementptr i8, ptr %1, i32 1108
  %25 = ptrtoint ptr %manufacturer to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %manufacturer, align 4
  %tobool50.not = icmp eq ptr %26, null
  %..str.12 = select i1 %tobool50.not, ptr @.str.12, ptr %26
  br i1 %tobool50.not, label %if.end42.land.end_crit_edge, label %land.rhs

if.end42.land.end_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %product = getelementptr i8, ptr %1, i32 1104
  %27 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %product, align 8
  %tobool53.not = icmp eq ptr %28, null
  %phi.sel = select i1 %tobool53.not, ptr @.str.12, ptr @.str.13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end42.land.end_crit_edge
  %29 = phi ptr [ @.str.12, %if.end42.land.end_crit_edge ], [ %phi.sel, %land.rhs ]
  %product55 = getelementptr i8, ptr %1, i32 1104
  %30 = ptrtoint ptr %product55 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %product55, align 8
  %tobool56.not = icmp eq ptr %31, null
  %..str.1292 = select i1 %tobool56.not, ptr @.str.12, ptr %31
  %call61 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %rc_name, i32 noundef 80, ptr noundef nonnull @.str.11, ptr noundef %..str.12, ptr noundef nonnull %29, ptr noundef %..str.1292)
  %32 = ptrtoint ptr %rc_name to i32
  call void @__asan_load1_noabort(i32 %32)
  %char0 = load i8, ptr %rc_name, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool65.not = icmp eq i8 %char0, 0
  br i1 %tobool65.not, label %if.then66, label %land.end.if.end75_crit_edge

land.end.if.end75_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then66:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %udev43 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %udev43, align 4
  %idVendor = getelementptr inbounds %struct.usb_device, ptr %34, i32 0, i32 16, i32 7
  %35 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %idVendor, align 8
  %37 = tail call i16 @llvm.bswap.i16(i16 %36)
  %conv70 = zext i16 %37 to i32
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %34, i32 0, i32 16, i32 8
  %38 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %idProduct, align 2
  %40 = tail call i16 @llvm.bswap.i16(i16 %39)
  %conv73 = zext i16 %40 to i32
  %call74 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %rc_name, i32 noundef 80, ptr noundef nonnull @.str.14, i32 noundef %conv70, i32 noundef %conv73)
  br label %if.end75

if.end75:                                         ; preds = %if.then66, %land.end.if.end75_crit_edge
  %map_name = getelementptr inbounds %struct.rc_dev, ptr %call33, i32 0, i32 7
  %41 = ptrtoint ptr %map_name to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str.15, ptr %map_name, align 4
  %42 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call7.i.i, align 8
  %priv.i = getelementptr inbounds %struct.rc_dev, ptr %43, i32 0, i32 24
  %44 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call7.i.i, ptr %priv.i, align 4
  %allowed_protocols.i = getelementptr inbounds %struct.rc_dev, ptr %43, i32 0, i32 16
  %45 = ptrtoint ptr %allowed_protocols.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 134217728, ptr %allowed_protocols.i, align 8
  %driver_name.i = getelementptr inbounds %struct.rc_dev, ptr %43, i32 0, i32 6
  %46 = ptrtoint ptr %driver_name.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str, ptr %driver_name.i, align 8
  %open.i = getelementptr inbounds %struct.rc_dev, ptr %43, i32 0, i32 48
  %47 = ptrtoint ptr %open.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @xbox_remote_rc_open, ptr %open.i, align 8
  %close.i = getelementptr inbounds %struct.rc_dev, ptr %43, i32 0, i32 49
  %48 = ptrtoint ptr %close.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @xbox_remote_rc_close, ptr %close.i, align 4
  %device_name.i = getelementptr inbounds %struct.rc_dev, ptr %43, i32 0, i32 3
  %49 = ptrtoint ptr %device_name.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %rc_name, ptr %device_name.i, align 8
  %input_phys.i = getelementptr inbounds %struct.rc_dev, ptr %43, i32 0, i32 4
  %50 = ptrtoint ptr %input_phys.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %rc_phys, ptr %input_phys.i, align 4
  %timeout.i = getelementptr inbounds %struct.rc_dev, ptr %43, i32 0, i32 34
  %51 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 10000, ptr %timeout.i, align 4
  %52 = ptrtoint ptr %udev43 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %udev43, align 4
  %input_id.i = getelementptr inbounds %struct.rc_dev, ptr %43, i32 0, i32 5
  %54 = ptrtoint ptr %input_id.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 3, ptr %input_id.i, align 2
  %idVendor.i.i = getelementptr inbounds %struct.usb_device, ptr %53, i32 0, i32 16, i32 7
  %55 = ptrtoint ptr %idVendor.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %idVendor.i.i, align 8
  %57 = tail call i16 @llvm.bswap.i16(i16 %56) #8
  %vendor.i.i = getelementptr inbounds %struct.rc_dev, ptr %43, i32 0, i32 5, i32 1
  %58 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %vendor.i.i, align 2
  %idProduct.i.i = getelementptr inbounds %struct.usb_device, ptr %53, i32 0, i32 16, i32 8
  %59 = ptrtoint ptr %idProduct.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %idProduct.i.i, align 2
  %61 = tail call i16 @llvm.bswap.i16(i16 %60) #8
  %product.i.i = getelementptr inbounds %struct.rc_dev, ptr %43, i32 0, i32 5, i32 2
  %62 = ptrtoint ptr %product.i.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %product.i.i, align 2
  %bcdDevice.i.i = getelementptr inbounds %struct.usb_device, ptr %53, i32 0, i32 16, i32 9
  %63 = ptrtoint ptr %bcdDevice.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %bcdDevice.i.i, align 4
  %65 = tail call i16 @llvm.bswap.i16(i16 %64) #8
  %version.i.i = getelementptr inbounds %struct.rc_dev, ptr %43, i32 0, i32 5, i32 3
  %66 = ptrtoint ptr %version.i.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %version.i.i, align 2
  %67 = ptrtoint ptr %interface44 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %interface44, align 8
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %68, i32 0, i32 7
  %parent.i130 = getelementptr inbounds %struct.device, ptr %43, i32 0, i32 1
  %69 = ptrtoint ptr %parent.i130 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %dev.i, ptr %parent.i130, align 8
  %70 = ptrtoint ptr %udev43 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %udev43, align 4
  %72 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %bEndpointAddress.i.i, align 1
  %conv.i = zext i8 %73 to i32
  %74 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %71, align 8
  %shl.i.i = shl i32 %75, 8
  %shl1.i.i = shl nuw nsw i32 %conv.i, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or2.i = or i32 %or.i.i, 1073741952
  %76 = lshr i32 %or.i.i, 15
  %and.i.i = and i32 %76, 15
  %arrayidx57.i.i = getelementptr %struct.usb_device, ptr %71, i32 0, i32 21, i32 %and.i.i
  %77 = ptrtoint ptr %arrayidx57.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx57.i.i, align 4
  %tobool59.not.i.i = icmp eq ptr %78, null
  br i1 %tobool59.not.i.i, label %if.end75.usb_maxpacket.exit.thread.i_crit_edge, label %usb_maxpacket.exit.i

if.end75.usb_maxpacket.exit.thread.i_crit_edge:   ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %usb_maxpacket.exit.thread.i

usb_maxpacket.exit.i:                             ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  %wMaxPacketSize.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %wMaxPacketSize.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %80 = load i16, ptr %wMaxPacketSize.i.i.i, align 1
  %81 = and i16 %80, -249
  %82 = tail call i16 @llvm.bswap.i16(i16 %81) #8
  %83 = tail call i16 @llvm.umin.i16(i16 %82, i16 8) #8
  %spec.select.i = zext i16 %83 to i32
  br label %usb_maxpacket.exit.thread.i

usb_maxpacket.exit.thread.i:                      ; preds = %usb_maxpacket.exit.i, %if.end75.usb_maxpacket.exit.thread.i_crit_edge
  %84 = phi i32 [ 0, %if.end75.usb_maxpacket.exit.thread.i_crit_edge ], [ %spec.select.i, %usb_maxpacket.exit.i ]
  %85 = ptrtoint ptr %irq_urb to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %irq_urb, align 4
  %inbuf.i = getelementptr inbounds %struct.xbox_remote, ptr %call7.i.i, i32 0, i32 4
  %bInterval.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %8, i32 0, i32 5
  %87 = ptrtoint ptr %bInterval.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %bInterval.i, align 1
  %conv6.i = zext i8 %88 to i32
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %86, i32 0, i32 8
  %89 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %71, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %86, i32 0, i32 10
  %90 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %or2.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %86, i32 0, i32 14
  %91 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %inbuf.i, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %86, i32 0, i32 19
  %92 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %84, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %86, i32 0, i32 28
  %93 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @xbox_remote_irq_in, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %86, i32 0, i32 27
  %94 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call7.i.i, ptr %context4.i.i, align 4
  %speed.i.i = getelementptr inbounds %struct.usb_device, ptr %71, i32 0, i32 4
  %95 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %speed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %96)
  %cmp.i.i = icmp eq i32 %96, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %96)
  %cmp6.i.i = icmp ugt i32 %96, 4
  %or.cond.i.i = or i1 %cmp.i.i, %cmp6.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %usb_maxpacket.exit.thread.i.xbox_remote_initialize.exit_crit_edge

usb_maxpacket.exit.thread.i.xbox_remote_initialize.exit_crit_edge: ; preds = %usb_maxpacket.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xbox_remote_initialize.exit

if.then.i.i:                                      ; preds = %usb_maxpacket.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  %97 = tail call i32 @llvm.smax.i32(i32 %conv6.i, i32 1) #8
  %98 = tail call i32 @llvm.umin.i32(i32 %97, i32 16) #8
  %sub.i.i = add nsw i32 %98, -1
  %shl.i1.i = shl nuw nsw i32 1, %sub.i.i
  br label %xbox_remote_initialize.exit

xbox_remote_initialize.exit:                      ; preds = %if.then.i.i, %usb_maxpacket.exit.thread.i.xbox_remote_initialize.exit_crit_edge
  %interval.sink.i.i = phi i32 [ %shl.i1.i, %if.then.i.i ], [ %conv6.i, %usb_maxpacket.exit.thread.i.xbox_remote_initialize.exit_crit_edge ]
  %99 = getelementptr inbounds %struct.urb, ptr %86, i32 0, i32 25
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %interval.sink.i.i, ptr %99, align 4
  %start_frame.i.i = getelementptr inbounds %struct.urb, ptr %86, i32 0, i32 23
  %101 = ptrtoint ptr %start_frame.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 -1, ptr %start_frame.i.i, align 4
  %102 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %call7.i.i, align 8
  %call81 = tail call i32 @rc_register_device(ptr noundef %103) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %exit_kill_urbs

if.end84:                                         ; preds = %xbox_remote_initialize.exit
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %104 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

exit_kill_urbs:                                   ; preds = %xbox_remote_initialize.exit
  call void @__sanitizer_cov_trace_pc() #10
  %105 = ptrtoint ptr %irq_urb to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %irq_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %106) #8
  br label %exit_free_buffers

exit_free_buffers:                                ; preds = %exit_kill_urbs, %if.end37.exit_free_buffers_crit_edge
  %err.1 = phi i32 [ %call81, %exit_kill_urbs ], [ -12, %if.end37.exit_free_buffers_crit_edge ]
  %107 = ptrtoint ptr %irq_urb to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %irq_urb, align 4
  tail call void @usb_free_urb(ptr noundef %108) #8
  br label %exit_free_dev_rdev

exit_free_dev_rdev:                               ; preds = %exit_free_buffers, %if.end31.exit_free_dev_rdev_crit_edge
  %err.2 = phi i32 [ %err.1, %exit_free_buffers ], [ -12, %if.end31.exit_free_dev_rdev_crit_edge ]
  tail call void @rc_free_device(ptr noundef %call33) #8
  tail call void @kfree(ptr noundef %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %exit_free_dev_rdev, %if.end84, %do.end28, %do.end18, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %do.end28 ], [ %err.2, %exit_free_dev_rdev ], [ 0, %if.end84 ], [ -19, %do.end18 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xbox_remote_disconnect(ptr noundef %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %irq_urb = getelementptr inbounds %struct.xbox_remote, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %irq_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @rc_unregister_device(ptr noundef %5) #8
  %6 = ptrtoint ptr %irq_urb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_urb, align 4
  tail call void @usb_free_urb(ptr noundef %7) #8
  tail call void @kfree(ptr noundef nonnull %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rc_allocate_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rc_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xbox_remote_rc_open(ptr nocapture noundef readonly %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %rdev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %udev = getelementptr inbounds %struct.xbox_remote, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %irq_urb = getelementptr inbounds %struct.xbox_remote, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %irq_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_urb, align 4
  %dev = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %dev, align 4
  %7 = load ptr, ptr %irq_urb, align 4
  %call = tail call i32 @usb_submit_urb(ptr noundef %7, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %interface = getelementptr inbounds %struct.xbox_remote, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %interface, align 4
  %dev2 = getelementptr inbounds %struct.usb_interface, ptr %9, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xbox_remote_rc_close(ptr nocapture noundef readonly %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %rdev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %irq_urb = getelementptr inbounds %struct.xbox_remote, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %irq_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xbox_remote_irq_in(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %3, label %do.body4 [
    i32 0, label %sw.bb
    i32 -104, label %entry.do.body_crit_edge
    i32 -2, label %entry.do.body_crit_edge45
    i32 -108, label %entry.do.body_crit_edge46
  ]

entry.do.body_crit_edge46:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

entry.do.body_crit_edge45:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

sw.bb:                                            ; preds = %entry
  %inbuf.i = getelementptr inbounds %struct.xbox_remote, ptr %1, i32 0, i32 4
  %actual_length.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %5 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %actual_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %6)
  %cmp.not.i = icmp eq i32 %6, 6
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %sw.bb.do.end.i_crit_edge

sw.bb.do.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %sw.bb
  %arrayidx.i = getelementptr %struct.xbox_remote, ptr %1, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %8)
  %cmp2.not.i = icmp eq i8 %8, 6
  br i1 %cmp2.not.i, label %if.end.i, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %sw.bb.do.end.i_crit_edge
  %dev.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %dev4.i = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev4.i, ptr noundef nonnull @.str.26, i32 noundef %6, i32 noundef %6, ptr noundef %inbuf.i) #11
  br label %sw.epilog

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr %struct.xbox_remote, ptr %1, i32 0, i32 4, i32 2
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i, align 2
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #8
  %conv7.i = zext i16 %15 to i64
  tail call void @rc_keydown(ptr noundef %12, i32 noundef 27, i64 noundef %conv7.i, i8 noundef zeroext 0) #8
  br label %sw.epilog

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge45, %entry.do.body_crit_edge46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xbox_remote_irq_in.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xbox_remote_irq_in, %if.then)) #8
          to label %cleanup [label %if.then], !srcloc !83

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %interface = getelementptr inbounds %struct.xbox_remote, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %interface, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %17, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xbox_remote_irq_in.__UNIQUE_ID_ddebug237, ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22) #8
  br label %cleanup

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xbox_remote_irq_in.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xbox_remote_irq_in, %if.then16)) #8
          to label %sw.epilog [label %if.then16], !srcloc !83

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  %interface17 = getelementptr inbounds %struct.xbox_remote, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %interface17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %interface17, align 4
  %dev18 = getelementptr inbounds %struct.usb_interface, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xbox_remote_irq_in.__UNIQUE_ID_ddebug238, ptr noundef %dev18, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef %21) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then16, %do.body4, %if.end.i, %do.end.i
  %call23 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %sw.epilog.cleanup_crit_edge, label %do.end28

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end28:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %interface29 = getelementptr inbounds %struct.xbox_remote, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %interface29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %interface29, align 4
  %dev30 = getelementptr inbounds %struct.usb_interface, ptr %23, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.22, i32 noundef %call23) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %sw.epilog.cleanup_crit_edge, %if.then, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keydown(ptr noundef, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !44, !45, !46, !47, !48, !50, !52, !53, !54, !56, !57, !59, !60, !61, !63, !64, !65, !66, !67, !69, !70, !71, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__initcall__kmod_xbox_remote__239_304_xbox_remote_driver_init6, !1, !"__initcall__kmod_xbox_remote__239_304_xbox_remote_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/xbox_remote.c", i32 304, i32 1}
!2 = !{ptr @__exitcall_xbox_remote_driver_exit, !1, !"__exitcall_xbox_remote_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author240, !4, !"__UNIQUE_ID_author240", i1 false, i1 false}
!4 = !{!"../drivers/media/rc/xbox_remote.c", i32 306, i32 1}
!5 = !{ptr @__UNIQUE_ID_description241, !6, !"__UNIQUE_ID_description241", i1 false, i1 false}
!6 = !{!"../drivers/media/rc/xbox_remote.c", i32 307, i32 1}
!7 = !{ptr @__UNIQUE_ID_file242, !8, !"__UNIQUE_ID_file242", i1 false, i1 false}
!8 = !{!"../drivers/media/rc/xbox_remote.c", i32 308, i32 1}
!9 = !{ptr @__UNIQUE_ID_license243, !8, !"__UNIQUE_ID_license243", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @xbox_remote_driver, !12, !"xbox_remote_driver", i1 false, i1 false}
!12 = !{!"../drivers/media/rc/xbox_remote.c", i32 297, i32 26}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/rc/xbox_remote.c", i32 202, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @xbox_remote_probe._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @xbox_remote_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/rc/xbox_remote.c", i32 210, i32 3}
!21 = !{ptr @xbox_remote_probe._entry.4, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @xbox_remote_probe._entry_ptr.6, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/rc/xbox_remote.c", i32 214, i32 3}
!25 = !{ptr @xbox_remote_probe._entry.7, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @xbox_remote_probe._entry_ptr.9, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/rc/xbox_remote.c", i32 234, i32 32}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/rc/xbox_remote.c", i32 236, i32 63}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/rc/xbox_remote.c", i32 237, i32 26}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/rc/xbox_remote.c", i32 238, i32 42}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/rc/xbox_remote.c", i32 243, i32 5}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/rc/xbox_remote.c", i32 247, i32 21}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../include/linux/usb.h", i32 912, i32 31}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/rc/xbox_remote.c", i32 71, i32 3}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @xbox_remote_rc_open._entry, !42, !"_entry", i1 false, i1 false}
!47 = !{ptr @xbox_remote_rc_open._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!48 = distinct !{null, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/linux/usb.h", i32 1981, i32 3}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/rc/xbox_remote.c", i32 129, i32 3}
!52 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @xbox_remote_irq_in.__UNIQUE_ID_ddebug237, !51, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/rc/xbox_remote.c", i32 134, i32 3}
!56 = !{ptr @xbox_remote_irq_in.__UNIQUE_ID_ddebug238, !55, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/rc/xbox_remote.c", i32 141, i32 3}
!59 = !{ptr @xbox_remote_irq_in._entry, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @xbox_remote_irq_in._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/rc/xbox_remote.c", i32 105, i32 3}
!63 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @xbox_remote_input_report._entry, !62, !"_entry", i1 false, i1 false}
!66 = !{ptr @xbox_remote_input_report._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/rc/xbox_remote.c", i32 286, i32 3}
!69 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @xbox_remote_disconnect._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @xbox_remote_disconnect._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @xbox_remote_table, !73, !"xbox_remote_table", i1 false, i1 false}
!73 = !{!"../drivers/media/rc/xbox_remote.c", i32 38, i32 35}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{i64 2148207374, i64 2148207379, i64 2148207392, i64 2148207436, i64 2148207470, i64 2148207491}
