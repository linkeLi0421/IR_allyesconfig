; ModuleID = '/llk/IR_all_yes/drivers/input/mouse/psmouse-smbus.c_pt.bc'
source_filename = "../drivers/input/mouse/psmouse-smbus.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.psmouse_smbus_dev = type { %struct.i2c_board_info, ptr, ptr, %struct.list_head, i8, i8 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.psmouse = type { ptr, ptr, %struct.ps2dev, %struct.delayed_work, ptr, ptr, ptr, [8 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, [64 x i8], [32 x i8], i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ps2dev = type { ptr, %struct.mutex, %struct.wait_queue_head, i32, [8 x i8], i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.psmouse_smbus_removal_work = type { %struct.work_struct, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@psmouse_smbus_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @psmouse_smbus_mutex, i64 52), ptr getelementptr (i8, ptr @psmouse_smbus_mutex, i64 52) }, ptr @psmouse_smbus_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@psmouse_smbus_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @psmouse_smbus_list, ptr @psmouse_smbus_list }, [24 x i8] zeroinitializer }, align 32
@psmouse_smbus_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 282, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"psmouse_smbus: failed to set up link with iSMBus companion %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"psmouse_smbus_init\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/input/mouse/psmouse-smbus.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@psmouse_smbus_init._entry_ptr = internal global ptr @psmouse_smbus_init._entry, section ".printk_index", align 4
@i2c_bus_type = external dso_local global %struct.bus_type, align 4
@psmouse_smbus_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @psmouse_smbus_notifier_call, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@psmouse_smbus_module_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013psmouse: failed to register i2c bus notifier: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"psmouse_smbus_module_init\00", [38 x i8] zeroinitializer }, align 32
@psmouse_smbus_module_init._entry_ptr = internal global ptr @psmouse_smbus_module_init._entry, section ".printk_index", align 4
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"psmouse_smbus_mutex.wait_lock\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"psmouse_smbus_mutex\00", [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@psmouse_smbus_disconnect.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"psmouse\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"psmouse_smbus_disconnect\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"psmouse_smbus: posting removal request for SMBus companion %s\0A\00", [33 x i8] zeroinitializer }, align 32
@psmouse_smbus_schedule_remove.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&rwork->work)\00", [32 x i8] zeroinitializer }, align 32
@psmouse_smbus_remove_i2c_device.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"psmouse_smbus_remove_i2c_device\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"destroying SMBus companion device\0A\00", [61 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@i2c_adapter_type = external dso_local global %struct.device_type, align 4
@i2c_client_type = external dso_local global %struct.device_type, align 4
@psmouse_smbus_check_adapter.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"psmouse_smbus_check_adapter\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"psmouse_smbus: SMBus candidate adapter appeared, triggering rescan\0A\00", [60 x i8] zeroinitializer }, align 32
@psmouse_smbus_detach_i2c_client.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"psmouse_smbus_detach_i2c_client\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"psmouse_smbus: Marking SMBus companion %s as gone\0A\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.19 = private unnamed_addr constant [20 x i8] c"psmouse_smbus_mutex\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [19 x i8] c"psmouse_smbus_list\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 26, i32 8 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 280, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant [23 x i8] c"psmouse_smbus_notifier\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 110, i32 30 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 310, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 27, i32 8 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 181, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 161, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 139, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 52, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private constant [39 x i8] c"../drivers/input/mouse/psmouse-smbus.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 74, i32 4 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @psmouse_smbus_init._entry, ptr @psmouse_smbus_init._entry_ptr, ptr @psmouse_smbus_module_init._entry, ptr @psmouse_smbus_module_init._entry_ptr, ptr @psmouse_smbus_mutex, ptr @psmouse_smbus_list, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @psmouse_smbus_notifier, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @psmouse_smbus_schedule_remove.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_smbus_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_smbus_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_smbus_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_smbus_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_smbus_module_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_smbus_schedule_remove.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @psmouse_smbus_cleanup(ptr noundef readnone %psmouse) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @psmouse_smbus_mutex, i32 noundef 0) #7
  %0 = load ptr, ptr @psmouse_smbus_list, align 4
  %cmp.not22 = icmp eq ptr %0, @psmouse_smbus_list
  br i1 %cmp.not22, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in23 = phi ptr [ %.pn26, %for.inc.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %smbdev.025 = getelementptr i8, ptr %.pn.in23, i32 -64
  %1 = ptrtoint ptr %.pn.in23 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn26 = load ptr, ptr %.pn.in23, align 4
  %psmouse6 = getelementptr i8, ptr %.pn.in23, i32 -8
  %2 = ptrtoint ptr %psmouse6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %psmouse6, align 4
  %cmp7 = icmp eq ptr %3, %psmouse
  br i1 %cmp7, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in23) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in23, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %.pn.in23 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %.pn.in23, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %10 = ptrtoint ptr %.pn.in23 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in23, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in23, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %smbdev.025) #7
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn26, @psmouse_smbus_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @psmouse_smbus_mutex) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psmouse_smbus_init(ptr noundef %psmouse, ptr nocapture noundef readonly %board, ptr noundef %pdata, i32 noundef %pdata_size, i1 noundef zeroext %need_deactivate, i1 noundef zeroext %leave_breadcrumbs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 76) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %frombool = zext i1 %need_deactivate to i8
  %psmouse2 = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %psmouse2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %psmouse, ptr %psmouse2, align 8
  %2 = call ptr @memcpy(ptr %call7.i.i, ptr %board, i32 56)
  %need_deactivate5 = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %need_deactivate5 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool, ptr %need_deactivate5, align 1
  %tobool7.not = icmp eq ptr %pdata, null
  br i1 %tobool7.not, label %if.end.if.end16_crit_edge, label %if.then8

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then8:                                         ; preds = %if.end
  %call9 = tail call ptr @kmemdup(ptr noundef nonnull %pdata, i32 noundef %pdata_size, i32 noundef 3264) #7
  %platform_data = getelementptr inbounds %struct.i2c_board_info, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9, ptr %platform_data, align 4
  %tobool13.not = icmp eq ptr %call9, null
  br i1 %tobool13.not, label %if.then14, label %if.then8.if.end16_crit_edge

if.then8.if.end16_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then14:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end16:                                         ; preds = %if.then8.if.end16_crit_edge, %if.end.if.end16_crit_edge
  br i1 %need_deactivate, label %if.then18, label %if.end16.if.end20_crit_edge

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call i32 @psmouse_deactivate(ptr noundef %psmouse) #7
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16.if.end20_crit_edge
  %5 = ptrtoint ptr %psmouse to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %psmouse, align 4
  %protocol_handler = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 26
  %6 = ptrtoint ptr %protocol_handler to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @psmouse_smbus_process_byte, ptr %protocol_handler, align 4
  %reconnect = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 30
  %7 = ptrtoint ptr %reconnect to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @psmouse_smbus_reconnect, ptr %reconnect, align 4
  %fast_reconnect = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 31
  %8 = ptrtoint ptr %fast_reconnect to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @psmouse_smbus_reconnect, ptr %fast_reconnect, align 4
  %disconnect = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 32
  %9 = ptrtoint ptr %disconnect to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @psmouse_smbus_disconnect, ptr %disconnect, align 4
  %resync_time = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 24
  %10 = ptrtoint ptr %resync_time to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %resync_time, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @psmouse_smbus_mutex, i32 noundef 0) #7
  %node = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %call7.i.i, i32 0, i32 3
  %11 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @psmouse_smbus_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %11, ptr noundef nonnull @psmouse_smbus_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end20.list_add_tail.exit_crit_edge

if.end20.list_add_tail.exit_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %node, ptr getelementptr inbounds (%struct.list_head, ptr @psmouse_smbus_list, i32 0, i32 1), align 4
  %12 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @psmouse_smbus_list, ptr %node, align 8
  %prev3.i.i = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %call7.i.i, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %node, ptr %11, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end20.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @psmouse_smbus_mutex) #7
  %call21 = tail call i32 @i2c_for_each_dev(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @psmouse_smbus_create_companion) #7
  %client = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %client, align 4
  %tobool22.not = icmp eq ptr %16, null
  br i1 %tobool22.not, label %if.end36, label %if.then23

if.then23:                                        ; preds = %list_add_tail.exit
  %dev = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %17 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ps2dev, align 4
  %dev25 = getelementptr inbounds %struct.serio, ptr %18, i32 0, i32 18
  %call26 = tail call ptr @device_link_add(ptr noundef %dev, ptr noundef %dev25, i32 noundef 1) #7
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %do.end, label %if.then23.cleanup_crit_edge

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then23
  %19 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ps2dev, align 4
  %dev31 = getelementptr inbounds %struct.serio, ptr %20, i32 0, i32 18
  %21 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %client, align 4
  %init_name.i = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4, i32 3
  %23 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev33 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  %25 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev33, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %26, %if.end.i ], [ %24, %do.end.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev31, ptr noundef nonnull @.str, ptr noundef %retval.0.i) #11
  br label %cleanup

if.end36:                                         ; preds = %list_add_tail.exit
  %platform_data38 = getelementptr inbounds %struct.i2c_board_info, ptr %call7.i.i, i32 0, i32 4
  %27 = ptrtoint ptr %platform_data38 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %platform_data38, align 4
  tail call void @kfree(ptr noundef %28) #7
  %29 = ptrtoint ptr %platform_data38 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %platform_data38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  %leave_breadcrumbs.not = xor i1 %leave_breadcrumbs, true
  %brmerge = or i1 %cmp, %leave_breadcrumbs.not
  br i1 %brmerge, label %if.then42, label %if.end36.if.end44_crit_edge

if.end36.if.end44_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then42:                                        ; preds = %if.end36
  tail call void @mutex_lock_nested(ptr noundef nonnull @psmouse_smbus_mutex, i32 noundef 0) #7
  %call.i.i76 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #7
  br i1 %call.i.i76, label %if.end.i.i77, label %if.then42.list_del.exit_crit_edge

if.then42.list_del.exit_crit_edge:                ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i77:                                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %call7.i.i, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i, align 4
  %32 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %node, align 8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i77, %if.then42.list_del.exit_crit_edge
  %36 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 8
  %prev.i = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %call7.i.i, i32 0, i32 3, i32 1
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @psmouse_smbus_mutex) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %if.end44

if.end44:                                         ; preds = %list_del.exit, %if.end36.if.end44_crit_edge
  %spec.select = select i1 %cmp, i32 %call21, i32 -11
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %dev_name.exit, %if.then23.cleanup_crit_edge, %if.then14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end44 ], [ -12, %if.then14 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %dev_name.exit ], [ 0, %if.then23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psmouse_deactivate(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @psmouse_smbus_process_byte(ptr nocapture noundef readnone %psmouse) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psmouse_smbus_reconnect(ptr noundef %psmouse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %need_deactivate = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %need_deactivate to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %need_deactivate, align 1, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @psmouse_deactivate(ptr noundef %psmouse) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @psmouse_smbus_disconnect(ptr nocapture noundef %psmouse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @psmouse_smbus_mutex, i32 noundef 0) #7
  %dead = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dead to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dead, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %node = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %1, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %10 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %1, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %1) #7
  br label %if.end15

if.else:                                          ; preds = %entry
  %12 = ptrtoint ptr %dead to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %dead, align 4
  %client = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %15 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ps2dev, align 4
  %dev2 = getelementptr inbounds %struct.serio, ptr %16, i32 0, i32 18
  tail call void @device_link_remove(ptr noundef %dev, ptr noundef %dev2) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @psmouse_smbus_disconnect.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@psmouse_smbus_disconnect, %if.then6)) #7
          to label %do.end [label %if.then6], !srcloc !51

if.then6:                                         ; preds = %if.else
  %psmouse7 = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %psmouse7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %psmouse7, align 4
  %ps2dev8 = getelementptr inbounds %struct.psmouse, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %ps2dev8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ps2dev8, align 4
  %dev10 = getelementptr inbounds %struct.serio, ptr %20, i32 0, i32 18
  %21 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %client, align 4
  %init_name.i = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4, i32 3
  %23 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then6.dev_name.exit_crit_edge

if.then6.dev_name.exit_crit_edge:                 ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %dev12 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  %25 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev12, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then6.dev_name.exit_crit_edge
  %retval.0.i26 = phi ptr [ %26, %if.end.i ], [ %24, %if.then6.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @psmouse_smbus_disconnect.__UNIQUE_ID_ddebug291, ptr noundef %dev10, ptr noundef nonnull @.str.11, ptr noundef %retval.0.i26) #7
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %if.else
  %27 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %client, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 48) #10
  %tobool.not.i27 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i27, label %do.end.if.end15_crit_edge, label %do.body.i

do.end.if.end15_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

do.body.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__init_work(ptr noundef nonnull %call7.i.i.i, i32 noundef 0) #7
  %30 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -64, ptr %call7.i.i.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @psmouse_smbus_schedule_remove.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry4.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %entry4.i, ptr %entry4.i, align 4
  %prev.i.i28 = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %prev.i.i28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %entry4.i, ptr %prev.i.i28, align 8
  %func.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @psmouse_smbus_remove_i2c_device, ptr %func.i, align 4
  %client6.i = getelementptr inbounds %struct.psmouse_smbus_removal_work, ptr %call7.i.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %client6.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %28, ptr %client6.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %35 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %35, ptr noundef nonnull %call7.i.i.i) #7
  br label %if.end15

if.end15:                                         ; preds = %do.body.i, %do.end.if.end15_crit_edge, %list_del.exit
  tail call void @mutex_unlock(ptr noundef nonnull @psmouse_smbus_mutex) #7
  %36 = ptrtoint ptr %psmouse to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %psmouse, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_for_each_dev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psmouse_smbus_create_companion(ptr noundef %dev, ptr noundef %data) #0 align 64 {
entry:
  %addr_list = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr_list) #7
  %0 = getelementptr inbounds [2 x i16], ptr %addr_list, i32 0, i32 1
  %addr = getelementptr inbounds %struct.i2c_board_info, ptr %data, i32 0, i32 2
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %addr, align 2
  %3 = ptrtoint ptr %addr_list to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %addr_list, align 2
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -2, ptr %0, align 2
  %call = tail call ptr @i2c_verify_adapter(ptr noundef %dev) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %8(ptr noundef nonnull %call) #7
  %9 = and i32 %call.i.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call6 = call ptr @i2c_new_scanned_device(ptr noundef nonnull %call, ptr noundef %data, ptr noundef nonnull %addr_list, ptr noundef null) #7
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %client10 = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %data, i32 0, i32 2
  %10 = ptrtoint ptr %client10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call6, ptr %client10, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end9 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr_list) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psmouse_smbus_module_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bus_register_notifier(ptr noundef nonnull @i2c_bus_type, ptr noundef nonnull @psmouse_smbus_notifier) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @psmouse_smbus_module_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bus_unregister_notifier(ptr noundef nonnull @i2c_bus_type, ptr noundef nonnull @psmouse_smbus_notifier) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  tail call void @flush_workqueue(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_unregister_notifier(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_link_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @psmouse_smbus_remove_i2c_device(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @psmouse_smbus_remove_i2c_device.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@psmouse_smbus_remove_i2c_device, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !51

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %client = getelementptr inbounds %struct.psmouse_smbus_removal_work, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @psmouse_smbus_remove_i2c_device.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.14) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %client4 = getelementptr inbounds %struct.psmouse_smbus_removal_work, ptr %work, i32 0, i32 1
  %2 = ptrtoint ptr %client4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client4, align 4
  tail call void @i2c_unregister_device(ptr noundef %3) #7
  tail call void @kfree(ptr noundef %work) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_verify_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_scanned_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psmouse_smbus_notifier_call(ptr nocapture noundef readnone %nb, i32 noundef %action, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %action, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %type = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 4
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %type, align 4
  %cmp = icmp eq ptr %2, @i2c_adapter_type
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %data, i32 -200
  tail call fastcc void @psmouse_smbus_check_adapter(ptr noundef %add.ptr)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %type2 = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 4
  %3 = ptrtoint ptr %type2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %type2, align 4
  %cmp3 = icmp eq ptr %4, @i2c_client_type
  br i1 %cmp3, label %if.then4, label %sw.bb1.sw.epilog_crit_edge

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then4:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr7 = getelementptr i8, ptr %data, i32 -32
  tail call fastcc void @psmouse_smbus_detach_i2c_client(ptr noundef %add.ptr7)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then4, %sw.bb1.sw.epilog_crit_edge, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @psmouse_smbus_check_adapter(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %3(ptr noundef %adapter) #7
  %4 = and i32 %call.i.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @psmouse_smbus_mutex, i32 noundef 0) #7
  %.pn28 = load ptr, ptr @psmouse_smbus_list, align 4
  %cmp.not29 = icmp eq ptr %.pn28, @psmouse_smbus_list
  br i1 %cmp.not29, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn30 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn28, %if.end.for.body_crit_edge ]
  %dead = getelementptr i8, ptr %.pn30, i32 8
  %5 = ptrtoint ptr %dead to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dead, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %if.end3, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end3:                                          ; preds = %for.body
  %client = getelementptr i8, ptr %.pn30, i32 -4
  %7 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %client, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %do.body, label %if.end3.for.inc_crit_edge

if.end3.for.inc_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.body:                                          ; preds = %if.end3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @psmouse_smbus_check_adapter.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@psmouse_smbus_check_adapter, %if.then13)) #7
          to label %do.end [label %if.then13], !srcloc !51

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %psmouse = getelementptr i8, ptr %.pn30, i32 -8
  %9 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %psmouse, align 4
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ps2dev, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %12, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @psmouse_smbus_check_adapter.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.16) #7
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  %psmouse15 = getelementptr i8, ptr %.pn30, i32 -8
  %13 = ptrtoint ptr %psmouse15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %psmouse15, align 4
  %ps2dev16 = getelementptr inbounds %struct.psmouse, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %ps2dev16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ps2dev16, align 4
  tail call void @serio_rescan(ptr noundef %16) #7
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.end3.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %17 = ptrtoint ptr %.pn30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn30, align 4
  %cmp.not = icmp eq ptr %.pn, @psmouse_smbus_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @psmouse_smbus_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @psmouse_smbus_detach_i2c_client(ptr noundef %client) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @psmouse_smbus_mutex, i32 noundef 0) #7
  %0 = load ptr, ptr @psmouse_smbus_list, align 4
  %cmp.not58 = icmp eq ptr %0, @psmouse_smbus_list
  br i1 %cmp.not58, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in59 = phi ptr [ %0, %for.body.lr.ph ], [ %.pn63, %for.inc.for.body_crit_edge ]
  %smbdev.062 = getelementptr i8, ptr %.pn.in59, i32 -64
  %1 = ptrtoint ptr %.pn.in59 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn63 = load ptr, ptr %.pn.in59, align 4
  %client6 = getelementptr i8, ptr %.pn.in59, i32 -4
  %2 = ptrtoint ptr %client6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client6, align 4
  %cmp7.not = icmp eq ptr %3, %client
  br i1 %cmp7.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %4 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data, align 8
  tail call void @kfree(ptr noundef %5) #7
  %6 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %platform_data, align 8
  %dead = getelementptr i8, ptr %.pn.in59, i32 8
  %7 = ptrtoint ptr %dead to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dead, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %do.body, label %if.else

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @psmouse_smbus_detach_i2c_client.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@psmouse_smbus_detach_i2c_client, %if.then16)) #7
          to label %do.end [label %if.then16], !srcloc !51

if.then16:                                        ; preds = %do.body
  %psmouse = getelementptr i8, ptr %.pn.in59, i32 -8
  %9 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %psmouse, align 4
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ps2dev, align 4
  %dev17 = getelementptr inbounds %struct.serio, ptr %12, i32 0, i32 18
  %13 = ptrtoint ptr %client6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client6, align 4
  %init_name.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4, i32 3
  %15 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then16.dev_name.exit_crit_edge

if.then16.dev_name.exit_crit_edge:                ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %dev19 = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  %17 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev19, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then16.dev_name.exit_crit_edge
  %retval.0.i54 = phi ptr [ %18, %if.end.i ], [ %16, %if.then16.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @psmouse_smbus_detach_i2c_client.__UNIQUE_ID_ddebug289, ptr noundef %dev17, ptr noundef nonnull @.str.18, ptr noundef %retval.0.i54) #7
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %do.body
  %19 = ptrtoint ptr %dead to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %dead, align 4
  %20 = ptrtoint ptr %client6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %client6, align 4
  %dev24 = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  %psmouse25 = getelementptr i8, ptr %.pn.in59, i32 -8
  %22 = ptrtoint ptr %psmouse25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %psmouse25, align 4
  %ps2dev26 = getelementptr inbounds %struct.psmouse, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %ps2dev26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ps2dev26, align 4
  %dev28 = getelementptr inbounds %struct.serio, ptr %25, i32 0, i32 18
  tail call void @device_link_remove(ptr noundef %dev24, ptr noundef %dev28) #7
  %26 = ptrtoint ptr %psmouse25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %psmouse25, align 4
  %ps2dev30 = getelementptr inbounds %struct.psmouse, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %ps2dev30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ps2dev30, align 4
  tail call void @serio_rescan(ptr noundef %29) #7
  br label %for.inc

if.else:                                          ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in59) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.else.list_del.exit_crit_edge

if.else.list_del.exit_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in59, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i, align 4
  %32 = ptrtoint ptr %.pn.in59 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %.pn.in59, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.else.list_del.exit_crit_edge
  %36 = ptrtoint ptr %.pn.in59 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in59, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in59, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %smbdev.062) #7
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %do.end, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn63, @psmouse_smbus_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @psmouse_smbus_mutex) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_rescan(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !35, !36, !37, !39, !40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/input/mouse/psmouse-smbus.c", i32 280, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @psmouse_smbus_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @psmouse_smbus_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/input/mouse/psmouse-smbus.c", i32 310, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @psmouse_smbus_module_init._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @psmouse_smbus_module_init._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/input/mouse/psmouse-smbus.c", i32 27, i32 8}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @psmouse_smbus_mutex, !14, !"psmouse_smbus_mutex", i1 false, i1 false}
!17 = !{ptr @psmouse_smbus_list, !18, !"psmouse_smbus_list", i1 false, i1 false}
!18 = !{!"../drivers/input/mouse/psmouse-smbus.c", i32 26, i32 8}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/input/mouse/psmouse-smbus.c", i32 181, i32 3}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @psmouse_smbus_disconnect.__UNIQUE_ID_ddebug291, !20, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!24 = !{ptr @psmouse_smbus_schedule_remove.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/input/mouse/psmouse-smbus.c", i32 161, i32 3}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/input/mouse/psmouse-smbus.c", i32 139, i32 2}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @psmouse_smbus_remove_i2c_device.__UNIQUE_ID_ddebug290, !28, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!31 = !{ptr @psmouse_smbus_notifier, !32, !"psmouse_smbus_notifier", i1 false, i1 false}
!32 = !{!"../drivers/input/mouse/psmouse-smbus.c", i32 110, i32 30}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/mouse/psmouse-smbus.c", i32 52, i32 3}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @psmouse_smbus_check_adapter.__UNIQUE_ID_ddebug288, !34, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/mouse/psmouse-smbus.c", i32 74, i32 4}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @psmouse_smbus_detach_i2c_client.__UNIQUE_ID_ddebug289, !38, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{i8 0, i8 2}
!51 = !{i64 2148697528, i64 2148697533, i64 2148697546, i64 2148697590, i64 2148697624, i64 2148697645}
