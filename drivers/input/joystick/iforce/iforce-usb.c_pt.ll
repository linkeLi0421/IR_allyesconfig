; ModuleID = '/llk/IR_all_yes/drivers/input/joystick/iforce/iforce-usb.c_pt.bc'
source_filename = "../drivers/input/joystick/iforce/iforce-usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
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
%struct.iforce_xport_ops = type { ptr, ptr, ptr, ptr }
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
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.iforce_usb = type { %struct.iforce, ptr, ptr, ptr, ptr, [120 x i8], [16 x i8], [112 x i8], [16 x i8], [112 x i8] }
%struct.iforce = type { ptr, ptr, ptr, %struct.spinlock, %struct.circ_buf, [256 x i8], [1 x i32], %struct.wait_queue_head, %struct.resource, [32 x %struct.iforce_core_effect], %struct.mutex }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.iforce_core_effect = type { %struct.resource, %struct.resource, [1 x i32] }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"iforce\00", [25 x i8] zeroinitializer }, align 32
@iforce_usb_ids = internal constant { [14 x %struct.usb_device_id], [80 x i8] } { [14 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1103, i16 -24548, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1133, i16 -15743, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1133, i16 -15727, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1519, i16 522, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1519, i16 -30588, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1519, i16 -30584, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1564, i16 -16220, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1564, i16 -16252, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1699, i16 -252, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1784, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1784, i16 3, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1784, i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1784, i16 -23806, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [80 x i8] zeroinitializer }, align 32
@iforce_usb_driver = dso_local global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @iforce_usb_probe, ptr @iforce_usb_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iforce_usb_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_iforce_usb__235_295_iforce_usb_driver_init6 = internal global ptr @iforce_usb_driver_init, section ".initcall6.init", align 4
@__exitcall_iforce_usb_driver_exit = internal global ptr @iforce_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author236 = internal constant [91 x i8] c"iforce_usb.author=Vojtech Pavlik <vojtech@ucw.cz>, Johann Deneux <johann.deneux@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [63 x i8] c"iforce_usb.description=USB I-Force joysticks and wheels driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [57 x i8] c"iforce_usb.file=drivers/input/joystick/iforce/iforce-usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [23 x i8] c"iforce_usb.license=GPL\00", section ".modinfo", align 1
@iforce_usb_xport_ops = internal constant { %struct.iforce_xport_ops, [16 x i8] } { %struct.iforce_xport_ops { ptr @iforce_usb_xmit, ptr @iforce_usb_get_id, ptr @iforce_usb_start_io, ptr @iforce_usb_stop_io }, [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__iforce_usb_xmit._entry = internal constant %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 63, ptr @.str.4, ptr @.str.5 }, align 1
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"usb_submit_urb failed %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__iforce_usb_xmit\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/input/joystick/iforce/iforce-usb.c\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__iforce_usb_xmit._entry_ptr = internal global ptr @__iforce_usb_xmit._entry, section ".printk_index", align 4
@iforce_usb_get_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 98, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"usb_submit_urb failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"iforce_usb_get_id\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@iforce_usb_get_id._entry_ptr = internal global ptr @iforce_usb_get_id._entry, section ".printk_index", align 4
@iforce_usb_irq.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.3, ptr @.str.11, i8 0, i8 38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"iforce_usb\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"iforce_usb_irq\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s - urb shutting down with status: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@iforce_usb_irq.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.3, ptr @.str.12, i8 0, i8 39, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s - urb has status of: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@iforce_usb_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.3, i32 169, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s - usb_submit_urb failed with result %d\0A\00", [53 x i8] zeroinitializer }, align 32
@iforce_usb_irq._entry_ptr = internal global ptr @iforce_usb_irq._entry, section ".printk_index", align 4
@iforce_usb_out.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.14, ptr @.str.3, ptr @.str.15, i8 0, i8 45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"iforce_usb_out\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"urb->status %d, exiting\0A\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 289, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [15 x i8] c"iforce_usb_ids\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 269, i32 35 }
@___asan_gen_.22 = private unnamed_addr constant [18 x i8] c"iforce_usb_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 288, i32 19 }
@___asan_gen_.25 = private unnamed_addr constant [21 x i8] c"iforce_usb_xport_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 131, i32 38 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 62, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 97, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 153, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 157, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 168, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private constant [46 x i8] c"../drivers/input/joystick/iforce/iforce-usb.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 179, i32 3 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__exitcall_iforce_usb_driver_exit, ptr @__iforce_usb_xmit._entry, ptr @__iforce_usb_xmit._entry_ptr, ptr @__initcall__kmod_iforce_usb__235_295_iforce_usb_driver_init6, ptr @iforce_usb_driver_exit, ptr @iforce_usb_get_id._entry, ptr @iforce_usb_get_id._entry_ptr, ptr @iforce_usb_irq._entry, ptr @iforce_usb_irq._entry_ptr, ptr @.str, ptr @iforce_usb_ids, ptr @iforce_usb_driver, ptr @iforce_usb_xport_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iforce_usb_ids to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iforce_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iforce_usb_xport_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iforce_usb_get_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iforce_usb_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iforce_usb_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp = icmp ult i8 %5, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %endpoint, align 4
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bmAttributes.i.i, align 1
  %10 = and i8 %9, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %10)
  %cmp.i.not.i = icmp eq i8 %10, 3
  br i1 %cmp.i.not.i, label %usb_endpoint_is_int_in.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

usb_endpoint_is_int_in.exit:                      ; preds = %if.end
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 2
  %11 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %tobool.not = icmp sgt i8 %12, -1
  br i1 %tobool.not, label %usb_endpoint_is_int_in.exit.cleanup_crit_edge, label %if.end5

usb_endpoint_is_int_in.exit.cleanup_crit_edge:    ; preds = %usb_endpoint_is_int_in.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %usb_endpoint_is_int_in.exit
  %bmAttributes.i.i91 = getelementptr %struct.usb_host_endpoint, ptr %7, i32 1, i32 0, i32 3
  %13 = ptrtoint ptr %bmAttributes.i.i91 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bmAttributes.i.i91, align 1
  %15 = and i8 %14, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %15)
  %cmp.i.not.i92 = icmp eq i8 %15, 3
  br i1 %cmp.i.not.i92, label %usb_endpoint_is_int_out.exit, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

usb_endpoint_is_int_out.exit:                     ; preds = %if.end5
  %bEndpointAddress.i.i93 = getelementptr %struct.usb_host_endpoint, ptr %7, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %bEndpointAddress.i.i93 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bEndpointAddress.i.i93, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool10.not = icmp slt i8 %17, 0
  br i1 %tobool10.not, label %usb_endpoint_is_int_out.exit.cleanup_crit_edge, label %if.end12

usb_endpoint_is_int_out.exit.cleanup_crit_edge:   ; preds = %usb_endpoint_is_int_out.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %usb_endpoint_is_int_out.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 3072) #9
  %tobool14.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %call17 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #6
  %irq = getelementptr inbounds %struct.iforce_usb, ptr %call7.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call17, ptr %irq, align 128
  %tobool19.not = icmp eq ptr %call17, null
  br i1 %tobool19.not, label %if.end16.if.then48_crit_edge, label %if.end21

if.end16.if.then48_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then48

if.end21:                                         ; preds = %if.end16
  %call22 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #6
  %out = getelementptr inbounds %struct.iforce_usb, ptr %call7.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call22, ptr %out, align 4
  %tobool24.not = icmp eq ptr %call22, null
  br i1 %tobool24.not, label %if.end21.if.then48_crit_edge, label %if.end26

if.end21.if.then48_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then48

if.end26:                                         ; preds = %if.end21
  %xport_ops = getelementptr inbounds %struct.iforce, ptr %call7.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %xport_ops to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @iforce_usb_xport_ops, ptr %xport_ops, align 8
  %usbdev = getelementptr inbounds %struct.iforce_usb, ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %usbdev to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.i, ptr %usbdev, align 8
  %intf27 = getelementptr inbounds %struct.iforce_usb, ptr %call7.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %intf27 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %intf, ptr %intf27, align 4
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %irq, align 128
  %26 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bEndpointAddress.i.i, align 1
  %conv29 = zext i8 %27 to i32
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %29, 8
  %shl1.i = shl nuw nsw i32 %conv29, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or31 = or i32 %or.i, 1073741952
  %data_in = getelementptr inbounds %struct.iforce_usb, ptr %call7.i.i, i32 0, i32 6
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 5
  %30 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bInterval, align 1
  %conv32 = zext i8 %31 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 8
  %32 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr.i, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 10
  %33 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or31, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 14
  %34 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %data_in, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 19
  %35 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 16, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 28
  %36 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @iforce_usb_irq, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 27
  %37 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call7.i.i, ptr %context4.i, align 4
  %speed.i = getelementptr i8, ptr %1, i32 -100
  %38 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %39)
  %cmp.i = icmp eq i32 %39, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %39)
  %cmp6.i = icmp ugt i32 %39, 4
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  br i1 %or.cond.i, label %if.then.i, label %if.end26.usb_fill_int_urb.exit_crit_edge

if.end26.usb_fill_int_urb.exit_crit_edge:         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb_fill_int_urb.exit

if.then.i:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %40 = tail call i32 @llvm.smax.i32(i32 %conv32, i32 1) #6
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 16) #6
  %sub.i = add nsw i32 %41, -1
  %shl.i95 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i, %if.end26.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i95, %if.then.i ], [ %conv32, %if.end26.usb_fill_int_urb.exit_crit_edge ]
  %42 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 25
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %interval.sink.i, ptr %42, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 23
  %44 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %start_frame.i, align 4
  %45 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %out, align 4
  %47 = ptrtoint ptr %bEndpointAddress.i.i93 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bEndpointAddress.i.i93, align 1
  %conv35 = zext i8 %48 to i32
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr.i, align 8
  %shl.i96 = shl i32 %50, 8
  %shl1.i97 = shl nuw nsw i32 %conv35, 15
  %or.i98 = or i32 %shl1.i97, %shl.i96
  %or37 = or i32 %or.i98, 1073741824
  %data_out = getelementptr inbounds %struct.iforce_usb, ptr %call7.i.i, i32 0, i32 8
  %bInterval39 = getelementptr %struct.usb_host_endpoint, ptr %7, i32 1, i32 0, i32 5
  %51 = ptrtoint ptr %bInterval39 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bInterval39, align 1
  %conv40 = zext i8 %52 to i32
  %dev1.i99 = getelementptr inbounds %struct.urb, ptr %46, i32 0, i32 8
  %53 = ptrtoint ptr %dev1.i99 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %add.ptr.i, ptr %dev1.i99, align 4
  %pipe2.i100 = getelementptr inbounds %struct.urb, ptr %46, i32 0, i32 10
  %54 = ptrtoint ptr %pipe2.i100 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %or37, ptr %pipe2.i100, align 4
  %transfer_buffer3.i101 = getelementptr inbounds %struct.urb, ptr %46, i32 0, i32 14
  %55 = ptrtoint ptr %transfer_buffer3.i101 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %data_out, ptr %transfer_buffer3.i101, align 4
  %transfer_buffer_length.i102 = getelementptr inbounds %struct.urb, ptr %46, i32 0, i32 19
  %56 = ptrtoint ptr %transfer_buffer_length.i102 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 16, ptr %transfer_buffer_length.i102, align 4
  %complete.i103 = getelementptr inbounds %struct.urb, ptr %46, i32 0, i32 28
  %57 = ptrtoint ptr %complete.i103 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @iforce_usb_out, ptr %complete.i103, align 4
  %context4.i104 = getelementptr inbounds %struct.urb, ptr %46, i32 0, i32 27
  %58 = ptrtoint ptr %context4.i104 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call7.i.i, ptr %context4.i104, align 4
  %59 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %60)
  %cmp.i106 = icmp eq i32 %60, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %60)
  %cmp6.i107 = icmp ugt i32 %60, 4
  %or.cond.i108 = or i1 %cmp.i106, %cmp6.i107
  br i1 %or.cond.i108, label %if.then.i111, label %usb_fill_int_urb.exit.usb_fill_int_urb.exit114_crit_edge

usb_fill_int_urb.exit.usb_fill_int_urb.exit114_crit_edge: ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb_fill_int_urb.exit114

if.then.i111:                                     ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #8
  %61 = tail call i32 @llvm.smax.i32(i32 %conv40, i32 1) #6
  %62 = tail call i32 @llvm.umin.i32(i32 %61, i32 16) #6
  %sub.i109 = add nsw i32 %62, -1
  %shl.i110 = shl nuw nsw i32 1, %sub.i109
  br label %usb_fill_int_urb.exit114

usb_fill_int_urb.exit114:                         ; preds = %if.then.i111, %usb_fill_int_urb.exit.usb_fill_int_urb.exit114_crit_edge
  %interval.sink.i112 = phi i32 [ %shl.i110, %if.then.i111 ], [ %conv40, %usb_fill_int_urb.exit.usb_fill_int_urb.exit114_crit_edge ]
  %63 = getelementptr inbounds %struct.urb, ptr %46, i32 0, i32 25
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %interval.sink.i112, ptr %63, align 4
  %start_frame.i113 = getelementptr inbounds %struct.urb, ptr %46, i32 0, i32 23
  %65 = ptrtoint ptr %start_frame.i113 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %start_frame.i113, align 4
  %dev41 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %call43 = tail call i32 @iforce_init_device(ptr noundef %dev41, i16 noundef zeroext 3, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %usb_fill_int_urb.exit114.if.then48_crit_edge

usb_fill_int_urb.exit114.if.then48_crit_edge:     ; preds = %usb_fill_int_urb.exit114
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then48

if.end46:                                         ; preds = %usb_fill_int_urb.exit114
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %66 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

if.then48:                                        ; preds = %usb_fill_int_urb.exit114.if.then48_crit_edge, %if.end21.if.then48_crit_edge, %if.end16.if.then48_crit_edge
  %err.0.ph = phi i32 [ -12, %if.end16.if.then48_crit_edge ], [ -12, %if.end21.if.then48_crit_edge ], [ %call43, %usb_fill_int_urb.exit114.if.then48_crit_edge ]
  %67 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %irq, align 128
  tail call void @usb_free_urb(ptr noundef %68) #6
  %out50 = getelementptr inbounds %struct.iforce_usb, ptr %call7.i.i, i32 0, i32 4
  %69 = ptrtoint ptr %out50 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %out50, align 4
  tail call void @usb_free_urb(ptr noundef %70) #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %if.end46, %if.end12.cleanup_crit_edge, %usb_endpoint_is_int_out.exit.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %usb_endpoint_is_int_in.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end46 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %usb_endpoint_is_int_in.exit.cleanup_crit_edge ], [ -19, %usb_endpoint_is_int_out.exit.cleanup_crit_edge ], [ %err.0.ph, %if.then48 ], [ -12, %if.end12.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iforce_usb_disconnect(ptr nocapture noundef %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  tail call void @input_unregister_device(ptr noundef %3) #6
  %irq = getelementptr inbounds %struct.iforce_usb, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq, align 128
  tail call void @usb_free_urb(ptr noundef %5) #6
  %out = getelementptr inbounds %struct.iforce_usb, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %out, align 4
  tail call void @usb_free_urb(ptr noundef %7) #6
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @iforce_usb_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @iforce_usb_driver, ptr noundef null, ptr noundef nonnull @.str.9) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @iforce_usb_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_deregister(ptr noundef nonnull @iforce_usb_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iforce_usb_irq(ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %intf = getelementptr inbounds %struct.iforce_usb, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %dev2 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %status3 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status3, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.body7 [
    i32 0, label %sw.epilog
    i32 -104, label %entry.do.body_crit_edge
    i32 -2, label %entry.do.body_crit_edge51
    i32 -108, label %entry.do.body_crit_edge52
  ]

entry.do.body_crit_edge52:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

entry.do.body_crit_edge51:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge51, %entry.do.body_crit_edge52
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iforce_usb_irq.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iforce_usb_irq, %if.then)) #6
          to label %cleanup [label %if.then], !srcloc !57

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %status3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iforce_usb_irq.__UNIQUE_ID_ddebug232, ptr noundef %dev2, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef %8) #6
  br label %cleanup

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iforce_usb_irq.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iforce_usb_irq, %if.then19)) #6
          to label %exit [label %if.then19], !srcloc !57

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %status3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iforce_usb_irq.__UNIQUE_ID_ddebug233, ptr noundef %dev2, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, i32 noundef %10) #6
  br label %exit

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %data_in = getelementptr inbounds %struct.iforce_usb, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %data_in to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %data_in, align 128
  %add.ptr = getelementptr %struct.iforce_usb, ptr %1, i32 0, i32 6, i32 1
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %13 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %actual_length, align 4
  %sub = add i32 %14, -1
  tail call void @iforce_process_packet(ptr noundef %1, i8 noundef zeroext %12, ptr noundef %add.ptr, i32 noundef %sub) #6
  br label %exit

exit:                                             ; preds = %sw.epilog, %if.then19, %do.body7
  %call25 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %exit.cleanup_crit_edge, label %do.end30

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end30:                                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.10, i32 noundef %call25) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %exit.cleanup_crit_edge, %if.then, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iforce_usb_out(ptr nocapture noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %xmit_flags = getelementptr inbounds %struct.iforce, ptr %1, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %xmit_flags) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iforce_usb_out.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iforce_usb_out, %if.then5)) #6
          to label %cleanup [label %if.then5], !srcloc !57

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %intf = getelementptr inbounds %struct.iforce_usb, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iforce_usb_out.__UNIQUE_ID_ddebug234, ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %7) #6
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @__iforce_usb_xmit(ptr noundef %1)
  %wait = getelementptr inbounds %struct.iforce, ptr %1, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iforce_init_device(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iforce_usb_xmit(ptr noundef %iforce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %xmit_flags = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 6
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %xmit_flags) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @__iforce_usb_xmit(ptr noundef %iforce)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iforce_usb_get_id(ptr nocapture noundef readonly %iforce, i8 noundef zeroext %id, ptr nocapture noundef writeonly %response_data, ptr nocapture noundef writeonly %response_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 16) #9
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %usbdev = getelementptr inbounds %struct.iforce_usb, ptr %iforce, i32 0, i32 1
  %1 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %usbdev, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %shl.i = shl i32 %4, 8
  %or3 = or i32 %shl.i, -2147483520
  %call4 = tail call i32 @usb_control_msg(ptr noundef %2, i32 noundef %or3, i8 noundef zeroext %id, i8 noundef zeroext -63, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 16, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %intf = getelementptr inbounds %struct.iforce_usb, ptr %iforce, i32 0, i32 2
  %5 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %6, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %call4) #10
  br label %if.end12

if.else:                                          ; preds = %if.end
  %7 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %id)
  %cmp7.not = icmp eq i8 %8, %id
  br i1 %cmp7.not, label %if.else10, label %if.else.if.end12_crit_edge

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %9 = call ptr @memcpy(ptr %response_data, ptr %call7.i, i32 %call4)
  %10 = ptrtoint ptr %response_len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call4, ptr %response_len, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else10, %if.else.if.end12_crit_edge, %do.end
  %status.0 = phi i32 [ %call4, %do.end ], [ 0, %if.else10 ], [ -5, %if.else.if.end12_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %if.end12 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iforce_usb_start_io(ptr nocapture noundef readonly %iforce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.iforce_usb, ptr %iforce, i32 0, i32 3
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irq, align 128
  %call = tail call i32 @usb_submit_urb(ptr noundef %1, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %. = select i1 %tobool.not, i32 0, i32 -5
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iforce_usb_stop_io(ptr nocapture noundef readonly %iforce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.iforce_usb, ptr %iforce, i32 0, i32 3
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irq, align 128
  tail call void @usb_kill_urb(ptr noundef %1) #6
  %out = getelementptr inbounds %struct.iforce_usb, ptr %iforce, i32 0, i32 4
  %2 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %out, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__iforce_usb_xmit(ptr noundef %iforce) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %xmit_lock = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %xmit_lock) #6
  %xmit = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 4
  %head = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp7 = icmp eq i32 %1, %3
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %xmit_flags = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %xmit_flags) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %xmit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xmit, align 4
  %arrayidx = getelementptr i8, ptr %5, i32 %3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %out = getelementptr inbounds %struct.iforce_usb, ptr %iforce, i32 0, i32 4
  %8 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %out, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %transfer_buffer, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %7, ptr %11, align 1
  %13 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tail, align 4
  %add = add i32 %14, 1
  %and = and i32 %add, 255
  store i32 %and, ptr %tail, align 4
  %15 = load ptr, ptr %xmit, align 4
  %arrayidx22 = getelementptr i8, ptr %15, i32 %and
  %16 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %17 to i32
  %add26 = add i32 %14, 2
  %and29 = and i32 %add26, 255
  store i32 %and29, ptr %tail, align 4
  %add30 = add nuw nsw i32 %conv23, 1
  %18 = load ptr, ptr %out, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %18, i32 0, i32 19
  %19 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add30, ptr %transfer_buffer_length, align 4
  %usbdev = getelementptr inbounds %struct.iforce_usb, ptr %iforce, i32 0, i32 1
  %20 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usbdev, align 8
  %22 = load ptr, ptr %out, align 4
  %dev = getelementptr inbounds %struct.urb, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %dev, align 4
  %24 = load i32, ptr %tail, align 4
  %sub = sub i32 256, %24
  %25 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %head, align 4
  %add38 = add i32 %26, %sub
  %and39 = and i32 %add38, 255
  %27 = tail call i32 @llvm.smin.i32(i32 %and39, i32 %sub)
  %28 = tail call i32 @llvm.smin.i32(i32 %27, i32 %conv23)
  %29 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %out, align 4
  %transfer_buffer48 = getelementptr inbounds %struct.urb, ptr %30, i32 0, i32 14
  %31 = ptrtoint ptr %transfer_buffer48 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %transfer_buffer48, align 4
  %add.ptr49 = getelementptr i8, ptr %32, i32 1
  %33 = ptrtoint ptr %xmit to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %xmit, align 4
  %arrayidx54 = getelementptr i8, ptr %34, i32 %24
  %35 = call ptr @memcpy(ptr %add.ptr49, ptr %arrayidx54, i32 %28)
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %conv23)
  %cmp55.not.not = icmp slt i32 %27, %conv23
  br i1 %cmp55.not.not, label %if.then57, label %if.end.if.end66_crit_edge

if.end.if.end66_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.then57:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %out, align 4
  %transfer_buffer59 = getelementptr inbounds %struct.urb, ptr %37, i32 0, i32 14
  %38 = ptrtoint ptr %transfer_buffer59 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %transfer_buffer59, align 4
  %add.ptr60 = getelementptr i8, ptr %39, i32 1
  %add.ptr61 = getelementptr i8, ptr %add.ptr60, i32 %28
  %40 = ptrtoint ptr %xmit to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %xmit, align 4
  %sub65 = sub i32 %conv23, %28
  %42 = call ptr @memcpy(ptr %add.ptr61, ptr %41, i32 %sub65)
  br label %if.end66

if.end66:                                         ; preds = %if.then57, %if.end.if.end66_crit_edge
  %43 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tail, align 4
  %add69 = add i32 %44, %conv23
  %and72 = and i32 %add69, 255
  store i32 %and72, ptr %tail, align 4
  %45 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %out, align 4
  %call74 = tail call i32 @usb_submit_urb(ptr noundef %46, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool.not = icmp eq i32 %call74, 0
  br i1 %tobool.not, label %if.end66.cleanup_crit_edge, label %if.then75

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then75:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  %xmit_flags76 = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %xmit_flags76) #6
  %intf = getelementptr inbounds %struct.iforce_usb, ptr %iforce, i32 0, i32 2
  %47 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %intf, align 4
  %dev81 = getelementptr inbounds %struct.usb_interface, ptr %48, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev81, ptr noundef nonnull @.str.1, i32 noundef %call74) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then75, %if.end66.cleanup_crit_edge, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %xmit_lock, i32 noundef %call3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iforce_process_packet(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !40, !41, !42, !44, !45, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/input/joystick/iforce/iforce-usb.c", i32 289, i32 11}
!2 = !{ptr @iforce_usb_driver, !3, !"iforce_usb_driver", i1 false, i1 false}
!3 = !{!"../drivers/input/joystick/iforce/iforce-usb.c", i32 288, i32 19}
!4 = !{ptr @__initcall__kmod_iforce_usb__235_295_iforce_usb_driver_init6, !5, !"__initcall__kmod_iforce_usb__235_295_iforce_usb_driver_init6", i1 false, i1 false}
!5 = !{!"../drivers/input/joystick/iforce/iforce-usb.c", i32 295, i32 1}
!6 = !{ptr @__exitcall_iforce_usb_driver_exit, !5, !"__exitcall_iforce_usb_driver_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author236, !8, !"__UNIQUE_ID_author236", i1 false, i1 false}
!8 = !{!"../drivers/input/joystick/iforce/iforce-usb.c", i32 297, i32 1}
!9 = !{ptr @__UNIQUE_ID_description237, !10, !"__UNIQUE_ID_description237", i1 false, i1 false}
!10 = !{!"../drivers/input/joystick/iforce/iforce-usb.c", i32 298, i32 1}
!11 = !{ptr @__UNIQUE_ID_file238, !12, !"__UNIQUE_ID_file238", i1 false, i1 false}
!12 = !{!"../drivers/input/joystick/iforce/iforce-usb.c", i32 299, i32 1}
!13 = !{ptr @__UNIQUE_ID_license239, !12, !"__UNIQUE_ID_license239", i1 false, i1 false}
!14 = !{ptr @iforce_usb_xport_ops, !15, !"iforce_usb_xport_ops", i1 false, i1 false}
!15 = !{!"../drivers/input/joystick/iforce/iforce-usb.c", i32 131, i32 38}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/joystick/iforce/iforce-usb.c", i32 62, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @__iforce_usb_xmit._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @__iforce_usb_xmit._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/joystick/iforce/iforce-usb.c", i32 97, i32 3}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @iforce_usb_get_id._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @iforce_usb_get_id._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/joystick/iforce/iforce-usb.c", i32 153, i32 3}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @iforce_usb_irq.__UNIQUE_ID_ddebug232, !31, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/joystick/iforce/iforce-usb.c", i32 157, i32 3}
!37 = !{ptr @iforce_usb_irq.__UNIQUE_ID_ddebug233, !36, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/joystick/iforce/iforce-usb.c", i32 168, i32 3}
!40 = !{ptr @iforce_usb_irq._entry, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @iforce_usb_irq._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/joystick/iforce/iforce-usb.c", i32 179, i32 3}
!44 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @iforce_usb_out.__UNIQUE_ID_ddebug234, !43, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!46 = !{ptr @iforce_usb_ids, !47, !"iforce_usb_ids", i1 false, i1 false}
!47 = !{!"../drivers/input/joystick/iforce/iforce-usb.c", i32 269, i32 35}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 2148939632, i64 2148939637, i64 2148939650, i64 2148939694, i64 2148939728, i64 2148939749}
