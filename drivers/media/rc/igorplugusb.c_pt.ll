; ModuleID = '/llk/IR_all_yes/drivers/media/rc/igorplugusb.c_pt.bc'
source_filename = "../drivers/media/rc/igorplugusb.c"
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.igorplugusb = type { ptr, ptr, ptr, %struct.usb_ctrlrequest, %struct.timer_list, [39 x i8], [64 x i8] }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.ir_raw_event = type { %union.anon.72, i8, i8 }
%union.anon.72 = type { i32 }

@__initcall__kmod_igorplugusb__238_257_igorplugusb_driver_init6 = internal global ptr @igorplugusb_driver_init, section ".initcall6.init", align 4
@igorplugusb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @igorplugusb_probe, ptr @igorplugusb_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @igorplugusb_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_igorplugusb_driver_exit = internal global ptr @igorplugusb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description239 = internal constant [49 x i8] c"igorplugusb.description=IgorPlug-USB IR Receiver\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [46 x i8] c"igorplugusb.author=Sean Young <sean@mess.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [46 x i8] c"igorplugusb.file=drivers/media/rc/igorplugusb\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [24 x i8] c"igorplugusb.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"igorplugusb\00", [20 x i8] zeroinitializer }, align 32
@igorplugusb_table = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1003, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1003, i16 8702, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@igorplugusb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 154, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"incorrect number of endpoints\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"igorplugusb_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/media/rc/igorplugusb.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@igorplugusb_probe._entry_ptr = internal global ptr @igorplugusb_probe._entry, section ".printk_index", align 4
@igorplugusb_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 160, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"endpoint incorrect\00", [45 x i8] zeroinitializer }, align 32
@igorplugusb_probe._entry_ptr.8 = internal global ptr @igorplugusb_probe._entry.6, section ".printk_index", align 4
@igorplugusb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(&ir->timer)\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IgorPlug-USB IR Receiver\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rc-hauppauge\00", [19 x i8] zeroinitializer }, align 32
@igorplugusb_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 213, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register rc device: %d\00", [63 x i8] zeroinitializer }, align 32
@igorplugusb_probe._entry_ptr.14 = internal global ptr @igorplugusb_probe._entry.12, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@igorplugusb_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 116, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error: urb status = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"igorplugusb_callback\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@igorplugusb_callback._entry_ptr = internal global ptr @igorplugusb_callback._entry, section ".printk_index", align 4
@igorplugusb_irdata.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.3, ptr @.str.19, i8 0, i8 13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"igorplugusb_irdata\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"irdata: %*ph (len=%u)\00", [42 x i8] zeroinitializer }, align 32
@igorplugusb_irdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.3, i32 65, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"receive overflow invalid: %u\00", [35 x i8] zeroinitializer }, align 32
@igorplugusb_irdata._entry_ptr = internal global ptr @igorplugusb_irdata._entry, section ".printk_index", align 4
@igorplugusb_irdata._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.18, ptr @.str.3, i32 69, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"receive overflow, at least %u lost\00", [61 x i8] zeroinitializer }, align 32
@igorplugusb_irdata._entry_ptr.23 = internal global ptr @igorplugusb_irdata._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@igorplugusb_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 130, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"submit urb failed: %d\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"igorplugusb_cmd\00", [16 x i8] zeroinitializer }, align 32
@igorplugusb_cmd._entry_ptr = internal global ptr @igorplugusb_cmd._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967225, i64 4294967294]
@___asan_gen_.27 = private unnamed_addr constant [19 x i8] c"igorplugusb_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 250, i32 26 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 257, i32 1 }
@___asan_gen_.33 = private unnamed_addr constant [18 x i8] c"igorplugusb_table\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 241, i32 35 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 154, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 160, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 170, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 190, i32 20 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 206, i32 17 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 213, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 116, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 53, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 65, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 68, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 912, i32 31 }
@___asan_gen_.111 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private constant [34 x i8] c"../drivers/media/rc/igorplugusb.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 130, i32 3 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__exitcall_igorplugusb_driver_exit, ptr @__initcall__kmod_igorplugusb__238_257_igorplugusb_driver_init6, ptr @igorplugusb_callback._entry, ptr @igorplugusb_callback._entry_ptr, ptr @igorplugusb_cmd._entry, ptr @igorplugusb_cmd._entry_ptr, ptr @igorplugusb_driver_exit, ptr @igorplugusb_irdata._entry, ptr @igorplugusb_irdata._entry.21, ptr @igorplugusb_irdata._entry_ptr, ptr @igorplugusb_irdata._entry_ptr.23, ptr @igorplugusb_probe._entry, ptr @igorplugusb_probe._entry.12, ptr @igorplugusb_probe._entry.6, ptr @igorplugusb_probe._entry_ptr, ptr @igorplugusb_probe._entry_ptr.14, ptr @igorplugusb_probe._entry_ptr.8, ptr @igorplugusb_driver, ptr @.str, ptr @igorplugusb_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @igorplugusb_probe.__key, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igorplugusb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igorplugusb_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igorplugusb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igorplugusb_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igorplugusb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igorplugusb_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igorplugusb_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igorplugusb_irdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igorplugusb_irdata._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igorplugusb_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @igorplugusb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @igorplugusb_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @igorplugusb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_deregister(ptr noundef nonnull @igorplugusb_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igorplugusb_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp.not = icmp eq i8 %5, 1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %endpoint, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bEndpointAddress.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %tobool.not = icmp sgt i8 %9, -1
  br i1 %tobool.not, label %if.end.do.end9_crit_edge, label %lor.lhs.false

if.end.do.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

lor.lhs.false:                                    ; preds = %if.end
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bmAttributes.i, align 1
  %12 = and i8 %11, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp.i.not = icmp eq i8 %12, 0
  br i1 %cmp.i.not, label %if.end11, label %lor.lhs.false.do.end9_crit_edge

lor.lhs.false.do.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.end9:                                          ; preds = %lor.lhs.false.do.end9_crit_edge, %if.end.do.end9_crit_edge
  %dev10 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  %dev12 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev12, i32 noundef 172, i32 noundef 3520) #7
  %tobool14.not = icmp eq ptr %call.i, null
  br i1 %tobool14.not, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %dev18 = getelementptr inbounds %struct.igorplugusb, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %dev18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev12, ptr %dev18, align 4
  %timer = getelementptr inbounds %struct.igorplugusb, ptr %call.i, i32 0, i32 4
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @igorplugusb_timer, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull @igorplugusb_probe.__key) #7
  %request = getelementptr inbounds %struct.igorplugusb, ptr %call.i, i32 0, i32 3
  %bRequest = getelementptr inbounds %struct.igorplugusb, ptr %call.i, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %bRequest to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %bRequest, align 1
  %15 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -64, ptr %request, align 4
  %wLength = getelementptr inbounds %struct.igorplugusb, ptr %call.i, i32 0, i32 3, i32 4
  %16 = ptrtoint ptr %wLength to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 9984, ptr %wLength, align 2
  %call24 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #7
  %urb = getelementptr inbounds %struct.igorplugusb, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %urb to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call24, ptr %urb, align 4
  %tobool26.not = icmp eq ptr %call24, null
  br i1 %tobool26.not, label %if.end16.fail_crit_edge, label %if.end28

if.end16.fail_crit_edge:                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end28:                                         ; preds = %if.end16
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %19, 8
  %or31 = or i32 %shl.i, -2147483520
  %buf_in = getelementptr inbounds %struct.igorplugusb, ptr %call.i, i32 0, i32 5
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call24, i32 0, i32 8
  %20 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr.i, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call24, i32 0, i32 10
  %21 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or31, ptr %pipe2.i, align 4
  %setup_packet3.i = getelementptr inbounds %struct.urb, ptr %call24, i32 0, i32 21
  %22 = ptrtoint ptr %setup_packet3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %request, ptr %setup_packet3.i, align 4
  %transfer_buffer4.i = getelementptr inbounds %struct.urb, ptr %call24, i32 0, i32 14
  %23 = ptrtoint ptr %transfer_buffer4.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %buf_in, ptr %transfer_buffer4.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call24, i32 0, i32 19
  %24 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 39, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call24, i32 0, i32 28
  %25 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @igorplugusb_callback, ptr %complete.i, align 4
  %context5.i = getelementptr inbounds %struct.urb, ptr %call24, i32 0, i32 27
  %26 = ptrtoint ptr %context5.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %context5.i, align 4
  %phys = getelementptr inbounds %struct.igorplugusb, ptr %call.i, i32 0, i32 6
  %bus.i = getelementptr i8, ptr %1, i32 -64
  %27 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr i8, ptr %1, i32 -124
  %call.i108 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 64, ptr noundef nonnull @.str.24, ptr noundef %30, ptr noundef %devpath.i) #7
  %call35 = tail call ptr @rc_allocate_device(i32 noundef 1) #7
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %if.end28.fail_crit_edge, label %if.end38

if.end28.fail_crit_edge:                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end38:                                         ; preds = %if.end28
  %device_name = getelementptr inbounds %struct.rc_dev, ptr %call35, i32 0, i32 3
  %31 = ptrtoint ptr %device_name to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.10, ptr %device_name, align 8
  %input_phys = getelementptr inbounds %struct.rc_dev, ptr %call35, i32 0, i32 4
  %32 = ptrtoint ptr %input_phys to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %phys, ptr %input_phys, align 4
  %input_id = getelementptr inbounds %struct.rc_dev, ptr %call35, i32 0, i32 5
  %33 = ptrtoint ptr %input_id to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 3, ptr %input_id, align 2
  %idVendor.i = getelementptr i8, ptr %1, i32 936
  %34 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %idVendor.i, align 8
  %36 = tail call i16 @llvm.bswap.i16(i16 %35) #7
  %vendor.i = getelementptr inbounds %struct.rc_dev, ptr %call35, i32 0, i32 5, i32 1
  %37 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %vendor.i, align 2
  %idProduct.i = getelementptr i8, ptr %1, i32 938
  %38 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %idProduct.i, align 2
  %40 = tail call i16 @llvm.bswap.i16(i16 %39) #7
  %product.i = getelementptr inbounds %struct.rc_dev, ptr %call35, i32 0, i32 5, i32 2
  %41 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %product.i, align 2
  %bcdDevice.i = getelementptr i8, ptr %1, i32 940
  %42 = ptrtoint ptr %bcdDevice.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %bcdDevice.i, align 4
  %44 = tail call i16 @llvm.bswap.i16(i16 %43) #7
  %version.i = getelementptr inbounds %struct.rc_dev, ptr %call35, i32 0, i32 5, i32 3
  %45 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %version.i, align 2
  %parent = getelementptr inbounds %struct.device, ptr %call35, i32 0, i32 1
  %46 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %dev12, ptr %parent, align 8
  %allowed_protocols = getelementptr inbounds %struct.rc_dev, ptr %call35, i32 0, i32 16
  %47 = ptrtoint ptr %allowed_protocols to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 129032444, ptr %allowed_protocols, align 8
  %priv = getelementptr inbounds %struct.rc_dev, ptr %call35, i32 0, i32 24
  %48 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i, ptr %priv, align 4
  %driver_name = getelementptr inbounds %struct.rc_dev, ptr %call35, i32 0, i32 6
  %49 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str, ptr %driver_name, align 8
  %map_name = getelementptr inbounds %struct.rc_dev, ptr %call35, i32 0, i32 7
  %50 = ptrtoint ptr %map_name to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.11, ptr %map_name, align 4
  %timeout = getelementptr inbounds %struct.rc_dev, ptr %call35, i32 0, i32 34
  %51 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 100000, ptr %timeout, align 4
  %rx_resolution = getelementptr inbounds %struct.rc_dev, ptr %call35, i32 0, i32 37
  %52 = ptrtoint ptr %rx_resolution to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 85, ptr %rx_resolution, align 8
  %53 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call35, ptr %call.i, align 4
  %call44 = tail call i32 @rc_register_device(ptr noundef nonnull %call35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end51, label %do.end49

do.end49:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.13, i32 noundef %call44) #10
  br label %fail

if.end51:                                         ; preds = %if.end38
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %54 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %55 = ptrtoint ptr %bRequest to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %bRequest, align 1
  %56 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %urb, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %57, i32 0, i32 13
  %58 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %transfer_flags.i, align 4
  %59 = load ptr, ptr %urb, align 4
  %call.i109 = tail call i32 @usb_submit_urb(ptr noundef %59, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %tobool.not.i = icmp eq i32 %call.i109, 0
  br i1 %tobool.not.i, label %if.end51.cleanup_crit_edge, label %do.end.i

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.25, i32 noundef %call.i109) #10
  br label %cleanup

fail:                                             ; preds = %do.end49, %if.end28.fail_crit_edge, %if.end16.fail_crit_edge
  %ret.0 = phi i32 [ %call44, %do.end49 ], [ -12, %if.end28.fail_crit_edge ], [ -12, %if.end16.fail_crit_edge ]
  %62 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call.i, align 4
  tail call void @rc_free_device(ptr noundef %63) #7
  %64 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %urb, align 4
  tail call void @usb_free_urb(ptr noundef %65) #7
  %call55 = tail call i32 @del_timer(ptr noundef %timer) #7
  br label %cleanup

cleanup:                                          ; preds = %fail, %do.end.i, %if.end51.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %do.end9, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %ret.0, %fail ], [ -19, %do.end9 ], [ -12, %if.end11.cleanup_crit_edge ], [ 0, %if.end51.cleanup_crit_edge ], [ 0, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igorplugusb_disconnect(ptr nocapture noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @rc_unregister_device(ptr noundef %3) #7
  %timer = getelementptr inbounds %struct.igorplugusb, ptr %1, i32 0, i32 4
  %call1 = tail call i32 @del_timer_sync(ptr noundef %timer) #7
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i.i, align 4
  %urb = getelementptr inbounds %struct.igorplugusb, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %urb, align 4
  tail call void @usb_kill_urb(ptr noundef %6) #7
  %7 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %urb, align 4
  tail call void @usb_free_urb(ptr noundef %8) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igorplugusb_timer(ptr nocapture noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bRequest.i = getelementptr i8, ptr %t, i32 -7
  %0 = ptrtoint ptr %bRequest.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 2, ptr %bRequest.i, align 1
  %urb.i = getelementptr i8, ptr %t, i32 -12
  %1 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %urb.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 13
  %3 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %transfer_flags.i, align 4
  %4 = load ptr, ptr %urb.i, align 4
  %call.i = tail call i32 @usb_submit_urb(ptr noundef %4, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.igorplugusb_cmd.exit_crit_edge, label %do.end.i

entry.igorplugusb_cmd.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %igorplugusb_cmd.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr i8, ptr %t, i32 -16
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.25, i32 noundef %call.i) #10
  br label %igorplugusb_cmd.exit

igorplugusb_cmd.exit:                             ; preds = %do.end.i, %entry.igorplugusb_cmd.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igorplugusb_callback(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end [
    i32 0, label %sw.bb
    i32 -71, label %entry.sw.bb6_crit_edge
    i32 -104, label %entry.sw.bb6_crit_edge19
    i32 -2, label %entry.sw.bb6_crit_edge20
    i32 -108, label %entry.sw.bb6_crit_edge21
  ]

entry.sw.bb6_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

entry.sw.bb6_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

entry.sw.bb6_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

sw.bb:                                            ; preds = %entry
  %setup_packet = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 21
  %5 = ptrtoint ptr %setup_packet to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %setup_packet, align 4
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bRequest, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp = icmp eq i8 %8, 2
  br i1 %cmp, label %land.lhs.true, label %sw.bb.if.else_crit_edge

sw.bb.if.else_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %sw.bb
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %9 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp2 = icmp ugt i32 %10, 3
  br i1 %cmp2, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @igorplugusb_irdata(ptr noundef %1, i32 noundef %10)
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %sw.bb.if.else_crit_edge
  %timer = getelementptr inbounds %struct.igorplugusb, ptr %1, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %11, 5
  %call5 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #7
  br label %cleanup

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge19, %entry.sw.bb6_crit_edge20, %entry.sw.bb6_crit_edge21
  %call7 = tail call i32 @usb_unlink_urb(ptr noundef %urb) #7
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.igorplugusb, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.15, i32 noundef %3) #10
  tail call fastcc void @igorplugusb_cmd(ptr noundef %1, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb6, %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rc_allocate_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rc_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @igorplugusb_cmd(ptr nocapture noundef %ir, i32 noundef %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %cmd to i8
  %bRequest = getelementptr inbounds %struct.igorplugusb, ptr %ir, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %bRequest to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %bRequest, align 1
  %urb = getelementptr inbounds %struct.igorplugusb, ptr %ir, i32 0, i32 2
  %1 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %urb, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 13
  %3 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %transfer_flags, align 4
  %4 = load ptr, ptr %urb, align 4
  %call = tail call i32 @usb_submit_urb(ptr noundef %4, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.igorplugusb, ptr %ir, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.25, i32 noundef %call) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @igorplugusb_irdata(ptr noundef %ir, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %.compoundliteral.i = alloca %struct.ir_raw_event, align 4
  %rawir = alloca %struct.ir_raw_event, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rawir) #7
  %0 = ptrtoint ptr %rawir to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %rawir, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igorplugusb_irdata.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igorplugusb_irdata, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !72

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.igorplugusb, ptr %ir, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %buf_in = getelementptr inbounds %struct.igorplugusb, ptr %ir, i32 0, i32 5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @igorplugusb_irdata.__UNIQUE_ID_ddebug237, ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef %len, ptr noundef %buf_in, i32 noundef %len) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %arrayidx = getelementptr %struct.igorplugusb, ptr %ir, i32 0, i32 5, i32 2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 2
  %conv = zext i8 %4 to i32
  %add = add nuw nsw i32 %conv, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %len)
  %cmp.not = icmp ult i32 %add, %len
  br i1 %cmp.not, label %if.else, label %do.end8

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev9 = getelementptr inbounds %struct.igorplugusb, ptr %ir, i32 0, i32 1
  %5 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.20, i32 noundef %conv) #10
  br label %if.end40

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp10.not = icmp eq i8 %4, 0
  br i1 %cmp10.not, label %if.else.if.end17_crit_edge, label %do.end15

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

do.end15:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %dev16 = getelementptr inbounds %struct.igorplugusb, ptr %ir, i32 0, i32 1
  %7 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.22, i32 noundef %conv) #10
  %9 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ir, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %.compoundliteral.i)
  %11 = ptrtoint ptr %.compoundliteral.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %.compoundliteral.i, align 4
  %duty_cycle.i = getelementptr inbounds %struct.ir_raw_event, ptr %.compoundliteral.i, i32 0, i32 1
  %12 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %duty_cycle.i, align 4
  %pulse.i = getelementptr inbounds %struct.ir_raw_event, ptr %.compoundliteral.i, i32 0, i32 2
  %13 = ptrtoint ptr %pulse.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 64, ptr %pulse.i, align 1
  %call.i = call i32 @ir_raw_event_store(ptr noundef %10, ptr noundef nonnull %.compoundliteral.i) #7
  %idle.i = getelementptr inbounds %struct.rc_dev, ptr %10, i32 0, i32 14
  %14 = ptrtoint ptr %idle.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %idle.i, align 8
  call void @ir_raw_event_handle(ptr noundef %10) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.compoundliteral.i)
  br label %if.end17

if.end17:                                         ; preds = %do.end15, %if.else.if.end17_crit_edge
  %pulse = getelementptr inbounds %struct.ir_raw_event, ptr %rawir, i32 0, i32 2
  br label %do.body18

do.body18:                                        ; preds = %do.body18.do.body18_crit_edge, %if.end17
  %i.0 = phi i32 [ %add, %if.end17 ], [ %spec.store.select, %do.body18.do.body18_crit_edge ]
  %arrayidx20 = getelementptr %struct.igorplugusb, ptr %ir, i32 0, i32 5, i32 %i.0
  %15 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %16 to i32
  %mul = mul nuw nsw i32 %conv21, 85
  %17 = ptrtoint ptr %rawir to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul, ptr %rawir, align 8
  %18 = trunc i32 %i.0 to i8
  %19 = ptrtoint ptr %pulse to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %pulse, align 1
  %bf.shl = shl i8 %18, 7
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %pulse, align 1
  %20 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ir, align 4
  %call23 = call i32 @ir_raw_event_store_with_filter(ptr noundef %21, ptr noundef nonnull %rawir) #7
  %inc = add i32 %i.0, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %len)
  %cmp24 = icmp eq i32 %inc, %len
  %spec.store.select = select i1 %cmp24, i32 3, i32 %inc
  %cmp29.not = icmp eq i32 %spec.store.select, %add
  br i1 %cmp29.not, label %do.end31, label %do.body18.do.body18_crit_edge

do.body18.do.body18_crit_edge:                    ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body18

do.end31:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ir, align 4
  %timeout = getelementptr inbounds %struct.rc_dev, ptr %23, i32 0, i32 34
  %24 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %timeout, align 4
  %26 = ptrtoint ptr %rawir to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %rawir, align 8
  %27 = ptrtoint ptr %pulse to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load34 = load i8, ptr %pulse, align 1
  %bf.clear35 = and i8 %bf.load34, 127
  store i8 %bf.clear35, ptr %pulse, align 1
  %call38 = call i32 @ir_raw_event_store_with_filter(ptr noundef %23, ptr noundef nonnull %rawir) #7
  %28 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ir, align 4
  call void @ir_raw_event_handle(ptr noundef %29) #7
  br label %if.end40

if.end40:                                         ; preds = %do.end31, %do.end8
  %bRequest.i = getelementptr inbounds %struct.igorplugusb, ptr %ir, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %bRequest.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %bRequest.i, align 1
  %urb.i = getelementptr inbounds %struct.igorplugusb, ptr %ir, i32 0, i32 2
  %31 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %urb.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %32, i32 0, i32 13
  %33 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %transfer_flags.i, align 4
  %34 = load ptr, ptr %urb.i, align 4
  %call.i62 = call i32 @usb_submit_urb(ptr noundef %34, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool.not.i = icmp eq i32 %call.i62, 0
  br i1 %tobool.not.i, label %if.end40.igorplugusb_cmd.exit_crit_edge, label %do.end.i

if.end40.igorplugusb_cmd.exit_crit_edge:          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %igorplugusb_cmd.exit

do.end.i:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.igorplugusb, ptr %ir, i32 0, i32 1
  %35 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.25, i32 noundef %call.i62) #10
  br label %igorplugusb_cmd.exit

igorplugusb_cmd.exit:                             ; preds = %do.end.i, %if.end40.igorplugusb_cmd.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rawir) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_event_store_with_filter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ir_raw_event_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_event_store(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !30, !32, !34, !35, !36, !38, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !58, !59, !60, !61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__initcall__kmod_igorplugusb__238_257_igorplugusb_driver_init6, !1, !"__initcall__kmod_igorplugusb__238_257_igorplugusb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/igorplugusb.c", i32 257, i32 1}
!2 = !{ptr @__exitcall_igorplugusb_driver_exit, !1, !"__exitcall_igorplugusb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description239, !4, !"__UNIQUE_ID_description239", i1 false, i1 false}
!4 = !{!"../drivers/media/rc/igorplugusb.c", i32 259, i32 1}
!5 = !{ptr @__UNIQUE_ID_author240, !6, !"__UNIQUE_ID_author240", i1 false, i1 false}
!6 = !{!"../drivers/media/rc/igorplugusb.c", i32 260, i32 1}
!7 = !{ptr @__UNIQUE_ID_file241, !8, !"__UNIQUE_ID_file241", i1 false, i1 false}
!8 = !{!"../drivers/media/rc/igorplugusb.c", i32 261, i32 1}
!9 = !{ptr @__UNIQUE_ID_license242, !8, !"__UNIQUE_ID_license242", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @igorplugusb_driver, !12, !"igorplugusb_driver", i1 false, i1 false}
!12 = !{!"../drivers/media/rc/igorplugusb.c", i32 250, i32 26}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/rc/igorplugusb.c", i32 154, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @igorplugusb_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @igorplugusb_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/rc/igorplugusb.c", i32 160, i32 3}
!23 = !{ptr @igorplugusb_probe._entry.6, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @igorplugusb_probe._entry_ptr.8, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @igorplugusb_probe.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/media/rc/igorplugusb.c", i32 170, i32 2}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/rc/igorplugusb.c", i32 190, i32 20}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/rc/igorplugusb.c", i32 206, i32 17}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/rc/igorplugusb.c", i32 213, i32 3}
!34 = !{ptr @igorplugusb_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @igorplugusb_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/rc/igorplugusb.c", i32 116, i32 3}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @igorplugusb_callback._entry, !37, !"_entry", i1 false, i1 false}
!41 = !{ptr @igorplugusb_callback._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/rc/igorplugusb.c", i32 53, i32 2}
!44 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @igorplugusb_irdata.__UNIQUE_ID_ddebug237, !43, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/rc/igorplugusb.c", i32 65, i32 3}
!48 = !{ptr @igorplugusb_irdata._entry, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @igorplugusb_irdata._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/rc/igorplugusb.c", i32 68, i32 4}
!52 = !{ptr @igorplugusb_irdata._entry.21, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @igorplugusb_irdata._entry_ptr.23, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/linux/usb.h", i32 912, i32 31}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/rc/igorplugusb.c", i32 130, i32 3}
!58 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @igorplugusb_cmd._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @igorplugusb_cmd._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @igorplugusb_table, !62, !"igorplugusb_table", i1 false, i1 false}
!62 = !{!"../drivers/media/rc/igorplugusb.c", i32 241, i32 35}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{i64 2148281898, i64 2148281903, i64 2148281916, i64 2148281960, i64 2148281994, i64 2148282015}
