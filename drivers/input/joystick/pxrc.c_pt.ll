; ModuleID = '/llk/IR_all_yes/drivers/input/joystick/pxrc.c_pt.bc'
source_filename = "../drivers/input/joystick/pxrc.c"
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
%struct.pxrc = type { ptr, ptr, ptr, %struct.mutex, i8, [64 x i8] }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_pxrc__235_277_pxrc_driver_init6 = internal global ptr @pxrc_driver_init, section ".initcall6.init", align 4
@pxrc_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @pxrc_probe, ptr @pxrc_disconnect, ptr null, ptr @pxrc_suspend, ptr @pxrc_resume, ptr @pxrc_reset_resume, ptr @pxrc_pre_reset, ptr @pxrc_post_reset, ptr @pxrc_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_pxrc_driver_exit = internal global ptr @pxrc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author236 = internal constant [58 x i8] c"pxrc.author=Marcus Folkesson <marcus.folkesson@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [53 x i8] c"pxrc.description=PhoenixRC Flight Controller Adapter\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [38 x i8] c"pxrc.file=drivers/input/joystick/pxrc\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [20 x i8] c"pxrc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pxrc\00", [27 x i8] zeroinitializer }, align 32
@pxrc_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 6017, i16 2200, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@pxrc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 137, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Could not find endpoint\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pxrc_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/input/joystick/pxrc.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pxrc_probe._entry_ptr = internal global ptr @pxrc_probe._entry, section ".printk_index", align 4
@pxrc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&pxrc->pm_mutex\00", [16 x i8] zeroinitializer }, align 32
@pxrc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 169, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"couldn't allocate input device\0A\00", [32 x i8] zeroinitializer }, align 32
@pxrc_probe._entry_ptr.9 = internal global ptr @pxrc_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"PXRC Flight Controller Adapter\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"/input0\00", [24 x i8] zeroinitializer }, align 32
@pxrc_usb_irq.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.13, i8 0, i8 11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pxrc_usb_irq\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s - urb timed out - was the device unplugged?\0A\00", [48 x i8] zeroinitializer }, align 32
@pxrc_usb_irq.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.14, i8 0, i8 13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s - urb shutting down with status: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@pxrc_usb_irq.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.15, i8 0, i8 14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s - nonzero urb status received: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@pxrc_usb_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.12, ptr @.str.3, i32 78, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s - usb_submit_urb failed with result: %d\00", [53 x i8] zeroinitializer }, align 32
@pxrc_usb_irq._entry_ptr = internal global ptr @pxrc_usb_irq._entry, section ".printk_index", align 4
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@pxrc_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 91, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s - usb_submit_urb failed, error: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pxrc_open\00", [22 x i8] zeroinitializer }, align 32
@pxrc_open._entry_ptr = internal global ptr @pxrc_open._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967234, i64 4294967264, i64 4294967294]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.21 = private unnamed_addr constant [12 x i8] c"pxrc_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 265, i32 26 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 277, i32 1 }
@___asan_gen_.27 = private unnamed_addr constant [11 x i8] c"pxrc_table\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 259, i32 35 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 137, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 145, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 169, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 173, i32 22 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 176, i32 22 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 42, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 51, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 55, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 76, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 912, i32 31 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private constant [33 x i8] c"../drivers/input/joystick/pxrc.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 89, i32 3 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__exitcall_pxrc_driver_exit, ptr @__initcall__kmod_pxrc__235_277_pxrc_driver_init6, ptr @pxrc_driver_exit, ptr @pxrc_open._entry, ptr @pxrc_open._entry_ptr, ptr @pxrc_probe._entry, ptr @pxrc_probe._entry.7, ptr @pxrc_probe._entry_ptr, ptr @pxrc_probe._entry_ptr.9, ptr @pxrc_usb_irq._entry, ptr @pxrc_usb_irq._entry_ptr, ptr @pxrc_driver, ptr @.str, ptr @pxrc_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @pxrc_probe.__key, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxrc_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxrc_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxrc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxrc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxrc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxrc_usb_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxrc_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pxrc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @pxrc_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pxrc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_deregister(ptr noundef nonnull @pxrc_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxrc_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %epirq = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %epirq) #9
  %2 = ptrtoint ptr %epirq to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %epirq, align 4, !annotation !64
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %3 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cur_altsetting, align 4
  %call1 = call i32 @usb_find_common_endpoints(ptr noundef %4, ptr noundef null, ptr noundef null, ptr noundef nonnull %epirq, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %dev2 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef 172, i32 noundef 3520) #9
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %do.body7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body7:                                         ; preds = %if.end
  %pm_mutex = getelementptr inbounds %struct.pxrc, ptr %call.i, i32 0, i32 3
  call void @__mutex_init(ptr noundef %pm_mutex, ptr noundef nonnull @.str.6, ptr noundef nonnull @pxrc_probe.__key) #9
  %intf10 = getelementptr inbounds %struct.pxrc, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %intf10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %intf, ptr %intf10, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %7 = ptrtoint ptr %epirq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %epirq, align 4
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %wMaxPacketSize.i, align 1
  %11 = and i16 %10, -249
  %12 = call i16 @llvm.bswap.i16(i16 %11) #9
  %and.i = zext i16 %12 to i32
  %call14 = call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef %and.i, i32 noundef 3264) #9
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %do.body7.cleanup_crit_edge, label %if.end17

do.body7.cleanup_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %do.body7
  %call18 = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %urb = getelementptr inbounds %struct.pxrc, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %urb to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call18, ptr %urb, align 4
  %tobool20.not = icmp eq ptr %call18, null
  br i1 %tobool20.not, label %if.end17.cleanup_crit_edge, label %if.end22

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %call.i121 = call i32 @devm_add_action(ptr noundef %dev2, ptr noundef nonnull @pxrc_free_urb, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121)
  %tobool.not.i = icmp eq i32 %call.i121, 0
  %14 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %urb, align 4
  br i1 %tobool.not.i, label %if.end27, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  call void @usb_free_urb(ptr noundef %15) #9
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %16 = ptrtoint ptr %epirq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %epirq, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bEndpointAddress, align 1
  %conv = zext i8 %19 to i32
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %21, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or30 = or i32 %or.i, 1073741952
  %dev1.i = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 8
  %22 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.i, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 10
  %23 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or30, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 14
  %24 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call14, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 19
  %25 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and.i, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 28
  %26 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @pxrc_usb_irq, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 27
  %27 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %context4.i, align 4
  %28 = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 25
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %28, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 23
  %30 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %start_frame.i, align 4
  %call32 = call ptr @devm_input_allocate_device(ptr noundef %dev2) #9
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call32, ptr %call.i, align 4
  %tobool34.not = icmp eq ptr %call32, null
  br i1 %tobool34.not, label %do.end38, label %if.end40

do.end38:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.8) #12
  br label %cleanup

if.end40:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %call32 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.10, ptr %call32, align 8
  %phys = getelementptr inbounds %struct.pxrc, ptr %call.i, i32 0, i32 5
  %bus.i = getelementptr i8, ptr %1, i32 -64
  %33 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr i8, ptr %1, i32 -124
  %call.i122 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 64, ptr noundef nonnull @.str.17, ptr noundef %36, ptr noundef %devpath.i) #9
  %call45 = call i32 @strlcat(ptr noundef %phys, ptr noundef nonnull @.str.11, i32 noundef 64) #9
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 4
  %phys49 = getelementptr inbounds %struct.input_dev, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %phys49 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %phys, ptr %phys49, align 4
  %40 = load ptr, ptr %call.i, align 4
  %id51 = getelementptr inbounds %struct.input_dev, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %id51 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 3, ptr %id51, align 2
  %idVendor.i = getelementptr i8, ptr %1, i32 936
  %42 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %idVendor.i, align 8
  %44 = call i16 @llvm.bswap.i16(i16 %43) #9
  %vendor.i = getelementptr inbounds %struct.input_dev, ptr %40, i32 0, i32 3, i32 1
  %45 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %vendor.i, align 2
  %idProduct.i = getelementptr i8, ptr %1, i32 938
  %46 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %idProduct.i, align 2
  %48 = call i16 @llvm.bswap.i16(i16 %47) #9
  %product.i = getelementptr inbounds %struct.input_dev, ptr %40, i32 0, i32 3, i32 2
  %49 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %product.i, align 2
  %bcdDevice.i = getelementptr i8, ptr %1, i32 940
  %50 = ptrtoint ptr %bcdDevice.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %bcdDevice.i, align 4
  %52 = call i16 @llvm.bswap.i16(i16 %51) #9
  %version.i = getelementptr inbounds %struct.input_dev, ptr %40, i32 0, i32 3, i32 3
  %53 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %version.i, align 2
  %54 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call.i, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %55, i32 0, i32 31
  %56 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @pxrc_open, ptr %open, align 8
  %57 = load ptr, ptr %call.i, align 4
  %close = getelementptr inbounds %struct.input_dev, ptr %57, i32 0, i32 32
  %58 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @pxrc_close, ptr %close, align 4
  %59 = load ptr, ptr %call.i, align 4
  call void @input_set_capability(ptr noundef %59, i32 noundef 1, i32 noundef 304) #9
  %60 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %call.i, align 4
  call void @input_set_abs_params(ptr noundef %61, i32 noundef 0, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #9
  %62 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call.i, align 4
  call void @input_set_abs_params(ptr noundef %63, i32 noundef 1, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #9
  %64 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call.i, align 4
  call void @input_set_abs_params(ptr noundef %65, i32 noundef 3, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #9
  %66 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %call.i, align 4
  call void @input_set_abs_params(ptr noundef %67, i32 noundef 4, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #9
  %68 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call.i, align 4
  call void @input_set_abs_params(ptr noundef %69, i32 noundef 7, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #9
  %70 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %call.i, align 4
  call void @input_set_abs_params(ptr noundef %71, i32 noundef 6, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #9
  %72 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %call.i, align 4
  call void @input_set_abs_params(ptr noundef %73, i32 noundef 40, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #9
  %74 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %call.i, align 4
  %driver_data.i.i123 = getelementptr inbounds %struct.input_dev, ptr %75, i32 0, i32 40, i32 8
  %76 = ptrtoint ptr %driver_data.i.i123 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call.i, ptr %driver_data.i.i123, align 4
  %77 = load ptr, ptr %call.i, align 4
  %call64 = call i32 @input_register_device(ptr noundef %77) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %do.end38, %devm_add_action_or_reset.exit, %if.end17.cleanup_crit_edge, %do.body7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ -12, %do.end38 ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %do.body7.cleanup_crit_edge ], [ -12, %if.end17.cleanup_crit_edge ], [ %call.i121, %devm_add_action_or_reset.exit ], [ %call64, %if.end40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %epirq) #9
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @pxrc_disconnect(ptr nocapture noundef %intf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxrc_suspend(ptr nocapture noundef readonly %intf, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pm_mutex = getelementptr inbounds %struct.pxrc, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %pm_mutex, i32 noundef 0) #9
  %is_open = getelementptr inbounds %struct.pxrc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %is_open to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_open, align 4, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %urb = getelementptr inbounds %struct.pxrc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %urb, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %pm_mutex) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxrc_resume(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pm_mutex = getelementptr inbounds %struct.pxrc, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %pm_mutex, i32 noundef 0) #9
  %is_open = getelementptr inbounds %struct.pxrc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %is_open to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_open, align 4, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %urb = getelementptr inbounds %struct.pxrc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %urb, align 4
  %call2 = tail call i32 @usb_submit_urb(ptr noundef %5, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  %spec.select = select i1 %cmp, i32 -5, i32 0
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %retval1.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  tail call void @mutex_unlock(ptr noundef %pm_mutex) #9
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxrc_reset_resume(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %pm_mutex.i = getelementptr inbounds %struct.pxrc, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %pm_mutex.i, i32 noundef 0) #9
  %is_open.i = getelementptr inbounds %struct.pxrc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %is_open.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_open.i, align 4, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.pxrc_resume.exit_crit_edge, label %land.lhs.true.i

entry.pxrc_resume.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pxrc_resume.exit

land.lhs.true.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %urb.i = getelementptr inbounds %struct.pxrc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %urb.i, align 4
  %call2.i = tail call i32 @usb_submit_urb(ptr noundef %5, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  %spec.select.i = select i1 %cmp.i, i32 -5, i32 0
  br label %pxrc_resume.exit

pxrc_resume.exit:                                 ; preds = %land.lhs.true.i, %entry.pxrc_resume.exit_crit_edge
  %retval1.0.i = phi i32 [ 0, %entry.pxrc_resume.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  tail call void @mutex_unlock(ptr noundef %pm_mutex.i) #9
  ret i32 %retval1.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxrc_pre_reset(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pm_mutex = getelementptr inbounds %struct.pxrc, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %pm_mutex, i32 noundef 0) #9
  %urb = getelementptr inbounds %struct.pxrc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urb, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxrc_post_reset(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %is_open = getelementptr inbounds %struct.pxrc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %is_open to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_open, align 4, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %urb = getelementptr inbounds %struct.pxrc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %urb, align 4
  %call2 = tail call i32 @usb_submit_urb(ptr noundef %5, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  %spec.select = select i1 %cmp, i32 -5, i32 0
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %retval1.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %pm_mutex = getelementptr inbounds %struct.pxrc, ptr %1, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %pm_mutex) #9
  ret i32 %retval1.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_find_common_endpoints(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxrc_free_urb(ptr nocapture noundef readonly %_pxrc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %urb = getelementptr inbounds %struct.pxrc, ptr %_pxrc, i32 0, i32 2
  %0 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %urb, align 4
  tail call void @usb_free_urb(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxrc_usb_irq(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_buffer, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.body23 [
    i32 0, label %sw.epilog
    i32 -62, label %do.body
    i32 -104, label %entry.do.body4_crit_edge
    i32 -2, label %entry.do.body4_crit_edge113
    i32 -108, label %entry.do.body4_crit_edge114
    i32 -32, label %entry.do.body4_crit_edge115
  ]

entry.do.body4_crit_edge115:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body4

entry.do.body4_crit_edge114:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body4

entry.do.body4_crit_edge113:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body4

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body4

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxrc_usb_irq.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxrc_usb_irq, %if.then)) #9
          to label %cleanup [label %if.then], !srcloc !66

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %intf = getelementptr inbounds %struct.pxrc, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %8, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxrc_usb_irq.__UNIQUE_ID_ddebug232, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12) #9
  br label %cleanup

do.body4:                                         ; preds = %entry.do.body4_crit_edge, %entry.do.body4_crit_edge113, %entry.do.body4_crit_edge114, %entry.do.body4_crit_edge115
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxrc_usb_irq.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxrc_usb_irq, %if.then16)) #9
          to label %cleanup [label %if.then16], !srcloc !66

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  %intf17 = getelementptr inbounds %struct.pxrc, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %intf17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %intf17, align 4
  %dev18 = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxrc_usb_irq.__UNIQUE_ID_ddebug233, ptr noundef %dev18, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i32 noundef %12) #9
  br label %cleanup

do.body23:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxrc_usb_irq.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxrc_usb_irq, %if.then35)) #9
          to label %exit [label %if.then35], !srcloc !66

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #11
  %intf36 = getelementptr inbounds %struct.pxrc, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %intf36 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %intf36, align 4
  %dev37 = getelementptr inbounds %struct.usb_interface, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxrc_usb_irq.__UNIQUE_ID_ddebug234, ptr noundef %dev37, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12, i32 noundef %16) #9
  br label %exit

sw.epilog:                                        ; preds = %entry
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %17 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %18)
  %cmp = icmp eq i32 %18, 8
  br i1 %cmp, label %if.then42, label %sw.epilog.exit_crit_edge

sw.epilog.exit_crit_edge:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.then42:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %3, align 1
  %conv = zext i8 %22 to i32
  tail call void @input_event(ptr noundef %20, i32 noundef 3, i32 noundef 0, i32 noundef %conv) #9
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %arrayidx44 = getelementptr i8, ptr %3, i32 2
  %25 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %26 to i32
  tail call void @input_event(ptr noundef %24, i32 noundef 3, i32 noundef 1, i32 noundef %conv45) #9
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %arrayidx47 = getelementptr i8, ptr %3, i32 3
  %29 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx47, align 1
  %conv48 = zext i8 %30 to i32
  tail call void @input_event(ptr noundef %28, i32 noundef 3, i32 noundef 3, i32 noundef %conv48) #9
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %arrayidx50 = getelementptr i8, ptr %3, i32 4
  %33 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx50, align 1
  %conv51 = zext i8 %34 to i32
  tail call void @input_event(ptr noundef %32, i32 noundef 3, i32 noundef 4, i32 noundef %conv51) #9
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %arrayidx53 = getelementptr i8, ptr %3, i32 5
  %37 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %38 to i32
  tail call void @input_event(ptr noundef %36, i32 noundef 3, i32 noundef 7, i32 noundef %conv54) #9
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %arrayidx56 = getelementptr i8, ptr %3, i32 6
  %41 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %42 to i32
  tail call void @input_event(ptr noundef %40, i32 noundef 3, i32 noundef 6, i32 noundef %conv57) #9
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %arrayidx59 = getelementptr i8, ptr %3, i32 7
  %45 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %46 to i32
  tail call void @input_event(ptr noundef %44, i32 noundef 3, i32 noundef 40, i32 noundef %conv60) #9
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %arrayidx62 = getelementptr i8, ptr %3, i32 1
  %49 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx62, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.i = icmp ne i8 %50, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  tail call void @input_event(ptr noundef %48, i32 noundef 1, i32 noundef 304, i32 noundef %lnot.ext.i) #9
  br label %exit

exit:                                             ; preds = %if.then42, %sw.epilog.exit_crit_edge, %if.then35, %do.body23
  %call65 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #9
  %51 = zext i32 %call65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %call65, label %do.end72 [
    i32 0, label %exit.cleanup_crit_edge
    i32 -1, label %exit.cleanup_crit_edge116
  ]

exit.cleanup_crit_edge116:                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end72:                                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #11
  %intf73 = getelementptr inbounds %struct.pxrc, ptr %1, i32 0, i32 1
  %52 = ptrtoint ptr %intf73 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %intf73, align 4
  %dev74 = getelementptr inbounds %struct.usb_interface, ptr %53, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev74, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.12, i32 noundef %call65) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end72, %exit.cleanup_crit_edge, %exit.cleanup_crit_edge116, %if.then16, %do.body4, %if.then, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxrc_open(ptr nocapture noundef readonly %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pm_mutex = getelementptr inbounds %struct.pxrc, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %pm_mutex, i32 noundef 0) #9
  %urb = getelementptr inbounds %struct.pxrc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urb, align 4
  %call2 = tail call i32 @usb_submit_urb(ptr noundef %3, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %intf = getelementptr inbounds %struct.pxrc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef %call2) #12
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %is_open = getelementptr inbounds %struct.pxrc, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %is_open to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %is_open, align 4
  br label %out

out:                                              ; preds = %if.end, %do.end
  %retval1.0 = phi i32 [ -5, %do.end ], [ 0, %if.end ]
  tail call void @mutex_unlock(ptr noundef %pm_mutex) #9
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxrc_close(ptr nocapture noundef readonly %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pm_mutex = getelementptr inbounds %struct.pxrc, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %pm_mutex, i32 noundef 0) #9
  %urb = getelementptr inbounds %struct.pxrc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urb, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #9
  %is_open = getelementptr inbounds %struct.pxrc, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %is_open to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %is_open, align 4
  tail call void @mutex_unlock(ptr noundef %pm_mutex) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !26, !27, !28, !30, !32, !34, !35, !36, !38, !39, !41, !42, !44, !45, !46, !48, !50, !51, !52, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__initcall__kmod_pxrc__235_277_pxrc_driver_init6, !1, !"__initcall__kmod_pxrc__235_277_pxrc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/joystick/pxrc.c", i32 277, i32 1}
!2 = !{ptr @__exitcall_pxrc_driver_exit, !1, !"__exitcall_pxrc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author236, !4, !"__UNIQUE_ID_author236", i1 false, i1 false}
!4 = !{!"../drivers/input/joystick/pxrc.c", i32 279, i32 1}
!5 = !{ptr @__UNIQUE_ID_description237, !6, !"__UNIQUE_ID_description237", i1 false, i1 false}
!6 = !{!"../drivers/input/joystick/pxrc.c", i32 280, i32 1}
!7 = !{ptr @__UNIQUE_ID_file238, !8, !"__UNIQUE_ID_file238", i1 false, i1 false}
!8 = !{!"../drivers/input/joystick/pxrc.c", i32 281, i32 1}
!9 = !{ptr @__UNIQUE_ID_license239, !8, !"__UNIQUE_ID_license239", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @pxrc_driver, !12, !"pxrc_driver", i1 false, i1 false}
!12 = !{!"../drivers/input/joystick/pxrc.c", i32 265, i32 26}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/input/joystick/pxrc.c", i32 137, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @pxrc_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @pxrc_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @pxrc_probe.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/input/joystick/pxrc.c", i32 145, i32 2}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/joystick/pxrc.c", i32 169, i32 3}
!26 = !{ptr @pxrc_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @pxrc_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/joystick/pxrc.c", i32 173, i32 22}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/joystick/pxrc.c", i32 176, i32 22}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/joystick/pxrc.c", i32 42, i32 3}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @pxrc_usb_irq.__UNIQUE_ID_ddebug232, !33, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/joystick/pxrc.c", i32 51, i32 3}
!38 = !{ptr @pxrc_usb_irq.__UNIQUE_ID_ddebug233, !37, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/joystick/pxrc.c", i32 55, i32 3}
!41 = !{ptr @pxrc_usb_irq.__UNIQUE_ID_ddebug234, !40, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/joystick/pxrc.c", i32 76, i32 3}
!44 = !{ptr @pxrc_usb_irq._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @pxrc_usb_irq._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/linux/usb.h", i32 912, i32 31}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/joystick/pxrc.c", i32 89, i32 3}
!50 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @pxrc_open._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @pxrc_open._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @pxrc_table, !54, !"pxrc_table", i1 false, i1 false}
!54 = !{!"../drivers/input/joystick/pxrc.c", i32 259, i32 35}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{!"auto-init"}
!65 = !{i8 0, i8 2}
!66 = !{i64 2148696246, i64 2148696251, i64 2148696264, i64 2148696308, i64 2148696342, i64 2148696363}
