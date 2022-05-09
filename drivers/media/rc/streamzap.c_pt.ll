; ModuleID = '/llk/IR_all_yes/drivers/media/rc/streamzap.c_pt.bc'
source_filename = "../drivers/media/rc/streamzap.c"
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
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.streamzap_ir = type { ptr, ptr, ptr, ptr, i32, i32, i32, [64 x i8] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.ir_raw_event = type { %union.anon.73, i8, i8 }
%union.anon.73 = type { i32 }

@__initcall__kmod_streamzap__240_417_streamzap_driver_init6 = internal global ptr @streamzap_driver_init, section ".initcall6.init", align 4
@streamzap_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @streamzap_probe, ptr @streamzap_disconnect, ptr null, ptr @streamzap_suspend, ptr @streamzap_resume, ptr null, ptr null, ptr null, ptr @streamzap_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_streamzap_driver_exit = internal global ptr @streamzap_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author241 = internal constant [51 x i8] c"streamzap.author=Jarod Wilson <jarod@wilsonet.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [54 x i8] c"streamzap.description=Streamzap Remote Control driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [42 x i8] c"streamzap.file=drivers/media/rc/streamzap\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [22 x i8] c"streamzap.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"streamzap\00", [22 x i8] zeroinitializer }, align 32
@streamzap_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 3740, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@streamzap_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 289, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Unexpected desc.bNumEndpoints (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"streamzap_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/media/rc/streamzap.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@streamzap_probe._entry_ptr = internal global ptr @streamzap_probe._entry, section ".printk_index", align 4
@streamzap_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 297, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: endpoint doesn't match input device 02%02x\0A\00", [48 x i8] zeroinitializer }, align 32
@streamzap_probe._entry_ptr.8 = internal global ptr @streamzap_probe._entry.6, section ".printk_index", align 4
@streamzap_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 304, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: endpoint attributes don't match xfer 02%02x\0A\00", [47 x i8] zeroinitializer }, align 32
@streamzap_probe._entry_ptr.11 = internal global ptr @streamzap_probe._entry.9, section ".printk_index", align 4
@streamzap_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 314, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: endpoint Max Packet Size is 0!?!\0A\00", [58 x i8] zeroinitializer }, align 32
@streamzap_probe._entry_ptr.14 = internal global ptr @streamzap_probe._entry.12, section ".printk_index", align 4
@streamzap_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 354, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"urb submit failed\0A\00", [45 x i8] zeroinitializer }, align 32
@streamzap_probe._entry_ptr.17 = internal global ptr @streamzap_probe._entry.15, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"/input0\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Streamzap PC Remote Infrared Receiver\00", [58 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rc-streamzap\00", [19 x i8] zeroinitializer }, align 32
@streamzap_init_rc_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 251, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"remote input device register failed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"streamzap_init_rc_dev\00", [42 x i8] zeroinitializer }, align 32
@streamzap_init_rc_dev._entry_ptr = internal global ptr @streamzap_init_rc_dev._entry, section ".printk_index", align 4
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@streamzap_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 167, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"urb terminated, status: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"streamzap_callback\00", [45 x i8] zeroinitializer }, align 32
@streamzap_callback._entry_ptr = internal global ptr @streamzap_callback._entry, section ".printk_index", align 4
@streamzap_callback.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.3, ptr @.str.27, i8 0, i8 43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: received urb, len %d\0A\00", [38 x i8] zeroinitializer }, align 32
@streamzap_callback.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.3, ptr @.str.28, i8 0, i8 44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sz->buf_in[%d]: %x\0A\00", [44 x i8] zeroinitializer }, align 32
@sz_push.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 0, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sz_push\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Storing %s with duration %u us\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pulse\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"space\00", [26 x i8] zeroinitializer }, align 32
@streamzap_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 410, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Error submitting urb\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"streamzap_resume\00", [47 x i8] zeroinitializer }, align 32
@streamzap_resume._entry_ptr = internal global ptr @streamzap_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"streamzap_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 91, i32 26 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 417, i32 1 }
@___asan_gen_.42 = private unnamed_addr constant [16 x i8] c"streamzap_table\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 35, i32 35 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 288, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 296, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 303, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 313, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 354, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 237, i32 20 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 239, i32 22 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 246, i32 19 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 251, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 912, i32 31 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 167, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 173, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 175, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 102, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.142 = private constant [32 x i8] c"../drivers/media/rc/streamzap.c\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 410, i32 3 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_streamzap_driver_exit, ptr @__initcall__kmod_streamzap__240_417_streamzap_driver_init6, ptr @streamzap_callback._entry, ptr @streamzap_callback._entry_ptr, ptr @streamzap_driver_exit, ptr @streamzap_init_rc_dev._entry, ptr @streamzap_init_rc_dev._entry_ptr, ptr @streamzap_probe._entry, ptr @streamzap_probe._entry.12, ptr @streamzap_probe._entry.15, ptr @streamzap_probe._entry.6, ptr @streamzap_probe._entry.9, ptr @streamzap_probe._entry_ptr, ptr @streamzap_probe._entry_ptr.11, ptr @streamzap_probe._entry_ptr.14, ptr @streamzap_probe._entry_ptr.17, ptr @streamzap_probe._entry_ptr.8, ptr @streamzap_resume._entry, ptr @streamzap_resume._entry_ptr, ptr @streamzap_driver, ptr @.str, ptr @streamzap_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @streamzap_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @streamzap_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @streamzap_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @streamzap_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @streamzap_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @streamzap_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @streamzap_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @streamzap_init_rc_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @streamzap_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @streamzap_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @streamzap_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @streamzap_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @streamzap_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_deregister(ptr noundef nonnull @streamzap_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @streamzap_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 92) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %3 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp.not = icmp eq i8 %6, 1
  br i1 %cmp.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %6 to i32
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %conv) #13
  br label %free_sz

if.end8:                                          ; preds = %if.end
  %endpoint9 = getelementptr inbounds %struct.usb_host_interface, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %endpoint9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %endpoint9, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bEndpointAddress.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %tobool12.not = icmp sgt i8 %10, -1
  br i1 %tobool12.not, label %do.end16, label %if.end19

do.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %dev17 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %conv18 = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2, i32 noundef %conv18) #13
  br label %free_sz

if.end19:                                         ; preds = %if.end8
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %8, i32 0, i32 3
  %11 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bmAttributes.i, align 1
  %13 = and i8 %12, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp.i.not = icmp eq i8 %13, 3
  br i1 %cmp.i.not, label %if.end28, label %do.end25

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %dev26 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %conv27 = zext i8 %12 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2, i32 noundef %conv27) #13
  br label %free_sz

if.end28:                                         ; preds = %if.end19
  %conv30 = zext i8 %10 to i32
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %15, 8
  %shl1.i = shl nuw nsw i32 %conv30, 15
  %or.i = or i32 %shl.i, %shl1.i
  %or32 = or i32 %or.i, 1073741952
  %16 = lshr i32 %or.i, 15
  %and.i = and i32 %16, 15
  %arrayidx57.i = getelementptr %struct.usb_device, ptr %add.ptr.i, i32 0, i32 21, i32 %and.i
  %17 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx57.i, align 4
  %tobool59.not.i = icmp eq ptr %18, null
  br i1 %tobool59.not.i, label %if.end28.do.end41_crit_edge, label %usb_maxpacket.exit

if.end28.do.end41_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end41

usb_maxpacket.exit:                               ; preds = %if.end28
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %21 = and i16 %20, -249
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #9
  %conv35 = zext i16 %22 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp36 = icmp eq i16 %21, 0
  br i1 %cmp36, label %usb_maxpacket.exit.do.end41_crit_edge, label %if.end43

usb_maxpacket.exit.do.end41_crit_edge:            ; preds = %usb_maxpacket.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end41

do.end41:                                         ; preds = %usb_maxpacket.exit.do.end41_crit_edge, %if.end28.do.end41_crit_edge
  %dev42 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.2) #13
  br label %free_sz

if.end43:                                         ; preds = %usb_maxpacket.exit
  %dma_in = getelementptr inbounds %struct.streamzap_ir, ptr %call7.i.i, i32 0, i32 4
  %call44 = tail call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i, i32 noundef %conv35, i32 noundef 2592, ptr noundef %dma_in) #9
  %buf_in = getelementptr inbounds %struct.streamzap_ir, ptr %call7.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %buf_in to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call44, ptr %buf_in, align 4
  %tobool46.not = icmp eq ptr %call44, null
  br i1 %tobool46.not, label %if.end43.free_sz_crit_edge, label %if.end48

if.end43.free_sz_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_sz

if.end48:                                         ; preds = %if.end43
  %call49 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %urb_in = getelementptr inbounds %struct.streamzap_ir, ptr %call7.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %urb_in to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call49, ptr %urb_in, align 8
  %tobool51.not = icmp eq ptr %call49, null
  br i1 %tobool51.not, label %if.end48.free_buf_in_crit_edge, label %if.end53

if.end48.free_buf_in_crit_edge:                   ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_buf_in

if.end53:                                         ; preds = %if.end48
  %dev54 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %dev55 = getelementptr inbounds %struct.streamzap_ir, ptr %call7.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %dev55 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev54, ptr %dev55, align 4
  %buf_in_len = getelementptr inbounds %struct.streamzap_ir, ptr %call7.i.i, i32 0, i32 5
  %26 = ptrtoint ptr %buf_in_len to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv35, ptr %buf_in_len, align 4
  %call.i = tail call ptr @rc_allocate_device(i32 noundef 1) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end53.rc_dev_fail_crit_edge, label %if.end.i

if.end53.rc_dev_fail_crit_edge:                   ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %rc_dev_fail

if.end.i:                                         ; preds = %if.end53
  %phys.i = getelementptr inbounds %struct.streamzap_ir, ptr %call7.i.i, i32 0, i32 7
  %bus.i.i = getelementptr i8, ptr %1, i32 -64
  %27 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus.i.i, align 8
  %bus_name.i.i = getelementptr inbounds %struct.usb_bus, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %bus_name.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bus_name.i.i, align 4
  %devpath.i.i = getelementptr i8, ptr %1, i32 -124
  %call.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys.i, i32 noundef 64, ptr noundef nonnull @.str.24, ptr noundef %30, ptr noundef %devpath.i.i) #9
  %call5.i = tail call i32 @strlcat(ptr noundef %phys.i, ptr noundef nonnull @.str.19, i32 noundef 64) #9
  %device_name.i = getelementptr inbounds %struct.rc_dev, ptr %call.i, i32 0, i32 3
  %31 = ptrtoint ptr %device_name.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.20, ptr %device_name.i, align 8
  %input_phys.i = getelementptr inbounds %struct.rc_dev, ptr %call.i, i32 0, i32 4
  %32 = ptrtoint ptr %input_phys.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %phys.i, ptr %input_phys.i, align 4
  %input_id.i = getelementptr inbounds %struct.rc_dev, ptr %call.i, i32 0, i32 5
  %33 = ptrtoint ptr %input_id.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 3, ptr %input_id.i, align 2
  %idVendor.i.i = getelementptr i8, ptr %1, i32 936
  %34 = ptrtoint ptr %idVendor.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %idVendor.i.i, align 8
  %36 = tail call i16 @llvm.bswap.i16(i16 %35) #9
  %vendor.i.i = getelementptr inbounds %struct.rc_dev, ptr %call.i, i32 0, i32 5, i32 1
  %37 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %vendor.i.i, align 2
  %idProduct.i.i = getelementptr i8, ptr %1, i32 938
  %38 = ptrtoint ptr %idProduct.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %idProduct.i.i, align 2
  %40 = tail call i16 @llvm.bswap.i16(i16 %39) #9
  %product.i.i = getelementptr inbounds %struct.rc_dev, ptr %call.i, i32 0, i32 5, i32 2
  %41 = ptrtoint ptr %product.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %product.i.i, align 2
  %bcdDevice.i.i = getelementptr i8, ptr %1, i32 940
  %42 = ptrtoint ptr %bcdDevice.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %bcdDevice.i.i, align 4
  %44 = tail call i16 @llvm.bswap.i16(i16 %43) #9
  %version.i.i = getelementptr inbounds %struct.rc_dev, ptr %call.i, i32 0, i32 5, i32 3
  %45 = ptrtoint ptr %version.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %version.i.i, align 2
  %parent.i137 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 1
  %46 = ptrtoint ptr %parent.i137 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %dev54, ptr %parent.i137, align 8
  %priv.i = getelementptr inbounds %struct.rc_dev, ptr %call.i, i32 0, i32 24
  %47 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call7.i.i, ptr %priv.i, align 4
  %allowed_protocols.i = getelementptr inbounds %struct.rc_dev, ptr %call.i, i32 0, i32 16
  %48 = ptrtoint ptr %allowed_protocols.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 130023420, ptr %allowed_protocols.i, align 8
  %driver_name.i = getelementptr inbounds %struct.rc_dev, ptr %call.i, i32 0, i32 6
  %49 = ptrtoint ptr %driver_name.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str, ptr %driver_name.i, align 8
  %map_name.i = getelementptr inbounds %struct.rc_dev, ptr %call.i, i32 0, i32 7
  %50 = ptrtoint ptr %map_name.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.21, ptr %map_name.i, align 4
  %rx_resolution.i = getelementptr inbounds %struct.rc_dev, ptr %call.i, i32 0, i32 37
  %51 = ptrtoint ptr %rx_resolution.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 256, ptr %rx_resolution.i, align 8
  %call9.i = tail call i32 @rc_register_device(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp.i138 = icmp slt i32 %call9.i, 0
  br i1 %cmp.i138, label %do.end.i, label %if.end60

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev54, ptr noundef nonnull @.str.22) #13
  br label %rc_dev_fail

if.end60:                                         ; preds = %if.end.i
  %52 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i, ptr %call7.i.i, align 8
  %decoder_state = getelementptr inbounds %struct.streamzap_ir, ptr %call7.i.i, i32 0, i32 6
  %53 = ptrtoint ptr %decoder_state to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %decoder_state, align 8
  %timeout = getelementptr inbounds %struct.rc_dev, ptr %call.i, i32 0, i32 34
  %54 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 65280, ptr %timeout, align 4
  %55 = ptrtoint ptr %urb_in to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %urb_in, align 8
  %57 = ptrtoint ptr %buf_in to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %buf_in, align 4
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %8, i32 0, i32 5
  %59 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %bInterval, align 1
  %conv64 = zext i8 %60 to i32
  %dev1.i140 = getelementptr inbounds %struct.urb, ptr %56, i32 0, i32 8
  %61 = ptrtoint ptr %dev1.i140 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %add.ptr.i, ptr %dev1.i140, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %56, i32 0, i32 10
  %62 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or32, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %56, i32 0, i32 14
  %63 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %58, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %56, i32 0, i32 19
  %64 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv35, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %56, i32 0, i32 28
  %65 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @streamzap_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %56, i32 0, i32 27
  %66 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call7.i.i, ptr %context4.i, align 4
  %speed.i = getelementptr i8, ptr %1, i32 -100
  %67 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %68)
  %cmp.i141 = icmp eq i32 %68, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %68)
  %cmp6.i = icmp ugt i32 %68, 4
  %or.cond.i = or i1 %cmp.i141, %cmp6.i
  br i1 %or.cond.i, label %if.then.i, label %if.end60.usb_fill_int_urb.exit_crit_edge

if.end60.usb_fill_int_urb.exit_crit_edge:         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %usb_fill_int_urb.exit

if.then.i:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %69 = tail call i32 @llvm.smax.i32(i32 %conv64, i32 1) #9
  %70 = tail call i32 @llvm.umin.i32(i32 %69, i32 16) #9
  %sub.i = add nsw i32 %70, -1
  %shl.i142 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i, %if.end60.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i142, %if.then.i ], [ %conv64, %if.end60.usb_fill_int_urb.exit_crit_edge ]
  %71 = getelementptr inbounds %struct.urb, ptr %56, i32 0, i32 25
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %interval.sink.i, ptr %71, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %56, i32 0, i32 23
  %73 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 -1, ptr %start_frame.i, align 4
  %74 = ptrtoint ptr %dma_in to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %dma_in, align 8
  %76 = ptrtoint ptr %urb_in to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %urb_in, align 8
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %77, i32 0, i32 15
  %78 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %75, ptr %transfer_dma, align 4
  %79 = load ptr, ptr %urb_in, align 8
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %79, i32 0, i32 13
  %80 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %transfer_flags, align 4
  %or68 = or i32 %81, 4
  store i32 %or68, ptr %transfer_flags, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %82 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %83 = load ptr, ptr %urb_in, align 8
  %call70 = tail call i32 @usb_submit_urb(ptr noundef %83, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %usb_fill_int_urb.exit.cleanup_crit_edge, label %do.end75

usb_fill_int_urb.exit.cleanup_crit_edge:          ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end75:                                         ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev55, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.16) #13
  br label %cleanup

rc_dev_fail:                                      ; preds = %do.end.i, %if.end53.rc_dev_fail_crit_edge
  tail call void @rc_free_device(ptr noundef %call.i) #9
  %86 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %call7.i.i, align 8
  %87 = ptrtoint ptr %urb_in to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %urb_in, align 8
  tail call void @usb_free_urb(ptr noundef %88) #9
  br label %free_buf_in

free_buf_in:                                      ; preds = %rc_dev_fail, %if.end48.free_buf_in_crit_edge
  %89 = ptrtoint ptr %buf_in to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %buf_in, align 4
  %91 = ptrtoint ptr %dma_in to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %dma_in, align 8
  tail call void @usb_free_coherent(ptr noundef %add.ptr.i, i32 noundef %conv35, ptr noundef %90, i32 noundef %92) #9
  br label %free_sz

free_sz:                                          ; preds = %free_buf_in, %if.end43.free_sz_crit_edge, %do.end41, %do.end25, %do.end16, %do.end
  %retval1.0 = phi i32 [ -19, %do.end ], [ -19, %do.end41 ], [ -12, %free_buf_in ], [ -12, %if.end43.free_sz_crit_edge ], [ -19, %do.end25 ], [ -19, %do.end16 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %free_sz, %do.end75, %usb_fill_int_urb.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %free_sz ], [ -12, %entry.cleanup_crit_edge ], [ 0, %do.end75 ], [ 0, %usb_fill_int_urb.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @streamzap_disconnect(ptr nocapture noundef %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  store ptr null, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %3, i32 -128
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @rc_unregister_device(ptr noundef %5) #9
  %urb_in = getelementptr inbounds %struct.streamzap_ir, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %urb_in to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %urb_in, align 4
  tail call void @usb_kill_urb(ptr noundef %7) #9
  %8 = ptrtoint ptr %urb_in to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %urb_in, align 4
  tail call void @usb_free_urb(ptr noundef %9) #9
  %buf_in_len = getelementptr inbounds %struct.streamzap_ir, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %buf_in_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf_in_len, align 4
  %buf_in = getelementptr inbounds %struct.streamzap_ir, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %buf_in to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buf_in, align 4
  %dma_in = getelementptr inbounds %struct.streamzap_ir, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %dma_in to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_in, align 4
  tail call void @usb_free_coherent(ptr noundef %add.ptr.i, i32 noundef %11, ptr noundef %13, i32 noundef %15) #9
  tail call void @kfree(ptr noundef nonnull %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @streamzap_suspend(ptr nocapture noundef readonly %intf, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %urb_in = getelementptr inbounds %struct.streamzap_ir, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %urb_in to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urb_in, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @streamzap_resume(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %urb_in = getelementptr inbounds %struct.streamzap_ir, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %urb_in to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urb_in, align 4
  %call1 = tail call i32 @usb_submit_urb(ptr noundef %3, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.streamzap_ir, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.33) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @streamzap_callback(ptr noundef %urb) #2 align 64 {
entry:
  %rawir.i.i.i211 = alloca %struct.ir_raw_event, align 4
  %rawir.i.i199 = alloca %struct.ir_raw_event, align 4
  %rawir.i = alloca %struct.ir_raw_event, align 4
  %rawir.i.i = alloca %struct.ir_raw_event, align 4
  %rawir.i.i.i187 = alloca %struct.ir_raw_event, align 4
  %rawir.i.i.i174 = alloca %struct.ir_raw_event, align 4
  %rawir.i.i.i = alloca %struct.ir_raw_event, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %urb, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %2 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %actual_length, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.body2 [
    i32 -104, label %if.end.do.end_crit_edge
    i32 -2, label %if.end.do.end_crit_edge229
    i32 -108, label %if.end.do.end_crit_edge230
  ]

if.end.do.end_crit_edge230:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.do.end_crit_edge229:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %if.end.do.end_crit_edge229, %if.end.do.end_crit_edge230
  %dev = getelementptr inbounds %struct.streamzap_ir, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.25, i32 noundef %5) #13
  br label %cleanup

do.body2:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @streamzap_callback.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@streamzap_callback, %if.then6)) #9
          to label %do.end10 [label %if.then6], !srcloc !85

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  %dev7 = getelementptr inbounds %struct.streamzap_ir, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @streamzap_callback.__UNIQUE_ID_ddebug238, ptr noundef %10, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, i32 noundef %3) #9
  br label %do.end10

do.end10:                                         ; preds = %if.then6, %do.body2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp226.not = icmp eq i32 %3, 0
  br i1 %cmp226.not, label %do.end10.for.end_crit_edge, label %do.body11.lr.ph

do.end10.for.end_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.body11.lr.ph:                                  ; preds = %do.end10
  %dev24 = getelementptr inbounds %struct.streamzap_ir, ptr %1, i32 0, i32 1
  %buf_in = getelementptr inbounds %struct.streamzap_ir, ptr %1, i32 0, i32 3
  %decoder_state = getelementptr inbounds %struct.streamzap_ir, ptr %1, i32 0, i32 6
  %rawir.coerce.fca.1.gep.i.i.i215 = getelementptr inbounds [2 x i32], ptr %rawir.i.i.i211, i32 0, i32 1
  %pulse.i.i.i217 = getelementptr inbounds %struct.ir_raw_event, ptr %rawir.i.i.i211, i32 0, i32 2
  %rawir.coerce.fca.1.gep.i.i203 = getelementptr inbounds [2 x i32], ptr %rawir.i.i199, i32 0, i32 1
  %pulse.i.i205 = getelementptr inbounds %struct.ir_raw_event, ptr %rawir.i.i199, i32 0, i32 2
  %rawir.coerce.fca.1.gep.i = getelementptr inbounds [2 x i32], ptr %rawir.i, i32 0, i32 1
  %pulse.i = getelementptr inbounds %struct.ir_raw_event, ptr %rawir.i, i32 0, i32 2
  %rawir.coerce.fca.1.gep.i.i = getelementptr inbounds [2 x i32], ptr %rawir.i.i, i32 0, i32 1
  %pulse.i.i = getelementptr inbounds %struct.ir_raw_event, ptr %rawir.i.i, i32 0, i32 2
  %rawir.coerce.fca.1.gep.i.i.i178 = getelementptr inbounds [2 x i32], ptr %rawir.i.i.i174, i32 0, i32 1
  %pulse.i.i.i180 = getelementptr inbounds %struct.ir_raw_event, ptr %rawir.i.i.i174, i32 0, i32 2
  %rawir.coerce.fca.1.gep.i.i.i190 = getelementptr inbounds [2 x i32], ptr %rawir.i.i.i187, i32 0, i32 1
  %pulse.i.i.i192 = getelementptr inbounds %struct.ir_raw_event, ptr %rawir.i.i.i187, i32 0, i32 2
  %rawir.coerce.fca.1.gep.i.i.i = getelementptr inbounds [2 x i32], ptr %rawir.i.i.i, i32 0, i32 1
  %pulse.i.i.i = getelementptr inbounds %struct.ir_raw_event, ptr %rawir.i.i.i, i32 0, i32 2
  br label %do.body11

do.body11:                                        ; preds = %for.inc.do.body11_crit_edge, %do.body11.lr.ph
  %i.0227 = phi i32 [ 0, %do.body11.lr.ph ], [ %inc, %for.inc.do.body11_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @streamzap_callback.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@streamzap_callback, %if.then23)) #9
          to label %do.end27 [label %if.then23], !srcloc !85

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev24, align 4
  %13 = ptrtoint ptr %buf_in to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buf_in, align 4
  %arrayidx = getelementptr i8, ptr %14, i32 %i.0227
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %16 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @streamzap_callback.__UNIQUE_ID_ddebug239, ptr noundef %12, ptr noundef nonnull @.str.28, i32 noundef %i.0227, i32 noundef %conv) #9
  br label %do.end27

do.end27:                                         ; preds = %if.then23, %do.body11
  %17 = ptrtoint ptr %decoder_state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %decoder_state, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %18, label %do.end27.for.inc_crit_edge [
    i32 0, label %sw.bb28
    i32 1, label %sw.bb54
    i32 2, label %sw.bb58
    i32 3, label %sw.bb80
  ]

do.end27.for.inc_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb28:                                          ; preds = %do.end27
  %20 = ptrtoint ptr %buf_in to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buf_in, align 4
  %arrayidx30 = getelementptr i8, ptr %21, i32 %i.0227
  %22 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %23 to i32
  %and = and i32 %conv31, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %and)
  %cmp32 = icmp eq i32 %and, 240
  br i1 %cmp32, label %if.then34, label %if.else

if.then34:                                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %decoder_state to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %decoder_state, align 4
  br label %for.inc

if.else:                                          ; preds = %sw.bb28
  %and39 = and i32 %conv31, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and39)
  %cmp40 = icmp eq i32 %and39, 15
  %25 = lshr i8 %23, 4
  %conv.i.i = zext i8 %25 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 8
  %add.i.i = or i32 %mul.i.i, 128
  br i1 %cmp40, label %if.then42, label %if.else46

if.then42:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rawir.i.i.i) #9
  %26 = ptrtoint ptr %rawir.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add.i.i, ptr %rawir.i.i.i, align 4
  %27 = ptrtoint ptr %rawir.coerce.fca.1.gep.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 9437183, ptr %rawir.coerce.fca.1.gep.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sz_push.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@streamzap_callback, %if.then.i.i.i)) #9
          to label %sz_push_half_pulse.exit [label %if.then.i.i.i], !srcloc !85

if.then.i.i.i:                                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev24, align 4
  %30 = ptrtoint ptr %pulse.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load.i.i.i = load i8, ptr %pulse.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool3.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  %cond.i.i.i = select i1 %tobool3.not.i.i.i, ptr @.str.32, ptr @.str.31
  %31 = ptrtoint ptr %rawir.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rawir.i.i.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sz_push.__UNIQUE_ID_ddebug237, ptr noundef %29, ptr noundef nonnull @.str.30, ptr noundef nonnull %cond.i.i.i, i32 noundef %32) #9
  br label %sz_push_half_pulse.exit

sz_push_half_pulse.exit:                          ; preds = %if.then.i.i.i, %if.then42
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %call4.i.i.i = call i32 @ir_raw_event_store_with_filter(ptr noundef %34, ptr noundef nonnull %rawir.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rawir.i.i.i) #9
  %35 = ptrtoint ptr %decoder_state to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %decoder_state, align 4
  br label %for.inc

if.else46:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rawir.i.i.i174) #9
  %36 = ptrtoint ptr %rawir.i.i.i174 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add.i.i, ptr %rawir.i.i.i174, align 4
  %37 = ptrtoint ptr %rawir.coerce.fca.1.gep.i.i.i178 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 9437183, ptr %rawir.coerce.fca.1.gep.i.i.i178, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sz_push.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@streamzap_callback, %if.then.i.i.i184)) #9
          to label %sz_push_half_pulse.exit186 [label %if.then.i.i.i184], !srcloc !85

if.then.i.i.i184:                                 ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev24, align 4
  %40 = ptrtoint ptr %pulse.i.i.i180 to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load.i.i.i181 = load i8, ptr %pulse.i.i.i180, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i181)
  %tobool3.not.i.i.i182 = icmp sgt i8 %bf.load.i.i.i181, -1
  %cond.i.i.i183 = select i1 %tobool3.not.i.i.i182, ptr @.str.32, ptr @.str.31
  %41 = ptrtoint ptr %rawir.i.i.i174 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rawir.i.i.i174, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sz_push.__UNIQUE_ID_ddebug237, ptr noundef %39, ptr noundef nonnull @.str.30, ptr noundef nonnull %cond.i.i.i183, i32 noundef %42) #9
  br label %sz_push_half_pulse.exit186

sz_push_half_pulse.exit186:                       ; preds = %if.then.i.i.i184, %if.else46
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %call4.i.i.i185 = call i32 @ir_raw_event_store_with_filter(ptr noundef %44, ptr noundef nonnull %rawir.i.i.i174) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rawir.i.i.i174) #9
  %45 = ptrtoint ptr %buf_in to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %buf_in, align 4
  %arrayidx50 = getelementptr i8, ptr %46, i32 %i.0227
  %47 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx50, align 1
  %conv51 = zext i8 %48 to i32
  %conv.i = shl nuw nsw i32 %conv51, 8
  %mul.i.i188 = and i32 %conv.i, 3840
  %add.i.i189 = or i32 %mul.i.i188, 128
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rawir.i.i.i187) #9
  %49 = ptrtoint ptr %rawir.i.i.i187 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add.i.i189, ptr %rawir.i.i.i187, align 4
  %50 = ptrtoint ptr %rawir.coerce.fca.1.gep.i.i.i190 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1048575, ptr %rawir.coerce.fca.1.gep.i.i.i190, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sz_push.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@streamzap_callback, %if.then.i.i.i196)) #9
          to label %sz_push_half_space.exit [label %if.then.i.i.i196], !srcloc !85

if.then.i.i.i196:                                 ; preds = %sz_push_half_pulse.exit186
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev24, align 4
  %53 = ptrtoint ptr %pulse.i.i.i192 to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load.i.i.i193 = load i8, ptr %pulse.i.i.i192, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i193)
  %tobool3.not.i.i.i194 = icmp sgt i8 %bf.load.i.i.i193, -1
  %cond.i.i.i195 = select i1 %tobool3.not.i.i.i194, ptr @.str.32, ptr @.str.31
  %54 = ptrtoint ptr %rawir.i.i.i187 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rawir.i.i.i187, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sz_push.__UNIQUE_ID_ddebug237, ptr noundef %52, ptr noundef nonnull @.str.30, ptr noundef nonnull %cond.i.i.i195, i32 noundef %55) #9
  br label %sz_push_half_space.exit

sz_push_half_space.exit:                          ; preds = %if.then.i.i.i196, %sz_push_half_pulse.exit186
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  %call4.i.i.i197 = call i32 @ir_raw_event_store_with_filter(ptr noundef %57, ptr noundef nonnull %rawir.i.i.i187) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rawir.i.i.i187) #9
  br label %for.inc

sw.bb54:                                          ; preds = %do.end27
  %58 = ptrtoint ptr %buf_in to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %buf_in, align 4
  %arrayidx56 = getelementptr i8, ptr %59, i32 %i.0227
  %60 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx56, align 1
  %conv.i198 = zext i8 %61 to i32
  %mul.i = shl nuw nsw i32 %conv.i198, 8
  %add.i = or i32 %mul.i, 128
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rawir.i.i) #9
  %62 = ptrtoint ptr %rawir.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add.i, ptr %rawir.i.i, align 4
  %63 = ptrtoint ptr %rawir.coerce.fca.1.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 9437183, ptr %rawir.coerce.fca.1.gep.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sz_push.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@streamzap_callback, %if.then.i.i)) #9
          to label %sz_push_full_pulse.exit [label %if.then.i.i], !srcloc !85

if.then.i.i:                                      ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev24, align 4
  %66 = ptrtoint ptr %pulse.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load.i.i = load i8, ptr %pulse.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool3.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  %cond.i.i = select i1 %tobool3.not.i.i, ptr @.str.32, ptr @.str.31
  %67 = ptrtoint ptr %rawir.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rawir.i.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sz_push.__UNIQUE_ID_ddebug237, ptr noundef %65, ptr noundef nonnull @.str.30, ptr noundef nonnull %cond.i.i, i32 noundef %68) #9
  br label %sz_push_full_pulse.exit

sz_push_full_pulse.exit:                          ; preds = %if.then.i.i, %sw.bb54
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  %call4.i.i = call i32 @ir_raw_event_store_with_filter(ptr noundef %70, ptr noundef nonnull %rawir.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rawir.i.i) #9
  %71 = ptrtoint ptr %decoder_state to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 3, ptr %decoder_state, align 4
  br label %for.inc

sw.bb58:                                          ; preds = %do.end27
  %72 = ptrtoint ptr %buf_in to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %buf_in, align 4
  %arrayidx60 = getelementptr i8, ptr %73, i32 %i.0227
  %74 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx60, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %75)
  %cmp62 = icmp eq i8 %75, -1
  br i1 %cmp62, label %if.then64, label %if.else75

if.then64:                                        ; preds = %sw.bb58
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %1, align 4
  %timeout = getelementptr inbounds %struct.rc_dev, ptr %77, i32 0, i32 34
  %78 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %timeout, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rawir.i)
  %80 = ptrtoint ptr %rawir.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %rawir.i, align 4
  %81 = ptrtoint ptr %rawir.coerce.fca.1.gep.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1048575, ptr %rawir.coerce.fca.1.gep.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sz_push.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@streamzap_callback, %if.then.i)) #9
          to label %sz_push.exit [label %if.then.i], !srcloc !85

if.then.i:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev24, align 4
  %84 = ptrtoint ptr %pulse.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %bf.load.i = load i8, ptr %pulse.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool3.not.i = icmp sgt i8 %bf.load.i, -1
  %cond.i = select i1 %tobool3.not.i, ptr @.str.32, ptr @.str.31
  %85 = ptrtoint ptr %rawir.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %rawir.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sz_push.__UNIQUE_ID_ddebug237, ptr noundef %83, ptr noundef nonnull @.str.30, ptr noundef nonnull %cond.i, i32 noundef %86) #9
  br label %sz_push.exit

sz_push.exit:                                     ; preds = %if.then.i, %if.then64
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %1, align 4
  %call4.i = call i32 @ir_raw_event_store_with_filter(ptr noundef %88, ptr noundef nonnull %rawir.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rawir.i)
  br label %if.end78

if.else75:                                        ; preds = %sw.bb58
  %conv.i200 = zext i8 %75 to i32
  %mul.i201 = shl nuw nsw i32 %conv.i200, 8
  %add.i202 = or i32 %mul.i201, 128
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rawir.i.i199) #9
  %89 = ptrtoint ptr %rawir.i.i199 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %add.i202, ptr %rawir.i.i199, align 4
  %90 = ptrtoint ptr %rawir.coerce.fca.1.gep.i.i203 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1048575, ptr %rawir.coerce.fca.1.gep.i.i203, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sz_push.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@streamzap_callback, %if.then.i.i209)) #9
          to label %sz_push_full_space.exit [label %if.then.i.i209], !srcloc !85

if.then.i.i209:                                   ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #11
  %91 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev24, align 4
  %93 = ptrtoint ptr %pulse.i.i205 to i32
  call void @__asan_load1_noabort(i32 %93)
  %bf.load.i.i206 = load i8, ptr %pulse.i.i205, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i206)
  %tobool3.not.i.i207 = icmp sgt i8 %bf.load.i.i206, -1
  %cond.i.i208 = select i1 %tobool3.not.i.i207, ptr @.str.32, ptr @.str.31
  %94 = ptrtoint ptr %rawir.i.i199 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rawir.i.i199, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sz_push.__UNIQUE_ID_ddebug237, ptr noundef %92, ptr noundef nonnull @.str.30, ptr noundef nonnull %cond.i.i208, i32 noundef %95) #9
  br label %sz_push_full_space.exit

sz_push_full_space.exit:                          ; preds = %if.then.i.i209, %if.else75
  %96 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %1, align 4
  %call4.i.i210 = call i32 @ir_raw_event_store_with_filter(ptr noundef %97, ptr noundef nonnull %rawir.i.i199) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rawir.i.i199) #9
  br label %if.end78

if.end78:                                         ; preds = %sz_push_full_space.exit, %sz_push.exit
  %98 = ptrtoint ptr %decoder_state to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %decoder_state, align 4
  br label %for.inc

sw.bb80:                                          ; preds = %do.end27
  %99 = ptrtoint ptr %buf_in to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %buf_in, align 4
  %arrayidx82 = getelementptr i8, ptr %100, i32 %i.0227
  %101 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %102 to i32
  %and84 = and i32 %conv83, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and84)
  %cmp85 = icmp eq i32 %and84, 15
  br i1 %cmp85, label %if.then87, label %if.end89

if.then87:                                        ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #11
  %103 = ptrtoint ptr %decoder_state to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 2, ptr %decoder_state, align 4
  br label %for.inc

if.end89:                                         ; preds = %sw.bb80
  %conv.i212 = shl nuw nsw i32 %conv83, 8
  %mul.i.i213 = and i32 %conv.i212, 3840
  %add.i.i214 = or i32 %mul.i.i213, 128
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rawir.i.i.i211) #9
  %104 = ptrtoint ptr %rawir.i.i.i211 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %add.i.i214, ptr %rawir.i.i.i211, align 4
  %105 = ptrtoint ptr %rawir.coerce.fca.1.gep.i.i.i215 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 1048575, ptr %rawir.coerce.fca.1.gep.i.i.i215, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sz_push.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@streamzap_callback, %if.then.i.i.i221)) #9
          to label %sz_push_half_space.exit223 [label %if.then.i.i.i221], !srcloc !85

if.then.i.i.i221:                                 ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  %106 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev24, align 4
  %108 = ptrtoint ptr %pulse.i.i.i217 to i32
  call void @__asan_load1_noabort(i32 %108)
  %bf.load.i.i.i218 = load i8, ptr %pulse.i.i.i217, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i218)
  %tobool3.not.i.i.i219 = icmp sgt i8 %bf.load.i.i.i218, -1
  %cond.i.i.i220 = select i1 %tobool3.not.i.i.i219, ptr @.str.32, ptr @.str.31
  %109 = ptrtoint ptr %rawir.i.i.i211 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %rawir.i.i.i211, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sz_push.__UNIQUE_ID_ddebug237, ptr noundef %107, ptr noundef nonnull @.str.30, ptr noundef nonnull %cond.i.i.i220, i32 noundef %110) #9
  br label %sz_push_half_space.exit223

sz_push_half_space.exit223:                       ; preds = %if.then.i.i.i221, %if.end89
  %111 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %1, align 4
  %call4.i.i.i222 = call i32 @ir_raw_event_store_with_filter(ptr noundef %112, ptr noundef nonnull %rawir.i.i.i211) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rawir.i.i.i211) #9
  %113 = ptrtoint ptr %decoder_state to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %decoder_state, align 4
  br label %for.inc

for.inc:                                          ; preds = %sz_push_half_space.exit223, %if.then87, %if.end78, %sz_push_full_pulse.exit, %sz_push_half_space.exit, %sz_push_half_pulse.exit, %if.then34, %do.end27.for.inc_crit_edge
  %inc = add nuw i32 %i.0227, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.do.body11_crit_edge

for.inc.do.body11_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body11

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end10.for.end_crit_edge
  %114 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %1, align 4
  call void @ir_raw_event_handle(ptr noundef %115) #9
  %call96 = call i32 @usb_submit_urb(ptr noundef nonnull %urb, i32 noundef 2592) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rc_allocate_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rc_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ir_raw_event_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_event_store_with_filter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !41, !43, !45, !47, !48, !49, !50, !52, !54, !55, !56, !57, !59, !60, !62, !63, !65, !66, !67, !68, !69, !71, !72, !73, !74}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @__initcall__kmod_streamzap__240_417_streamzap_driver_init6, !1, !"__initcall__kmod_streamzap__240_417_streamzap_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/streamzap.c", i32 417, i32 1}
!2 = !{ptr @__exitcall_streamzap_driver_exit, !1, !"__exitcall_streamzap_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author241, !4, !"__UNIQUE_ID_author241", i1 false, i1 false}
!4 = !{!"../drivers/media/rc/streamzap.c", i32 419, i32 1}
!5 = !{ptr @__UNIQUE_ID_description242, !6, !"__UNIQUE_ID_description242", i1 false, i1 false}
!6 = !{!"../drivers/media/rc/streamzap.c", i32 420, i32 1}
!7 = !{ptr @__UNIQUE_ID_file243, !8, !"__UNIQUE_ID_file243", i1 false, i1 false}
!8 = !{!"../drivers/media/rc/streamzap.c", i32 421, i32 1}
!9 = !{ptr @__UNIQUE_ID_license244, !8, !"__UNIQUE_ID_license244", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @streamzap_driver, !12, !"streamzap_driver", i1 false, i1 false}
!12 = !{!"../drivers/media/rc/streamzap.c", i32 91, i32 26}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/rc/streamzap.c", i32 288, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @streamzap_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @streamzap_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/rc/streamzap.c", i32 296, i32 3}
!23 = !{ptr @streamzap_probe._entry.6, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @streamzap_probe._entry_ptr.8, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/rc/streamzap.c", i32 303, i32 3}
!27 = !{ptr @streamzap_probe._entry.9, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @streamzap_probe._entry_ptr.11, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/rc/streamzap.c", i32 313, i32 3}
!31 = !{ptr @streamzap_probe._entry.12, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @streamzap_probe._entry_ptr.14, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/rc/streamzap.c", i32 354, i32 3}
!35 = !{ptr @streamzap_probe._entry.15, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @streamzap_probe._entry_ptr.17, !34, !"_entry_ptr", i1 false, i1 false}
!37 = distinct !{null, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../include/linux/usb.h", i32 1981, i32 3}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/rc/streamzap.c", i32 237, i32 20}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/rc/streamzap.c", i32 239, i32 22}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/rc/streamzap.c", i32 246, i32 19}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/rc/streamzap.c", i32 251, i32 3}
!47 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @streamzap_init_rc_dev._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @streamzap_init_rc_dev._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../include/linux/usb.h", i32 912, i32 31}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/rc/streamzap.c", i32 167, i32 3}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @streamzap_callback._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @streamzap_callback._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/rc/streamzap.c", i32 173, i32 2}
!59 = !{ptr @streamzap_callback.__UNIQUE_ID_ddebug238, !58, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/rc/streamzap.c", i32 175, i32 3}
!62 = !{ptr @streamzap_callback.__UNIQUE_ID_ddebug239, !61, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/rc/streamzap.c", i32 102, i32 2}
!65 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @sz_push.__UNIQUE_ID_ddebug237, !64, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!67 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/rc/streamzap.c", i32 410, i32 3}
!71 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @streamzap_resume._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @streamzap_resume._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @streamzap_table, !75, !"streamzap_table", i1 false, i1 false}
!75 = !{!"../drivers/media/rc/streamzap.c", i32 35, i32 35}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{i64 2148286155, i64 2148286160, i64 2148286173, i64 2148286217, i64 2148286251, i64 2148286272}
