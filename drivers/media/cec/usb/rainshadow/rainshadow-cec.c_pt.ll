; ModuleID = '/llk/IR_all_yes/drivers/media/cec/usb/rainshadow/rainshadow-cec.c_pt.bc'
source_filename = "../drivers/media/cec/usb/rainshadow/rainshadow-cec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.serio_driver = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cec_adap_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.rain = type { ptr, ptr, ptr, %struct.completion, %struct.work_struct, [256 x i8], i32, i32, i32, %struct.spinlock, [256 x i8], i32, i8, [256 x i8], %struct.mutex }
%struct.cec_adapter = type { ptr, [32 x i8], %struct.cec_devnode, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, ptr, i8, ptr, %struct.completion, ptr, %struct.wait_queue_head, ptr, ptr, i32, i8, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, i8, %struct.cec_log_addrs, %struct.cec_connector_info, i32, ptr, ptr, ptr, i32, [32 x i8] }
%struct.cec_devnode = type { %struct.device, %struct.cdev, i32, %struct.mutex, i8, i8, %struct.mutex, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.cec_log_addrs = type { [4 x i8], i16, i8, i8, i32, i32, [15 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x [12 x i8]] }
%struct.cec_connector_info = type { i32, %union.anon.73 }
%union.anon.73 = type { [16 x i32] }
%struct.cec_msg = type { i64, i64, i32, i32, i32, i32, [16 x i8], i8, i8, i8, i8, i8, i8, i8 }

@__UNIQUE_ID_author232 = internal constant [56 x i8] c"rainshadow_cec.author=Hans Verkuil <hverkuil@xs4all.nl>\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [59 x i8] c"rainshadow_cec.description=RainShadow Tech HDMI CEC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [68 x i8] c"rainshadow_cec.file=drivers/media/cec/usb/rainshadow/rainshadow-cec\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [27 x i8] c"rainshadow_cec.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_rainshadow_cec__240_380_rain_drv_init6 = internal global ptr @rain_drv_init, section ".initcall6.init", align 4
@rain_drv = internal global { %struct.serio_driver, [44 x i8] } { %struct.serio_driver { ptr @.str.1, ptr @rain_serio_ids, i8 0, ptr null, ptr @rain_interrupt, ptr @rain_connect, ptr null, ptr null, ptr @rain_disconnect, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@__exitcall_rain_drv_exit = internal global ptr @rain_drv_exit, section ".exitcall.exit", align 4
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rainshadow_cec\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"RainShadow Tech HDMI CEC driver\00", [32 x i8] zeroinitializer }, align 32
@rain_serio_ids = internal constant { [2 x %struct.serio_device_id], [24 x i8] } { [2 x %struct.serio_device_id] [%struct.serio_device_id { i8 2, i8 -1, i8 -1, i8 65 }, %struct.serio_device_id zeroinitializer], [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rainshadow-cec\00", [17 x i8] zeroinitializer }, align 32
@rain_interrupt.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@rain_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 175, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"buffer overflow\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rain_interrupt\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/media/cec/usb/rainshadow/rainshadow-cec.c\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rain_interrupt._entry_ptr = internal global ptr @rain_interrupt._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@rain_cec_adap_ops = internal constant { %struct.cec_adap_ops, [56 x i8] } { %struct.cec_adap_ops { ptr @rain_cec_adap_enable, ptr null, ptr null, ptr @rain_cec_adap_log_addr, ptr @rain_cec_adap_transmit, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@rain_connect.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&rain->work)\00", [33 x i8] zeroinitializer }, align 32
@rain_connect.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&rain->write_lock\00", [46 x i8] zeroinitializer }, align 32
@rain_connect.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&rain->buf_lock\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"A %x\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ADR\00", [28 x i8] zeroinitializer }, align 32
@rain_send_and_wait.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.5, ptr @.str.16, i8 0, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rain_send_and_wait\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"transmit of '%s': received '%s' instead of '%s'\0A\00", [47 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@rain_send.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.5, ptr @.str.19, i8 0, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rain_send\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"send: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"x%x\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"x%x %02x \00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02x\00", [27 x i8] zeroinitializer }, align 32
@rain_irq_work_handler.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.5, ptr @.str.24, i8 0, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rain_irq_work_handler\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"received: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"REC\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"STA\00", [28 x i8] zeroinitializer }, align 32
@rain_irq_work_handler.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.5, ptr @.str.27, i8 0, i8 40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"throwing away %d bytes of garbage\0A\00", [61 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.28 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"R\00", [30 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"REV\00", [28 x i8] zeroinitializer }, align 32
@rain_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.5, i32 247, ptr @.str.32, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Firmware version %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rain_setup\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rain_setup._entry_ptr = internal global ptr @rain_setup._entry, section ".printk_index", align 4
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Q 1\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"QTY\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"c0000\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CFG\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"A F 0000\00", [23 x i8] zeroinitializer }, align 32
@rain_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.5, i32 193, ptr @.str.32, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"disconnected\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rain_disconnect\00", [16 x i8] zeroinitializer }, align 32
@rain_disconnect._entry_ptr = internal global ptr @rain_disconnect._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 10, i64 13, i64 63]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.41 = private unnamed_addr constant [9 x i8] c"rain_drv\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 369, i32 28 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 380, i32 1 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 373, i32 17 }
@___asan_gen_.50 = private unnamed_addr constant [15 x i8] c"rain_serio_ids\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 357, i32 37 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 371, i32 11 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 175, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [18 x i8] c"rain_cec_adap_ops\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 300, i32 34 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 328, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 329, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 330, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 270, i32 29 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 271, i32 39 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 229, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 87, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 203, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 283, i32 30 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 287, i32 30 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 290, i32 31 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 134, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 135, i32 27 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 136, i32 27 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 159, i32 5 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 244, i32 33 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 244, i32 38 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 247, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 249, i32 33 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 249, i32 40 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 252, i32 33 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 252, i32 42 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 255, i32 34 }
@___asan_gen_.176 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.183 = private constant [53 x i8] c"../drivers/media/cec/usb/rainshadow/rainshadow-cec.c\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 193, i32 2 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__exitcall_rain_drv_exit, ptr @__initcall__kmod_rainshadow_cec__240_380_rain_drv_init6, ptr @rain_disconnect._entry, ptr @rain_disconnect._entry_ptr, ptr @rain_drv_exit, ptr @rain_interrupt._entry, ptr @rain_interrupt._entry_ptr, ptr @rain_setup._entry, ptr @rain_setup._entry_ptr, ptr @rain_drv, ptr @.str, ptr @.str.1, ptr @rain_serio_ids, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @rain_cec_adap_ops, ptr @rain_connect.__key, ptr @.str.8, ptr @rain_connect.__key.9, ptr @.str.10, ptr @rain_connect.__key.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @init_completion.__key, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rain_drv to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rain_serio_ids to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rain_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rain_cec_adap_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rain_connect.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rain_connect.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rain_connect.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rain_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rain_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rain_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__serio_register_driver(ptr noundef nonnull @rain_drv, ptr noundef null, ptr noundef nonnull @.str) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rain_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @serio_unregister_driver(ptr noundef nonnull @rain_drv) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__serio_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rain_interrupt(ptr nocapture noundef readonly %serio, i8 noundef zeroext %data, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %buf_len = getelementptr inbounds %struct.rain, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %3)
  %cmp = icmp eq i32 %3, 256
  br i1 %cmp, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  %.b20 = load i1, ptr @rain_interrupt.__print_once, align 1
  br i1 %.b20, label %do.body.cleanup_crit_edge, label %if.then1

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then1:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rain_interrupt.__print_once, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.3) #14
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %buf_lock = getelementptr inbounds %struct.rain, ptr %1, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %buf_lock) #11
  %6 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_len, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %buf_len, align 4
  %buf_wr_idx = getelementptr inbounds %struct.rain, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %buf_wr_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buf_wr_idx, align 4
  %arrayidx = getelementptr %struct.rain, ptr %1, i32 0, i32 5, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %data, ptr %arrayidx, align 1
  %11 = load i32, ptr %buf_wr_idx, align 4
  %add = add i32 %11, 1
  %and = and i32 %add, 255
  store i32 %and, ptr %buf_wr_idx, align 4
  tail call void @_raw_spin_unlock(ptr noundef %buf_lock) #11
  %work = getelementptr inbounds %struct.rain, ptr %1, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %12 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %work) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then1, %do.body.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rain_connect(ptr noundef %serio, ptr noundef %drv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1036) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %serio1 = getelementptr inbounds %struct.rain, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %serio1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %serio, ptr %serio1, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  %init_name.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %if.end.dev_name.exit_crit_edge ]
  %call3 = tail call ptr @cec_allocate_adapter(ptr noundef nonnull @rain_cec_adap_ops, ptr noundef nonnull %call7.i.i, ptr noundef %retval.0.i, i32 noundef 63, i8 noundef zeroext 1) #11
  %adap = getelementptr inbounds %struct.rain, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %adap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call3, ptr %adap, align 8
  %cmp.i.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  %7 = ptrtoint ptr %call3 to i32
  %cmp80 = icmp slt ptr %call3, null
  %cmp = and i1 %cmp.i.i, %cmp80
  br i1 %cmp, label %dev_name.exit.free_device_crit_edge, label %if.end7

dev_name.exit.free_device_crit_edge:              ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_device

if.end7:                                          ; preds = %dev_name.exit
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %call7.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %work = getelementptr inbounds %struct.rain, ptr %call7.i.i, i32 0, i32 4
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #11
  %10 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.rain, ptr %call7.i.i, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.8, ptr noundef nonnull @rain_connect.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry13 = getelementptr inbounds %struct.rain, ptr %call7.i.i, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %entry13 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry13, ptr %entry13, align 8
  %prev.i = getelementptr inbounds %struct.rain, ptr %call7.i.i, i32 0, i32 4, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry13, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.rain, ptr %call7.i.i, i32 0, i32 4, i32 2
  %13 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @rain_irq_work_handler, ptr %func, align 8
  %write_lock = getelementptr inbounds %struct.rain, ptr %call7.i.i, i32 0, i32 14
  tail call void @__mutex_init(ptr noundef %write_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @rain_connect.__key.9) #11
  %buf_lock = getelementptr inbounds %struct.rain, ptr %call7.i.i, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %buf_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @rain_connect.__key.11, i16 noundef signext 3) #11
  %call22 = tail call i32 @serio_open(ptr noundef %serio, ptr noundef %drv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end7.delete_adap_crit_edge

if.end7.delete_adap_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %delete_adap

if.end25:                                         ; preds = %if.end7
  %call.i = tail call fastcc i32 @rain_send_and_wait(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i75 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i75, label %do.end.i, label %if.end25.close_serio_crit_edge

if.end25.close_serio_crit_edge:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %close_serio

do.end.i:                                         ; preds = %if.end25
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call7.i.i, align 8
  %add.ptr.i = getelementptr %struct.rain, ptr %call7.i.i, i32 0, i32 13, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.30, ptr noundef %add.ptr.i) #14
  %call1.i = tail call fastcc i32 @rain_send_and_wait(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %do.end.i.close_serio_crit_edge

do.end.i.close_serio_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %close_serio

if.end4.i:                                        ; preds = %do.end.i
  %call5.i = tail call fastcc i32 @rain_send_and_wait(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %rain_setup.exit, label %if.end4.i.close_serio_crit_edge

if.end4.i.close_serio_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %close_serio

rain_setup.exit:                                  ; preds = %if.end4.i
  %call9.i = tail call fastcc i32 @rain_send_and_wait(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool27.not = icmp eq i32 %call9.i, 0
  br i1 %tobool27.not, label %if.end29, label %rain_setup.exit.close_serio_crit_edge

rain_setup.exit.close_serio_crit_edge:            ; preds = %rain_setup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %close_serio

if.end29:                                         ; preds = %rain_setup.exit
  %16 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adap, align 8
  %call32 = tail call i32 @cec_register_adapter(ptr noundef %17, ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end29.close_serio_crit_edge, label %if.end35

if.end29.close_serio_crit_edge:                   ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %close_serio

if.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adap, align 8
  %devnode = getelementptr inbounds %struct.cec_adapter, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %devnode, ptr %call7.i.i, align 8
  br label %cleanup

close_serio:                                      ; preds = %if.end29.close_serio_crit_edge, %rain_setup.exit.close_serio_crit_edge, %if.end4.i.close_serio_crit_edge, %do.end.i.close_serio_crit_edge, %if.end25.close_serio_crit_edge
  %err.0 = phi i32 [ %call9.i, %rain_setup.exit.close_serio_crit_edge ], [ %call32, %if.end29.close_serio_crit_edge ], [ %call5.i, %if.end4.i.close_serio_crit_edge ], [ %call1.i, %do.end.i.close_serio_crit_edge ], [ %call.i, %if.end25.close_serio_crit_edge ]
  tail call void @serio_close(ptr noundef %serio) #11
  br label %delete_adap

delete_adap:                                      ; preds = %close_serio, %if.end7.delete_adap_crit_edge
  %err.1 = phi i32 [ %call22, %if.end7.delete_adap_crit_edge ], [ %err.0, %close_serio ]
  %21 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adap, align 8
  tail call void @cec_delete_adapter(ptr noundef %22) #11
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %free_device

free_device:                                      ; preds = %delete_adap, %dev_name.exit.free_device_crit_edge
  %err.2 = phi i32 [ %7, %dev_name.exit.free_device_crit_edge ], [ %err.1, %delete_adap ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %free_device, %if.end35, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %free_device ], [ 0, %if.end35 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rain_disconnect(ptr noundef %serio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %work = getelementptr inbounds %struct.rain, ptr %1, i32 0, i32 4
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #11
  %adap = getelementptr inbounds %struct.rain, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adap, align 4
  tail call void @cec_unregister_adapter(ptr noundef %3) #11
  %dev = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.38) #14
  tail call void @serio_close(ptr noundef %serio) #11
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_allocate_adapter(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rain_irq_work_handler(ptr noundef %work) #2 align 64 {
entry:
  %msg.i = alloca %struct.cec_msg, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -68
  %buf_lock = getelementptr i8, ptr %work, i32 312
  %call3125 = call i32 @_raw_spin_lock_irqsave(ptr noundef %buf_lock) #11
  %buf_len = getelementptr i8, ptr %work, i32 308
  %0 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not126 = icmp eq i32 %1, 0
  br i1 %tobool.not126, label %entry.while.end_crit_edge, label %if.end.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end.lr.ph:                                     ; preds = %entry
  %buf = getelementptr i8, ptr %work, i32 44
  %buf_rd_idx = getelementptr i8, ptr %work, i32 300
  %cmd_started = getelementptr i8, ptr %work, i32 616
  %cmd_idx50 = getelementptr i8, ptr %work, i32 612
  %cmd = getelementptr i8, ptr %work, i32 356
  %cmd_reply = getelementptr i8, ptr %work, i32 617
  %cmd_done = getelementptr i8, ptr %work, i32 -56
  %add.ptr.i = getelementptr i8, ptr %work, i32 359
  %len.i = getelementptr inbounds %struct.cec_msg, ptr %msg.i, i32 0, i32 2
  %msg23.i = getelementptr inbounds %struct.cec_msg, ptr %msg.i, i32 0, i32 6
  %adap54.i = getelementptr i8, ptr %work, i32 -60
  br label %if.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.end.lr.ph
  %2 = phi i32 [ %1, %if.end.lr.ph ], [ %62, %cleanup.if.end_crit_edge ]
  %call3127 = phi i32 [ %call3125, %if.end.lr.ph ], [ %call3, %cleanup.if.end_crit_edge ]
  %3 = ptrtoint ptr %buf_rd_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %buf_rd_idx, align 4
  %arrayidx = getelementptr [256 x i8], ptr %buf, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %dec = add i32 %2, -1
  %7 = ptrtoint ptr %buf_len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %dec, ptr %buf_len, align 4
  %add = add i32 %4, 1
  %and = and i32 %add, 255
  store i32 %and, ptr %buf_rd_idx, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %buf_lock, i32 noundef %call3127) #11
  %8 = ptrtoint ptr %cmd_started to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cmd_started, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool11.not = icmp ne i8 %9, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %6)
  %cmp13.not = icmp eq i8 %6, 63
  %or.cond = select i1 %tobool11.not, i1 true, i1 %cmp13.not
  br i1 %or.cond, label %if.end16, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %10 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %6, label %sw.default [
    i8 13, label %sw.bb
    i8 10, label %sw.bb46
    i8 63, label %sw.bb49
  ]

sw.bb:                                            ; preds = %if.end16
  %11 = ptrtoint ptr %cmd_idx50 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cmd_idx50, align 4
  %arrayidx18 = getelementptr [256 x i8], ptr %cmd, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx18, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rain_irq_work_handler.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rain_irq_work_handler, %if.then25)) #11
          to label %do.end29 [label %if.then25], !srcloc !106

if.then25:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rain_irq_work_handler.__UNIQUE_ID_ddebug236, ptr noundef %15, ptr noundef nonnull @.str.24, ptr noundef %cmd) #11
  br label %do.end29

do.end29:                                         ; preds = %if.then25, %sw.bb
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(3) %cmd, ptr noundef nonnull dereferenceable(3) @.str.25, i32 3) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool33.not = icmp eq i32 %bcmp, 0
  br i1 %tobool33.not, label %do.end29.if.then38_crit_edge, label %lor.lhs.false

do.end29.if.then38_crit_edge:                     ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then38

lor.lhs.false:                                    ; preds = %do.end29
  %bcmp114 = call i32 @bcmp(ptr noundef dereferenceable(3) %cmd, ptr noundef nonnull dereferenceable(3) @.str.26, i32 3) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp114)
  %tobool37.not = icmp eq i32 %bcmp114, 0
  br i1 %tobool37.not, label %lor.lhs.false.if.then38_crit_edge, label %if.else

lor.lhs.false.if.then38_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then38

if.then38:                                        ; preds = %lor.lhs.false.if.then38_crit_edge, %do.end29.if.then38_crit_edge
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #11
  %16 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not79.i = icmp eq i8 %18, 0
  br i1 %tobool.not79.i, label %if.then38.for.end.i_crit_edge, label %if.then38.for.body.i_crit_edge

if.then38.for.body.i_crit_edge:                   ; preds = %if.then38
  br label %for.body.i

if.then38.for.end.i_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then38.for.body.i_crit_edge
  %19 = phi i8 [ %33, %for.inc.i.for.body.i_crit_edge ], [ %18, %if.then38.for.body.i_crit_edge ]
  %cmd.080.i = phi ptr [ %incdec.ptr38.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %if.then38.for.body.i_crit_edge ]
  %conv.i = zext i8 %19 to i32
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i, align 1
  %22 = and i8 %21, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp.not.i = icmp eq i8 %22, 0
  br i1 %cmp.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %arrayidx11.i = getelementptr i8, ptr %cmd.080.i, i32 1
  %23 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %24 to i32
  %arrayidx13.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv12.i
  %25 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx13.i, align 1
  %27 = and i8 %26, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp16.not.i = icmp eq i8 %27, 0
  br i1 %cmp16.not.i, label %if.end31.i, label %if.then18.i

if.then18.i:                                      ; preds = %land.lhs.true.i
  %28 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %29)
  %cmp19.i = icmp eq i32 %29, 16
  br i1 %cmp19.i, label %if.then18.i.for.end.i_crit_edge, label %if.end22.i

if.then18.i.for.end.i_crit_edge:                  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.end22.i:                                       ; preds = %if.then18.i
  %add.ptr26.i = getelementptr i8, ptr %msg23.i, i32 %29
  %call.i = call i32 @hex2bin(ptr noundef %add.ptr26.i, ptr noundef %cmd.080.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool27.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %if.end22.i.for.inc.i_crit_edge

if.end22.i.for.inc.i_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end29.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len.i, align 8
  %inc.i = add i32 %31, 1
  store i32 %inc.i, ptr %len.i, align 8
  br label %for.inc.i

if.end31.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool33.not.i = icmp eq i8 %24, 0
  br i1 %tobool33.not.i, label %if.then34.i, label %if.end31.i.for.end.i_crit_edge

if.end31.i.for.end.i_crit_edge:                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.then34.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  %call36.i = call i32 @hex_to_bin(i8 noundef zeroext %19) #11
  br label %for.end.i

for.inc.i:                                        ; preds = %if.end29.i, %if.end22.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmd.1.i = phi ptr [ %cmd.080.i, %if.end22.i.for.inc.i_crit_edge ], [ %arrayidx11.i, %if.end29.i ], [ %cmd.080.i, %for.body.i.for.inc.i_crit_edge ]
  %incdec.ptr38.i = getelementptr i8, ptr %cmd.1.i, i32 1
  %32 = ptrtoint ptr %incdec.ptr38.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %incdec.ptr38.i, align 1
  %tobool.not.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then34.i, %if.end31.i.for.end.i_crit_edge, %if.then18.i.for.end.i_crit_edge, %if.then38.for.end.i_crit_edge
  %stat.0.i = phi i32 [ -1, %if.end31.i.for.end.i_crit_edge ], [ %call36.i, %if.then34.i ], [ -1, %if.then38.for.end.i_crit_edge ], [ -1, %if.then18.i.for.end.i_crit_edge ], [ -1, %for.inc.i.for.end.i_crit_edge ]
  %34 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 82, i8 %35)
  %cmp42.i = icmp eq i8 %35, 82
  br i1 %cmp42.i, label %if.then44.i, label %if.end51.i

if.then44.i:                                      ; preds = %for.end.i
  %stat.0.off.i = add i32 %stat.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %stat.0.off.i)
  %switch.i = icmp ult i32 %stat.0.off.i, 2
  br i1 %switch.i, label %if.then49.i, label %if.then44.i.rain_process_msg.exit_crit_edge

if.then44.i.rain_process_msg.exit_crit_edge:      ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rain_process_msg.exit

if.then49.i:                                      ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %adap54.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %adap54.i, align 4
  %call.i.i = call i64 @ktime_get() #11
  call void @cec_received_msg_ts(ptr noundef %37, ptr noundef nonnull %msg.i, i64 noundef %call.i.i) #11
  br label %rain_process_msg.exit

if.end51.i:                                       ; preds = %for.end.i
  %38 = zext i32 %stat.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %stat.0.i, label %sw.default.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb53.i
  ]

sw.bb.i:                                          ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %adap54.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %adap54.i, align 4
  %call.i74.i = call i64 @ktime_get() #11
  call void @cec_transmit_attempt_done_ts(ptr noundef %40, i8 noundef zeroext 1, i64 noundef %call.i74.i) #11
  br label %rain_process_msg.exit

sw.bb53.i:                                        ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %adap54.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %adap54.i, align 4
  %call.i75.i = call i64 @ktime_get() #11
  call void @cec_transmit_attempt_done_ts(ptr noundef %42, i8 noundef zeroext 4, i64 noundef %call.i75.i) #11
  br label %rain_process_msg.exit

sw.default.i:                                     ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %adap54.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %adap54.i, align 4
  %call.i76.i = call i64 @ktime_get() #11
  call void @cec_transmit_attempt_done_ts(ptr noundef %44, i8 noundef zeroext 8, i64 noundef %call.i76.i) #11
  br label %rain_process_msg.exit

rain_process_msg.exit:                            ; preds = %sw.default.i, %sw.bb53.i, %sw.bb.i, %if.then49.i, %if.then44.i.rain_process_msg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #11
  br label %if.end43

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %call42 = call i32 @strscpy(ptr noundef %cmd_reply, ptr noundef %cmd, i32 noundef 256) #11
  call void @complete(ptr noundef %cmd_done) #11
  br label %if.end43

if.end43:                                         ; preds = %if.else, %rain_process_msg.exit
  %45 = ptrtoint ptr %cmd_idx50 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %cmd_idx50, align 4
  %46 = ptrtoint ptr %cmd_started to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %cmd_started, align 4
  br label %cleanup

sw.bb46:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %cmd_idx50 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %cmd_idx50, align 4
  %48 = ptrtoint ptr %cmd_started to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %cmd_started, align 4
  br label %cleanup

sw.bb49:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %cmd_idx50 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %cmd_idx50, align 4
  %50 = ptrtoint ptr %cmd_started to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %cmd_started, align 4
  br label %cleanup

sw.default:                                       ; preds = %if.end16
  %51 = ptrtoint ptr %cmd_idx50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cmd_idx50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %52)
  %cmp53 = icmp ugt i32 %52, 254
  br i1 %cmp53, label %do.body56, label %sw.default.if.end75_crit_edge

sw.default.if.end75_crit_edge:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

do.body56:                                        ; preds = %sw.default
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rain_irq_work_handler.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rain_irq_work_handler, %if.then68)) #11
          to label %do.end73 [label %if.then68], !srcloc !106

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr, align 4
  %55 = ptrtoint ptr %cmd_idx50 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cmd_idx50, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rain_irq_work_handler.__UNIQUE_ID_ddebug237, ptr noundef %54, ptr noundef nonnull @.str.27, i32 noundef %56) #11
  br label %do.end73

do.end73:                                         ; preds = %if.then68, %do.body56
  %57 = ptrtoint ptr %cmd_idx50 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %cmd_idx50, align 4
  br label %if.end75

if.end75:                                         ; preds = %do.end73, %sw.default.if.end75_crit_edge
  %58 = ptrtoint ptr %cmd_idx50 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cmd_idx50, align 4
  %inc = add i32 %59, 1
  store i32 %inc, ptr %cmd_idx50, align 4
  %arrayidx78 = getelementptr [256 x i8], ptr %cmd, i32 0, i32 %59
  %60 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %6, ptr %arrayidx78, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %sw.bb49, %sw.bb46, %if.end43, %if.end.cleanup_crit_edge
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %buf_lock) #11
  %61 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %buf_len, align 4
  %tobool.not = icmp eq i32 %62, 0
  br i1 %tobool.not, label %cleanup.while.end_crit_edge, label %cleanup.if.end_crit_edge

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %entry.while.end_crit_edge
  %call3.lcssa = phi i32 [ %call3125, %entry.while.end_crit_edge ], [ %call3, %cleanup.while.end_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %buf_lock, i32 noundef %call3.lcssa) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serio_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cec_register_adapter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_delete_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rain_cec_adap_enable(ptr nocapture noundef readnone %adap, i1 noundef zeroext %enable) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rain_cec_adap_log_addr(ptr nocapture noundef readonly %adap, i8 noundef zeroext %log_addr) #2 align 64 {
entry:
  %cmd = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %log_addr)
  %cmp = icmp eq i8 %log_addr, -1
  %spec.store.select = select i1 %cmp, i8 15, i8 %log_addr
  %conv2 = zext i8 %spec.store.select to i32
  %2 = call ptr @memset(ptr %cmd, i32 255, i32 16)
  %call3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %cmd, i32 noundef 16, ptr noundef nonnull @.str.13, i32 noundef %conv2)
  %call5 = call fastcc i32 @rain_send_and_wait(ptr noundef %1, ptr noundef nonnull %cmd, ptr noundef nonnull @.str.14)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #11
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rain_cec_adap_transmit(ptr nocapture noundef readonly %adap, i8 noundef zeroext %attempts, i32 noundef %signal_free_time, ptr nocapture noundef readonly %msg) #2 align 64 {
entry:
  %cmd = alloca [48 x i8], align 1
  %hex = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #11
  %2 = call ptr @memset(ptr %cmd, i32 255, i32 48)
  %len = getelementptr inbounds %struct.cec_msg, ptr %msg, i32 0, i32 2
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %msg1.i = getelementptr inbounds %struct.cec_msg, ptr %msg, i32 0, i32 6
  %5 = ptrtoint ptr %msg1.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %msg1.i, align 8
  %7 = and i8 %6, 15
  %conv = zext i8 %7 to i32
  %call2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %cmd, i32 noundef 48, ptr noundef nonnull @.str.20, i32 noundef %conv)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %hex) #11
  %8 = ptrtoint ptr %hex to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %hex, align 1, !annotation !107
  %9 = getelementptr inbounds [3 x i8], ptr %hex, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %9, align 1, !annotation !107
  %11 = getelementptr inbounds [3 x i8], ptr %hex, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %11, align 1, !annotation !107
  %msg1.i32 = getelementptr inbounds %struct.cec_msg, ptr %msg, i32 0, i32 6
  %13 = ptrtoint ptr %msg1.i32 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %msg1.i32, align 8
  %15 = and i8 %14, 15
  %conv5 = zext i8 %15 to i32
  %arrayidx = getelementptr %struct.cec_msg, ptr %msg, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  %conv7 = zext i8 %17 to i32
  %call8 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %cmd, i32 noundef 48, ptr noundef nonnull @.str.21, i32 noundef %conv5, i32 noundef %conv7)
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp1034 = icmp ugt i32 %19, 2
  br i1 %cmp1034, label %if.else.for.body_crit_edge, label %if.else.for.end_crit_edge

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.else.for.body_crit_edge:                       ; preds = %if.else
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.else.for.body_crit_edge
  %i.035 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 2, %if.else.for.body_crit_edge ]
  %arrayidx14 = getelementptr %struct.cec_msg, ptr %msg, i32 0, i32 6, i32 %i.035
  %20 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %21 to i32
  %call16 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %hex, i32 noundef 3, ptr noundef nonnull @.str.22, i32 noundef %conv15)
  %call19 = call i32 @strlcat(ptr noundef nonnull %cmd, ptr noundef nonnull %hex, i32 noundef 48) #11
  %inc = add nuw i32 %i.035, 1
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 8
  %cmp10 = icmp ult i32 %inc, %23
  br i1 %cmp10, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.else.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %hex) #11
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %write_lock = getelementptr inbounds %struct.rain, ptr %1, i32 0, i32 14
  call void @mutex_lock_nested(ptr noundef %write_lock, i32 noundef 0) #11
  %serio.i = getelementptr inbounds %struct.rain, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %serio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %serio.i, align 4
  %write.i.i = getelementptr inbounds %struct.serio, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i, label %if.end.serio_write.exit.i_crit_edge, label %if.then.i.i

if.end.serio_write.exit.i_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %serio_write.exit.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = call i32 %27(ptr noundef %25, i8 noundef zeroext 33) #11
  br label %serio_write.exit.i

serio_write.exit.i:                               ; preds = %if.then.i.i, %if.end.serio_write.exit.i_crit_edge
  %retval.0.i20.i = phi i32 [ %call.i.i, %if.then.i.i ], [ -1, %if.end.serio_write.exit.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rain_send.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rain_cec_adap_transmit, %if.then.i)) #11
          to label %do.end.i [label %if.then.i], !srcloc !106

if.then.i:                                        ; preds = %serio_write.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rain_send.__UNIQUE_ID_ddebug238, ptr noundef %29, ptr noundef nonnull @.str.19, ptr noundef nonnull %cmd) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %serio_write.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i20.i)
  %tobool4.not35.i = icmp eq i32 %retval.0.i20.i, 0
  br i1 %tobool4.not35.i, label %do.end.i.land.rhs.i_crit_edge, label %do.end.i.rain_send.exit_crit_edge

do.end.i.rain_send.exit_crit_edge:                ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rain_send.exit

do.end.i.land.rhs.i_crit_edge:                    ; preds = %do.end.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %serio_write.exit26.i.land.rhs.i_crit_edge, %do.end.i.land.rhs.i_crit_edge
  %command.addr.036.i = phi ptr [ %incdec.ptr.i, %serio_write.exit26.i.land.rhs.i_crit_edge ], [ %cmd, %do.end.i.land.rhs.i_crit_edge ]
  %30 = ptrtoint ptr %command.addr.036.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %command.addr.036.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool5.not.i = icmp eq i8 %31, 0
  %32 = ptrtoint ptr %serio.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %serio.i, align 4
  %write.i27.i = getelementptr inbounds %struct.serio, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %write.i27.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write.i27.i, align 8
  %tobool.not.i28.i = icmp eq ptr %35, null
  br i1 %tobool5.not.i, label %if.then9.critedge.i, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  br i1 %tobool.not.i28.i, label %while.body.i.rain_send.exit_crit_edge, label %serio_write.exit26.i

while.body.i.rain_send.exit_crit_edge:            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rain_send.exit

serio_write.exit26.i:                             ; preds = %while.body.i
  %incdec.ptr.i = getelementptr i8, ptr %command.addr.036.i, i32 1
  %call.i23.i = call i32 %35(ptr noundef %33, i8 noundef zeroext %31) #11
  %tobool4.not.i = icmp eq i32 %call.i23.i, 0
  br i1 %tobool4.not.i, label %serio_write.exit26.i.land.rhs.i_crit_edge, label %serio_write.exit26.i.rain_send.exit_crit_edge

serio_write.exit26.i.rain_send.exit_crit_edge:    ; preds = %serio_write.exit26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rain_send.exit

serio_write.exit26.i.land.rhs.i_crit_edge:        ; preds = %serio_write.exit26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

if.then9.critedge.i:                              ; preds = %land.rhs.i
  br i1 %tobool.not.i28.i, label %if.then9.critedge.i.rain_send.exit_crit_edge, label %if.then.i30.i

if.then9.critedge.i.rain_send.exit_crit_edge:     ; preds = %if.then9.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rain_send.exit

if.then.i30.i:                                    ; preds = %if.then9.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i29.i = call i32 %35(ptr noundef %33, i8 noundef zeroext 126) #11
  br label %rain_send.exit

rain_send.exit:                                   ; preds = %if.then.i30.i, %if.then9.critedge.i.rain_send.exit_crit_edge, %serio_write.exit26.i.rain_send.exit_crit_edge, %while.body.i.rain_send.exit_crit_edge, %do.end.i.rain_send.exit_crit_edge
  %err.1.i = phi i32 [ %call.i29.i, %if.then.i30.i ], [ -1, %if.then9.critedge.i.rain_send.exit_crit_edge ], [ %retval.0.i20.i, %do.end.i.rain_send.exit_crit_edge ], [ %call.i23.i, %serio_write.exit26.i.rain_send.exit_crit_edge ], [ -1, %while.body.i.rain_send.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %write_lock) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #11
  ret i32 %err.1.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rain_send_and_wait(ptr noundef %rain, ptr noundef %cmd, ptr noundef %reply) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_done = getelementptr inbounds %struct.rain, ptr %rain, i32 0, i32 3
  %0 = ptrtoint ptr %cmd_done to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cmd_done, align 4
  %wait.i = getelementptr inbounds %struct.rain, ptr %rain, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @init_completion.__key) #11
  %write_lock = getelementptr inbounds %struct.rain, ptr %rain, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %write_lock, i32 noundef 0) #11
  %serio.i = getelementptr inbounds %struct.rain, ptr %rain, i32 0, i32 1
  %1 = ptrtoint ptr %serio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %serio.i, align 4
  %write.i.i = getelementptr inbounds %struct.serio, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %entry.serio_write.exit.i_crit_edge, label %if.then.i.i

entry.serio_write.exit.i_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %serio_write.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call i32 %4(ptr noundef %2, i8 noundef zeroext 33) #11
  br label %serio_write.exit.i

serio_write.exit.i:                               ; preds = %if.then.i.i, %entry.serio_write.exit.i_crit_edge
  %retval.0.i20.i = phi i32 [ %call.i.i, %if.then.i.i ], [ -1, %entry.serio_write.exit.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rain_send.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rain_send_and_wait, %if.then.i)) #11
          to label %do.end.i [label %if.then.i], !srcloc !106

if.then.i:                                        ; preds = %serio_write.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %rain to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rain, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rain_send.__UNIQUE_ID_ddebug238, ptr noundef %6, ptr noundef nonnull @.str.19, ptr noundef %cmd) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %serio_write.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i20.i)
  %tobool4.not35.i = icmp eq i32 %retval.0.i20.i, 0
  br i1 %tobool4.not35.i, label %do.end.i.land.rhs.i_crit_edge, label %do.end.i.err20_crit_edge

do.end.i.err20_crit_edge:                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err20

do.end.i.land.rhs.i_crit_edge:                    ; preds = %do.end.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %serio_write.exit26.i.land.rhs.i_crit_edge, %do.end.i.land.rhs.i_crit_edge
  %command.addr.036.i = phi ptr [ %incdec.ptr.i, %serio_write.exit26.i.land.rhs.i_crit_edge ], [ %cmd, %do.end.i.land.rhs.i_crit_edge ]
  %7 = ptrtoint ptr %command.addr.036.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %command.addr.036.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not.i = icmp eq i8 %8, 0
  %9 = ptrtoint ptr %serio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %serio.i, align 4
  %write.i27.i = getelementptr inbounds %struct.serio, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %write.i27.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write.i27.i, align 8
  %tobool.not.i28.i = icmp eq ptr %12, null
  br i1 %tobool5.not.i, label %if.then9.critedge.i, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  br i1 %tobool.not.i28.i, label %while.body.i.err20_crit_edge, label %serio_write.exit26.i

while.body.i.err20_crit_edge:                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err20

serio_write.exit26.i:                             ; preds = %while.body.i
  %incdec.ptr.i = getelementptr i8, ptr %command.addr.036.i, i32 1
  %call.i23.i = tail call i32 %12(ptr noundef %10, i8 noundef zeroext %8) #11
  %tobool4.not.i = icmp eq i32 %call.i23.i, 0
  br i1 %tobool4.not.i, label %serio_write.exit26.i.land.rhs.i_crit_edge, label %serio_write.exit26.i.err20_crit_edge

serio_write.exit26.i.err20_crit_edge:             ; preds = %serio_write.exit26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err20

serio_write.exit26.i.land.rhs.i_crit_edge:        ; preds = %serio_write.exit26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

if.then9.critedge.i:                              ; preds = %land.rhs.i
  br i1 %tobool.not.i28.i, label %if.then9.critedge.i.err20_crit_edge, label %rain_send.exit

if.then9.critedge.i.err20_crit_edge:              ; preds = %if.then9.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err20

rain_send.exit:                                   ; preds = %if.then9.critedge.i
  %call.i29.i = tail call i32 %12(ptr noundef %10, i8 noundef zeroext 126) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29.i)
  %tobool.not = icmp eq i32 %call.i29.i, 0
  br i1 %tobool.not, label %if.end, label %rain_send.exit.err20_crit_edge

rain_send.exit.err20_crit_edge:                   ; preds = %rain_send.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err20

if.end:                                           ; preds = %rain_send.exit
  %call2 = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_done, i32 noundef 100) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.err20_crit_edge, label %if.end5

if.end.err20_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err20

if.end5:                                          ; preds = %if.end
  %tobool6.not = icmp eq ptr %reply, null
  br i1 %tobool6.not, label %if.end5.err20_crit_edge, label %land.lhs.true

if.end5.err20_crit_edge:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %err20

land.lhs.true:                                    ; preds = %if.end5
  %cmd_reply = getelementptr inbounds %struct.rain, ptr %rain, i32 0, i32 13
  %call7 = tail call i32 @strlen(ptr noundef nonnull %reply) #16
  %call8 = tail call i32 @strncmp(ptr noundef %cmd_reply, ptr noundef nonnull %reply, i32 noundef %call7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.err20_crit_edge, label %do.body

land.lhs.true.err20_crit_edge:                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %err20

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rain_send_and_wait.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rain_send_and_wait, %if.then15)) #11
          to label %err20 [label %if.then15], !srcloc !106

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %rain to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rain, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rain_send_and_wait.__UNIQUE_ID_ddebug239, ptr noundef %14, ptr noundef nonnull @.str.16, ptr noundef %cmd, ptr noundef %cmd_reply, ptr noundef nonnull %reply) #11
  br label %err20

err20:                                            ; preds = %if.then15, %do.body, %land.lhs.true.err20_crit_edge, %if.end5.err20_crit_edge, %if.end.err20_crit_edge, %rain_send.exit.err20_crit_edge, %if.then9.critedge.i.err20_crit_edge, %serio_write.exit26.i.err20_crit_edge, %while.body.i.err20_crit_edge, %do.end.i.err20_crit_edge
  %err.0 = phi i32 [ %call.i29.i, %rain_send.exit.err20_crit_edge ], [ 0, %land.lhs.true.err20_crit_edge ], [ 0, %if.end5.err20_crit_edge ], [ -110, %if.end.err20_crit_edge ], [ -5, %if.then15 ], [ -5, %do.body ], [ %retval.0.i20.i, %do.end.i.err20_crit_edge ], [ -1, %if.then9.critedge.i.err20_crit_edge ], [ -1, %while.body.i.err20_crit_edge ], [ %call.i23.i, %serio_write.exit26.i.err20_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %write_lock) #11
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex2bin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_to_bin(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_received_msg_ts(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_transmit_attempt_done_ts(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_unregister_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !28, !30, !31, !33, !34, !36, !37, !39, !41, !43, !45, !46, !47, !49, !50, !52, !53, !54, !56, !58, !60, !62, !63, !64, !66, !68, !70, !71, !73, !75, !77, !78, !79, !80, !81, !83, !85, !87, !89, !91, !93, !94, !95}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !{ptr @__UNIQUE_ID_author232, !1, !"__UNIQUE_ID_author232", i1 false, i1 false}
!1 = !{!"../drivers/media/cec/usb/rainshadow/rainshadow-cec.c", i32 34, i32 1}
!2 = !{ptr @__UNIQUE_ID_description233, !3, !"__UNIQUE_ID_description233", i1 false, i1 false}
!3 = !{!"../drivers/media/cec/usb/rainshadow/rainshadow-cec.c", i32 35, i32 1}
!4 = !{ptr @__UNIQUE_ID_file234, !5, !"__UNIQUE_ID_file234", i1 false, i1 false}
!5 = !{!"../drivers/media/cec/usb/rainshadow/rainshadow-cec.c", i32 36, i32 1}
!6 = !{ptr @__UNIQUE_ID_license235, !5, !"__UNIQUE_ID_license235", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_rainshadow_cec__240_380_rain_drv_init6, !8, !"__initcall__kmod_rainshadow_cec__240_380_rain_drv_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/cec/usb/rainshadow/rainshadow-cec.c", i32 380, i32 1}
!9 = !{ptr @__exitcall_rain_drv_exit, !8, !"__exitcall_rain_drv_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/cec/usb/rainshadow/rainshadow-cec.c", i32 373, i32 17}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/cec/usb/rainshadow/rainshadow-cec.c", i32 371, i32 11}
!15 = !{ptr @rain_drv, !16, !"rain_drv", i1 false, i1 false}
!16 = !{!"../drivers/media/cec/usb/rainshadow/rainshadow-cec.c", i32 369, i32 28}
!17 = !{ptr @rain_serio_ids, !18, !"rain_serio_ids", i1 false, i1 false}
!18 = !{!"../drivers/media/cec/usb/rainshadow/rainshadow-cec.c", i32 357, i32 37}
!19 = distinct !{null, !20, !"__print_once", i1 false, i1 false}
!20 = !{!"../drivers/media/cec/usb/rainshadow/rainshadow-cec.c", i32 175, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @rain_interrupt._entry, !20, !"_entry", i1 false, i1 false}
!27 = !{ptr @rain_interrupt._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @rain_connect.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/media/cec/usb/rainshadow/rainshadow-cec.c", i32 328, i32 2}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @rain_connect.__key.9, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/media/cec/usb/rainshadow/rainshadow-cec.c", i32 329, i32 2}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @rain_connect.__key.11, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/media/cec/usb/rainshadow/rainshadow-cec.c", i32 330, i32 2}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @rain_cec_adap_ops, !38, !"rain_cec_adap_ops", i1 false, i1 false}
!38 = !{!"../drivers/media/cec/usb/rainshadow/rainshadow-cec.c", i32 300, i32 34}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/cec/usb/rainshadow/rainshadow-cec.c", i32 270, i32 29}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/cec/usb/rainshadow/rainshadow-cec.c", i32 271, i32 39}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/cec/usb/rainshadow/rainshadow-cec.c", i32 229, i32 3}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @rain_send_and_wait.__UNIQUE_ID_ddebug239, !44, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!47 = !{ptr @init_completion.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../include/linux/completion.h", i32 87, i32 2}
!49 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/cec/usb/rainshadow/rainshadow-cec.c", i32 203, i32 2}
!52 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @rain_send.__UNIQUE_ID_ddebug238, !51, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/cec/usb/rainshadow/rainshadow-cec.c", i32 283, i32 30}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/cec/usb/rainshadow/rainshadow-cec.c", i32 287, i32 30}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/cec/usb/rainshadow/rainshadow-cec.c", i32 290, i32 31}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/cec/usb/rainshadow/rainshadow-cec.c", i32 134, i32 4}
!62 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @rain_irq_work_handler.__UNIQUE_ID_ddebug236, !61, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/cec/usb/rainshadow/rainshadow-cec.c", i32 135, i32 27}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/cec/usb/rainshadow/rainshadow-cec.c", i32 136, i32 27}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/cec/usb/rainshadow/rainshadow-cec.c", i32 159, i32 5}
!70 = !{ptr @rain_irq_work_handler.__UNIQUE_ID_ddebug237, !69, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/cec/usb/rainshadow/rainshadow-cec.c", i32 244, i32 33}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/cec/usb/rainshadow/rainshadow-cec.c", i32 244, i32 38}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/cec/usb/rainshadow/rainshadow-cec.c", i32 247, i32 2}
!77 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @rain_setup._entry, !76, !"_entry", i1 false, i1 false}
!80 = !{ptr @rain_setup._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/cec/usb/rainshadow/rainshadow-cec.c", i32 249, i32 33}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/cec/usb/rainshadow/rainshadow-cec.c", i32 249, i32 40}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/cec/usb/rainshadow/rainshadow-cec.c", i32 252, i32 33}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/cec/usb/rainshadow/rainshadow-cec.c", i32 252, i32 42}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/cec/usb/rainshadow/rainshadow-cec.c", i32 255, i32 34}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/cec/usb/rainshadow/rainshadow-cec.c", i32 193, i32 2}
!93 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @rain_disconnect._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @rain_disconnect._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!105 = !{i8 0, i8 2}
!106 = !{i64 2148322372, i64 2148322377, i64 2148322390, i64 2148322434, i64 2148322468, i64 2148322489}
!107 = !{!"auto-init"}
