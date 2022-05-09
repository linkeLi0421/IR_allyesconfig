; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-taos-evm.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-taos-evm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.serio_driver = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.taos_data = type { %struct.i2c_adapter, ptr, i32, i8, [63 x i8], i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__initcall__kmod_i2c_taos_evm__290_307_taos_drv_init6 = internal global ptr @taos_drv_init, section ".initcall6.init", align 4
@taos_drv = internal global { %struct.serio_driver, [44 x i8] } { %struct.serio_driver { ptr @.str.1, ptr @taos_serio_ids, i8 0, ptr null, ptr @taos_interrupt, ptr @taos_connect, ptr null, ptr null, ptr @taos_disconnect, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@__exitcall_taos_drv_exit = internal global ptr @taos_drv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [52 x i8] c"i2c_taos_evm.author=Jean Delvare <jdelvare@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [55 x i8] c"i2c_taos_evm.description=TAOS evaluation module driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [50 x i8] c"i2c_taos_evm.file=drivers/i2c/busses/i2c-taos-evm\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [25 x i8] c"i2c_taos_evm.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i2c_taos_evm\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"TAOS evaluation module driver\00", [34 x i8] zeroinitializer }, align 32
@taos_serio_ids = internal constant { [2 x %struct.serio_device_id], [24 x i8] } { [2 x %struct.serio_device_id] [%struct.serio_device_id { i8 2, i8 -1, i8 -1, i8 52 }, %struct.serio_device_id zeroinitializer], [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"taos-evm\00", [23 x i8] zeroinitializer }, align 32
@wq = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @wq, i64 44), ptr getelementptr (i8, ptr @wq, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wq.lock\00", [24 x i8] zeroinitializer }, align 32
@taos_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr null, ptr null, ptr @taos_smbus_xfer, ptr null, ptr @taos_smbus_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/i2c/busses/i2c-taos-evm.c\00", [62 x i8] zeroinitializer }, align 32
@taos_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 232, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"TAOS EVM reset failed (state=%d, pos=%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"taos_connect\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@taos_connect._entry_ptr = internal global ptr @taos_connect._entry, section ".printk_index", align 4
@taos_connect._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.6, ptr @.str.4, i32 239, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"TAOS EVM identification failed\0A\00", [32 x i8] zeroinitializer }, align 32
@taos_connect._entry_ptr.11 = internal global ptr @taos_connect._entry.9, section ".printk_index", align 4
@taos_connect._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.6, ptr @.str.4, i32 253, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"TAOS EVM echo off failed (state=%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@taos_connect._entry_ptr.14 = internal global ptr @taos_connect._entry.12, section ".printk_index", align 4
@taos_connect._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.6, ptr @.str.4, i32 260, ptr @.str.17, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Connected to TAOS EVM\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@taos_connect._entry_ptr.18 = internal global ptr @taos_connect._entry.15, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"@%02X\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"$#%02X\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"$%02X#%02X\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"$%02X\00", [26 x i8] zeroinitializer }, align 32
@taos_smbus_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 89, ptr @.str.26, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported transaction %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"taos_smbus_xfer\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@taos_smbus_xfer._entry_ptr = internal global ptr @taos_smbus_xfer._entry, section ".printk_index", align 4
@taos_smbus_xfer.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.4, ptr @.str.27, i8 0, i8 23, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Command buffer: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@taos_smbus_xfer._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.25, ptr @.str.4, i32 109, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Transaction timeout (pos=%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@taos_smbus_xfer._entry_ptr.30 = internal global ptr @taos_smbus_xfer._entry.28, section ".printk_index", align 4
@taos_smbus_xfer.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.4, ptr @.str.31, i8 0, i8 28, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Answer buffer: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"NAK\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ACK\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TAOS \00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TAOS TSL2550 EVM\00", [47 x i8] zeroinitializer }, align 32
@taos_instantiate_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.4, i32 51, ptr @.str.17, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Instantiating device %s at 0x%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"taos_instantiate_device\00", [40 x i8] zeroinitializer }, align 32
@taos_instantiate_device._entry_ptr = internal global ptr @taos_instantiate_device._entry, section ".printk_index", align 4
@tsl2550_info = internal constant { %struct.i2c_board_info, [40 x i8] } { %struct.i2c_board_info { [20 x i8] c"tsl2550\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 57, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@taos_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 282, ptr @.str.17, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Disconnected from TAOS EVM\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"taos_disconnect\00", [16 x i8] zeroinitializer }, align 32
@taos_disconnect._entry_ptr = internal global ptr @taos_disconnect._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.41 = private unnamed_addr constant [9 x i8] c"taos_drv\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 296, i32 28 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 307, i32 1 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 300, i32 17 }
@___asan_gen_.50 = private unnamed_addr constant [15 x i8] c"taos_serio_ids\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 285, i32 37 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 298, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant [3 x i8] c"wq\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 30, i32 8 }
@___asan_gen_.62 = private unnamed_addr constant [15 x i8] c"taos_algorithm\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 144, i32 35 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 226, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 231, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 239, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 252, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 260, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 73, i32 19 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 78, i32 15 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 84, i32 15 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 86, i32 15 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 89, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 94, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 108, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 112, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 117, i32 17 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 121, i32 18 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 187, i32 25 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 49, i32 30 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 50, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant [13 x i8] c"tsl2550_info\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 42, i32 36 }
@___asan_gen_.164 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.171 = private constant [37 x i8] c"../drivers/i2c/busses/i2c-taos-evm.c\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 282, i32 2 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_taos_drv_exit, ptr @__initcall__kmod_i2c_taos_evm__290_307_taos_drv_init6, ptr @taos_connect._entry, ptr @taos_connect._entry.12, ptr @taos_connect._entry.15, ptr @taos_connect._entry.9, ptr @taos_connect._entry_ptr, ptr @taos_connect._entry_ptr.11, ptr @taos_connect._entry_ptr.14, ptr @taos_connect._entry_ptr.18, ptr @taos_disconnect._entry, ptr @taos_disconnect._entry_ptr, ptr @taos_drv_exit, ptr @taos_instantiate_device._entry, ptr @taos_instantiate_device._entry_ptr, ptr @taos_smbus_xfer._entry, ptr @taos_smbus_xfer._entry.28, ptr @taos_smbus_xfer._entry_ptr, ptr @taos_smbus_xfer._entry_ptr.30, ptr @taos_drv, ptr @.str, ptr @.str.1, ptr @taos_serio_ids, ptr @.str.2, ptr @wq, ptr @.str.3, ptr @taos_algorithm, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @tsl2550_info, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taos_drv to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taos_serio_ids to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wq to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taos_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taos_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taos_connect._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taos_connect._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taos_connect._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taos_smbus_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taos_smbus_xfer._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taos_instantiate_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2550_info to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taos_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @taos_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__serio_register_driver(ptr noundef nonnull @taos_drv, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @taos_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @serio_unregister_driver(ptr noundef nonnull @taos_drv) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__serio_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @taos_interrupt(ptr nocapture noundef readonly %serio, i8 noundef zeroext %data, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %state = getelementptr inbounds %struct.taos_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %entry.sw.epilog.sink.split_crit_edge
    i32 3, label %sw.bb11
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %pos = getelementptr inbounds %struct.taos_data, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pos, align 8
  %inc = add i32 %6, 1
  store i32 %inc, ptr %pos, align 8
  %arrayidx = getelementptr %struct.taos_data, ptr %1, i32 0, i32 4, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %data, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %data)
  %cmp = icmp eq i8 %data, 58
  br i1 %cmp, label %sw.bb.sw.epilog.sink.split.sink.split_crit_edge, label %lor.lhs.false

sw.bb.sw.epilog.sink.split.sink.split_crit_edge:  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split.sink.split

lor.lhs.false:                                    ; preds = %sw.bb
  %8 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %9)
  %cmp3 = icmp eq i32 %9, 62
  br i1 %cmp3, label %lor.lhs.false.sw.epilog.sink.split.sink.split_crit_edge, label %lor.lhs.false.sw.epilog_crit_edge

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

lor.lhs.false.sw.epilog.sink.split.sink.split_crit_edge: ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split.sink.split

sw.bb11:                                          ; preds = %entry
  %pos13 = getelementptr inbounds %struct.taos_data, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %pos13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pos13, align 8
  %inc14 = add i32 %11, 1
  store i32 %inc14, ptr %pos13, align 8
  %arrayidx15 = getelementptr %struct.taos_data, ptr %1, i32 0, i32 4, i32 %11
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %data, ptr %arrayidx15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 93, i8 %data)
  %cmp17 = icmp eq i8 %data, 93
  br i1 %cmp17, label %sw.bb11.sw.epilog.sink.split.sink.split_crit_edge, label %sw.bb11.sw.epilog_crit_edge

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb11.sw.epilog.sink.split.sink.split_crit_edge: ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split.sink.split

sw.epilog.sink.split.sink.split:                  ; preds = %sw.bb11.sw.epilog.sink.split.sink.split_crit_edge, %lor.lhs.false.sw.epilog.sink.split.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split.sink.split_crit_edge
  %pos.sink = phi ptr [ %pos, %lor.lhs.false.sw.epilog.sink.split.sink.split_crit_edge ], [ %pos, %sw.bb.sw.epilog.sink.split.sink.split_crit_edge ], [ %pos13, %sw.bb11.sw.epilog.sink.split.sink.split_crit_edge ]
  %13 = ptrtoint ptr %pos.sink to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pos.sink, align 8
  %arrayidx7 = getelementptr %struct.taos_data, ptr %1, i32 0, i32 4, i32 %14
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx7, align 1
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.epilog.sink.split.sink.split, %entry.sw.epilog.sink.split_crit_edge
  %16 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %state, align 4
  tail call void @__wake_up(ptr noundef nonnull @wq, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb11.sw.epilog_crit_edge, %lor.lhs.false.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @taos_connect(ptr noundef %serio, ptr noundef %drv) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry98 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1440) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup153_crit_edge, label %if.end

entry.cleanup153_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup153

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.taos_data, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %state, align 4
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @serio_open(ptr noundef %serio, ptr noundef %drv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.exit_kfree_crit_edge

if.end.exit_kfree_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_kfree

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %call7.i.i, align 8
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @taos_algorithm, ptr %algo, align 8
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %serio, ptr %algo_data, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 9, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %parent, align 8
  %write.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 7
  %7 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end4.serio_write.exit_crit_edge, label %if.then.i

if.end4.serio_write.exit_crit_edge:               ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %serio_write.exit

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 %8(ptr noundef %serio, i8 noundef zeroext 18) #10
  br label %serio_write.exit

serio_write.exit:                                 ; preds = %if.then.i, %if.end4.serio_write.exit_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 227) #10
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp eq i32 %10, 1
  br i1 %cmp, label %serio_write.exit.if.end58_crit_edge, label %if.then20

serio_write.exit.if.end58_crit_edge:              ; preds = %serio_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then20:                                        ; preds = %serio_write.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %11 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %call23235 = call i32 @prepare_to_wait_event(ptr noundef nonnull @wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp26236 = icmp eq i32 %13, 1
  br i1 %cmp26236, label %if.then20.for.end_crit_edge, label %if.then20.if.end42_crit_edge

if.then20.if.end42_crit_edge:                     ; preds = %if.then20
  br label %if.end42

if.then20.for.end_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end42:                                         ; preds = %cleanup.if.end42_crit_edge, %if.then20.if.end42_crit_edge
  %__ret21.1238 = phi i32 [ %__ret21.1, %cleanup.if.end42_crit_edge ], [ 200, %if.then20.if.end42_crit_edge ]
  %call23237 = phi i32 [ %call23, %cleanup.if.end42_crit_edge ], [ %call23235, %if.then20.if.end42_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23237)
  %tobool43.not = icmp eq i32 %call23237, 0
  br i1 %tobool43.not, label %cleanup, label %if.end42.if.end48_crit_edge

if.end42.if.end48_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

cleanup:                                          ; preds = %if.end42
  %call46 = call i32 @schedule_timeout(i32 noundef %__ret21.1238) #10
  %call23 = call i32 @prepare_to_wait_event(ptr noundef nonnull @wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp26 = icmp eq i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool30.not = icmp eq i32 %call46, 0
  %16 = select i1 %cmp26, i1 %tobool30.not, i1 false
  %__ret21.1 = select i1 %16, i32 1, i32 %call46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret21.1)
  %tobool36.not = icmp eq i32 %__ret21.1, 0
  %17 = select i1 %cmp26, i1 true, i1 %tobool36.not
  br i1 %17, label %cleanup.for.end_crit_edge, label %cleanup.if.end42_crit_edge

cleanup.if.end42_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then20.for.end_crit_edge
  call void @finish_wait(ptr noundef nonnull @wq, ptr noundef nonnull %__wq_entry) #10
  br label %if.end48

if.end48:                                         ; preds = %for.end, %if.end42.if.end48_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp51.not = icmp eq i32 %.pr, 1
  br i1 %cmp51.not, label %if.end48.if.end58_crit_edge, label %if.then52

if.end48.if.end58_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %pos = getelementptr inbounds %struct.taos_data, ptr %call7.i.i, i32 0, i32 5
  %19 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pos, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %.pr, i32 noundef %20) #14
  br label %exit_close

if.end58:                                         ; preds = %if.end48.if.end58_crit_edge, %serio_write.exit.if.end58_crit_edge
  %buffer = getelementptr inbounds %struct.taos_data, ptr %call7.i.i, i32 0, i32 4
  %call.i213 = call ptr @strstr(ptr noundef %buffer, ptr noundef nonnull @.str.34) #10
  %tobool.not.i214 = icmp eq ptr %call.i213, null
  br i1 %tobool.not.i214, label %if.end58.if.then61_crit_edge, label %if.end.i

if.end58.if.then61_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then61

if.end.i:                                         ; preds = %if.end58
  %call1.i = call ptr @strchr(ptr noundef nonnull %call.i213, i32 noundef 13) #10
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.if.then61_crit_edge, label %if.end66

if.end.i.if.then61_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then61

if.then61:                                        ; preds = %if.end.i.if.then61_crit_edge, %if.end58.if.then61_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #14
  br label %exit_close

if.end66:                                         ; preds = %if.end.i
  %21 = ptrtoint ptr %call1.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %call1.i, align 1
  %name67 = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 12
  %call69 = call i32 @strlcpy(ptr noundef %name67, ptr noundef nonnull %call.i213, i32 noundef 48) #10
  %22 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %state, align 4
  %23 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write.i, align 8
  %tobool.not.i216 = icmp eq ptr %24, null
  br i1 %tobool.not.i216, label %if.end66.serio_write.exit219_crit_edge, label %if.then.i218

if.end66.serio_write.exit219_crit_edge:           ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %serio_write.exit219

if.then.i218:                                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  %call.i217 = call i32 %24(ptr noundef %serio, i8 noundef zeroext 45) #10
  br label %serio_write.exit219

serio_write.exit219:                              ; preds = %if.then.i218, %if.end66.serio_write.exit219_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 249) #10
  %25 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp82 = icmp eq i32 %26, 1
  br i1 %cmp82, label %serio_write.exit219.if.end143_crit_edge, label %if.then97

serio_write.exit219.if.end143_crit_edge:          ; preds = %serio_write.exit219
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end143

if.then97:                                        ; preds = %serio_write.exit219
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry98) #10
  %27 = call ptr @memset(ptr %__wq_entry98, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry98, i32 noundef 0) #10
  %call103239 = call i32 @prepare_to_wait_event(ptr noundef nonnull @wq, ptr noundef nonnull %__wq_entry98, i32 noundef 1) #10
  %28 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp106240 = icmp eq i32 %29, 1
  br i1 %cmp106240, label %if.then97.for.end130_crit_edge, label %if.then97.if.end122_crit_edge

if.then97.if.end122_crit_edge:                    ; preds = %if.then97
  br label %if.end122

if.then97.for.end130_crit_edge:                   ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end130

if.end122:                                        ; preds = %cleanup127.if.end122_crit_edge, %if.then97.if.end122_crit_edge
  %__ret99.1242 = phi i32 [ %__ret99.1, %cleanup127.if.end122_crit_edge ], [ 25, %if.then97.if.end122_crit_edge ]
  %call103241 = phi i32 [ %call103, %cleanup127.if.end122_crit_edge ], [ %call103239, %if.then97.if.end122_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103241)
  %tobool123.not = icmp eq i32 %call103241, 0
  br i1 %tobool123.not, label %cleanup127, label %if.end122.if.end133_crit_edge

if.end122.if.end133_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end133

cleanup127:                                       ; preds = %if.end122
  %call126 = call i32 @schedule_timeout(i32 noundef %__ret99.1242) #10
  %call103 = call i32 @prepare_to_wait_event(ptr noundef nonnull @wq, ptr noundef nonnull %__wq_entry98, i32 noundef 1) #10
  %30 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp106 = icmp eq i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool110.not = icmp eq i32 %call126, 0
  %32 = select i1 %cmp106, i1 %tobool110.not, i1 false
  %__ret99.1 = select i1 %32, i32 1, i32 %call126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret99.1)
  %tobool116.not = icmp eq i32 %__ret99.1, 0
  %33 = select i1 %cmp106, i1 true, i1 %tobool116.not
  br i1 %33, label %cleanup127.for.end130_crit_edge, label %cleanup127.if.end122_crit_edge

cleanup127.if.end122_crit_edge:                   ; preds = %cleanup127
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122

cleanup127.for.end130_crit_edge:                  ; preds = %cleanup127
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end130

for.end130:                                       ; preds = %cleanup127.for.end130_crit_edge, %if.then97.for.end130_crit_edge
  call void @finish_wait(ptr noundef nonnull @wq, ptr noundef nonnull %__wq_entry98) #10
  br label %if.end133

if.end133:                                        ; preds = %for.end130, %if.end122.if.end133_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry98) #10
  %34 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr233 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr233)
  %cmp136.not = icmp eq i32 %.pr233, 1
  br i1 %cmp136.not, label %if.end133.if.end143_crit_edge, label %if.then137

if.end133.if.end143_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end143

if.then137:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %.pr233) #14
  br label %exit_close

if.end143:                                        ; preds = %if.end133.if.end143_crit_edge, %serio_write.exit219.if.end143_crit_edge
  %call144 = call i32 @i2c_add_adapter(ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %do.end150, label %if.end143.exit_close_crit_edge

if.end143.exit_close_crit_edge:                   ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_close

do.end150:                                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.16) #14
  %call152 = call fastcc ptr @taos_instantiate_device(ptr noundef nonnull %call7.i.i)
  %client = getelementptr inbounds %struct.taos_data, ptr %call7.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call152, ptr %client, align 8
  br label %cleanup153

exit_close:                                       ; preds = %if.end143.exit_close_crit_edge, %if.then137, %if.then61, %if.then52
  %err.0 = phi i32 [ -19, %if.then52 ], [ -19, %if.then137 ], [ %call144, %if.end143.exit_close_crit_edge ], [ -19, %if.then61 ]
  call void @serio_close(ptr noundef %serio) #10
  br label %exit_kfree

exit_kfree:                                       ; preds = %exit_close, %if.end.exit_kfree_crit_edge
  %err.1 = phi i32 [ %call1, %if.end.exit_kfree_crit_edge ], [ %err.0, %exit_close ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup153

cleanup153:                                       ; preds = %exit_kfree, %do.end150, %entry.cleanup153_crit_edge
  %retval.0 = phi i32 [ 0, %do.end150 ], [ %err.1, %exit_kfree ], [ -12, %entry.cleanup153_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @taos_disconnect(ptr noundef %serio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %client = getelementptr inbounds %struct.taos_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 8
  tail call void @i2c_unregister_device(ptr noundef %3) #10
  tail call void @i2c_del_adapter(ptr noundef %1) #10
  tail call void @serio_close(ptr noundef %serio) #10
  tail call void @kfree(ptr noundef %1) #10
  %dev = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.38) #14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serio_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @taos_instantiate_device(ptr noundef %adapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 12
  %call = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(17) @.str.35, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.36, ptr noundef nonnull @tsl2550_info, i32 noundef 57) #14
  %call1 = tail call ptr @i2c_new_client_device(ptr noundef %adapter, ptr noundef nonnull @tsl2550_info) #10
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %call1, %do.end ], [ inttoptr (i32 -19 to ptr), %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @taos_smbus_xfer(ptr noundef %adapter, i16 noundef zeroext %addr, i16 noundef zeroext %flags, i8 noundef zeroext %read_write, i8 noundef zeroext %command, i32 noundef %size, ptr noundef %data) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 18, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %buffer = getelementptr inbounds %struct.taos_data, ptr %3, i32 0, i32 4
  %addr1 = getelementptr inbounds %struct.taos_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %addr1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %addr1, align 8
  %6 = zext i8 %5 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %addr)
  %cmp.not = icmp eq i16 %6, %addr
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i16 %addr to i32
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buffer, ptr noundef nonnull @.str.19, i32 noundef %conv)
  %add.ptr = getelementptr i8, ptr %buffer, i32 %call5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %p.0 = phi ptr [ %add.ptr, %if.then ], [ %buffer, %entry.if.end_crit_edge ]
  %7 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %size, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb14
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp7 = icmp eq i8 %read_write, 0
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %conv10 = zext i8 %command to i32
  %call11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p.0, ptr noundef nonnull @.str.20, i32 noundef %conv10)
  br label %do.body26

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %p.0 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 9216, ptr %p.0, align 1
  br label %do.body26

sw.bb14:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp16 = icmp eq i8 %read_write, 0
  %conv19 = zext i8 %command to i32
  br i1 %cmp16, label %if.then18, label %if.else22

if.then18:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data, align 2
  %conv20 = zext i8 %10 to i32
  %call21 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p.0, ptr noundef nonnull @.str.22, i32 noundef %conv19, i32 noundef %conv20)
  br label %do.body26

if.else22:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #12
  %call24 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p.0, ptr noundef nonnull @.str.23, i32 noundef %conv19)
  br label %do.body26

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %size) #14
  br label %cleanup170

do.body26:                                        ; preds = %if.else22, %if.then18, %if.else, %if.then9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @taos_smbus_xfer.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@taos_smbus_xfer, %do.end37)) #10
          to label %if.then31 [label %do.end37], !srcloc !101

if.then31:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  %dev32 = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @taos_smbus_xfer.__UNIQUE_ID_ddebug288, ptr noundef %dev32, ptr noundef nonnull @.str.27, ptr noundef %buffer) #10
  br label %do.end37

do.end37:                                         ; preds = %if.then31, %do.body26
  %11 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %buffer, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool40.not241 = icmp eq i8 %12, 0
  br i1 %tobool40.not241, label %do.end37.for.end_crit_edge, label %for.body.lr.ph

do.end37.for.end_crit_edge:                       ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end37
  %write.i = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %serio_write.exit.for.body_crit_edge, %for.body.lr.ph
  %13 = phi i8 [ %12, %for.body.lr.ph ], [ %17, %serio_write.exit.for.body_crit_edge ]
  %p.1242 = phi ptr [ %buffer, %for.body.lr.ph ], [ %incdec.ptr, %serio_write.exit.for.body_crit_edge ]
  %14 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %for.body.serio_write.exit_crit_edge, label %if.then.i

for.body.serio_write.exit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %serio_write.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 %15(ptr noundef %1, i8 noundef zeroext %13) #10
  br label %serio_write.exit

serio_write.exit:                                 ; preds = %if.then.i, %for.body.serio_write.exit_crit_edge
  %incdec.ptr = getelementptr i8, ptr %p.1242, i32 1
  %16 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %incdec.ptr, align 1
  %tobool40.not = icmp eq i8 %17, 0
  br i1 %tobool40.not, label %serio_write.exit.for.end_crit_edge, label %serio_write.exit.for.body_crit_edge

serio_write.exit.for.body_crit_edge:              ; preds = %serio_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

serio_write.exit.for.end_crit_edge:               ; preds = %serio_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %serio_write.exit.for.end_crit_edge, %do.end37.for.end_crit_edge
  %conv42 = trunc i16 %addr to i8
  %18 = ptrtoint ptr %addr1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv42, ptr %addr1, align 8
  %pos = getelementptr inbounds %struct.taos_data, ptr %3, i32 0, i32 5
  %19 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %pos, align 8
  %state = getelementptr inbounds %struct.taos_data, ptr %3, i32 0, i32 2
  %20 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 3, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp45 = icmp eq i8 %read_write, 0
  %write.i228 = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %write.i228 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write.i228, align 8
  %tobool.not.i229 = icmp eq ptr %22, null
  br i1 %tobool.not.i229, label %for.end.serio_write.exit232_crit_edge, label %if.then.i231

for.end.serio_write.exit232_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %serio_write.exit232

if.then.i231:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv47 = select i1 %cmp45, i8 62, i8 60
  %call.i230 = tail call i32 %22(ptr noundef %1, i8 noundef zeroext %conv47) #10
  br label %serio_write.exit232

serio_write.exit232:                              ; preds = %if.then.i231, %for.end.serio_write.exit232_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 105) #10
  %23 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp57 = icmp eq i32 %24, 1
  br i1 %cmp57, label %serio_write.exit232.lor.lhs.false_crit_edge, label %if.then72

serio_write.exit232.lor.lhs.false_crit_edge:      ; preds = %serio_write.exit232
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

if.then72:                                        ; preds = %serio_write.exit232
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %25 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %call76243 = call i32 @prepare_to_wait_event(ptr noundef nonnull @wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp79244 = icmp eq i32 %27, 1
  br i1 %cmp79244, label %if.then72.for.end104_crit_edge, label %if.then72.if.end99_crit_edge

if.then72.if.end99_crit_edge:                     ; preds = %if.then72
  br label %if.end99

if.then72.for.end104_crit_edge:                   ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end104

if.end99:                                         ; preds = %cleanup.if.end99_crit_edge, %if.then72.if.end99_crit_edge
  %__ret73.1246 = phi i32 [ %__ret73.1, %cleanup.if.end99_crit_edge ], [ 15, %if.then72.if.end99_crit_edge ]
  %call76245 = phi i32 [ %call76, %cleanup.if.end99_crit_edge ], [ %call76243, %if.then72.if.end99_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76245)
  %tobool100.not = icmp eq i32 %call76245, 0
  br i1 %tobool100.not, label %cleanup, label %if.end99.if.end106_crit_edge

if.end99.if.end106_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

cleanup:                                          ; preds = %if.end99
  %call103 = call i32 @schedule_timeout(i32 noundef %__ret73.1246) #10
  %call76 = call i32 @prepare_to_wait_event(ptr noundef nonnull @wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %28 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp79 = icmp eq i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool85.not = icmp eq i32 %call103, 0
  %30 = select i1 %cmp79, i1 %tobool85.not, i1 false
  %__ret73.1 = select i1 %30, i32 1, i32 %call103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret73.1)
  %tobool92.not = icmp eq i32 %__ret73.1, 0
  %31 = select i1 %cmp79, i1 true, i1 %tobool92.not
  br i1 %31, label %cleanup.for.end104_crit_edge, label %cleanup.if.end99_crit_edge

cleanup.if.end99_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99

cleanup.for.end104_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end104

for.end104:                                       ; preds = %cleanup.for.end104_crit_edge, %if.then72.for.end104_crit_edge
  call void @finish_wait(ptr noundef nonnull @wq, ptr noundef nonnull %__wq_entry) #10
  br label %if.end106

if.end106:                                        ; preds = %for.end104, %if.end99.if.end106_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  %32 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp109.not = icmp eq i32 %.pr, 1
  br i1 %cmp109.not, label %if.end106.lor.lhs.false_crit_edge, label %if.end106.do.end117_crit_edge

if.end106.do.end117_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end117

if.end106.lor.lhs.false_crit_edge:                ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end106.lor.lhs.false_crit_edge, %serio_write.exit232.lor.lhs.false_crit_edge
  %33 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %34)
  %cmp112.not = icmp eq i32 %34, 5
  br i1 %cmp112.not, label %do.body121, label %lor.lhs.false.do.end117_crit_edge

lor.lhs.false.do.end117_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end117

do.end117:                                        ; preds = %lor.lhs.false.do.end117_crit_edge, %if.end106.do.end117_crit_edge
  %dev118 = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9
  %35 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pos, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev118, ptr noundef nonnull @.str.29, i32 noundef %36) #14
  br label %cleanup170

do.body121:                                       ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @taos_smbus_xfer.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@taos_smbus_xfer, %do.end141)) #10
          to label %if.then135 [label %do.end141], !srcloc !101

if.then135:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #12
  %dev136 = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @taos_smbus_xfer.__UNIQUE_ID_ddebug289, ptr noundef %dev136, ptr noundef nonnull @.str.31, ptr noundef %buffer) #10
  br label %do.end141

do.end141:                                        ; preds = %if.then135, %do.body121
  %add.ptr144 = getelementptr %struct.taos_data, ptr %3, i32 0, i32 4, i32 1
  %arrayidx = getelementptr %struct.taos_data, ptr %3, i32 0, i32 4, i32 4
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %arrayidx, align 1
  %call145 = call i32 @strcmp(ptr noundef %add.ptr144, ptr noundef nonnull dereferenceable(4) @.str.32) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %do.end141.cleanup170_crit_edge, label %if.end148

do.end141.cleanup170_crit_edge:                   ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup170

if.end148:                                        ; preds = %do.end141
  br i1 %cmp45, label %if.then152, label %if.else157

if.then152:                                       ; preds = %if.end148
  %call153 = call i32 @strcmp(ptr noundef %add.ptr144, ptr noundef nonnull dereferenceable(4) @.str.33) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %if.then152.cleanup170_crit_edge, label %if.then152.if.end169_crit_edge

if.then152.if.end169_crit_edge:                   ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end169

if.then152.cleanup170_crit_edge:                  ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup170

if.else157:                                       ; preds = %if.end148
  %38 = ptrtoint ptr %add.ptr144 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %add.ptr144, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 120, i8 %39)
  %cmp160 = icmp eq i8 %39, 120
  br i1 %cmp160, label %if.then162, label %if.else157.if.end169_crit_edge

if.else157.if.end169_crit_edge:                   ; preds = %if.else157
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end169

if.then162:                                       ; preds = %if.else157
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr163 = getelementptr %struct.taos_data, ptr %3, i32 0, i32 4, i32 2
  %call164 = call i32 @kstrtou8(ptr noundef %add.ptr163, i32 noundef 16, ptr noundef %data) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %tobool165.not = icmp eq i32 %call164, 0
  %. = select i1 %tobool165.not, i32 0, i32 -71
  br label %cleanup170

if.end169:                                        ; preds = %if.else157.if.end169_crit_edge, %if.then152.if.end169_crit_edge
  br label %cleanup170

cleanup170:                                       ; preds = %if.end169, %if.then162, %if.then152.cleanup170_crit_edge, %do.end141.cleanup170_crit_edge, %do.end117, %do.end
  %retval.0 = phi i32 [ -95, %do.end ], [ -5, %do.end117 ], [ -5, %if.end169 ], [ -19, %do.end141.cleanup170_crit_edge ], [ 0, %if.then152.cleanup170_crit_edge ], [ %., %if.then162 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @taos_smbus_func(ptr nocapture noundef readnone %adapter) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1966080
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !21, !22, !24, !26, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !59, !60, !61, !62, !64, !65, !67, !68, !69, !71, !72, !74, !76, !78, !80, !82, !83, !84, !85, !87, !89, !90, !91}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @__initcall__kmod_i2c_taos_evm__290_307_taos_drv_init6, !1, !"__initcall__kmod_i2c_taos_evm__290_307_taos_drv_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-taos-evm.c", i32 307, i32 1}
!2 = !{ptr @__exitcall_taos_drv_exit, !1, !"__exitcall_taos_drv_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-taos-evm.c", i32 309, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-taos-evm.c", i32 310, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-taos-evm.c", i32 311, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/i2c/busses/i2c-taos-evm.c", i32 300, i32 17}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/i2c/busses/i2c-taos-evm.c", i32 298, i32 11}
!15 = !{ptr @taos_drv, !16, !"taos_drv", i1 false, i1 false}
!16 = !{!"../drivers/i2c/busses/i2c-taos-evm.c", i32 296, i32 28}
!17 = !{ptr @taos_serio_ids, !18, !"taos_serio_ids", i1 false, i1 false}
!18 = !{!"../drivers/i2c/busses/i2c-taos-evm.c", i32 285, i32 37}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/i2c/busses/i2c-taos-evm.c", i32 30, i32 8}
!21 = !{ptr @wq, !20, !"wq", i1 false, i1 false}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/i2c/busses/i2c-taos-evm.c", i32 226, i32 2}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/i2c/busses/i2c-taos-evm.c", i32 231, i32 3}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @taos_connect._entry, !25, !"_entry", i1 false, i1 false}
!30 = !{ptr @taos_connect._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/i2c/busses/i2c-taos-evm.c", i32 239, i32 3}
!33 = !{ptr @taos_connect._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @taos_connect._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/i2c/busses/i2c-taos-evm.c", i32 252, i32 3}
!37 = !{ptr @taos_connect._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @taos_connect._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/i2c/busses/i2c-taos-evm.c", i32 260, i32 2}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @taos_connect._entry.15, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @taos_connect._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @taos_algorithm, !45, !"taos_algorithm", i1 false, i1 false}
!45 = !{!"../drivers/i2c/busses/i2c-taos-evm.c", i32 144, i32 35}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/i2c/busses/i2c-taos-evm.c", i32 73, i32 19}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/i2c/busses/i2c-taos-evm.c", i32 78, i32 15}
!50 = distinct !{null, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/i2c/busses/i2c-taos-evm.c", i32 80, i32 15}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/i2c/busses/i2c-taos-evm.c", i32 84, i32 15}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/i2c/busses/i2c-taos-evm.c", i32 86, i32 15}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/i2c/busses/i2c-taos-evm.c", i32 89, i32 3}
!58 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @taos_smbus_xfer._entry, !57, !"_entry", i1 false, i1 false}
!61 = !{ptr @taos_smbus_xfer._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/i2c/busses/i2c-taos-evm.c", i32 94, i32 2}
!64 = !{ptr @taos_smbus_xfer.__UNIQUE_ID_ddebug288, !63, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/i2c/busses/i2c-taos-evm.c", i32 108, i32 3}
!67 = !{ptr @taos_smbus_xfer._entry.28, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @taos_smbus_xfer._entry_ptr.30, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/i2c/busses/i2c-taos-evm.c", i32 112, i32 2}
!71 = !{ptr @taos_smbus_xfer.__UNIQUE_ID_ddebug289, !70, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/i2c/busses/i2c-taos-evm.c", i32 117, i32 17}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/i2c/busses/i2c-taos-evm.c", i32 121, i32 18}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/i2c/busses/i2c-taos-evm.c", i32 187, i32 25}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/i2c/busses/i2c-taos-evm.c", i32 49, i32 30}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/i2c/busses/i2c-taos-evm.c", i32 50, i32 3}
!82 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @taos_instantiate_device._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @taos_instantiate_device._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @tsl2550_info, !86, !"tsl2550_info", i1 false, i1 false}
!86 = !{!"../drivers/i2c/busses/i2c-taos-evm.c", i32 42, i32 36}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/i2c/busses/i2c-taos-evm.c", i32 282, i32 2}
!89 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @taos_disconnect._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @taos_disconnect._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{i64 2148762300, i64 2148762305, i64 2148762318, i64 2148762362, i64 2148762396, i64 2148762417}
