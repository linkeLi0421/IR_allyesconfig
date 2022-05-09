; ModuleID = '/llk/IR_all_yes/drivers/media/rc/imon_raw.c_pt.bc'
source_filename = "../drivers/media/rc/imon_raw.c"
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
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.imon = type { ptr, ptr, ptr, i64, [64 x i8] }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.ir_raw_event = type { %union.anon.73, i8, i8 }
%union.anon.73 = type { i32 }

@__initcall__kmod_imon_raw__240_204_imon_driver_init6 = internal global ptr @imon_driver_init, section ".initcall6.init", align 4
@imon_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @imon_probe, ptr @imon_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imon_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_imon_driver_exit = internal global ptr @imon_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description241 = internal constant [47 x i8] c"imon_raw.description=Early raw iMON IR devices\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [43 x i8] c"imon_raw.author=Sean Young <sean@mess.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [40 x i8] c"imon_raw.file=drivers/media/rc/imon_raw\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [21 x i8] c"imon_raw.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"imon_raw\00", [23 x i8] zeroinitializer }, align 32
@imon_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1256, i16 -208, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@imon_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 128, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IR endpoint missing\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"imon_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/rc/imon_raw.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imon_probe._entry_ptr = internal global ptr @imon_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"iMON Station\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rc-imon-rsc\00", [20 x i8] zeroinitializer }, align 32
@imon_ir_rx.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.3, ptr @.str.9, i8 0, i8 24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"imon_ir_rx\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"error: urb status = %d\00", [41 x i8] zeroinitializer }, align 32
@imon_ir_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.3, i32 102, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to resubmit urb: %d\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@imon_ir_rx._entry_ptr = internal global ptr @imon_ir_rx._entry, section ".printk_index", align 4
@imon_ir_data.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.13, i8 0, i8 10, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"imon_ir_data\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"data: %*ph\00", [21 x i8] zeroinitializer }, align 32
@imon_ir_data.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.14, i8 0, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: %d bits\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pulse\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"space\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@___asan_gen_.19 = private unnamed_addr constant [12 x i8] c"imon_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 197, i32 26 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 204, i32 1 }
@___asan_gen_.25 = private unnamed_addr constant [11 x i8] c"imon_table\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 191, i32 35 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 128, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 154, i32 23 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 160, i32 20 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 96, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 102, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 40, i32 2 }
@___asan_gen_.80 = private constant [31 x i8] c"../drivers/media/rc/imon_raw.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 63, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 912, i32 31 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_imon_driver_exit, ptr @__initcall__kmod_imon_raw__240_204_imon_driver_init6, ptr @imon_driver_exit, ptr @imon_ir_rx._entry, ptr @imon_ir_rx._entry_ptr, ptr @imon_probe._entry, ptr @imon_probe._entry_ptr, ptr @imon_driver, ptr @.str, ptr @imon_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_ir_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imon_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @imon_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imon_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_deregister(ptr noundef nonnull @imon_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imon_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
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
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp100.not = icmp eq i8 %5, 0
  br i1 %cmp100.not, label %entry.do.end_crit_edge, label %for.body.lr.ph

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.body.lr.ph:                                   ; preds = %entry
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %endpoint, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0101 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.usb_host_endpoint, ptr %7, i32 %i.0101
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %8 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bmAttributes.i.i, align 1
  %10 = and i8 %9, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %10)
  %cmp.i.not.i = icmp eq i8 %10, 3
  br i1 %cmp.i.not.i, label %usb_endpoint_is_int_in.exit, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

usb_endpoint_is_int_in.exit:                      ; preds = %for.body
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %11 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %tobool.not = icmp sgt i8 %12, -1
  br i1 %tobool.not, label %usb_endpoint_is_int_in.exit.for.inc_crit_edge, label %for.end

usb_endpoint_is_int_in.exit.for.inc_crit_edge:    ; preds = %usb_endpoint_is_int_in.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %usb_endpoint_is_int_in.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0101, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.end:                                          ; preds = %usb_endpoint_is_int_in.exit
  %tobool4.not = icmp eq ptr %arrayidx, null
  br i1 %tobool4.not, label %for.end.do.end_crit_edge, label %if.end6

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %for.inc.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup46

if.end6:                                          ; preds = %for.end
  %dev7 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %call8 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev7, i32 noundef 88, i32 noundef 3264) #7
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end6.cleanup46_crit_edge, label %if.end11

if.end6.cleanup46_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup46

if.end11:                                         ; preds = %if.end6
  %call12 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #7
  %ir_urb = getelementptr inbounds %struct.imon, ptr %call8, i32 0, i32 1
  %13 = ptrtoint ptr %ir_urb to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call12, ptr %ir_urb, align 4
  %tobool14.not = icmp eq ptr %call12, null
  br i1 %tobool14.not, label %if.end11.cleanup46_crit_edge, label %if.end16

if.end11.cleanup46_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup46

if.end16:                                         ; preds = %if.end11
  %14 = ptrtoint ptr %call8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev7, ptr %call8, align 8
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %15 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bEndpointAddress, align 1
  %conv20 = zext i8 %16 to i32
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %18, 8
  %shl1.i = shl nuw nsw i32 %conv20, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or22 = or i32 %or.i, 1073741952
  %ir_buf = getelementptr inbounds %struct.imon, ptr %call8, i32 0, i32 3
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 5
  %19 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bInterval, align 1
  %conv23 = zext i8 %20 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call12, i32 0, i32 8
  %21 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr.i, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call12, i32 0, i32 10
  %22 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or22, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call12, i32 0, i32 14
  %23 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %ir_buf, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call12, i32 0, i32 19
  %24 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 8, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call12, i32 0, i32 28
  %25 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @imon_ir_rx, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call12, i32 0, i32 27
  %26 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call8, ptr %context4.i, align 4
  %speed.i = getelementptr i8, ptr %1, i32 -100
  %27 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %cmp.i = icmp eq i32 %28, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %28)
  %cmp6.i = icmp ugt i32 %28, 4
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  br i1 %or.cond.i, label %if.then.i, label %if.end16.usb_fill_int_urb.exit_crit_edge

if.end16.usb_fill_int_urb.exit_crit_edge:         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %usb_fill_int_urb.exit

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %29 = tail call i32 @llvm.smax.i32(i32 %conv23, i32 1) #7
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 16) #7
  %sub.i = add nsw i32 %30, -1
  %shl.i96 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i, %if.end16.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i96, %if.then.i ], [ %conv23, %if.end16.usb_fill_int_urb.exit_crit_edge ]
  %31 = getelementptr inbounds %struct.urb, ptr %call12, i32 0, i32 25
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %interval.sink.i, ptr %31, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %call12, i32 0, i32 23
  %33 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %start_frame.i, align 4
  %call25 = tail call ptr @devm_rc_allocate_device(ptr noundef %dev7, i32 noundef 1) #7
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %usb_fill_int_urb.exit.free_urb_crit_edge, label %if.end28

usb_fill_int_urb.exit.free_urb_crit_edge:         ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_urb

if.end28:                                         ; preds = %usb_fill_int_urb.exit
  %phys = getelementptr inbounds %struct.imon, ptr %call8, i32 0, i32 4
  %bus.i = getelementptr i8, ptr %1, i32 -64
  %34 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr i8, ptr %1, i32 -124
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 64, ptr noundef nonnull @.str.17, ptr noundef %37, ptr noundef %devpath.i) #7
  %device_name = getelementptr inbounds %struct.rc_dev, ptr %call25, i32 0, i32 3
  %38 = ptrtoint ptr %device_name to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.6, ptr %device_name, align 8
  %driver_name = getelementptr inbounds %struct.rc_dev, ptr %call25, i32 0, i32 6
  %39 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str, ptr %driver_name, align 8
  %input_phys = getelementptr inbounds %struct.rc_dev, ptr %call25, i32 0, i32 4
  %40 = ptrtoint ptr %input_phys to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %phys, ptr %input_phys, align 4
  %input_id = getelementptr inbounds %struct.rc_dev, ptr %call25, i32 0, i32 5
  %41 = ptrtoint ptr %input_id to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 3, ptr %input_id, align 2
  %idVendor.i = getelementptr i8, ptr %1, i32 936
  %42 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %idVendor.i, align 8
  %44 = tail call i16 @llvm.bswap.i16(i16 %43) #7
  %vendor.i = getelementptr inbounds %struct.rc_dev, ptr %call25, i32 0, i32 5, i32 1
  %45 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %vendor.i, align 2
  %idProduct.i = getelementptr i8, ptr %1, i32 938
  %46 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %idProduct.i, align 2
  %48 = tail call i16 @llvm.bswap.i16(i16 %47) #7
  %product.i = getelementptr inbounds %struct.rc_dev, ptr %call25, i32 0, i32 5, i32 2
  %49 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %product.i, align 2
  %bcdDevice.i = getelementptr i8, ptr %1, i32 940
  %50 = ptrtoint ptr %bcdDevice.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %bcdDevice.i, align 4
  %52 = tail call i16 @llvm.bswap.i16(i16 %51) #7
  %version.i = getelementptr inbounds %struct.rc_dev, ptr %call25, i32 0, i32 5, i32 3
  %53 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %version.i, align 2
  %parent = getelementptr inbounds %struct.device, ptr %call25, i32 0, i32 1
  %54 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %dev7, ptr %parent, align 8
  %allowed_protocols = getelementptr inbounds %struct.rc_dev, ptr %call25, i32 0, i32 16
  %55 = ptrtoint ptr %allowed_protocols to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 130023420, ptr %allowed_protocols, align 8
  %map_name = getelementptr inbounds %struct.rc_dev, ptr %call25, i32 0, i32 7
  %56 = ptrtoint ptr %map_name to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.7, ptr %map_name, align 4
  %rx_resolution = getelementptr inbounds %struct.rc_dev, ptr %call25, i32 0, i32 37
  %57 = ptrtoint ptr %rx_resolution to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 250, ptr %rx_resolution, align 8
  %priv = getelementptr inbounds %struct.rc_dev, ptr %call25, i32 0, i32 24
  %58 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call8, ptr %priv, align 4
  %call35 = tail call i32 @devm_rc_register_device(ptr noundef %dev7, ptr noundef nonnull %call25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end28.free_urb_crit_edge

if.end28.free_urb_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_urb

if.end38:                                         ; preds = %if.end28
  %rcdev39 = getelementptr inbounds %struct.imon, ptr %call8, i32 0, i32 2
  %59 = ptrtoint ptr %rcdev39 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call25, ptr %rcdev39, align 8
  %60 = ptrtoint ptr %ir_urb to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ir_urb, align 4
  %call41 = tail call i32 @usb_submit_urb(ptr noundef %61, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end38.free_urb_crit_edge

if.end38.free_urb_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_urb

if.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %62 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call8, ptr %driver_data.i.i, align 4
  br label %cleanup46

free_urb:                                         ; preds = %if.end38.free_urb_crit_edge, %if.end28.free_urb_crit_edge, %usb_fill_int_urb.exit.free_urb_crit_edge
  %ret.0 = phi i32 [ %call35, %if.end28.free_urb_crit_edge ], [ %call41, %if.end38.free_urb_crit_edge ], [ -12, %usb_fill_int_urb.exit.free_urb_crit_edge ]
  %63 = ptrtoint ptr %ir_urb to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ir_urb, align 4
  tail call void @usb_free_urb(ptr noundef %64) #7
  br label %cleanup46

cleanup46:                                        ; preds = %free_urb, %if.end44, %if.end11.cleanup46_crit_edge, %if.end6.cleanup46_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.0, %free_urb ], [ 0, %if.end44 ], [ -19, %do.end ], [ -12, %if.end6.cleanup46_crit_edge ], [ -12, %if.end11.cleanup46_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imon_disconnect(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ir_urb = getelementptr inbounds %struct.imon, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ir_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ir_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #7
  %4 = ptrtoint ptr %ir_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ir_urb, align 4
  tail call void @usb_free_urb(ptr noundef %5) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imon_ir_rx(ptr noundef %urb) #2 align 64 {
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
  switch i32 %3, label %do.body [
    i32 0, label %sw.bb
    i32 -104, label %entry.sw.bb1_crit_edge
    i32 -2, label %entry.sw.bb1_crit_edge25
    i32 -108, label %entry.sw.bb1_crit_edge26
  ]

entry.sw.bb1_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @imon_ir_data(ptr noundef %1)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge25, %entry.sw.bb1_crit_edge26
  %call = tail call i32 @usb_unlink_urb(ptr noundef %urb) #7
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imon_ir_rx.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imon_ir_rx, %if.then)) #7
          to label %sw.epilog [label %if.then], !srcloc !56

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imon_ir_rx.__UNIQUE_ID_ddebug239, ptr noundef %6, ptr noundef nonnull @.str.9, i32 noundef %8) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %do.body, %sw.bb
  %call7 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #7
  %9 = zext i32 %call7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %call7, label %do.end12 [
    i32 0, label %sw.epilog.cleanup_crit_edge
    i32 -19, label %sw.epilog.cleanup_crit_edge27
  ]

sw.epilog.cleanup_crit_edge27:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end12:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.10, i32 noundef %call7) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %sw.epilog.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge27, %sw.bb1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rc_allocate_device(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_rc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @imon_ir_data(ptr noundef %imon) unnamed_addr #2 align 64 {
entry:
  %rawir = alloca %struct.ir_raw_event, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rawir) #7
  %0 = ptrtoint ptr %rawir to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %rawir, align 8
  %ir_buf = getelementptr inbounds %struct.imon, ptr %imon, i32 0, i32 3
  %1 = ptrtoint ptr %ir_buf to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %ir_buf, align 8
  %conv = trunc i64 %2 to i32
  %conv1 = and i32 %conv, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %conv1)
  %cmp = icmp eq i32 %conv1, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imon_ir_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imon_ir_data, %if.then5)) #7
          to label %do.end [label %if.then5], !srcloc !56

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %imon to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %imon, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imon_ir_data.__UNIQUE_ID_ddebug237, ptr noundef %4, ptr noundef nonnull @.str.13, i32 noundef 8, ptr noundef %ir_buf) #7
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %shr = lshr i64 %2, 24
  %pulse = getelementptr inbounds %struct.ir_raw_event, ptr %rawir, i32 0, i32 2
  %rcdev = getelementptr inbounds %struct.imon, ptr %imon, i32 0, i32 2
  br label %do.body8

do.body8:                                         ; preds = %if.end44.do.body8_crit_edge, %do.end
  %offset.0 = phi i32 [ 40, %do.end ], [ %offset.1, %if.end44.do.body8_crit_edge ]
  %data.0 = phi i64 [ %shr, %do.end ], [ %neg, %if.end44.do.body8_crit_edge ]
  %5 = ptrtoint ptr %pulse to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %pulse, align 1
  %bf.set = xor i8 %bf.load, -128
  store i8 %bf.set, ptr %pulse, align 1
  %sh_prom = zext i32 %offset.0 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  %and14 = and i64 %data.0, %sub
  %shr.i = lshr i64 %and14, 32
  %conv.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  %6 = call i32 @llvm.ctlz.i32(i32 %conv.i, i1 true) #7, !range !57
  %add.i = sub nuw nsw i32 64, %6
  br label %fls64.exit

if.end.i:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  %conv1.i = trunc i64 %and14 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i)
  %tobool.not.i5.i = icmp eq i32 %conv1.i, 0
  %7 = call i32 @llvm.ctlz.i32(i32 %conv1.i, i1 true) #7, !range !57
  %sub.i6.i = sub nuw nsw i32 32, %7
  %cond.i7.i = select i1 %tobool.not.i5.i, i32 0, i32 %sub.i6.i
  br label %fls64.exit

fls64.exit:                                       ; preds = %if.end.i, %if.then.i
  %retval.0.i80 = phi i32 [ %add.i, %if.then.i ], [ %cond.i7.i, %if.end.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.0, i32 %retval.0.i80)
  %cmp16 = icmp ugt i32 %offset.0, %retval.0.i80
  br i1 %cmp16, label %do.body19, label %fls64.exit.if.end44_crit_edge

fls64.exit.if.end44_crit_edge:                    ; preds = %fls64.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

do.body19:                                        ; preds = %fls64.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imon_ir_data.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imon_ir_data, %if.then31)) #7
          to label %do.end41 [label %if.then31], !srcloc !56

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %imon to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %imon, align 8
  %10 = ptrtoint ptr %pulse to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load34 = load i8, ptr %pulse, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load34)
  %tobool37.not = icmp sgt i8 %bf.load34, -1
  %cond = select i1 %tobool37.not, ptr @.str.16, ptr @.str.15
  %sub38 = sub nsw i32 %offset.0, %retval.0.i80
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imon_ir_data.__UNIQUE_ID_ddebug238, ptr noundef %9, ptr noundef nonnull @.str.14, ptr noundef nonnull %cond, i32 noundef %sub38) #7
  br label %do.end41

do.end41:                                         ; preds = %if.then31, %do.body19
  %sub42 = sub nsw i32 %offset.0, %retval.0.i80
  %mul = mul i32 %sub42, 250
  %11 = ptrtoint ptr %rawir to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul, ptr %rawir, align 8
  %12 = ptrtoint ptr %rcdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rcdev, align 8
  %call43 = call i32 @ir_raw_event_store_with_filter(ptr noundef %13, ptr noundef nonnull %rawir) #7
  br label %if.end44

if.end44:                                         ; preds = %do.end41, %fls64.exit.if.end44_crit_edge
  %offset.1 = phi i32 [ %retval.0.i80, %do.end41 ], [ %offset.0, %fls64.exit.if.end44_crit_edge ]
  %neg = xor i64 %data.0, -1
  %cmp46 = icmp sgt i32 %offset.1, 0
  br i1 %cmp46, label %if.end44.do.body8_crit_edge, label %do.end48

if.end44.do.body8_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body8

do.end48:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %conv1)
  %cmp50 = icmp eq i32 %conv1, 10
  br i1 %cmp50, label %land.lhs.true, label %do.end48.cleanup_crit_edge

do.end48.cleanup_crit_edge:                       ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %do.end48
  %14 = ptrtoint ptr %rcdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rcdev, align 8
  %idle = getelementptr inbounds %struct.rc_dev, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %idle to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %idle, align 8, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool53.not = icmp eq i8 %17, 0
  br i1 %tobool53.not, label %if.then54, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then54:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call void @ir_raw_event_set_idle(ptr noundef %15, i1 noundef zeroext true) #7
  %18 = ptrtoint ptr %rcdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rcdev, align 8
  call void @ir_raw_event_handle(ptr noundef %19) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then54, %land.lhs.true.cleanup_crit_edge, %do.end48.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rawir) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_event_store_with_filter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ir_raw_event_set_idle(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ir_raw_event_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @__initcall__kmod_imon_raw__240_204_imon_driver_init6, !1, !"__initcall__kmod_imon_raw__240_204_imon_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/imon_raw.c", i32 204, i32 1}
!2 = !{ptr @__exitcall_imon_driver_exit, !1, !"__exitcall_imon_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description241, !4, !"__UNIQUE_ID_description241", i1 false, i1 false}
!4 = !{!"../drivers/media/rc/imon_raw.c", i32 206, i32 1}
!5 = !{ptr @__UNIQUE_ID_author242, !6, !"__UNIQUE_ID_author242", i1 false, i1 false}
!6 = !{!"../drivers/media/rc/imon_raw.c", i32 207, i32 1}
!7 = !{ptr @__UNIQUE_ID_file243, !8, !"__UNIQUE_ID_file243", i1 false, i1 false}
!8 = !{!"../drivers/media/rc/imon_raw.c", i32 208, i32 1}
!9 = !{ptr @__UNIQUE_ID_license244, !8, !"__UNIQUE_ID_license244", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @imon_driver, !12, !"imon_driver", i1 false, i1 false}
!12 = !{!"../drivers/media/rc/imon_raw.c", i32 197, i32 26}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/rc/imon_raw.c", i32 128, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @imon_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @imon_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/rc/imon_raw.c", i32 154, i32 23}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/rc/imon_raw.c", i32 160, i32 20}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/rc/imon_raw.c", i32 96, i32 3}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @imon_ir_rx.__UNIQUE_ID_ddebug239, !26, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/rc/imon_raw.c", i32 102, i32 3}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @imon_ir_rx._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @imon_ir_rx._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/rc/imon_raw.c", i32 40, i32 2}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @imon_ir_data.__UNIQUE_ID_ddebug237, !35, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/rc/imon_raw.c", i32 63, i32 4}
!40 = !{ptr @imon_ir_data.__UNIQUE_ID_ddebug238, !39, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!41 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/usb.h", i32 912, i32 31}
!45 = !{ptr @imon_table, !46, !"imon_table", i1 false, i1 false}
!46 = !{!"../drivers/media/rc/imon_raw.c", i32 191, i32 35}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i64 2148956236, i64 2148956241, i64 2148956254, i64 2148956298, i64 2148956332, i64 2148956353}
!57 = !{i32 0, i32 33}
!58 = !{i8 0, i8 2}
