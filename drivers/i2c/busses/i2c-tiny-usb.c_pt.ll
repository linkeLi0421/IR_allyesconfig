; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-tiny-usb.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-tiny-usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
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
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.i2c_tiny_usb = type { ptr, ptr, %struct.i2c_adapter }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_delay = internal constant [19 x i8] c"i2c_tiny_usb.delay\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@delay = internal global { i16, [30 x i8] } { i16 10, [30 x i8] zeroinitializer }, align 32
@__param_delay = internal constant %struct.kernel_param { ptr @__param_str_delay, ptr null, ptr @param_ops_ushort, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @delay } }, section "__param", align 4
@__UNIQUE_ID_delaytype293 = internal constant [35 x i8] c"i2c_tiny_usb.parmtype=delay:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_delay294 = internal constant [83 x i8] c"i2c_tiny_usb.parm=delay:bit delay in microseconds (default is 10us for 100kHz max)\00", section ".modinfo", align 1
@__initcall__kmod_i2c_tiny_usb__300_297_i2c_tiny_usb_driver_init6 = internal global ptr @i2c_tiny_usb_driver_init, section ".initcall6.init", align 4
@i2c_tiny_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @i2c_tiny_usb_probe, ptr @i2c_tiny_usb_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @i2c_tiny_usb_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_i2c_tiny_usb_driver_exit = internal global ptr @i2c_tiny_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author301 = internal constant [52 x i8] c"i2c_tiny_usb.author=Till Harbaum <Till@Harbaum.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description302 = internal constant [50 x i8] c"i2c_tiny_usb.description=i2c-tiny-usb driver v1.0\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [50 x i8] c"i2c_tiny_usb.file=drivers/i2c/busses/i2c-tiny-usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [25 x i8] c"i2c_tiny_usb.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i2c_tiny_usb\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i2c-tiny-usb\00", [19 x i8] zeroinitializer }, align 32
@i2c_tiny_usb_table = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1027, i16 -14799, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7232, i16 1332, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@i2c_tiny_usb_probe.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 56, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"i2c_tiny_usb_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/i2c/busses/i2c-tiny-usb.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"probing usb device\0A\00", [44 x i8] zeroinitializer }, align 32
@i2c_tiny_usb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 230, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Out of memory\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@i2c_tiny_usb_probe._entry_ptr = internal global ptr @i2c_tiny_usb_probe._entry, section ".printk_index", align 4
@i2c_tiny_usb_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 244, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"version %x.%02x found at bus %03d address %03d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@i2c_tiny_usb_probe._entry_ptr.11 = internal global ptr @i2c_tiny_usb_probe._entry.8, section ".printk_index", align 4
@usb_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @usb_xfer, ptr null, ptr null, ptr null, ptr @usb_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"i2c-tiny-usb at bus %03d device %03d\00", [59 x i8] zeroinitializer }, align 32
@i2c_tiny_usb_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 257, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failure setting delay to %dus\0A\00", [33 x i8] zeroinitializer }, align 32
@i2c_tiny_usb_probe._entry_ptr.15 = internal global ptr @i2c_tiny_usb_probe._entry.13, section ".printk_index", align 4
@i2c_tiny_usb_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 268, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"connected i2c-tiny-usb device\0A\00", [33 x i8] zeroinitializer }, align 32
@i2c_tiny_usb_probe._entry_ptr.18 = internal global ptr @i2c_tiny_usb_probe._entry.16, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@usb_xfer.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 0, i8 14, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb_xfer\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"master xfer %d messages:\0A\00", [38 x i8] zeroinitializer }, align 32
@usb_xfer.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.3, ptr @.str.21, i8 0, i8 19, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"  %d: %s (flags %d) %d bytes to 0x%02x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@usb_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.3, i32 86, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failure reading data\0A\00", [42 x i8] zeroinitializer }, align 32
@usb_xfer._entry_ptr = internal global ptr @usb_xfer._entry, section ".printk_index", align 4
@usb_xfer._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.19, ptr @.str.3, i32 96, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failure writing data\0A\00", [42 x i8] zeroinitializer }, align 32
@usb_xfer._entry_ptr.27 = internal global ptr @usb_xfer._entry.25, section ".printk_index", align 4
@usb_xfer._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.19, ptr @.str.3, i32 104, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failure reading status\0A\00", [40 x i8] zeroinitializer }, align 32
@usb_xfer._entry_ptr.30 = internal global ptr @usb_xfer._entry.28, section ".printk_index", align 4
@usb_xfer.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.3, ptr @.str.31, i8 0, i8 27, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"  status = %d\0A\00", [17 x i8] zeroinitializer }, align 32
@usb_func._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 132, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failure reading functionality\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb_func\00", [23 x i8] zeroinitializer }, align 32
@usb_func._entry_ptr = internal global ptr @usb_func._entry, section ".printk_index", align 4
@i2c_tiny_usb_disconnect.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.3, ptr @.str.35, i8 0, i8 71, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"i2c_tiny_usb_disconnect\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"disconnected\0A\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.36 = private unnamed_addr constant [6 x i8] c"delay\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 34, i32 23 }
@___asan_gen_.39 = private unnamed_addr constant [20 x i8] c"i2c_tiny_usb_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 290, i32 26 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 297, i32 1 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 291, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [19 x i8] c"i2c_tiny_usb_table\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 158, i32 35 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 225, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 230, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 241, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [14 x i8] c"usb_algorithm\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 144, i32 35 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 252, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 256, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 268, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 57, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 74, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 85, i32 5 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 95, i32 5 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 104, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 109, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 132, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.148 = private constant [37 x i8] c"../drivers/i2c/busses/i2c-tiny-usb.c\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 287, i32 2 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_delay294, ptr @__UNIQUE_ID_delaytype293, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_license304, ptr @__exitcall_i2c_tiny_usb_driver_exit, ptr @__initcall__kmod_i2c_tiny_usb__300_297_i2c_tiny_usb_driver_init6, ptr @__param_delay, ptr @i2c_tiny_usb_driver_exit, ptr @i2c_tiny_usb_probe._entry, ptr @i2c_tiny_usb_probe._entry.13, ptr @i2c_tiny_usb_probe._entry.16, ptr @i2c_tiny_usb_probe._entry.8, ptr @i2c_tiny_usb_probe._entry_ptr, ptr @i2c_tiny_usb_probe._entry_ptr.11, ptr @i2c_tiny_usb_probe._entry_ptr.15, ptr @i2c_tiny_usb_probe._entry_ptr.18, ptr @usb_func._entry, ptr @usb_func._entry_ptr, ptr @usb_xfer._entry, ptr @usb_xfer._entry.25, ptr @usb_xfer._entry.28, ptr @usb_xfer._entry_ptr, ptr @usb_xfer._entry_ptr.27, ptr @usb_xfer._entry_ptr.30, ptr @delay, ptr @i2c_tiny_usb_driver, ptr @.str, ptr @.str.1, ptr @i2c_tiny_usb_table, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @usb_algorithm, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delay to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_tiny_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_tiny_usb_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_tiny_usb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_tiny_usb_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_tiny_usb_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_tiny_usb_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_xfer._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_xfer._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_func._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_tiny_usb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @i2c_tiny_usb_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @i2c_tiny_usb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_deregister(ptr noundef nonnull @i2c_tiny_usb_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_tiny_usb_probe(ptr noundef %interface, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_tiny_usb_probe.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_tiny_usb_probe, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev5 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_tiny_usb_probe.__UNIQUE_ID_ddebug298, ptr noundef %dev5, ptr noundef nonnull @.str.4) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1368) #11
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %error.thread, label %if.end12

error.thread:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev11 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.5) #12
  br label %cleanup

if.end12:                                         ; preds = %do.end
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %1 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 -128
  %call14 = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i) #8
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call14, ptr %call7.i.i, align 8
  %interface15 = getelementptr inbounds %struct.i2c_tiny_usb, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %interface15 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %interface, ptr %interface15, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %bcdDevice = getelementptr inbounds %struct.usb_device, ptr %call14, i32 0, i32 16, i32 9
  %6 = ptrtoint ptr %bcdDevice to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %bcdDevice, align 4
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %dev20 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  %conv = zext i16 %8 to i32
  %9 = lshr i32 %conv, 8
  %and = and i32 %conv, 255
  %bus = getelementptr inbounds %struct.usb_device, ptr %call14, i32 0, i32 12
  %10 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus, align 8
  %busnum = getelementptr inbounds %struct.usb_bus, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %busnum to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %busnum, align 4
  %14 = ptrtoint ptr %call14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call14, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev20, ptr noundef nonnull @.str.9, i32 noundef %9, i32 noundef %and, i32 noundef %13, i32 noundef %15) #12
  %adapter = getelementptr inbounds %struct.i2c_tiny_usb, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %adapter, align 8
  %class = getelementptr inbounds %struct.i2c_tiny_usb, ptr %call7.i.i, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %class, align 4
  %algo = getelementptr inbounds %struct.i2c_tiny_usb, ptr %call7.i.i, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @usb_algorithm, ptr %algo, align 8
  %algo_data = getelementptr inbounds %struct.i2c_tiny_usb, ptr %call7.i.i, i32 0, i32 2, i32 3
  %19 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %algo_data, align 4
  %name = getelementptr inbounds %struct.i2c_tiny_usb, ptr %call7.i.i, i32 0, i32 2, i32 12
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call7.i.i, align 8
  %bus29 = getelementptr inbounds %struct.usb_device, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %bus29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus29, align 8
  %busnum30 = getelementptr inbounds %struct.usb_bus, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %busnum30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %busnum30, align 4
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %21, align 8
  %call33 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 48, ptr noundef nonnull @.str.12, i32 noundef %25, i32 noundef %27)
  %28 = load i16, ptr @delay, align 2
  %29 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %algo_data, align 4
  %call.i = tail call ptr @kmemdup(ptr noundef null, i32 noundef 0, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end12.if.then59_crit_edge, label %usb_write.exit

if.end12.if.then59_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then59

usb_write.exit:                                   ; preds = %if.end12
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 8
  %shl.i.i = shl i32 %34, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call6.i = tail call i32 @usb_control_msg(ptr noundef %32, i32 noundef %or.i, i8 noundef zeroext 2, i8 noundef zeroext 65, i16 noundef zeroext %28, i16 noundef zeroext 0, ptr noundef nonnull %call.i, i16 noundef zeroext 0, i32 noundef 2000) #8
  tail call void @kfree(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp37.not = icmp eq i32 %call6.i, 0
  br i1 %cmp37.not, label %if.end46, label %usb_write.exit.if.then59_crit_edge

usb_write.exit.if.then59_crit_edge:               ; preds = %usb_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then59

if.end46:                                         ; preds = %usb_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %interface15 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %interface15, align 4
  %dev48 = getelementptr inbounds %struct.usb_interface, ptr %36, i32 0, i32 7
  %dev50 = getelementptr inbounds %struct.i2c_tiny_usb, ptr %call7.i.i, i32 0, i32 2, i32 9
  %parent = getelementptr inbounds %struct.i2c_tiny_usb, ptr %call7.i.i, i32 0, i32 2, i32 9, i32 1
  %37 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %dev48, ptr %parent, align 8
  %call52 = tail call i32 @i2c_add_adapter(ptr noundef %adapter) #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev50, ptr noundef nonnull @.str.17) #12
  br label %cleanup

if.then59:                                        ; preds = %usb_write.exit.if.then59_crit_edge, %if.end12.if.then59_crit_edge
  %dev44 = getelementptr inbounds %struct.i2c_tiny_usb, ptr %call7.i.i, i32 0, i32 2, i32 9
  %38 = load i16, ptr @delay, align 2
  %conv45 = zext i16 %38 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev44, ptr noundef nonnull @.str.14, i32 noundef %conv45) #12
  %39 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call7.i.i, align 8
  tail call void @usb_put_dev(ptr noundef %40) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %if.end46, %error.thread
  %retval.0 = phi i32 [ 0, %if.end46 ], [ -5, %if.then59 ], [ -12, %error.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i2c_tiny_usb_disconnect(ptr noundef %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %adapter = getelementptr inbounds %struct.i2c_tiny_usb, ptr %1, i32 0, i32 2
  tail call void @i2c_del_adapter(ptr noundef %adapter) #8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  tail call void @usb_put_dev(ptr noundef %4) #8
  tail call void @kfree(ptr noundef %1) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_tiny_usb_disconnect.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_tiny_usb_disconnect, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev5 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_tiny_usb_disconnect.__UNIQUE_ID_ddebug299, ptr noundef %dev5, ptr noundef nonnull @.str.35) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_xfer(ptr noundef %adapter, ptr nocapture noundef readonly %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_xfer.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@usb_xfer, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_xfer.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %num) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 1) #11
  %tobool5.not = icmp eq ptr %call7.i, null
  br i1 %tobool5.not, label %do.end.cleanup114_crit_edge, label %for.cond.preheader

do.end.cleanup114_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup114

for.cond.preheader:                               ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp200 = icmp sgt i32 %num, 0
  br i1 %cmp200, label %for.body.lr.ph, label %for.cond.preheader.out_crit_edge

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sub = add nsw i32 %num, -1
  %dev30 = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9
  %algo_data.i = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0201 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0201)
  %cmp8 = icmp eq i32 %i.0201, 0
  %spec.select = select i1 %cmp8, i32 5, i32 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0201, i32 %sub)
  %cmp11 = icmp eq i32 %i.0201, %sub
  %or13 = or i32 %spec.select, 2
  %cmd.1 = select i1 %cmp11, i32 %or13, i32 %spec.select
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0201
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_xfer.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@usb_xfer, %do.end38)) #8
          to label %if.then29 [label %do.end38], !srcloc !95

if.then29:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0201, i32 1
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %flags, align 2
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool31.not, ptr @.str.23, ptr @.str.22
  %len = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0201, i32 2
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %len, align 4
  %conv34 = zext i16 %4 to i32
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 4
  %conv35 = zext i16 %6 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_xfer.__UNIQUE_ID_ddebug296, ptr noundef %dev30, ptr noundef nonnull @.str.21, i32 noundef %i.0201, ptr noundef nonnull %cond, i32 noundef %conv, i32 noundef %conv34, i32 noundef %conv35) #8
  br label %do.end38

do.end38:                                         ; preds = %if.then29, %for.body
  %flags39 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0201, i32 1
  %7 = ptrtoint ptr %flags39 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %flags39, align 2
  %9 = and i16 %8, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool42.not = icmp eq i16 %9, 0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 4
  %buf65 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0201, i32 3
  %12 = ptrtoint ptr %buf65 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buf65, align 4
  %len66 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0201, i32 2
  %14 = ptrtoint ptr %len66 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %len66, align 4
  %conv67 = zext i16 %15 to i32
  %16 = ptrtoint ptr %algo_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %algo_data.i, align 4
  br i1 %tobool42.not, label %if.else, label %if.end8.i.i

if.end8.i.i:                                      ; preds = %do.end38
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv67, i32 noundef 3264) #13
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.out.sink.split_crit_edge, label %usb_read.exit

if.end8.i.i.out.sink.split_crit_edge:             ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.sink.split

usb_read.exit:                                    ; preds = %if.end8.i.i
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %shl.i.i = shl i32 %21, 8
  %or3.i = or i32 %shl.i.i, -2147483520
  %conv.i = trunc i32 %cmd.1 to i8
  %call7.i161 = tail call i32 @usb_control_msg(ptr noundef %19, i32 noundef %or3.i, i8 noundef zeroext %conv.i, i8 noundef zeroext -63, i16 noundef zeroext %8, i16 noundef zeroext %11, ptr noundef nonnull %call9.i.i, i16 noundef zeroext %15, i32 noundef 2000) #8
  %22 = call ptr @memcpy(ptr %13, ptr %call9.i.i, i32 %conv67)
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #8
  %23 = ptrtoint ptr %len66 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %len66, align 4
  %conv52 = zext i16 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i161, i32 %conv52)
  %cmp53.not = icmp eq i32 %call7.i161, %conv52
  br i1 %cmp53.not, label %usb_read.exit.if.end79_crit_edge, label %usb_read.exit.out.sink.split_crit_edge

usb_read.exit.out.sink.split_crit_edge:           ; preds = %usb_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.sink.split

usb_read.exit.if.end79_crit_edge:                 ; preds = %usb_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.else:                                          ; preds = %do.end38
  %call.i = tail call ptr @kmemdup(ptr noundef %13, i32 noundef %conv67, i32 noundef 3264) #8
  %tobool.not.i164 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i164, label %if.else.out.sink.split_crit_edge, label %usb_write.exit

if.else.out.sink.split_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.sink.split

usb_write.exit:                                   ; preds = %if.else
  %25 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %17, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  %shl.i.i165 = shl i32 %28, 8
  %or.i = or i32 %shl.i.i165, -2147483648
  %conv.i166 = trunc i32 %cmd.1 to i8
  %call6.i = tail call i32 @usb_control_msg(ptr noundef %26, i32 noundef %or.i, i8 noundef zeroext %conv.i166, i8 noundef zeroext 65, i16 noundef zeroext %8, i16 noundef zeroext %11, ptr noundef nonnull %call.i, i16 noundef zeroext %15, i32 noundef 2000) #8
  tail call void @kfree(ptr noundef nonnull %call.i) #8
  %29 = ptrtoint ptr %len66 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %len66, align 4
  %conv70 = zext i16 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i, i32 %conv70)
  %cmp71.not = icmp eq i32 %call6.i, %conv70
  br i1 %cmp71.not, label %usb_write.exit.if.end79_crit_edge, label %usb_write.exit.out.sink.split_crit_edge

usb_write.exit.out.sink.split_crit_edge:          ; preds = %usb_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.sink.split

usb_write.exit.if.end79_crit_edge:                ; preds = %usb_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.end79:                                         ; preds = %usb_write.exit.if.end79_crit_edge, %usb_read.exit.if.end79_crit_edge
  %31 = ptrtoint ptr %algo_data.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %algo_data.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i175 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3264, i32 noundef 1) #11
  %tobool.not.i178 = icmp eq ptr %call7.i.i175, null
  br i1 %tobool.not.i178, label %if.end79.out.sink.split_crit_edge, label %usb_read.exit186

if.end79.out.sink.split_crit_edge:                ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.sink.split

usb_read.exit186:                                 ; preds = %if.end79
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %32, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 8
  %shl.i.i181 = shl i32 %37, 8
  %or3.i182 = or i32 %shl.i.i181, -2147483520
  %call7.i183 = tail call i32 @usb_control_msg(ptr noundef %35, i32 noundef %or3.i182, i8 noundef zeroext 3, i8 noundef zeroext -63, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i175, i16 noundef zeroext 1, i32 noundef 2000) #8
  %38 = ptrtoint ptr %call7.i.i175 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %call7.i.i175, align 8
  %40 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %call7.i, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i175) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i183)
  %cmp81.not = icmp eq i32 %call7.i183, 1
  br i1 %cmp81.not, label %do.body89, label %usb_read.exit186.out.sink.split_crit_edge

usb_read.exit186.out.sink.split_crit_edge:        ; preds = %usb_read.exit186
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.sink.split

do.body89:                                        ; preds = %usb_read.exit186
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_xfer.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@usb_xfer, %do.end108)) #8
          to label %if.then103 [label %do.end108], !srcloc !95

if.then103:                                       ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %call7.i, align 8
  %conv105 = zext i8 %42 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_xfer.__UNIQUE_ID_ddebug297, ptr noundef %dev30, ptr noundef nonnull @.str.31, i32 noundef %conv105) #8
  br label %do.end108

do.end108:                                        ; preds = %if.then103, %do.body89
  %43 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %44)
  %cmp110 = icmp eq i8 %44, 2
  br i1 %cmp110, label %do.end108.out_crit_edge, label %for.inc

do.end108.out_crit_edge:                          ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.inc:                                          ; preds = %do.end108
  %inc = add nuw nsw i32 %i.0201, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out.sink.split:                                   ; preds = %usb_read.exit186.out.sink.split_crit_edge, %if.end79.out.sink.split_crit_edge, %usb_write.exit.out.sink.split_crit_edge, %if.else.out.sink.split_crit_edge, %usb_read.exit.out.sink.split_crit_edge, %if.end8.i.i.out.sink.split_crit_edge
  %.str.26.sink = phi ptr [ @.str.24, %if.end8.i.i.out.sink.split_crit_edge ], [ @.str.24, %usb_read.exit.out.sink.split_crit_edge ], [ @.str.26, %if.else.out.sink.split_crit_edge ], [ @.str.26, %usb_write.exit.out.sink.split_crit_edge ], [ @.str.29, %if.end79.out.sink.split_crit_edge ], [ @.str.29, %usb_read.exit186.out.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef nonnull %.str.26.sink) #12
  br label %out

out:                                              ; preds = %out.sink.split, %for.inc.out_crit_edge, %do.end108.out_crit_edge, %for.cond.preheader.out_crit_edge
  %ret.2 = phi i32 [ 0, %for.cond.preheader.out_crit_edge ], [ -5, %out.sink.split ], [ %num, %for.inc.out_crit_edge ], [ -6, %do.end108.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup114

cleanup114:                                       ; preds = %out, %do.end.cleanup114_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out ], [ -12, %do.end.cleanup114_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_func(ptr noundef %adapter) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %algo_data.i = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 3
  %1 = ptrtoint ptr %algo_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %algo_data.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 4) #11
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %lor.lhs.false.do.end_crit_edge, label %usb_read.exit

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

usb_read.exit:                                    ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %2, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i.i = shl i32 %7, 8
  %or3.i = or i32 %shl.i.i, -2147483520
  %call7.i7 = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or3.i, i8 noundef zeroext 1, i8 noundef zeroext -63, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 4, i32 noundef 2000) #8
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call7.i.i, align 8
  %10 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %call7.i, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call7.i7)
  %cmp.not = icmp eq i32 %call7.i7, 4
  br i1 %cmp.not, label %if.end, label %usb_read.exit.do.end_crit_edge

usb_read.exit.do.end_crit_edge:                   ; preds = %usb_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %usb_read.exit.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32) #12
  br label %out

if.end:                                           ; preds = %usb_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call7.i, align 8
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  br label %out

out:                                              ; preds = %if.end, %do.end
  %ret.0 = phi i32 [ 0, %do.end ], [ %13, %if.end ]
  tail call void @kfree(ptr noundef %call7.i) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !18, !19, !21, !23, !25, !26, !27, !28, !30, !31, !32, !33, !34, !36, !37, !38, !39, !41, !43, !44, !45, !47, !48, !49, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !77, !78, !79, !80, !82, !83, !84}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @__param_delay, !1, !"__param_delay", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-tiny-usb.c", i32 35, i32 1}
!2 = !{ptr @__UNIQUE_ID_delaytype293, !1, !"__UNIQUE_ID_delaytype293", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_delay294, !4, !"__UNIQUE_ID_delay294", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-tiny-usb.c", i32 36, i32 1}
!5 = !{ptr @__initcall__kmod_i2c_tiny_usb__300_297_i2c_tiny_usb_driver_init6, !6, !"__initcall__kmod_i2c_tiny_usb__300_297_i2c_tiny_usb_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-tiny-usb.c", i32 297, i32 1}
!7 = !{ptr @__exitcall_i2c_tiny_usb_driver_exit, !6, !"__exitcall_i2c_tiny_usb_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author301, !9, !"__UNIQUE_ID_author301", i1 false, i1 false}
!9 = !{!"../drivers/i2c/busses/i2c-tiny-usb.c", i32 301, i32 1}
!10 = !{ptr @__UNIQUE_ID_description302, !11, !"__UNIQUE_ID_description302", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-tiny-usb.c", i32 302, i32 1}
!12 = !{ptr @__UNIQUE_ID_file303, !13, !"__UNIQUE_ID_file303", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-tiny-usb.c", i32 303, i32 1}
!14 = !{ptr @__UNIQUE_ID_license304, !13, !"__UNIQUE_ID_license304", i1 false, i1 false}
!15 = !{ptr @__param_str_delay, !1, !"__param_str_delay", i1 false, i1 false}
!16 = !{ptr @delay, !17, !"delay", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-tiny-usb.c", i32 34, i32 23}
!18 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/i2c/busses/i2c-tiny-usb.c", i32 291, i32 11}
!21 = !{ptr @i2c_tiny_usb_driver, !22, !"i2c_tiny_usb_driver", i1 false, i1 false}
!22 = !{!"../drivers/i2c/busses/i2c-tiny-usb.c", i32 290, i32 26}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/i2c/busses/i2c-tiny-usb.c", i32 225, i32 2}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @i2c_tiny_usb_probe.__UNIQUE_ID_ddebug298, !24, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/i2c/busses/i2c-tiny-usb.c", i32 230, i32 3}
!30 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @i2c_tiny_usb_probe._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @i2c_tiny_usb_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/i2c/busses/i2c-tiny-usb.c", i32 241, i32 2}
!36 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @i2c_tiny_usb_probe._entry.8, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @i2c_tiny_usb_probe._entry_ptr.11, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/i2c/busses/i2c-tiny-usb.c", i32 252, i32 4}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/i2c/busses/i2c-tiny-usb.c", i32 256, i32 3}
!43 = !{ptr @i2c_tiny_usb_probe._entry.13, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @i2c_tiny_usb_probe._entry_ptr.15, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/i2c/busses/i2c-tiny-usb.c", i32 268, i32 2}
!47 = !{ptr @i2c_tiny_usb_probe._entry.16, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @i2c_tiny_usb_probe._entry_ptr.18, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @usb_algorithm, !50, !"usb_algorithm", i1 false, i1 false}
!50 = !{!"../drivers/i2c/busses/i2c-tiny-usb.c", i32 144, i32 35}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/i2c/busses/i2c-tiny-usb.c", i32 57, i32 2}
!53 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @usb_xfer.__UNIQUE_ID_ddebug295, !52, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/i2c/busses/i2c-tiny-usb.c", i32 74, i32 3}
!57 = !{ptr @usb_xfer.__UNIQUE_ID_ddebug296, !56, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!58 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/i2c/busses/i2c-tiny-usb.c", i32 85, i32 5}
!62 = !{ptr @usb_xfer._entry, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @usb_xfer._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/i2c/busses/i2c-tiny-usb.c", i32 95, i32 5}
!66 = !{ptr @usb_xfer._entry.25, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @usb_xfer._entry_ptr.27, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/i2c/busses/i2c-tiny-usb.c", i32 104, i32 4}
!70 = !{ptr @usb_xfer._entry.28, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @usb_xfer._entry_ptr.30, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/i2c/busses/i2c-tiny-usb.c", i32 109, i32 3}
!74 = !{ptr @usb_xfer.__UNIQUE_ID_ddebug297, !73, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/i2c/busses/i2c-tiny-usb.c", i32 132, i32 3}
!77 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @usb_func._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @usb_func._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/i2c/busses/i2c-tiny-usb.c", i32 287, i32 2}
!82 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @i2c_tiny_usb_disconnect.__UNIQUE_ID_ddebug299, !81, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!84 = !{ptr @i2c_tiny_usb_table, !85, !"i2c_tiny_usb_table", i1 false, i1 false}
!85 = !{!"../drivers/i2c/busses/i2c-tiny-usb.c", i32 158, i32 35}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{i64 2148697489, i64 2148697494, i64 2148697507, i64 2148697551, i64 2148697585, i64 2148697606}
