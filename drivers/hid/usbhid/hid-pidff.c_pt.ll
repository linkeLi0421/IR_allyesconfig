; ModuleID = '/llk/IR_all_yes/drivers/hid/usbhid/hid-pidff.c_pt.bc'
source_filename = "../drivers/hid/usbhid/hid-pidff.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hid_input = type { %struct.list_head, ptr, ptr, ptr, i8, %struct.list_head, i32 }
%struct.pidff_device = type { ptr, [13 x ptr], [7 x %struct.pidff_usage], [5 x %struct.pidff_usage], [8 x %struct.pidff_usage], [5 x %struct.pidff_usage], [2 x %struct.pidff_usage], [3 x %struct.pidff_usage], [1 x %struct.pidff_usage], [2 x %struct.pidff_usage], [3 x %struct.pidff_usage], [2 x %struct.pidff_usage], [1 x %struct.pidff_usage], ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32], [11 x i32], [2 x i32], [2 x i32], [64 x i32] }
%struct.pidff_usage = type { ptr, ptr }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }
%struct.hid_usage = type { i32, i32, i32, i8, i8, i16, i8, i8, i8, i8, i16 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.ff_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i32], %struct.mutex, i32, ptr, [0 x ptr] }
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.hid_collection = type { i32, i32, i32, i32 }
%struct.hid_ll_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }
%struct.ff_envelope = type { i16, i16, i16, i16 }
%struct.ff_condition_effect = type { i16, i16, i16, i16, i16, i16 }

@hid_pidff_init.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usbhid\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hid_pidff_init\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/hid/usbhid/hid-pidff.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"starting pid init\0A\00", [45 x i8] zeroinitializer }, align 32
@hid_pidff_init.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 1, i8 53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"not a PID device, no output report\0A\00", [60 x i8] zeroinitializer }, align 32
@hid_pidff_init.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 1, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reports not ok, aborting\0A\00", [38 x i8] zeroinitializer }, align 32
@hid_pidff_init.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 1, i8 64, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max effects is %d\0A\00", [45 x i8] zeroinitializer }, align 32
@hid_pidff_init.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 1, i8 65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"max simultaneous effects is %d\0A\00", [32 x i8] zeroinitializer }, align 32
@hid_pidff_init.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 1, i8 66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"device memory size is %d bytes\0A\00", [32 x i8] zeroinitializer }, align 32
@hid_pidff_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 1297, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"device does not support device managed pool\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hid_pidff_init._entry_ptr = internal global ptr @hid_pidff_init._entry, section ".printk_index", align 4
@hid_pidff_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 1313, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"Force feedback for USB HID PID devices by Anssi Hannula <anssi.hannula@gmail.com>\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@hid_pidff_init._entry_ptr.15 = internal global ptr @hid_pidff_init._entry.12, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@hid_device_io_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.18, i32 963, ptr @.str.19, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"io already started\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hid_device_io_start\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/hid.h\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hid_device_io_start._entry_ptr = internal global ptr @hid_device_io_start._entry, section ".printk_index", align 4
@pidff_find_reports.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 -50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pidff_find_reports\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"found usage 0x%02x from field->logical\0A\00", [56 x i8] zeroinitializer }, align 32
@pidff_reports = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"!w}\7F\89\90\96\ABZ_nst", [19 x i8] zeroinitializer }, align 32
@pidff_find_reports.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.22, i8 0, i8 -45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"found usage 0x%02x from collection array\0A\00", [54 x i8] zeroinitializer }, align 32
@pidff_reports_ok.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 -41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pidff_reports_ok\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%d missing\0A\00", [20 x i8] zeroinitializer }, align 32
@pidff_set_effect = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\22PRSTV\A7", [25 x i8] zeroinitializer }, align 32
@pidff_init_fields._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 1068, ptr @.str.27, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unknown set_effect report layout\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pidff_init_fields\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@pidff_init_fields._entry_ptr = internal global ptr @pidff_init_fields._entry, section ".printk_index", align 4
@pidff_block_load = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\22\AC", [30 x i8] zeroinitializer }, align 32
@pidff_init_fields._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.26, ptr @.str.2, i32 1074, ptr @.str.27, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unknown pid_block_load report layout\0A\00", [58 x i8] zeroinitializer }, align 32
@pidff_init_fields._entry_ptr.30 = internal global ptr @pidff_init_fields._entry.28, section ".printk_index", align 4
@pidff_effect_operation = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\22|", [30 x i8] zeroinitializer }, align 32
@pidff_init_fields._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.26, ptr @.str.2, i32 1079, ptr @.str.27, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"unknown effect_operation report layout\0A\00", [56 x i8] zeroinitializer }, align 32
@pidff_init_fields._entry_ptr.33 = internal global ptr @pidff_init_fields._entry.31, section ".printk_index", align 4
@pidff_block_free = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\22", [31 x i8] zeroinitializer }, align 32
@pidff_init_fields._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.26, ptr @.str.2, i32 1084, ptr @.str.27, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unknown pid_block_free report layout\0A\00", [58 x i8] zeroinitializer }, align 32
@pidff_init_fields._entry_ptr.36 = internal global ptr @pidff_init_fields._entry.34, section ".printk_index", align 4
@pidff_set_envelope = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\22[\\]^", [27 x i8] zeroinitializer }, align 32
@pidff_init_fields._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.26, ptr @.str.2, i32 1097, ptr @.str.19, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"has constant effect but no envelope\0A\00", [59 x i8] zeroinitializer }, align 32
@pidff_init_fields._entry_ptr.39 = internal global ptr @pidff_init_fields._entry.37, section ".printk_index", align 4
@pidff_init_fields._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.26, ptr @.str.2, i32 1100, ptr @.str.19, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"has ramp effect but no envelope\0A\00", [63 x i8] zeroinitializer }, align 32
@pidff_init_fields._entry_ptr.42 = internal global ptr @pidff_init_fields._entry.40, section ".printk_index", align 4
@pidff_init_fields._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.26, ptr @.str.2, i32 1104, ptr @.str.19, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"has periodic effect but no envelope\0A\00", [59 x i8] zeroinitializer }, align 32
@pidff_init_fields._entry_ptr.45 = internal global ptr @pidff_init_fields._entry.43, section ".printk_index", align 4
@pidff_set_constant = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\22p", [30 x i8] zeroinitializer }, align 32
@pidff_init_fields._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.26, ptr @.str.2, i32 1109, ptr @.str.19, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unknown constant effect layout\0A\00", [32 x i8] zeroinitializer }, align 32
@pidff_init_fields._entry_ptr.48 = internal global ptr @pidff_init_fields._entry.46, section ".printk_index", align 4
@pidff_set_ramp = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\22uv", [29 x i8] zeroinitializer }, align 32
@pidff_init_fields._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.26, ptr @.str.2, i32 1115, ptr @.str.19, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unknown ramp effect layout\0A\00", [36 x i8] zeroinitializer }, align 32
@pidff_init_fields._entry_ptr.51 = internal global ptr @pidff_init_fields._entry.49, section ".printk_index", align 4
@pidff_set_condition = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\22#`abcde", [24 x i8] zeroinitializer }, align 32
@pidff_init_fields._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.26, ptr @.str.2, i32 1124, ptr @.str.19, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unknown condition effect layout\0A\00", [63 x i8] zeroinitializer }, align 32
@pidff_init_fields._entry_ptr.54 = internal global ptr @pidff_init_fields._entry.52, section ".printk_index", align 4
@pidff_set_periodic = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\22poqr", [27 x i8] zeroinitializer }, align 32
@pidff_init_fields._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.26, ptr @.str.2, i32 1133, ptr @.str.19, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unknown periodic effect layout\0A\00", [32 x i8] zeroinitializer }, align 32
@pidff_init_fields._entry_ptr.57 = internal global ptr @pidff_init_fields._entry.55, section ".printk_index", align 4
@pidff_pool = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\80\83\A9", [29 x i8] zeroinitializer }, align 32
@pidff_device_gain = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"~", [31 x i8] zeroinitializer }, align 32
@pidff_find_fields.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.59, i8 0, i8 -64, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pidff_find_fields\00", [46 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"maxusage and report_count do not match, skipping\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"usbhid: maxusage and report_count do not match, skipping\0A\00", [38 x i8] zeroinitializer }, align 32
@pidff_find_fields.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.61, i8 0, i8 -63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"found %d at %d->%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"usbhid: found %d at %d->%d\0A\00", [36 x i8] zeroinitializer }, align 32
@pidff_find_fields.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.63, i8 0, i8 -60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to locate %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"usbhid: failed to locate %d\0A\00", [35 x i8] zeroinitializer }, align 32
@pidff_find_special_fields.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.66, i8 0, i8 -26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pidff_find_special_fields\00", [38 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"finding special fields\0A\00", [40 x i8] zeroinitializer }, align 32
@pidff_find_special_fields.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.67, i8 0, i8 -21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"search done\0A\00", [19 x i8] zeroinitializer }, align 32
@pidff_find_special_fields._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.65, ptr @.str.2, i32 946, ptr @.str.27, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"effect lists not found\0A\00", [40 x i8] zeroinitializer }, align 32
@pidff_find_special_fields._entry_ptr = internal global ptr @pidff_find_special_fields._entry, section ".printk_index", align 4
@pidff_find_special_fields._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.65, ptr @.str.2, i32 951, ptr @.str.27, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"direction field not found\0A\00", [37 x i8] zeroinitializer }, align 32
@pidff_find_special_fields._entry_ptr.71 = internal global ptr @pidff_find_special_fields._entry.69, section ".printk_index", align 4
@pidff_find_special_fields._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.65, ptr @.str.2, i32 956, ptr @.str.27, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"device control field not found\0A\00", [32 x i8] zeroinitializer }, align 32
@pidff_find_special_fields._entry_ptr.74 = internal global ptr @pidff_find_special_fields._entry.72, section ".printk_index", align 4
@pidff_find_special_fields._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.65, ptr @.str.2, i32 961, ptr @.str.27, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"block load status field not found\0A\00", [61 x i8] zeroinitializer }, align 32
@pidff_find_special_fields._entry_ptr.77 = internal global ptr @pidff_find_special_fields._entry.75, section ".printk_index", align 4
@pidff_find_special_fields._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.65, ptr @.str.2, i32 966, ptr @.str.27, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"effect operation field not found\0A\00", [62 x i8] zeroinitializer }, align 32
@pidff_find_special_fields._entry_ptr.80 = internal global ptr @pidff_find_special_fields._entry.78, section ".printk_index", align 4
@pidff_effect_types = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&'01234@ABC", [21 x i8] zeroinitializer }, align 32
@pidff_find_special_fields._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.65, ptr @.str.2, i32 978, ptr @.str.27, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no effect types found\0A\00", [41 x i8] zeroinitializer }, align 32
@pidff_find_special_fields._entry_ptr.83 = internal global ptr @pidff_find_special_fields._entry.81, section ".printk_index", align 4
@pidff_find_special_fields._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.65, ptr @.str.2, i32 986, ptr @.str.27, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"block load status identifiers not found\0A\00", [55 x i8] zeroinitializer }, align 32
@pidff_find_special_fields._entry_ptr.86 = internal global ptr @pidff_find_special_fields._entry.84, section ".printk_index", align 4
@pidff_find_special_fields._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.65, ptr @.str.2, i32 993, ptr @.str.27, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"effect operation identifiers not found\0A\00", [56 x i8] zeroinitializer }, align 32
@pidff_find_special_fields._entry_ptr.89 = internal global ptr @pidff_find_special_fields._entry.87, section ".printk_index", align 4
@pidff_find_special_field._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.2, i32 883, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013usbhid: logical_minimum is not 1 as it should be\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pidff_find_special_field\00", [39 x i8] zeroinitializer }, align 32
@pidff_find_special_field._entry_ptr = internal global ptr @pidff_find_special_field._entry, section ".printk_index", align 4
@pidff_find_effects._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.2, i32 1013, ptr @.str.27, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"effect type number %d is invalid\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pidff_find_effects\00", [45 x i8] zeroinitializer }, align 32
@pidff_find_effects._entry_ptr = internal global ptr @pidff_find_effects._entry, section ".printk_index", align 4
@pidff_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.2, i32 1174, ptr @.str.19, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"device reports %d simultaneous effects\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pidff_reset\00", [20 x i8] zeroinitializer }, align 32
@pidff_reset._entry_ptr = internal global ptr @pidff_reset._entry, section ".printk_index", align 4
@pidff_reset.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.2, ptr @.str.96, i8 1, i8 38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pid_pool requested again\0A\00", [38 x i8] zeroinitializer }, align 32
@pidff_set.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.2, ptr @.str.98, i8 0, i8 52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pidff_set\00", [22 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"calculated from %d to %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"usbhid: calculated from %d to %d\0A\00", [62 x i8] zeroinitializer }, align 32
@pidff_check_autocenter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.2, i32 1203, ptr @.str.27, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"upload request failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pidff_check_autocenter\00", [41 x i8] zeroinitializer }, align 32
@pidff_check_autocenter._entry_ptr = internal global ptr @pidff_check_autocenter._entry, section ".printk_index", align 4
@pidff_check_autocenter._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.101, ptr @.str.2, i32 1213, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"device has unknown autocenter control method\0A\00", [50 x i8] zeroinitializer }, align 32
@pidff_check_autocenter._entry_ptr.104 = internal global ptr @pidff_check_autocenter._entry.102, section ".printk_index", align 4
@pidff_request_effect_upload.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.105, ptr @.str.2, ptr @.str.106, i8 0, i8 114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pidff_request_effect_upload\00", [36 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"create_new_effect sent, type: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@pidff_request_effect_upload.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.105, ptr @.str.2, ptr @.str.107, i8 0, i8 116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pid_block_load requested\0A\00", [38 x i8] zeroinitializer }, align 32
@pidff_request_effect_upload.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.105, ptr @.str.2, ptr @.str.108, i8 0, i8 118, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"device reported free memory: %d bytes\0A\00", [57 x i8] zeroinitializer }, align 32
@pidff_request_effect_upload.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.105, ptr @.str.2, ptr @.str.109, i8 0, i8 120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"not enough memory free: %d bytes\0A\00", [62 x i8] zeroinitializer }, align 32
@pidff_request_effect_upload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.105, ptr @.str.2, i32 484, ptr @.str.27, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pid_block_load failed 60 times\0A\00", [32 x i8] zeroinitializer }, align 32
@pidff_request_effect_upload._entry_ptr = internal global ptr @pidff_request_effect_upload._entry, section ".printk_index", align 4
@pidff_upload_effect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.2, i32 603, ptr @.str.27, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"invalid waveform\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pidff_upload_effect\00", [44 x i8] zeroinitializer }, align 32
@pidff_upload_effect._entry_ptr = internal global ptr @pidff_upload_effect._entry, section ".printk_index", align 4
@pidff_upload_effect._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.112, ptr @.str.2, i32 694, ptr @.str.27, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"invalid type\0A\00", [18 x i8] zeroinitializer }, align 32
@pidff_upload_effect._entry_ptr.115 = internal global ptr @pidff_upload_effect._entry.113, section ".printk_index", align 4
@pidff_upload_effect.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.112, ptr @.str.2, ptr @.str.116, i8 0, i8 -81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uploaded\0A\00", [22 x i8] zeroinitializer }, align 32
@pidff_set_signed.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.117, ptr @.str.2, ptr @.str.98, i8 0, i8 56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pidff_set_signed\00", [47 x i8] zeroinitializer }, align 32
@pidff_set_envelope_report.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.118, ptr @.str.2, ptr @.str.119, i8 0, i8 63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pidff_set_envelope_report\00", [38 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"attack %u => %d\0A\00", [47 x i8] zeroinitializer }, align 32
@pidff_erase_effect.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.120, ptr @.str.2, ptr @.str.121, i8 0, i8 -122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pidff_erase_effect\00", [45 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"starting to erase %d/%d\0A\00", [39 x i8] zeroinitializer }, align 32
@hid_device_io_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.18, i32 983, ptr @.str.19, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"io already stopped\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hid_device_io_stop\00", [45 x i8] zeroinitializer }, align 32
@hid_device_io_stop._entry_ptr = internal global ptr @hid_device_io_stop._entry, section ".printk_index", align 4
@switch.table.pidff_upload_effect = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 2, i32 4, i32 3, i32 5, i32 6], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 32, i64 983073, i64 983130, i64 983135, i64 983150, i64 983155, i64 983156, i64 983159, i64 983165, i64 983167, i64 983177, i64 983184, i64 983190, i64 983211]
@__sancov_gen_cov_switch_values.124 = internal global [15 x i64] [i64 13, i64 32, i64 983073, i64 983130, i64 983135, i64 983150, i64 983155, i64 983156, i64 983159, i64 983165, i64 983167, i64 983177, i64 983184, i64 983190, i64 983211]
@__sancov_gen_cov_switch_values.125 = internal global [9 x i64] [i64 7, i64 16, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87]
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 1236, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 1239, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 1255, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 1280, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 1286, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 1290, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 1296, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 1313, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 963, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 824, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant [14 x i8] c"pidff_reports\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 43, i32 17 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 843, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 860, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant [17 x i8] c"pidff_set_effect\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 61, i32 17 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 1068, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant [17 x i8] c"pidff_block_load\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 94, i32 17 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 1074, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant [23 x i8] c"pidff_effect_operation\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 97, i32 17 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 1079, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant [17 x i8] c"pidff_block_free\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 99, i32 17 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 1084, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant [19 x i8] c"pidff_set_envelope\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 69, i32 17 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 1096, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 1099, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 1103, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant [19 x i8] c"pidff_set_constant\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 87, i32 17 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 1109, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant [15 x i8] c"pidff_set_ramp\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 91, i32 17 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 1115, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant [20 x i8] c"pidff_set_condition\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 78, i32 17 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 1124, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant [19 x i8] c"pidff_set_periodic\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 86, i32 17 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 1133, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant [11 x i8] c"pidff_pool\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 107, i32 17 }
@___asan_gen_.309 = private unnamed_addr constant [18 x i8] c"pidff_device_gain\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 102, i32 17 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 768, i32 5 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 774, i32 6 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 787, i32 4 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 922, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 943, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 946, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 951, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 956, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 961, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 966, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant [19 x i8] c"pidff_effect_types\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 126, i32 17 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 978, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 985, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 993, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 883, i32 5 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 1012, i32 4 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 1172, i32 5 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 1177, i32 4 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 211, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 1203, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 1212, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 458, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 465, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 471, i32 4 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 478, i32 4 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 484, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 603, i32 5 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 694, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 702, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 226, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 250, i32 2 }
@___asan_gen_.499 = private constant [34 x i8] c"../drivers/hid/usbhid/hid-pidff.c\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 538, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.507 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.508 = private unnamed_addr constant [23 x i8] c"../include/linux/hid.h\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 983, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant [33 x i8] c"switch.table.pidff_upload_effect\00", align 1
@llvm.compiler.used = appending global [160 x ptr] [ptr @hid_device_io_start._entry, ptr @hid_device_io_start._entry_ptr, ptr @hid_device_io_stop._entry, ptr @hid_device_io_stop._entry_ptr, ptr @hid_pidff_init._entry, ptr @hid_pidff_init._entry.12, ptr @hid_pidff_init._entry_ptr, ptr @hid_pidff_init._entry_ptr.15, ptr @pidff_check_autocenter._entry, ptr @pidff_check_autocenter._entry.102, ptr @pidff_check_autocenter._entry_ptr, ptr @pidff_check_autocenter._entry_ptr.104, ptr @pidff_find_effects._entry, ptr @pidff_find_effects._entry_ptr, ptr @pidff_find_special_field._entry, ptr @pidff_find_special_field._entry_ptr, ptr @pidff_find_special_fields._entry, ptr @pidff_find_special_fields._entry.69, ptr @pidff_find_special_fields._entry.72, ptr @pidff_find_special_fields._entry.75, ptr @pidff_find_special_fields._entry.78, ptr @pidff_find_special_fields._entry.81, ptr @pidff_find_special_fields._entry.84, ptr @pidff_find_special_fields._entry.87, ptr @pidff_find_special_fields._entry_ptr, ptr @pidff_find_special_fields._entry_ptr.71, ptr @pidff_find_special_fields._entry_ptr.74, ptr @pidff_find_special_fields._entry_ptr.77, ptr @pidff_find_special_fields._entry_ptr.80, ptr @pidff_find_special_fields._entry_ptr.83, ptr @pidff_find_special_fields._entry_ptr.86, ptr @pidff_find_special_fields._entry_ptr.89, ptr @pidff_init_fields._entry, ptr @pidff_init_fields._entry.28, ptr @pidff_init_fields._entry.31, ptr @pidff_init_fields._entry.34, ptr @pidff_init_fields._entry.37, ptr @pidff_init_fields._entry.40, ptr @pidff_init_fields._entry.43, ptr @pidff_init_fields._entry.46, ptr @pidff_init_fields._entry.49, ptr @pidff_init_fields._entry.52, ptr @pidff_init_fields._entry.55, ptr @pidff_init_fields._entry_ptr, ptr @pidff_init_fields._entry_ptr.30, ptr @pidff_init_fields._entry_ptr.33, ptr @pidff_init_fields._entry_ptr.36, ptr @pidff_init_fields._entry_ptr.39, ptr @pidff_init_fields._entry_ptr.42, ptr @pidff_init_fields._entry_ptr.45, ptr @pidff_init_fields._entry_ptr.48, ptr @pidff_init_fields._entry_ptr.51, ptr @pidff_init_fields._entry_ptr.54, ptr @pidff_init_fields._entry_ptr.57, ptr @pidff_request_effect_upload._entry, ptr @pidff_request_effect_upload._entry_ptr, ptr @pidff_reset._entry, ptr @pidff_reset._entry_ptr, ptr @pidff_upload_effect._entry, ptr @pidff_upload_effect._entry.113, ptr @pidff_upload_effect._entry_ptr, ptr @pidff_upload_effect._entry_ptr.115, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @pidff_reports, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @pidff_set_effect, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @pidff_block_load, ptr @.str.29, ptr @pidff_effect_operation, ptr @.str.32, ptr @pidff_block_free, ptr @.str.35, ptr @pidff_set_envelope, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @pidff_set_constant, ptr @.str.47, ptr @pidff_set_ramp, ptr @.str.50, ptr @pidff_set_condition, ptr @.str.53, ptr @pidff_set_periodic, ptr @.str.56, ptr @pidff_pool, ptr @pidff_device_gain, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @pidff_effect_types, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.114, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @switch.table.pidff_upload_effect], section "llvm.metadata"
@0 = internal global [129 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_pidff_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_pidff_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_device_io_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidff_reports to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidff_set_effect to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidff_init_fields._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidff_block_load to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidff_init_fields._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidff_effect_operation to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidff_init_fields._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidff_block_free to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidff_init_fields._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidff_set_envelope to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidff_init_fields._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidff_init_fields._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidff_init_fields._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidff_set_constant to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidff_init_fields._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidff_set_ramp to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidff_init_fields._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidff_set_condition to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidff_init_fields._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidff_set_periodic to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidff_init_fields._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidff_pool to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidff_device_gain to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidff_find_special_fields._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidff_find_special_fields._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidff_find_special_fields._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidff_find_special_fields._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidff_find_special_fields._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidff_effect_types to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidff_find_special_fields._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidff_find_special_fields._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidff_find_special_fields._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidff_find_special_field._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidff_find_effects._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidff_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidff_check_autocenter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidff_check_autocenter._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidff_request_effect_upload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidff_upload_effect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidff_upload_effect._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_device_io_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pidff_upload_effect to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hid_pidff_init(ptr noundef %hid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %inputs = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 36
  %0 = ptrtoint ptr %inputs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inputs, align 8
  %input = getelementptr inbounds %struct.hid_input, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hid_pidff_init.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hid_pidff_init, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !266

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev4 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hid_pidff_init.__UNIQUE_ID_ddebug250, ptr noundef %dev4, ptr noundef nonnull @.str.3) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %report_list = getelementptr %struct.hid_device, ptr %hid, i32 0, i32 15, i32 1, i32 1
  %4 = ptrtoint ptr %report_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %report_list, align 4
  %cmp.i.not = icmp eq ptr %5, %report_list
  br i1 %cmp.i.not, label %do.body8, label %if.end25

do.body8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hid_pidff_init.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hid_pidff_init, %if.then20)) #6
          to label %cleanup [label %if.then20], !srcloc !266

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  %dev21 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hid_pidff_init.__UNIQUE_ID_ddebug251, ptr noundef %dev21, ptr noundef nonnull @.str.4) #6
  br label %cleanup

if.end25:                                         ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 716) #9
  %tobool27.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool27.not, label %if.end25.cleanup_crit_edge, label %if.end29

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %hid, ptr %call7.i.i, align 8
  %io_started.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 35
  %8 = ptrtoint ptr %io_started.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %io_started.i, align 4, !range !267
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.16) #10
  br label %hid_device_io_start.exit

if.end.i:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %io_started.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %io_started.i, align 4
  %driver_input_lock.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 17
  tail call void @up(ptr noundef %driver_input_lock.i) #6
  br label %hid_device_io_start.exit

hid_device_io_start.exit:                         ; preds = %if.end.i, %do.end.i
  tail call fastcc void @pidff_find_reports(ptr noundef %hid, i32 noundef 1, ptr noundef nonnull %call7.i.i)
  tail call fastcc void @pidff_find_reports(ptr noundef %hid, i32 noundef 2, ptr noundef nonnull %call7.i.i)
  %arrayidx.i234 = getelementptr %struct.pidff_device, ptr %call7.i.i, i32 0, i32 1, i32 0
  %11 = ptrtoint ptr %arrayidx.i234 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i234, align 4
  %tobool.not.i235 = icmp eq ptr %12, null
  br i1 %tobool.not.i235, label %hid_device_io_start.exit.do.body.i_crit_edge, label %for.inc.i

hid_device_io_start.exit.do.body.i_crit_edge:     ; preds = %hid_device_io_start.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.body.i:                                        ; preds = %for.inc.6.i.do.body.i_crit_edge, %for.inc.5.i.do.body.i_crit_edge, %for.inc.4.i.do.body.i_crit_edge, %for.inc.3.i.do.body.i_crit_edge, %for.inc.2.i.do.body.i_crit_edge, %for.inc.1.i.do.body.i_crit_edge, %for.inc.i.do.body.i_crit_edge, %hid_device_io_start.exit.do.body.i_crit_edge
  %i.012.lcssa.i = phi i32 [ 0, %hid_device_io_start.exit.do.body.i_crit_edge ], [ 1, %for.inc.i.do.body.i_crit_edge ], [ 2, %for.inc.1.i.do.body.i_crit_edge ], [ 3, %for.inc.2.i.do.body.i_crit_edge ], [ 4, %for.inc.3.i.do.body.i_crit_edge ], [ 5, %for.inc.4.i.do.body.i_crit_edge ], [ 6, %for.inc.5.i.do.body.i_crit_edge ], [ 7, %for.inc.6.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pidff_reports_ok.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hid_pidff_init, %pidff_reports_ok.exit.thread)) #6
          to label %do.body34 [label %pidff_reports_ok.exit.thread], !srcloc !266

pidff_reports_ok.exit.thread:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call7.i.i, align 8
  %dev.i236 = getelementptr inbounds %struct.hid_device, ptr %14, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pidff_reports_ok.__UNIQUE_ID_ddebug246, ptr noundef %dev.i236, ptr noundef nonnull @.str.24, i32 noundef %i.012.lcssa.i) #6
  br label %do.body34

for.inc.i:                                        ; preds = %hid_device_io_start.exit
  %arrayidx.1.i = getelementptr %struct.pidff_device, ptr %call7.i.i, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.1.i, align 8
  %tobool.not.1.i = icmp eq ptr %16, null
  br i1 %tobool.not.1.i, label %for.inc.i.do.body.i_crit_edge, label %for.inc.1.i

for.inc.i.do.body.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx.2.i = getelementptr %struct.pidff_device, ptr %call7.i.i, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %18, null
  br i1 %tobool.not.2.i, label %for.inc.1.i.do.body.i_crit_edge, label %for.inc.2.i

for.inc.1.i.do.body.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %arrayidx.3.i = getelementptr %struct.pidff_device, ptr %call7.i.i, i32 0, i32 1, i32 3
  %19 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.3.i, align 8
  %tobool.not.3.i = icmp eq ptr %20, null
  br i1 %tobool.not.3.i, label %for.inc.2.i.do.body.i_crit_edge, label %for.inc.3.i

for.inc.2.i.do.body.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %arrayidx.4.i = getelementptr %struct.pidff_device, ptr %call7.i.i, i32 0, i32 1, i32 4
  %21 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.4.i, align 4
  %tobool.not.4.i = icmp eq ptr %22, null
  br i1 %tobool.not.4.i, label %for.inc.3.i.do.body.i_crit_edge, label %for.inc.4.i

for.inc.3.i.do.body.i_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %arrayidx.5.i = getelementptr %struct.pidff_device, ptr %call7.i.i, i32 0, i32 1, i32 5
  %23 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.5.i, align 8
  %tobool.not.5.i = icmp eq ptr %24, null
  br i1 %tobool.not.5.i, label %for.inc.4.i.do.body.i_crit_edge, label %for.inc.5.i

for.inc.4.i.do.body.i_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %arrayidx.6.i = getelementptr %struct.pidff_device, ptr %call7.i.i, i32 0, i32 1, i32 6
  %25 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.6.i, align 4
  %tobool.not.6.i = icmp eq ptr %26, null
  br i1 %tobool.not.6.i, label %for.inc.5.i.do.body.i_crit_edge, label %for.inc.6.i

for.inc.5.i.do.body.i_crit_edge:                  ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %arrayidx.7.i = getelementptr %struct.pidff_device, ptr %call7.i.i, i32 0, i32 1, i32 7
  %27 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.7.i, align 8
  %tobool.not.7.i = icmp eq ptr %28, null
  br i1 %tobool.not.7.i, label %for.inc.6.i.do.body.i_crit_edge, label %if.end51

for.inc.6.i.do.body.i_crit_edge:                  ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.body34:                                        ; preds = %pidff_reports_ok.exit.thread, %do.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hid_pidff_init.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hid_pidff_init, %if.then46)) #6
          to label %fail [label %if.then46], !srcloc !266

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #8
  %dev47 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hid_pidff_init.__UNIQUE_ID_ddebug252, ptr noundef %dev47, ptr noundef nonnull @.str.5) #6
  br label %fail

if.end51:                                         ; preds = %for.inc.6.i
  %set_effect.i = getelementptr inbounds %struct.pidff_device, ptr %call7.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %arrayidx.i234 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i234, align 4
  %call.i = tail call fastcc i32 @pidff_find_fields(ptr noundef %set_effect.i, ptr noundef nonnull @pidff_set_effect, ptr noundef %30, i32 noundef 7, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i238 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i238, label %if.end.i240, label %do.end.i239

do.end.i239:                                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call7.i.i, align 8
  %dev1.i = getelementptr inbounds %struct.hid_device, ptr %32, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.25) #10
  br label %fail

if.end.i240:                                      ; preds = %if.end51
  %block_load.i = getelementptr inbounds %struct.pidff_device, ptr %call7.i.i, i32 0, i32 9
  %33 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.4.i, align 4
  %call5.i = tail call fastcc i32 @pidff_find_fields(ptr noundef %block_load.i, ptr noundef nonnull @pidff_block_load, ptr noundef %34, i32 noundef 2, i32 noundef 0) #6
  %value.i = getelementptr inbounds %struct.pidff_device, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 1
  %35 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %value.i, align 4
  %tobool8.not.i = icmp eq ptr %36, null
  br i1 %tobool8.not.i, label %do.end12.i, label %if.end15.i

do.end12.i:                                       ; preds = %if.end.i240
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call7.i.i, align 8
  %dev14.i = getelementptr inbounds %struct.hid_device, ptr %38, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14.i, ptr noundef nonnull @.str.29) #10
  br label %fail

if.end15.i:                                       ; preds = %if.end.i240
  %effect_operation.i = getelementptr inbounds %struct.pidff_device, ptr %call7.i.i, i32 0, i32 11
  %39 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.1.i, align 8
  %call19.i = tail call fastcc i32 @pidff_find_fields(ptr noundef %effect_operation.i, ptr noundef nonnull @pidff_effect_operation, ptr noundef %40, i32 noundef 2, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end27.i, label %do.end24.i

do.end24.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call7.i.i, align 8
  %dev26.i = getelementptr inbounds %struct.hid_device, ptr %42, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26.i, ptr noundef nonnull @.str.32) #10
  br label %fail

if.end27.i:                                       ; preds = %if.end15.i
  %block_free.i = getelementptr inbounds %struct.pidff_device, ptr %call7.i.i, i32 0, i32 12
  %43 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.5.i, align 8
  %call31.i = tail call fastcc i32 @pidff_find_fields(ptr noundef %block_free.i, ptr noundef nonnull @pidff_block_free, ptr noundef %44, i32 noundef 1, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end39.i, label %do.end36.i

do.end36.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call7.i.i, align 8
  %dev38.i = getelementptr inbounds %struct.hid_device, ptr %46, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev38.i, ptr noundef nonnull @.str.35) #10
  br label %fail

if.end39.i:                                       ; preds = %if.end27.i
  %set_envelope.i = getelementptr inbounds %struct.pidff_device, ptr %call7.i.i, i32 0, i32 3
  %arrayidx42.i = getelementptr %struct.pidff_device, ptr %call7.i.i, i32 0, i32 1, i32 8
  %47 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx42.i, align 4
  %call43.i = tail call fastcc i32 @pidff_find_fields(ptr noundef %set_envelope.i, ptr noundef nonnull @pidff_set_envelope, ptr noundef %48, i32 noundef 5, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  %call47.i = tail call fastcc i32 @pidff_find_special_fields(ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %lor.lhs.false.i, label %if.end39.i.fail_crit_edge

if.end39.i.fail_crit_edge:                        ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

lor.lhs.false.i:                                  ; preds = %if.end39.i
  %set_effect_type.i.i = getelementptr inbounds %struct.pidff_device, ptr %call7.i.i, i32 0, i32 14
  %49 = ptrtoint ptr %set_effect_type.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %set_effect_type.i.i, align 4
  %usage.i.i = getelementptr inbounds %struct.hid_field, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %usage.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %usage.i.i, align 4
  %create_new_effect_type.i.i = getelementptr inbounds %struct.pidff_device, ptr %call7.i.i, i32 0, i32 13
  %53 = ptrtoint ptr %create_new_effect_type.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %create_new_effect_type.i.i, align 8
  %usage2.i.i = getelementptr inbounds %struct.hid_field, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %usage2.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %usage2.i.i, align 4
  %arrayidx.i268.i = getelementptr %struct.pidff_device, ptr %call7.i.i, i32 0, i32 20, i32 0
  %57 = ptrtoint ptr %arrayidx.i268.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i268.i, align 8
  %arrayidx1.i.i = getelementptr %struct.hid_usage, ptr %52, i32 %58
  %59 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx1.i.i, align 4
  %arrayidx3.i.i = getelementptr %struct.hid_usage, ptr %56, i32 %58
  %61 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp5.not.i.i = icmp eq i32 %60, %62
  br i1 %cmp5.not.i.i, label %for.inc.critedge.i.i, label %lor.lhs.false.i.pidff_find_effects.exit.i_crit_edge

lor.lhs.false.i.pidff_find_effects.exit.i_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_find_effects.exit.i

for.inc.critedge.i.i:                             ; preds = %lor.lhs.false.i
  %arrayidx.1.i.i = getelementptr %struct.pidff_device, ptr %call7.i.i, i32 0, i32 20, i32 1
  %63 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.1.i.i, align 4
  %arrayidx1.1.i.i = getelementptr %struct.hid_usage, ptr %52, i32 %64
  %65 = ptrtoint ptr %arrayidx1.1.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx1.1.i.i, align 4
  %arrayidx3.1.i.i = getelementptr %struct.hid_usage, ptr %56, i32 %64
  %67 = ptrtoint ptr %arrayidx3.1.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx3.1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %68)
  %cmp5.not.1.i.i = icmp eq i32 %66, %68
  br i1 %cmp5.not.1.i.i, label %for.inc.critedge.1.i.i, label %for.inc.critedge.i.i.pidff_find_effects.exit.i_crit_edge

for.inc.critedge.i.i.pidff_find_effects.exit.i_crit_edge: ; preds = %for.inc.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_find_effects.exit.i

for.inc.critedge.1.i.i:                           ; preds = %for.inc.critedge.i.i
  %arrayidx.2.i.i = getelementptr %struct.pidff_device, ptr %call7.i.i, i32 0, i32 20, i32 2
  %69 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.2.i.i, align 8
  %arrayidx1.2.i.i = getelementptr %struct.hid_usage, ptr %52, i32 %70
  %71 = ptrtoint ptr %arrayidx1.2.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx1.2.i.i, align 4
  %arrayidx3.2.i.i = getelementptr %struct.hid_usage, ptr %56, i32 %70
  %73 = ptrtoint ptr %arrayidx3.2.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx3.2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %74)
  %cmp5.not.2.i.i = icmp eq i32 %72, %74
  br i1 %cmp5.not.2.i.i, label %for.inc.critedge.2.i.i, label %for.inc.critedge.1.i.i.pidff_find_effects.exit.i_crit_edge

for.inc.critedge.1.i.i.pidff_find_effects.exit.i_crit_edge: ; preds = %for.inc.critedge.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_find_effects.exit.i

for.inc.critedge.2.i.i:                           ; preds = %for.inc.critedge.1.i.i
  %arrayidx.3.i.i = getelementptr %struct.pidff_device, ptr %call7.i.i, i32 0, i32 20, i32 3
  %75 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.3.i.i, align 4
  %arrayidx1.3.i.i = getelementptr %struct.hid_usage, ptr %52, i32 %76
  %77 = ptrtoint ptr %arrayidx1.3.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx1.3.i.i, align 4
  %arrayidx3.3.i.i = getelementptr %struct.hid_usage, ptr %56, i32 %76
  %79 = ptrtoint ptr %arrayidx3.3.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx3.3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %80)
  %cmp5.not.3.i.i = icmp eq i32 %78, %80
  br i1 %cmp5.not.3.i.i, label %for.inc.critedge.3.i.i, label %for.inc.critedge.2.i.i.pidff_find_effects.exit.i_crit_edge

for.inc.critedge.2.i.i.pidff_find_effects.exit.i_crit_edge: ; preds = %for.inc.critedge.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_find_effects.exit.i

for.inc.critedge.3.i.i:                           ; preds = %for.inc.critedge.2.i.i
  %arrayidx.4.i.i = getelementptr %struct.pidff_device, ptr %call7.i.i, i32 0, i32 20, i32 4
  %81 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx.4.i.i, align 8
  %arrayidx1.4.i.i = getelementptr %struct.hid_usage, ptr %52, i32 %82
  %83 = ptrtoint ptr %arrayidx1.4.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx1.4.i.i, align 4
  %arrayidx3.4.i.i = getelementptr %struct.hid_usage, ptr %56, i32 %82
  %85 = ptrtoint ptr %arrayidx3.4.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx3.4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %86)
  %cmp5.not.4.i.i = icmp eq i32 %84, %86
  br i1 %cmp5.not.4.i.i, label %for.inc.critedge.4.i.i, label %for.inc.critedge.3.i.i.pidff_find_effects.exit.i_crit_edge

for.inc.critedge.3.i.i.pidff_find_effects.exit.i_crit_edge: ; preds = %for.inc.critedge.3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_find_effects.exit.i

for.inc.critedge.4.i.i:                           ; preds = %for.inc.critedge.3.i.i
  %arrayidx.5.i.i = getelementptr %struct.pidff_device, ptr %call7.i.i, i32 0, i32 20, i32 5
  %87 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx.5.i.i, align 4
  %arrayidx1.5.i.i = getelementptr %struct.hid_usage, ptr %52, i32 %88
  %89 = ptrtoint ptr %arrayidx1.5.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx1.5.i.i, align 4
  %arrayidx3.5.i.i = getelementptr %struct.hid_usage, ptr %56, i32 %88
  %91 = ptrtoint ptr %arrayidx3.5.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx3.5.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %92)
  %cmp5.not.5.i.i = icmp eq i32 %90, %92
  br i1 %cmp5.not.5.i.i, label %for.inc.critedge.5.i.i, label %for.inc.critedge.4.i.i.pidff_find_effects.exit.i_crit_edge

for.inc.critedge.4.i.i.pidff_find_effects.exit.i_crit_edge: ; preds = %for.inc.critedge.4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_find_effects.exit.i

for.inc.critedge.5.i.i:                           ; preds = %for.inc.critedge.4.i.i
  %arrayidx.6.i.i = getelementptr %struct.pidff_device, ptr %call7.i.i, i32 0, i32 20, i32 6
  %93 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx.6.i.i, align 8
  %arrayidx1.6.i.i = getelementptr %struct.hid_usage, ptr %52, i32 %94
  %95 = ptrtoint ptr %arrayidx1.6.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx1.6.i.i, align 4
  %arrayidx3.6.i.i = getelementptr %struct.hid_usage, ptr %56, i32 %94
  %97 = ptrtoint ptr %arrayidx3.6.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx3.6.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %98)
  %cmp5.not.6.i.i = icmp eq i32 %96, %98
  br i1 %cmp5.not.6.i.i, label %for.inc.critedge.6.i.i, label %for.inc.critedge.5.i.i.pidff_find_effects.exit.i_crit_edge

for.inc.critedge.5.i.i.pidff_find_effects.exit.i_crit_edge: ; preds = %for.inc.critedge.5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_find_effects.exit.i

for.inc.critedge.6.i.i:                           ; preds = %for.inc.critedge.5.i.i
  %arrayidx.7.i.i = getelementptr %struct.pidff_device, ptr %call7.i.i, i32 0, i32 20, i32 7
  %99 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx.7.i.i, align 4
  %arrayidx1.7.i.i = getelementptr %struct.hid_usage, ptr %52, i32 %100
  %101 = ptrtoint ptr %arrayidx1.7.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx1.7.i.i, align 4
  %arrayidx3.7.i.i = getelementptr %struct.hid_usage, ptr %56, i32 %100
  %103 = ptrtoint ptr %arrayidx3.7.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx3.7.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %104)
  %cmp5.not.7.i.i = icmp eq i32 %102, %104
  br i1 %cmp5.not.7.i.i, label %for.inc.critedge.7.i.i, label %for.inc.critedge.6.i.i.pidff_find_effects.exit.i_crit_edge

for.inc.critedge.6.i.i.pidff_find_effects.exit.i_crit_edge: ; preds = %for.inc.critedge.6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_find_effects.exit.i

for.inc.critedge.7.i.i:                           ; preds = %for.inc.critedge.6.i.i
  %arrayidx.8.i.i = getelementptr %struct.pidff_device, ptr %call7.i.i, i32 0, i32 20, i32 8
  %105 = ptrtoint ptr %arrayidx.8.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx.8.i.i, align 8
  %arrayidx1.8.i.i = getelementptr %struct.hid_usage, ptr %52, i32 %106
  %107 = ptrtoint ptr %arrayidx1.8.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx1.8.i.i, align 4
  %arrayidx3.8.i.i = getelementptr %struct.hid_usage, ptr %56, i32 %106
  %109 = ptrtoint ptr %arrayidx3.8.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx3.8.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %110)
  %cmp5.not.8.i.i = icmp eq i32 %108, %110
  br i1 %cmp5.not.8.i.i, label %for.inc.critedge.8.i.i, label %for.inc.critedge.7.i.i.pidff_find_effects.exit.i_crit_edge

for.inc.critedge.7.i.i.pidff_find_effects.exit.i_crit_edge: ; preds = %for.inc.critedge.7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_find_effects.exit.i

for.inc.critedge.8.i.i:                           ; preds = %for.inc.critedge.7.i.i
  %arrayidx.9.i.i = getelementptr %struct.pidff_device, ptr %call7.i.i, i32 0, i32 20, i32 9
  %111 = ptrtoint ptr %arrayidx.9.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx.9.i.i, align 4
  %arrayidx1.9.i.i = getelementptr %struct.hid_usage, ptr %52, i32 %112
  %113 = ptrtoint ptr %arrayidx1.9.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx1.9.i.i, align 4
  %arrayidx3.9.i.i = getelementptr %struct.hid_usage, ptr %56, i32 %112
  %115 = ptrtoint ptr %arrayidx3.9.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx3.9.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %114, i32 %116)
  %cmp5.not.9.i.i = icmp eq i32 %114, %116
  br i1 %cmp5.not.9.i.i, label %for.inc.critedge.9.i.i, label %for.inc.critedge.8.i.i.pidff_find_effects.exit.i_crit_edge

for.inc.critedge.8.i.i.pidff_find_effects.exit.i_crit_edge: ; preds = %for.inc.critedge.8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_find_effects.exit.i

for.inc.critedge.9.i.i:                           ; preds = %for.inc.critedge.8.i.i
  %arrayidx.10.i.i = getelementptr %struct.pidff_device, ptr %call7.i.i, i32 0, i32 20, i32 10
  %117 = ptrtoint ptr %arrayidx.10.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx.10.i.i, align 8
  %arrayidx1.10.i.i = getelementptr %struct.hid_usage, ptr %52, i32 %118
  %119 = ptrtoint ptr %arrayidx1.10.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx1.10.i.i, align 4
  %arrayidx3.10.i.i = getelementptr %struct.hid_usage, ptr %56, i32 %118
  %121 = ptrtoint ptr %arrayidx3.10.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx3.10.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %120, i32 %122)
  %cmp5.not.10.i.i = icmp eq i32 %120, %122
  br i1 %cmp5.not.10.i.i, label %for.inc.critedge.10.i.i, label %for.inc.critedge.9.i.i.pidff_find_effects.exit.i_crit_edge

for.inc.critedge.9.i.i.pidff_find_effects.exit.i_crit_edge: ; preds = %for.inc.critedge.9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_find_effects.exit.i

for.inc.critedge.10.i.i:                          ; preds = %for.inc.critedge.9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i.i = icmp eq i32 %58, 0
  br i1 %tobool.not.i.i, label %for.inc.critedge.10.i.i.if.end11.i.i_crit_edge, label %if.then10.i.i

for.inc.critedge.10.i.i.if.end11.i.i_crit_edge:   ; preds = %for.inc.critedge.10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i.i

if.then10.i.i:                                    ; preds = %for.inc.critedge.10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %ffbit.i.i = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 82, ptr noundef %ffbit.i.i) #6
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then10.i.i, %for.inc.critedge.10.i.i.if.end11.i.i_crit_edge
  %123 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool14.not.i.i = icmp eq i32 %124, 0
  br i1 %tobool14.not.i.i, label %if.end11.i.i.if.end18.i.i_crit_edge, label %if.then15.i.i

if.end11.i.i.if.end18.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i.i

if.then15.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %ffbit16.i.i = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 87, ptr noundef %ffbit16.i.i) #6
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.then15.i.i, %if.end11.i.i.if.end18.i.i_crit_edge
  %125 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx.2.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool21.not.i.i = icmp eq i32 %126, 0
  br i1 %tobool21.not.i.i, label %if.end18.i.i.if.end27.i.i_crit_edge, label %if.then22.i.i

if.end18.i.i.if.end27.i.i_crit_edge:              ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i.i

if.then22.i.i:                                    ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %ffbit23.i.i = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 88, ptr noundef %ffbit23.i.i) #6
  tail call void @_set_bit(i32 noundef 81, ptr noundef %ffbit23.i.i) #6
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %if.then22.i.i, %if.end18.i.i.if.end27.i.i_crit_edge
  %127 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx.3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool30.not.i.i = icmp eq i32 %128, 0
  br i1 %tobool30.not.i.i, label %if.end27.i.i.if.end36.i.i_crit_edge, label %if.then31.i.i

if.end27.i.i.if.end36.i.i_crit_edge:              ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i.i

if.then31.i.i:                                    ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %ffbit32.i.i = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 90, ptr noundef %ffbit32.i.i) #6
  tail call void @_set_bit(i32 noundef 81, ptr noundef %ffbit32.i.i) #6
  br label %if.end36.i.i

if.end36.i.i:                                     ; preds = %if.then31.i.i, %if.end27.i.i.if.end36.i.i_crit_edge
  %129 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx.4.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool39.not.i.i = icmp eq i32 %130, 0
  br i1 %tobool39.not.i.i, label %if.end36.i.i.if.end45.i.i_crit_edge, label %if.then40.i.i

if.end36.i.i.if.end45.i.i_crit_edge:              ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45.i.i

if.then40.i.i:                                    ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %ffbit41.i.i = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 89, ptr noundef %ffbit41.i.i) #6
  tail call void @_set_bit(i32 noundef 81, ptr noundef %ffbit41.i.i) #6
  br label %if.end45.i.i

if.end45.i.i:                                     ; preds = %if.then40.i.i, %if.end36.i.i.if.end45.i.i_crit_edge
  %131 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx.5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool48.not.i.i = icmp eq i32 %132, 0
  br i1 %tobool48.not.i.i, label %if.end45.i.i.if.end54.i.i_crit_edge, label %if.then49.i.i

if.end45.i.i.if.end54.i.i_crit_edge:              ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54.i.i

if.then49.i.i:                                    ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %ffbit50.i.i = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 91, ptr noundef %ffbit50.i.i) #6
  tail call void @_set_bit(i32 noundef 81, ptr noundef %ffbit50.i.i) #6
  br label %if.end54.i.i

if.end54.i.i:                                     ; preds = %if.then49.i.i, %if.end45.i.i.if.end54.i.i_crit_edge
  %133 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx.6.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool57.not.i.i = icmp eq i32 %134, 0
  br i1 %tobool57.not.i.i, label %if.end54.i.i.if.end63.i.i_crit_edge, label %if.then58.i.i

if.end54.i.i.if.end63.i.i_crit_edge:              ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63.i.i

if.then58.i.i:                                    ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %ffbit59.i.i = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 92, ptr noundef %ffbit59.i.i) #6
  tail call void @_set_bit(i32 noundef 81, ptr noundef %ffbit59.i.i) #6
  br label %if.end63.i.i

if.end63.i.i:                                     ; preds = %if.then58.i.i, %if.end54.i.i.if.end63.i.i_crit_edge
  %135 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx.7.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool66.not.i.i = icmp eq i32 %136, 0
  br i1 %tobool66.not.i.i, label %if.end63.i.i.if.end70.i.i_crit_edge, label %if.then67.i.i

if.end63.i.i.if.end70.i.i_crit_edge:              ; preds = %if.end63.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70.i.i

if.then67.i.i:                                    ; preds = %if.end63.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %ffbit68.i.i = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 83, ptr noundef %ffbit68.i.i) #6
  br label %if.end70.i.i

if.end70.i.i:                                     ; preds = %if.then67.i.i, %if.end63.i.i.if.end70.i.i_crit_edge
  %137 = ptrtoint ptr %arrayidx.8.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx.8.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool73.not.i.i = icmp eq i32 %138, 0
  br i1 %tobool73.not.i.i, label %if.end70.i.i.if.end77.i.i_crit_edge, label %if.then74.i.i

if.end70.i.i.if.end77.i.i_crit_edge:              ; preds = %if.end70.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77.i.i

if.then74.i.i:                                    ; preds = %if.end70.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %ffbit75.i.i = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 85, ptr noundef %ffbit75.i.i) #6
  br label %if.end77.i.i

if.end77.i.i:                                     ; preds = %if.then74.i.i, %if.end70.i.i.if.end77.i.i_crit_edge
  %139 = ptrtoint ptr %arrayidx.9.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx.9.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool80.not.i.i = icmp eq i32 %140, 0
  br i1 %tobool80.not.i.i, label %if.end77.i.i.if.end84.i.i_crit_edge, label %if.then81.i.i

if.end77.i.i.if.end84.i.i_crit_edge:              ; preds = %if.end77.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84.i.i

if.then81.i.i:                                    ; preds = %if.end77.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %ffbit82.i.i = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 86, ptr noundef %ffbit82.i.i) #6
  br label %if.end84.i.i

if.end84.i.i:                                     ; preds = %if.then81.i.i, %if.end77.i.i.if.end84.i.i_crit_edge
  %141 = ptrtoint ptr %arrayidx.10.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx.10.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool87.not.i.i = icmp eq i32 %142, 0
  br i1 %tobool87.not.i.i, label %if.end84.i.i.if.end52.i_crit_edge, label %if.then88.i.i

if.end84.i.i.if.end52.i_crit_edge:                ; preds = %if.end84.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52.i

if.then88.i.i:                                    ; preds = %if.end84.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %ffbit89.i.i = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 84, ptr noundef %ffbit89.i.i) #6
  br label %if.end52.i

pidff_find_effects.exit.i:                        ; preds = %for.inc.critedge.9.i.i.pidff_find_effects.exit.i_crit_edge, %for.inc.critedge.8.i.i.pidff_find_effects.exit.i_crit_edge, %for.inc.critedge.7.i.i.pidff_find_effects.exit.i_crit_edge, %for.inc.critedge.6.i.i.pidff_find_effects.exit.i_crit_edge, %for.inc.critedge.5.i.i.pidff_find_effects.exit.i_crit_edge, %for.inc.critedge.4.i.i.pidff_find_effects.exit.i_crit_edge, %for.inc.critedge.3.i.i.pidff_find_effects.exit.i_crit_edge, %for.inc.critedge.2.i.i.pidff_find_effects.exit.i_crit_edge, %for.inc.critedge.1.i.i.pidff_find_effects.exit.i_crit_edge, %for.inc.critedge.i.i.pidff_find_effects.exit.i_crit_edge, %lor.lhs.false.i.pidff_find_effects.exit.i_crit_edge
  %i.0127.lcssa.i.i = phi i32 [ 0, %lor.lhs.false.i.pidff_find_effects.exit.i_crit_edge ], [ 1, %for.inc.critedge.i.i.pidff_find_effects.exit.i_crit_edge ], [ 2, %for.inc.critedge.1.i.i.pidff_find_effects.exit.i_crit_edge ], [ 3, %for.inc.critedge.2.i.i.pidff_find_effects.exit.i_crit_edge ], [ 4, %for.inc.critedge.3.i.i.pidff_find_effects.exit.i_crit_edge ], [ 5, %for.inc.critedge.4.i.i.pidff_find_effects.exit.i_crit_edge ], [ 6, %for.inc.critedge.5.i.i.pidff_find_effects.exit.i_crit_edge ], [ 7, %for.inc.critedge.6.i.i.pidff_find_effects.exit.i_crit_edge ], [ 8, %for.inc.critedge.7.i.i.pidff_find_effects.exit.i_crit_edge ], [ 9, %for.inc.critedge.8.i.i.pidff_find_effects.exit.i_crit_edge ], [ 10, %for.inc.critedge.9.i.i.pidff_find_effects.exit.i_crit_edge ]
  %143 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %call7.i.i, align 8
  %dev7.i.i = getelementptr inbounds %struct.hid_device, ptr %144, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i.i, ptr noundef nonnull @.str.92, i32 noundef %i.0127.lcssa.i.i) #10
  br label %fail

if.end52.i:                                       ; preds = %if.then88.i.i, %if.end84.i.i.if.end52.i_crit_edge
  br i1 %tobool44.not.i, label %if.end52.i.if.end87.i_crit_edge, label %if.then54.i

if.end52.i.if.end87.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87.i

if.then54.i:                                      ; preds = %if.end52.i
  %ffbit.i = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 12
  %call56.i = tail call i32 @_test_and_clear_bit(i32 noundef 82, ptr noundef %ffbit.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %tobool57.not.i = icmp eq i32 %call56.i, 0
  br i1 %tobool57.not.i, label %if.then54.i.if.end64.i_crit_edge, label %do.end61.i

if.then54.i.if.end64.i_crit_edge:                 ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64.i

do.end61.i:                                       ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #8
  %145 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %call7.i.i, align 8
  %dev63.i = getelementptr inbounds %struct.hid_device, ptr %146, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev63.i, ptr noundef nonnull @.str.38) #10
  br label %if.end64.i

if.end64.i:                                       ; preds = %do.end61.i, %if.then54.i.if.end64.i_crit_edge
  %call67.i = tail call i32 @_test_and_clear_bit(i32 noundef 87, ptr noundef %ffbit.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %tobool68.not.i = icmp eq i32 %call67.i, 0
  br i1 %tobool68.not.i, label %if.end64.i.if.end75.i_crit_edge, label %do.end72.i

if.end64.i.if.end75.i_crit_edge:                  ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75.i

do.end72.i:                                       ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #8
  %147 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %call7.i.i, align 8
  %dev74.i = getelementptr inbounds %struct.hid_device, ptr %148, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev74.i, ptr noundef nonnull @.str.41) #10
  br label %if.end75.i

if.end75.i:                                       ; preds = %do.end72.i, %if.end64.i.if.end75.i_crit_edge
  %call78.i = tail call i32 @_test_and_clear_bit(i32 noundef 81, ptr noundef %ffbit.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78.i)
  %tobool79.not.i = icmp eq i32 %call78.i, 0
  br i1 %tobool79.not.i, label %if.end75.i.if.end87.i_crit_edge, label %do.end83.i

if.end75.i.if.end87.i_crit_edge:                  ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87.i

do.end83.i:                                       ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #8
  %149 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %call7.i.i, align 8
  %dev85.i = getelementptr inbounds %struct.hid_device, ptr %150, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev85.i, ptr noundef nonnull @.str.44) #10
  br label %if.end87.i

if.end87.i:                                       ; preds = %do.end83.i, %if.end75.i.if.end87.i_crit_edge, %if.end52.i.if.end87.i_crit_edge
  %ffbit88.i = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 12
  %arrayidx.i.i = getelementptr %struct.input_dev, ptr %3, i32 0, i32 12, i32 2
  %151 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load volatile i32, ptr %arrayidx.i.i, align 4
  %153 = and i32 %152, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool91.not.i = icmp eq i32 %153, 0
  br i1 %tobool91.not.i, label %if.end87.i.if.end105.i_crit_edge, label %land.lhs.true.i

if.end87.i.if.end105.i_crit_edge:                 ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105.i

land.lhs.true.i:                                  ; preds = %if.end87.i
  %set_constant.i = getelementptr inbounds %struct.pidff_device, ptr %call7.i.i, i32 0, i32 6
  %arrayidx94.i = getelementptr %struct.pidff_device, ptr %call7.i.i, i32 0, i32 1, i32 11
  %154 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx94.i, align 8
  %call95.i = tail call fastcc i32 @pidff_find_fields(ptr noundef %set_constant.i, ptr noundef nonnull @pidff_set_constant, ptr noundef %155, i32 noundef 2, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95.i)
  %tobool96.not.i = icmp eq i32 %call95.i, 0
  br i1 %tobool96.not.i, label %land.lhs.true.i.if.end105.i_crit_edge, label %do.end100.i

land.lhs.true.i.if.end105.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105.i

do.end100.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %156 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %call7.i.i, align 8
  %dev102.i = getelementptr inbounds %struct.hid_device, ptr %157, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev102.i, ptr noundef nonnull @.str.47) #10
  tail call void @_clear_bit(i32 noundef 82, ptr noundef %ffbit88.i) #6
  br label %if.end105.i

if.end105.i:                                      ; preds = %do.end100.i, %land.lhs.true.i.if.end105.i_crit_edge, %if.end87.i.if.end105.i_crit_edge
  %158 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load volatile i32, ptr %arrayidx.i.i, align 4
  %160 = and i32 %159, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool109.not.i = icmp eq i32 %160, 0
  br i1 %tobool109.not.i, label %if.end105.i.if.end124.i_crit_edge, label %land.lhs.true110.i

if.end105.i.if.end124.i_crit_edge:                ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end124.i

land.lhs.true110.i:                               ; preds = %if.end105.i
  %set_ramp.i = getelementptr inbounds %struct.pidff_device, ptr %call7.i.i, i32 0, i32 7
  %arrayidx113.i = getelementptr %struct.pidff_device, ptr %call7.i.i, i32 0, i32 1, i32 12
  %161 = ptrtoint ptr %arrayidx113.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %arrayidx113.i, align 4
  %call114.i = tail call fastcc i32 @pidff_find_fields(ptr noundef %set_ramp.i, ptr noundef nonnull @pidff_set_ramp, ptr noundef %162, i32 noundef 3, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.i)
  %tobool115.not.i = icmp eq i32 %call114.i, 0
  br i1 %tobool115.not.i, label %land.lhs.true110.i.if.end124.i_crit_edge, label %do.end119.i

land.lhs.true110.i.if.end124.i_crit_edge:         ; preds = %land.lhs.true110.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end124.i

do.end119.i:                                      ; preds = %land.lhs.true110.i
  call void @__sanitizer_cov_trace_pc() #8
  %163 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %call7.i.i, align 8
  %dev121.i = getelementptr inbounds %struct.hid_device, ptr %164, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev121.i, ptr noundef nonnull @.str.50) #10
  tail call void @_clear_bit(i32 noundef 87, ptr noundef %ffbit88.i) #6
  br label %if.end124.i

if.end124.i:                                      ; preds = %do.end119.i, %land.lhs.true110.i.if.end124.i_crit_edge, %if.end105.i.if.end124.i_crit_edge
  %165 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load volatile i32, ptr %arrayidx.i.i, align 4
  %167 = and i32 %166, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %tobool128.not.i = icmp eq i32 %167, 0
  br i1 %tobool128.not.i, label %lor.lhs.false129.i, label %if.end124.i.land.lhs.true144.i_crit_edge

if.end124.i.land.lhs.true144.i_crit_edge:         ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true144.i

lor.lhs.false129.i:                               ; preds = %if.end124.i
  %168 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load volatile i32, ptr %arrayidx.i.i, align 4
  %170 = and i32 %169, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool133.not.i = icmp eq i32 %170, 0
  br i1 %tobool133.not.i, label %lor.lhs.false134.i, label %lor.lhs.false129.i.land.lhs.true144.i_crit_edge

lor.lhs.false129.i.land.lhs.true144.i_crit_edge:  ; preds = %lor.lhs.false129.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true144.i

lor.lhs.false134.i:                               ; preds = %lor.lhs.false129.i
  %171 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load volatile i32, ptr %arrayidx.i.i, align 4
  %173 = and i32 %172, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %tobool138.not.i = icmp eq i32 %173, 0
  br i1 %tobool138.not.i, label %lor.lhs.false139.i, label %lor.lhs.false134.i.land.lhs.true144.i_crit_edge

lor.lhs.false134.i.land.lhs.true144.i_crit_edge:  ; preds = %lor.lhs.false134.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true144.i

lor.lhs.false139.i:                               ; preds = %lor.lhs.false134.i
  %174 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load volatile i32, ptr %arrayidx.i.i, align 4
  %176 = and i32 %175, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %tobool143.not.i = icmp eq i32 %176, 0
  br i1 %tobool143.not.i, label %lor.lhs.false139.i.if.end164.i_crit_edge, label %lor.lhs.false139.i.land.lhs.true144.i_crit_edge

lor.lhs.false139.i.land.lhs.true144.i_crit_edge:  ; preds = %lor.lhs.false139.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true144.i

lor.lhs.false139.i.if.end164.i_crit_edge:         ; preds = %lor.lhs.false139.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end164.i

land.lhs.true144.i:                               ; preds = %lor.lhs.false139.i.land.lhs.true144.i_crit_edge, %lor.lhs.false134.i.land.lhs.true144.i_crit_edge, %lor.lhs.false129.i.land.lhs.true144.i_crit_edge, %if.end124.i.land.lhs.true144.i_crit_edge
  %set_condition.i = getelementptr inbounds %struct.pidff_device, ptr %call7.i.i, i32 0, i32 4
  %arrayidx147.i = getelementptr %struct.pidff_device, ptr %call7.i.i, i32 0, i32 1, i32 9
  %177 = ptrtoint ptr %arrayidx147.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %arrayidx147.i, align 8
  %call148.i = tail call fastcc i32 @pidff_find_fields(ptr noundef %set_condition.i, ptr noundef nonnull @pidff_set_condition, ptr noundef %178, i32 noundef 8, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148.i)
  %tobool149.not.i = icmp eq i32 %call148.i, 0
  br i1 %tobool149.not.i, label %land.lhs.true144.i.if.end164.i_crit_edge, label %do.end153.i

land.lhs.true144.i.if.end164.i_crit_edge:         ; preds = %land.lhs.true144.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end164.i

do.end153.i:                                      ; preds = %land.lhs.true144.i
  call void @__sanitizer_cov_trace_pc() #8
  %179 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %call7.i.i, align 8
  %dev155.i = getelementptr inbounds %struct.hid_device, ptr %180, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev155.i, ptr noundef nonnull @.str.53) #10
  tail call void @_clear_bit(i32 noundef 83, ptr noundef %ffbit88.i) #6
  tail call void @_clear_bit(i32 noundef 85, ptr noundef %ffbit88.i) #6
  tail call void @_clear_bit(i32 noundef 84, ptr noundef %ffbit88.i) #6
  tail call void @_clear_bit(i32 noundef 86, ptr noundef %ffbit88.i) #6
  br label %if.end164.i

if.end164.i:                                      ; preds = %do.end153.i, %land.lhs.true144.i.if.end164.i_crit_edge, %lor.lhs.false139.i.if.end164.i_crit_edge
  %181 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load volatile i32, ptr %arrayidx.i.i, align 4
  %183 = and i32 %182, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %tobool168.not.i = icmp eq i32 %183, 0
  br i1 %tobool168.not.i, label %if.end164.i.if.end183.i_crit_edge, label %land.lhs.true169.i

if.end164.i.if.end183.i_crit_edge:                ; preds = %if.end164.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end183.i

land.lhs.true169.i:                               ; preds = %if.end164.i
  %set_periodic.i = getelementptr inbounds %struct.pidff_device, ptr %call7.i.i, i32 0, i32 5
  %arrayidx172.i = getelementptr %struct.pidff_device, ptr %call7.i.i, i32 0, i32 1, i32 10
  %184 = ptrtoint ptr %arrayidx172.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %arrayidx172.i, align 4
  %call173.i = tail call fastcc i32 @pidff_find_fields(ptr noundef %set_periodic.i, ptr noundef nonnull @pidff_set_periodic, ptr noundef %185, i32 noundef 5, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173.i)
  %tobool174.not.i = icmp eq i32 %call173.i, 0
  br i1 %tobool174.not.i, label %land.lhs.true169.i.if.end183.i_crit_edge, label %do.end178.i

land.lhs.true169.i.if.end183.i_crit_edge:         ; preds = %land.lhs.true169.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end183.i

do.end178.i:                                      ; preds = %land.lhs.true169.i
  call void @__sanitizer_cov_trace_pc() #8
  %186 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %call7.i.i, align 8
  %dev180.i = getelementptr inbounds %struct.hid_device, ptr %187, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev180.i, ptr noundef nonnull @.str.56) #10
  tail call void @_clear_bit(i32 noundef 81, ptr noundef %ffbit88.i) #6
  br label %if.end183.i

if.end183.i:                                      ; preds = %do.end178.i, %land.lhs.true169.i.if.end183.i_crit_edge, %if.end164.i.if.end183.i_crit_edge
  %pool.i = getelementptr inbounds %struct.pidff_device, ptr %call7.i.i, i32 0, i32 10
  %188 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %arrayidx.3.i, align 8
  %call187.i = tail call fastcc i32 @pidff_find_fields(ptr noundef %pool.i, ptr noundef nonnull @pidff_pool, ptr noundef %189, i32 noundef 3, i32 noundef 0) #6
  %device_gain.i = getelementptr inbounds %struct.pidff_device, ptr %call7.i.i, i32 0, i32 8
  %190 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %arrayidx.2.i, align 4
  %call191.i = tail call fastcc i32 @pidff_find_fields(ptr noundef %device_gain.i, ptr noundef nonnull @pidff_device_gain, ptr noundef %191, i32 noundef 1, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191.i)
  %tobool192.not.i = icmp eq i32 %call191.i, 0
  br i1 %tobool192.not.i, label %if.then193.i, label %if.end183.i.if.end55_crit_edge

if.end183.i.if.end55_crit_edge:                   ; preds = %if.end183.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.then193.i:                                     ; preds = %if.end183.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 96, ptr noundef %ffbit88.i) #6
  br label %if.end55

if.end55:                                         ; preds = %if.then193.i, %if.end183.i.if.end55_crit_edge
  tail call fastcc void @pidff_reset(ptr noundef nonnull %call7.i.i)
  %arrayidx.i = getelementptr %struct.input_dev, ptr %3, i32 0, i32 12, i32 3
  %192 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load volatile i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %193, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool57.not = icmp eq i32 %and1.i, 0
  br i1 %tobool57.not, label %if.end55.if.end61_crit_edge, label %if.then58

if.end55.if.end61_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then58:                                        ; preds = %if.end55
  %194 = ptrtoint ptr %device_gain.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %device_gain.i, align 8
  %logical_maximum.i.i = getelementptr inbounds %struct.hid_field, ptr %195, i32 0, i32 12
  %196 = ptrtoint ptr %logical_maximum.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %logical_maximum.i.i, align 4
  %logical_minimum.i.i = getelementptr inbounds %struct.hid_field, ptr %195, i32 0, i32 11
  %198 = ptrtoint ptr %logical_minimum.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %logical_minimum.i.i, align 4
  %sub.i.i = sub i32 %197, %199
  %mul.i.i = mul i32 %sub.i.i, 65535
  %div.i.i = sdiv i32 %mul.i.i, 65535
  %add.i.i = add i32 %div.i.i, %199
  %value1.i = getelementptr inbounds %struct.pidff_device, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 1
  %200 = ptrtoint ptr %value1.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %value1.i, align 4
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %add.i.i, ptr %201, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pidff_set.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hid_pidff_init, %if.then.i)) #6
          to label %pidff_set.exit [label %if.then.i], !srcloc !266

if.then.i:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #8
  %203 = ptrtoint ptr %value1.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %value1.i, align 4
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %204, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pidff_set.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.99, i32 noundef 65535, i32 noundef %206) #6
  br label %pidff_set.exit

pidff_set.exit:                                   ; preds = %if.then.i, %if.then58
  %207 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %arrayidx.2.i, align 4
  tail call void @hid_hw_request(ptr noundef %hid, ptr noundef %208, i32 noundef 9) #6
  br label %if.end61

if.end61:                                         ; preds = %pidff_set.exit, %if.end55.if.end61_crit_edge
  %call.i243 = tail call fastcc i32 @pidff_request_effect_upload(ptr noundef nonnull %call7.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i243)
  %tobool.not.i244 = icmp eq i32 %call.i243, 0
  br i1 %tobool.not.i244, label %if.end.i250, label %pidff_check_autocenter.exit

if.end.i250:                                      ; preds = %if.end61
  %209 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %value.i, align 4
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %210, align 4
  %213 = ptrtoint ptr %block_load.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %block_load.i, align 8
  %logical_minimum.i = getelementptr inbounds %struct.hid_field, ptr %214, i32 0, i32 11
  %215 = ptrtoint ptr %logical_minimum.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %logical_minimum.i, align 4
  %add.i = add i32 %216, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %212, i32 %add.i)
  %cmp.i249 = icmp eq i32 %212, %add.i
  br i1 %cmp.i249, label %if.then5.i, label %do.end8.i

if.then5.i:                                       ; preds = %if.end.i250
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @pidff_autocenter(ptr noundef nonnull %call7.i.i, i16 noundef zeroext -1) #6
  tail call void @_set_bit(i32 noundef 97, ptr noundef %ffbit88.i) #6
  br label %if.end65

do.end8.i:                                        ; preds = %if.end.i250
  call void @__sanitizer_cov_trace_pc() #8
  %217 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %call7.i.i, align 8
  %dev10.i = getelementptr inbounds %struct.hid_device, ptr %218, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev10.i, ptr noundef nonnull @.str.103) #10
  br label %if.end65

pidff_check_autocenter.exit:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  %219 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %call7.i.i, align 8
  %dev1.i245 = getelementptr inbounds %struct.hid_device, ptr %220, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i245, ptr noundef nonnull @.str.100) #10
  br label %fail

if.end65:                                         ; preds = %do.end8.i, %if.then5.i
  %221 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %value.i, align 4
  %223 = ptrtoint ptr %222 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %222, align 4
  %value.i.i = getelementptr inbounds %struct.pidff_device, ptr %call7.i.i, i32 0, i32 12, i32 0, i32 1
  %225 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %value.i.i, align 4
  %227 = ptrtoint ptr %226 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %224, ptr %226, align 4
  %228 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %call7.i.i, align 8
  %230 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %arrayidx.5.i, align 8
  tail call void @hid_hw_request(ptr noundef %229, ptr noundef %231, i32 noundef 9) #6
  %232 = ptrtoint ptr %block_load.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %block_load.i, align 8
  %logical_maximum = getelementptr inbounds %struct.hid_field, ptr %233, i32 0, i32 12
  %234 = ptrtoint ptr %logical_maximum to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %logical_maximum, align 4
  %logical_minimum = getelementptr inbounds %struct.hid_field, ptr %233, i32 0, i32 11
  %236 = ptrtoint ptr %logical_minimum to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %logical_minimum, align 4
  %sub = sub i32 %235, %237
  %add = add i32 %sub, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hid_pidff_init.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hid_pidff_init, %if.then82)) #6
          to label %do.end86 [label %if.then82], !srcloc !266

if.then82:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  %dev83 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hid_pidff_init.__UNIQUE_ID_ddebug253, ptr noundef %dev83, ptr noundef nonnull @.str.6, i32 noundef %add) #6
  br label %do.end86

do.end86:                                         ; preds = %if.then82, %if.end65
  %238 = tail call i32 @llvm.smin.i32(i32 %add, i32 64)
  %value = getelementptr %struct.pidff_device, ptr %call7.i.i, i32 0, i32 10, i32 1, i32 1
  %239 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %value, align 4
  %tobool90.not = icmp eq ptr %240, null
  br i1 %tobool90.not, label %do.end86.if.end113_crit_edge, label %do.body92

do.end86.if.end113_crit_edge:                     ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end113

do.body92:                                        ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hid_pidff_init.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hid_pidff_init, %if.then104)) #6
          to label %if.end113 [label %if.then104], !srcloc !266

if.then104:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #8
  %dev105 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  %241 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %value, align 4
  %243 = ptrtoint ptr %242 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %242, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hid_pidff_init.__UNIQUE_ID_ddebug254, ptr noundef %dev105, ptr noundef nonnull @.str.7, i32 noundef %244) #6
  br label %if.end113

if.end113:                                        ; preds = %if.then104, %do.body92, %do.end86.if.end113_crit_edge
  %value116 = getelementptr inbounds %struct.pidff_device, ptr %call7.i.i, i32 0, i32 10, i32 0, i32 1
  %245 = ptrtoint ptr %value116 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %value116, align 4
  %tobool117.not = icmp eq ptr %246, null
  br i1 %tobool117.not, label %if.end113.if.end140_crit_edge, label %do.body119

if.end113.if.end140_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end140

do.body119:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hid_pidff_init.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hid_pidff_init, %if.then131)) #6
          to label %if.end140 [label %if.then131], !srcloc !266

if.then131:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #8
  %dev132 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  %247 = ptrtoint ptr %value116 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %value116, align 4
  %249 = ptrtoint ptr %248 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %248, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hid_pidff_init.__UNIQUE_ID_ddebug255, ptr noundef %dev132, ptr noundef nonnull @.str.8, i32 noundef %250) #6
  br label %if.end140

if.end140:                                        ; preds = %if.then131, %do.body119, %if.end113.if.end140_crit_edge
  %value143 = getelementptr %struct.pidff_device, ptr %call7.i.i, i32 0, i32 10, i32 2, i32 1
  %251 = ptrtoint ptr %value143 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %value143, align 4
  %tobool144.not = icmp eq ptr %252, null
  br i1 %tobool144.not, label %if.end140.if.end155_crit_edge, label %land.lhs.true

if.end140.if.end155_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end155

land.lhs.true:                                    ; preds = %if.end140
  %253 = ptrtoint ptr %252 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %252, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %254)
  %cmp149 = icmp eq i32 %254, 0
  br i1 %cmp149, label %if.then150, label %land.lhs.true.if.end155_crit_edge

land.lhs.true.if.end155_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end155

if.then150:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %dev154 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev154, ptr noundef nonnull @.str.9) #10
  br label %fail

if.end155:                                        ; preds = %land.lhs.true.if.end155_crit_edge, %if.end140.if.end155_crit_edge
  %call156 = tail call i32 @input_ff_create(ptr noundef %3, i32 noundef %238) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %if.end159, label %if.end155.fail_crit_edge

if.end155.fail_crit_edge:                         ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end159:                                        ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #8
  %ff160 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 20
  %255 = ptrtoint ptr %ff160 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %ff160, align 8
  %private = getelementptr inbounds %struct.ff_device, ptr %256, i32 0, i32 6
  %257 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr %call7.i.i, ptr %private, align 4
  %258 = ptrtoint ptr %256 to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr @pidff_upload_effect, ptr %256, align 4
  %erase = getelementptr inbounds %struct.ff_device, ptr %256, i32 0, i32 1
  %259 = ptrtoint ptr %erase to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr @pidff_erase_effect, ptr %erase, align 4
  %set_gain = getelementptr inbounds %struct.ff_device, ptr %256, i32 0, i32 3
  %260 = ptrtoint ptr %set_gain to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr @pidff_set_gain, ptr %set_gain, align 4
  %set_autocenter = getelementptr inbounds %struct.ff_device, ptr %256, i32 0, i32 4
  %261 = ptrtoint ptr %set_autocenter to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr @pidff_set_autocenter, ptr %set_autocenter, align 4
  %playback = getelementptr inbounds %struct.ff_device, ptr %256, i32 0, i32 2
  %262 = ptrtoint ptr %playback to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr @pidff_playback, ptr %playback, align 4
  %dev164 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 40
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev164, ptr noundef nonnull @.str.13) #10
  tail call fastcc void @hid_device_io_stop(ptr noundef %hid)
  br label %cleanup

fail:                                             ; preds = %if.end155.fail_crit_edge, %if.then150, %pidff_check_autocenter.exit, %pidff_find_effects.exit.i, %if.end39.i.fail_crit_edge, %do.end36.i, %do.end24.i, %do.end12.i, %do.end.i239, %if.then46, %do.body34
  %error.0 = phi i32 [ %call.i243, %pidff_check_autocenter.exit ], [ -1, %if.then150 ], [ %call156, %if.end155.fail_crit_edge ], [ -19, %if.then46 ], [ -19, %do.body34 ], [ -19, %do.end.i239 ], [ -19, %do.end24.i ], [ -19, %do.end36.i ], [ -19, %do.end12.i ], [ -19, %pidff_find_effects.exit.i ], [ -19, %if.end39.i.fail_crit_edge ]
  %263 = ptrtoint ptr %io_started.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %io_started.i, align 4, !range !267
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %264)
  %tobool.not.i253 = icmp eq i8 %264, 0
  br i1 %tobool.not.i253, label %do.end.i255, label %if.end.i257

do.end.i255:                                      ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i254 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i254, ptr noundef nonnull @.str.122) #10
  br label %hid_device_io_stop.exit

if.end.i257:                                      ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #8
  %265 = ptrtoint ptr %io_started.i to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 0, ptr %io_started.i, align 4
  %driver_input_lock.i256 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 17
  tail call void @down(ptr noundef %driver_input_lock.i256) #6
  br label %hid_device_io_stop.exit

hid_device_io_stop.exit:                          ; preds = %if.end.i257, %do.end.i255
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %hid_device_io_stop.exit, %if.end159, %if.end25.cleanup_crit_edge, %if.then20, %do.body8
  %retval.0 = phi i32 [ %error.0, %hid_device_io_stop.exit ], [ 0, %if.end159 ], [ -19, %if.then20 ], [ -12, %if.end25.cleanup_crit_edge ], [ -19, %do.body8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pidff_find_reports(ptr noundef %hid, i32 noundef %report_type, ptr nocapture noundef %pidff) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %report_list = getelementptr %struct.hid_device, ptr %hid, i32 0, i32 15, i32 %report_type, i32 1
  %0 = ptrtoint ptr %report_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %report.0115 = load ptr, ptr %report_list, align 4
  %cmp.not116 = icmp eq ptr %report.0115, %report_list
  br i1 %cmp.not116, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  %collection = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %report.0117 = phi ptr [ %report.0115, %for.body.lr.ph ], [ %report.0, %for.inc.for.body_crit_edge ]
  %maxfield = getelementptr inbounds %struct.hid_report, ptr %report.0117, i32 0, i32 6
  %1 = ptrtoint ptr %maxfield to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %maxfield, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp4 = icmp eq i32 %2, 0
  br i1 %cmp4, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %field = getelementptr inbounds %struct.hid_report, ptr %report.0117, i32 0, i32 5
  %3 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %field, align 4
  %logical = getelementptr inbounds %struct.hid_field, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %logical to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %logical, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %if.end17 [
    i32 983073, label %if.end.do.body_crit_edge
    i32 983159, label %cleanup.fold.split.i
    i32 983165, label %cleanup.fold.split7.i
    i32 983167, label %cleanup.fold.split8.i
    i32 983177, label %cleanup.fold.split9.i
    i32 983184, label %cleanup.fold.split10.i
    i32 983190, label %cleanup.fold.split11.i
    i32 983211, label %cleanup.fold.split12.i
    i32 983130, label %cleanup.fold.split13.i
    i32 983135, label %cleanup.fold.split14.i
    i32 983150, label %cleanup.fold.split15.i
    i32 983155, label %cleanup.fold.split16.i
    i32 983156, label %cleanup.fold.split17.i
  ]

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

cleanup.fold.split.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

cleanup.fold.split7.i:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

cleanup.fold.split8.i:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

cleanup.fold.split9.i:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

cleanup.fold.split10.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

cleanup.fold.split11.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

cleanup.fold.split12.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

cleanup.fold.split13.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

cleanup.fold.split14.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

cleanup.fold.split15.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

cleanup.fold.split16.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

cleanup.fold.split17.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %cleanup.fold.split17.i, %cleanup.fold.split16.i, %cleanup.fold.split15.i, %cleanup.fold.split14.i, %cleanup.fold.split13.i, %cleanup.fold.split12.i, %cleanup.fold.split11.i, %cleanup.fold.split10.i, %cleanup.fold.split9.i, %cleanup.fold.split8.i, %cleanup.fold.split7.i, %cleanup.fold.split.i, %if.end.do.body_crit_edge
  %retval.0.i91.ph = phi i32 [ 12, %cleanup.fold.split17.i ], [ 11, %cleanup.fold.split16.i ], [ 10, %cleanup.fold.split15.i ], [ 9, %cleanup.fold.split14.i ], [ 8, %cleanup.fold.split13.i ], [ 7, %cleanup.fold.split12.i ], [ 6, %cleanup.fold.split11.i ], [ 5, %cleanup.fold.split10.i ], [ 4, %cleanup.fold.split9.i ], [ 3, %cleanup.fold.split8.i ], [ 2, %cleanup.fold.split7.i ], [ 1, %cleanup.fold.split.i ], [ 0, %if.end.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pidff_find_reports.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pidff_find_reports, %if.then13)) #6
          to label %do.end [label %if.then13], !srcloc !266

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx14 = getelementptr [13 x i8], ptr @pidff_reports, i32 0, i32 %retval.0.i91.ph
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx14, align 1
  %conv = zext i8 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pidff_find_reports.__UNIQUE_ID_ddebug244, ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %conv) #6
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  %arrayidx16 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 1, i32 %retval.0.i91.ph
  br label %for.inc.sink.split

if.end17:                                         ; preds = %if.end
  %usage = getelementptr inbounds %struct.hid_field, ptr %4, i32 0, i32 3
  %10 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usage, align 4
  %collection_index = getelementptr inbounds %struct.hid_usage, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %collection_index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %collection_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp21 = icmp slt i32 %13, 1
  br i1 %cmp21, label %if.end17.for.inc_crit_edge, label %lor.lhs.false

if.end17.for.inc_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false:                                    ; preds = %if.end17
  %14 = ptrtoint ptr %collection to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %collection, align 8
  %sub = add nsw i32 %13, -1
  %type = getelementptr %struct.hid_collection, ptr %15, i32 %sub, i32 1
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp24.not = icmp eq i32 %17, 2
  br i1 %cmp24.not, label %if.end27, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end27:                                         ; preds = %lor.lhs.false
  %usage31 = getelementptr %struct.hid_collection, ptr %15, i32 %sub, i32 2
  %18 = ptrtoint ptr %usage31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %usage31, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %19, label %if.end27.for.inc_crit_edge [
    i32 983073, label %if.end27.land.lhs.true_crit_edge
    i32 983159, label %cleanup.fold.split.i93
    i32 983165, label %cleanup.fold.split7.i94
    i32 983167, label %cleanup.fold.split8.i95
    i32 983177, label %cleanup.fold.split9.i96
    i32 983184, label %cleanup.fold.split10.i97
    i32 983190, label %cleanup.fold.split11.i98
    i32 983211, label %cleanup.fold.split12.i99
    i32 983130, label %cleanup.fold.split13.i100
    i32 983135, label %cleanup.fold.split14.i101
    i32 983150, label %cleanup.fold.split15.i102
    i32 983155, label %cleanup.fold.split16.i103
    i32 983156, label %cleanup.fold.split17.i104
  ]

if.end27.land.lhs.true_crit_edge:                 ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.end27.for.inc_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

cleanup.fold.split.i93:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

cleanup.fold.split7.i94:                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

cleanup.fold.split8.i95:                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

cleanup.fold.split9.i96:                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

cleanup.fold.split10.i97:                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

cleanup.fold.split11.i98:                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

cleanup.fold.split12.i99:                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

cleanup.fold.split13.i100:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

cleanup.fold.split14.i101:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

cleanup.fold.split15.i102:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

cleanup.fold.split16.i103:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

cleanup.fold.split17.i104:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cleanup.fold.split17.i104, %cleanup.fold.split16.i103, %cleanup.fold.split15.i102, %cleanup.fold.split14.i101, %cleanup.fold.split13.i100, %cleanup.fold.split12.i99, %cleanup.fold.split11.i98, %cleanup.fold.split10.i97, %cleanup.fold.split9.i96, %cleanup.fold.split8.i95, %cleanup.fold.split7.i94, %cleanup.fold.split.i93, %if.end27.land.lhs.true_crit_edge
  %retval.0.i105.ph = phi i32 [ 12, %cleanup.fold.split17.i104 ], [ 11, %cleanup.fold.split16.i103 ], [ 10, %cleanup.fold.split15.i102 ], [ 9, %cleanup.fold.split14.i101 ], [ 8, %cleanup.fold.split13.i100 ], [ 7, %cleanup.fold.split12.i99 ], [ 6, %cleanup.fold.split11.i98 ], [ 5, %cleanup.fold.split10.i97 ], [ 4, %cleanup.fold.split9.i96 ], [ 3, %cleanup.fold.split8.i95 ], [ 2, %cleanup.fold.split7.i94 ], [ 1, %cleanup.fold.split.i93 ], [ 0, %if.end27.land.lhs.true_crit_edge ]
  %arrayidx36 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 1, i32 %retval.0.i105.ph
  %21 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx36, align 4
  %tobool37.not = icmp eq ptr %22, null
  br i1 %tobool37.not, label %do.body39, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.body39:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pidff_find_reports.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pidff_find_reports, %if.then51)) #6
          to label %for.inc.sink.split [label %if.then51], !srcloc !266

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx53 = getelementptr [13 x i8], ptr @pidff_reports, i32 0, i32 %retval.0.i105.ph
  %23 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %24 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pidff_find_reports.__UNIQUE_ID_ddebug245, ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %conv54) #6
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.then51, %do.body39, %do.end
  %arrayidx36.sink = phi ptr [ %arrayidx16, %do.end ], [ %arrayidx36, %do.body39 ], [ %arrayidx36, %if.then51 ]
  %25 = ptrtoint ptr %arrayidx36.sink to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %report.0117, ptr %arrayidx36.sink, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %land.lhs.true.for.inc_crit_edge, %if.end27.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %if.end17.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %26 = ptrtoint ptr %report.0117 to i32
  call void @__asan_load4_noabort(i32 %26)
  %report.0 = load ptr, ptr %report.0117, align 4
  %cmp.not = icmp eq ptr %report.0, %report_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pidff_reset(ptr nocapture noundef readonly %pidff) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pidff to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pidff, align 4
  %control_id = getelementptr inbounds %struct.pidff_device, ptr %pidff, i32 0, i32 19
  %arrayidx = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 19, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %device_control = getelementptr inbounds %struct.pidff_device, ptr %pidff, i32 0, i32 16
  %4 = ptrtoint ptr %device_control to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_control, align 4
  %value = getelementptr inbounds %struct.hid_field, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %value, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %3, ptr %7, align 4
  %arrayidx3 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 1, i32 6
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx3, align 4
  tail call void @hid_hw_request(ptr noundef %1, ptr noundef %10, i32 noundef 9) #6
  %ll_driver.i = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 20
  %11 = ptrtoint ptr %ll_driver.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ll_driver.i, align 4
  %wait.i = getelementptr inbounds %struct.hid_ll_driver, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %wait.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wait.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %entry.hid_hw_wait.exit_crit_edge, label %if.then.i

entry.hid_hw_wait.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %hid_hw_wait.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %14(ptr noundef %1) #6
  br label %hid_hw_wait.exit

hid_hw_wait.exit:                                 ; preds = %if.then.i, %entry.hid_hw_wait.exit_crit_edge
  %15 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx3, align 4
  tail call void @hid_hw_request(ptr noundef %1, ptr noundef %16, i32 noundef 9) #6
  %17 = ptrtoint ptr %ll_driver.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ll_driver.i, align 4
  %wait.i65 = getelementptr inbounds %struct.hid_ll_driver, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %wait.i65 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wait.i65, align 4
  %tobool.not.i66 = icmp eq ptr %20, null
  br i1 %tobool.not.i66, label %hid_hw_wait.exit.hid_hw_wait.exit69_crit_edge, label %if.then.i68

hid_hw_wait.exit.hid_hw_wait.exit69_crit_edge:    ; preds = %hid_hw_wait.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %hid_hw_wait.exit69

if.then.i68:                                      ; preds = %hid_hw_wait.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i67 = tail call i32 %20(ptr noundef %1) #6
  br label %hid_hw_wait.exit69

hid_hw_wait.exit69:                               ; preds = %if.then.i68, %hid_hw_wait.exit.hid_hw_wait.exit69_crit_edge
  %21 = ptrtoint ptr %control_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %control_id, align 4
  %23 = ptrtoint ptr %device_control to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device_control, align 4
  %value9 = getelementptr inbounds %struct.hid_field, ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %value9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %value9, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %22, ptr %26, align 4
  %28 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx3, align 4
  tail call void @hid_hw_request(ptr noundef %1, ptr noundef %29, i32 noundef 9) #6
  %30 = ptrtoint ptr %ll_driver.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ll_driver.i, align 4
  %wait.i71 = getelementptr inbounds %struct.hid_ll_driver, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %wait.i71 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wait.i71, align 4
  %tobool.not.i72 = icmp eq ptr %33, null
  br i1 %tobool.not.i72, label %hid_hw_wait.exit69.hid_hw_wait.exit75_crit_edge, label %if.then.i74

hid_hw_wait.exit69.hid_hw_wait.exit75_crit_edge:  ; preds = %hid_hw_wait.exit69
  call void @__sanitizer_cov_trace_pc() #8
  br label %hid_hw_wait.exit75

if.then.i74:                                      ; preds = %hid_hw_wait.exit69
  call void @__sanitizer_cov_trace_pc() #8
  %call.i73 = tail call i32 %33(ptr noundef %1) #6
  br label %hid_hw_wait.exit75

hid_hw_wait.exit75:                               ; preds = %if.then.i74, %hid_hw_wait.exit69.hid_hw_wait.exit75_crit_edge
  %arrayidx14 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 1, i32 3
  %34 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx14, align 4
  tail call void @hid_hw_request(ptr noundef %1, ptr noundef %35, i32 noundef 1) #6
  %36 = ptrtoint ptr %ll_driver.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ll_driver.i, align 4
  %wait.i77 = getelementptr inbounds %struct.hid_ll_driver, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %wait.i77 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wait.i77, align 4
  %tobool.not.i78 = icmp eq ptr %39, null
  br i1 %tobool.not.i78, label %hid_hw_wait.exit75.hid_hw_wait.exit81_crit_edge, label %if.then.i80

hid_hw_wait.exit75.hid_hw_wait.exit81_crit_edge:  ; preds = %hid_hw_wait.exit75
  call void @__sanitizer_cov_trace_pc() #8
  br label %hid_hw_wait.exit81

if.then.i80:                                      ; preds = %hid_hw_wait.exit75
  call void @__sanitizer_cov_trace_pc() #8
  %call.i79 = tail call i32 %39(ptr noundef %1) #6
  br label %hid_hw_wait.exit81

hid_hw_wait.exit81:                               ; preds = %if.then.i80, %hid_hw_wait.exit75.hid_hw_wait.exit81_crit_edge
  %value16 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 10, i32 1, i32 1
  %40 = ptrtoint ptr %value16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %value16, align 4
  %tobool.not = icmp eq ptr %41, null
  br i1 %tobool.not, label %hid_hw_wait.exit81.if.end40_crit_edge, label %while.cond.preheader

hid_hw_wait.exit81.if.end40_crit_edge:            ; preds = %hid_hw_wait.exit81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

while.cond.preheader:                             ; preds = %hid_hw_wait.exit81
  %42 = ptrtoint ptr %value16 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %value16, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp90 = icmp slt i32 %45, 2
  br i1 %cmp90, label %while.cond.preheader.do.body28_crit_edge, label %while.cond.preheader.if.end40_crit_edge

while.cond.preheader.if.end40_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

while.cond.preheader.do.body28_crit_edge:         ; preds = %while.cond.preheader
  br label %do.body28

while.body:                                       ; preds = %hid_hw_wait.exit87
  %inc = add nuw nsw i32 %inc95, 1
  %exitcond = icmp eq i32 %inc95, 21
  br i1 %exitcond, label %do.end, label %while.body.do.body28_crit_edge

while.body.do.body28_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body28

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %pidff to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pidff, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %47, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.94, i32 noundef %59) #10
  br label %if.end40

do.body28:                                        ; preds = %while.body.do.body28_crit_edge, %while.cond.preheader.do.body28_crit_edge
  %inc95 = phi i32 [ %inc, %while.body.do.body28_crit_edge ], [ 1, %while.cond.preheader.do.body28_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pidff_reset.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pidff_reset, %if.then32)) #6
          to label %do.end37 [label %if.then32], !srcloc !266

if.then32:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %pidff to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pidff, align 4
  %dev34 = getelementptr inbounds %struct.hid_device, ptr %49, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pidff_reset.__UNIQUE_ID_ddebug249, ptr noundef %dev34, ptr noundef nonnull @.str.96) #6
  br label %do.end37

do.end37:                                         ; preds = %if.then32, %do.body28
  %50 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx14, align 4
  tail call void @hid_hw_request(ptr noundef %1, ptr noundef %51, i32 noundef 1) #6
  %52 = ptrtoint ptr %ll_driver.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ll_driver.i, align 4
  %wait.i83 = getelementptr inbounds %struct.hid_ll_driver, ptr %53, i32 0, i32 7
  %54 = ptrtoint ptr %wait.i83 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %wait.i83, align 4
  %tobool.not.i84 = icmp eq ptr %55, null
  br i1 %tobool.not.i84, label %do.end37.hid_hw_wait.exit87_crit_edge, label %if.then.i86

do.end37.hid_hw_wait.exit87_crit_edge:            ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %hid_hw_wait.exit87

if.then.i86:                                      ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #8
  %call.i85 = tail call i32 %55(ptr noundef %1) #6
  br label %hid_hw_wait.exit87

hid_hw_wait.exit87:                               ; preds = %if.then.i86, %do.end37.hid_hw_wait.exit87_crit_edge
  %56 = ptrtoint ptr %value16 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %value16, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cmp = icmp slt i32 %59, 2
  br i1 %cmp, label %while.body, label %hid_hw_wait.exit87.if.end40_crit_edge

hid_hw_wait.exit87.if.end40_crit_edge:            ; preds = %hid_hw_wait.exit87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.end40:                                         ; preds = %hid_hw_wait.exit87.if.end40_crit_edge, %do.end, %while.cond.preheader.if.end40_crit_edge, %hid_hw_wait.exit81.if.end40_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_create(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pidff_upload_effect(ptr nocapture noundef readonly %dev, ptr noundef readonly %effect, ptr noundef readonly %old) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ff = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %ff to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ff, align 8
  %private = getelementptr inbounds %struct.ff_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %value = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 9, i32 0, i32 1
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %value, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %5, align 4
  %tobool.not = icmp eq ptr %old, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %id = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 1
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %id, align 2
  %idxprom = sext i16 %8 to i32
  %arrayidx2 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 23, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx2, align 4
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %value, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %10, ptr %12, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %effect to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %effect, align 4
  %16 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.125)
  switch i16 %15, label %do.end203 [
    i16 82, label %sw.bb
    i16 81, label %sw.bb36
    i16 87, label %sw.bb78
    i16 83, label %sw.bb112
    i16 84, label %sw.bb134
    i16 85, label %sw.bb156
    i16 86, label %sw.bb178
  ]

sw.bb:                                            ; preds = %if.end
  br i1 %tobool.not, label %if.then8, label %lor.lhs.false.critedge

if.then8:                                         ; preds = %sw.bb
  %type_id9 = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 20
  %17 = ptrtoint ptr %type_id9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type_id9, align 4
  %call = tail call fastcc i32 @pidff_request_effect_upload(ptr noundef %3, i32 noundef %18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %if.then24.critedge, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.critedge:                           ; preds = %sw.bb
  %replay.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 4
  %19 = ptrtoint ptr %replay.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %replay.i, align 2
  %replay1.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 4
  %21 = ptrtoint ptr %replay1.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %replay1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %22)
  %cmp.not.i = icmp eq i16 %20, %22
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %lor.lhs.false.critedge.lor.lhs.false21.critedge362_crit_edge

lor.lhs.false.critedge.lor.lhs.false21.critedge362_crit_edge: ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false21.critedge362

lor.lhs.false.i:                                  ; preds = %lor.lhs.false.critedge
  %interval.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %interval.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %interval.i, align 2
  %interval7.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %interval7.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %interval7.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %26)
  %cmp9.not.i = icmp eq i16 %24, %26
  br i1 %cmp9.not.i, label %lor.lhs.false11.i, label %lor.lhs.false.i.lor.lhs.false21.critedge362_crit_edge

lor.lhs.false.i.lor.lhs.false21.critedge362_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false21.critedge362

lor.lhs.false11.i:                                ; preds = %lor.lhs.false.i
  %trigger6.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 3
  %trigger.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 3
  %27 = ptrtoint ptr %trigger.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %trigger.i, align 2
  %29 = ptrtoint ptr %trigger6.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %trigger6.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %30)
  %cmp17.not.i = icmp eq i16 %28, %30
  br i1 %cmp17.not.i, label %lor.lhs.false19.i, label %lor.lhs.false11.i.lor.lhs.false21.critedge362_crit_edge

lor.lhs.false11.i.lor.lhs.false21.critedge362_crit_edge: ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false21.critedge362

lor.lhs.false19.i:                                ; preds = %lor.lhs.false11.i
  %direction.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 2
  %31 = ptrtoint ptr %direction.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %direction.i, align 4
  %direction21.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 2
  %33 = ptrtoint ptr %direction21.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %direction21.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %32, i16 %34)
  %cmp23.not.i = icmp eq i16 %32, %34
  br i1 %cmp23.not.i, label %pidff_needs_set_effect.exit, label %lor.lhs.false19.i.lor.lhs.false21.critedge362_crit_edge

lor.lhs.false19.i.lor.lhs.false21.critedge362_crit_edge: ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false21.critedge362

pidff_needs_set_effect.exit:                      ; preds = %lor.lhs.false19.i
  %delay.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %delay.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %delay.i, align 2
  %delay28.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %delay28.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %delay28.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %36, i16 %38)
  %cmp30.i.not = icmp eq i16 %36, %38
  br i1 %cmp30.i.not, label %pidff_needs_set_effect.exit.lor.lhs.false21_crit_edge, label %pidff_needs_set_effect.exit.lor.lhs.false21.critedge362_crit_edge

pidff_needs_set_effect.exit.lor.lhs.false21.critedge362_crit_edge: ; preds = %pidff_needs_set_effect.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false21.critedge362

pidff_needs_set_effect.exit.lor.lhs.false21_crit_edge: ; preds = %pidff_needs_set_effect.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false21

lor.lhs.false21.critedge362:                      ; preds = %pidff_needs_set_effect.exit.lor.lhs.false21.critedge362_crit_edge, %lor.lhs.false19.i.lor.lhs.false21.critedge362_crit_edge, %lor.lhs.false11.i.lor.lhs.false21.critedge362_crit_edge, %lor.lhs.false.i.lor.lhs.false21.critedge362_crit_edge, %lor.lhs.false.critedge.lor.lhs.false21.critedge362_crit_edge
  %39 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %value, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %value3.i = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 2, i32 0, i32 1
  %43 = ptrtoint ptr %value3.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %value3.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %42, ptr %44, align 4
  %create_new_effect_type.i = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 13
  %46 = ptrtoint ptr %create_new_effect_type.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %create_new_effect_type.i, align 4
  %value5.i = getelementptr inbounds %struct.hid_field, ptr %47, i32 0, i32 10
  %48 = ptrtoint ptr %value5.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %value5.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  %set_effect_type.i = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 14
  %52 = ptrtoint ptr %set_effect_type.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %set_effect_type.i, align 4
  %value7.i = getelementptr inbounds %struct.hid_field, ptr %53, i32 0, i32 10
  %54 = ptrtoint ptr %value7.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %value7.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %51, ptr %55, align 4
  %57 = ptrtoint ptr %replay.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %replay.i, align 2
  %conv.i = zext i16 %58 to i32
  %value11.i = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 1, i32 1
  %59 = ptrtoint ptr %value11.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %value11.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv.i, ptr %60, align 4
  %trigger.i373 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 3
  %62 = ptrtoint ptr %trigger.i373 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %trigger.i373, align 2
  %conv13.i = zext i16 %63 to i32
  %value16.i = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 3, i32 1
  %64 = ptrtoint ptr %value16.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %value16.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv13.i, ptr %65, align 4
  %interval.i374 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 3, i32 1
  %67 = ptrtoint ptr %interval.i374 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %interval.i374, align 2
  %conv19.i = zext i16 %68 to i32
  %value22.i = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 4, i32 1
  %69 = ptrtoint ptr %value22.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %value22.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %conv19.i, ptr %70, align 4
  %arrayidx25.i = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 2
  %72 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx25.i, align 4
  %logical_maximum.i = getelementptr inbounds %struct.hid_field, ptr %73, i32 0, i32 12
  %74 = ptrtoint ptr %logical_maximum.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %logical_maximum.i, align 4
  %value28.i = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 2, i32 1
  %76 = ptrtoint ptr %value28.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %value28.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %75, ptr %77, align 4
  %value32.i = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 5, i32 1
  %79 = ptrtoint ptr %value32.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %value32.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %80, align 4
  %direction.i375 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 2
  %82 = ptrtoint ptr %direction.i375 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %direction.i375, align 4
  %conv34.i = zext i16 %83 to i32
  %effect_direction.i = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 15
  %84 = ptrtoint ptr %effect_direction.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %effect_direction.i, align 4
  %logical_maximum.i.i = getelementptr inbounds %struct.hid_field, ptr %85, i32 0, i32 12
  %86 = ptrtoint ptr %logical_maximum.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %logical_maximum.i.i, align 4
  %logical_minimum.i.i = getelementptr inbounds %struct.hid_field, ptr %85, i32 0, i32 11
  %88 = ptrtoint ptr %logical_minimum.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %logical_minimum.i.i, align 4
  %sub.i.i = sub i32 %87, %89
  %mul.i.i = mul i32 %sub.i.i, %conv34.i
  %div.i.i = sdiv i32 %mul.i.i, 65535
  %add.i.i = add i32 %div.i.i, %89
  %value36.i = getelementptr inbounds %struct.hid_field, ptr %85, i32 0, i32 10
  %90 = ptrtoint ptr %value36.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %value36.i, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %add.i.i, ptr %91, align 4
  %delay.i376 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 4, i32 1
  %93 = ptrtoint ptr %delay.i376 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %delay.i376, align 2
  %conv39.i = zext i16 %94 to i32
  %value42.i = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 6, i32 1
  %95 = ptrtoint ptr %value42.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %value42.i, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %conv39.i, ptr %96, align 4
  %98 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %3, align 4
  %reports.i = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 1
  %100 = ptrtoint ptr %reports.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %reports.i, align 4
  tail call void @hid_hw_request(ptr noundef %99, ptr noundef %101, i32 noundef 9) #6
  br label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false21.critedge362, %pidff_needs_set_effect.exit.lor.lhs.false21_crit_edge
  %u.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %102 = ptrtoint ptr %u.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %u.i, align 4
  %u1.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5
  %104 = ptrtoint ptr %u1.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %u1.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %103, i16 %105)
  %cmp.i.not = icmp eq i16 %103, %105
  br i1 %cmp.i.not, label %lor.lhs.false21.lor.lhs.false27_crit_edge, label %lor.lhs.false27.critedge363

lor.lhs.false21.lor.lhs.false27_crit_edge:        ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false27

if.then24.critedge:                               ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @pidff_set_effect_report(ptr noundef %3, ptr noundef %effect)
  tail call fastcc void @pidff_set_constant_force_report(ptr noundef %3, ptr noundef %effect)
  br label %if.then32

lor.lhs.false27.critedge363:                      ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @pidff_set_constant_force_report(ptr noundef %3, ptr noundef %effect)
  br label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false27.critedge363, %lor.lhs.false21.lor.lhs.false27_crit_edge
  %envelope = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %envelope29 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 1
  %attack_level.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 2
  %106 = ptrtoint ptr %attack_level.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %attack_level.i, align 2
  %attack_level1.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 2
  %108 = ptrtoint ptr %attack_level1.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %attack_level1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %107, i16 %109)
  %cmp.not.i377 = icmp eq i16 %107, %109
  br i1 %cmp.not.i377, label %lor.lhs.false.i378, label %lor.lhs.false27.if.then32_crit_edge

lor.lhs.false27.if.then32_crit_edge:              ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32

lor.lhs.false.i378:                               ; preds = %lor.lhs.false27
  %fade_level.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 4
  %110 = ptrtoint ptr %fade_level.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %fade_level.i, align 2
  %fade_level5.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 4
  %112 = ptrtoint ptr %fade_level5.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %fade_level5.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %111, i16 %113)
  %cmp7.not.i = icmp eq i16 %111, %113
  br i1 %cmp7.not.i, label %lor.lhs.false9.i, label %lor.lhs.false.i378.if.then32_crit_edge

lor.lhs.false.i378.if.then32_crit_edge:           ; preds = %lor.lhs.false.i378
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false.i378
  %114 = ptrtoint ptr %envelope to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %envelope, align 2
  %116 = ptrtoint ptr %envelope29 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %envelope29, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %115, i16 %117)
  %cmp13.not.i = icmp eq i16 %115, %117
  br i1 %cmp13.not.i, label %pidff_needs_set_envelope.exit, label %lor.lhs.false9.i.if.then32_crit_edge

lor.lhs.false9.i.if.then32_crit_edge:             ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32

pidff_needs_set_envelope.exit:                    ; preds = %lor.lhs.false9.i
  %fade_length.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 3
  %118 = ptrtoint ptr %fade_length.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %fade_length.i, align 2
  %fade_length16.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 3
  %120 = ptrtoint ptr %fade_length16.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %fade_length16.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %119, i16 %121)
  %cmp18.i.not = icmp eq i16 %119, %121
  br i1 %cmp18.i.not, label %pidff_needs_set_envelope.exit.do.body218_crit_edge, label %pidff_needs_set_envelope.exit.if.then32_crit_edge

pidff_needs_set_envelope.exit.if.then32_crit_edge: ; preds = %pidff_needs_set_envelope.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32

pidff_needs_set_envelope.exit.do.body218_crit_edge: ; preds = %pidff_needs_set_envelope.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body218

if.then32:                                        ; preds = %pidff_needs_set_envelope.exit.if.then32_crit_edge, %lor.lhs.false9.i.if.then32_crit_edge, %lor.lhs.false.i378.if.then32_crit_edge, %lor.lhs.false27.if.then32_crit_edge, %if.then24.critedge
  %envelope34 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  tail call fastcc void @pidff_set_envelope_report(ptr noundef %3, ptr noundef %envelope34)
  br label %sw.epilog206

sw.bb36:                                          ; preds = %if.end
  br i1 %tobool.not, label %if.then38, label %lor.lhs.false55

if.then38:                                        ; preds = %sw.bb36
  %u39 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %122 = ptrtoint ptr %u39 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %u39, align 4
  %switch.tableidx = add i16 %123, -88
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %switch.tableidx)
  %124 = icmp ult i16 %switch.tableidx, 5
  br i1 %124, label %switch.lookup, label %do.end

do.end:                                           ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  %125 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %3, align 4
  %dev46 = getelementptr inbounds %struct.hid_device, ptr %126, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev46, ptr noundef nonnull @.str.111) #10
  br label %cleanup

switch.lookup:                                    ; preds = %if.then38
  %127 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.pidff_upload_effect, i32 0, i32 %127
  %128 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %128)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx48 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 20, i32 %switch.load
  %129 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx48, align 4
  %call49 = tail call fastcc i32 @pidff_request_effect_upload(ptr noundef %3, i32 noundef %130)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then64.critedge, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false55:                                  ; preds = %sw.bb36
  %replay.i381 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 4
  %131 = ptrtoint ptr %replay.i381 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %replay.i381, align 2
  %replay1.i382 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 4
  %133 = ptrtoint ptr %replay1.i382 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %replay1.i382, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %132, i16 %134)
  %cmp.not.i383 = icmp eq i16 %132, %134
  br i1 %cmp.not.i383, label %lor.lhs.false.i387, label %lor.lhs.false55.lor.lhs.false61.critedge364_crit_edge

lor.lhs.false55.lor.lhs.false61.critedge364_crit_edge: ; preds = %lor.lhs.false55
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false61.critedge364

lor.lhs.false.i387:                               ; preds = %lor.lhs.false55
  %interval.i384 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 3, i32 1
  %135 = ptrtoint ptr %interval.i384 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %interval.i384, align 2
  %interval7.i385 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 3, i32 1
  %137 = ptrtoint ptr %interval7.i385 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %interval7.i385, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %136, i16 %138)
  %cmp9.not.i386 = icmp eq i16 %136, %138
  br i1 %cmp9.not.i386, label %lor.lhs.false11.i391, label %lor.lhs.false.i387.lor.lhs.false61.critedge364_crit_edge

lor.lhs.false.i387.lor.lhs.false61.critedge364_crit_edge: ; preds = %lor.lhs.false.i387
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false61.critedge364

lor.lhs.false11.i391:                             ; preds = %lor.lhs.false.i387
  %trigger6.i388 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 3
  %trigger.i389 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 3
  %139 = ptrtoint ptr %trigger.i389 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %trigger.i389, align 2
  %141 = ptrtoint ptr %trigger6.i388 to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %trigger6.i388, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %140, i16 %142)
  %cmp17.not.i390 = icmp eq i16 %140, %142
  br i1 %cmp17.not.i390, label %lor.lhs.false19.i395, label %lor.lhs.false11.i391.lor.lhs.false61.critedge364_crit_edge

lor.lhs.false11.i391.lor.lhs.false61.critedge364_crit_edge: ; preds = %lor.lhs.false11.i391
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false61.critedge364

lor.lhs.false19.i395:                             ; preds = %lor.lhs.false11.i391
  %direction.i392 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 2
  %143 = ptrtoint ptr %direction.i392 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %direction.i392, align 4
  %direction21.i393 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 2
  %145 = ptrtoint ptr %direction21.i393 to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %direction21.i393, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %144, i16 %146)
  %cmp23.not.i394 = icmp eq i16 %144, %146
  br i1 %cmp23.not.i394, label %pidff_needs_set_effect.exit401, label %lor.lhs.false19.i395.lor.lhs.false61.critedge364_crit_edge

lor.lhs.false19.i395.lor.lhs.false61.critedge364_crit_edge: ; preds = %lor.lhs.false19.i395
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false61.critedge364

pidff_needs_set_effect.exit401:                   ; preds = %lor.lhs.false19.i395
  %delay.i396 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 4, i32 1
  %147 = ptrtoint ptr %delay.i396 to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %delay.i396, align 2
  %delay28.i397 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 4, i32 1
  %149 = ptrtoint ptr %delay28.i397 to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %delay28.i397, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %148, i16 %150)
  %cmp30.i398.not = icmp eq i16 %148, %150
  br i1 %cmp30.i398.not, label %pidff_needs_set_effect.exit401.lor.lhs.false61_crit_edge, label %pidff_needs_set_effect.exit401.lor.lhs.false61.critedge364_crit_edge

pidff_needs_set_effect.exit401.lor.lhs.false61.critedge364_crit_edge: ; preds = %pidff_needs_set_effect.exit401
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false61.critedge364

pidff_needs_set_effect.exit401.lor.lhs.false61_crit_edge: ; preds = %pidff_needs_set_effect.exit401
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false61

lor.lhs.false61.critedge364:                      ; preds = %pidff_needs_set_effect.exit401.lor.lhs.false61.critedge364_crit_edge, %lor.lhs.false19.i395.lor.lhs.false61.critedge364_crit_edge, %lor.lhs.false11.i391.lor.lhs.false61.critedge364_crit_edge, %lor.lhs.false.i387.lor.lhs.false61.critedge364_crit_edge, %lor.lhs.false55.lor.lhs.false61.critedge364_crit_edge
  %151 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %value, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %152, align 4
  %value3.i403 = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 2, i32 0, i32 1
  %155 = ptrtoint ptr %value3.i403 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %value3.i403, align 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %154, ptr %156, align 4
  %create_new_effect_type.i404 = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 13
  %158 = ptrtoint ptr %create_new_effect_type.i404 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %create_new_effect_type.i404, align 4
  %value5.i405 = getelementptr inbounds %struct.hid_field, ptr %159, i32 0, i32 10
  %160 = ptrtoint ptr %value5.i405 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %value5.i405, align 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %161, align 4
  %set_effect_type.i406 = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 14
  %164 = ptrtoint ptr %set_effect_type.i406 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %set_effect_type.i406, align 4
  %value7.i407 = getelementptr inbounds %struct.hid_field, ptr %165, i32 0, i32 10
  %166 = ptrtoint ptr %value7.i407 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %value7.i407, align 4
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %163, ptr %167, align 4
  %169 = ptrtoint ptr %replay.i381 to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %replay.i381, align 2
  %conv.i409 = zext i16 %170 to i32
  %value11.i410 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 1, i32 1
  %171 = ptrtoint ptr %value11.i410 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %value11.i410, align 4
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %conv.i409, ptr %172, align 4
  %trigger.i411 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 3
  %174 = ptrtoint ptr %trigger.i411 to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %trigger.i411, align 2
  %conv13.i412 = zext i16 %175 to i32
  %value16.i413 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 3, i32 1
  %176 = ptrtoint ptr %value16.i413 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %value16.i413, align 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %conv13.i412, ptr %177, align 4
  %interval.i414 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 3, i32 1
  %179 = ptrtoint ptr %interval.i414 to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %interval.i414, align 2
  %conv19.i415 = zext i16 %180 to i32
  %value22.i416 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 4, i32 1
  %181 = ptrtoint ptr %value22.i416 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %value22.i416, align 4
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %conv19.i415, ptr %182, align 4
  %arrayidx25.i417 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 2
  %184 = ptrtoint ptr %arrayidx25.i417 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %arrayidx25.i417, align 4
  %logical_maximum.i418 = getelementptr inbounds %struct.hid_field, ptr %185, i32 0, i32 12
  %186 = ptrtoint ptr %logical_maximum.i418 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %logical_maximum.i418, align 4
  %value28.i419 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 2, i32 1
  %188 = ptrtoint ptr %value28.i419 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %value28.i419, align 4
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %187, ptr %189, align 4
  %value32.i420 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 5, i32 1
  %191 = ptrtoint ptr %value32.i420 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %value32.i420, align 4
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 1, ptr %192, align 4
  %direction.i421 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 2
  %194 = ptrtoint ptr %direction.i421 to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %direction.i421, align 4
  %conv34.i422 = zext i16 %195 to i32
  %effect_direction.i423 = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 15
  %196 = ptrtoint ptr %effect_direction.i423 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %effect_direction.i423, align 4
  %logical_maximum.i.i424 = getelementptr inbounds %struct.hid_field, ptr %197, i32 0, i32 12
  %198 = ptrtoint ptr %logical_maximum.i.i424 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %logical_maximum.i.i424, align 4
  %logical_minimum.i.i425 = getelementptr inbounds %struct.hid_field, ptr %197, i32 0, i32 11
  %200 = ptrtoint ptr %logical_minimum.i.i425 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %logical_minimum.i.i425, align 4
  %sub.i.i426 = sub i32 %199, %201
  %mul.i.i427 = mul i32 %sub.i.i426, %conv34.i422
  %div.i.i428 = sdiv i32 %mul.i.i427, 65535
  %add.i.i429 = add i32 %div.i.i428, %201
  %value36.i430 = getelementptr inbounds %struct.hid_field, ptr %197, i32 0, i32 10
  %202 = ptrtoint ptr %value36.i430 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %value36.i430, align 4
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %add.i.i429, ptr %203, align 4
  %delay.i431 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 4, i32 1
  %205 = ptrtoint ptr %delay.i431 to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %delay.i431, align 2
  %conv39.i432 = zext i16 %206 to i32
  %value42.i433 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 6, i32 1
  %207 = ptrtoint ptr %value42.i433 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %value42.i433, align 4
  %209 = ptrtoint ptr %208 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %conv39.i432, ptr %208, align 4
  %210 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %3, align 4
  %reports.i434 = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 1
  %212 = ptrtoint ptr %reports.i434 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %reports.i434, align 4
  tail call void @hid_hw_request(ptr noundef %211, ptr noundef %213, i32 noundef 9) #6
  br label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %lor.lhs.false61.critedge364, %pidff_needs_set_effect.exit401.lor.lhs.false61_crit_edge
  %magnitude.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 2
  %214 = ptrtoint ptr %magnitude.i to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %magnitude.i, align 4
  %magnitude2.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 2
  %216 = ptrtoint ptr %magnitude2.i to i32
  call void @__asan_load2_noabort(i32 %216)
  %217 = load i16, ptr %magnitude2.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %215, i16 %217)
  %cmp.not.i435 = icmp eq i16 %215, %217
  br i1 %cmp.not.i435, label %lor.lhs.false.i436, label %lor.lhs.false61.lor.lhs.false67.critedge365_crit_edge

lor.lhs.false61.lor.lhs.false67.critedge365_crit_edge: ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false67.critedge365

lor.lhs.false.i436:                               ; preds = %lor.lhs.false61
  %offset.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 3
  %218 = ptrtoint ptr %offset.i to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %offset.i, align 2
  %offset8.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 3
  %220 = ptrtoint ptr %offset8.i to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %offset8.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %219, i16 %221)
  %cmp10.not.i = icmp eq i16 %219, %221
  br i1 %cmp10.not.i, label %lor.lhs.false12.i, label %lor.lhs.false.i436.lor.lhs.false67.critedge365_crit_edge

lor.lhs.false.i436.lor.lhs.false67.critedge365_crit_edge: ; preds = %lor.lhs.false.i436
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false67.critedge365

lor.lhs.false12.i:                                ; preds = %lor.lhs.false.i436
  %phase.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 4
  %222 = ptrtoint ptr %phase.i to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %phase.i, align 4
  %phase16.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 4
  %224 = ptrtoint ptr %phase16.i to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %phase16.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %223, i16 %225)
  %cmp18.not.i = icmp eq i16 %223, %225
  br i1 %cmp18.not.i, label %pidff_needs_set_periodic.exit, label %lor.lhs.false12.i.lor.lhs.false67.critedge365_crit_edge

lor.lhs.false12.i.lor.lhs.false67.critedge365_crit_edge: ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false67.critedge365

pidff_needs_set_periodic.exit:                    ; preds = %lor.lhs.false12.i
  %period.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %226 = ptrtoint ptr %period.i to i32
  call void @__asan_load2_noabort(i32 %226)
  %227 = load i16, ptr %period.i, align 2
  %period23.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 1
  %228 = ptrtoint ptr %period23.i to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %period23.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %227, i16 %229)
  %cmp25.i.not = icmp eq i16 %227, %229
  br i1 %cmp25.i.not, label %pidff_needs_set_periodic.exit.lor.lhs.false67_crit_edge, label %pidff_needs_set_periodic.exit.lor.lhs.false67.critedge365_crit_edge

pidff_needs_set_periodic.exit.lor.lhs.false67.critedge365_crit_edge: ; preds = %pidff_needs_set_periodic.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false67.critedge365

pidff_needs_set_periodic.exit.lor.lhs.false67_crit_edge: ; preds = %pidff_needs_set_periodic.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false67

if.then64.critedge:                               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @pidff_set_effect_report(ptr noundef %3, ptr noundef %effect)
  tail call fastcc void @pidff_set_periodic_report(ptr noundef %3, ptr noundef %effect)
  br label %if.then74

lor.lhs.false67.critedge365:                      ; preds = %pidff_needs_set_periodic.exit.lor.lhs.false67.critedge365_crit_edge, %lor.lhs.false12.i.lor.lhs.false67.critedge365_crit_edge, %lor.lhs.false.i436.lor.lhs.false67.critedge365_crit_edge, %lor.lhs.false61.lor.lhs.false67.critedge365_crit_edge
  tail call fastcc void @pidff_set_periodic_report(ptr noundef %3, ptr noundef %effect)
  br label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %lor.lhs.false67.critedge365, %pidff_needs_set_periodic.exit.lor.lhs.false67_crit_edge
  %envelope69 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5
  %envelope71 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 5
  %attack_level.i439 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5, i32 1
  %230 = ptrtoint ptr %attack_level.i439 to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %attack_level.i439, align 2
  %attack_level1.i440 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 5, i32 1
  %232 = ptrtoint ptr %attack_level1.i440 to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %attack_level1.i440, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %231, i16 %233)
  %cmp.not.i441 = icmp eq i16 %231, %233
  br i1 %cmp.not.i441, label %lor.lhs.false.i445, label %lor.lhs.false67.if.then74_crit_edge

lor.lhs.false67.if.then74_crit_edge:              ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then74

lor.lhs.false.i445:                               ; preds = %lor.lhs.false67
  %fade_level.i442 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5, i32 3
  %234 = ptrtoint ptr %fade_level.i442 to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %fade_level.i442, align 2
  %fade_level5.i443 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 5, i32 3
  %236 = ptrtoint ptr %fade_level5.i443 to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %fade_level5.i443, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %235, i16 %237)
  %cmp7.not.i444 = icmp eq i16 %235, %237
  br i1 %cmp7.not.i444, label %lor.lhs.false9.i447, label %lor.lhs.false.i445.if.then74_crit_edge

lor.lhs.false.i445.if.then74_crit_edge:           ; preds = %lor.lhs.false.i445
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then74

lor.lhs.false9.i447:                              ; preds = %lor.lhs.false.i445
  %238 = ptrtoint ptr %envelope69 to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %envelope69, align 2
  %240 = ptrtoint ptr %envelope71 to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %envelope71, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %239, i16 %241)
  %cmp13.not.i446 = icmp eq i16 %239, %241
  br i1 %cmp13.not.i446, label %pidff_needs_set_envelope.exit453, label %lor.lhs.false9.i447.if.then74_crit_edge

lor.lhs.false9.i447.if.then74_crit_edge:          ; preds = %lor.lhs.false9.i447
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then74

pidff_needs_set_envelope.exit453:                 ; preds = %lor.lhs.false9.i447
  %fade_length.i448 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5, i32 2
  %242 = ptrtoint ptr %fade_length.i448 to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %fade_length.i448, align 2
  %fade_length16.i449 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 5, i32 2
  %244 = ptrtoint ptr %fade_length16.i449 to i32
  call void @__asan_load2_noabort(i32 %244)
  %245 = load i16, ptr %fade_length16.i449, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %243, i16 %245)
  %cmp18.i450.not = icmp eq i16 %243, %245
  br i1 %cmp18.i450.not, label %pidff_needs_set_envelope.exit453.do.body218_crit_edge, label %pidff_needs_set_envelope.exit453.if.then74_crit_edge

pidff_needs_set_envelope.exit453.if.then74_crit_edge: ; preds = %pidff_needs_set_envelope.exit453
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then74

pidff_needs_set_envelope.exit453.do.body218_crit_edge: ; preds = %pidff_needs_set_envelope.exit453
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body218

if.then74:                                        ; preds = %pidff_needs_set_envelope.exit453.if.then74_crit_edge, %lor.lhs.false9.i447.if.then74_crit_edge, %lor.lhs.false.i445.if.then74_crit_edge, %lor.lhs.false67.if.then74_crit_edge, %if.then64.critedge
  %envelope76 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5
  tail call fastcc void @pidff_set_envelope_report(ptr noundef %3, ptr noundef %envelope76)
  br label %sw.epilog206

sw.bb78:                                          ; preds = %if.end
  br i1 %tobool.not, label %if.then80, label %lor.lhs.false89.critedge

if.then80:                                        ; preds = %sw.bb78
  %arrayidx82 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 20, i32 1
  %246 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %arrayidx82, align 4
  %call83 = tail call fastcc i32 @pidff_request_effect_upload(ptr noundef %3, i32 noundef %247)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.then98.critedge, label %if.then80.cleanup_crit_edge

if.then80.cleanup_crit_edge:                      ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false89.critedge:                         ; preds = %sw.bb78
  %replay.i454 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 4
  %248 = ptrtoint ptr %replay.i454 to i32
  call void @__asan_load2_noabort(i32 %248)
  %249 = load i16, ptr %replay.i454, align 2
  %replay1.i455 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 4
  %250 = ptrtoint ptr %replay1.i455 to i32
  call void @__asan_load2_noabort(i32 %250)
  %251 = load i16, ptr %replay1.i455, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %249, i16 %251)
  %cmp.not.i456 = icmp eq i16 %249, %251
  br i1 %cmp.not.i456, label %lor.lhs.false.i460, label %lor.lhs.false89.critedge.lor.lhs.false95.critedge366_crit_edge

lor.lhs.false89.critedge.lor.lhs.false95.critedge366_crit_edge: ; preds = %lor.lhs.false89.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false95.critedge366

lor.lhs.false.i460:                               ; preds = %lor.lhs.false89.critedge
  %interval.i457 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 3, i32 1
  %252 = ptrtoint ptr %interval.i457 to i32
  call void @__asan_load2_noabort(i32 %252)
  %253 = load i16, ptr %interval.i457, align 2
  %interval7.i458 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 3, i32 1
  %254 = ptrtoint ptr %interval7.i458 to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %interval7.i458, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %253, i16 %255)
  %cmp9.not.i459 = icmp eq i16 %253, %255
  br i1 %cmp9.not.i459, label %lor.lhs.false11.i464, label %lor.lhs.false.i460.lor.lhs.false95.critedge366_crit_edge

lor.lhs.false.i460.lor.lhs.false95.critedge366_crit_edge: ; preds = %lor.lhs.false.i460
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false95.critedge366

lor.lhs.false11.i464:                             ; preds = %lor.lhs.false.i460
  %trigger6.i461 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 3
  %trigger.i462 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 3
  %256 = ptrtoint ptr %trigger.i462 to i32
  call void @__asan_load2_noabort(i32 %256)
  %257 = load i16, ptr %trigger.i462, align 2
  %258 = ptrtoint ptr %trigger6.i461 to i32
  call void @__asan_load2_noabort(i32 %258)
  %259 = load i16, ptr %trigger6.i461, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %257, i16 %259)
  %cmp17.not.i463 = icmp eq i16 %257, %259
  br i1 %cmp17.not.i463, label %lor.lhs.false19.i468, label %lor.lhs.false11.i464.lor.lhs.false95.critedge366_crit_edge

lor.lhs.false11.i464.lor.lhs.false95.critedge366_crit_edge: ; preds = %lor.lhs.false11.i464
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false95.critedge366

lor.lhs.false19.i468:                             ; preds = %lor.lhs.false11.i464
  %direction.i465 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 2
  %260 = ptrtoint ptr %direction.i465 to i32
  call void @__asan_load2_noabort(i32 %260)
  %261 = load i16, ptr %direction.i465, align 4
  %direction21.i466 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 2
  %262 = ptrtoint ptr %direction21.i466 to i32
  call void @__asan_load2_noabort(i32 %262)
  %263 = load i16, ptr %direction21.i466, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %261, i16 %263)
  %cmp23.not.i467 = icmp eq i16 %261, %263
  br i1 %cmp23.not.i467, label %pidff_needs_set_effect.exit474, label %lor.lhs.false19.i468.lor.lhs.false95.critedge366_crit_edge

lor.lhs.false19.i468.lor.lhs.false95.critedge366_crit_edge: ; preds = %lor.lhs.false19.i468
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false95.critedge366

pidff_needs_set_effect.exit474:                   ; preds = %lor.lhs.false19.i468
  %delay.i469 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 4, i32 1
  %264 = ptrtoint ptr %delay.i469 to i32
  call void @__asan_load2_noabort(i32 %264)
  %265 = load i16, ptr %delay.i469, align 2
  %delay28.i470 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 4, i32 1
  %266 = ptrtoint ptr %delay28.i470 to i32
  call void @__asan_load2_noabort(i32 %266)
  %267 = load i16, ptr %delay28.i470, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %265, i16 %267)
  %cmp30.i471.not = icmp eq i16 %265, %267
  br i1 %cmp30.i471.not, label %pidff_needs_set_effect.exit474.lor.lhs.false95_crit_edge, label %pidff_needs_set_effect.exit474.lor.lhs.false95.critedge366_crit_edge

pidff_needs_set_effect.exit474.lor.lhs.false95.critedge366_crit_edge: ; preds = %pidff_needs_set_effect.exit474
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false95.critedge366

pidff_needs_set_effect.exit474.lor.lhs.false95_crit_edge: ; preds = %pidff_needs_set_effect.exit474
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false95

lor.lhs.false95.critedge366:                      ; preds = %pidff_needs_set_effect.exit474.lor.lhs.false95.critedge366_crit_edge, %lor.lhs.false19.i468.lor.lhs.false95.critedge366_crit_edge, %lor.lhs.false11.i464.lor.lhs.false95.critedge366_crit_edge, %lor.lhs.false.i460.lor.lhs.false95.critedge366_crit_edge, %lor.lhs.false89.critedge.lor.lhs.false95.critedge366_crit_edge
  %268 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %value, align 4
  %270 = ptrtoint ptr %269 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %269, align 4
  %value3.i476 = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 2, i32 0, i32 1
  %272 = ptrtoint ptr %value3.i476 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %value3.i476, align 4
  %274 = ptrtoint ptr %273 to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %271, ptr %273, align 4
  %create_new_effect_type.i477 = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 13
  %275 = ptrtoint ptr %create_new_effect_type.i477 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %create_new_effect_type.i477, align 4
  %value5.i478 = getelementptr inbounds %struct.hid_field, ptr %276, i32 0, i32 10
  %277 = ptrtoint ptr %value5.i478 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %value5.i478, align 4
  %279 = ptrtoint ptr %278 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %278, align 4
  %set_effect_type.i479 = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 14
  %281 = ptrtoint ptr %set_effect_type.i479 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %set_effect_type.i479, align 4
  %value7.i480 = getelementptr inbounds %struct.hid_field, ptr %282, i32 0, i32 10
  %283 = ptrtoint ptr %value7.i480 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %value7.i480, align 4
  %285 = ptrtoint ptr %284 to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 %280, ptr %284, align 4
  %286 = ptrtoint ptr %replay.i454 to i32
  call void @__asan_load2_noabort(i32 %286)
  %287 = load i16, ptr %replay.i454, align 2
  %conv.i482 = zext i16 %287 to i32
  %value11.i483 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 1, i32 1
  %288 = ptrtoint ptr %value11.i483 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %value11.i483, align 4
  %290 = ptrtoint ptr %289 to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 %conv.i482, ptr %289, align 4
  %trigger.i484 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 3
  %291 = ptrtoint ptr %trigger.i484 to i32
  call void @__asan_load2_noabort(i32 %291)
  %292 = load i16, ptr %trigger.i484, align 2
  %conv13.i485 = zext i16 %292 to i32
  %value16.i486 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 3, i32 1
  %293 = ptrtoint ptr %value16.i486 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %value16.i486, align 4
  %295 = ptrtoint ptr %294 to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 %conv13.i485, ptr %294, align 4
  %interval.i487 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 3, i32 1
  %296 = ptrtoint ptr %interval.i487 to i32
  call void @__asan_load2_noabort(i32 %296)
  %297 = load i16, ptr %interval.i487, align 2
  %conv19.i488 = zext i16 %297 to i32
  %value22.i489 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 4, i32 1
  %298 = ptrtoint ptr %value22.i489 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %value22.i489, align 4
  %300 = ptrtoint ptr %299 to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 %conv19.i488, ptr %299, align 4
  %arrayidx25.i490 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 2
  %301 = ptrtoint ptr %arrayidx25.i490 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %arrayidx25.i490, align 4
  %logical_maximum.i491 = getelementptr inbounds %struct.hid_field, ptr %302, i32 0, i32 12
  %303 = ptrtoint ptr %logical_maximum.i491 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %logical_maximum.i491, align 4
  %value28.i492 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 2, i32 1
  %305 = ptrtoint ptr %value28.i492 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %value28.i492, align 4
  %307 = ptrtoint ptr %306 to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 %304, ptr %306, align 4
  %value32.i493 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 5, i32 1
  %308 = ptrtoint ptr %value32.i493 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %value32.i493, align 4
  %310 = ptrtoint ptr %309 to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 1, ptr %309, align 4
  %direction.i494 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 2
  %311 = ptrtoint ptr %direction.i494 to i32
  call void @__asan_load2_noabort(i32 %311)
  %312 = load i16, ptr %direction.i494, align 4
  %conv34.i495 = zext i16 %312 to i32
  %effect_direction.i496 = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 15
  %313 = ptrtoint ptr %effect_direction.i496 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %effect_direction.i496, align 4
  %logical_maximum.i.i497 = getelementptr inbounds %struct.hid_field, ptr %314, i32 0, i32 12
  %315 = ptrtoint ptr %logical_maximum.i.i497 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %logical_maximum.i.i497, align 4
  %logical_minimum.i.i498 = getelementptr inbounds %struct.hid_field, ptr %314, i32 0, i32 11
  %317 = ptrtoint ptr %logical_minimum.i.i498 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %logical_minimum.i.i498, align 4
  %sub.i.i499 = sub i32 %316, %318
  %mul.i.i500 = mul i32 %sub.i.i499, %conv34.i495
  %div.i.i501 = sdiv i32 %mul.i.i500, 65535
  %add.i.i502 = add i32 %div.i.i501, %318
  %value36.i503 = getelementptr inbounds %struct.hid_field, ptr %314, i32 0, i32 10
  %319 = ptrtoint ptr %value36.i503 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %value36.i503, align 4
  %321 = ptrtoint ptr %320 to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 %add.i.i502, ptr %320, align 4
  %delay.i504 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 4, i32 1
  %322 = ptrtoint ptr %delay.i504 to i32
  call void @__asan_load2_noabort(i32 %322)
  %323 = load i16, ptr %delay.i504, align 2
  %conv39.i505 = zext i16 %323 to i32
  %value42.i506 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 6, i32 1
  %324 = ptrtoint ptr %value42.i506 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %value42.i506, align 4
  %326 = ptrtoint ptr %325 to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 %conv39.i505, ptr %325, align 4
  %327 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %3, align 4
  %reports.i507 = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 1
  %329 = ptrtoint ptr %reports.i507 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %reports.i507, align 4
  tail call void @hid_hw_request(ptr noundef %328, ptr noundef %330, i32 noundef 9) #6
  br label %lor.lhs.false95

lor.lhs.false95:                                  ; preds = %lor.lhs.false95.critedge366, %pidff_needs_set_effect.exit474.lor.lhs.false95_crit_edge
  %u.i508 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %331 = ptrtoint ptr %u.i508 to i32
  call void @__asan_load2_noabort(i32 %331)
  %332 = load i16, ptr %u.i508, align 4
  %u1.i509 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5
  %333 = ptrtoint ptr %u1.i509 to i32
  call void @__asan_load2_noabort(i32 %333)
  %334 = load i16, ptr %u1.i509, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %332, i16 %334)
  %cmp.not.i510 = icmp eq i16 %332, %334
  br i1 %cmp.not.i510, label %pidff_needs_set_ramp.exit, label %lor.lhs.false95.lor.lhs.false101.critedge367_crit_edge

lor.lhs.false95.lor.lhs.false101.critedge367_crit_edge: ; preds = %lor.lhs.false95
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false101.critedge367

pidff_needs_set_ramp.exit:                        ; preds = %lor.lhs.false95
  %end_level.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %335 = ptrtoint ptr %end_level.i to i32
  call void @__asan_load2_noabort(i32 %335)
  %336 = load i16, ptr %end_level.i, align 2
  %end_level8.i = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 1
  %337 = ptrtoint ptr %end_level8.i to i32
  call void @__asan_load2_noabort(i32 %337)
  %338 = load i16, ptr %end_level8.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %336, i16 %338)
  %cmp10.i.not = icmp eq i16 %336, %338
  br i1 %cmp10.i.not, label %pidff_needs_set_ramp.exit.lor.lhs.false101_crit_edge, label %pidff_needs_set_ramp.exit.lor.lhs.false101.critedge367_crit_edge

pidff_needs_set_ramp.exit.lor.lhs.false101.critedge367_crit_edge: ; preds = %pidff_needs_set_ramp.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false101.critedge367

pidff_needs_set_ramp.exit.lor.lhs.false101_crit_edge: ; preds = %pidff_needs_set_ramp.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false101

if.then98.critedge:                               ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @pidff_set_effect_report(ptr noundef %3, ptr noundef %effect)
  tail call fastcc void @pidff_set_ramp_force_report(ptr noundef %3, ptr noundef %effect)
  br label %if.then108

lor.lhs.false101.critedge367:                     ; preds = %pidff_needs_set_ramp.exit.lor.lhs.false101.critedge367_crit_edge, %lor.lhs.false95.lor.lhs.false101.critedge367_crit_edge
  tail call fastcc void @pidff_set_ramp_force_report(ptr noundef %3, ptr noundef %effect)
  br label %lor.lhs.false101

lor.lhs.false101:                                 ; preds = %lor.lhs.false101.critedge367, %pidff_needs_set_ramp.exit.lor.lhs.false101_crit_edge
  %envelope103 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 2
  %envelope105 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 2
  %attack_level.i513 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 3
  %339 = ptrtoint ptr %attack_level.i513 to i32
  call void @__asan_load2_noabort(i32 %339)
  %340 = load i16, ptr %attack_level.i513, align 2
  %attack_level1.i514 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 3
  %341 = ptrtoint ptr %attack_level1.i514 to i32
  call void @__asan_load2_noabort(i32 %341)
  %342 = load i16, ptr %attack_level1.i514, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %340, i16 %342)
  %cmp.not.i515 = icmp eq i16 %340, %342
  br i1 %cmp.not.i515, label %lor.lhs.false.i519, label %lor.lhs.false101.if.then108_crit_edge

lor.lhs.false101.if.then108_crit_edge:            ; preds = %lor.lhs.false101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then108

lor.lhs.false.i519:                               ; preds = %lor.lhs.false101
  %fade_level.i516 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5
  %343 = ptrtoint ptr %fade_level.i516 to i32
  call void @__asan_load2_noabort(i32 %343)
  %344 = load i16, ptr %fade_level.i516, align 2
  %fade_level5.i517 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 5
  %345 = ptrtoint ptr %fade_level5.i517 to i32
  call void @__asan_load2_noabort(i32 %345)
  %346 = load i16, ptr %fade_level5.i517, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %344, i16 %346)
  %cmp7.not.i518 = icmp eq i16 %344, %346
  br i1 %cmp7.not.i518, label %lor.lhs.false9.i521, label %lor.lhs.false.i519.if.then108_crit_edge

lor.lhs.false.i519.if.then108_crit_edge:          ; preds = %lor.lhs.false.i519
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then108

lor.lhs.false9.i521:                              ; preds = %lor.lhs.false.i519
  %347 = ptrtoint ptr %envelope103 to i32
  call void @__asan_load2_noabort(i32 %347)
  %348 = load i16, ptr %envelope103, align 2
  %349 = ptrtoint ptr %envelope105 to i32
  call void @__asan_load2_noabort(i32 %349)
  %350 = load i16, ptr %envelope105, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %348, i16 %350)
  %cmp13.not.i520 = icmp eq i16 %348, %350
  br i1 %cmp13.not.i520, label %pidff_needs_set_envelope.exit527, label %lor.lhs.false9.i521.if.then108_crit_edge

lor.lhs.false9.i521.if.then108_crit_edge:         ; preds = %lor.lhs.false9.i521
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then108

pidff_needs_set_envelope.exit527:                 ; preds = %lor.lhs.false9.i521
  %fade_length.i522 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 4
  %351 = ptrtoint ptr %fade_length.i522 to i32
  call void @__asan_load2_noabort(i32 %351)
  %352 = load i16, ptr %fade_length.i522, align 2
  %fade_length16.i523 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 4
  %353 = ptrtoint ptr %fade_length16.i523 to i32
  call void @__asan_load2_noabort(i32 %353)
  %354 = load i16, ptr %fade_length16.i523, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %352, i16 %354)
  %cmp18.i524.not = icmp eq i16 %352, %354
  br i1 %cmp18.i524.not, label %pidff_needs_set_envelope.exit527.do.body218_crit_edge, label %pidff_needs_set_envelope.exit527.if.then108_crit_edge

pidff_needs_set_envelope.exit527.if.then108_crit_edge: ; preds = %pidff_needs_set_envelope.exit527
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then108

pidff_needs_set_envelope.exit527.do.body218_crit_edge: ; preds = %pidff_needs_set_envelope.exit527
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body218

if.then108:                                       ; preds = %pidff_needs_set_envelope.exit527.if.then108_crit_edge, %lor.lhs.false9.i521.if.then108_crit_edge, %lor.lhs.false.i519.if.then108_crit_edge, %lor.lhs.false101.if.then108_crit_edge, %if.then98.critedge
  %envelope110 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 2
  tail call fastcc void @pidff_set_envelope_report(ptr noundef %3, ptr noundef %envelope110)
  br label %sw.epilog206

sw.bb112:                                         ; preds = %if.end
  br i1 %tobool.not, label %if.then114, label %lor.lhs.false123.critedge

if.then114:                                       ; preds = %sw.bb112
  %arrayidx116 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 20, i32 7
  %355 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %arrayidx116, align 4
  %call117 = tail call fastcc i32 @pidff_request_effect_upload(ptr noundef %3, i32 noundef %356)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.then132.critedge, label %if.then114.cleanup_crit_edge

if.then114.cleanup_crit_edge:                     ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false123.critedge:                        ; preds = %sw.bb112
  %replay.i528 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 4
  %357 = ptrtoint ptr %replay.i528 to i32
  call void @__asan_load2_noabort(i32 %357)
  %358 = load i16, ptr %replay.i528, align 2
  %replay1.i529 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 4
  %359 = ptrtoint ptr %replay1.i529 to i32
  call void @__asan_load2_noabort(i32 %359)
  %360 = load i16, ptr %replay1.i529, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %358, i16 %360)
  %cmp.not.i530 = icmp eq i16 %358, %360
  br i1 %cmp.not.i530, label %lor.lhs.false.i534, label %lor.lhs.false123.critedge.lor.lhs.false129.critedge368_crit_edge

lor.lhs.false123.critedge.lor.lhs.false129.critedge368_crit_edge: ; preds = %lor.lhs.false123.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false129.critedge368

lor.lhs.false.i534:                               ; preds = %lor.lhs.false123.critedge
  %interval.i531 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 3, i32 1
  %361 = ptrtoint ptr %interval.i531 to i32
  call void @__asan_load2_noabort(i32 %361)
  %362 = load i16, ptr %interval.i531, align 2
  %interval7.i532 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 3, i32 1
  %363 = ptrtoint ptr %interval7.i532 to i32
  call void @__asan_load2_noabort(i32 %363)
  %364 = load i16, ptr %interval7.i532, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %362, i16 %364)
  %cmp9.not.i533 = icmp eq i16 %362, %364
  br i1 %cmp9.not.i533, label %lor.lhs.false11.i538, label %lor.lhs.false.i534.lor.lhs.false129.critedge368_crit_edge

lor.lhs.false.i534.lor.lhs.false129.critedge368_crit_edge: ; preds = %lor.lhs.false.i534
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false129.critedge368

lor.lhs.false11.i538:                             ; preds = %lor.lhs.false.i534
  %trigger6.i535 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 3
  %trigger.i536 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 3
  %365 = ptrtoint ptr %trigger.i536 to i32
  call void @__asan_load2_noabort(i32 %365)
  %366 = load i16, ptr %trigger.i536, align 2
  %367 = ptrtoint ptr %trigger6.i535 to i32
  call void @__asan_load2_noabort(i32 %367)
  %368 = load i16, ptr %trigger6.i535, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %366, i16 %368)
  %cmp17.not.i537 = icmp eq i16 %366, %368
  br i1 %cmp17.not.i537, label %lor.lhs.false19.i542, label %lor.lhs.false11.i538.lor.lhs.false129.critedge368_crit_edge

lor.lhs.false11.i538.lor.lhs.false129.critedge368_crit_edge: ; preds = %lor.lhs.false11.i538
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false129.critedge368

lor.lhs.false19.i542:                             ; preds = %lor.lhs.false11.i538
  %direction.i539 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 2
  %369 = ptrtoint ptr %direction.i539 to i32
  call void @__asan_load2_noabort(i32 %369)
  %370 = load i16, ptr %direction.i539, align 4
  %direction21.i540 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 2
  %371 = ptrtoint ptr %direction21.i540 to i32
  call void @__asan_load2_noabort(i32 %371)
  %372 = load i16, ptr %direction21.i540, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %370, i16 %372)
  %cmp23.not.i541 = icmp eq i16 %370, %372
  br i1 %cmp23.not.i541, label %pidff_needs_set_effect.exit548, label %lor.lhs.false19.i542.lor.lhs.false129.critedge368_crit_edge

lor.lhs.false19.i542.lor.lhs.false129.critedge368_crit_edge: ; preds = %lor.lhs.false19.i542
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false129.critedge368

pidff_needs_set_effect.exit548:                   ; preds = %lor.lhs.false19.i542
  %delay.i543 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 4, i32 1
  %373 = ptrtoint ptr %delay.i543 to i32
  call void @__asan_load2_noabort(i32 %373)
  %374 = load i16, ptr %delay.i543, align 2
  %delay28.i544 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 4, i32 1
  %375 = ptrtoint ptr %delay28.i544 to i32
  call void @__asan_load2_noabort(i32 %375)
  %376 = load i16, ptr %delay28.i544, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %374, i16 %376)
  %cmp30.i545.not = icmp eq i16 %374, %376
  br i1 %cmp30.i545.not, label %pidff_needs_set_effect.exit548.lor.lhs.false129_crit_edge, label %pidff_needs_set_effect.exit548.lor.lhs.false129.critedge368_crit_edge

pidff_needs_set_effect.exit548.lor.lhs.false129.critedge368_crit_edge: ; preds = %pidff_needs_set_effect.exit548
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false129.critedge368

pidff_needs_set_effect.exit548.lor.lhs.false129_crit_edge: ; preds = %pidff_needs_set_effect.exit548
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false129

lor.lhs.false129.critedge368:                     ; preds = %pidff_needs_set_effect.exit548.lor.lhs.false129.critedge368_crit_edge, %lor.lhs.false19.i542.lor.lhs.false129.critedge368_crit_edge, %lor.lhs.false11.i538.lor.lhs.false129.critedge368_crit_edge, %lor.lhs.false.i534.lor.lhs.false129.critedge368_crit_edge, %lor.lhs.false123.critedge.lor.lhs.false129.critedge368_crit_edge
  %377 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %value, align 4
  %379 = ptrtoint ptr %378 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %378, align 4
  %value3.i550 = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 2, i32 0, i32 1
  %381 = ptrtoint ptr %value3.i550 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %value3.i550, align 4
  %383 = ptrtoint ptr %382 to i32
  call void @__asan_store4_noabort(i32 %383)
  store i32 %380, ptr %382, align 4
  %create_new_effect_type.i551 = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 13
  %384 = ptrtoint ptr %create_new_effect_type.i551 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %create_new_effect_type.i551, align 4
  %value5.i552 = getelementptr inbounds %struct.hid_field, ptr %385, i32 0, i32 10
  %386 = ptrtoint ptr %value5.i552 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %value5.i552, align 4
  %388 = ptrtoint ptr %387 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %387, align 4
  %set_effect_type.i553 = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 14
  %390 = ptrtoint ptr %set_effect_type.i553 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %set_effect_type.i553, align 4
  %value7.i554 = getelementptr inbounds %struct.hid_field, ptr %391, i32 0, i32 10
  %392 = ptrtoint ptr %value7.i554 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %value7.i554, align 4
  %394 = ptrtoint ptr %393 to i32
  call void @__asan_store4_noabort(i32 %394)
  store i32 %389, ptr %393, align 4
  %395 = ptrtoint ptr %replay.i528 to i32
  call void @__asan_load2_noabort(i32 %395)
  %396 = load i16, ptr %replay.i528, align 2
  %conv.i556 = zext i16 %396 to i32
  %value11.i557 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 1, i32 1
  %397 = ptrtoint ptr %value11.i557 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %value11.i557, align 4
  %399 = ptrtoint ptr %398 to i32
  call void @__asan_store4_noabort(i32 %399)
  store i32 %conv.i556, ptr %398, align 4
  %trigger.i558 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 3
  %400 = ptrtoint ptr %trigger.i558 to i32
  call void @__asan_load2_noabort(i32 %400)
  %401 = load i16, ptr %trigger.i558, align 2
  %conv13.i559 = zext i16 %401 to i32
  %value16.i560 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 3, i32 1
  %402 = ptrtoint ptr %value16.i560 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %value16.i560, align 4
  %404 = ptrtoint ptr %403 to i32
  call void @__asan_store4_noabort(i32 %404)
  store i32 %conv13.i559, ptr %403, align 4
  %interval.i561 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 3, i32 1
  %405 = ptrtoint ptr %interval.i561 to i32
  call void @__asan_load2_noabort(i32 %405)
  %406 = load i16, ptr %interval.i561, align 2
  %conv19.i562 = zext i16 %406 to i32
  %value22.i563 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 4, i32 1
  %407 = ptrtoint ptr %value22.i563 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %value22.i563, align 4
  %409 = ptrtoint ptr %408 to i32
  call void @__asan_store4_noabort(i32 %409)
  store i32 %conv19.i562, ptr %408, align 4
  %arrayidx25.i564 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 2
  %410 = ptrtoint ptr %arrayidx25.i564 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %arrayidx25.i564, align 4
  %logical_maximum.i565 = getelementptr inbounds %struct.hid_field, ptr %411, i32 0, i32 12
  %412 = ptrtoint ptr %logical_maximum.i565 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %logical_maximum.i565, align 4
  %value28.i566 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 2, i32 1
  %414 = ptrtoint ptr %value28.i566 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %value28.i566, align 4
  %416 = ptrtoint ptr %415 to i32
  call void @__asan_store4_noabort(i32 %416)
  store i32 %413, ptr %415, align 4
  %value32.i567 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 5, i32 1
  %417 = ptrtoint ptr %value32.i567 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %value32.i567, align 4
  %419 = ptrtoint ptr %418 to i32
  call void @__asan_store4_noabort(i32 %419)
  store i32 1, ptr %418, align 4
  %direction.i568 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 2
  %420 = ptrtoint ptr %direction.i568 to i32
  call void @__asan_load2_noabort(i32 %420)
  %421 = load i16, ptr %direction.i568, align 4
  %conv34.i569 = zext i16 %421 to i32
  %effect_direction.i570 = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 15
  %422 = ptrtoint ptr %effect_direction.i570 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %effect_direction.i570, align 4
  %logical_maximum.i.i571 = getelementptr inbounds %struct.hid_field, ptr %423, i32 0, i32 12
  %424 = ptrtoint ptr %logical_maximum.i.i571 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %logical_maximum.i.i571, align 4
  %logical_minimum.i.i572 = getelementptr inbounds %struct.hid_field, ptr %423, i32 0, i32 11
  %426 = ptrtoint ptr %logical_minimum.i.i572 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %logical_minimum.i.i572, align 4
  %sub.i.i573 = sub i32 %425, %427
  %mul.i.i574 = mul i32 %sub.i.i573, %conv34.i569
  %div.i.i575 = sdiv i32 %mul.i.i574, 65535
  %add.i.i576 = add i32 %div.i.i575, %427
  %value36.i577 = getelementptr inbounds %struct.hid_field, ptr %423, i32 0, i32 10
  %428 = ptrtoint ptr %value36.i577 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %value36.i577, align 4
  %430 = ptrtoint ptr %429 to i32
  call void @__asan_store4_noabort(i32 %430)
  store i32 %add.i.i576, ptr %429, align 4
  %delay.i578 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 4, i32 1
  %431 = ptrtoint ptr %delay.i578 to i32
  call void @__asan_load2_noabort(i32 %431)
  %432 = load i16, ptr %delay.i578, align 2
  %conv39.i579 = zext i16 %432 to i32
  %value42.i580 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 6, i32 1
  %433 = ptrtoint ptr %value42.i580 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %value42.i580, align 4
  %435 = ptrtoint ptr %434 to i32
  call void @__asan_store4_noabort(i32 %435)
  store i32 %conv39.i579, ptr %434, align 4
  %436 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %3, align 4
  %reports.i581 = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 1
  %438 = ptrtoint ptr %reports.i581 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %reports.i581, align 4
  tail call void @hid_hw_request(ptr noundef %437, ptr noundef %439, i32 noundef 9) #6
  br label %lor.lhs.false129

lor.lhs.false129:                                 ; preds = %lor.lhs.false129.critedge368, %pidff_needs_set_effect.exit548.lor.lhs.false129_crit_edge
  %u.i582 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %u1.i583 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5
  %center.i = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5
  %440 = ptrtoint ptr %center.i to i32
  call void @__asan_load2_noabort(i32 %440)
  %441 = load i16, ptr %center.i, align 2
  %center3.i = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 5
  %442 = ptrtoint ptr %center3.i to i32
  call void @__asan_load2_noabort(i32 %442)
  %443 = load i16, ptr %center3.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %441, i16 %443)
  %cmp5.not.i = icmp eq i16 %441, %443
  br i1 %cmp5.not.i, label %lor.lhs.false.i585, label %lor.lhs.false129.lor.end.i_crit_edge

lor.lhs.false129.lor.end.i_crit_edge:             ; preds = %lor.lhs.false129
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end.i

lor.lhs.false.i585:                               ; preds = %lor.lhs.false129
  %right_coeff.i = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 2
  %444 = ptrtoint ptr %right_coeff.i to i32
  call void @__asan_load2_noabort(i32 %444)
  %445 = load i16, ptr %right_coeff.i, align 2
  %right_coeff8.i = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 2
  %446 = ptrtoint ptr %right_coeff8.i to i32
  call void @__asan_load2_noabort(i32 %446)
  %447 = load i16, ptr %right_coeff8.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %445, i16 %447)
  %cmp10.not.i584 = icmp eq i16 %445, %447
  br i1 %cmp10.not.i584, label %lor.lhs.false12.i586, label %lor.lhs.false.i585.lor.end.i_crit_edge

lor.lhs.false.i585.lor.end.i_crit_edge:           ; preds = %lor.lhs.false.i585
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end.i

lor.lhs.false12.i586:                             ; preds = %lor.lhs.false.i585
  %left_coeff.i = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 3
  %448 = ptrtoint ptr %left_coeff.i to i32
  call void @__asan_load2_noabort(i32 %448)
  %449 = load i16, ptr %left_coeff.i, align 2
  %left_coeff14.i = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 3
  %450 = ptrtoint ptr %left_coeff14.i to i32
  call void @__asan_load2_noabort(i32 %450)
  %451 = load i16, ptr %left_coeff14.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %449, i16 %451)
  %cmp16.not.i = icmp eq i16 %449, %451
  br i1 %cmp16.not.i, label %lor.lhs.false18.i, label %lor.lhs.false12.i586.lor.end.i_crit_edge

lor.lhs.false12.i586.lor.end.i_crit_edge:         ; preds = %lor.lhs.false12.i586
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end.i

lor.lhs.false18.i:                                ; preds = %lor.lhs.false12.i586
  %452 = ptrtoint ptr %u.i582 to i32
  call void @__asan_load2_noabort(i32 %452)
  %453 = load i16, ptr %u.i582, align 2
  %454 = ptrtoint ptr %u1.i583 to i32
  call void @__asan_load2_noabort(i32 %454)
  %455 = load i16, ptr %u1.i583, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %453, i16 %455)
  %cmp22.not.i = icmp eq i16 %453, %455
  br i1 %cmp22.not.i, label %lor.lhs.false24.i, label %lor.lhs.false18.i.lor.end.i_crit_edge

lor.lhs.false18.i.lor.end.i_crit_edge:            ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end.i

lor.lhs.false24.i:                                ; preds = %lor.lhs.false18.i
  %left_saturation.i = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %456 = ptrtoint ptr %left_saturation.i to i32
  call void @__asan_load2_noabort(i32 %456)
  %457 = load i16, ptr %left_saturation.i, align 2
  %left_saturation26.i = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 1
  %458 = ptrtoint ptr %left_saturation26.i to i32
  call void @__asan_load2_noabort(i32 %458)
  %459 = load i16, ptr %left_saturation26.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %457, i16 %459)
  %cmp28.not.i = icmp eq i16 %457, %459
  br i1 %cmp28.not.i, label %lor.rhs.i588, label %lor.lhs.false24.i.lor.end.i_crit_edge

lor.lhs.false24.i.lor.end.i_crit_edge:            ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end.i

lor.rhs.i588:                                     ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #8
  %deadband.i = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 4
  %460 = ptrtoint ptr %deadband.i to i32
  call void @__asan_load2_noabort(i32 %460)
  %461 = load i16, ptr %deadband.i, align 2
  %deadband31.i = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 4
  %462 = ptrtoint ptr %deadband31.i to i32
  call void @__asan_load2_noabort(i32 %462)
  %463 = load i16, ptr %deadband31.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %461, i16 %463)
  %cmp33.i = icmp ne i16 %461, %463
  %phi.cast.i587 = zext i1 %cmp33.i to i32
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i588, %lor.lhs.false24.i.lor.end.i_crit_edge, %lor.lhs.false18.i.lor.end.i_crit_edge, %lor.lhs.false12.i586.lor.end.i_crit_edge, %lor.lhs.false.i585.lor.end.i_crit_edge, %lor.lhs.false129.lor.end.i_crit_edge
  %464 = phi i32 [ 1, %lor.lhs.false24.i.lor.end.i_crit_edge ], [ 1, %lor.lhs.false18.i.lor.end.i_crit_edge ], [ 1, %lor.lhs.false12.i586.lor.end.i_crit_edge ], [ 1, %lor.lhs.false.i585.lor.end.i_crit_edge ], [ 1, %lor.lhs.false129.lor.end.i_crit_edge ], [ %phi.cast.i587, %lor.rhs.i588 ]
  %arrayidx.1.i = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5, i32 1
  %arrayidx2.1.i = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 5, i32 1
  %center.1.i = getelementptr [2 x %struct.ff_condition_effect], ptr %u.i582, i32 0, i32 1, i32 5
  %465 = ptrtoint ptr %center.1.i to i32
  call void @__asan_load2_noabort(i32 %465)
  %466 = load i16, ptr %center.1.i, align 2
  %center3.1.i = getelementptr [2 x %struct.ff_condition_effect], ptr %u1.i583, i32 0, i32 1, i32 5
  %467 = ptrtoint ptr %center3.1.i to i32
  call void @__asan_load2_noabort(i32 %467)
  %468 = load i16, ptr %center3.1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %466, i16 %468)
  %cmp5.not.1.i = icmp eq i16 %466, %468
  br i1 %cmp5.not.1.i, label %lor.lhs.false.1.i, label %lor.end.i.pidff_needs_set_condition.exit_crit_edge

lor.end.i.pidff_needs_set_condition.exit_crit_edge: ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_needs_set_condition.exit

lor.lhs.false.1.i:                                ; preds = %lor.end.i
  %right_coeff.1.i = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5, i32 3
  %469 = ptrtoint ptr %right_coeff.1.i to i32
  call void @__asan_load2_noabort(i32 %469)
  %470 = load i16, ptr %right_coeff.1.i, align 2
  %right_coeff8.1.i = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 5, i32 3
  %471 = ptrtoint ptr %right_coeff8.1.i to i32
  call void @__asan_load2_noabort(i32 %471)
  %472 = load i16, ptr %right_coeff8.1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %470, i16 %472)
  %cmp10.not.1.i = icmp eq i16 %470, %472
  br i1 %cmp10.not.1.i, label %lor.lhs.false12.1.i, label %lor.lhs.false.1.i.pidff_needs_set_condition.exit_crit_edge

lor.lhs.false.1.i.pidff_needs_set_condition.exit_crit_edge: ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_needs_set_condition.exit

lor.lhs.false12.1.i:                              ; preds = %lor.lhs.false.1.i
  %left_coeff.1.i = getelementptr [2 x %struct.ff_condition_effect], ptr %u.i582, i32 0, i32 1, i32 3
  %473 = ptrtoint ptr %left_coeff.1.i to i32
  call void @__asan_load2_noabort(i32 %473)
  %474 = load i16, ptr %left_coeff.1.i, align 2
  %left_coeff14.1.i = getelementptr [2 x %struct.ff_condition_effect], ptr %u1.i583, i32 0, i32 1, i32 3
  %475 = ptrtoint ptr %left_coeff14.1.i to i32
  call void @__asan_load2_noabort(i32 %475)
  %476 = load i16, ptr %left_coeff14.1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %474, i16 %476)
  %cmp16.not.1.i = icmp eq i16 %474, %476
  br i1 %cmp16.not.1.i, label %lor.lhs.false18.1.i, label %lor.lhs.false12.1.i.pidff_needs_set_condition.exit_crit_edge

lor.lhs.false12.1.i.pidff_needs_set_condition.exit_crit_edge: ; preds = %lor.lhs.false12.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_needs_set_condition.exit

lor.lhs.false18.1.i:                              ; preds = %lor.lhs.false12.1.i
  %477 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load2_noabort(i32 %477)
  %478 = load i16, ptr %arrayidx.1.i, align 2
  %479 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_load2_noabort(i32 %479)
  %480 = load i16, ptr %arrayidx2.1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %478, i16 %480)
  %cmp22.not.1.i = icmp eq i16 %478, %480
  br i1 %cmp22.not.1.i, label %lor.lhs.false24.1.i, label %lor.lhs.false18.1.i.pidff_needs_set_condition.exit_crit_edge

lor.lhs.false18.1.i.pidff_needs_set_condition.exit_crit_edge: ; preds = %lor.lhs.false18.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_needs_set_condition.exit

lor.lhs.false24.1.i:                              ; preds = %lor.lhs.false18.1.i
  %left_saturation.1.i = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5, i32 2
  %481 = ptrtoint ptr %left_saturation.1.i to i32
  call void @__asan_load2_noabort(i32 %481)
  %482 = load i16, ptr %left_saturation.1.i, align 2
  %left_saturation26.1.i = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 5, i32 2
  %483 = ptrtoint ptr %left_saturation26.1.i to i32
  call void @__asan_load2_noabort(i32 %483)
  %484 = load i16, ptr %left_saturation26.1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %482, i16 %484)
  %cmp28.not.1.i = icmp eq i16 %482, %484
  br i1 %cmp28.not.1.i, label %lor.rhs.1.i, label %lor.lhs.false24.1.i.pidff_needs_set_condition.exit_crit_edge

lor.lhs.false24.1.i.pidff_needs_set_condition.exit_crit_edge: ; preds = %lor.lhs.false24.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_needs_set_condition.exit

lor.rhs.1.i:                                      ; preds = %lor.lhs.false24.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %deadband.1.i = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 6
  %485 = ptrtoint ptr %deadband.1.i to i32
  call void @__asan_load2_noabort(i32 %485)
  %486 = load i16, ptr %deadband.1.i, align 2
  %deadband31.1.i = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 6
  %487 = ptrtoint ptr %deadband31.1.i to i32
  call void @__asan_load2_noabort(i32 %487)
  %488 = load i16, ptr %deadband31.1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %486, i16 %488)
  %cmp33.1.i = icmp ne i16 %486, %488
  %phi.cast52.i = zext i1 %cmp33.1.i to i32
  br label %pidff_needs_set_condition.exit

pidff_needs_set_condition.exit:                   ; preds = %lor.rhs.1.i, %lor.lhs.false24.1.i.pidff_needs_set_condition.exit_crit_edge, %lor.lhs.false18.1.i.pidff_needs_set_condition.exit_crit_edge, %lor.lhs.false12.1.i.pidff_needs_set_condition.exit_crit_edge, %lor.lhs.false.1.i.pidff_needs_set_condition.exit_crit_edge, %lor.end.i.pidff_needs_set_condition.exit_crit_edge
  %489 = phi i32 [ 1, %lor.lhs.false24.1.i.pidff_needs_set_condition.exit_crit_edge ], [ 1, %lor.lhs.false18.1.i.pidff_needs_set_condition.exit_crit_edge ], [ 1, %lor.lhs.false12.1.i.pidff_needs_set_condition.exit_crit_edge ], [ 1, %lor.lhs.false.1.i.pidff_needs_set_condition.exit_crit_edge ], [ 1, %lor.end.i.pidff_needs_set_condition.exit_crit_edge ], [ %phi.cast52.i, %lor.rhs.1.i ]
  %or.1.i = or i32 %489, %464
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.1.i)
  %tobool131.not = icmp eq i32 %or.1.i, 0
  br i1 %tobool131.not, label %pidff_needs_set_condition.exit.do.body218_crit_edge, label %pidff_needs_set_condition.exit.if.then132_crit_edge

pidff_needs_set_condition.exit.if.then132_crit_edge: ; preds = %pidff_needs_set_condition.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then132

pidff_needs_set_condition.exit.do.body218_crit_edge: ; preds = %pidff_needs_set_condition.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body218

if.then132.critedge:                              ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @pidff_set_effect_report(ptr noundef %3, ptr noundef %effect)
  br label %if.then132

if.then132:                                       ; preds = %if.then132.critedge, %pidff_needs_set_condition.exit.if.then132_crit_edge
  tail call fastcc void @pidff_set_condition_report(ptr noundef %3, ptr noundef %effect)
  br label %sw.epilog206

sw.bb134:                                         ; preds = %if.end
  br i1 %tobool.not, label %if.then136, label %lor.lhs.false145.critedge

if.then136:                                       ; preds = %sw.bb134
  %arrayidx138 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 20, i32 10
  %490 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %arrayidx138, align 4
  %call139 = tail call fastcc i32 @pidff_request_effect_upload(ptr noundef %3, i32 noundef %491)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %if.then154.critedge, label %if.then136.cleanup_crit_edge

if.then136.cleanup_crit_edge:                     ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false145.critedge:                        ; preds = %sw.bb134
  %replay.i589 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 4
  %492 = ptrtoint ptr %replay.i589 to i32
  call void @__asan_load2_noabort(i32 %492)
  %493 = load i16, ptr %replay.i589, align 2
  %replay1.i590 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 4
  %494 = ptrtoint ptr %replay1.i590 to i32
  call void @__asan_load2_noabort(i32 %494)
  %495 = load i16, ptr %replay1.i590, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %493, i16 %495)
  %cmp.not.i591 = icmp eq i16 %493, %495
  br i1 %cmp.not.i591, label %lor.lhs.false.i595, label %lor.lhs.false145.critedge.lor.lhs.false151.critedge369_crit_edge

lor.lhs.false145.critedge.lor.lhs.false151.critedge369_crit_edge: ; preds = %lor.lhs.false145.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false151.critedge369

lor.lhs.false.i595:                               ; preds = %lor.lhs.false145.critedge
  %interval.i592 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 3, i32 1
  %496 = ptrtoint ptr %interval.i592 to i32
  call void @__asan_load2_noabort(i32 %496)
  %497 = load i16, ptr %interval.i592, align 2
  %interval7.i593 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 3, i32 1
  %498 = ptrtoint ptr %interval7.i593 to i32
  call void @__asan_load2_noabort(i32 %498)
  %499 = load i16, ptr %interval7.i593, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %497, i16 %499)
  %cmp9.not.i594 = icmp eq i16 %497, %499
  br i1 %cmp9.not.i594, label %lor.lhs.false11.i599, label %lor.lhs.false.i595.lor.lhs.false151.critedge369_crit_edge

lor.lhs.false.i595.lor.lhs.false151.critedge369_crit_edge: ; preds = %lor.lhs.false.i595
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false151.critedge369

lor.lhs.false11.i599:                             ; preds = %lor.lhs.false.i595
  %trigger6.i596 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 3
  %trigger.i597 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 3
  %500 = ptrtoint ptr %trigger.i597 to i32
  call void @__asan_load2_noabort(i32 %500)
  %501 = load i16, ptr %trigger.i597, align 2
  %502 = ptrtoint ptr %trigger6.i596 to i32
  call void @__asan_load2_noabort(i32 %502)
  %503 = load i16, ptr %trigger6.i596, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %501, i16 %503)
  %cmp17.not.i598 = icmp eq i16 %501, %503
  br i1 %cmp17.not.i598, label %lor.lhs.false19.i603, label %lor.lhs.false11.i599.lor.lhs.false151.critedge369_crit_edge

lor.lhs.false11.i599.lor.lhs.false151.critedge369_crit_edge: ; preds = %lor.lhs.false11.i599
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false151.critedge369

lor.lhs.false19.i603:                             ; preds = %lor.lhs.false11.i599
  %direction.i600 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 2
  %504 = ptrtoint ptr %direction.i600 to i32
  call void @__asan_load2_noabort(i32 %504)
  %505 = load i16, ptr %direction.i600, align 4
  %direction21.i601 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 2
  %506 = ptrtoint ptr %direction21.i601 to i32
  call void @__asan_load2_noabort(i32 %506)
  %507 = load i16, ptr %direction21.i601, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %505, i16 %507)
  %cmp23.not.i602 = icmp eq i16 %505, %507
  br i1 %cmp23.not.i602, label %pidff_needs_set_effect.exit610, label %lor.lhs.false19.i603.lor.lhs.false151.critedge369_crit_edge

lor.lhs.false19.i603.lor.lhs.false151.critedge369_crit_edge: ; preds = %lor.lhs.false19.i603
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false151.critedge369

pidff_needs_set_effect.exit610:                   ; preds = %lor.lhs.false19.i603
  %delay.i604 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 4, i32 1
  %508 = ptrtoint ptr %delay.i604 to i32
  call void @__asan_load2_noabort(i32 %508)
  %509 = load i16, ptr %delay.i604, align 2
  %delay28.i605 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 4, i32 1
  %510 = ptrtoint ptr %delay28.i605 to i32
  call void @__asan_load2_noabort(i32 %510)
  %511 = load i16, ptr %delay28.i605, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %509, i16 %511)
  %cmp30.i606.not = icmp eq i16 %509, %511
  br i1 %cmp30.i606.not, label %pidff_needs_set_effect.exit610.lor.lhs.false151_crit_edge, label %pidff_needs_set_effect.exit610.lor.lhs.false151.critedge369_crit_edge

pidff_needs_set_effect.exit610.lor.lhs.false151.critedge369_crit_edge: ; preds = %pidff_needs_set_effect.exit610
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false151.critedge369

pidff_needs_set_effect.exit610.lor.lhs.false151_crit_edge: ; preds = %pidff_needs_set_effect.exit610
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false151

lor.lhs.false151.critedge369:                     ; preds = %pidff_needs_set_effect.exit610.lor.lhs.false151.critedge369_crit_edge, %lor.lhs.false19.i603.lor.lhs.false151.critedge369_crit_edge, %lor.lhs.false11.i599.lor.lhs.false151.critedge369_crit_edge, %lor.lhs.false.i595.lor.lhs.false151.critedge369_crit_edge, %lor.lhs.false145.critedge.lor.lhs.false151.critedge369_crit_edge
  %512 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %value, align 4
  %514 = ptrtoint ptr %513 to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load i32, ptr %513, align 4
  %value3.i612 = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 2, i32 0, i32 1
  %516 = ptrtoint ptr %value3.i612 to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %value3.i612, align 4
  %518 = ptrtoint ptr %517 to i32
  call void @__asan_store4_noabort(i32 %518)
  store i32 %515, ptr %517, align 4
  %create_new_effect_type.i613 = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 13
  %519 = ptrtoint ptr %create_new_effect_type.i613 to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %create_new_effect_type.i613, align 4
  %value5.i614 = getelementptr inbounds %struct.hid_field, ptr %520, i32 0, i32 10
  %521 = ptrtoint ptr %value5.i614 to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load ptr, ptr %value5.i614, align 4
  %523 = ptrtoint ptr %522 to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load i32, ptr %522, align 4
  %set_effect_type.i615 = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 14
  %525 = ptrtoint ptr %set_effect_type.i615 to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %set_effect_type.i615, align 4
  %value7.i616 = getelementptr inbounds %struct.hid_field, ptr %526, i32 0, i32 10
  %527 = ptrtoint ptr %value7.i616 to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load ptr, ptr %value7.i616, align 4
  %529 = ptrtoint ptr %528 to i32
  call void @__asan_store4_noabort(i32 %529)
  store i32 %524, ptr %528, align 4
  %530 = ptrtoint ptr %replay.i589 to i32
  call void @__asan_load2_noabort(i32 %530)
  %531 = load i16, ptr %replay.i589, align 2
  %conv.i618 = zext i16 %531 to i32
  %value11.i619 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 1, i32 1
  %532 = ptrtoint ptr %value11.i619 to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %value11.i619, align 4
  %534 = ptrtoint ptr %533 to i32
  call void @__asan_store4_noabort(i32 %534)
  store i32 %conv.i618, ptr %533, align 4
  %trigger.i620 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 3
  %535 = ptrtoint ptr %trigger.i620 to i32
  call void @__asan_load2_noabort(i32 %535)
  %536 = load i16, ptr %trigger.i620, align 2
  %conv13.i621 = zext i16 %536 to i32
  %value16.i622 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 3, i32 1
  %537 = ptrtoint ptr %value16.i622 to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load ptr, ptr %value16.i622, align 4
  %539 = ptrtoint ptr %538 to i32
  call void @__asan_store4_noabort(i32 %539)
  store i32 %conv13.i621, ptr %538, align 4
  %interval.i623 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 3, i32 1
  %540 = ptrtoint ptr %interval.i623 to i32
  call void @__asan_load2_noabort(i32 %540)
  %541 = load i16, ptr %interval.i623, align 2
  %conv19.i624 = zext i16 %541 to i32
  %value22.i625 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 4, i32 1
  %542 = ptrtoint ptr %value22.i625 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %value22.i625, align 4
  %544 = ptrtoint ptr %543 to i32
  call void @__asan_store4_noabort(i32 %544)
  store i32 %conv19.i624, ptr %543, align 4
  %arrayidx25.i626 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 2
  %545 = ptrtoint ptr %arrayidx25.i626 to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load ptr, ptr %arrayidx25.i626, align 4
  %logical_maximum.i627 = getelementptr inbounds %struct.hid_field, ptr %546, i32 0, i32 12
  %547 = ptrtoint ptr %logical_maximum.i627 to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load i32, ptr %logical_maximum.i627, align 4
  %value28.i628 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 2, i32 1
  %549 = ptrtoint ptr %value28.i628 to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %value28.i628, align 4
  %551 = ptrtoint ptr %550 to i32
  call void @__asan_store4_noabort(i32 %551)
  store i32 %548, ptr %550, align 4
  %value32.i629 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 5, i32 1
  %552 = ptrtoint ptr %value32.i629 to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %value32.i629, align 4
  %554 = ptrtoint ptr %553 to i32
  call void @__asan_store4_noabort(i32 %554)
  store i32 1, ptr %553, align 4
  %direction.i630 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 2
  %555 = ptrtoint ptr %direction.i630 to i32
  call void @__asan_load2_noabort(i32 %555)
  %556 = load i16, ptr %direction.i630, align 4
  %conv34.i631 = zext i16 %556 to i32
  %effect_direction.i632 = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 15
  %557 = ptrtoint ptr %effect_direction.i632 to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %effect_direction.i632, align 4
  %logical_maximum.i.i633 = getelementptr inbounds %struct.hid_field, ptr %558, i32 0, i32 12
  %559 = ptrtoint ptr %logical_maximum.i.i633 to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load i32, ptr %logical_maximum.i.i633, align 4
  %logical_minimum.i.i634 = getelementptr inbounds %struct.hid_field, ptr %558, i32 0, i32 11
  %561 = ptrtoint ptr %logical_minimum.i.i634 to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load i32, ptr %logical_minimum.i.i634, align 4
  %sub.i.i635 = sub i32 %560, %562
  %mul.i.i636 = mul i32 %sub.i.i635, %conv34.i631
  %div.i.i637 = sdiv i32 %mul.i.i636, 65535
  %add.i.i638 = add i32 %div.i.i637, %562
  %value36.i639 = getelementptr inbounds %struct.hid_field, ptr %558, i32 0, i32 10
  %563 = ptrtoint ptr %value36.i639 to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load ptr, ptr %value36.i639, align 4
  %565 = ptrtoint ptr %564 to i32
  call void @__asan_store4_noabort(i32 %565)
  store i32 %add.i.i638, ptr %564, align 4
  %delay.i640 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 4, i32 1
  %566 = ptrtoint ptr %delay.i640 to i32
  call void @__asan_load2_noabort(i32 %566)
  %567 = load i16, ptr %delay.i640, align 2
  %conv39.i641 = zext i16 %567 to i32
  %value42.i642 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 6, i32 1
  %568 = ptrtoint ptr %value42.i642 to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %value42.i642, align 4
  %570 = ptrtoint ptr %569 to i32
  call void @__asan_store4_noabort(i32 %570)
  store i32 %conv39.i641, ptr %569, align 4
  %571 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %3, align 4
  %reports.i643 = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 1
  %573 = ptrtoint ptr %reports.i643 to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load ptr, ptr %reports.i643, align 4
  tail call void @hid_hw_request(ptr noundef %572, ptr noundef %574, i32 noundef 9) #6
  br label %lor.lhs.false151

lor.lhs.false151:                                 ; preds = %lor.lhs.false151.critedge369, %pidff_needs_set_effect.exit610.lor.lhs.false151_crit_edge
  %u.i644 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %u1.i645 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5
  %center.i646 = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5
  %575 = ptrtoint ptr %center.i646 to i32
  call void @__asan_load2_noabort(i32 %575)
  %576 = load i16, ptr %center.i646, align 2
  %center3.i647 = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 5
  %577 = ptrtoint ptr %center3.i647 to i32
  call void @__asan_load2_noabort(i32 %577)
  %578 = load i16, ptr %center3.i647, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %576, i16 %578)
  %cmp5.not.i648 = icmp eq i16 %576, %578
  br i1 %cmp5.not.i648, label %lor.lhs.false.i652, label %lor.lhs.false151.lor.end.i673_crit_edge

lor.lhs.false151.lor.end.i673_crit_edge:          ; preds = %lor.lhs.false151
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end.i673

lor.lhs.false.i652:                               ; preds = %lor.lhs.false151
  %right_coeff.i649 = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 2
  %579 = ptrtoint ptr %right_coeff.i649 to i32
  call void @__asan_load2_noabort(i32 %579)
  %580 = load i16, ptr %right_coeff.i649, align 2
  %right_coeff8.i650 = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 2
  %581 = ptrtoint ptr %right_coeff8.i650 to i32
  call void @__asan_load2_noabort(i32 %581)
  %582 = load i16, ptr %right_coeff8.i650, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %580, i16 %582)
  %cmp10.not.i651 = icmp eq i16 %580, %582
  br i1 %cmp10.not.i651, label %lor.lhs.false12.i656, label %lor.lhs.false.i652.lor.end.i673_crit_edge

lor.lhs.false.i652.lor.end.i673_crit_edge:        ; preds = %lor.lhs.false.i652
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end.i673

lor.lhs.false12.i656:                             ; preds = %lor.lhs.false.i652
  %left_coeff.i653 = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 3
  %583 = ptrtoint ptr %left_coeff.i653 to i32
  call void @__asan_load2_noabort(i32 %583)
  %584 = load i16, ptr %left_coeff.i653, align 2
  %left_coeff14.i654 = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 3
  %585 = ptrtoint ptr %left_coeff14.i654 to i32
  call void @__asan_load2_noabort(i32 %585)
  %586 = load i16, ptr %left_coeff14.i654, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %584, i16 %586)
  %cmp16.not.i655 = icmp eq i16 %584, %586
  br i1 %cmp16.not.i655, label %lor.lhs.false18.i658, label %lor.lhs.false12.i656.lor.end.i673_crit_edge

lor.lhs.false12.i656.lor.end.i673_crit_edge:      ; preds = %lor.lhs.false12.i656
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end.i673

lor.lhs.false18.i658:                             ; preds = %lor.lhs.false12.i656
  %587 = ptrtoint ptr %u.i644 to i32
  call void @__asan_load2_noabort(i32 %587)
  %588 = load i16, ptr %u.i644, align 2
  %589 = ptrtoint ptr %u1.i645 to i32
  call void @__asan_load2_noabort(i32 %589)
  %590 = load i16, ptr %u1.i645, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %588, i16 %590)
  %cmp22.not.i657 = icmp eq i16 %588, %590
  br i1 %cmp22.not.i657, label %lor.lhs.false24.i662, label %lor.lhs.false18.i658.lor.end.i673_crit_edge

lor.lhs.false18.i658.lor.end.i673_crit_edge:      ; preds = %lor.lhs.false18.i658
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end.i673

lor.lhs.false24.i662:                             ; preds = %lor.lhs.false18.i658
  %left_saturation.i659 = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %591 = ptrtoint ptr %left_saturation.i659 to i32
  call void @__asan_load2_noabort(i32 %591)
  %592 = load i16, ptr %left_saturation.i659, align 2
  %left_saturation26.i660 = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 1
  %593 = ptrtoint ptr %left_saturation26.i660 to i32
  call void @__asan_load2_noabort(i32 %593)
  %594 = load i16, ptr %left_saturation26.i660, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %592, i16 %594)
  %cmp28.not.i661 = icmp eq i16 %592, %594
  br i1 %cmp28.not.i661, label %lor.rhs.i667, label %lor.lhs.false24.i662.lor.end.i673_crit_edge

lor.lhs.false24.i662.lor.end.i673_crit_edge:      ; preds = %lor.lhs.false24.i662
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end.i673

lor.rhs.i667:                                     ; preds = %lor.lhs.false24.i662
  call void @__sanitizer_cov_trace_pc() #8
  %deadband.i663 = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 4
  %595 = ptrtoint ptr %deadband.i663 to i32
  call void @__asan_load2_noabort(i32 %595)
  %596 = load i16, ptr %deadband.i663, align 2
  %deadband31.i664 = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 4
  %597 = ptrtoint ptr %deadband31.i664 to i32
  call void @__asan_load2_noabort(i32 %597)
  %598 = load i16, ptr %deadband31.i664, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %596, i16 %598)
  %cmp33.i665 = icmp ne i16 %596, %598
  %phi.cast.i666 = zext i1 %cmp33.i665 to i32
  br label %lor.end.i673

lor.end.i673:                                     ; preds = %lor.rhs.i667, %lor.lhs.false24.i662.lor.end.i673_crit_edge, %lor.lhs.false18.i658.lor.end.i673_crit_edge, %lor.lhs.false12.i656.lor.end.i673_crit_edge, %lor.lhs.false.i652.lor.end.i673_crit_edge, %lor.lhs.false151.lor.end.i673_crit_edge
  %599 = phi i32 [ 1, %lor.lhs.false24.i662.lor.end.i673_crit_edge ], [ 1, %lor.lhs.false18.i658.lor.end.i673_crit_edge ], [ 1, %lor.lhs.false12.i656.lor.end.i673_crit_edge ], [ 1, %lor.lhs.false.i652.lor.end.i673_crit_edge ], [ 1, %lor.lhs.false151.lor.end.i673_crit_edge ], [ %phi.cast.i666, %lor.rhs.i667 ]
  %arrayidx.1.i668 = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5, i32 1
  %arrayidx2.1.i669 = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 5, i32 1
  %center.1.i670 = getelementptr [2 x %struct.ff_condition_effect], ptr %u.i644, i32 0, i32 1, i32 5
  %600 = ptrtoint ptr %center.1.i670 to i32
  call void @__asan_load2_noabort(i32 %600)
  %601 = load i16, ptr %center.1.i670, align 2
  %center3.1.i671 = getelementptr [2 x %struct.ff_condition_effect], ptr %u1.i645, i32 0, i32 1, i32 5
  %602 = ptrtoint ptr %center3.1.i671 to i32
  call void @__asan_load2_noabort(i32 %602)
  %603 = load i16, ptr %center3.1.i671, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %601, i16 %603)
  %cmp5.not.1.i672 = icmp eq i16 %601, %603
  br i1 %cmp5.not.1.i672, label %lor.lhs.false.1.i677, label %lor.end.i673.pidff_needs_set_condition.exit694_crit_edge

lor.end.i673.pidff_needs_set_condition.exit694_crit_edge: ; preds = %lor.end.i673
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_needs_set_condition.exit694

lor.lhs.false.1.i677:                             ; preds = %lor.end.i673
  %right_coeff.1.i674 = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5, i32 3
  %604 = ptrtoint ptr %right_coeff.1.i674 to i32
  call void @__asan_load2_noabort(i32 %604)
  %605 = load i16, ptr %right_coeff.1.i674, align 2
  %right_coeff8.1.i675 = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 5, i32 3
  %606 = ptrtoint ptr %right_coeff8.1.i675 to i32
  call void @__asan_load2_noabort(i32 %606)
  %607 = load i16, ptr %right_coeff8.1.i675, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %605, i16 %607)
  %cmp10.not.1.i676 = icmp eq i16 %605, %607
  br i1 %cmp10.not.1.i676, label %lor.lhs.false12.1.i681, label %lor.lhs.false.1.i677.pidff_needs_set_condition.exit694_crit_edge

lor.lhs.false.1.i677.pidff_needs_set_condition.exit694_crit_edge: ; preds = %lor.lhs.false.1.i677
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_needs_set_condition.exit694

lor.lhs.false12.1.i681:                           ; preds = %lor.lhs.false.1.i677
  %left_coeff.1.i678 = getelementptr [2 x %struct.ff_condition_effect], ptr %u.i644, i32 0, i32 1, i32 3
  %608 = ptrtoint ptr %left_coeff.1.i678 to i32
  call void @__asan_load2_noabort(i32 %608)
  %609 = load i16, ptr %left_coeff.1.i678, align 2
  %left_coeff14.1.i679 = getelementptr [2 x %struct.ff_condition_effect], ptr %u1.i645, i32 0, i32 1, i32 3
  %610 = ptrtoint ptr %left_coeff14.1.i679 to i32
  call void @__asan_load2_noabort(i32 %610)
  %611 = load i16, ptr %left_coeff14.1.i679, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %609, i16 %611)
  %cmp16.not.1.i680 = icmp eq i16 %609, %611
  br i1 %cmp16.not.1.i680, label %lor.lhs.false18.1.i683, label %lor.lhs.false12.1.i681.pidff_needs_set_condition.exit694_crit_edge

lor.lhs.false12.1.i681.pidff_needs_set_condition.exit694_crit_edge: ; preds = %lor.lhs.false12.1.i681
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_needs_set_condition.exit694

lor.lhs.false18.1.i683:                           ; preds = %lor.lhs.false12.1.i681
  %612 = ptrtoint ptr %arrayidx.1.i668 to i32
  call void @__asan_load2_noabort(i32 %612)
  %613 = load i16, ptr %arrayidx.1.i668, align 2
  %614 = ptrtoint ptr %arrayidx2.1.i669 to i32
  call void @__asan_load2_noabort(i32 %614)
  %615 = load i16, ptr %arrayidx2.1.i669, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %613, i16 %615)
  %cmp22.not.1.i682 = icmp eq i16 %613, %615
  br i1 %cmp22.not.1.i682, label %lor.lhs.false24.1.i687, label %lor.lhs.false18.1.i683.pidff_needs_set_condition.exit694_crit_edge

lor.lhs.false18.1.i683.pidff_needs_set_condition.exit694_crit_edge: ; preds = %lor.lhs.false18.1.i683
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_needs_set_condition.exit694

lor.lhs.false24.1.i687:                           ; preds = %lor.lhs.false18.1.i683
  %left_saturation.1.i684 = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5, i32 2
  %616 = ptrtoint ptr %left_saturation.1.i684 to i32
  call void @__asan_load2_noabort(i32 %616)
  %617 = load i16, ptr %left_saturation.1.i684, align 2
  %left_saturation26.1.i685 = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 5, i32 2
  %618 = ptrtoint ptr %left_saturation26.1.i685 to i32
  call void @__asan_load2_noabort(i32 %618)
  %619 = load i16, ptr %left_saturation26.1.i685, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %617, i16 %619)
  %cmp28.not.1.i686 = icmp eq i16 %617, %619
  br i1 %cmp28.not.1.i686, label %lor.rhs.1.i692, label %lor.lhs.false24.1.i687.pidff_needs_set_condition.exit694_crit_edge

lor.lhs.false24.1.i687.pidff_needs_set_condition.exit694_crit_edge: ; preds = %lor.lhs.false24.1.i687
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_needs_set_condition.exit694

lor.rhs.1.i692:                                   ; preds = %lor.lhs.false24.1.i687
  call void @__sanitizer_cov_trace_pc() #8
  %deadband.1.i688 = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 6
  %620 = ptrtoint ptr %deadband.1.i688 to i32
  call void @__asan_load2_noabort(i32 %620)
  %621 = load i16, ptr %deadband.1.i688, align 2
  %deadband31.1.i689 = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 6
  %622 = ptrtoint ptr %deadband31.1.i689 to i32
  call void @__asan_load2_noabort(i32 %622)
  %623 = load i16, ptr %deadband31.1.i689, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %621, i16 %623)
  %cmp33.1.i690 = icmp ne i16 %621, %623
  %phi.cast52.i691 = zext i1 %cmp33.1.i690 to i32
  br label %pidff_needs_set_condition.exit694

pidff_needs_set_condition.exit694:                ; preds = %lor.rhs.1.i692, %lor.lhs.false24.1.i687.pidff_needs_set_condition.exit694_crit_edge, %lor.lhs.false18.1.i683.pidff_needs_set_condition.exit694_crit_edge, %lor.lhs.false12.1.i681.pidff_needs_set_condition.exit694_crit_edge, %lor.lhs.false.1.i677.pidff_needs_set_condition.exit694_crit_edge, %lor.end.i673.pidff_needs_set_condition.exit694_crit_edge
  %624 = phi i32 [ 1, %lor.lhs.false24.1.i687.pidff_needs_set_condition.exit694_crit_edge ], [ 1, %lor.lhs.false18.1.i683.pidff_needs_set_condition.exit694_crit_edge ], [ 1, %lor.lhs.false12.1.i681.pidff_needs_set_condition.exit694_crit_edge ], [ 1, %lor.lhs.false.1.i677.pidff_needs_set_condition.exit694_crit_edge ], [ 1, %lor.end.i673.pidff_needs_set_condition.exit694_crit_edge ], [ %phi.cast52.i691, %lor.rhs.1.i692 ]
  %or.1.i693 = or i32 %624, %599
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.1.i693)
  %tobool153.not = icmp eq i32 %or.1.i693, 0
  br i1 %tobool153.not, label %pidff_needs_set_condition.exit694.do.body218_crit_edge, label %pidff_needs_set_condition.exit694.if.then154_crit_edge

pidff_needs_set_condition.exit694.if.then154_crit_edge: ; preds = %pidff_needs_set_condition.exit694
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then154

pidff_needs_set_condition.exit694.do.body218_crit_edge: ; preds = %pidff_needs_set_condition.exit694
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body218

if.then154.critedge:                              ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @pidff_set_effect_report(ptr noundef %3, ptr noundef %effect)
  br label %if.then154

if.then154:                                       ; preds = %if.then154.critedge, %pidff_needs_set_condition.exit694.if.then154_crit_edge
  tail call fastcc void @pidff_set_condition_report(ptr noundef %3, ptr noundef %effect)
  br label %sw.epilog206

sw.bb156:                                         ; preds = %if.end
  br i1 %tobool.not, label %if.then158, label %lor.lhs.false167.critedge

if.then158:                                       ; preds = %sw.bb156
  %arrayidx160 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 20, i32 8
  %625 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load i32, ptr %arrayidx160, align 4
  %call161 = tail call fastcc i32 @pidff_request_effect_upload(ptr noundef %3, i32 noundef %626)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %if.then176.critedge, label %if.then158.cleanup_crit_edge

if.then158.cleanup_crit_edge:                     ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false167.critedge:                        ; preds = %sw.bb156
  %replay.i695 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 4
  %627 = ptrtoint ptr %replay.i695 to i32
  call void @__asan_load2_noabort(i32 %627)
  %628 = load i16, ptr %replay.i695, align 2
  %replay1.i696 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 4
  %629 = ptrtoint ptr %replay1.i696 to i32
  call void @__asan_load2_noabort(i32 %629)
  %630 = load i16, ptr %replay1.i696, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %628, i16 %630)
  %cmp.not.i697 = icmp eq i16 %628, %630
  br i1 %cmp.not.i697, label %lor.lhs.false.i701, label %lor.lhs.false167.critedge.lor.lhs.false173.critedge370_crit_edge

lor.lhs.false167.critedge.lor.lhs.false173.critedge370_crit_edge: ; preds = %lor.lhs.false167.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false173.critedge370

lor.lhs.false.i701:                               ; preds = %lor.lhs.false167.critedge
  %interval.i698 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 3, i32 1
  %631 = ptrtoint ptr %interval.i698 to i32
  call void @__asan_load2_noabort(i32 %631)
  %632 = load i16, ptr %interval.i698, align 2
  %interval7.i699 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 3, i32 1
  %633 = ptrtoint ptr %interval7.i699 to i32
  call void @__asan_load2_noabort(i32 %633)
  %634 = load i16, ptr %interval7.i699, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %632, i16 %634)
  %cmp9.not.i700 = icmp eq i16 %632, %634
  br i1 %cmp9.not.i700, label %lor.lhs.false11.i705, label %lor.lhs.false.i701.lor.lhs.false173.critedge370_crit_edge

lor.lhs.false.i701.lor.lhs.false173.critedge370_crit_edge: ; preds = %lor.lhs.false.i701
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false173.critedge370

lor.lhs.false11.i705:                             ; preds = %lor.lhs.false.i701
  %trigger6.i702 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 3
  %trigger.i703 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 3
  %635 = ptrtoint ptr %trigger.i703 to i32
  call void @__asan_load2_noabort(i32 %635)
  %636 = load i16, ptr %trigger.i703, align 2
  %637 = ptrtoint ptr %trigger6.i702 to i32
  call void @__asan_load2_noabort(i32 %637)
  %638 = load i16, ptr %trigger6.i702, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %636, i16 %638)
  %cmp17.not.i704 = icmp eq i16 %636, %638
  br i1 %cmp17.not.i704, label %lor.lhs.false19.i709, label %lor.lhs.false11.i705.lor.lhs.false173.critedge370_crit_edge

lor.lhs.false11.i705.lor.lhs.false173.critedge370_crit_edge: ; preds = %lor.lhs.false11.i705
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false173.critedge370

lor.lhs.false19.i709:                             ; preds = %lor.lhs.false11.i705
  %direction.i706 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 2
  %639 = ptrtoint ptr %direction.i706 to i32
  call void @__asan_load2_noabort(i32 %639)
  %640 = load i16, ptr %direction.i706, align 4
  %direction21.i707 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 2
  %641 = ptrtoint ptr %direction21.i707 to i32
  call void @__asan_load2_noabort(i32 %641)
  %642 = load i16, ptr %direction21.i707, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %640, i16 %642)
  %cmp23.not.i708 = icmp eq i16 %640, %642
  br i1 %cmp23.not.i708, label %pidff_needs_set_effect.exit716, label %lor.lhs.false19.i709.lor.lhs.false173.critedge370_crit_edge

lor.lhs.false19.i709.lor.lhs.false173.critedge370_crit_edge: ; preds = %lor.lhs.false19.i709
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false173.critedge370

pidff_needs_set_effect.exit716:                   ; preds = %lor.lhs.false19.i709
  %delay.i710 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 4, i32 1
  %643 = ptrtoint ptr %delay.i710 to i32
  call void @__asan_load2_noabort(i32 %643)
  %644 = load i16, ptr %delay.i710, align 2
  %delay28.i711 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 4, i32 1
  %645 = ptrtoint ptr %delay28.i711 to i32
  call void @__asan_load2_noabort(i32 %645)
  %646 = load i16, ptr %delay28.i711, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %644, i16 %646)
  %cmp30.i712.not = icmp eq i16 %644, %646
  br i1 %cmp30.i712.not, label %pidff_needs_set_effect.exit716.lor.lhs.false173_crit_edge, label %pidff_needs_set_effect.exit716.lor.lhs.false173.critedge370_crit_edge

pidff_needs_set_effect.exit716.lor.lhs.false173.critedge370_crit_edge: ; preds = %pidff_needs_set_effect.exit716
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false173.critedge370

pidff_needs_set_effect.exit716.lor.lhs.false173_crit_edge: ; preds = %pidff_needs_set_effect.exit716
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false173

lor.lhs.false173.critedge370:                     ; preds = %pidff_needs_set_effect.exit716.lor.lhs.false173.critedge370_crit_edge, %lor.lhs.false19.i709.lor.lhs.false173.critedge370_crit_edge, %lor.lhs.false11.i705.lor.lhs.false173.critedge370_crit_edge, %lor.lhs.false.i701.lor.lhs.false173.critedge370_crit_edge, %lor.lhs.false167.critedge.lor.lhs.false173.critedge370_crit_edge
  %647 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load ptr, ptr %value, align 4
  %649 = ptrtoint ptr %648 to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load i32, ptr %648, align 4
  %value3.i718 = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 2, i32 0, i32 1
  %651 = ptrtoint ptr %value3.i718 to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load ptr, ptr %value3.i718, align 4
  %653 = ptrtoint ptr %652 to i32
  call void @__asan_store4_noabort(i32 %653)
  store i32 %650, ptr %652, align 4
  %create_new_effect_type.i719 = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 13
  %654 = ptrtoint ptr %create_new_effect_type.i719 to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load ptr, ptr %create_new_effect_type.i719, align 4
  %value5.i720 = getelementptr inbounds %struct.hid_field, ptr %655, i32 0, i32 10
  %656 = ptrtoint ptr %value5.i720 to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load ptr, ptr %value5.i720, align 4
  %658 = ptrtoint ptr %657 to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load i32, ptr %657, align 4
  %set_effect_type.i721 = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 14
  %660 = ptrtoint ptr %set_effect_type.i721 to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load ptr, ptr %set_effect_type.i721, align 4
  %value7.i722 = getelementptr inbounds %struct.hid_field, ptr %661, i32 0, i32 10
  %662 = ptrtoint ptr %value7.i722 to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load ptr, ptr %value7.i722, align 4
  %664 = ptrtoint ptr %663 to i32
  call void @__asan_store4_noabort(i32 %664)
  store i32 %659, ptr %663, align 4
  %665 = ptrtoint ptr %replay.i695 to i32
  call void @__asan_load2_noabort(i32 %665)
  %666 = load i16, ptr %replay.i695, align 2
  %conv.i724 = zext i16 %666 to i32
  %value11.i725 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 1, i32 1
  %667 = ptrtoint ptr %value11.i725 to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load ptr, ptr %value11.i725, align 4
  %669 = ptrtoint ptr %668 to i32
  call void @__asan_store4_noabort(i32 %669)
  store i32 %conv.i724, ptr %668, align 4
  %trigger.i726 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 3
  %670 = ptrtoint ptr %trigger.i726 to i32
  call void @__asan_load2_noabort(i32 %670)
  %671 = load i16, ptr %trigger.i726, align 2
  %conv13.i727 = zext i16 %671 to i32
  %value16.i728 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 3, i32 1
  %672 = ptrtoint ptr %value16.i728 to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load ptr, ptr %value16.i728, align 4
  %674 = ptrtoint ptr %673 to i32
  call void @__asan_store4_noabort(i32 %674)
  store i32 %conv13.i727, ptr %673, align 4
  %interval.i729 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 3, i32 1
  %675 = ptrtoint ptr %interval.i729 to i32
  call void @__asan_load2_noabort(i32 %675)
  %676 = load i16, ptr %interval.i729, align 2
  %conv19.i730 = zext i16 %676 to i32
  %value22.i731 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 4, i32 1
  %677 = ptrtoint ptr %value22.i731 to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load ptr, ptr %value22.i731, align 4
  %679 = ptrtoint ptr %678 to i32
  call void @__asan_store4_noabort(i32 %679)
  store i32 %conv19.i730, ptr %678, align 4
  %arrayidx25.i732 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 2
  %680 = ptrtoint ptr %arrayidx25.i732 to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %arrayidx25.i732, align 4
  %logical_maximum.i733 = getelementptr inbounds %struct.hid_field, ptr %681, i32 0, i32 12
  %682 = ptrtoint ptr %logical_maximum.i733 to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load i32, ptr %logical_maximum.i733, align 4
  %value28.i734 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 2, i32 1
  %684 = ptrtoint ptr %value28.i734 to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load ptr, ptr %value28.i734, align 4
  %686 = ptrtoint ptr %685 to i32
  call void @__asan_store4_noabort(i32 %686)
  store i32 %683, ptr %685, align 4
  %value32.i735 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 5, i32 1
  %687 = ptrtoint ptr %value32.i735 to i32
  call void @__asan_load4_noabort(i32 %687)
  %688 = load ptr, ptr %value32.i735, align 4
  %689 = ptrtoint ptr %688 to i32
  call void @__asan_store4_noabort(i32 %689)
  store i32 1, ptr %688, align 4
  %direction.i736 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 2
  %690 = ptrtoint ptr %direction.i736 to i32
  call void @__asan_load2_noabort(i32 %690)
  %691 = load i16, ptr %direction.i736, align 4
  %conv34.i737 = zext i16 %691 to i32
  %effect_direction.i738 = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 15
  %692 = ptrtoint ptr %effect_direction.i738 to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load ptr, ptr %effect_direction.i738, align 4
  %logical_maximum.i.i739 = getelementptr inbounds %struct.hid_field, ptr %693, i32 0, i32 12
  %694 = ptrtoint ptr %logical_maximum.i.i739 to i32
  call void @__asan_load4_noabort(i32 %694)
  %695 = load i32, ptr %logical_maximum.i.i739, align 4
  %logical_minimum.i.i740 = getelementptr inbounds %struct.hid_field, ptr %693, i32 0, i32 11
  %696 = ptrtoint ptr %logical_minimum.i.i740 to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load i32, ptr %logical_minimum.i.i740, align 4
  %sub.i.i741 = sub i32 %695, %697
  %mul.i.i742 = mul i32 %sub.i.i741, %conv34.i737
  %div.i.i743 = sdiv i32 %mul.i.i742, 65535
  %add.i.i744 = add i32 %div.i.i743, %697
  %value36.i745 = getelementptr inbounds %struct.hid_field, ptr %693, i32 0, i32 10
  %698 = ptrtoint ptr %value36.i745 to i32
  call void @__asan_load4_noabort(i32 %698)
  %699 = load ptr, ptr %value36.i745, align 4
  %700 = ptrtoint ptr %699 to i32
  call void @__asan_store4_noabort(i32 %700)
  store i32 %add.i.i744, ptr %699, align 4
  %delay.i746 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 4, i32 1
  %701 = ptrtoint ptr %delay.i746 to i32
  call void @__asan_load2_noabort(i32 %701)
  %702 = load i16, ptr %delay.i746, align 2
  %conv39.i747 = zext i16 %702 to i32
  %value42.i748 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 6, i32 1
  %703 = ptrtoint ptr %value42.i748 to i32
  call void @__asan_load4_noabort(i32 %703)
  %704 = load ptr, ptr %value42.i748, align 4
  %705 = ptrtoint ptr %704 to i32
  call void @__asan_store4_noabort(i32 %705)
  store i32 %conv39.i747, ptr %704, align 4
  %706 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %706)
  %707 = load ptr, ptr %3, align 4
  %reports.i749 = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 1
  %708 = ptrtoint ptr %reports.i749 to i32
  call void @__asan_load4_noabort(i32 %708)
  %709 = load ptr, ptr %reports.i749, align 4
  tail call void @hid_hw_request(ptr noundef %707, ptr noundef %709, i32 noundef 9) #6
  br label %lor.lhs.false173

lor.lhs.false173:                                 ; preds = %lor.lhs.false173.critedge370, %pidff_needs_set_effect.exit716.lor.lhs.false173_crit_edge
  %u.i750 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %u1.i751 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5
  %center.i752 = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5
  %710 = ptrtoint ptr %center.i752 to i32
  call void @__asan_load2_noabort(i32 %710)
  %711 = load i16, ptr %center.i752, align 2
  %center3.i753 = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 5
  %712 = ptrtoint ptr %center3.i753 to i32
  call void @__asan_load2_noabort(i32 %712)
  %713 = load i16, ptr %center3.i753, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %711, i16 %713)
  %cmp5.not.i754 = icmp eq i16 %711, %713
  br i1 %cmp5.not.i754, label %lor.lhs.false.i758, label %lor.lhs.false173.lor.end.i779_crit_edge

lor.lhs.false173.lor.end.i779_crit_edge:          ; preds = %lor.lhs.false173
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end.i779

lor.lhs.false.i758:                               ; preds = %lor.lhs.false173
  %right_coeff.i755 = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 2
  %714 = ptrtoint ptr %right_coeff.i755 to i32
  call void @__asan_load2_noabort(i32 %714)
  %715 = load i16, ptr %right_coeff.i755, align 2
  %right_coeff8.i756 = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 2
  %716 = ptrtoint ptr %right_coeff8.i756 to i32
  call void @__asan_load2_noabort(i32 %716)
  %717 = load i16, ptr %right_coeff8.i756, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %715, i16 %717)
  %cmp10.not.i757 = icmp eq i16 %715, %717
  br i1 %cmp10.not.i757, label %lor.lhs.false12.i762, label %lor.lhs.false.i758.lor.end.i779_crit_edge

lor.lhs.false.i758.lor.end.i779_crit_edge:        ; preds = %lor.lhs.false.i758
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end.i779

lor.lhs.false12.i762:                             ; preds = %lor.lhs.false.i758
  %left_coeff.i759 = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 3
  %718 = ptrtoint ptr %left_coeff.i759 to i32
  call void @__asan_load2_noabort(i32 %718)
  %719 = load i16, ptr %left_coeff.i759, align 2
  %left_coeff14.i760 = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 3
  %720 = ptrtoint ptr %left_coeff14.i760 to i32
  call void @__asan_load2_noabort(i32 %720)
  %721 = load i16, ptr %left_coeff14.i760, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %719, i16 %721)
  %cmp16.not.i761 = icmp eq i16 %719, %721
  br i1 %cmp16.not.i761, label %lor.lhs.false18.i764, label %lor.lhs.false12.i762.lor.end.i779_crit_edge

lor.lhs.false12.i762.lor.end.i779_crit_edge:      ; preds = %lor.lhs.false12.i762
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end.i779

lor.lhs.false18.i764:                             ; preds = %lor.lhs.false12.i762
  %722 = ptrtoint ptr %u.i750 to i32
  call void @__asan_load2_noabort(i32 %722)
  %723 = load i16, ptr %u.i750, align 2
  %724 = ptrtoint ptr %u1.i751 to i32
  call void @__asan_load2_noabort(i32 %724)
  %725 = load i16, ptr %u1.i751, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %723, i16 %725)
  %cmp22.not.i763 = icmp eq i16 %723, %725
  br i1 %cmp22.not.i763, label %lor.lhs.false24.i768, label %lor.lhs.false18.i764.lor.end.i779_crit_edge

lor.lhs.false18.i764.lor.end.i779_crit_edge:      ; preds = %lor.lhs.false18.i764
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end.i779

lor.lhs.false24.i768:                             ; preds = %lor.lhs.false18.i764
  %left_saturation.i765 = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %726 = ptrtoint ptr %left_saturation.i765 to i32
  call void @__asan_load2_noabort(i32 %726)
  %727 = load i16, ptr %left_saturation.i765, align 2
  %left_saturation26.i766 = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 1
  %728 = ptrtoint ptr %left_saturation26.i766 to i32
  call void @__asan_load2_noabort(i32 %728)
  %729 = load i16, ptr %left_saturation26.i766, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %727, i16 %729)
  %cmp28.not.i767 = icmp eq i16 %727, %729
  br i1 %cmp28.not.i767, label %lor.rhs.i773, label %lor.lhs.false24.i768.lor.end.i779_crit_edge

lor.lhs.false24.i768.lor.end.i779_crit_edge:      ; preds = %lor.lhs.false24.i768
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end.i779

lor.rhs.i773:                                     ; preds = %lor.lhs.false24.i768
  call void @__sanitizer_cov_trace_pc() #8
  %deadband.i769 = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 4
  %730 = ptrtoint ptr %deadband.i769 to i32
  call void @__asan_load2_noabort(i32 %730)
  %731 = load i16, ptr %deadband.i769, align 2
  %deadband31.i770 = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 4
  %732 = ptrtoint ptr %deadband31.i770 to i32
  call void @__asan_load2_noabort(i32 %732)
  %733 = load i16, ptr %deadband31.i770, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %731, i16 %733)
  %cmp33.i771 = icmp ne i16 %731, %733
  %phi.cast.i772 = zext i1 %cmp33.i771 to i32
  br label %lor.end.i779

lor.end.i779:                                     ; preds = %lor.rhs.i773, %lor.lhs.false24.i768.lor.end.i779_crit_edge, %lor.lhs.false18.i764.lor.end.i779_crit_edge, %lor.lhs.false12.i762.lor.end.i779_crit_edge, %lor.lhs.false.i758.lor.end.i779_crit_edge, %lor.lhs.false173.lor.end.i779_crit_edge
  %734 = phi i32 [ 1, %lor.lhs.false24.i768.lor.end.i779_crit_edge ], [ 1, %lor.lhs.false18.i764.lor.end.i779_crit_edge ], [ 1, %lor.lhs.false12.i762.lor.end.i779_crit_edge ], [ 1, %lor.lhs.false.i758.lor.end.i779_crit_edge ], [ 1, %lor.lhs.false173.lor.end.i779_crit_edge ], [ %phi.cast.i772, %lor.rhs.i773 ]
  %arrayidx.1.i774 = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5, i32 1
  %arrayidx2.1.i775 = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 5, i32 1
  %center.1.i776 = getelementptr [2 x %struct.ff_condition_effect], ptr %u.i750, i32 0, i32 1, i32 5
  %735 = ptrtoint ptr %center.1.i776 to i32
  call void @__asan_load2_noabort(i32 %735)
  %736 = load i16, ptr %center.1.i776, align 2
  %center3.1.i777 = getelementptr [2 x %struct.ff_condition_effect], ptr %u1.i751, i32 0, i32 1, i32 5
  %737 = ptrtoint ptr %center3.1.i777 to i32
  call void @__asan_load2_noabort(i32 %737)
  %738 = load i16, ptr %center3.1.i777, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %736, i16 %738)
  %cmp5.not.1.i778 = icmp eq i16 %736, %738
  br i1 %cmp5.not.1.i778, label %lor.lhs.false.1.i783, label %lor.end.i779.pidff_needs_set_condition.exit800_crit_edge

lor.end.i779.pidff_needs_set_condition.exit800_crit_edge: ; preds = %lor.end.i779
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_needs_set_condition.exit800

lor.lhs.false.1.i783:                             ; preds = %lor.end.i779
  %right_coeff.1.i780 = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5, i32 3
  %739 = ptrtoint ptr %right_coeff.1.i780 to i32
  call void @__asan_load2_noabort(i32 %739)
  %740 = load i16, ptr %right_coeff.1.i780, align 2
  %right_coeff8.1.i781 = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 5, i32 3
  %741 = ptrtoint ptr %right_coeff8.1.i781 to i32
  call void @__asan_load2_noabort(i32 %741)
  %742 = load i16, ptr %right_coeff8.1.i781, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %740, i16 %742)
  %cmp10.not.1.i782 = icmp eq i16 %740, %742
  br i1 %cmp10.not.1.i782, label %lor.lhs.false12.1.i787, label %lor.lhs.false.1.i783.pidff_needs_set_condition.exit800_crit_edge

lor.lhs.false.1.i783.pidff_needs_set_condition.exit800_crit_edge: ; preds = %lor.lhs.false.1.i783
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_needs_set_condition.exit800

lor.lhs.false12.1.i787:                           ; preds = %lor.lhs.false.1.i783
  %left_coeff.1.i784 = getelementptr [2 x %struct.ff_condition_effect], ptr %u.i750, i32 0, i32 1, i32 3
  %743 = ptrtoint ptr %left_coeff.1.i784 to i32
  call void @__asan_load2_noabort(i32 %743)
  %744 = load i16, ptr %left_coeff.1.i784, align 2
  %left_coeff14.1.i785 = getelementptr [2 x %struct.ff_condition_effect], ptr %u1.i751, i32 0, i32 1, i32 3
  %745 = ptrtoint ptr %left_coeff14.1.i785 to i32
  call void @__asan_load2_noabort(i32 %745)
  %746 = load i16, ptr %left_coeff14.1.i785, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %744, i16 %746)
  %cmp16.not.1.i786 = icmp eq i16 %744, %746
  br i1 %cmp16.not.1.i786, label %lor.lhs.false18.1.i789, label %lor.lhs.false12.1.i787.pidff_needs_set_condition.exit800_crit_edge

lor.lhs.false12.1.i787.pidff_needs_set_condition.exit800_crit_edge: ; preds = %lor.lhs.false12.1.i787
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_needs_set_condition.exit800

lor.lhs.false18.1.i789:                           ; preds = %lor.lhs.false12.1.i787
  %747 = ptrtoint ptr %arrayidx.1.i774 to i32
  call void @__asan_load2_noabort(i32 %747)
  %748 = load i16, ptr %arrayidx.1.i774, align 2
  %749 = ptrtoint ptr %arrayidx2.1.i775 to i32
  call void @__asan_load2_noabort(i32 %749)
  %750 = load i16, ptr %arrayidx2.1.i775, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %748, i16 %750)
  %cmp22.not.1.i788 = icmp eq i16 %748, %750
  br i1 %cmp22.not.1.i788, label %lor.lhs.false24.1.i793, label %lor.lhs.false18.1.i789.pidff_needs_set_condition.exit800_crit_edge

lor.lhs.false18.1.i789.pidff_needs_set_condition.exit800_crit_edge: ; preds = %lor.lhs.false18.1.i789
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_needs_set_condition.exit800

lor.lhs.false24.1.i793:                           ; preds = %lor.lhs.false18.1.i789
  %left_saturation.1.i790 = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5, i32 2
  %751 = ptrtoint ptr %left_saturation.1.i790 to i32
  call void @__asan_load2_noabort(i32 %751)
  %752 = load i16, ptr %left_saturation.1.i790, align 2
  %left_saturation26.1.i791 = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 5, i32 2
  %753 = ptrtoint ptr %left_saturation26.1.i791 to i32
  call void @__asan_load2_noabort(i32 %753)
  %754 = load i16, ptr %left_saturation26.1.i791, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %752, i16 %754)
  %cmp28.not.1.i792 = icmp eq i16 %752, %754
  br i1 %cmp28.not.1.i792, label %lor.rhs.1.i798, label %lor.lhs.false24.1.i793.pidff_needs_set_condition.exit800_crit_edge

lor.lhs.false24.1.i793.pidff_needs_set_condition.exit800_crit_edge: ; preds = %lor.lhs.false24.1.i793
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_needs_set_condition.exit800

lor.rhs.1.i798:                                   ; preds = %lor.lhs.false24.1.i793
  call void @__sanitizer_cov_trace_pc() #8
  %deadband.1.i794 = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 6
  %755 = ptrtoint ptr %deadband.1.i794 to i32
  call void @__asan_load2_noabort(i32 %755)
  %756 = load i16, ptr %deadband.1.i794, align 2
  %deadband31.1.i795 = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 6
  %757 = ptrtoint ptr %deadband31.1.i795 to i32
  call void @__asan_load2_noabort(i32 %757)
  %758 = load i16, ptr %deadband31.1.i795, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %756, i16 %758)
  %cmp33.1.i796 = icmp ne i16 %756, %758
  %phi.cast52.i797 = zext i1 %cmp33.1.i796 to i32
  br label %pidff_needs_set_condition.exit800

pidff_needs_set_condition.exit800:                ; preds = %lor.rhs.1.i798, %lor.lhs.false24.1.i793.pidff_needs_set_condition.exit800_crit_edge, %lor.lhs.false18.1.i789.pidff_needs_set_condition.exit800_crit_edge, %lor.lhs.false12.1.i787.pidff_needs_set_condition.exit800_crit_edge, %lor.lhs.false.1.i783.pidff_needs_set_condition.exit800_crit_edge, %lor.end.i779.pidff_needs_set_condition.exit800_crit_edge
  %759 = phi i32 [ 1, %lor.lhs.false24.1.i793.pidff_needs_set_condition.exit800_crit_edge ], [ 1, %lor.lhs.false18.1.i789.pidff_needs_set_condition.exit800_crit_edge ], [ 1, %lor.lhs.false12.1.i787.pidff_needs_set_condition.exit800_crit_edge ], [ 1, %lor.lhs.false.1.i783.pidff_needs_set_condition.exit800_crit_edge ], [ 1, %lor.end.i779.pidff_needs_set_condition.exit800_crit_edge ], [ %phi.cast52.i797, %lor.rhs.1.i798 ]
  %or.1.i799 = or i32 %759, %734
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.1.i799)
  %tobool175.not = icmp eq i32 %or.1.i799, 0
  br i1 %tobool175.not, label %pidff_needs_set_condition.exit800.do.body218_crit_edge, label %pidff_needs_set_condition.exit800.if.then176_crit_edge

pidff_needs_set_condition.exit800.if.then176_crit_edge: ; preds = %pidff_needs_set_condition.exit800
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then176

pidff_needs_set_condition.exit800.do.body218_crit_edge: ; preds = %pidff_needs_set_condition.exit800
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body218

if.then176.critedge:                              ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @pidff_set_effect_report(ptr noundef %3, ptr noundef %effect)
  br label %if.then176

if.then176:                                       ; preds = %if.then176.critedge, %pidff_needs_set_condition.exit800.if.then176_crit_edge
  tail call fastcc void @pidff_set_condition_report(ptr noundef %3, ptr noundef %effect)
  br label %sw.epilog206

sw.bb178:                                         ; preds = %if.end
  br i1 %tobool.not, label %if.then180, label %lor.lhs.false189.critedge

if.then180:                                       ; preds = %sw.bb178
  %arrayidx182 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 20, i32 9
  %760 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load4_noabort(i32 %760)
  %761 = load i32, ptr %arrayidx182, align 4
  %call183 = tail call fastcc i32 @pidff_request_effect_upload(ptr noundef %3, i32 noundef %761)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %if.then198.critedge, label %if.then180.cleanup_crit_edge

if.then180.cleanup_crit_edge:                     ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false189.critedge:                        ; preds = %sw.bb178
  %replay.i801 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 4
  %762 = ptrtoint ptr %replay.i801 to i32
  call void @__asan_load2_noabort(i32 %762)
  %763 = load i16, ptr %replay.i801, align 2
  %replay1.i802 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 4
  %764 = ptrtoint ptr %replay1.i802 to i32
  call void @__asan_load2_noabort(i32 %764)
  %765 = load i16, ptr %replay1.i802, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %763, i16 %765)
  %cmp.not.i803 = icmp eq i16 %763, %765
  br i1 %cmp.not.i803, label %lor.lhs.false.i807, label %lor.lhs.false189.critedge.lor.lhs.false195.critedge371_crit_edge

lor.lhs.false189.critedge.lor.lhs.false195.critedge371_crit_edge: ; preds = %lor.lhs.false189.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false195.critedge371

lor.lhs.false.i807:                               ; preds = %lor.lhs.false189.critedge
  %interval.i804 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 3, i32 1
  %766 = ptrtoint ptr %interval.i804 to i32
  call void @__asan_load2_noabort(i32 %766)
  %767 = load i16, ptr %interval.i804, align 2
  %interval7.i805 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 3, i32 1
  %768 = ptrtoint ptr %interval7.i805 to i32
  call void @__asan_load2_noabort(i32 %768)
  %769 = load i16, ptr %interval7.i805, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %767, i16 %769)
  %cmp9.not.i806 = icmp eq i16 %767, %769
  br i1 %cmp9.not.i806, label %lor.lhs.false11.i811, label %lor.lhs.false.i807.lor.lhs.false195.critedge371_crit_edge

lor.lhs.false.i807.lor.lhs.false195.critedge371_crit_edge: ; preds = %lor.lhs.false.i807
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false195.critedge371

lor.lhs.false11.i811:                             ; preds = %lor.lhs.false.i807
  %trigger6.i808 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 3
  %trigger.i809 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 3
  %770 = ptrtoint ptr %trigger.i809 to i32
  call void @__asan_load2_noabort(i32 %770)
  %771 = load i16, ptr %trigger.i809, align 2
  %772 = ptrtoint ptr %trigger6.i808 to i32
  call void @__asan_load2_noabort(i32 %772)
  %773 = load i16, ptr %trigger6.i808, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %771, i16 %773)
  %cmp17.not.i810 = icmp eq i16 %771, %773
  br i1 %cmp17.not.i810, label %lor.lhs.false19.i815, label %lor.lhs.false11.i811.lor.lhs.false195.critedge371_crit_edge

lor.lhs.false11.i811.lor.lhs.false195.critedge371_crit_edge: ; preds = %lor.lhs.false11.i811
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false195.critedge371

lor.lhs.false19.i815:                             ; preds = %lor.lhs.false11.i811
  %direction.i812 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 2
  %774 = ptrtoint ptr %direction.i812 to i32
  call void @__asan_load2_noabort(i32 %774)
  %775 = load i16, ptr %direction.i812, align 4
  %direction21.i813 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 2
  %776 = ptrtoint ptr %direction21.i813 to i32
  call void @__asan_load2_noabort(i32 %776)
  %777 = load i16, ptr %direction21.i813, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %775, i16 %777)
  %cmp23.not.i814 = icmp eq i16 %775, %777
  br i1 %cmp23.not.i814, label %pidff_needs_set_effect.exit822, label %lor.lhs.false19.i815.lor.lhs.false195.critedge371_crit_edge

lor.lhs.false19.i815.lor.lhs.false195.critedge371_crit_edge: ; preds = %lor.lhs.false19.i815
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false195.critedge371

pidff_needs_set_effect.exit822:                   ; preds = %lor.lhs.false19.i815
  %delay.i816 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 4, i32 1
  %778 = ptrtoint ptr %delay.i816 to i32
  call void @__asan_load2_noabort(i32 %778)
  %779 = load i16, ptr %delay.i816, align 2
  %delay28.i817 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 4, i32 1
  %780 = ptrtoint ptr %delay28.i817 to i32
  call void @__asan_load2_noabort(i32 %780)
  %781 = load i16, ptr %delay28.i817, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %779, i16 %781)
  %cmp30.i818.not = icmp eq i16 %779, %781
  br i1 %cmp30.i818.not, label %pidff_needs_set_effect.exit822.lor.lhs.false195_crit_edge, label %pidff_needs_set_effect.exit822.lor.lhs.false195.critedge371_crit_edge

pidff_needs_set_effect.exit822.lor.lhs.false195.critedge371_crit_edge: ; preds = %pidff_needs_set_effect.exit822
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false195.critedge371

pidff_needs_set_effect.exit822.lor.lhs.false195_crit_edge: ; preds = %pidff_needs_set_effect.exit822
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false195

lor.lhs.false195.critedge371:                     ; preds = %pidff_needs_set_effect.exit822.lor.lhs.false195.critedge371_crit_edge, %lor.lhs.false19.i815.lor.lhs.false195.critedge371_crit_edge, %lor.lhs.false11.i811.lor.lhs.false195.critedge371_crit_edge, %lor.lhs.false.i807.lor.lhs.false195.critedge371_crit_edge, %lor.lhs.false189.critedge.lor.lhs.false195.critedge371_crit_edge
  %782 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %782)
  %783 = load ptr, ptr %value, align 4
  %784 = ptrtoint ptr %783 to i32
  call void @__asan_load4_noabort(i32 %784)
  %785 = load i32, ptr %783, align 4
  %value3.i824 = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 2, i32 0, i32 1
  %786 = ptrtoint ptr %value3.i824 to i32
  call void @__asan_load4_noabort(i32 %786)
  %787 = load ptr, ptr %value3.i824, align 4
  %788 = ptrtoint ptr %787 to i32
  call void @__asan_store4_noabort(i32 %788)
  store i32 %785, ptr %787, align 4
  %create_new_effect_type.i825 = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 13
  %789 = ptrtoint ptr %create_new_effect_type.i825 to i32
  call void @__asan_load4_noabort(i32 %789)
  %790 = load ptr, ptr %create_new_effect_type.i825, align 4
  %value5.i826 = getelementptr inbounds %struct.hid_field, ptr %790, i32 0, i32 10
  %791 = ptrtoint ptr %value5.i826 to i32
  call void @__asan_load4_noabort(i32 %791)
  %792 = load ptr, ptr %value5.i826, align 4
  %793 = ptrtoint ptr %792 to i32
  call void @__asan_load4_noabort(i32 %793)
  %794 = load i32, ptr %792, align 4
  %set_effect_type.i827 = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 14
  %795 = ptrtoint ptr %set_effect_type.i827 to i32
  call void @__asan_load4_noabort(i32 %795)
  %796 = load ptr, ptr %set_effect_type.i827, align 4
  %value7.i828 = getelementptr inbounds %struct.hid_field, ptr %796, i32 0, i32 10
  %797 = ptrtoint ptr %value7.i828 to i32
  call void @__asan_load4_noabort(i32 %797)
  %798 = load ptr, ptr %value7.i828, align 4
  %799 = ptrtoint ptr %798 to i32
  call void @__asan_store4_noabort(i32 %799)
  store i32 %794, ptr %798, align 4
  %800 = ptrtoint ptr %replay.i801 to i32
  call void @__asan_load2_noabort(i32 %800)
  %801 = load i16, ptr %replay.i801, align 2
  %conv.i830 = zext i16 %801 to i32
  %value11.i831 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 1, i32 1
  %802 = ptrtoint ptr %value11.i831 to i32
  call void @__asan_load4_noabort(i32 %802)
  %803 = load ptr, ptr %value11.i831, align 4
  %804 = ptrtoint ptr %803 to i32
  call void @__asan_store4_noabort(i32 %804)
  store i32 %conv.i830, ptr %803, align 4
  %trigger.i832 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 3
  %805 = ptrtoint ptr %trigger.i832 to i32
  call void @__asan_load2_noabort(i32 %805)
  %806 = load i16, ptr %trigger.i832, align 2
  %conv13.i833 = zext i16 %806 to i32
  %value16.i834 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 3, i32 1
  %807 = ptrtoint ptr %value16.i834 to i32
  call void @__asan_load4_noabort(i32 %807)
  %808 = load ptr, ptr %value16.i834, align 4
  %809 = ptrtoint ptr %808 to i32
  call void @__asan_store4_noabort(i32 %809)
  store i32 %conv13.i833, ptr %808, align 4
  %interval.i835 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 3, i32 1
  %810 = ptrtoint ptr %interval.i835 to i32
  call void @__asan_load2_noabort(i32 %810)
  %811 = load i16, ptr %interval.i835, align 2
  %conv19.i836 = zext i16 %811 to i32
  %value22.i837 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 4, i32 1
  %812 = ptrtoint ptr %value22.i837 to i32
  call void @__asan_load4_noabort(i32 %812)
  %813 = load ptr, ptr %value22.i837, align 4
  %814 = ptrtoint ptr %813 to i32
  call void @__asan_store4_noabort(i32 %814)
  store i32 %conv19.i836, ptr %813, align 4
  %arrayidx25.i838 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 2
  %815 = ptrtoint ptr %arrayidx25.i838 to i32
  call void @__asan_load4_noabort(i32 %815)
  %816 = load ptr, ptr %arrayidx25.i838, align 4
  %logical_maximum.i839 = getelementptr inbounds %struct.hid_field, ptr %816, i32 0, i32 12
  %817 = ptrtoint ptr %logical_maximum.i839 to i32
  call void @__asan_load4_noabort(i32 %817)
  %818 = load i32, ptr %logical_maximum.i839, align 4
  %value28.i840 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 2, i32 1
  %819 = ptrtoint ptr %value28.i840 to i32
  call void @__asan_load4_noabort(i32 %819)
  %820 = load ptr, ptr %value28.i840, align 4
  %821 = ptrtoint ptr %820 to i32
  call void @__asan_store4_noabort(i32 %821)
  store i32 %818, ptr %820, align 4
  %value32.i841 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 5, i32 1
  %822 = ptrtoint ptr %value32.i841 to i32
  call void @__asan_load4_noabort(i32 %822)
  %823 = load ptr, ptr %value32.i841, align 4
  %824 = ptrtoint ptr %823 to i32
  call void @__asan_store4_noabort(i32 %824)
  store i32 1, ptr %823, align 4
  %direction.i842 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 2
  %825 = ptrtoint ptr %direction.i842 to i32
  call void @__asan_load2_noabort(i32 %825)
  %826 = load i16, ptr %direction.i842, align 4
  %conv34.i843 = zext i16 %826 to i32
  %effect_direction.i844 = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 15
  %827 = ptrtoint ptr %effect_direction.i844 to i32
  call void @__asan_load4_noabort(i32 %827)
  %828 = load ptr, ptr %effect_direction.i844, align 4
  %logical_maximum.i.i845 = getelementptr inbounds %struct.hid_field, ptr %828, i32 0, i32 12
  %829 = ptrtoint ptr %logical_maximum.i.i845 to i32
  call void @__asan_load4_noabort(i32 %829)
  %830 = load i32, ptr %logical_maximum.i.i845, align 4
  %logical_minimum.i.i846 = getelementptr inbounds %struct.hid_field, ptr %828, i32 0, i32 11
  %831 = ptrtoint ptr %logical_minimum.i.i846 to i32
  call void @__asan_load4_noabort(i32 %831)
  %832 = load i32, ptr %logical_minimum.i.i846, align 4
  %sub.i.i847 = sub i32 %830, %832
  %mul.i.i848 = mul i32 %sub.i.i847, %conv34.i843
  %div.i.i849 = sdiv i32 %mul.i.i848, 65535
  %add.i.i850 = add i32 %div.i.i849, %832
  %value36.i851 = getelementptr inbounds %struct.hid_field, ptr %828, i32 0, i32 10
  %833 = ptrtoint ptr %value36.i851 to i32
  call void @__asan_load4_noabort(i32 %833)
  %834 = load ptr, ptr %value36.i851, align 4
  %835 = ptrtoint ptr %834 to i32
  call void @__asan_store4_noabort(i32 %835)
  store i32 %add.i.i850, ptr %834, align 4
  %delay.i852 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 4, i32 1
  %836 = ptrtoint ptr %delay.i852 to i32
  call void @__asan_load2_noabort(i32 %836)
  %837 = load i16, ptr %delay.i852, align 2
  %conv39.i853 = zext i16 %837 to i32
  %value42.i854 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 2, i32 6, i32 1
  %838 = ptrtoint ptr %value42.i854 to i32
  call void @__asan_load4_noabort(i32 %838)
  %839 = load ptr, ptr %value42.i854, align 4
  %840 = ptrtoint ptr %839 to i32
  call void @__asan_store4_noabort(i32 %840)
  store i32 %conv39.i853, ptr %839, align 4
  %841 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %841)
  %842 = load ptr, ptr %3, align 4
  %reports.i855 = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 1
  %843 = ptrtoint ptr %reports.i855 to i32
  call void @__asan_load4_noabort(i32 %843)
  %844 = load ptr, ptr %reports.i855, align 4
  tail call void @hid_hw_request(ptr noundef %842, ptr noundef %844, i32 noundef 9) #6
  br label %lor.lhs.false195

lor.lhs.false195:                                 ; preds = %lor.lhs.false195.critedge371, %pidff_needs_set_effect.exit822.lor.lhs.false195_crit_edge
  %u.i856 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %u1.i857 = getelementptr inbounds %struct.ff_effect, ptr %old, i32 0, i32 5
  %center.i858 = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5
  %845 = ptrtoint ptr %center.i858 to i32
  call void @__asan_load2_noabort(i32 %845)
  %846 = load i16, ptr %center.i858, align 2
  %center3.i859 = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 5
  %847 = ptrtoint ptr %center3.i859 to i32
  call void @__asan_load2_noabort(i32 %847)
  %848 = load i16, ptr %center3.i859, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %846, i16 %848)
  %cmp5.not.i860 = icmp eq i16 %846, %848
  br i1 %cmp5.not.i860, label %lor.lhs.false.i864, label %lor.lhs.false195.lor.end.i885_crit_edge

lor.lhs.false195.lor.end.i885_crit_edge:          ; preds = %lor.lhs.false195
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end.i885

lor.lhs.false.i864:                               ; preds = %lor.lhs.false195
  %right_coeff.i861 = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 2
  %849 = ptrtoint ptr %right_coeff.i861 to i32
  call void @__asan_load2_noabort(i32 %849)
  %850 = load i16, ptr %right_coeff.i861, align 2
  %right_coeff8.i862 = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 2
  %851 = ptrtoint ptr %right_coeff8.i862 to i32
  call void @__asan_load2_noabort(i32 %851)
  %852 = load i16, ptr %right_coeff8.i862, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %850, i16 %852)
  %cmp10.not.i863 = icmp eq i16 %850, %852
  br i1 %cmp10.not.i863, label %lor.lhs.false12.i868, label %lor.lhs.false.i864.lor.end.i885_crit_edge

lor.lhs.false.i864.lor.end.i885_crit_edge:        ; preds = %lor.lhs.false.i864
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end.i885

lor.lhs.false12.i868:                             ; preds = %lor.lhs.false.i864
  %left_coeff.i865 = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 3
  %853 = ptrtoint ptr %left_coeff.i865 to i32
  call void @__asan_load2_noabort(i32 %853)
  %854 = load i16, ptr %left_coeff.i865, align 2
  %left_coeff14.i866 = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 3
  %855 = ptrtoint ptr %left_coeff14.i866 to i32
  call void @__asan_load2_noabort(i32 %855)
  %856 = load i16, ptr %left_coeff14.i866, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %854, i16 %856)
  %cmp16.not.i867 = icmp eq i16 %854, %856
  br i1 %cmp16.not.i867, label %lor.lhs.false18.i870, label %lor.lhs.false12.i868.lor.end.i885_crit_edge

lor.lhs.false12.i868.lor.end.i885_crit_edge:      ; preds = %lor.lhs.false12.i868
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end.i885

lor.lhs.false18.i870:                             ; preds = %lor.lhs.false12.i868
  %857 = ptrtoint ptr %u.i856 to i32
  call void @__asan_load2_noabort(i32 %857)
  %858 = load i16, ptr %u.i856, align 2
  %859 = ptrtoint ptr %u1.i857 to i32
  call void @__asan_load2_noabort(i32 %859)
  %860 = load i16, ptr %u1.i857, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %858, i16 %860)
  %cmp22.not.i869 = icmp eq i16 %858, %860
  br i1 %cmp22.not.i869, label %lor.lhs.false24.i874, label %lor.lhs.false18.i870.lor.end.i885_crit_edge

lor.lhs.false18.i870.lor.end.i885_crit_edge:      ; preds = %lor.lhs.false18.i870
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end.i885

lor.lhs.false24.i874:                             ; preds = %lor.lhs.false18.i870
  %left_saturation.i871 = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %861 = ptrtoint ptr %left_saturation.i871 to i32
  call void @__asan_load2_noabort(i32 %861)
  %862 = load i16, ptr %left_saturation.i871, align 2
  %left_saturation26.i872 = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 1
  %863 = ptrtoint ptr %left_saturation26.i872 to i32
  call void @__asan_load2_noabort(i32 %863)
  %864 = load i16, ptr %left_saturation26.i872, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %862, i16 %864)
  %cmp28.not.i873 = icmp eq i16 %862, %864
  br i1 %cmp28.not.i873, label %lor.rhs.i879, label %lor.lhs.false24.i874.lor.end.i885_crit_edge

lor.lhs.false24.i874.lor.end.i885_crit_edge:      ; preds = %lor.lhs.false24.i874
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end.i885

lor.rhs.i879:                                     ; preds = %lor.lhs.false24.i874
  call void @__sanitizer_cov_trace_pc() #8
  %deadband.i875 = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 4
  %865 = ptrtoint ptr %deadband.i875 to i32
  call void @__asan_load2_noabort(i32 %865)
  %866 = load i16, ptr %deadband.i875, align 2
  %deadband31.i876 = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 4
  %867 = ptrtoint ptr %deadband31.i876 to i32
  call void @__asan_load2_noabort(i32 %867)
  %868 = load i16, ptr %deadband31.i876, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %866, i16 %868)
  %cmp33.i877 = icmp ne i16 %866, %868
  %phi.cast.i878 = zext i1 %cmp33.i877 to i32
  br label %lor.end.i885

lor.end.i885:                                     ; preds = %lor.rhs.i879, %lor.lhs.false24.i874.lor.end.i885_crit_edge, %lor.lhs.false18.i870.lor.end.i885_crit_edge, %lor.lhs.false12.i868.lor.end.i885_crit_edge, %lor.lhs.false.i864.lor.end.i885_crit_edge, %lor.lhs.false195.lor.end.i885_crit_edge
  %869 = phi i32 [ 1, %lor.lhs.false24.i874.lor.end.i885_crit_edge ], [ 1, %lor.lhs.false18.i870.lor.end.i885_crit_edge ], [ 1, %lor.lhs.false12.i868.lor.end.i885_crit_edge ], [ 1, %lor.lhs.false.i864.lor.end.i885_crit_edge ], [ 1, %lor.lhs.false195.lor.end.i885_crit_edge ], [ %phi.cast.i878, %lor.rhs.i879 ]
  %arrayidx.1.i880 = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5, i32 1
  %arrayidx2.1.i881 = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 5, i32 1
  %center.1.i882 = getelementptr [2 x %struct.ff_condition_effect], ptr %u.i856, i32 0, i32 1, i32 5
  %870 = ptrtoint ptr %center.1.i882 to i32
  call void @__asan_load2_noabort(i32 %870)
  %871 = load i16, ptr %center.1.i882, align 2
  %center3.1.i883 = getelementptr [2 x %struct.ff_condition_effect], ptr %u1.i857, i32 0, i32 1, i32 5
  %872 = ptrtoint ptr %center3.1.i883 to i32
  call void @__asan_load2_noabort(i32 %872)
  %873 = load i16, ptr %center3.1.i883, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %871, i16 %873)
  %cmp5.not.1.i884 = icmp eq i16 %871, %873
  br i1 %cmp5.not.1.i884, label %lor.lhs.false.1.i889, label %lor.end.i885.pidff_needs_set_condition.exit906_crit_edge

lor.end.i885.pidff_needs_set_condition.exit906_crit_edge: ; preds = %lor.end.i885
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_needs_set_condition.exit906

lor.lhs.false.1.i889:                             ; preds = %lor.end.i885
  %right_coeff.1.i886 = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5, i32 3
  %874 = ptrtoint ptr %right_coeff.1.i886 to i32
  call void @__asan_load2_noabort(i32 %874)
  %875 = load i16, ptr %right_coeff.1.i886, align 2
  %right_coeff8.1.i887 = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 5, i32 3
  %876 = ptrtoint ptr %right_coeff8.1.i887 to i32
  call void @__asan_load2_noabort(i32 %876)
  %877 = load i16, ptr %right_coeff8.1.i887, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %875, i16 %877)
  %cmp10.not.1.i888 = icmp eq i16 %875, %877
  br i1 %cmp10.not.1.i888, label %lor.lhs.false12.1.i893, label %lor.lhs.false.1.i889.pidff_needs_set_condition.exit906_crit_edge

lor.lhs.false.1.i889.pidff_needs_set_condition.exit906_crit_edge: ; preds = %lor.lhs.false.1.i889
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_needs_set_condition.exit906

lor.lhs.false12.1.i893:                           ; preds = %lor.lhs.false.1.i889
  %left_coeff.1.i890 = getelementptr [2 x %struct.ff_condition_effect], ptr %u.i856, i32 0, i32 1, i32 3
  %878 = ptrtoint ptr %left_coeff.1.i890 to i32
  call void @__asan_load2_noabort(i32 %878)
  %879 = load i16, ptr %left_coeff.1.i890, align 2
  %left_coeff14.1.i891 = getelementptr [2 x %struct.ff_condition_effect], ptr %u1.i857, i32 0, i32 1, i32 3
  %880 = ptrtoint ptr %left_coeff14.1.i891 to i32
  call void @__asan_load2_noabort(i32 %880)
  %881 = load i16, ptr %left_coeff14.1.i891, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %879, i16 %881)
  %cmp16.not.1.i892 = icmp eq i16 %879, %881
  br i1 %cmp16.not.1.i892, label %lor.lhs.false18.1.i895, label %lor.lhs.false12.1.i893.pidff_needs_set_condition.exit906_crit_edge

lor.lhs.false12.1.i893.pidff_needs_set_condition.exit906_crit_edge: ; preds = %lor.lhs.false12.1.i893
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_needs_set_condition.exit906

lor.lhs.false18.1.i895:                           ; preds = %lor.lhs.false12.1.i893
  %882 = ptrtoint ptr %arrayidx.1.i880 to i32
  call void @__asan_load2_noabort(i32 %882)
  %883 = load i16, ptr %arrayidx.1.i880, align 2
  %884 = ptrtoint ptr %arrayidx2.1.i881 to i32
  call void @__asan_load2_noabort(i32 %884)
  %885 = load i16, ptr %arrayidx2.1.i881, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %883, i16 %885)
  %cmp22.not.1.i894 = icmp eq i16 %883, %885
  br i1 %cmp22.not.1.i894, label %lor.lhs.false24.1.i899, label %lor.lhs.false18.1.i895.pidff_needs_set_condition.exit906_crit_edge

lor.lhs.false18.1.i895.pidff_needs_set_condition.exit906_crit_edge: ; preds = %lor.lhs.false18.1.i895
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_needs_set_condition.exit906

lor.lhs.false24.1.i899:                           ; preds = %lor.lhs.false18.1.i895
  %left_saturation.1.i896 = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5, i32 2
  %886 = ptrtoint ptr %left_saturation.1.i896 to i32
  call void @__asan_load2_noabort(i32 %886)
  %887 = load i16, ptr %left_saturation.1.i896, align 2
  %left_saturation26.1.i897 = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 5, i32 2
  %888 = ptrtoint ptr %left_saturation26.1.i897 to i32
  call void @__asan_load2_noabort(i32 %888)
  %889 = load i16, ptr %left_saturation26.1.i897, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %887, i16 %889)
  %cmp28.not.1.i898 = icmp eq i16 %887, %889
  br i1 %cmp28.not.1.i898, label %lor.rhs.1.i904, label %lor.lhs.false24.1.i899.pidff_needs_set_condition.exit906_crit_edge

lor.lhs.false24.1.i899.pidff_needs_set_condition.exit906_crit_edge: ; preds = %lor.lhs.false24.1.i899
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_needs_set_condition.exit906

lor.rhs.1.i904:                                   ; preds = %lor.lhs.false24.1.i899
  call void @__sanitizer_cov_trace_pc() #8
  %deadband.1.i900 = getelementptr %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 6
  %890 = ptrtoint ptr %deadband.1.i900 to i32
  call void @__asan_load2_noabort(i32 %890)
  %891 = load i16, ptr %deadband.1.i900, align 2
  %deadband31.1.i901 = getelementptr %struct.ff_effect, ptr %old, i32 0, i32 5, i32 0, i32 6
  %892 = ptrtoint ptr %deadband31.1.i901 to i32
  call void @__asan_load2_noabort(i32 %892)
  %893 = load i16, ptr %deadband31.1.i901, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %891, i16 %893)
  %cmp33.1.i902 = icmp ne i16 %891, %893
  %phi.cast52.i903 = zext i1 %cmp33.1.i902 to i32
  br label %pidff_needs_set_condition.exit906

pidff_needs_set_condition.exit906:                ; preds = %lor.rhs.1.i904, %lor.lhs.false24.1.i899.pidff_needs_set_condition.exit906_crit_edge, %lor.lhs.false18.1.i895.pidff_needs_set_condition.exit906_crit_edge, %lor.lhs.false12.1.i893.pidff_needs_set_condition.exit906_crit_edge, %lor.lhs.false.1.i889.pidff_needs_set_condition.exit906_crit_edge, %lor.end.i885.pidff_needs_set_condition.exit906_crit_edge
  %894 = phi i32 [ 1, %lor.lhs.false24.1.i899.pidff_needs_set_condition.exit906_crit_edge ], [ 1, %lor.lhs.false18.1.i895.pidff_needs_set_condition.exit906_crit_edge ], [ 1, %lor.lhs.false12.1.i893.pidff_needs_set_condition.exit906_crit_edge ], [ 1, %lor.lhs.false.1.i889.pidff_needs_set_condition.exit906_crit_edge ], [ 1, %lor.end.i885.pidff_needs_set_condition.exit906_crit_edge ], [ %phi.cast52.i903, %lor.rhs.1.i904 ]
  %or.1.i905 = or i32 %894, %869
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.1.i905)
  %tobool197.not = icmp eq i32 %or.1.i905, 0
  br i1 %tobool197.not, label %pidff_needs_set_condition.exit906.do.body218_crit_edge, label %pidff_needs_set_condition.exit906.if.then198_crit_edge

pidff_needs_set_condition.exit906.if.then198_crit_edge: ; preds = %pidff_needs_set_condition.exit906
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then198

pidff_needs_set_condition.exit906.do.body218_crit_edge: ; preds = %pidff_needs_set_condition.exit906
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body218

if.then198.critedge:                              ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @pidff_set_effect_report(ptr noundef %3, ptr noundef %effect)
  br label %if.then198

if.then198:                                       ; preds = %if.then198.critedge, %pidff_needs_set_condition.exit906.if.then198_crit_edge
  tail call fastcc void @pidff_set_condition_report(ptr noundef %3, ptr noundef %effect)
  br label %sw.epilog206

do.end203:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %895 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %895)
  %896 = load ptr, ptr %3, align 4
  %dev205 = getelementptr inbounds %struct.hid_device, ptr %896, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev205, ptr noundef nonnull @.str.114) #10
  br label %cleanup

sw.epilog206:                                     ; preds = %if.then198, %if.then176, %if.then154, %if.then132, %if.then108, %if.then74, %if.then32
  br i1 %tobool.not, label %if.then208, label %sw.epilog206.do.body218_crit_edge

sw.epilog206.do.body218_crit_edge:                ; preds = %sw.epilog206
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body218

if.then208:                                       ; preds = %sw.epilog206
  call void @__sanitizer_cov_trace_pc() #8
  %897 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %897)
  %898 = load ptr, ptr %value, align 4
  %899 = ptrtoint ptr %898 to i32
  call void @__asan_load4_noabort(i32 %899)
  %900 = load i32, ptr %898, align 4
  %id214 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 1
  %901 = ptrtoint ptr %id214 to i32
  call void @__asan_load2_noabort(i32 %901)
  %902 = load i16, ptr %id214, align 2
  %idxprom215 = sext i16 %902 to i32
  %arrayidx216 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 23, i32 %idxprom215
  %903 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_store4_noabort(i32 %903)
  store i32 %900, ptr %arrayidx216, align 4
  br label %do.body218

do.body218:                                       ; preds = %if.then208, %sw.epilog206.do.body218_crit_edge, %pidff_needs_set_condition.exit906.do.body218_crit_edge, %pidff_needs_set_condition.exit800.do.body218_crit_edge, %pidff_needs_set_condition.exit694.do.body218_crit_edge, %pidff_needs_set_condition.exit.do.body218_crit_edge, %pidff_needs_set_envelope.exit527.do.body218_crit_edge, %pidff_needs_set_envelope.exit453.do.body218_crit_edge, %pidff_needs_set_envelope.exit.do.body218_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pidff_upload_effect.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pidff_upload_effect, %if.then223)) #6
          to label %cleanup [label %if.then223], !srcloc !266

if.then223:                                       ; preds = %do.body218
  call void @__sanitizer_cov_trace_pc() #8
  %904 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %904)
  %905 = load ptr, ptr %3, align 4
  %dev225 = getelementptr inbounds %struct.hid_device, ptr %905, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pidff_upload_effect.__UNIQUE_ID_ddebug240, ptr noundef %dev225, ptr noundef nonnull @.str.116) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then223, %do.body218, %do.end203, %if.then180.cleanup_crit_edge, %if.then158.cleanup_crit_edge, %if.then136.cleanup_crit_edge, %if.then114.cleanup_crit_edge, %if.then80.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %do.end, %if.then8.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end203 ], [ -22, %do.end ], [ %call, %if.then8.cleanup_crit_edge ], [ %call49, %switch.lookup.cleanup_crit_edge ], [ %call83, %if.then80.cleanup_crit_edge ], [ %call117, %if.then114.cleanup_crit_edge ], [ %call139, %if.then136.cleanup_crit_edge ], [ %call161, %if.then158.cleanup_crit_edge ], [ %call183, %if.then180.cleanup_crit_edge ], [ 0, %if.then223 ], [ 0, %do.body218 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pidff_erase_effect(ptr nocapture noundef readonly %dev, i32 noundef %effect_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ff = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %ff to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ff, align 8
  %private = getelementptr inbounds %struct.ff_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %arrayidx = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 23, i32 %effect_id
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pidff_erase_effect.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pidff_erase_effect, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !266

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %dev4 = getelementptr inbounds %struct.hid_device, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pidff_erase_effect.__UNIQUE_ID_ddebug239, ptr noundef %dev4, ptr noundef nonnull @.str.121, i32 noundef %effect_id, i32 noundef %9) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %ll_driver.i = getelementptr inbounds %struct.hid_device, ptr %11, i32 0, i32 20
  %12 = ptrtoint ptr %ll_driver.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ll_driver.i, align 4
  %wait.i = getelementptr inbounds %struct.hid_ll_driver, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %wait.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wait.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %do.end.hid_hw_wait.exit_crit_edge, label %if.then.i

do.end.hid_hw_wait.exit_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %hid_hw_wait.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %15(ptr noundef %11) #6
  br label %hid_hw_wait.exit

hid_hw_wait.exit:                                 ; preds = %if.then.i, %do.end.hid_hw_wait.exit_crit_edge
  %value.i = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 11, i32 0, i32 1
  %16 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %value.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %5, ptr %17, align 4
  %arrayidx2.i = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 22, i32 1
  %19 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx2.i, align 4
  %effect_operation_status.i = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 18
  %21 = ptrtoint ptr %effect_operation_status.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %effect_operation_status.i, align 4
  %value3.i = getelementptr inbounds %struct.hid_field, ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %value3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %value3.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %20, ptr %24, align 4
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 4
  %arrayidx14.i = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx14.i, align 4
  tail call void @hid_hw_request(ptr noundef %27, ptr noundef %29, i32 noundef 9) #6
  %value.i17 = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 12, i32 0, i32 1
  %30 = ptrtoint ptr %value.i17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %value.i17, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %5, ptr %31, align 4
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %3, align 4
  %arrayidx2.i18 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 1, i32 5
  %35 = ptrtoint ptr %arrayidx2.i18 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx2.i18, align 4
  tail call void @hid_hw_request(ptr noundef %34, ptr noundef %36, i32 noundef 9) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pidff_set_gain(ptr nocapture noundef readonly %dev, i16 noundef zeroext %gain) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ff = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %ff to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ff, align 8
  %private = getelementptr inbounds %struct.ff_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %device_gain = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 8
  %conv.i = zext i16 %gain to i32
  %4 = ptrtoint ptr %device_gain to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_gain, align 4
  %logical_maximum.i.i = getelementptr inbounds %struct.hid_field, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %logical_maximum.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %logical_maximum.i.i, align 4
  %logical_minimum.i.i = getelementptr inbounds %struct.hid_field, ptr %5, i32 0, i32 11
  %8 = ptrtoint ptr %logical_minimum.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %logical_minimum.i.i, align 4
  %sub.i.i = sub i32 %7, %9
  %mul.i.i = mul i32 %sub.i.i, %conv.i
  %div.i.i = sdiv i32 %mul.i.i, 65535
  %add.i.i = add i32 %div.i.i, %9
  %value1.i = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 8, i32 0, i32 1
  %10 = ptrtoint ptr %value1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %value1.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add.i.i, ptr %11, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pidff_set.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pidff_set_gain, %if.then.i)) #6
          to label %pidff_set.exit [label %if.then.i], !srcloc !266

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %value1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %value1.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pidff_set.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.99, i32 noundef %conv.i, i32 noundef %16) #6
  br label %pidff_set.exit

pidff_set.exit:                                   ; preds = %if.then.i, %entry
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %arrayidx1 = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx1, align 4
  tail call void @hid_hw_request(ptr noundef %18, ptr noundef %20, i32 noundef 9) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pidff_set_autocenter(ptr nocapture noundef readonly %dev, i16 noundef zeroext %magnitude) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ff = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %ff to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ff, align 8
  %private = getelementptr inbounds %struct.ff_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  tail call fastcc void @pidff_autocenter(ptr noundef %3, i16 noundef zeroext %magnitude)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pidff_playback(ptr nocapture noundef readonly %dev, i32 noundef %effect_id, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ff = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %ff to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ff, align 8
  %private = getelementptr inbounds %struct.ff_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %arrayidx = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 23, i32 %effect_id
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %value.i = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 11, i32 0, i32 1
  %6 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %value.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp.i = icmp eq i32 %value, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx2.i = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 22, i32 1
  %9 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx2.i, align 4
  %effect_operation_status.i = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 18
  %11 = ptrtoint ptr %effect_operation_status.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %effect_operation_status.i, align 4
  %value3.i = getelementptr inbounds %struct.hid_field, ptr %12, i32 0, i32 10
  br label %pidff_playback_pid.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %operation_id5.i = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 22
  %13 = ptrtoint ptr %operation_id5.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %operation_id5.i, align 4
  %effect_operation_status7.i = getelementptr inbounds %struct.pidff_device, ptr %3, i32 0, i32 18
  %15 = ptrtoint ptr %effect_operation_status7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %effect_operation_status7.i, align 4
  %value8.i = getelementptr inbounds %struct.hid_field, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %value8.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %value8.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %14, ptr %18, align 4
  %value12.i = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 11, i32 1, i32 1
  br label %pidff_playback_pid.exit

pidff_playback_pid.exit:                          ; preds = %if.else.i, %if.then.i
  %value12.sink.i = phi ptr [ %value12.i, %if.else.i ], [ %value3.i, %if.then.i ]
  %n.sink.i = phi i32 [ %value, %if.else.i ], [ %10, %if.then.i ]
  %20 = ptrtoint ptr %value12.sink.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %value12.sink.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %n.sink.i, ptr %21, align 4
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  %arrayidx14.i = getelementptr %struct.pidff_device, ptr %3, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx14.i, align 4
  tail call void @hid_hw_request(ptr noundef %24, ptr noundef %26, i32 noundef 9) #6
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hid_device_io_stop(ptr noundef %hid) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %io_started = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 35
  %0 = ptrtoint ptr %io_started to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %io_started, align 4, !range !267
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.122) #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %io_started to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %io_started, align 4
  %driver_input_lock = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 17
  tail call void @down(ptr noundef %driver_input_lock) #6
  br label %return

return:                                           ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pidff_find_fields(ptr nocapture noundef writeonly %usage, ptr nocapture noundef readonly %table, ptr nocapture noundef readonly %report, i32 noundef %count, i32 noundef %strict) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp128 = icmp sgt i32 %count, 0
  br i1 %cmp128, label %for.cond1.preheader.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %maxfield = getelementptr inbounds %struct.hid_report, ptr %report, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %strict)
  %tobool58.not.old = icmp eq i32 %strict, 0
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc77.for.cond1.preheader_crit_edge, %for.cond1.preheader.lr.ph
  %k.0129 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc78, %for.inc77.for.cond1.preheader_crit_edge ]
  %0 = ptrtoint ptr %maxfield to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %maxfield, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp2124.not = icmp eq i32 %1, 0
  br i1 %cmp2124.not, label %for.cond1.preheader.land.lhs.true.critedge_crit_edge, label %for.body3.lr.ph

for.cond1.preheader.land.lhs.true.critedge_crit_edge: ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.critedge

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %arrayidx21 = getelementptr i8, ptr %table, i32 %k.0129
  br label %for.body3

for.body3:                                        ; preds = %for.inc54.for.body3_crit_edge, %for.body3.lr.ph
  %i.0125 = phi i32 [ 0, %for.body3.lr.ph ], [ %inc55, %for.inc54.for.body3_crit_edge ]
  %arrayidx = getelementptr %struct.hid_report, ptr %report, i32 0, i32 5, i32 %i.0125
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %maxusage = getelementptr inbounds %struct.hid_field, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %maxusage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %maxusage, align 4
  %report_count = getelementptr inbounds %struct.hid_field, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %report_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %report_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp6.not = icmp eq i32 %5, %7
  br i1 %cmp6.not, label %for.cond11.preheader, label %do.body

for.cond11.preheader:                             ; preds = %for.body3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp15122.not = icmp eq i32 %5, 0
  br i1 %cmp15122.not, label %for.cond11.preheader.for.inc54_crit_edge, label %for.body16.lr.ph

for.cond11.preheader.for.inc54_crit_edge:         ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc54

for.body16.lr.ph:                                 ; preds = %for.cond11.preheader
  %usage19 = getelementptr inbounds %struct.hid_field, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %usage19 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usage19, align 4
  %10 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx21, align 1
  %conv = zext i8 %11 to i32
  %or = or i32 %conv, 983040
  br label %for.body16

do.body:                                          ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pidff_find_fields.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pidff_find_fields, %if.then9)) #6
          to label %for.inc54 [label %if.then9], !srcloc !266

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pidff_find_fields.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.60) #6
  br label %for.inc54

for.body16:                                       ; preds = %for.inc.for.body16_crit_edge, %for.body16.lr.ph
  %j.0123 = phi i32 [ 0, %for.body16.lr.ph ], [ %inc, %for.inc.for.body16_crit_edge ]
  %arrayidx20 = getelementptr %struct.hid_usage, ptr %9, i32 %j.0123
  %12 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %or)
  %cmp22 = icmp eq i32 %13, %or
  br i1 %cmp22, label %do.body25, label %for.inc

do.body25:                                        ; preds = %for.body16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pidff_find_fields.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pidff_find_fields, %if.then37)) #6
          to label %do.end40 [label %if.then37], !srcloc !266

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pidff_find_fields.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.62, i32 noundef %k.0129, i32 noundef %i.0125, i32 noundef %j.0123) #6
  br label %do.end40

do.end40:                                         ; preds = %if.then37, %do.body25
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %arrayidx43 = getelementptr %struct.pidff_usage, ptr %usage, i32 %k.0129
  %16 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %arrayidx43, align 4
  %17 = load ptr, ptr %arrayidx, align 4
  %value = getelementptr inbounds %struct.hid_field, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %value, align 4
  %arrayidx47 = getelementptr i32, ptr %19, i32 %j.0123
  %value49 = getelementptr %struct.pidff_usage, ptr %usage, i32 %k.0129, i32 1
  %20 = ptrtoint ptr %value49 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx47, ptr %value49, align 4
  br label %for.inc77

for.inc:                                          ; preds = %for.body16
  %inc = add nuw i32 %j.0123, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.for.inc54_crit_edge, label %for.inc.for.body16_crit_edge

for.inc.for.body16_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body16

for.inc.for.inc54_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc54

for.inc54:                                        ; preds = %for.inc.for.inc54_crit_edge, %if.then9, %do.body, %for.cond11.preheader.for.inc54_crit_edge
  %inc55 = add nuw i32 %i.0125, 1
  %21 = ptrtoint ptr %maxfield to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %maxfield, align 4
  %cmp2 = icmp ult i32 %inc55, %22
  br i1 %cmp2, label %for.inc54.for.body3_crit_edge, label %for.inc54.land.lhs.true.critedge_crit_edge

for.inc54.land.lhs.true.critedge_crit_edge:       ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.critedge

for.inc54.for.body3_crit_edge:                    ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3

land.lhs.true.critedge:                           ; preds = %for.inc54.land.lhs.true.critedge_crit_edge, %for.cond1.preheader.land.lhs.true.critedge_crit_edge
  br i1 %tobool58.not.old, label %land.lhs.true.critedge.for.inc77_crit_edge, label %do.body60

land.lhs.true.critedge.for.inc77_crit_edge:       ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc77

do.body60:                                        ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pidff_find_fields.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pidff_find_fields, %if.then72)) #6
          to label %cleanup [label %if.then72], !srcloc !266

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pidff_find_fields.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.64, i32 noundef %k.0129) #6
  br label %cleanup

for.inc77:                                        ; preds = %land.lhs.true.critedge.for.inc77_crit_edge, %do.end40
  %inc78 = add nuw nsw i32 %k.0129, 1
  %exitcond136.not = icmp eq i32 %inc78, %count
  br i1 %exitcond136.not, label %for.inc77.cleanup_crit_edge, label %for.inc77.for.cond1.preheader_crit_edge

for.inc77.for.cond1.preheader_crit_edge:          ; preds = %for.inc77
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond1.preheader

for.inc77.cleanup_crit_edge:                      ; preds = %for.inc77
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc77.cleanup_crit_edge, %if.then72, %do.body60, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then72 ], [ -1, %do.body60 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc77.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pidff_find_special_fields(ptr noundef %pidff) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pidff_find_special_fields.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pidff_find_special_fields, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !266

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %pidff to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pidff, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pidff_find_special_fields.__UNIQUE_ID_ddebug247, ptr noundef %dev, ptr noundef nonnull @.str.66) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %reports = getelementptr inbounds %struct.pidff_device, ptr %pidff, i32 0, i32 1
  %arrayidx = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 1, i32 7
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %maxfield.i = getelementptr inbounds %struct.hid_report, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %maxfield.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %maxfield.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp20.not.i = icmp eq i32 %5, 0
  br i1 %cmp20.not.i, label %do.end.pidff_find_special_field.exit_crit_edge, label %do.end.for.body.i_crit_edge

do.end.for.body.i_crit_edge:                      ; preds = %do.end
  br label %for.body.i

do.end.pidff_find_special_field.exit_crit_edge:   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_find_special_field.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.for.body.i_crit_edge
  %i.021.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %do.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.hid_report, ptr %3, i32 0, i32 5, i32 %i.021.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %logical.i = getelementptr inbounds %struct.hid_field, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %logical.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %logical.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 983077, i32 %9)
  %cmp1.i = icmp eq i32 %9, 983077
  br i1 %cmp1.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %report_count.i = getelementptr inbounds %struct.hid_field, ptr %7, i32 0, i32 8
  %10 = ptrtoint ptr %report_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %report_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp4.not.i = icmp eq i32 %11, 0
  br i1 %cmp4.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %logical_minimum.i = getelementptr inbounds %struct.hid_field, ptr %7, i32 0, i32 11
  %12 = ptrtoint ptr %logical_minimum.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %logical_minimum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp7.i = icmp eq i32 %13, 1
  br i1 %cmp7.i, label %if.then.i.pidff_find_special_field.exit_crit_edge, label %do.end.i

if.then.i.pidff_find_special_field.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_find_special_field.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90) #10
  br label %pidff_find_special_field.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.inc.i.pidff_find_special_field.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.pidff_find_special_field.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_find_special_field.exit

pidff_find_special_field.exit:                    ; preds = %for.inc.i.pidff_find_special_field.exit_crit_edge, %do.end.i, %if.then.i.pidff_find_special_field.exit_crit_edge, %do.end.pidff_find_special_field.exit_crit_edge
  %retval.0.i153 = phi ptr [ null, %do.end.i ], [ %7, %if.then.i.pidff_find_special_field.exit_crit_edge ], [ null, %do.end.pidff_find_special_field.exit_crit_edge ], [ null, %for.inc.i.pidff_find_special_field.exit_crit_edge ]
  %create_new_effect_type = getelementptr inbounds %struct.pidff_device, ptr %pidff, i32 0, i32 13
  %14 = ptrtoint ptr %create_new_effect_type to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %retval.0.i153, ptr %create_new_effect_type, align 4
  %15 = ptrtoint ptr %reports to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reports, align 4
  %maxfield.i154 = getelementptr inbounds %struct.hid_report, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %maxfield.i154 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %maxfield.i154, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp20.not.i155 = icmp eq i32 %18, 0
  br i1 %cmp20.not.i155, label %pidff_find_special_field.exit.pidff_find_special_field.exit174_crit_edge, label %pidff_find_special_field.exit.for.body.i161_crit_edge

pidff_find_special_field.exit.for.body.i161_crit_edge: ; preds = %pidff_find_special_field.exit
  br label %for.body.i161

pidff_find_special_field.exit.pidff_find_special_field.exit174_crit_edge: ; preds = %pidff_find_special_field.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_find_special_field.exit174

for.body.i161:                                    ; preds = %for.inc.i172.for.body.i161_crit_edge, %pidff_find_special_field.exit.for.body.i161_crit_edge
  %i.021.i157 = phi i32 [ %inc.i170, %for.inc.i172.for.body.i161_crit_edge ], [ 0, %pidff_find_special_field.exit.for.body.i161_crit_edge ]
  %arrayidx.i158 = getelementptr %struct.hid_report, ptr %16, i32 0, i32 5, i32 %i.021.i157
  %19 = ptrtoint ptr %arrayidx.i158 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i158, align 4
  %logical.i159 = getelementptr inbounds %struct.hid_field, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %logical.i159 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %logical.i159, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 983077, i32 %22)
  %cmp1.i160 = icmp eq i32 %22, 983077
  br i1 %cmp1.i160, label %land.lhs.true.i164, label %for.body.i161.for.inc.i172_crit_edge

for.body.i161.for.inc.i172_crit_edge:             ; preds = %for.body.i161
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i172

land.lhs.true.i164:                               ; preds = %for.body.i161
  %report_count.i162 = getelementptr inbounds %struct.hid_field, ptr %20, i32 0, i32 8
  %23 = ptrtoint ptr %report_count.i162 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %report_count.i162, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp4.not.i163 = icmp eq i32 %24, 0
  br i1 %cmp4.not.i163, label %land.lhs.true.i164.for.inc.i172_crit_edge, label %if.then.i165

land.lhs.true.i164.for.inc.i172_crit_edge:        ; preds = %land.lhs.true.i164
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i172

if.then.i165:                                     ; preds = %land.lhs.true.i164
  %logical_minimum.i166 = getelementptr inbounds %struct.hid_field, ptr %20, i32 0, i32 11
  %25 = ptrtoint ptr %logical_minimum.i166 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %logical_minimum.i166, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp7.i167 = icmp eq i32 %26, 1
  br i1 %cmp7.i167, label %if.then.i165.pidff_find_special_field.exit174_crit_edge, label %do.end.i169

if.then.i165.pidff_find_special_field.exit174_crit_edge: ; preds = %if.then.i165
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_find_special_field.exit174

do.end.i169:                                      ; preds = %if.then.i165
  call void @__sanitizer_cov_trace_pc() #8
  %call.i168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90) #10
  br label %pidff_find_special_field.exit174

for.inc.i172:                                     ; preds = %land.lhs.true.i164.for.inc.i172_crit_edge, %for.body.i161.for.inc.i172_crit_edge
  %inc.i170 = add nuw i32 %i.021.i157, 1
  %exitcond.not.i171 = icmp eq i32 %inc.i170, %18
  br i1 %exitcond.not.i171, label %for.inc.i172.pidff_find_special_field.exit174_crit_edge, label %for.inc.i172.for.body.i161_crit_edge

for.inc.i172.for.body.i161_crit_edge:             ; preds = %for.inc.i172
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i161

for.inc.i172.pidff_find_special_field.exit174_crit_edge: ; preds = %for.inc.i172
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_find_special_field.exit174

pidff_find_special_field.exit174:                 ; preds = %for.inc.i172.pidff_find_special_field.exit174_crit_edge, %do.end.i169, %if.then.i165.pidff_find_special_field.exit174_crit_edge, %pidff_find_special_field.exit.pidff_find_special_field.exit174_crit_edge
  %retval.0.i173 = phi ptr [ null, %do.end.i169 ], [ %20, %if.then.i165.pidff_find_special_field.exit174_crit_edge ], [ null, %pidff_find_special_field.exit.pidff_find_special_field.exit174_crit_edge ], [ null, %for.inc.i172.pidff_find_special_field.exit174_crit_edge ]
  %set_effect_type = getelementptr inbounds %struct.pidff_device, ptr %pidff, i32 0, i32 14
  %27 = ptrtoint ptr %set_effect_type to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %retval.0.i173, ptr %set_effect_type, align 4
  %28 = ptrtoint ptr %reports to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reports, align 4
  %maxfield.i175 = getelementptr inbounds %struct.hid_report, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %maxfield.i175 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %maxfield.i175, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp20.not.i176 = icmp eq i32 %31, 0
  br i1 %cmp20.not.i176, label %pidff_find_special_field.exit174.pidff_find_special_field.exit191_crit_edge, label %pidff_find_special_field.exit174.for.body.i182_crit_edge

pidff_find_special_field.exit174.for.body.i182_crit_edge: ; preds = %pidff_find_special_field.exit174
  br label %for.body.i182

pidff_find_special_field.exit174.pidff_find_special_field.exit191_crit_edge: ; preds = %pidff_find_special_field.exit174
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_find_special_field.exit191

for.body.i182:                                    ; preds = %for.inc.i189.for.body.i182_crit_edge, %pidff_find_special_field.exit174.for.body.i182_crit_edge
  %i.021.i178 = phi i32 [ %inc.i187, %for.inc.i189.for.body.i182_crit_edge ], [ 0, %pidff_find_special_field.exit174.for.body.i182_crit_edge ]
  %arrayidx.i179 = getelementptr %struct.hid_report, ptr %29, i32 0, i32 5, i32 %i.021.i178
  %32 = ptrtoint ptr %arrayidx.i179 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i179, align 4
  %logical.i180 = getelementptr inbounds %struct.hid_field, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %logical.i180 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %logical.i180, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 983127, i32 %35)
  %cmp1.i181 = icmp eq i32 %35, 983127
  br i1 %cmp1.i181, label %land.lhs.true.i185, label %for.body.i182.for.inc.i189_crit_edge

for.body.i182.for.inc.i189_crit_edge:             ; preds = %for.body.i182
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i189

land.lhs.true.i185:                               ; preds = %for.body.i182
  %report_count.i183 = getelementptr inbounds %struct.hid_field, ptr %33, i32 0, i32 8
  %36 = ptrtoint ptr %report_count.i183 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %report_count.i183, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp4.not.i184 = icmp eq i32 %37, 0
  br i1 %cmp4.not.i184, label %land.lhs.true.i185.for.inc.i189_crit_edge, label %land.lhs.true.i185.pidff_find_special_field.exit191_crit_edge

land.lhs.true.i185.pidff_find_special_field.exit191_crit_edge: ; preds = %land.lhs.true.i185
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_find_special_field.exit191

land.lhs.true.i185.for.inc.i189_crit_edge:        ; preds = %land.lhs.true.i185
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i189

for.inc.i189:                                     ; preds = %land.lhs.true.i185.for.inc.i189_crit_edge, %for.body.i182.for.inc.i189_crit_edge
  %inc.i187 = add nuw i32 %i.021.i178, 1
  %exitcond.not.i188 = icmp eq i32 %inc.i187, %31
  br i1 %exitcond.not.i188, label %for.inc.i189.pidff_find_special_field.exit191_crit_edge, label %for.inc.i189.for.body.i182_crit_edge

for.inc.i189.for.body.i182_crit_edge:             ; preds = %for.inc.i189
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i182

for.inc.i189.pidff_find_special_field.exit191_crit_edge: ; preds = %for.inc.i189
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_find_special_field.exit191

pidff_find_special_field.exit191:                 ; preds = %for.inc.i189.pidff_find_special_field.exit191_crit_edge, %land.lhs.true.i185.pidff_find_special_field.exit191_crit_edge, %pidff_find_special_field.exit174.pidff_find_special_field.exit191_crit_edge
  %retval.0.i190 = phi ptr [ null, %pidff_find_special_field.exit174.pidff_find_special_field.exit191_crit_edge ], [ %33, %land.lhs.true.i185.pidff_find_special_field.exit191_crit_edge ], [ null, %for.inc.i189.pidff_find_special_field.exit191_crit_edge ]
  %effect_direction = getelementptr inbounds %struct.pidff_device, ptr %pidff, i32 0, i32 15
  %38 = ptrtoint ptr %effect_direction to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %retval.0.i190, ptr %effect_direction, align 4
  %arrayidx11 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 1, i32 6
  %39 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx11, align 4
  %maxfield.i192 = getelementptr inbounds %struct.hid_report, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %maxfield.i192 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %maxfield.i192, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp20.not.i193 = icmp eq i32 %42, 0
  br i1 %cmp20.not.i193, label %pidff_find_special_field.exit191.pidff_find_special_field.exit212_crit_edge, label %pidff_find_special_field.exit191.for.body.i199_crit_edge

pidff_find_special_field.exit191.for.body.i199_crit_edge: ; preds = %pidff_find_special_field.exit191
  br label %for.body.i199

pidff_find_special_field.exit191.pidff_find_special_field.exit212_crit_edge: ; preds = %pidff_find_special_field.exit191
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_find_special_field.exit212

for.body.i199:                                    ; preds = %for.inc.i210.for.body.i199_crit_edge, %pidff_find_special_field.exit191.for.body.i199_crit_edge
  %i.021.i195 = phi i32 [ %inc.i208, %for.inc.i210.for.body.i199_crit_edge ], [ 0, %pidff_find_special_field.exit191.for.body.i199_crit_edge ]
  %arrayidx.i196 = getelementptr %struct.hid_report, ptr %40, i32 0, i32 5, i32 %i.021.i195
  %43 = ptrtoint ptr %arrayidx.i196 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i196, align 4
  %logical.i197 = getelementptr inbounds %struct.hid_field, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %logical.i197 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %logical.i197, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 983190, i32 %46)
  %cmp1.i198 = icmp eq i32 %46, 983190
  br i1 %cmp1.i198, label %land.lhs.true.i202, label %for.body.i199.for.inc.i210_crit_edge

for.body.i199.for.inc.i210_crit_edge:             ; preds = %for.body.i199
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i210

land.lhs.true.i202:                               ; preds = %for.body.i199
  %report_count.i200 = getelementptr inbounds %struct.hid_field, ptr %44, i32 0, i32 8
  %47 = ptrtoint ptr %report_count.i200 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %report_count.i200, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp4.not.i201 = icmp eq i32 %48, 0
  br i1 %cmp4.not.i201, label %land.lhs.true.i202.for.inc.i210_crit_edge, label %if.then.i203

land.lhs.true.i202.for.inc.i210_crit_edge:        ; preds = %land.lhs.true.i202
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i210

if.then.i203:                                     ; preds = %land.lhs.true.i202
  %logical_minimum.i204 = getelementptr inbounds %struct.hid_field, ptr %44, i32 0, i32 11
  %49 = ptrtoint ptr %logical_minimum.i204 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %logical_minimum.i204, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp7.i205 = icmp eq i32 %50, 1
  br i1 %cmp7.i205, label %if.then.i203.pidff_find_special_field.exit212_crit_edge, label %do.end.i207

if.then.i203.pidff_find_special_field.exit212_crit_edge: ; preds = %if.then.i203
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_find_special_field.exit212

do.end.i207:                                      ; preds = %if.then.i203
  call void @__sanitizer_cov_trace_pc() #8
  %call.i206 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90) #10
  br label %pidff_find_special_field.exit212

for.inc.i210:                                     ; preds = %land.lhs.true.i202.for.inc.i210_crit_edge, %for.body.i199.for.inc.i210_crit_edge
  %inc.i208 = add nuw i32 %i.021.i195, 1
  %exitcond.not.i209 = icmp eq i32 %inc.i208, %42
  br i1 %exitcond.not.i209, label %for.inc.i210.pidff_find_special_field.exit212_crit_edge, label %for.inc.i210.for.body.i199_crit_edge

for.inc.i210.for.body.i199_crit_edge:             ; preds = %for.inc.i210
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i199

for.inc.i210.pidff_find_special_field.exit212_crit_edge: ; preds = %for.inc.i210
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_find_special_field.exit212

pidff_find_special_field.exit212:                 ; preds = %for.inc.i210.pidff_find_special_field.exit212_crit_edge, %do.end.i207, %if.then.i203.pidff_find_special_field.exit212_crit_edge, %pidff_find_special_field.exit191.pidff_find_special_field.exit212_crit_edge
  %retval.0.i211 = phi ptr [ null, %do.end.i207 ], [ %44, %if.then.i203.pidff_find_special_field.exit212_crit_edge ], [ null, %pidff_find_special_field.exit191.pidff_find_special_field.exit212_crit_edge ], [ null, %for.inc.i210.pidff_find_special_field.exit212_crit_edge ]
  %device_control = getelementptr inbounds %struct.pidff_device, ptr %pidff, i32 0, i32 16
  %51 = ptrtoint ptr %device_control to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %retval.0.i211, ptr %device_control, align 4
  %arrayidx14 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 1, i32 4
  %52 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx14, align 4
  %maxfield.i213 = getelementptr inbounds %struct.hid_report, ptr %53, i32 0, i32 6
  %54 = ptrtoint ptr %maxfield.i213 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %maxfield.i213, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp20.not.i214 = icmp eq i32 %55, 0
  br i1 %cmp20.not.i214, label %pidff_find_special_field.exit212.pidff_find_special_field.exit233_crit_edge, label %pidff_find_special_field.exit212.for.body.i220_crit_edge

pidff_find_special_field.exit212.for.body.i220_crit_edge: ; preds = %pidff_find_special_field.exit212
  br label %for.body.i220

pidff_find_special_field.exit212.pidff_find_special_field.exit233_crit_edge: ; preds = %pidff_find_special_field.exit212
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_find_special_field.exit233

for.body.i220:                                    ; preds = %for.inc.i231.for.body.i220_crit_edge, %pidff_find_special_field.exit212.for.body.i220_crit_edge
  %i.021.i216 = phi i32 [ %inc.i229, %for.inc.i231.for.body.i220_crit_edge ], [ 0, %pidff_find_special_field.exit212.for.body.i220_crit_edge ]
  %arrayidx.i217 = getelementptr %struct.hid_report, ptr %53, i32 0, i32 5, i32 %i.021.i216
  %56 = ptrtoint ptr %arrayidx.i217 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i217, align 4
  %logical.i218 = getelementptr inbounds %struct.hid_field, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %logical.i218 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %logical.i218, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 983179, i32 %59)
  %cmp1.i219 = icmp eq i32 %59, 983179
  br i1 %cmp1.i219, label %land.lhs.true.i223, label %for.body.i220.for.inc.i231_crit_edge

for.body.i220.for.inc.i231_crit_edge:             ; preds = %for.body.i220
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i231

land.lhs.true.i223:                               ; preds = %for.body.i220
  %report_count.i221 = getelementptr inbounds %struct.hid_field, ptr %57, i32 0, i32 8
  %60 = ptrtoint ptr %report_count.i221 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %report_count.i221, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp4.not.i222 = icmp eq i32 %61, 0
  br i1 %cmp4.not.i222, label %land.lhs.true.i223.for.inc.i231_crit_edge, label %if.then.i224

land.lhs.true.i223.for.inc.i231_crit_edge:        ; preds = %land.lhs.true.i223
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i231

if.then.i224:                                     ; preds = %land.lhs.true.i223
  %logical_minimum.i225 = getelementptr inbounds %struct.hid_field, ptr %57, i32 0, i32 11
  %62 = ptrtoint ptr %logical_minimum.i225 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %logical_minimum.i225, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp7.i226 = icmp eq i32 %63, 1
  br i1 %cmp7.i226, label %if.then.i224.pidff_find_special_field.exit233_crit_edge, label %do.end.i228

if.then.i224.pidff_find_special_field.exit233_crit_edge: ; preds = %if.then.i224
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_find_special_field.exit233

do.end.i228:                                      ; preds = %if.then.i224
  call void @__sanitizer_cov_trace_pc() #8
  %call.i227 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90) #10
  br label %pidff_find_special_field.exit233

for.inc.i231:                                     ; preds = %land.lhs.true.i223.for.inc.i231_crit_edge, %for.body.i220.for.inc.i231_crit_edge
  %inc.i229 = add nuw i32 %i.021.i216, 1
  %exitcond.not.i230 = icmp eq i32 %inc.i229, %55
  br i1 %exitcond.not.i230, label %for.inc.i231.pidff_find_special_field.exit233_crit_edge, label %for.inc.i231.for.body.i220_crit_edge

for.inc.i231.for.body.i220_crit_edge:             ; preds = %for.inc.i231
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i220

for.inc.i231.pidff_find_special_field.exit233_crit_edge: ; preds = %for.inc.i231
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_find_special_field.exit233

pidff_find_special_field.exit233:                 ; preds = %for.inc.i231.pidff_find_special_field.exit233_crit_edge, %do.end.i228, %if.then.i224.pidff_find_special_field.exit233_crit_edge, %pidff_find_special_field.exit212.pidff_find_special_field.exit233_crit_edge
  %retval.0.i232 = phi ptr [ null, %do.end.i228 ], [ %57, %if.then.i224.pidff_find_special_field.exit233_crit_edge ], [ null, %pidff_find_special_field.exit212.pidff_find_special_field.exit233_crit_edge ], [ null, %for.inc.i231.pidff_find_special_field.exit233_crit_edge ]
  %block_load_status = getelementptr inbounds %struct.pidff_device, ptr %pidff, i32 0, i32 17
  %64 = ptrtoint ptr %block_load_status to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %retval.0.i232, ptr %block_load_status, align 4
  %arrayidx17 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 1, i32 1
  %65 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx17, align 4
  %maxfield.i234 = getelementptr inbounds %struct.hid_report, ptr %66, i32 0, i32 6
  %67 = ptrtoint ptr %maxfield.i234 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %maxfield.i234, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp20.not.i235 = icmp eq i32 %68, 0
  br i1 %cmp20.not.i235, label %pidff_find_special_field.exit233.pidff_find_special_field.exit254_crit_edge, label %pidff_find_special_field.exit233.for.body.i241_crit_edge

pidff_find_special_field.exit233.for.body.i241_crit_edge: ; preds = %pidff_find_special_field.exit233
  br label %for.body.i241

pidff_find_special_field.exit233.pidff_find_special_field.exit254_crit_edge: ; preds = %pidff_find_special_field.exit233
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_find_special_field.exit254

for.body.i241:                                    ; preds = %for.inc.i252.for.body.i241_crit_edge, %pidff_find_special_field.exit233.for.body.i241_crit_edge
  %i.021.i237 = phi i32 [ %inc.i250, %for.inc.i252.for.body.i241_crit_edge ], [ 0, %pidff_find_special_field.exit233.for.body.i241_crit_edge ]
  %arrayidx.i238 = getelementptr %struct.hid_report, ptr %66, i32 0, i32 5, i32 %i.021.i237
  %69 = ptrtoint ptr %arrayidx.i238 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.i238, align 4
  %logical.i239 = getelementptr inbounds %struct.hid_field, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %logical.i239 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %logical.i239, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 983160, i32 %72)
  %cmp1.i240 = icmp eq i32 %72, 983160
  br i1 %cmp1.i240, label %land.lhs.true.i244, label %for.body.i241.for.inc.i252_crit_edge

for.body.i241.for.inc.i252_crit_edge:             ; preds = %for.body.i241
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i252

land.lhs.true.i244:                               ; preds = %for.body.i241
  %report_count.i242 = getelementptr inbounds %struct.hid_field, ptr %70, i32 0, i32 8
  %73 = ptrtoint ptr %report_count.i242 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %report_count.i242, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp4.not.i243 = icmp eq i32 %74, 0
  br i1 %cmp4.not.i243, label %land.lhs.true.i244.for.inc.i252_crit_edge, label %if.then.i245

land.lhs.true.i244.for.inc.i252_crit_edge:        ; preds = %land.lhs.true.i244
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i252

if.then.i245:                                     ; preds = %land.lhs.true.i244
  %logical_minimum.i246 = getelementptr inbounds %struct.hid_field, ptr %70, i32 0, i32 11
  %75 = ptrtoint ptr %logical_minimum.i246 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %logical_minimum.i246, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %76)
  %cmp7.i247 = icmp eq i32 %76, 1
  br i1 %cmp7.i247, label %if.then.i245.pidff_find_special_field.exit254_crit_edge, label %do.end.i249

if.then.i245.pidff_find_special_field.exit254_crit_edge: ; preds = %if.then.i245
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_find_special_field.exit254

do.end.i249:                                      ; preds = %if.then.i245
  call void @__sanitizer_cov_trace_pc() #8
  %call.i248 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90) #10
  br label %pidff_find_special_field.exit254

for.inc.i252:                                     ; preds = %land.lhs.true.i244.for.inc.i252_crit_edge, %for.body.i241.for.inc.i252_crit_edge
  %inc.i250 = add nuw i32 %i.021.i237, 1
  %exitcond.not.i251 = icmp eq i32 %inc.i250, %68
  br i1 %exitcond.not.i251, label %for.inc.i252.pidff_find_special_field.exit254_crit_edge, label %for.inc.i252.for.body.i241_crit_edge

for.inc.i252.for.body.i241_crit_edge:             ; preds = %for.inc.i252
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i241

for.inc.i252.pidff_find_special_field.exit254_crit_edge: ; preds = %for.inc.i252
  call void @__sanitizer_cov_trace_pc() #8
  br label %pidff_find_special_field.exit254

pidff_find_special_field.exit254:                 ; preds = %for.inc.i252.pidff_find_special_field.exit254_crit_edge, %do.end.i249, %if.then.i245.pidff_find_special_field.exit254_crit_edge, %pidff_find_special_field.exit233.pidff_find_special_field.exit254_crit_edge
  %retval.0.i253 = phi ptr [ null, %do.end.i249 ], [ %70, %if.then.i245.pidff_find_special_field.exit254_crit_edge ], [ null, %pidff_find_special_field.exit233.pidff_find_special_field.exit254_crit_edge ], [ null, %for.inc.i252.pidff_find_special_field.exit254_crit_edge ]
  %effect_operation_status = getelementptr inbounds %struct.pidff_device, ptr %pidff, i32 0, i32 18
  %77 = ptrtoint ptr %effect_operation_status to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %retval.0.i253, ptr %effect_operation_status, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pidff_find_special_fields.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pidff_find_special_fields, %if.then31)) #6
          to label %do.end35 [label %if.then31], !srcloc !266

if.then31:                                        ; preds = %pidff_find_special_field.exit254
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %pidff to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pidff, align 4
  %dev33 = getelementptr inbounds %struct.hid_device, ptr %79, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pidff_find_special_fields.__UNIQUE_ID_ddebug248, ptr noundef %dev33, ptr noundef nonnull @.str.67) #6
  br label %do.end35

do.end35:                                         ; preds = %if.then31, %pidff_find_special_field.exit254
  %80 = ptrtoint ptr %create_new_effect_type to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %create_new_effect_type, align 4
  %tobool37.not = icmp eq ptr %81, null
  br i1 %tobool37.not, label %do.end35.return.sink.split_crit_edge, label %lor.lhs.false

do.end35.return.sink.split_crit_edge:             ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

lor.lhs.false:                                    ; preds = %do.end35
  %82 = ptrtoint ptr %set_effect_type to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %set_effect_type, align 4
  %tobool39.not = icmp eq ptr %83, null
  br i1 %tobool39.not, label %lor.lhs.false.return.sink.split_crit_edge, label %if.end45

lor.lhs.false.return.sink.split_crit_edge:        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

if.end45:                                         ; preds = %lor.lhs.false
  %84 = ptrtoint ptr %effect_direction to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %effect_direction, align 4
  %tobool47.not = icmp eq ptr %85, null
  br i1 %tobool47.not, label %if.end45.return.sink.split_crit_edge, label %if.end53

if.end45.return.sink.split_crit_edge:             ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

if.end53:                                         ; preds = %if.end45
  %86 = ptrtoint ptr %device_control to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %device_control, align 4
  %tobool55.not = icmp eq ptr %87, null
  br i1 %tobool55.not, label %if.end53.return.sink.split_crit_edge, label %if.end61

if.end53.return.sink.split_crit_edge:             ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

if.end61:                                         ; preds = %if.end53
  %88 = ptrtoint ptr %block_load_status to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %block_load_status, align 4
  %tobool63.not = icmp eq ptr %89, null
  br i1 %tobool63.not, label %if.end61.return.sink.split_crit_edge, label %if.end69

if.end61.return.sink.split_crit_edge:             ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

if.end69:                                         ; preds = %if.end61
  %90 = ptrtoint ptr %effect_operation_status to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %effect_operation_status, align 4
  %tobool71.not = icmp eq ptr %91, null
  br i1 %tobool71.not, label %if.end69.return.sink.split_crit_edge, label %if.end77

if.end69.return.sink.split_crit_edge:             ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

if.end77:                                         ; preds = %if.end69
  %control_id = getelementptr inbounds %struct.pidff_device, ptr %pidff, i32 0, i32 19
  %maxusage.i = getelementptr inbounds %struct.hid_field, ptr %87, i32 0, i32 4
  %usage.i = getelementptr inbounds %struct.hid_field, ptr %87, i32 0, i32 3
  %92 = ptrtoint ptr %maxusage.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %maxusage.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp221.not.i = icmp eq i32 %93, 0
  br i1 %cmp221.not.i, label %if.end77.for.inc9.i.1_crit_edge, label %for.body3.lr.ph.i

if.end77.for.inc9.i.1_crit_edge:                  ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc9.i.1

for.body3.lr.ph.i:                                ; preds = %if.end77
  %94 = ptrtoint ptr %usage.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %usage.i, align 4
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.inc.i259.for.body3.i_crit_edge, %for.body3.lr.ph.i
  %j.022.i = phi i32 [ 0, %for.body3.lr.ph.i ], [ %add.i, %for.inc.i259.for.body3.i_crit_edge ]
  %arrayidx.i255 = getelementptr %struct.hid_usage, ptr %95, i32 %j.022.i
  %96 = ptrtoint ptr %arrayidx.i255 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx.i255, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 983191, i32 %97)
  %cmp5.i = icmp eq i32 %97, 983191
  %add.i = add nuw i32 %j.022.i, 1
  br i1 %cmp5.i, label %if.then.i257, label %for.inc.i259

if.then.i257:                                     ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  %98 = ptrtoint ptr %control_id to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %add.i, ptr %control_id, align 4
  br label %for.inc9.i

for.inc.i259:                                     ; preds = %for.body3.i
  %exitcond.not.i258 = icmp eq i32 %add.i, %93
  br i1 %exitcond.not.i258, label %for.inc.i259.for.inc9.i_crit_edge, label %for.inc.i259.for.body3.i_crit_edge

for.inc.i259.for.body3.i_crit_edge:               ; preds = %for.inc.i259
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3.i

for.inc.i259.for.inc9.i_crit_edge:                ; preds = %for.inc.i259
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc9.i

for.inc9.i:                                       ; preds = %for.inc.i259.for.inc9.i_crit_edge, %if.then.i257
  %99 = ptrtoint ptr %maxusage.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %.pr = load i32, ptr %maxusage.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp221.not.i.1 = icmp eq i32 %.pr, 0
  br i1 %cmp221.not.i.1, label %for.inc9.i.for.inc9.i.1_crit_edge, label %for.body3.lr.ph.i.1

for.inc9.i.for.inc9.i.1_crit_edge:                ; preds = %for.inc9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc9.i.1

for.body3.lr.ph.i.1:                              ; preds = %for.inc9.i
  %100 = ptrtoint ptr %usage.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %usage.i, align 4
  br label %for.body3.i.1

for.body3.i.1:                                    ; preds = %for.inc.i259.1.for.body3.i.1_crit_edge, %for.body3.lr.ph.i.1
  %j.022.i.1 = phi i32 [ 0, %for.body3.lr.ph.i.1 ], [ %add.i.1, %for.inc.i259.1.for.body3.i.1_crit_edge ]
  %arrayidx.i255.1 = getelementptr %struct.hid_usage, ptr %101, i32 %j.022.i.1
  %102 = ptrtoint ptr %arrayidx.i255.1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx.i255.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 983194, i32 %103)
  %cmp5.i.1 = icmp eq i32 %103, 983194
  %add.i.1 = add nuw i32 %j.022.i.1, 1
  br i1 %cmp5.i.1, label %if.then.i257.1, label %for.inc.i259.1

for.inc.i259.1:                                   ; preds = %for.body3.i.1
  %exitcond.not.i258.1 = icmp eq i32 %add.i.1, %.pr
  br i1 %exitcond.not.i258.1, label %for.inc.i259.1.for.inc9.i.1_crit_edge, label %for.inc.i259.1.for.body3.i.1_crit_edge

for.inc.i259.1.for.body3.i.1_crit_edge:           ; preds = %for.inc.i259.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3.i.1

for.inc.i259.1.for.inc9.i.1_crit_edge:            ; preds = %for.inc.i259.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc9.i.1

if.then.i257.1:                                   ; preds = %for.body3.i.1
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx7.i.1 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 19, i32 1
  %104 = ptrtoint ptr %arrayidx7.i.1 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %add.i.1, ptr %arrayidx7.i.1, align 4
  br label %for.inc9.i.1

for.inc9.i.1:                                     ; preds = %if.then.i257.1, %for.inc.i259.1.for.inc9.i.1_crit_edge, %for.inc9.i.for.inc9.i.1_crit_edge, %if.end77.for.inc9.i.1_crit_edge
  %105 = ptrtoint ptr %device_control to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %device_control, align 4
  %maxusage.i260 = getelementptr inbounds %struct.hid_field, ptr %106, i32 0, i32 4
  %usage.i261 = getelementptr inbounds %struct.hid_field, ptr %106, i32 0, i32 3
  %107 = ptrtoint ptr %maxusage.i260 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %maxusage.i260, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp221.not.i264 = icmp eq i32 %108, 0
  br i1 %cmp221.not.i264, label %for.inc9.i.1.for.inc9.i284.1_crit_edge, label %for.body3.lr.ph.i269

for.inc9.i.1.for.inc9.i284.1_crit_edge:           ; preds = %for.inc9.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc9.i284.1

for.body3.lr.ph.i269:                             ; preds = %for.inc9.i.1
  %109 = ptrtoint ptr %usage.i261 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %usage.i261, align 4
  br label %for.body3.i273

for.body3.i273:                                   ; preds = %for.inc.i280.for.body3.i273_crit_edge, %for.body3.lr.ph.i269
  %j.022.i270 = phi i32 [ 0, %for.body3.lr.ph.i269 ], [ %add.i274, %for.inc.i280.for.body3.i273_crit_edge ]
  %arrayidx.i271 = getelementptr %struct.hid_usage, ptr %110, i32 %j.022.i270
  %111 = ptrtoint ptr %arrayidx.i271 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx.i271, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 983191, i32 %112)
  %cmp5.i272 = icmp eq i32 %112, 983191
  %add.i274 = add nuw i32 %j.022.i270, 1
  br i1 %cmp5.i272, label %if.then.i277, label %for.inc.i280

if.then.i277:                                     ; preds = %for.body3.i273
  call void @__sanitizer_cov_trace_pc() #8
  %113 = ptrtoint ptr %control_id to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %add.i274, ptr %control_id, align 4
  br label %for.inc9.i284

for.inc.i280:                                     ; preds = %for.body3.i273
  %exitcond.not.i279 = icmp eq i32 %add.i274, %108
  br i1 %exitcond.not.i279, label %for.inc.i280.for.inc9.i284_crit_edge, label %for.inc.i280.for.body3.i273_crit_edge

for.inc.i280.for.body3.i273_crit_edge:            ; preds = %for.inc.i280
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3.i273

for.inc.i280.for.inc9.i284_crit_edge:             ; preds = %for.inc.i280
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc9.i284

for.inc9.i284:                                    ; preds = %for.inc.i280.for.inc9.i284_crit_edge, %if.then.i277
  %114 = ptrtoint ptr %maxusage.i260 to i32
  call void @__asan_load4_noabort(i32 %114)
  %.pr395 = load i32, ptr %maxusage.i260, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr395)
  %cmp221.not.i264.1 = icmp eq i32 %.pr395, 0
  br i1 %cmp221.not.i264.1, label %for.inc9.i284.for.inc9.i284.1_crit_edge, label %for.body3.lr.ph.i269.1

for.inc9.i284.for.inc9.i284.1_crit_edge:          ; preds = %for.inc9.i284
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc9.i284.1

for.body3.lr.ph.i269.1:                           ; preds = %for.inc9.i284
  %115 = ptrtoint ptr %usage.i261 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %usage.i261, align 4
  br label %for.body3.i273.1

for.body3.i273.1:                                 ; preds = %for.inc.i280.1.for.body3.i273.1_crit_edge, %for.body3.lr.ph.i269.1
  %j.022.i270.1 = phi i32 [ 0, %for.body3.lr.ph.i269.1 ], [ %add.i274.1, %for.inc.i280.1.for.body3.i273.1_crit_edge ]
  %arrayidx.i271.1 = getelementptr %struct.hid_usage, ptr %116, i32 %j.022.i270.1
  %117 = ptrtoint ptr %arrayidx.i271.1 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx.i271.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 983194, i32 %118)
  %cmp5.i272.1 = icmp eq i32 %118, 983194
  %add.i274.1 = add nuw i32 %j.022.i270.1, 1
  br i1 %cmp5.i272.1, label %if.then.i277.1, label %for.inc.i280.1

for.inc.i280.1:                                   ; preds = %for.body3.i273.1
  %exitcond.not.i279.1 = icmp eq i32 %add.i274.1, %.pr395
  br i1 %exitcond.not.i279.1, label %for.inc.i280.1.for.inc9.i284.1_crit_edge, label %for.inc.i280.1.for.body3.i273.1_crit_edge

for.inc.i280.1.for.body3.i273.1_crit_edge:        ; preds = %for.inc.i280.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3.i273.1

for.inc.i280.1.for.inc9.i284.1_crit_edge:         ; preds = %for.inc.i280.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc9.i284.1

if.then.i277.1:                                   ; preds = %for.body3.i273.1
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx7.i275.1 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 19, i32 1
  %119 = ptrtoint ptr %arrayidx7.i275.1 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %add.i274.1, ptr %arrayidx7.i275.1, align 4
  br label %for.inc9.i284.1

for.inc9.i284.1:                                  ; preds = %if.then.i277.1, %for.inc.i280.1.for.inc9.i284.1_crit_edge, %for.inc9.i284.for.inc9.i284.1_crit_edge, %for.inc9.i.1.for.inc9.i284.1_crit_edge
  %type_id = getelementptr inbounds %struct.pidff_device, ptr %pidff, i32 0, i32 20
  %120 = ptrtoint ptr %create_new_effect_type to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %create_new_effect_type, align 4
  %maxusage.i286 = getelementptr inbounds %struct.hid_field, ptr %121, i32 0, i32 4
  %usage.i287 = getelementptr inbounds %struct.hid_field, ptr %121, i32 0, i32 3
  br label %for.cond1.preheader.i291

for.cond1.preheader.i291:                         ; preds = %for.inc9.i310.for.cond1.preheader.i291_crit_edge, %for.inc9.i284.1
  %found.027.i288 = phi i32 [ 0, %for.inc9.i284.1 ], [ %found.1.i307, %for.inc9.i310.for.cond1.preheader.i291_crit_edge ]
  %i.024.i289 = phi i32 [ 0, %for.inc9.i284.1 ], [ %inc10.i308, %for.inc9.i310.for.cond1.preheader.i291_crit_edge ]
  %122 = ptrtoint ptr %maxusage.i286 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %maxusage.i286, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %cmp221.not.i290 = icmp eq i32 %123, 0
  br i1 %cmp221.not.i290, label %for.cond1.preheader.i291.for.inc9.i310_crit_edge, label %for.body3.lr.ph.i295

for.cond1.preheader.i291.for.inc9.i310_crit_edge: ; preds = %for.cond1.preheader.i291
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc9.i310

for.body3.lr.ph.i295:                             ; preds = %for.cond1.preheader.i291
  %124 = ptrtoint ptr %usage.i287 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %usage.i287, align 4
  %arrayidx4.i292 = getelementptr i8, ptr @pidff_effect_types, i32 %i.024.i289
  %126 = ptrtoint ptr %arrayidx4.i292 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx4.i292, align 1
  %conv.i293 = zext i8 %127 to i32
  %or.i294 = or i32 %conv.i293, 983040
  br label %for.body3.i299

for.body3.i299:                                   ; preds = %for.inc.i306.for.body3.i299_crit_edge, %for.body3.lr.ph.i295
  %j.022.i296 = phi i32 [ 0, %for.body3.lr.ph.i295 ], [ %add.i300, %for.inc.i306.for.body3.i299_crit_edge ]
  %arrayidx.i297 = getelementptr %struct.hid_usage, ptr %125, i32 %j.022.i296
  %128 = ptrtoint ptr %arrayidx.i297 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx.i297, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %or.i294)
  %cmp5.i298 = icmp eq i32 %129, %or.i294
  %add.i300 = add nuw i32 %j.022.i296, 1
  br i1 %cmp5.i298, label %if.then.i303, label %for.inc.i306

if.then.i303:                                     ; preds = %for.body3.i299
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx7.i301 = getelementptr i32, ptr %type_id, i32 %i.024.i289
  %130 = ptrtoint ptr %arrayidx7.i301 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %add.i300, ptr %arrayidx7.i301, align 4
  %inc.i302 = add i32 %found.027.i288, 1
  br label %for.inc9.i310

for.inc.i306:                                     ; preds = %for.body3.i299
  %exitcond.not.i305 = icmp eq i32 %add.i300, %123
  br i1 %exitcond.not.i305, label %for.inc.i306.for.inc9.i310_crit_edge, label %for.inc.i306.for.body3.i299_crit_edge

for.inc.i306.for.body3.i299_crit_edge:            ; preds = %for.inc.i306
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3.i299

for.inc.i306.for.inc9.i310_crit_edge:             ; preds = %for.inc.i306
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc9.i310

for.inc9.i310:                                    ; preds = %for.inc.i306.for.inc9.i310_crit_edge, %if.then.i303, %for.cond1.preheader.i291.for.inc9.i310_crit_edge
  %found.1.i307 = phi i32 [ %inc.i302, %if.then.i303 ], [ %found.027.i288, %for.cond1.preheader.i291.for.inc9.i310_crit_edge ], [ %found.027.i288, %for.inc.i306.for.inc9.i310_crit_edge ]
  %inc10.i308 = add nuw nsw i32 %i.024.i289, 1
  %exitcond29.not.i309 = icmp eq i32 %inc10.i308, 11
  br i1 %exitcond29.not.i309, label %pidff_find_special_keys.exit311, label %for.inc9.i310.for.cond1.preheader.i291_crit_edge

for.inc9.i310.for.cond1.preheader.i291_crit_edge: ; preds = %for.inc9.i310
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond1.preheader.i291

pidff_find_special_keys.exit311:                  ; preds = %for.inc9.i310
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.1.i307)
  %tobool87.not = icmp eq i32 %found.1.i307, 0
  br i1 %tobool87.not, label %pidff_find_special_keys.exit311.return.sink.split_crit_edge, label %if.end93

pidff_find_special_keys.exit311.return.sink.split_crit_edge: ; preds = %pidff_find_special_keys.exit311
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

if.end93:                                         ; preds = %pidff_find_special_keys.exit311
  %status_id = getelementptr inbounds %struct.pidff_device, ptr %pidff, i32 0, i32 21
  %131 = ptrtoint ptr %block_load_status to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %block_load_status, align 4
  %maxusage.i312 = getelementptr inbounds %struct.hid_field, ptr %132, i32 0, i32 4
  %usage.i313 = getelementptr inbounds %struct.hid_field, ptr %132, i32 0, i32 3
  %133 = ptrtoint ptr %maxusage.i312 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %maxusage.i312, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %cmp221.not.i316 = icmp eq i32 %134, 0
  br i1 %cmp221.not.i316, label %if.end93.return.sink.split_crit_edge, label %for.body3.lr.ph.i321

if.end93.return.sink.split_crit_edge:             ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

for.body3.lr.ph.i321:                             ; preds = %if.end93
  %135 = ptrtoint ptr %usage.i313 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %usage.i313, align 4
  br label %for.body3.i325

for.body3.i325:                                   ; preds = %for.inc.i332.for.body3.i325_crit_edge, %for.body3.lr.ph.i321
  %j.022.i322 = phi i32 [ 0, %for.body3.lr.ph.i321 ], [ %add.i326, %for.inc.i332.for.body3.i325_crit_edge ]
  %arrayidx.i323 = getelementptr %struct.hid_usage, ptr %136, i32 %j.022.i322
  %137 = ptrtoint ptr %arrayidx.i323 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx.i323, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 983180, i32 %138)
  %cmp5.i324 = icmp eq i32 %138, 983180
  %add.i326 = add nuw i32 %j.022.i322, 1
  br i1 %cmp5.i324, label %if.then.i329, label %for.inc.i332

if.then.i329:                                     ; preds = %for.body3.i325
  call void @__sanitizer_cov_trace_pc() #8
  %139 = ptrtoint ptr %status_id to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %add.i326, ptr %status_id, align 4
  br label %for.inc9.i336

for.inc.i332:                                     ; preds = %for.body3.i325
  %exitcond.not.i331 = icmp eq i32 %add.i326, %134
  br i1 %exitcond.not.i331, label %for.inc.i332.for.inc9.i336_crit_edge, label %for.inc.i332.for.body3.i325_crit_edge

for.inc.i332.for.body3.i325_crit_edge:            ; preds = %for.inc.i332
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3.i325

for.inc.i332.for.inc9.i336_crit_edge:             ; preds = %for.inc.i332
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc9.i336

for.inc9.i336:                                    ; preds = %for.inc.i332.for.inc9.i336_crit_edge, %if.then.i329
  %140 = ptrtoint ptr %maxusage.i312 to i32
  call void @__asan_load4_noabort(i32 %140)
  %.pr397 = load i32, ptr %maxusage.i312, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr397)
  %cmp221.not.i316.1 = icmp eq i32 %.pr397, 0
  br i1 %cmp221.not.i316.1, label %for.inc9.i336.return.sink.split_crit_edge, label %for.body3.lr.ph.i321.1

for.inc9.i336.return.sink.split_crit_edge:        ; preds = %for.inc9.i336
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

for.body3.lr.ph.i321.1:                           ; preds = %for.inc9.i336
  %141 = ptrtoint ptr %usage.i313 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %usage.i313, align 4
  br label %for.body3.i325.1

for.body3.i325.1:                                 ; preds = %for.inc.i332.1.for.body3.i325.1_crit_edge, %for.body3.lr.ph.i321.1
  %j.022.i322.1 = phi i32 [ 0, %for.body3.lr.ph.i321.1 ], [ %add.i326.1, %for.inc.i332.1.for.body3.i325.1_crit_edge ]
  %arrayidx.i323.1 = getelementptr %struct.hid_usage, ptr %142, i32 %j.022.i322.1
  %143 = ptrtoint ptr %arrayidx.i323.1 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx.i323.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 983181, i32 %144)
  %cmp5.i324.1 = icmp eq i32 %144, 983181
  %add.i326.1 = add nuw i32 %j.022.i322.1, 1
  br i1 %cmp5.i324.1, label %for.inc9.i336.1, label %for.inc.i332.1

for.inc.i332.1:                                   ; preds = %for.body3.i325.1
  %exitcond.not.i331.1 = icmp eq i32 %add.i326.1, %.pr397
  br i1 %exitcond.not.i331.1, label %for.inc.i332.1.return.sink.split_crit_edge, label %for.inc.i332.1.for.body3.i325.1_crit_edge

for.inc.i332.1.for.body3.i325.1_crit_edge:        ; preds = %for.inc.i332.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3.i325.1

for.inc.i332.1.return.sink.split_crit_edge:       ; preds = %for.inc.i332.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

for.inc9.i336.1:                                  ; preds = %for.body3.i325.1
  %arrayidx7.i327.1 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 21, i32 1
  %145 = ptrtoint ptr %arrayidx7.i327.1 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %add.i326.1, ptr %arrayidx7.i327.1, align 4
  br i1 %cmp5.i324, label %if.end102, label %for.inc9.i336.1.return.sink.split_crit_edge

for.inc9.i336.1.return.sink.split_crit_edge:      ; preds = %for.inc9.i336.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

if.end102:                                        ; preds = %for.inc9.i336.1
  %operation_id = getelementptr inbounds %struct.pidff_device, ptr %pidff, i32 0, i32 22
  %146 = ptrtoint ptr %effect_operation_status to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %effect_operation_status, align 4
  %maxusage.i338 = getelementptr inbounds %struct.hid_field, ptr %147, i32 0, i32 4
  %usage.i339 = getelementptr inbounds %struct.hid_field, ptr %147, i32 0, i32 3
  %148 = ptrtoint ptr %maxusage.i338 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %maxusage.i338, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %cmp221.not.i342 = icmp eq i32 %149, 0
  br i1 %cmp221.not.i342, label %if.end102.return.sink.split_crit_edge, label %for.body3.lr.ph.i347

if.end102.return.sink.split_crit_edge:            ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

for.body3.lr.ph.i347:                             ; preds = %if.end102
  %150 = ptrtoint ptr %usage.i339 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %usage.i339, align 4
  br label %for.body3.i351

for.body3.i351:                                   ; preds = %for.inc.i358.for.body3.i351_crit_edge, %for.body3.lr.ph.i347
  %j.022.i348 = phi i32 [ 0, %for.body3.lr.ph.i347 ], [ %add.i352, %for.inc.i358.for.body3.i351_crit_edge ]
  %arrayidx.i349 = getelementptr %struct.hid_usage, ptr %151, i32 %j.022.i348
  %152 = ptrtoint ptr %arrayidx.i349 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx.i349, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 983161, i32 %153)
  %cmp5.i350 = icmp eq i32 %153, 983161
  %add.i352 = add nuw i32 %j.022.i348, 1
  br i1 %cmp5.i350, label %if.then.i355, label %for.inc.i358

if.then.i355:                                     ; preds = %for.body3.i351
  call void @__sanitizer_cov_trace_pc() #8
  %154 = ptrtoint ptr %operation_id to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %add.i352, ptr %operation_id, align 4
  br label %for.inc9.i362

for.inc.i358:                                     ; preds = %for.body3.i351
  %exitcond.not.i357 = icmp eq i32 %add.i352, %149
  br i1 %exitcond.not.i357, label %for.inc.i358.for.inc9.i362_crit_edge, label %for.inc.i358.for.body3.i351_crit_edge

for.inc.i358.for.body3.i351_crit_edge:            ; preds = %for.inc.i358
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3.i351

for.inc.i358.for.inc9.i362_crit_edge:             ; preds = %for.inc.i358
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc9.i362

for.inc9.i362:                                    ; preds = %for.inc.i358.for.inc9.i362_crit_edge, %if.then.i355
  %155 = ptrtoint ptr %maxusage.i338 to i32
  call void @__asan_load4_noabort(i32 %155)
  %.pr402 = load i32, ptr %maxusage.i338, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr402)
  %cmp221.not.i342.1 = icmp eq i32 %.pr402, 0
  br i1 %cmp221.not.i342.1, label %for.inc9.i362.return.sink.split_crit_edge, label %for.body3.lr.ph.i347.1

for.inc9.i362.return.sink.split_crit_edge:        ; preds = %for.inc9.i362
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

for.body3.lr.ph.i347.1:                           ; preds = %for.inc9.i362
  %156 = ptrtoint ptr %usage.i339 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %usage.i339, align 4
  br label %for.body3.i351.1

for.body3.i351.1:                                 ; preds = %for.inc.i358.1.for.body3.i351.1_crit_edge, %for.body3.lr.ph.i347.1
  %j.022.i348.1 = phi i32 [ 0, %for.body3.lr.ph.i347.1 ], [ %add.i352.1, %for.inc.i358.1.for.body3.i351.1_crit_edge ]
  %arrayidx.i349.1 = getelementptr %struct.hid_usage, ptr %157, i32 %j.022.i348.1
  %158 = ptrtoint ptr %arrayidx.i349.1 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx.i349.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 983163, i32 %159)
  %cmp5.i350.1 = icmp eq i32 %159, 983163
  %add.i352.1 = add nuw i32 %j.022.i348.1, 1
  br i1 %cmp5.i350.1, label %for.inc9.i362.1, label %for.inc.i358.1

for.inc.i358.1:                                   ; preds = %for.body3.i351.1
  %exitcond.not.i357.1 = icmp eq i32 %add.i352.1, %.pr402
  br i1 %exitcond.not.i357.1, label %for.inc.i358.1.return.sink.split_crit_edge, label %for.inc.i358.1.for.body3.i351.1_crit_edge

for.inc.i358.1.for.body3.i351.1_crit_edge:        ; preds = %for.inc.i358.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3.i351.1

for.inc.i358.1.return.sink.split_crit_edge:       ; preds = %for.inc.i358.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

for.inc9.i362.1:                                  ; preds = %for.body3.i351.1
  %arrayidx7.i353.1 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 22, i32 1
  %160 = ptrtoint ptr %arrayidx7.i353.1 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %add.i352.1, ptr %arrayidx7.i353.1, align 4
  br i1 %cmp5.i350, label %for.inc9.i362.1.return_crit_edge, label %for.inc9.i362.1.return.sink.split_crit_edge

for.inc9.i362.1.return.sink.split_crit_edge:      ; preds = %for.inc9.i362.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

for.inc9.i362.1.return_crit_edge:                 ; preds = %for.inc9.i362.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

return.sink.split:                                ; preds = %for.inc9.i362.1.return.sink.split_crit_edge, %for.inc.i358.1.return.sink.split_crit_edge, %for.inc9.i362.return.sink.split_crit_edge, %if.end102.return.sink.split_crit_edge, %for.inc9.i336.1.return.sink.split_crit_edge, %for.inc.i332.1.return.sink.split_crit_edge, %for.inc9.i336.return.sink.split_crit_edge, %if.end93.return.sink.split_crit_edge, %pidff_find_special_keys.exit311.return.sink.split_crit_edge, %if.end69.return.sink.split_crit_edge, %if.end61.return.sink.split_crit_edge, %if.end53.return.sink.split_crit_edge, %if.end45.return.sink.split_crit_edge, %lor.lhs.false.return.sink.split_crit_edge, %do.end35.return.sink.split_crit_edge
  %.str.88.sink = phi ptr [ @.str.68, %lor.lhs.false.return.sink.split_crit_edge ], [ @.str.68, %do.end35.return.sink.split_crit_edge ], [ @.str.70, %if.end45.return.sink.split_crit_edge ], [ @.str.73, %if.end53.return.sink.split_crit_edge ], [ @.str.76, %if.end61.return.sink.split_crit_edge ], [ @.str.79, %if.end69.return.sink.split_crit_edge ], [ @.str.82, %pidff_find_special_keys.exit311.return.sink.split_crit_edge ], [ @.str.85, %if.end93.return.sink.split_crit_edge ], [ @.str.85, %for.inc9.i336.return.sink.split_crit_edge ], [ @.str.85, %for.inc9.i336.1.return.sink.split_crit_edge ], [ @.str.88, %if.end102.return.sink.split_crit_edge ], [ @.str.88, %for.inc9.i362.return.sink.split_crit_edge ], [ @.str.88, %for.inc9.i362.1.return.sink.split_crit_edge ], [ @.str.88, %for.inc.i358.1.return.sink.split_crit_edge ], [ @.str.85, %for.inc.i332.1.return.sink.split_crit_edge ]
  %161 = ptrtoint ptr %pidff to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %pidff, align 4
  %dev111 = getelementptr inbounds %struct.hid_device, ptr %162, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev111, ptr noundef nonnull %.str.88.sink) #10
  br label %return

return:                                           ; preds = %return.sink.split, %for.inc9.i362.1.return_crit_edge
  %retval.0 = phi i32 [ 0, %for.inc9.i362.1.return_crit_edge ], [ -1, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pidff_request_effect_upload(ptr nocapture noundef readonly %pidff, i32 noundef %efnum) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %create_new_effect_type = getelementptr inbounds %struct.pidff_device, ptr %pidff, i32 0, i32 13
  %0 = ptrtoint ptr %create_new_effect_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %create_new_effect_type, align 4
  %value = getelementptr inbounds %struct.hid_field, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %value, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %efnum, ptr %3, align 4
  %5 = ptrtoint ptr %pidff to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pidff, align 4
  %arrayidx1 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 1, i32 7
  %7 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx1, align 4
  tail call void @hid_hw_request(ptr noundef %6, ptr noundef %8, i32 noundef 9) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pidff_request_effect_upload.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pidff_request_effect_upload, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !266

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %pidff to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pidff, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %10, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pidff_request_effect_upload.__UNIQUE_ID_ddebug235, ptr noundef %dev, ptr noundef nonnull @.str.106, i32 noundef %efnum) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %value6 = getelementptr inbounds %struct.pidff_device, ptr %pidff, i32 0, i32 9, i32 0, i32 1
  %11 = ptrtoint ptr %value6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %value6, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %12, align 4
  %block_load_status = getelementptr inbounds %struct.pidff_device, ptr %pidff, i32 0, i32 17
  %14 = ptrtoint ptr %block_load_status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %block_load_status, align 4
  %value8 = getelementptr inbounds %struct.hid_field, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %value8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %value8, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %17, align 4
  %19 = ptrtoint ptr %pidff to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pidff, align 4
  %ll_driver.i = getelementptr inbounds %struct.hid_device, ptr %20, i32 0, i32 20
  %21 = ptrtoint ptr %ll_driver.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ll_driver.i, align 4
  %wait.i = getelementptr inbounds %struct.hid_ll_driver, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %wait.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wait.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %do.end.hid_hw_wait.exit_crit_edge, label %if.then.i

do.end.hid_hw_wait.exit_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %hid_hw_wait.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %24(ptr noundef %20) #6
  br label %hid_hw_wait.exit

hid_hw_wait.exit:                                 ; preds = %if.then.i, %do.end.hid_hw_wait.exit_crit_edge
  %arrayidx31 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 1, i32 4
  %status_id = getelementptr inbounds %struct.pidff_device, ptr %pidff, i32 0, i32 21
  %arrayidx70 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 21, i32 1
  br label %do.body11

for.cond:                                         ; preds = %if.end65
  %inc = add nuw nsw i32 %j.0153, 1
  %exitcond.not = icmp eq i32 %inc, 60
  br i1 %exitcond.not, label %do.end106, label %for.cond.do.body11_crit_edge

for.cond.do.body11_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11

do.body11:                                        ; preds = %for.cond.do.body11_crit_edge, %hid_hw_wait.exit
  %j.0153 = phi i32 [ 0, %hid_hw_wait.exit ], [ %inc, %for.cond.do.body11_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pidff_request_effect_upload.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pidff_request_effect_upload, %if.then23)) #6
          to label %do.end28 [label %if.then23], !srcloc !266

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %pidff to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pidff, align 4
  %dev25 = getelementptr inbounds %struct.hid_device, ptr %26, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pidff_request_effect_upload.__UNIQUE_ID_ddebug236, ptr noundef %dev25, ptr noundef nonnull @.str.107) #6
  br label %do.end28

do.end28:                                         ; preds = %if.then23, %do.body11
  %27 = ptrtoint ptr %pidff to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pidff, align 4
  %29 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx31, align 4
  tail call void @hid_hw_request(ptr noundef %28, ptr noundef %30, i32 noundef 1) #6
  %31 = ptrtoint ptr %pidff to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pidff, align 4
  %ll_driver.i143 = getelementptr inbounds %struct.hid_device, ptr %32, i32 0, i32 20
  %33 = ptrtoint ptr %ll_driver.i143 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ll_driver.i143, align 4
  %wait.i144 = getelementptr inbounds %struct.hid_ll_driver, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %wait.i144 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wait.i144, align 4
  %tobool.not.i145 = icmp eq ptr %36, null
  br i1 %tobool.not.i145, label %do.end28.hid_hw_wait.exit148_crit_edge, label %if.then.i147

do.end28.hid_hw_wait.exit148_crit_edge:           ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %hid_hw_wait.exit148

if.then.i147:                                     ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #8
  %call.i146 = tail call i32 %36(ptr noundef %32) #6
  br label %hid_hw_wait.exit148

hid_hw_wait.exit148:                              ; preds = %if.then.i147, %do.end28.hid_hw_wait.exit148_crit_edge
  %37 = ptrtoint ptr %block_load_status to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %block_load_status, align 4
  %value34 = getelementptr inbounds %struct.hid_field, ptr %38, i32 0, i32 10
  %39 = ptrtoint ptr %value34 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %value34, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %43 = ptrtoint ptr %status_id to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %status_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp37 = icmp eq i32 %42, %44
  br i1 %cmp37, label %do.body39, label %if.end65

do.body39:                                        ; preds = %hid_hw_wait.exit148
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pidff_request_effect_upload.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pidff_request_effect_upload, %if.then51)) #6
          to label %cleanup [label %if.then51], !srcloc !266

if.then51:                                        ; preds = %do.body39
  %45 = ptrtoint ptr %pidff to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pidff, align 4
  %dev53 = getelementptr inbounds %struct.hid_device, ptr %46, i32 0, i32 18
  %value56 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 9, i32 1, i32 1
  %47 = ptrtoint ptr %value56 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %value56, align 4
  %tobool57.not = icmp eq ptr %48, null
  br i1 %tobool57.not, label %if.then51.cond.end_crit_edge, label %cond.true

if.then51.cond.end_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then51.cond.end_crit_edge
  %cond = phi i32 [ %50, %cond.true ], [ -1, %if.then51.cond.end_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pidff_request_effect_upload.__UNIQUE_ID_ddebug237, ptr noundef %dev53, ptr noundef nonnull @.str.108, i32 noundef %cond) #6
  br label %cleanup

if.end65:                                         ; preds = %hid_hw_wait.exit148
  %51 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx70, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %52)
  %cmp71 = icmp eq i32 %42, %52
  br i1 %cmp71, label %do.body73, label %for.cond

do.body73:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pidff_request_effect_upload.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pidff_request_effect_upload, %if.then85)) #6
          to label %cleanup [label %if.then85], !srcloc !266

if.then85:                                        ; preds = %do.body73
  %53 = ptrtoint ptr %pidff to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pidff, align 4
  %dev87 = getelementptr inbounds %struct.hid_device, ptr %54, i32 0, i32 18
  %value90 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 9, i32 1, i32 1
  %55 = ptrtoint ptr %value90 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %value90, align 4
  %tobool91.not = icmp eq ptr %56, null
  br i1 %tobool91.not, label %if.then85.cond.end98_crit_edge, label %cond.true92

if.then85.cond.end98_crit_edge:                   ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end98

cond.true92:                                      ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  br label %cond.end98

cond.end98:                                       ; preds = %cond.true92, %if.then85.cond.end98_crit_edge
  %cond99 = phi i32 [ %58, %cond.true92 ], [ -1, %if.then85.cond.end98_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pidff_request_effect_upload.__UNIQUE_ID_ddebug238, ptr noundef %dev87, ptr noundef nonnull @.str.109, i32 noundef %cond99) #6
  br label %cleanup

do.end106:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %pidff to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pidff, align 4
  %dev108 = getelementptr inbounds %struct.hid_device, ptr %60, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev108, ptr noundef nonnull @.str.110) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end106, %cond.end98, %do.body73, %cond.end, %do.body39
  %retval.0 = phi i32 [ -5, %do.end106 ], [ 0, %cond.end ], [ -28, %cond.end98 ], [ 0, %do.body39 ], [ -28, %do.body73 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pidff_autocenter(ptr noundef readonly %pidff, i16 noundef zeroext %magnitude) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %block_load = getelementptr inbounds %struct.pidff_device, ptr %pidff, i32 0, i32 9
  %0 = ptrtoint ptr %block_load to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block_load, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %magnitude)
  %tobool.not = icmp eq i16 %magnitude, 0
  %logical_minimum = getelementptr inbounds %struct.hid_field, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %logical_minimum to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %logical_minimum, align 4
  %value.i = getelementptr inbounds %struct.pidff_device, ptr %pidff, i32 0, i32 11, i32 0, i32 1
  %4 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %value.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %5, align 4
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx2.i = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 22, i32 1
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx2.i, align 4
  %effect_operation_status.i = getelementptr inbounds %struct.pidff_device, ptr %pidff, i32 0, i32 18
  %9 = ptrtoint ptr %effect_operation_status.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %effect_operation_status.i, align 4
  %value3.i = getelementptr inbounds %struct.hid_field, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %value3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %value3.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %8, ptr %12, align 4
  %arrayidx14.i = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 1, i32 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %operation_id5.i = getelementptr inbounds %struct.pidff_device, ptr %pidff, i32 0, i32 22
  %14 = ptrtoint ptr %operation_id5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %operation_id5.i, align 4
  %effect_operation_status7.i = getelementptr inbounds %struct.pidff_device, ptr %pidff, i32 0, i32 18
  %16 = ptrtoint ptr %effect_operation_status7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %effect_operation_status7.i, align 4
  %value8.i = getelementptr inbounds %struct.hid_field, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %value8.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %value8.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %15, ptr %19, align 4
  %value12.i = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 11, i32 1, i32 1
  %21 = ptrtoint ptr %value12.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %value12.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %22, align 4
  %24 = ptrtoint ptr %pidff to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pidff, align 4
  %arrayidx14.i52 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %arrayidx14.i52 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx14.i52, align 4
  tail call void @hid_hw_request(ptr noundef %25, ptr noundef %27, i32 noundef 9) #6
  %28 = ptrtoint ptr %block_load to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %block_load, align 4
  %logical_minimum6 = getelementptr inbounds %struct.hid_field, ptr %29, i32 0, i32 11
  %30 = ptrtoint ptr %logical_minimum6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %logical_minimum6, align 4
  %value = getelementptr inbounds %struct.pidff_device, ptr %pidff, i32 0, i32 2, i32 0, i32 1
  %32 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %value, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %31, ptr %33, align 4
  %arrayidx9 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 20, i32 7
  %35 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx9, align 4
  %set_effect_type = getelementptr inbounds %struct.pidff_device, ptr %pidff, i32 0, i32 14
  %37 = ptrtoint ptr %set_effect_type to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %set_effect_type, align 4
  %value10 = getelementptr inbounds %struct.hid_field, ptr %38, i32 0, i32 10
  %39 = ptrtoint ptr %value10 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %value10, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %36, ptr %40, align 4
  %value14 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 2, i32 1, i32 1
  %42 = ptrtoint ptr %value14 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %value14, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %43, align 4
  %value18 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 2, i32 3, i32 1
  %45 = ptrtoint ptr %value18 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %value18, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %46, align 4
  %value22 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 2, i32 4, i32 1
  %48 = ptrtoint ptr %value22 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %value22, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %49, align 4
  %arrayidx25 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 2, i32 2
  %conv.i = zext i16 %magnitude to i32
  %51 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx25, align 4
  %logical_maximum.i.i = getelementptr inbounds %struct.hid_field, ptr %52, i32 0, i32 12
  %53 = ptrtoint ptr %logical_maximum.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %logical_maximum.i.i, align 4
  %logical_minimum.i.i = getelementptr inbounds %struct.hid_field, ptr %52, i32 0, i32 11
  %55 = ptrtoint ptr %logical_minimum.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %logical_minimum.i.i, align 4
  %sub.i.i = sub i32 %54, %56
  %mul.i.i = mul i32 %sub.i.i, %conv.i
  %div.i.i = sdiv i32 %mul.i.i, 65535
  %add.i.i = add i32 %div.i.i, %56
  %value1.i = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 2, i32 2, i32 1
  %57 = ptrtoint ptr %value1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %value1.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %add.i.i, ptr %58, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pidff_set.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pidff_autocenter, %if.then.i)) #6
          to label %pidff_set.exit [label %if.then.i], !srcloc !266

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %value1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %value1.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pidff_set.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.99, i32 noundef %conv.i, i32 noundef %63) #6
  br label %pidff_set.exit

pidff_set.exit:                                   ; preds = %if.then.i, %if.end
  %value28 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 2, i32 5, i32 1
  %64 = ptrtoint ptr %value28 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %value28, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %65, align 4
  %value32 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 2, i32 6, i32 1
  %67 = ptrtoint ptr %value32 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %value32, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %68, align 4
  %reports = getelementptr inbounds %struct.pidff_device, ptr %pidff, i32 0, i32 1
  br label %cleanup

cleanup:                                          ; preds = %pidff_set.exit, %if.then
  %reports.sink = phi ptr [ %reports, %pidff_set.exit ], [ %arrayidx14.i, %if.then ]
  %70 = ptrtoint ptr %pidff to i32
  call void @__asan_load4_noabort(i32 %70)
  %.sink = load ptr, ptr %pidff, align 4
  %71 = ptrtoint ptr %reports.sink to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %reports.sink, align 4
  tail call void @hid_hw_request(ptr noundef %.sink, ptr noundef %72, i32 noundef 9) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pidff_set_effect_report(ptr nocapture noundef readonly %pidff, ptr nocapture noundef readonly %effect) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.pidff_device, ptr %pidff, i32 0, i32 9, i32 0, i32 1
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %value, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %value3 = getelementptr inbounds %struct.pidff_device, ptr %pidff, i32 0, i32 2, i32 0, i32 1
  %4 = ptrtoint ptr %value3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %value3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %5, align 4
  %create_new_effect_type = getelementptr inbounds %struct.pidff_device, ptr %pidff, i32 0, i32 13
  %7 = ptrtoint ptr %create_new_effect_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %create_new_effect_type, align 4
  %value5 = getelementptr inbounds %struct.hid_field, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %value5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %value5, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %set_effect_type = getelementptr inbounds %struct.pidff_device, ptr %pidff, i32 0, i32 14
  %13 = ptrtoint ptr %set_effect_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_effect_type, align 4
  %value7 = getelementptr inbounds %struct.hid_field, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %value7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %value7, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %12, ptr %16, align 4
  %replay = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 4
  %18 = ptrtoint ptr %replay to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %replay, align 2
  %conv = zext i16 %19 to i32
  %value11 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 2, i32 1, i32 1
  %20 = ptrtoint ptr %value11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %value11, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv, ptr %21, align 4
  %trigger = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 3
  %23 = ptrtoint ptr %trigger to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %trigger, align 2
  %conv13 = zext i16 %24 to i32
  %value16 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 2, i32 3, i32 1
  %25 = ptrtoint ptr %value16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %value16, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv13, ptr %26, align 4
  %interval = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %interval to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %interval, align 2
  %conv19 = zext i16 %29 to i32
  %value22 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 2, i32 4, i32 1
  %30 = ptrtoint ptr %value22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %value22, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv19, ptr %31, align 4
  %arrayidx25 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 2, i32 2
  %33 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx25, align 4
  %logical_maximum = getelementptr inbounds %struct.hid_field, ptr %34, i32 0, i32 12
  %35 = ptrtoint ptr %logical_maximum to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %logical_maximum, align 4
  %value28 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 2, i32 2, i32 1
  %37 = ptrtoint ptr %value28 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %value28, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %36, ptr %38, align 4
  %value32 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 2, i32 5, i32 1
  %40 = ptrtoint ptr %value32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %value32, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %41, align 4
  %direction = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 2
  %43 = ptrtoint ptr %direction to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %direction, align 4
  %conv34 = zext i16 %44 to i32
  %effect_direction = getelementptr inbounds %struct.pidff_device, ptr %pidff, i32 0, i32 15
  %45 = ptrtoint ptr %effect_direction to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %effect_direction, align 4
  %logical_maximum.i = getelementptr inbounds %struct.hid_field, ptr %46, i32 0, i32 12
  %47 = ptrtoint ptr %logical_maximum.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %logical_maximum.i, align 4
  %logical_minimum.i = getelementptr inbounds %struct.hid_field, ptr %46, i32 0, i32 11
  %49 = ptrtoint ptr %logical_minimum.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %logical_minimum.i, align 4
  %sub.i = sub i32 %48, %50
  %mul.i = mul i32 %sub.i, %conv34
  %div.i = sdiv i32 %mul.i, 65535
  %add.i = add i32 %div.i, %50
  %value36 = getelementptr inbounds %struct.hid_field, ptr %46, i32 0, i32 10
  %51 = ptrtoint ptr %value36 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %value36, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add.i, ptr %52, align 4
  %delay = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 4, i32 1
  %54 = ptrtoint ptr %delay to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %delay, align 2
  %conv39 = zext i16 %55 to i32
  %value42 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 2, i32 6, i32 1
  %56 = ptrtoint ptr %value42 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %value42, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv39, ptr %57, align 4
  %59 = ptrtoint ptr %pidff to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pidff, align 4
  %reports = getelementptr inbounds %struct.pidff_device, ptr %pidff, i32 0, i32 1
  %61 = ptrtoint ptr %reports to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %reports, align 4
  tail call void @hid_hw_request(ptr noundef %60, ptr noundef %62, i32 noundef 9) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pidff_set_constant_force_report(ptr nocapture noundef readonly %pidff, ptr nocapture noundef readonly %effect) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.pidff_device, ptr %pidff, i32 0, i32 9, i32 0, i32 1
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %value, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %value3 = getelementptr inbounds %struct.pidff_device, ptr %pidff, i32 0, i32 6, i32 0, i32 1
  %4 = ptrtoint ptr %value3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %value3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %5, align 4
  %arrayidx6 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 6, i32 1
  %u = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %7 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %u, align 4
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx6, align 4
  %logical_minimum.i = getelementptr inbounds %struct.hid_field, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %logical_minimum.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %logical_minimum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i = icmp slt i32 %12, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp.i.i = icmp eq i16 %8, 0
  br i1 %cmp.i.i, label %if.then.i.do.body.i_crit_edge, label %cond.false.i.i

if.then.i.do.body.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

cond.false.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = sext i16 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp1.i.i = icmp sgt i16 %8, 0
  %logical_maximum.i.i = getelementptr inbounds %struct.hid_field, ptr %10, i32 0, i32 12
  %logical_maximum.sink.i.i = select i1 %cmp1.i.i, ptr %logical_maximum.i.i, ptr %logical_minimum.i
  %.sink.i.i = select i1 %cmp1.i.i, i32 32767, i32 -32768
  %13 = ptrtoint ptr %logical_maximum.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %logical_maximum.sink.i.i, align 4
  %mul.i.i = mul i32 %14, %conv.i
  %div.i.i = sdiv i32 %mul.i.i, %.sink.i.i
  br label %do.body.i

if.else.i:                                        ; preds = %entry
  %conv3.i = sext i16 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp4.i = icmp slt i16 %8, 0
  %logical_maximum.i38.i = getelementptr inbounds %struct.hid_field, ptr %10, i32 0, i32 12
  %15 = ptrtoint ptr %logical_maximum.i38.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %logical_maximum.i38.i, align 4
  br i1 %cmp4.i, label %if.then6.i, label %if.else12.i

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.neg.i = sub i32 %12, %16
  %.neg.i = mul i32 %sub.i.neg.i, %conv3.i
  %div.i41.i = sdiv i32 %.neg.i, 32768
  %add.i.i = add i32 %div.i41.i, %12
  br label %do.body.i

if.else12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i44.i = sub i32 %16, %12
  %mul.i45.i = mul i32 %sub.i44.i, %conv3.i
  %div.i46.i = sdiv i32 %mul.i45.i, 32767
  %add.i47.i = add i32 %div.i46.i, %12
  br label %do.body.i

do.body.i:                                        ; preds = %if.else12.i, %if.then6.i, %cond.false.i.i, %if.then.i.do.body.i_crit_edge
  %cond7.i.sink.i = phi i32 [ %add.i47.i, %if.else12.i ], [ %add.i.i, %if.then6.i ], [ 0, %if.then.i.do.body.i_crit_edge ], [ %div.i.i, %cond.false.i.i ]
  %value2.i = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 6, i32 1, i32 1
  %17 = ptrtoint ptr %value2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %value2.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cond7.i.sink.i, ptr %18, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pidff_set_signed.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pidff_set_constant_force_report, %if.then22.i)) #6
          to label %pidff_set_signed.exit [label %if.then22.i], !srcloc !266

if.then22.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv23.i = sext i16 %8 to i32
  %20 = ptrtoint ptr %value2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %value2.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pidff_set_signed.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.99, i32 noundef %conv23.i, i32 noundef %23) #6
  br label %pidff_set_signed.exit

pidff_set_signed.exit:                            ; preds = %if.then22.i, %do.body.i
  %24 = ptrtoint ptr %pidff to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pidff, align 4
  %arrayidx7 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 1, i32 11
  %26 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx7, align 4
  tail call void @hid_hw_request(ptr noundef %25, ptr noundef %27, i32 noundef 9) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pidff_set_envelope_report(ptr nocapture noundef readonly %pidff, ptr nocapture noundef readonly %envelope) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.pidff_device, ptr %pidff, i32 0, i32 9, i32 0, i32 1
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %value, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %value3 = getelementptr inbounds %struct.pidff_device, ptr %pidff, i32 0, i32 3, i32 0, i32 1
  %4 = ptrtoint ptr %value3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %value3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %5, align 4
  %attack_level = getelementptr inbounds %struct.ff_envelope, ptr %envelope, i32 0, i32 1
  %7 = ptrtoint ptr %attack_level to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %attack_level, align 2
  %9 = tail call i16 @llvm.umin.i16(i16 %8, i16 32767)
  %spec.select = zext i16 %9 to i32
  %arrayidx9 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx9, align 4
  %logical_maximum.i = getelementptr inbounds %struct.hid_field, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %logical_maximum.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %logical_maximum.i, align 4
  %logical_minimum.i = getelementptr inbounds %struct.hid_field, ptr %11, i32 0, i32 11
  %14 = ptrtoint ptr %logical_minimum.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %logical_minimum.i, align 4
  %sub.i = sub i32 %13, %15
  %mul.i = mul i32 %sub.i, %spec.select
  %div.i = sdiv i32 %mul.i, 32767
  %add.i = add i32 %div.i, %15
  %value12 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 3, i32 1, i32 1
  %16 = ptrtoint ptr %value12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %value12, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add.i, ptr %17, align 4
  %fade_level = getelementptr inbounds %struct.ff_envelope, ptr %envelope, i32 0, i32 3
  %19 = ptrtoint ptr %fade_level to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %fade_level, align 2
  %21 = tail call i16 @llvm.umin.i16(i16 %20, i16 32767)
  %cond22 = zext i16 %21 to i32
  %arrayidx24 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx24, align 4
  %logical_maximum.i69 = getelementptr inbounds %struct.hid_field, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %logical_maximum.i69 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %logical_maximum.i69, align 4
  %logical_minimum.i70 = getelementptr inbounds %struct.hid_field, ptr %23, i32 0, i32 11
  %26 = ptrtoint ptr %logical_minimum.i70 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %logical_minimum.i70, align 4
  %sub.i71 = sub i32 %25, %27
  %mul.i72 = mul i32 %sub.i71, %cond22
  %div.i73 = sdiv i32 %mul.i72, 32767
  %add.i74 = add i32 %div.i73, %27
  %value29 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 3, i32 3, i32 1
  %28 = ptrtoint ptr %value29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %value29, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add.i74, ptr %29, align 4
  %31 = ptrtoint ptr %envelope to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %envelope, align 2
  %conv31 = zext i16 %32 to i32
  %value34 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 3, i32 2, i32 1
  %33 = ptrtoint ptr %value34 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %value34, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv31, ptr %34, align 4
  %fade_length = getelementptr inbounds %struct.ff_envelope, ptr %envelope, i32 0, i32 2
  %36 = ptrtoint ptr %fade_length to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %fade_length, align 2
  %conv36 = zext i16 %37 to i32
  %value39 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 3, i32 4, i32 1
  %38 = ptrtoint ptr %value39 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %value39, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv36, ptr %39, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pidff_set_envelope_report.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pidff_set_envelope_report, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !266

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %pidff to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pidff, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %42, i32 0, i32 18
  %43 = ptrtoint ptr %attack_level to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %attack_level, align 2
  %conv45 = zext i16 %44 to i32
  %45 = ptrtoint ptr %value12 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %value12, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pidff_set_envelope_report.__UNIQUE_ID_ddebug234, ptr noundef %dev, ptr noundef nonnull @.str.119, i32 noundef %conv45, i32 noundef %48) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %49 = ptrtoint ptr %pidff to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pidff, align 4
  %arrayidx51 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 1, i32 8
  %51 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx51, align 4
  tail call void @hid_hw_request(ptr noundef %50, ptr noundef %52, i32 noundef 9) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pidff_set_periodic_report(ptr nocapture noundef readonly %pidff, ptr nocapture noundef readonly %effect) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.pidff_device, ptr %pidff, i32 0, i32 9, i32 0, i32 1
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %value, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %value3 = getelementptr inbounds %struct.pidff_device, ptr %pidff, i32 0, i32 5, i32 0, i32 1
  %4 = ptrtoint ptr %value3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %value3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %5, align 4
  %arrayidx6 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 5, i32 1
  %magnitude = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 2
  %7 = ptrtoint ptr %magnitude to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %magnitude, align 4
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx6, align 4
  %logical_minimum.i = getelementptr inbounds %struct.hid_field, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %logical_minimum.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %logical_minimum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i = icmp slt i32 %12, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp.i.i = icmp eq i16 %8, 0
  br i1 %cmp.i.i, label %if.then.i.do.body.i_crit_edge, label %cond.false.i.i

if.then.i.do.body.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

cond.false.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = sext i16 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp1.i.i = icmp sgt i16 %8, 0
  %logical_maximum.i.i = getelementptr inbounds %struct.hid_field, ptr %10, i32 0, i32 12
  %logical_maximum.sink.i.i = select i1 %cmp1.i.i, ptr %logical_maximum.i.i, ptr %logical_minimum.i
  %.sink.i.i = select i1 %cmp1.i.i, i32 32767, i32 -32768
  %13 = ptrtoint ptr %logical_maximum.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %logical_maximum.sink.i.i, align 4
  %mul.i.i = mul i32 %14, %conv.i
  %div.i.i = sdiv i32 %mul.i.i, %.sink.i.i
  br label %do.body.i

if.else.i:                                        ; preds = %entry
  %conv3.i = sext i16 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp4.i = icmp slt i16 %8, 0
  %logical_maximum.i38.i = getelementptr inbounds %struct.hid_field, ptr %10, i32 0, i32 12
  %15 = ptrtoint ptr %logical_maximum.i38.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %logical_maximum.i38.i, align 4
  br i1 %cmp4.i, label %if.then6.i, label %if.else12.i

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.neg.i = sub i32 %12, %16
  %.neg.i = mul i32 %sub.i.neg.i, %conv3.i
  %div.i41.i = sdiv i32 %.neg.i, 32768
  %add.i.i = add i32 %div.i41.i, %12
  br label %do.body.i

if.else12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i44.i = sub i32 %16, %12
  %mul.i45.i = mul i32 %sub.i44.i, %conv3.i
  %div.i46.i = sdiv i32 %mul.i45.i, 32767
  %add.i47.i = add i32 %div.i46.i, %12
  br label %do.body.i

do.body.i:                                        ; preds = %if.else12.i, %if.then6.i, %cond.false.i.i, %if.then.i.do.body.i_crit_edge
  %cond7.i.sink.i = phi i32 [ %add.i47.i, %if.else12.i ], [ %add.i.i, %if.then6.i ], [ 0, %if.then.i.do.body.i_crit_edge ], [ %div.i.i, %cond.false.i.i ]
  %value2.i = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 5, i32 1, i32 1
  %17 = ptrtoint ptr %value2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %value2.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cond7.i.sink.i, ptr %18, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pidff_set_signed.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pidff_set_periodic_report, %if.then22.i)) #6
          to label %pidff_set_signed.exit [label %if.then22.i], !srcloc !266

if.then22.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv23.i = sext i16 %8 to i32
  %20 = ptrtoint ptr %value2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %value2.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pidff_set_signed.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.99, i32 noundef %conv23.i, i32 noundef %23) #6
  br label %pidff_set_signed.exit

pidff_set_signed.exit:                            ; preds = %if.then22.i, %do.body.i
  %arrayidx8 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 5, i32 2
  %offset = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 3
  %24 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %offset, align 2
  %26 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx8, align 4
  %logical_minimum.i29 = getelementptr inbounds %struct.hid_field, ptr %27, i32 0, i32 11
  %28 = ptrtoint ptr %logical_minimum.i29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %logical_minimum.i29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i30 = icmp slt i32 %29, 0
  br i1 %cmp.i30, label %if.then.i32, label %if.else.i44

if.then.i32:                                      ; preds = %pidff_set_signed.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp.i.i31 = icmp eq i16 %25, 0
  br i1 %cmp.i.i31, label %if.then.i32.do.body.i57_crit_edge, label %cond.false.i.i40

if.then.i32.do.body.i57_crit_edge:                ; preds = %if.then.i32
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i57

cond.false.i.i40:                                 ; preds = %if.then.i32
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i33 = sext i16 %25 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp1.i.i34 = icmp sgt i16 %25, 0
  %logical_maximum.i.i35 = getelementptr inbounds %struct.hid_field, ptr %27, i32 0, i32 12
  %logical_maximum.sink.i.i36 = select i1 %cmp1.i.i34, ptr %logical_maximum.i.i35, ptr %logical_minimum.i29
  %.sink.i.i37 = select i1 %cmp1.i.i34, i32 32767, i32 -32768
  %30 = ptrtoint ptr %logical_maximum.sink.i.i36 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %logical_maximum.sink.i.i36, align 4
  %mul.i.i38 = mul i32 %31, %conv.i33
  %div.i.i39 = sdiv i32 %mul.i.i38, %.sink.i.i37
  br label %do.body.i57

if.else.i44:                                      ; preds = %pidff_set_signed.exit
  %conv3.i41 = sext i16 %25 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp4.i42 = icmp slt i16 %25, 0
  %logical_maximum.i38.i43 = getelementptr inbounds %struct.hid_field, ptr %27, i32 0, i32 12
  %32 = ptrtoint ptr %logical_maximum.i38.i43 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %logical_maximum.i38.i43, align 4
  br i1 %cmp4.i42, label %if.then6.i49, label %if.else12.i54

if.then6.i49:                                     ; preds = %if.else.i44
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.neg.i45 = sub i32 %29, %33
  %.neg.i46 = mul i32 %sub.i.neg.i45, %conv3.i41
  %div.i41.i47 = sdiv i32 %.neg.i46, 32768
  %add.i.i48 = add i32 %div.i41.i47, %29
  br label %do.body.i57

if.else12.i54:                                    ; preds = %if.else.i44
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i44.i50 = sub i32 %33, %29
  %mul.i45.i51 = mul i32 %sub.i44.i50, %conv3.i41
  %div.i46.i52 = sdiv i32 %mul.i45.i51, 32767
  %add.i47.i53 = add i32 %div.i46.i52, %29
  br label %do.body.i57

do.body.i57:                                      ; preds = %if.else12.i54, %if.then6.i49, %cond.false.i.i40, %if.then.i32.do.body.i57_crit_edge
  %cond7.i.sink.i55 = phi i32 [ %add.i47.i53, %if.else12.i54 ], [ %add.i.i48, %if.then6.i49 ], [ 0, %if.then.i32.do.body.i57_crit_edge ], [ %div.i.i39, %cond.false.i.i40 ]
  %value2.i56 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 5, i32 2, i32 1
  %34 = ptrtoint ptr %value2.i56 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %value2.i56, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %cond7.i.sink.i55, ptr %35, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pidff_set_signed.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pidff_set_periodic_report, %if.then22.i60)) #6
          to label %pidff_set_signed.exit61 [label %if.then22.i60], !srcloc !266

if.then22.i60:                                    ; preds = %do.body.i57
  call void @__sanitizer_cov_trace_pc() #8
  %conv23.i58 = sext i16 %25 to i32
  %37 = ptrtoint ptr %value2.i56 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %value2.i56, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pidff_set_signed.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.99, i32 noundef %conv23.i58, i32 noundef %40) #6
  br label %pidff_set_signed.exit61

pidff_set_signed.exit61:                          ; preds = %if.then22.i60, %do.body.i57
  %arrayidx11 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 5, i32 3
  %phase = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 4
  %41 = ptrtoint ptr %phase to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %phase, align 4
  %conv.i62 = zext i16 %42 to i32
  %43 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx11, align 4
  %logical_maximum.i.i63 = getelementptr inbounds %struct.hid_field, ptr %44, i32 0, i32 12
  %45 = ptrtoint ptr %logical_maximum.i.i63 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %logical_maximum.i.i63, align 4
  %logical_minimum.i.i = getelementptr inbounds %struct.hid_field, ptr %44, i32 0, i32 11
  %47 = ptrtoint ptr %logical_minimum.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %logical_minimum.i.i, align 4
  %sub.i.i = sub i32 %46, %48
  %mul.i.i64 = mul i32 %sub.i.i, %conv.i62
  %div.i.i65 = sdiv i32 %mul.i.i64, 65535
  %add.i.i66 = add i32 %div.i.i65, %48
  %value1.i = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 5, i32 3, i32 1
  %49 = ptrtoint ptr %value1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %value1.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add.i.i66, ptr %50, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pidff_set.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pidff_set_periodic_report, %if.then.i67)) #6
          to label %pidff_set.exit [label %if.then.i67], !srcloc !266

if.then.i67:                                      ; preds = %pidff_set_signed.exit61
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %value1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %value1.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pidff_set.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.99, i32 noundef %conv.i62, i32 noundef %55) #6
  br label %pidff_set.exit

pidff_set.exit:                                   ; preds = %if.then.i67, %pidff_set_signed.exit61
  %period = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %56 = ptrtoint ptr %period to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %period, align 2
  %conv = zext i16 %57 to i32
  %value16 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 5, i32 4, i32 1
  %58 = ptrtoint ptr %value16 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %value16, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv, ptr %59, align 4
  %61 = ptrtoint ptr %pidff to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pidff, align 4
  %arrayidx18 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 1, i32 10
  %63 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx18, align 4
  tail call void @hid_hw_request(ptr noundef %62, ptr noundef %64, i32 noundef 9) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pidff_set_ramp_force_report(ptr nocapture noundef readonly %pidff, ptr nocapture noundef readonly %effect) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.pidff_device, ptr %pidff, i32 0, i32 9, i32 0, i32 1
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %value, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %value3 = getelementptr inbounds %struct.pidff_device, ptr %pidff, i32 0, i32 7, i32 0, i32 1
  %4 = ptrtoint ptr %value3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %value3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %5, align 4
  %arrayidx6 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 7, i32 1
  %u = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %7 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %u, align 4
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx6, align 4
  %logical_minimum.i = getelementptr inbounds %struct.hid_field, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %logical_minimum.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %logical_minimum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i = icmp slt i32 %12, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp.i.i = icmp eq i16 %8, 0
  br i1 %cmp.i.i, label %if.then.i.do.body.i_crit_edge, label %cond.false.i.i

if.then.i.do.body.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

cond.false.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = sext i16 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp1.i.i = icmp sgt i16 %8, 0
  %logical_maximum.i.i = getelementptr inbounds %struct.hid_field, ptr %10, i32 0, i32 12
  %logical_maximum.sink.i.i = select i1 %cmp1.i.i, ptr %logical_maximum.i.i, ptr %logical_minimum.i
  %.sink.i.i = select i1 %cmp1.i.i, i32 32767, i32 -32768
  %13 = ptrtoint ptr %logical_maximum.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %logical_maximum.sink.i.i, align 4
  %mul.i.i = mul i32 %14, %conv.i
  %div.i.i = sdiv i32 %mul.i.i, %.sink.i.i
  br label %do.body.i

if.else.i:                                        ; preds = %entry
  %conv3.i = sext i16 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp4.i = icmp slt i16 %8, 0
  %logical_maximum.i38.i = getelementptr inbounds %struct.hid_field, ptr %10, i32 0, i32 12
  %15 = ptrtoint ptr %logical_maximum.i38.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %logical_maximum.i38.i, align 4
  br i1 %cmp4.i, label %if.then6.i, label %if.else12.i

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.neg.i = sub i32 %12, %16
  %.neg.i = mul i32 %sub.i.neg.i, %conv3.i
  %div.i41.i = sdiv i32 %.neg.i, 32768
  %add.i.i = add i32 %div.i41.i, %12
  br label %do.body.i

if.else12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i44.i = sub i32 %16, %12
  %mul.i45.i = mul i32 %sub.i44.i, %conv3.i
  %div.i46.i = sdiv i32 %mul.i45.i, 32767
  %add.i47.i = add i32 %div.i46.i, %12
  br label %do.body.i

do.body.i:                                        ; preds = %if.else12.i, %if.then6.i, %cond.false.i.i, %if.then.i.do.body.i_crit_edge
  %cond7.i.sink.i = phi i32 [ %add.i47.i, %if.else12.i ], [ %add.i.i, %if.then6.i ], [ 0, %if.then.i.do.body.i_crit_edge ], [ %div.i.i, %cond.false.i.i ]
  %value2.i = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 7, i32 1, i32 1
  %17 = ptrtoint ptr %value2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %value2.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cond7.i.sink.i, ptr %18, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pidff_set_signed.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pidff_set_ramp_force_report, %if.then22.i)) #6
          to label %pidff_set_signed.exit [label %if.then22.i], !srcloc !266

if.then22.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv23.i = sext i16 %8 to i32
  %20 = ptrtoint ptr %value2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %value2.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pidff_set_signed.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.99, i32 noundef %conv23.i, i32 noundef %23) #6
  br label %pidff_set_signed.exit

pidff_set_signed.exit:                            ; preds = %if.then22.i, %do.body.i
  %arrayidx8 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 7, i32 2
  %end_level = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %24 = ptrtoint ptr %end_level to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %end_level, align 2
  %26 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx8, align 4
  %logical_minimum.i17 = getelementptr inbounds %struct.hid_field, ptr %27, i32 0, i32 11
  %28 = ptrtoint ptr %logical_minimum.i17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %logical_minimum.i17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i18 = icmp slt i32 %29, 0
  br i1 %cmp.i18, label %if.then.i20, label %if.else.i32

if.then.i20:                                      ; preds = %pidff_set_signed.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp.i.i19 = icmp eq i16 %25, 0
  br i1 %cmp.i.i19, label %if.then.i20.do.body.i45_crit_edge, label %cond.false.i.i28

if.then.i20.do.body.i45_crit_edge:                ; preds = %if.then.i20
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i45

cond.false.i.i28:                                 ; preds = %if.then.i20
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i21 = sext i16 %25 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp1.i.i22 = icmp sgt i16 %25, 0
  %logical_maximum.i.i23 = getelementptr inbounds %struct.hid_field, ptr %27, i32 0, i32 12
  %logical_maximum.sink.i.i24 = select i1 %cmp1.i.i22, ptr %logical_maximum.i.i23, ptr %logical_minimum.i17
  %.sink.i.i25 = select i1 %cmp1.i.i22, i32 32767, i32 -32768
  %30 = ptrtoint ptr %logical_maximum.sink.i.i24 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %logical_maximum.sink.i.i24, align 4
  %mul.i.i26 = mul i32 %31, %conv.i21
  %div.i.i27 = sdiv i32 %mul.i.i26, %.sink.i.i25
  br label %do.body.i45

if.else.i32:                                      ; preds = %pidff_set_signed.exit
  %conv3.i29 = sext i16 %25 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp4.i30 = icmp slt i16 %25, 0
  %logical_maximum.i38.i31 = getelementptr inbounds %struct.hid_field, ptr %27, i32 0, i32 12
  %32 = ptrtoint ptr %logical_maximum.i38.i31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %logical_maximum.i38.i31, align 4
  br i1 %cmp4.i30, label %if.then6.i37, label %if.else12.i42

if.then6.i37:                                     ; preds = %if.else.i32
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.neg.i33 = sub i32 %29, %33
  %.neg.i34 = mul i32 %sub.i.neg.i33, %conv3.i29
  %div.i41.i35 = sdiv i32 %.neg.i34, 32768
  %add.i.i36 = add i32 %div.i41.i35, %29
  br label %do.body.i45

if.else12.i42:                                    ; preds = %if.else.i32
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i44.i38 = sub i32 %33, %29
  %mul.i45.i39 = mul i32 %sub.i44.i38, %conv3.i29
  %div.i46.i40 = sdiv i32 %mul.i45.i39, 32767
  %add.i47.i41 = add i32 %div.i46.i40, %29
  br label %do.body.i45

do.body.i45:                                      ; preds = %if.else12.i42, %if.then6.i37, %cond.false.i.i28, %if.then.i20.do.body.i45_crit_edge
  %cond7.i.sink.i43 = phi i32 [ %add.i47.i41, %if.else12.i42 ], [ %add.i.i36, %if.then6.i37 ], [ 0, %if.then.i20.do.body.i45_crit_edge ], [ %div.i.i27, %cond.false.i.i28 ]
  %value2.i44 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 7, i32 2, i32 1
  %34 = ptrtoint ptr %value2.i44 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %value2.i44, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %cond7.i.sink.i43, ptr %35, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pidff_set_signed.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pidff_set_ramp_force_report, %if.then22.i48)) #6
          to label %pidff_set_signed.exit49 [label %if.then22.i48], !srcloc !266

if.then22.i48:                                    ; preds = %do.body.i45
  call void @__sanitizer_cov_trace_pc() #8
  %conv23.i46 = sext i16 %25 to i32
  %37 = ptrtoint ptr %value2.i44 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %value2.i44, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pidff_set_signed.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.99, i32 noundef %conv23.i46, i32 noundef %40) #6
  br label %pidff_set_signed.exit49

pidff_set_signed.exit49:                          ; preds = %if.then22.i48, %do.body.i45
  %41 = ptrtoint ptr %pidff to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pidff, align 4
  %arrayidx10 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 1, i32 12
  %43 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx10, align 4
  tail call void @hid_hw_request(ptr noundef %42, ptr noundef %44, i32 noundef 9) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pidff_set_condition_report(ptr nocapture noundef readonly %pidff, ptr nocapture noundef readonly %effect) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.pidff_device, ptr %pidff, i32 0, i32 9, i32 0, i32 1
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %value, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %value3 = getelementptr inbounds %struct.pidff_device, ptr %pidff, i32 0, i32 4, i32 0, i32 1
  %4 = ptrtoint ptr %value3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %value3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %5, align 4
  %value7 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 4, i32 1, i32 1
  %arrayidx10 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 4, i32 2
  %u = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %value2.i = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 4, i32 2, i32 1
  %arrayidx13 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 4, i32 3
  %value2.i83 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 4, i32 3, i32 1
  %arrayidx17 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 4, i32 4
  %value2.i116 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 4, i32 4, i32 1
  %arrayidx21 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 4, i32 5
  %value1.i = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 4, i32 5, i32 1
  %arrayidx25 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 4, i32 6
  %value1.i135 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 4, i32 6, i32 1
  %arrayidx29 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 4, i32 7
  %value1.i145 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 4, i32 7, i32 1
  %arrayidx32 = getelementptr %struct.pidff_device, ptr %pidff, i32 0, i32 1, i32 9
  br label %for.body

for.body:                                         ; preds = %pidff_set.exit147.for.body_crit_edge, %entry
  %cmp = phi i1 [ true, %entry ], [ false, %pidff_set.exit147.for.body_crit_edge ]
  %i.0148 = phi i32 [ 0, %entry ], [ 1, %pidff_set.exit147.for.body_crit_edge ]
  %7 = ptrtoint ptr %value7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %value7, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %i.0148, ptr %8, align 4
  %arrayidx11 = getelementptr [2 x %struct.ff_condition_effect], ptr %u, i32 0, i32 %i.0148
  %center = getelementptr [2 x %struct.ff_condition_effect], ptr %u, i32 0, i32 %i.0148, i32 5
  %10 = ptrtoint ptr %center to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %center, align 2
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx10, align 4
  %logical_minimum.i = getelementptr inbounds %struct.hid_field, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %logical_minimum.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %logical_minimum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i = icmp slt i32 %15, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp.i.i = icmp eq i16 %11, 0
  br i1 %cmp.i.i, label %if.then.i.do.body.i_crit_edge, label %cond.false.i.i

if.then.i.do.body.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

cond.false.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = sext i16 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp1.i.i = icmp sgt i16 %11, 0
  %logical_maximum.i.i = getelementptr inbounds %struct.hid_field, ptr %13, i32 0, i32 12
  %logical_maximum.sink.i.i = select i1 %cmp1.i.i, ptr %logical_maximum.i.i, ptr %logical_minimum.i
  %.sink.i.i = select i1 %cmp1.i.i, i32 32767, i32 -32768
  %16 = ptrtoint ptr %logical_maximum.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %logical_maximum.sink.i.i, align 4
  %mul.i.i = mul i32 %17, %conv.i
  %div.i.i = sdiv i32 %mul.i.i, %.sink.i.i
  br label %do.body.i

if.else.i:                                        ; preds = %for.body
  %conv3.i = sext i16 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp4.i = icmp slt i16 %11, 0
  %logical_maximum.i38.i = getelementptr inbounds %struct.hid_field, ptr %13, i32 0, i32 12
  %18 = ptrtoint ptr %logical_maximum.i38.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %logical_maximum.i38.i, align 4
  br i1 %cmp4.i, label %if.then6.i, label %if.else12.i

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.neg.i = sub i32 %15, %19
  %.neg.i = mul i32 %sub.i.neg.i, %conv3.i
  %div.i41.i = sdiv i32 %.neg.i, 32768
  %add.i.i = add i32 %div.i41.i, %15
  br label %do.body.i

if.else12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i44.i = sub i32 %19, %15
  %mul.i45.i = mul i32 %sub.i44.i, %conv3.i
  %div.i46.i = sdiv i32 %mul.i45.i, 32767
  %add.i47.i = add i32 %div.i46.i, %15
  br label %do.body.i

do.body.i:                                        ; preds = %if.else12.i, %if.then6.i, %cond.false.i.i, %if.then.i.do.body.i_crit_edge
  %cond7.i.sink.i = phi i32 [ %add.i47.i, %if.else12.i ], [ %add.i.i, %if.then6.i ], [ 0, %if.then.i.do.body.i_crit_edge ], [ %div.i.i, %cond.false.i.i ]
  %20 = ptrtoint ptr %value2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %value2.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cond7.i.sink.i, ptr %21, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pidff_set_signed.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pidff_set_condition_report, %if.then22.i)) #6
          to label %pidff_set_signed.exit [label %if.then22.i], !srcloc !266

if.then22.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv23.i = sext i16 %11 to i32
  %23 = ptrtoint ptr %value2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %value2.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pidff_set_signed.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.99, i32 noundef %conv23.i, i32 noundef %26) #6
  br label %pidff_set_signed.exit

pidff_set_signed.exit:                            ; preds = %if.then22.i, %do.body.i
  %right_coeff = getelementptr [2 x %struct.ff_condition_effect], ptr %u, i32 0, i32 %i.0148, i32 2
  %27 = ptrtoint ptr %right_coeff to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %right_coeff, align 4
  %29 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx13, align 4
  %logical_minimum.i56 = getelementptr inbounds %struct.hid_field, ptr %30, i32 0, i32 11
  %31 = ptrtoint ptr %logical_minimum.i56 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %logical_minimum.i56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i57 = icmp slt i32 %32, 0
  br i1 %cmp.i57, label %if.then.i59, label %if.else.i71

if.then.i59:                                      ; preds = %pidff_set_signed.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp.i.i58 = icmp eq i16 %28, 0
  br i1 %cmp.i.i58, label %if.then.i59.do.body.i84_crit_edge, label %cond.false.i.i67

if.then.i59.do.body.i84_crit_edge:                ; preds = %if.then.i59
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i84

cond.false.i.i67:                                 ; preds = %if.then.i59
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i60 = sext i16 %28 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp1.i.i61 = icmp sgt i16 %28, 0
  %logical_maximum.i.i62 = getelementptr inbounds %struct.hid_field, ptr %30, i32 0, i32 12
  %logical_maximum.sink.i.i63 = select i1 %cmp1.i.i61, ptr %logical_maximum.i.i62, ptr %logical_minimum.i56
  %.sink.i.i64 = select i1 %cmp1.i.i61, i32 32767, i32 -32768
  %33 = ptrtoint ptr %logical_maximum.sink.i.i63 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %logical_maximum.sink.i.i63, align 4
  %mul.i.i65 = mul i32 %34, %conv.i60
  %div.i.i66 = sdiv i32 %mul.i.i65, %.sink.i.i64
  br label %do.body.i84

if.else.i71:                                      ; preds = %pidff_set_signed.exit
  %conv3.i68 = sext i16 %28 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp4.i69 = icmp slt i16 %28, 0
  %logical_maximum.i38.i70 = getelementptr inbounds %struct.hid_field, ptr %30, i32 0, i32 12
  %35 = ptrtoint ptr %logical_maximum.i38.i70 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %logical_maximum.i38.i70, align 4
  br i1 %cmp4.i69, label %if.then6.i76, label %if.else12.i81

if.then6.i76:                                     ; preds = %if.else.i71
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.neg.i72 = sub i32 %32, %36
  %.neg.i73 = mul i32 %sub.i.neg.i72, %conv3.i68
  %div.i41.i74 = sdiv i32 %.neg.i73, 32768
  %add.i.i75 = add i32 %div.i41.i74, %32
  br label %do.body.i84

if.else12.i81:                                    ; preds = %if.else.i71
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i44.i77 = sub i32 %36, %32
  %mul.i45.i78 = mul i32 %sub.i44.i77, %conv3.i68
  %div.i46.i79 = sdiv i32 %mul.i45.i78, 32767
  %add.i47.i80 = add i32 %div.i46.i79, %32
  br label %do.body.i84

do.body.i84:                                      ; preds = %if.else12.i81, %if.then6.i76, %cond.false.i.i67, %if.then.i59.do.body.i84_crit_edge
  %cond7.i.sink.i82 = phi i32 [ %add.i47.i80, %if.else12.i81 ], [ %add.i.i75, %if.then6.i76 ], [ 0, %if.then.i59.do.body.i84_crit_edge ], [ %div.i.i66, %cond.false.i.i67 ]
  %37 = ptrtoint ptr %value2.i83 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %value2.i83, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %cond7.i.sink.i82, ptr %38, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pidff_set_signed.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pidff_set_condition_report, %if.then22.i87)) #6
          to label %pidff_set_signed.exit88 [label %if.then22.i87], !srcloc !266

if.then22.i87:                                    ; preds = %do.body.i84
  call void @__sanitizer_cov_trace_pc() #8
  %conv23.i85 = sext i16 %28 to i32
  %40 = ptrtoint ptr %value2.i83 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %value2.i83, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pidff_set_signed.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.99, i32 noundef %conv23.i85, i32 noundef %43) #6
  br label %pidff_set_signed.exit88

pidff_set_signed.exit88:                          ; preds = %if.then22.i87, %do.body.i84
  %left_coeff = getelementptr [2 x %struct.ff_condition_effect], ptr %u, i32 0, i32 %i.0148, i32 3
  %44 = ptrtoint ptr %left_coeff to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %left_coeff, align 2
  %46 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx17, align 4
  %logical_minimum.i89 = getelementptr inbounds %struct.hid_field, ptr %47, i32 0, i32 11
  %48 = ptrtoint ptr %logical_minimum.i89 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %logical_minimum.i89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp.i90 = icmp slt i32 %49, 0
  br i1 %cmp.i90, label %if.then.i92, label %if.else.i104

if.then.i92:                                      ; preds = %pidff_set_signed.exit88
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %cmp.i.i91 = icmp eq i16 %45, 0
  br i1 %cmp.i.i91, label %if.then.i92.do.body.i117_crit_edge, label %cond.false.i.i100

if.then.i92.do.body.i117_crit_edge:               ; preds = %if.then.i92
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i117

cond.false.i.i100:                                ; preds = %if.then.i92
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i93 = sext i16 %45 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %cmp1.i.i94 = icmp sgt i16 %45, 0
  %logical_maximum.i.i95 = getelementptr inbounds %struct.hid_field, ptr %47, i32 0, i32 12
  %logical_maximum.sink.i.i96 = select i1 %cmp1.i.i94, ptr %logical_maximum.i.i95, ptr %logical_minimum.i89
  %.sink.i.i97 = select i1 %cmp1.i.i94, i32 32767, i32 -32768
  %50 = ptrtoint ptr %logical_maximum.sink.i.i96 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %logical_maximum.sink.i.i96, align 4
  %mul.i.i98 = mul i32 %51, %conv.i93
  %div.i.i99 = sdiv i32 %mul.i.i98, %.sink.i.i97
  br label %do.body.i117

if.else.i104:                                     ; preds = %pidff_set_signed.exit88
  %conv3.i101 = sext i16 %45 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %cmp4.i102 = icmp slt i16 %45, 0
  %logical_maximum.i38.i103 = getelementptr inbounds %struct.hid_field, ptr %47, i32 0, i32 12
  %52 = ptrtoint ptr %logical_maximum.i38.i103 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %logical_maximum.i38.i103, align 4
  br i1 %cmp4.i102, label %if.then6.i109, label %if.else12.i114

if.then6.i109:                                    ; preds = %if.else.i104
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.neg.i105 = sub i32 %49, %53
  %.neg.i106 = mul i32 %sub.i.neg.i105, %conv3.i101
  %div.i41.i107 = sdiv i32 %.neg.i106, 32768
  %add.i.i108 = add i32 %div.i41.i107, %49
  br label %do.body.i117

if.else12.i114:                                   ; preds = %if.else.i104
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i44.i110 = sub i32 %53, %49
  %mul.i45.i111 = mul i32 %sub.i44.i110, %conv3.i101
  %div.i46.i112 = sdiv i32 %mul.i45.i111, 32767
  %add.i47.i113 = add i32 %div.i46.i112, %49
  br label %do.body.i117

do.body.i117:                                     ; preds = %if.else12.i114, %if.then6.i109, %cond.false.i.i100, %if.then.i92.do.body.i117_crit_edge
  %cond7.i.sink.i115 = phi i32 [ %add.i47.i113, %if.else12.i114 ], [ %add.i.i108, %if.then6.i109 ], [ 0, %if.then.i92.do.body.i117_crit_edge ], [ %div.i.i99, %cond.false.i.i100 ]
  %54 = ptrtoint ptr %value2.i116 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %value2.i116, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %cond7.i.sink.i115, ptr %55, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pidff_set_signed.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pidff_set_condition_report, %if.then22.i120)) #6
          to label %pidff_set_signed.exit121 [label %if.then22.i120], !srcloc !266

if.then22.i120:                                   ; preds = %do.body.i117
  call void @__sanitizer_cov_trace_pc() #8
  %conv23.i118 = sext i16 %45 to i32
  %57 = ptrtoint ptr %value2.i116 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %value2.i116, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pidff_set_signed.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.99, i32 noundef %conv23.i118, i32 noundef %60) #6
  br label %pidff_set_signed.exit121

pidff_set_signed.exit121:                         ; preds = %if.then22.i120, %do.body.i117
  %61 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx11, align 4
  %conv.i122 = zext i16 %62 to i32
  %63 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx21, align 4
  %logical_maximum.i.i123 = getelementptr inbounds %struct.hid_field, ptr %64, i32 0, i32 12
  %65 = ptrtoint ptr %logical_maximum.i.i123 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %logical_maximum.i.i123, align 4
  %logical_minimum.i.i = getelementptr inbounds %struct.hid_field, ptr %64, i32 0, i32 11
  %67 = ptrtoint ptr %logical_minimum.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %logical_minimum.i.i, align 4
  %sub.i.i = sub i32 %66, %68
  %mul.i.i124 = mul i32 %sub.i.i, %conv.i122
  %div.i.i125 = sdiv i32 %mul.i.i124, 65535
  %add.i.i126 = add i32 %div.i.i125, %68
  %69 = ptrtoint ptr %value1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %value1.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %add.i.i126, ptr %70, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pidff_set.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pidff_set_condition_report, %if.then.i127)) #6
          to label %pidff_set.exit [label %if.then.i127], !srcloc !266

if.then.i127:                                     ; preds = %pidff_set_signed.exit121
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %value1.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %value1.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pidff_set.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.99, i32 noundef %conv.i122, i32 noundef %75) #6
  br label %pidff_set.exit

pidff_set.exit:                                   ; preds = %if.then.i127, %pidff_set_signed.exit121
  %left_saturation = getelementptr [2 x %struct.ff_condition_effect], ptr %u, i32 0, i32 %i.0148, i32 1
  %76 = ptrtoint ptr %left_saturation to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %left_saturation, align 2
  %conv.i128 = zext i16 %77 to i32
  %78 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx25, align 4
  %logical_maximum.i.i129 = getelementptr inbounds %struct.hid_field, ptr %79, i32 0, i32 12
  %80 = ptrtoint ptr %logical_maximum.i.i129 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %logical_maximum.i.i129, align 4
  %logical_minimum.i.i130 = getelementptr inbounds %struct.hid_field, ptr %79, i32 0, i32 11
  %82 = ptrtoint ptr %logical_minimum.i.i130 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %logical_minimum.i.i130, align 4
  %sub.i.i131 = sub i32 %81, %83
  %mul.i.i132 = mul i32 %sub.i.i131, %conv.i128
  %div.i.i133 = sdiv i32 %mul.i.i132, 65535
  %add.i.i134 = add i32 %div.i.i133, %83
  %84 = ptrtoint ptr %value1.i135 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %value1.i135, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %add.i.i134, ptr %85, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pidff_set.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pidff_set_condition_report, %if.then.i136)) #6
          to label %pidff_set.exit137 [label %if.then.i136], !srcloc !266

if.then.i136:                                     ; preds = %pidff_set.exit
  call void @__sanitizer_cov_trace_pc() #8
  %87 = ptrtoint ptr %value1.i135 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %value1.i135, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %88, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pidff_set.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.99, i32 noundef %conv.i128, i32 noundef %90) #6
  br label %pidff_set.exit137

pidff_set.exit137:                                ; preds = %if.then.i136, %pidff_set.exit
  %deadband = getelementptr [2 x %struct.ff_condition_effect], ptr %u, i32 0, i32 %i.0148, i32 4
  %91 = ptrtoint ptr %deadband to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %deadband, align 4
  %conv.i138 = zext i16 %92 to i32
  %93 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx29, align 4
  %logical_maximum.i.i139 = getelementptr inbounds %struct.hid_field, ptr %94, i32 0, i32 12
  %95 = ptrtoint ptr %logical_maximum.i.i139 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %logical_maximum.i.i139, align 4
  %logical_minimum.i.i140 = getelementptr inbounds %struct.hid_field, ptr %94, i32 0, i32 11
  %97 = ptrtoint ptr %logical_minimum.i.i140 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %logical_minimum.i.i140, align 4
  %sub.i.i141 = sub i32 %96, %98
  %mul.i.i142 = mul i32 %sub.i.i141, %conv.i138
  %div.i.i143 = sdiv i32 %mul.i.i142, 65535
  %add.i.i144 = add i32 %div.i.i143, %98
  %99 = ptrtoint ptr %value1.i145 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %value1.i145, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %add.i.i144, ptr %100, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pidff_set.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pidff_set_condition_report, %if.then.i146)) #6
          to label %pidff_set.exit147 [label %if.then.i146], !srcloc !266

if.then.i146:                                     ; preds = %pidff_set.exit137
  call void @__sanitizer_cov_trace_pc() #8
  %102 = ptrtoint ptr %value1.i145 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %value1.i145, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %103, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pidff_set.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.99, i32 noundef %conv.i138, i32 noundef %105) #6
  br label %pidff_set.exit147

pidff_set.exit147:                                ; preds = %if.then.i146, %pidff_set.exit137
  %106 = ptrtoint ptr %pidff to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pidff, align 4
  %108 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx32, align 4
  tail call void @hid_hw_request(ptr noundef %107, ptr noundef %109, i32 noundef 9) #6
  br i1 %cmp, label %pidff_set.exit147.for.body_crit_edge, label %for.end

pidff_set.exit147.for.body_crit_edge:             ; preds = %pidff_set.exit147
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %pidff_set.exit147
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 129)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 129)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !37, !38, !39, !41, !42, !43, !45, !46, !48, !50, !51, !52, !54, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !115, !117, !119, !121, !123, !124, !125, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !165, !167, !169, !171, !173, !175, !176, !177, !178, !180, !182, !184, !186, !188, !190, !192, !193, !194, !195, !197, !198, !200, !201, !202, !203, !205, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !221, !222, !224, !225, !227, !228, !229, !231, !232, !233, !234, !236, !237, !238, !240, !241, !243, !244, !246, !247, !248, !250, !251, !252, !254, !255, !256}
!llvm.module.flags = !{!257, !258, !259, !260, !261, !262, !263, !264}
!llvm.ident = !{!265}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 1236, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @hid_pidff_init.__UNIQUE_ID_ddebug250, !1, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 1239, i32 3}
!8 = !{ptr @hid_pidff_init.__UNIQUE_ID_ddebug251, !7, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 1255, i32 3}
!11 = !{ptr @hid_pidff_init.__UNIQUE_ID_ddebug252, !10, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 1280, i32 2}
!14 = !{ptr @hid_pidff_init.__UNIQUE_ID_ddebug253, !13, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 1286, i32 3}
!17 = !{ptr @hid_pidff_init.__UNIQUE_ID_ddebug254, !16, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 1290, i32 3}
!20 = !{ptr @hid_pidff_init.__UNIQUE_ID_ddebug255, !19, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 1296, i32 3}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @hid_pidff_init._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @hid_pidff_init._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 1313, i32 2}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @hid_pidff_init._entry.12, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @hid_pidff_init._entry_ptr.15, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/linux/hid.h", i32 963, i32 3}
!34 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @hid_device_io_start._entry, !33, !"_entry", i1 false, i1 false}
!38 = !{ptr @hid_device_io_start._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 824, i32 4}
!41 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @pidff_find_reports.__UNIQUE_ID_ddebug244, !40, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 843, i32 4}
!45 = !{ptr @pidff_find_reports.__UNIQUE_ID_ddebug245, !44, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!46 = !{ptr @pidff_reports, !47, !"pidff_reports", i1 false, i1 false}
!47 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 43, i32 17}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 860, i32 4}
!50 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @pidff_reports_ok.__UNIQUE_ID_ddebug246, !49, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 1068, i32 3}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @pidff_init_fields._entry, !53, !"_entry", i1 false, i1 false}
!57 = !{ptr @pidff_init_fields._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 1074, i32 3}
!60 = !{ptr @pidff_init_fields._entry.28, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @pidff_init_fields._entry_ptr.30, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 1079, i32 3}
!64 = !{ptr @pidff_init_fields._entry.31, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @pidff_init_fields._entry_ptr.33, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 1084, i32 3}
!68 = !{ptr @pidff_init_fields._entry.34, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @pidff_init_fields._entry_ptr.36, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 1096, i32 4}
!72 = !{ptr @pidff_init_fields._entry.37, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @pidff_init_fields._entry_ptr.39, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.41, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 1099, i32 4}
!76 = !{ptr @pidff_init_fields._entry.40, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @pidff_init_fields._entry_ptr.42, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.44, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 1103, i32 4}
!80 = !{ptr @pidff_init_fields._entry.43, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @pidff_init_fields._entry_ptr.45, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.47, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 1109, i32 3}
!84 = !{ptr @pidff_init_fields._entry.46, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @pidff_init_fields._entry_ptr.48, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.50, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 1115, i32 3}
!88 = !{ptr @pidff_init_fields._entry.49, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @pidff_init_fields._entry_ptr.51, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.53, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 1124, i32 3}
!92 = !{ptr @pidff_init_fields._entry.52, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @pidff_init_fields._entry_ptr.54, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.56, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 1133, i32 3}
!96 = !{ptr @pidff_init_fields._entry.55, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @pidff_init_fields._entry_ptr.57, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.58, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 768, i32 5}
!100 = !{ptr @.str.59, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @pidff_find_fields.__UNIQUE_ID_ddebug241, !99, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!102 = !{ptr @.str.60, !99, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.61, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 774, i32 6}
!105 = !{ptr @pidff_find_fields.__UNIQUE_ID_ddebug242, !104, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!106 = !{ptr @.str.62, !104, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.63, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 787, i32 4}
!109 = !{ptr @pidff_find_fields.__UNIQUE_ID_ddebug243, !108, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!110 = !{ptr @.str.64, !108, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @pidff_set_effect, !112, !"pidff_set_effect", i1 false, i1 false}
!112 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 61, i32 17}
!113 = !{ptr @pidff_block_load, !114, !"pidff_block_load", i1 false, i1 false}
!114 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 94, i32 17}
!115 = !{ptr @pidff_effect_operation, !116, !"pidff_effect_operation", i1 false, i1 false}
!116 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 97, i32 17}
!117 = !{ptr @pidff_block_free, !118, !"pidff_block_free", i1 false, i1 false}
!118 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 99, i32 17}
!119 = !{ptr @pidff_set_envelope, !120, !"pidff_set_envelope", i1 false, i1 false}
!120 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 69, i32 17}
!121 = !{ptr @.str.65, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 922, i32 2}
!123 = !{ptr @.str.66, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @pidff_find_special_fields.__UNIQUE_ID_ddebug247, !122, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!125 = !{ptr @.str.67, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 943, i32 2}
!127 = !{ptr @pidff_find_special_fields.__UNIQUE_ID_ddebug248, !126, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!128 = !{ptr @.str.68, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 946, i32 3}
!130 = !{ptr @pidff_find_special_fields._entry, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @pidff_find_special_fields._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.70, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 951, i32 3}
!134 = !{ptr @pidff_find_special_fields._entry.69, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @pidff_find_special_fields._entry_ptr.71, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.73, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 956, i32 3}
!138 = !{ptr @pidff_find_special_fields._entry.72, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @pidff_find_special_fields._entry_ptr.74, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.76, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 961, i32 3}
!142 = !{ptr @pidff_find_special_fields._entry.75, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @pidff_find_special_fields._entry_ptr.77, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.79, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 966, i32 3}
!146 = !{ptr @pidff_find_special_fields._entry.78, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @pidff_find_special_fields._entry_ptr.80, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.82, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 978, i32 3}
!150 = !{ptr @pidff_find_special_fields._entry.81, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @pidff_find_special_fields._entry_ptr.83, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.85, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 985, i32 3}
!154 = !{ptr @pidff_find_special_fields._entry.84, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @pidff_find_special_fields._entry_ptr.86, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.88, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 993, i32 3}
!158 = !{ptr @pidff_find_special_fields._entry.87, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @pidff_find_special_fields._entry_ptr.89, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.90, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 883, i32 5}
!162 = !{ptr @.str.91, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @pidff_find_special_field._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @pidff_find_special_field._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = distinct !{null, !166, !"pidff_device_control", i1 false, i1 false}
!166 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 113, i32 17}
!167 = !{ptr @pidff_effect_types, !168, !"pidff_effect_types", i1 false, i1 false}
!168 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 126, i32 17}
!169 = distinct !{null, !170, !"pidff_block_load_status", i1 false, i1 false}
!170 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 133, i32 17}
!171 = distinct !{null, !172, !"pidff_effect_operation_status", i1 false, i1 false}
!172 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 137, i32 17}
!173 = !{ptr @.str.92, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 1012, i32 4}
!175 = !{ptr @.str.93, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @pidff_find_effects._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @pidff_find_effects._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @pidff_set_constant, !179, !"pidff_set_constant", i1 false, i1 false}
!179 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 87, i32 17}
!180 = !{ptr @pidff_set_ramp, !181, !"pidff_set_ramp", i1 false, i1 false}
!181 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 91, i32 17}
!182 = !{ptr @pidff_set_condition, !183, !"pidff_set_condition", i1 false, i1 false}
!183 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 78, i32 17}
!184 = !{ptr @pidff_set_periodic, !185, !"pidff_set_periodic", i1 false, i1 false}
!185 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 86, i32 17}
!186 = !{ptr @pidff_pool, !187, !"pidff_pool", i1 false, i1 false}
!187 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 107, i32 17}
!188 = !{ptr @pidff_device_gain, !189, !"pidff_device_gain", i1 false, i1 false}
!189 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 102, i32 17}
!190 = !{ptr @.str.94, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 1172, i32 5}
!192 = !{ptr @.str.95, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @pidff_reset._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @pidff_reset._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.96, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 1177, i32 4}
!197 = !{ptr @pidff_reset.__UNIQUE_ID_ddebug249, !196, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!198 = !{ptr @.str.97, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 211, i32 2}
!200 = !{ptr @.str.98, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @pidff_set.__UNIQUE_ID_ddebug232, !199, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!202 = !{ptr @.str.99, !199, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.100, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 1203, i32 3}
!205 = !{ptr @.str.101, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @pidff_check_autocenter._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @pidff_check_autocenter._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.103, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 1212, i32 3}
!210 = !{ptr @pidff_check_autocenter._entry.102, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @pidff_check_autocenter._entry_ptr.104, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.105, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 458, i32 2}
!214 = !{ptr @.str.106, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @pidff_request_effect_upload.__UNIQUE_ID_ddebug235, !213, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!216 = !{ptr @.str.107, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 465, i32 3}
!218 = !{ptr @pidff_request_effect_upload.__UNIQUE_ID_ddebug236, !217, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!219 = !{ptr @.str.108, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 471, i32 4}
!221 = !{ptr @pidff_request_effect_upload.__UNIQUE_ID_ddebug237, !220, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!222 = !{ptr @.str.109, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 478, i32 4}
!224 = !{ptr @pidff_request_effect_upload.__UNIQUE_ID_ddebug238, !223, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!225 = !{ptr @.str.110, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 484, i32 2}
!227 = !{ptr @pidff_request_effect_upload._entry, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @pidff_request_effect_upload._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.111, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 603, i32 5}
!231 = !{ptr @.str.112, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @pidff_upload_effect._entry, !230, !"_entry", i1 false, i1 false}
!233 = !{ptr @pidff_upload_effect._entry_ptr, !230, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.114, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 694, i32 3}
!236 = !{ptr @pidff_upload_effect._entry.113, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @pidff_upload_effect._entry_ptr.115, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.116, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 702, i32 2}
!240 = !{ptr @pidff_upload_effect.__UNIQUE_ID_ddebug240, !239, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!241 = !{ptr @.str.117, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 226, i32 2}
!243 = !{ptr @pidff_set_signed.__UNIQUE_ID_ddebug233, !242, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!244 = !{ptr @.str.118, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 250, i32 2}
!246 = !{ptr @.str.119, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @pidff_set_envelope_report.__UNIQUE_ID_ddebug234, !245, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!248 = !{ptr @.str.120, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/hid/usbhid/hid-pidff.c", i32 538, i32 2}
!250 = !{ptr @.str.121, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @pidff_erase_effect.__UNIQUE_ID_ddebug239, !249, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!252 = !{ptr @.str.122, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../include/linux/hid.h", i32 983, i32 3}
!254 = !{ptr @.str.123, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @hid_device_io_stop._entry, !253, !"_entry", i1 false, i1 false}
!256 = !{ptr @hid_device_io_stop._entry_ptr, !253, !"_entry_ptr", i1 false, i1 false}
!257 = !{i32 1, !"wchar_size", i32 2}
!258 = !{i32 1, !"min_enum_size", i32 4}
!259 = !{i32 8, !"branch-target-enforcement", i32 0}
!260 = !{i32 8, !"sign-return-address", i32 0}
!261 = !{i32 8, !"sign-return-address-all", i32 0}
!262 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!263 = !{i32 7, !"uwtable", i32 1}
!264 = !{i32 7, !"frame-pointer", i32 2}
!265 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!266 = !{i64 2149067604, i64 2149067609, i64 2149067622, i64 2149067666, i64 2149067700, i64 2149067721}
!267 = !{i8 0, i8 2}
