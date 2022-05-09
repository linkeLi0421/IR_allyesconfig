; ModuleID = '/llk/IR_all_yes/drivers/input/joystick/db9.c_pt.bc'
source_filename = "../drivers/input/joystick/db9.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.parport_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, i8, %struct.list_head }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.db9_config = type { [2 x i32], i32 }
%struct.db9_mode_data = type { ptr, ptr, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.parport = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, %struct.device, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.timer_list, i32, ptr, [5 x %struct.parport_device_info], %struct.ieee1284_info, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, %struct.atomic_t, i32, ptr, %struct.list_head, [3 x ptr] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.parport_device_info = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.ieee1284_info = type { i32, i32, %struct.semaphore }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.db9 = type { [2 x ptr], %struct.timer_list, ptr, i32, i32, i32, %struct.mutex, [2 x [32 x i8]] }
%struct.pardev_cb = type { ptr, ptr, ptr, ptr, i32 }
%struct.pardevice = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.device, i8, ptr, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.parport_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_author223 = internal constant [43 x i8] c"db9.author=Vojtech Pavlik <vojtech@ucw.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description224 = internal constant [77 x i8] c"db9.description=Atari, Amstrad, Commodore, Amiga, Sega, etc. joystick driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file225 = internal constant [36 x i8] c"db9.file=drivers/input/joystick/db9\00", section ".modinfo", align 1
@__UNIQUE_ID_license226 = internal constant [16 x i8] c"db9.license=GPL\00", section ".modinfo", align 1
@__param_str_dev = internal constant [8 x i8] c"db9.dev\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_dev = internal constant %struct.kparam_array { i32 2, i32 4, ptr getelementptr (i8, ptr @db9_cfg, i64 8), ptr @param_ops_int, ptr @db9_cfg }, align 4
@__param_dev = internal constant %struct.kernel_param { ptr @__param_str_dev, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @__param_arr_dev } }, section "__param", align 4
@__UNIQUE_ID_devtype227 = internal constant [30 x i8] c"db9.parmtype=dev:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_dev228 = internal constant [65 x i8] c"db9.parm=dev:Describes first attached device (<parport#>,<type>)\00", section ".modinfo", align 1
@__param_str_dev2 = internal constant [9 x i8] c"db9.dev2\00", align 1
@__param_arr_dev2 = internal constant %struct.kparam_array { i32 2, i32 4, ptr getelementptr (i8, ptr @db9_cfg, i64 20), ptr @param_ops_int, ptr getelementptr (i8, ptr @db9_cfg, i64 12) }, align 4
@__param_dev2 = internal constant %struct.kernel_param { ptr @__param_str_dev2, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @__param_arr_dev2 } }, section "__param", align 4
@__UNIQUE_ID_dev2type229 = internal constant [31 x i8] c"db9.parmtype=dev2:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_dev2230 = internal constant [67 x i8] c"db9.parm=dev2:Describes second attached device (<parport#>,<type>)\00", section ".modinfo", align 1
@__param_str_dev3 = internal constant [9 x i8] c"db9.dev3\00", align 1
@__param_arr_dev3 = internal constant %struct.kparam_array { i32 2, i32 4, ptr getelementptr (i8, ptr @db9_cfg, i64 32), ptr @param_ops_int, ptr getelementptr (i8, ptr @db9_cfg, i64 24) }, align 4
@__param_dev3 = internal constant %struct.kernel_param { ptr @__param_str_dev3, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @__param_arr_dev3 } }, section "__param", align 4
@__UNIQUE_ID_dev3type231 = internal constant [31 x i8] c"db9.parmtype=dev3:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_dev3232 = internal constant [66 x i8] c"db9.parm=dev3:Describes third attached device (<parport#>,<type>)\00", section ".modinfo", align 1
@db9_parport_driver = internal global { %struct.parport_driver, [52 x i8] } { %struct.parport_driver { ptr @.str, ptr null, ptr @db9_detach, ptr @db9_attach, ptr null, %struct.device_driver zeroinitializer, i8 1, %struct.list_head zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_db9__240_710_db9_init6 = internal global ptr @db9_init, section ".initcall6.init", align 4
@__exitcall_db9_exit = internal global ptr @db9_exit, section ".exitcall.exit", align 4
@db9_cfg = internal global { [3 x %struct.db9_config], [60 x i8] } zeroinitializer, align 32
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"db9\00", [28 x i8] zeroinitializer }, align 32
@db9_base = internal global { [3 x ptr], [20 x i8] } zeroinitializer, align 32
@db9_modes = internal constant { [13 x %struct.db9_mode_data], [84 x i8] } { [13 x %struct.db9_mode_data] [%struct.db9_mode_data zeroinitializer, %struct.db9_mode_data { ptr @.str.1, ptr @db9_multi_btn, i32 1, i32 1, i32 2, i32 1, i32 1 }, %struct.db9_mode_data { ptr @.str.2, ptr @db9_multi_btn, i32 2, i32 1, i32 2, i32 1, i32 1 }, %struct.db9_mode_data { ptr @.str.3, ptr @db9_genesis_btn, i32 4, i32 1, i32 2, i32 1, i32 1 }, %struct.db9_mode_data zeroinitializer, %struct.db9_mode_data { ptr @.str.4, ptr @db9_genesis_btn, i32 6, i32 1, i32 2, i32 1, i32 1 }, %struct.db9_mode_data { ptr @.str.5, ptr @db9_genesis_btn, i32 8, i32 1, i32 2, i32 1, i32 1 }, %struct.db9_mode_data { ptr @.str.6, ptr @db9_cd32_btn, i32 9, i32 6, i32 7, i32 0, i32 1 }, %struct.db9_mode_data { ptr @.str.7, ptr @db9_multi_btn, i32 1, i32 1, i32 2, i32 1, i32 1 }, %struct.db9_mode_data { ptr @.str.8, ptr @db9_multi_btn, i32 1, i32 2, i32 2, i32 1, i32 1 }, %struct.db9_mode_data { ptr @.str.9, ptr @db9_cd32_btn, i32 7, i32 1, i32 2, i32 1, i32 1 }, %struct.db9_mode_data { ptr @.str.10, ptr @db9_cd32_btn, i32 9, i32 6, i32 7, i32 0, i32 0 }, %struct.db9_mode_data { ptr @.str.11, ptr @db9_cd32_btn, i32 9, i32 12, i32 7, i32 0, i32 0 }], [84 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Multisystem joystick\00", [43 x i8] zeroinitializer }, align 32
@db9_multi_btn = internal constant { [2 x i16], [28 x i8] } { [2 x i16] [i16 288, i16 289], [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Multisystem joystick (2 fire)\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Genesis pad\00", [20 x i8] zeroinitializer }, align 32
@db9_genesis_btn = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 315, i16 304, i16 305, i16 306, i16 307, i16 308, i16 309, i16 316], [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Genesis 5 pad\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Genesis 6 pad\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Saturn pad\00", [21 x i8] zeroinitializer }, align 32
@db9_cd32_btn = internal constant { [9 x i16], [46 x i8] } { [9 x i16] [i16 304, i16 305, i16 306, i16 307, i16 308, i16 309, i16 310, i16 311, i16 315], [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Multisystem (0.8.0.2) joystick\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Multisystem (0.8.0.2-dual) joystick\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Amiga CD-32 pad\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Saturn dpp\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Saturn dpp dual\00", [16 x i8] zeroinitializer }, align 32
@db9_attach.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.13, ptr @.str.14, i8 0, i8 -115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"db9_attach\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/input/joystick/db9.c\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Not using parport%d.\0A\00", [42 x i8] zeroinitializer }, align 32
@db9_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.12, ptr @.str.13, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013db9.c: Bad device type %d\0A\00", [35 x i8] zeroinitializer }, align 32
@db9_attach._entry_ptr = internal global ptr @db9_attach._entry, section ".printk_index", align 4
@db9_attach._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.13, i32 580, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013db9.c: specified parport is not bidirectional\0A\00", [47 x i8] zeroinitializer }, align 32
@db9_attach._entry_ptr.18 = internal global ptr @db9_attach._entry.16, section ".printk_index", align 4
@db9_attach._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.13, i32 589, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013db9.c: parport busy already - lp.o loaded?\0A\00", [50 x i8] zeroinitializer }, align 32
@db9_attach._entry_ptr.21 = internal global ptr @db9_attach._entry.19, section ".printk_index", align 4
@db9_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&db9->mutex\00", [20 x i8] zeroinitializer }, align 32
@db9_attach.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(&db9->timer)\00", [18 x i8] zeroinitializer }, align 32
@db9_attach._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.12, ptr @.str.13, i32 607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013db9.c: Not enough memory for input device\0A\00", [51 x i8] zeroinitializer }, align 32
@db9_attach._entry_ptr.27 = internal global ptr @db9_attach._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s/input%d\00", [21 x i8] zeroinitializer }, align 32
@db9_abs = internal constant { [10 x i16], [44 x i8] } { [10 x i16] [i16 0, i16 1, i16 3, i16 4, i16 5, i16 2, i16 16, i16 17, i16 18, i16 19], [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@db9_saturn_byte = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 1], [60 x i8] zeroinitializer }, align 32
@db9_saturn_mask = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\04\01\02@ \10\08\80\08", [23 x i8] zeroinitializer }, align 32
@db9_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.13, i32 692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013db9.c: Device type must be specified.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"db9_init\00", [23 x i8] zeroinitializer }, align 32
@db9_init._entry_ptr = internal global ptr @db9_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 7, i64 11, i64 12]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.33 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 4, i64 12, i64 15]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.43 = internal global [10 x i64] [i64 8, i64 8, i64 2, i64 19, i64 21, i64 22, i64 25, i64 52, i64 211, i64 227]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.46 = private unnamed_addr constant [19 x i8] c"db9_parport_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 675, i32 30 }
@___asan_gen_.49 = private unnamed_addr constant [8 x i8] c"db9_cfg\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 35, i32 26 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 676, i32 10 }
@___asan_gen_.55 = private unnamed_addr constant [9 x i8] c"db9_base\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 98, i32 20 }
@___asan_gen_.58 = private unnamed_addr constant [10 x i8] c"db9_modes\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 105, i32 35 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 107, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant [14 x i8] c"db9_multi_btn\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 100, i32 20 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 108, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 109, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant [16 x i8] c"db9_genesis_btn\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 101, i32 20 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 111, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 112, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 113, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant [13 x i8] c"db9_cd32_btn\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 102, i32 20 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 114, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 115, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 116, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 117, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 118, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 566, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 573, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 580, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 589, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 597, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 601, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 607, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 612, i32 5 }
@___asan_gen_.151 = private unnamed_addr constant [8 x i8] c"db9_abs\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 103, i32 20 }
@___asan_gen_.154 = private unnamed_addr constant [16 x i8] c"db9_saturn_byte\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 125, i32 18 }
@___asan_gen_.157 = private unnamed_addr constant [16 x i8] c"db9_saturn_mask\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 126, i32 28 }
@___asan_gen_.160 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.167 = private constant [32 x i8] c"../drivers/input/joystick/db9.c\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 692, i32 4 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_author223, ptr @__UNIQUE_ID_description224, ptr @__UNIQUE_ID_dev2230, ptr @__UNIQUE_ID_dev228, ptr @__UNIQUE_ID_dev2type229, ptr @__UNIQUE_ID_dev3232, ptr @__UNIQUE_ID_dev3type231, ptr @__UNIQUE_ID_devtype227, ptr @__UNIQUE_ID_file225, ptr @__UNIQUE_ID_license226, ptr @__exitcall_db9_exit, ptr @__initcall__kmod_db9__240_710_db9_init6, ptr @__param_dev, ptr @__param_dev2, ptr @__param_dev3, ptr @db9_attach._entry, ptr @db9_attach._entry.16, ptr @db9_attach._entry.19, ptr @db9_attach._entry.25, ptr @db9_attach._entry_ptr, ptr @db9_attach._entry_ptr.18, ptr @db9_attach._entry_ptr.21, ptr @db9_attach._entry_ptr.27, ptr @db9_exit, ptr @db9_init._entry, ptr @db9_init._entry_ptr, ptr @db9_parport_driver, ptr @db9_cfg, ptr @.str, ptr @db9_base, ptr @db9_modes, ptr @.str.1, ptr @db9_multi_btn, ptr @.str.2, ptr @.str.3, ptr @db9_genesis_btn, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @db9_cd32_btn, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @db9_attach.__key, ptr @.str.22, ptr @db9_attach.__key.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @db9_abs, ptr @db9_saturn_byte, ptr @db9_saturn_mask, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db9_parport_driver to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db9_cfg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db9_base to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db9_modes to i32), i32 364, i32 448, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db9_multi_btn to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db9_genesis_btn to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db9_cd32_btn to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db9_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db9_attach._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db9_attach._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db9_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db9_attach.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db9_attach._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db9_abs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db9_saturn_byte to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db9_saturn_mask to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db9_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @db9_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @parport_unregister_driver(ptr noundef nonnull @db9_parport_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @db9_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body.outer

for.body.outer:                                   ; preds = %for.inc.thread.for.body.outer_crit_edge, %entry
  %tobool.not = phi i1 [ false, %for.inc.thread.for.body.outer_crit_edge ], [ true, %entry ]
  %i.019.ph = phi i32 [ %inc23, %for.inc.thread.for.body.outer_crit_edge ], [ 0, %entry ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.outer
  %i.019 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %i.019.ph, %for.body.outer ]
  %nargs = getelementptr [3 x %struct.db9_config], ptr @db9_cfg, i32 0, i32 %i.019, i32 1
  %0 = ptrtoint ptr %nargs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nargs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %arrayidx = getelementptr [3 x %struct.db9_config], ptr @db9_cfg, i32 0, i32 %i.019
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp4 = icmp slt i32 %3, 0
  br i1 %cmp4, label %lor.lhs.false.for.inc_crit_edge, label %if.end

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp7 = icmp ult i32 %1, 2
  br i1 %cmp7, label %do.end, label %for.inc.thread

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #11
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.thread:                                   ; preds = %if.end
  %inc23 = add nuw nsw i32 %i.019, 1
  %exitcond.not24 = icmp eq i32 %inc23, 3
  br i1 %exitcond.not24, label %for.inc.thread.if.end11_crit_edge, label %for.inc.thread.for.body.outer_crit_edge

for.inc.thread.for.body.outer_crit_edge:          ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.outer

for.inc.thread.if.end11_crit_edge:                ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

for.end:                                          ; preds = %for.inc
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %for.end.if.end11_crit_edge

for.end.if.end11_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %for.end.if.end11_crit_edge, %for.inc.thread.if.end11_crit_edge
  %call12 = tail call i32 @__parport_register_driver(ptr noundef nonnull @db9_parport_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %for.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call12, %if.end11 ], [ -19, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @db9_detach(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %number = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 26
  %0 = load ptr, ptr @db9_base, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %land.lhs.true

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %entry
  %parportno = getelementptr inbounds %struct.db9, ptr %0, i32 0, i32 5
  %1 = ptrtoint ptr %parportno to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %parportno, align 4
  %3 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %number, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp2 = icmp eq i32 %2, %4
  br i1 %cmp2, label %land.lhs.true.if.end5_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %entry.for.inc_crit_edge
  %5 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @db9_base, i32 0, i32 1), align 4
  %tobool.not.1 = icmp eq ptr %5, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %parportno.1 = getelementptr inbounds %struct.db9, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %parportno.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %parportno.1, align 4
  %8 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %number, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp2.1 = icmp eq i32 %7, %9
  br i1 %cmp2.1, label %land.lhs.true.1.if.end5_crit_edge, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

land.lhs.true.1.if.end5_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %10 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @db9_base, i32 0, i32 2), align 4
  %tobool.not.2 = icmp eq ptr %10, null
  br i1 %tobool.not.2, label %for.inc.1.cleanup_crit_edge, label %land.lhs.true.2

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.2:                                  ; preds = %for.inc.1
  %parportno.2 = getelementptr inbounds %struct.db9, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %parportno.2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %parportno.2, align 4
  %13 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %number, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp2.2 = icmp eq i32 %12, %14
  br i1 %cmp2.2, label %land.lhs.true.2.if.end5_crit_edge, label %land.lhs.true.2.cleanup_crit_edge

land.lhs.true.2.cleanup_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.2.if.end5_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end5:                                          ; preds = %land.lhs.true.2.if.end5_crit_edge, %land.lhs.true.1.if.end5_crit_edge, %land.lhs.true.if.end5_crit_edge
  %i.036.lcssa = phi i32 [ 0, %land.lhs.true.if.end5_crit_edge ], [ 1, %land.lhs.true.1.if.end5_crit_edge ], [ 2, %land.lhs.true.2.if.end5_crit_edge ]
  %arrayidx6 = getelementptr [3 x ptr], ptr @db9_base, i32 0, i32 %i.036.lcssa
  %15 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx6, align 4
  store ptr null, ptr %arrayidx6, align 4
  %mode = getelementptr inbounds %struct.db9, ptr %16, i32 0, i32 3
  br label %for.cond8

for.cond8:                                        ; preds = %for.body12, %if.end5
  %i.1 = phi i32 [ 0, %if.end5 ], [ %inc15, %for.body12 ]
  %17 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mode, align 4
  %19 = and i32 %18, 1073741823
  %20 = lshr i32 1407, %19
  %21 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp10.not = icmp eq i32 %21, 0
  br i1 %cmp10.not, label %for.cond8.cond.end_crit_edge, label %cond.true

for.cond8.cond.end_crit_edge:                     ; preds = %for.cond8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %for.cond8
  call void @__sanitizer_cov_trace_pc() #10
  %n_pads = getelementptr [13 x %struct.db9_mode_data], ptr @db9_modes, i32 0, i32 %18, i32 3
  %22 = ptrtoint ptr %n_pads to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n_pads, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.cond8.cond.end_crit_edge
  %cond = phi i32 [ %23, %cond.true ], [ 2, %for.cond8.cond.end_crit_edge ]
  %cmp11 = icmp slt i32 %i.1, %cond
  br i1 %cmp11, label %for.body12, label %for.end16

for.body12:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx13 = getelementptr [2 x ptr], ptr %16, i32 0, i32 %i.1
  %24 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx13, align 4
  tail call void @input_unregister_device(ptr noundef %25) #8
  %inc15 = add nuw nsw i32 %i.1, 1
  br label %for.cond8

for.end16:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %pd = getelementptr inbounds %struct.db9, ptr %16, i32 0, i32 2
  %26 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pd, align 4
  tail call void @parport_unregister_device(ptr noundef %27) #8
  tail call void @kfree(ptr noundef %16) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end16, %land.lhs.true.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @db9_attach(ptr noundef %pp) #2 align 64 {
entry:
  %db9_parport_cb = alloca %struct.pardev_cb, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %db9_parport_cb) #8
  %0 = getelementptr inbounds %struct.pardev_cb, ptr %db9_parport_cb, i32 0, i32 4
  %number = getelementptr inbounds %struct.parport, ptr %pp, i32 0, i32 26
  %1 = load i32, ptr getelementptr inbounds ([3 x %struct.db9_config], ptr @db9_cfg, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %entry.for.inc_crit_edge, label %lor.lhs.false

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr @db9_cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp4 = icmp slt i32 %2, 0
  br i1 %cmp4, label %lor.lhs.false.for.inc_crit_edge, label %if.end

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %3 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %number, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp8 = icmp eq i32 %2, %4
  br i1 %cmp8, label %if.end.if.end18_crit_edge, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %entry.for.inc_crit_edge
  %5 = load i32, ptr getelementptr inbounds ([3 x %struct.db9_config], ptr @db9_cfg, i32 0, i32 1, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1.1 = icmp eq i32 %5, 0
  br i1 %cmp1.1, label %for.inc.for.inc.1_crit_edge, label %lor.lhs.false.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

lor.lhs.false.1:                                  ; preds = %for.inc
  %6 = load i32, ptr getelementptr inbounds ([3 x %struct.db9_config], ptr @db9_cfg, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp4.1 = icmp slt i32 %6, 0
  br i1 %cmp4.1, label %lor.lhs.false.1.for.inc.1_crit_edge, label %if.end.1

lor.lhs.false.1.for.inc.1_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.end.1:                                         ; preds = %lor.lhs.false.1
  %7 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %number, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp8.1 = icmp eq i32 %6, %8
  br i1 %cmp8.1, label %if.end.1.if.end18_crit_edge, label %if.end.1.for.inc.1_crit_edge

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.end.1.if.end18_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

for.inc.1:                                        ; preds = %if.end.1.for.inc.1_crit_edge, %lor.lhs.false.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %9 = load i32, ptr getelementptr inbounds ([3 x %struct.db9_config], ptr @db9_cfg, i32 0, i32 2, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1.2 = icmp eq i32 %9, 0
  br i1 %cmp1.2, label %for.inc.1.do.body_crit_edge, label %lor.lhs.false.2

for.inc.1.do.body_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false.2:                                  ; preds = %for.inc.1
  %10 = load i32, ptr getelementptr inbounds ([3 x %struct.db9_config], ptr @db9_cfg, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp4.2 = icmp slt i32 %10, 0
  br i1 %cmp4.2, label %lor.lhs.false.2.do.body_crit_edge, label %if.end.2

lor.lhs.false.2.do.body_crit_edge:                ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end.2:                                         ; preds = %lor.lhs.false.2
  %11 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %number, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp8.2 = icmp eq i32 %10, %12
  br i1 %cmp8.2, label %if.end.2.if.end18_crit_edge, label %if.end.2.do.body_crit_edge

if.end.2.do.body_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end.2.if.end18_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

do.body:                                          ; preds = %if.end.2.do.body_crit_edge, %lor.lhs.false.2.do.body_crit_edge, %for.inc.1.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @db9_attach.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@db9_attach, %if.then15)) #8
          to label %cleanup [label %if.then15], !srcloc !119

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %number, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @db9_attach.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.14, i32 noundef %14) #8
  br label %cleanup

if.end18:                                         ; preds = %if.end.2.if.end18_crit_edge, %if.end.1.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %port_idx.0223.lcssa = phi i32 [ 0, %if.end.if.end18_crit_edge ], [ 1, %if.end.1.if.end18_crit_edge ], [ 2, %if.end.2.if.end18_crit_edge ]
  %arrayidx21 = getelementptr [3 x %struct.db9_config], ptr @db9_cfg, i32 0, i32 %port_idx.0223.lcssa, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx21, align 4
  %17 = add i32 %16, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %17)
  %18 = icmp ult i32 %17, -12
  br i1 %18, label %if.end18.do.end31_crit_edge, label %lor.lhs.false25

if.end18.do.end31_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end31

lor.lhs.false25:                                  ; preds = %if.end18
  %arrayidx26 = getelementptr [13 x %struct.db9_mode_data], ptr @db9_modes, i32 0, i32 %16
  %n_buttons = getelementptr [13 x %struct.db9_mode_data], ptr @db9_modes, i32 0, i32 %16, i32 2
  %19 = and i32 %16, 1073741819
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %lor.lhs.false25.do.end31_crit_edge, label %if.end34

lor.lhs.false25.do.end31_crit_edge:               ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end31

do.end31:                                         ; preds = %lor.lhs.false25.do.end31_crit_edge, %if.end18.do.end31_crit_edge
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %16) #11
  br label %cleanup

if.end34:                                         ; preds = %lor.lhs.false25
  %21 = lshr i32 6289, %16
  %22 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool36.not.not = icmp eq i32 %22, 0
  br i1 %tobool36.not.not, label %land.lhs.true, label %if.end34.if.end44_crit_edge

if.end34.if.end44_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

land.lhs.true:                                    ; preds = %if.end34
  %modes = getelementptr inbounds %struct.parport, ptr %pp, i32 0, i32 4
  %23 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %modes, align 8
  %and = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  br i1 %tobool37.not, label %do.end41, label %land.lhs.true.if.end44_crit_edge

land.lhs.true.if.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

do.end41:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #11
  br label %cleanup

if.end44:                                         ; preds = %land.lhs.true.if.end44_crit_edge, %if.end34.if.end44_crit_edge
  %25 = call ptr @memset(ptr %db9_parport_cb, i32 0, i32 16)
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %0, align 4
  %call45 = call ptr @parport_register_dev_model(ptr noundef %pp, ptr noundef nonnull @.str, ptr noundef nonnull %db9_parport_cb, i32 noundef %port_idx.0223.lcssa) #8
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %do.end50, label %if.end53

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #11
  br label %cleanup

if.end53:                                         ; preds = %if.end44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 228) #12
  %tobool55.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool55.not, label %if.end53.err_unreg_pardev_crit_edge, label %do.body58

if.end53.err_unreg_pardev_crit_edge:              ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unreg_pardev

do.body58:                                        ; preds = %if.end53
  %mutex = getelementptr inbounds %struct.db9, ptr %call7.i.i, i32 0, i32 6
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.22, ptr noundef nonnull @db9_attach.__key) #8
  %pd61 = getelementptr inbounds %struct.db9, ptr %call7.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %pd61 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call45, ptr %pd61, align 8
  %mode62 = getelementptr inbounds %struct.db9, ptr %call7.i.i, i32 0, i32 3
  %29 = ptrtoint ptr %mode62 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %16, ptr %mode62, align 4
  %30 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %number, align 4
  %parportno = getelementptr inbounds %struct.db9, ptr %call7.i.i, i32 0, i32 5
  %32 = ptrtoint ptr %parportno to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %parportno, align 4
  %timer = getelementptr inbounds %struct.db9, ptr %call7.i.i, i32 0, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @db9_timer, i32 noundef 0, ptr noundef nonnull @.str.24, ptr noundef nonnull @db9_attach.__key.23) #8
  %33 = lshr i32 1407, %16
  %34 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp69.not = icmp eq i32 %34, 0
  %n_pads = getelementptr [13 x %struct.db9_mode_data], ptr @db9_modes, i32 0, i32 %16, i32 3
  %conv = trunc i32 %16 to i16
  %buttons = getelementptr [13 x %struct.db9_mode_data], ptr @db9_modes, i32 0, i32 %16, i32 1
  %n_axis = getelementptr [13 x %struct.db9_mode_data], ptr @db9_modes, i32 0, i32 %16, i32 4
  %35 = and i32 %16, 1073741819
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %36 = icmp eq i32 %35, 0
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc125, %do.body58
  %i.0 = phi i32 [ 0, %do.body58 ], [ %inc126, %for.inc125 ]
  br i1 %cmp69.not, label %for.cond67.cond.end_crit_edge, label %cond.true

for.cond67.cond.end_crit_edge:                    ; preds = %for.cond67
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %for.cond67
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %n_pads to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %n_pads, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.cond67.cond.end_crit_edge
  %cond = phi i32 [ %38, %cond.true ], [ 2, %for.cond67.cond.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %cond)
  %cmp70 = icmp slt i32 %i.0, %cond
  br i1 %cmp70, label %for.body71, label %for.end127

for.body71:                                       ; preds = %cond.end
  %call72 = call ptr @input_allocate_device() #8
  %arrayidx73 = getelementptr [2 x ptr], ptr %call7.i.i, i32 0, i32 %i.0
  %39 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call72, ptr %arrayidx73, align 4
  %tobool74.not = icmp eq ptr %call72, null
  br i1 %tobool74.not, label %do.end78, label %for.body99.lr.ph

do.end78:                                         ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #10
  %call80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #11
  br label %err_unreg_devs

for.body99.lr.ph:                                 ; preds = %for.body71
  %arrayidx82 = getelementptr %struct.db9, ptr %call7.i.i, i32 0, i32 7, i32 %i.0
  %40 = ptrtoint ptr %pd61 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pd61, align 8
  %port = getelementptr inbounds %struct.pardevice, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %port, align 4
  %name = getelementptr inbounds %struct.parport, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %name, align 4
  %call84 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx82, i32 noundef 32, ptr noundef nonnull @.str.28, ptr noundef %45, i32 noundef %i.0)
  %46 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx26, align 4
  %48 = ptrtoint ptr %call72 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %call72, align 8
  %phys90 = getelementptr inbounds %struct.input_dev, ptr %call72, i32 0, i32 1
  %49 = ptrtoint ptr %phys90 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %arrayidx82, ptr %phys90, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %call72, i32 0, i32 3
  %50 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 21, ptr %id, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call72, i32 0, i32 3, i32 1
  %51 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 2, ptr %vendor, align 2
  %product = getelementptr inbounds %struct.input_dev, ptr %call72, i32 0, i32 3, i32 2
  %52 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv, ptr %product, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %call72, i32 0, i32 3, i32 3
  %53 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 256, ptr %version, align 2
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call72, i32 0, i32 40, i32 8
  %54 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call72, i32 0, i32 31
  %55 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @db9_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call72, i32 0, i32 32
  %56 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @db9_close, ptr %close, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call72, i32 0, i32 5
  %57 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 10, ptr %evbit, align 8
  %58 = ptrtoint ptr %n_buttons to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %n_buttons, align 4
  %60 = ptrtoint ptr %buttons to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %buttons, align 4
  %keybit = getelementptr inbounds %struct.input_dev, ptr %call72, i32 0, i32 6
  %smax = call i32 @llvm.smax.i32(i32 %59, i32 1)
  br label %for.body99

for.inc118.peel:                                  ; preds = %for.body99
  %62 = ptrtoint ptr %n_axis to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %n_axis, align 4
  %smax237 = call i32 @llvm.smax.i32(i32 %63, i32 1)
  call void @input_set_abs_params(ptr noundef nonnull %call72, i32 noundef 0, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  br i1 %36, label %for.inc118.peel.for.end120_crit_edge, label %for.inc118.peel248

for.inc118.peel.for.end120_crit_edge:             ; preds = %for.inc118.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end120

for.inc118.peel248:                               ; preds = %for.inc118.peel
  call void @input_set_abs_params(ptr noundef nonnull %call72, i32 noundef 1, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax237)
  %exitcond238.peel250.not = icmp eq i32 %smax237, 2
  br i1 %exitcond238.peel250.not, label %for.inc118.peel248.for.end120_crit_edge, label %for.inc118.peel248.for.inc118_crit_edge

for.inc118.peel248.for.inc118_crit_edge:          ; preds = %for.inc118.peel248
  br label %for.inc118

for.inc118.peel248.for.end120_crit_edge:          ; preds = %for.inc118.peel248
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end120

for.body99:                                       ; preds = %for.body99.for.body99_crit_edge, %for.body99.lr.ph
  %j.0226 = phi i32 [ 0, %for.body99.lr.ph ], [ %inc104, %for.body99.for.body99_crit_edge ]
  %arrayidx100 = getelementptr i16, ptr %61, i32 %j.0226
  %64 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx100, align 2
  %conv101 = sext i16 %65 to i32
  call void @_set_bit(i32 noundef %conv101, ptr noundef %keybit) #8
  %inc104 = add nuw nsw i32 %j.0226, 1
  %exitcond.not = icmp eq i32 %inc104, %smax
  br i1 %exitcond.not, label %for.inc118.peel, label %for.body99.for.body99_crit_edge

for.body99.for.body99_crit_edge:                  ; preds = %for.body99
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body99

for.inc118:                                       ; preds = %for.inc118.for.inc118_crit_edge, %for.inc118.peel248.for.inc118_crit_edge
  %j.1228 = phi i32 [ %inc119, %for.inc118.for.inc118_crit_edge ], [ 2, %for.inc118.peel248.for.inc118_crit_edge ]
  %arrayidx115 = getelementptr [10 x i16], ptr @db9_abs, i32 0, i32 %j.1228
  %66 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx115, align 2
  %conv116 = sext i16 %67 to i32
  call void @input_set_abs_params(ptr noundef nonnull %call72, i32 noundef %conv116, i32 noundef 1, i32 noundef 255, i32 noundef 0, i32 noundef 0) #8
  %inc119 = add nuw nsw i32 %j.1228, 1
  %exitcond238.not = icmp eq i32 %inc119, %smax237
  br i1 %exitcond238.not, label %for.inc118.for.end120_crit_edge, label %for.inc118.for.inc118_crit_edge, !llvm.loop !120

for.inc118.for.inc118_crit_edge:                  ; preds = %for.inc118
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc118

for.inc118.for.end120_crit_edge:                  ; preds = %for.inc118
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end120

for.end120:                                       ; preds = %for.inc118.for.end120_crit_edge, %for.inc118.peel248.for.end120_crit_edge, %for.inc118.peel.for.end120_crit_edge
  %call121 = call i32 @input_register_device(ptr noundef nonnull %call72) #8
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %for.inc125, label %err_free_dev

for.inc125:                                       ; preds = %for.end120
  call void @__sanitizer_cov_trace_pc() #10
  %inc126 = add nuw i32 %i.0, 1
  br label %for.cond67

for.end127:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx128 = getelementptr [3 x ptr], ptr @db9_base, i32 0, i32 %port_idx.0223.lcssa
  %68 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call7.i.i, ptr %arrayidx128, align 4
  br label %cleanup

err_free_dev:                                     ; preds = %for.end120
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx73.le = getelementptr [2 x ptr], ptr %call7.i.i, i32 0, i32 %i.0
  %69 = ptrtoint ptr %arrayidx73.le to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx73.le, align 4
  call void @input_free_device(ptr noundef %70) #8
  br label %err_unreg_devs

err_unreg_devs:                                   ; preds = %err_free_dev, %do.end78
  %dec230 = add i32 %i.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec230)
  %cmp131231 = icmp sgt i32 %dec230, -1
  br i1 %cmp131231, label %while.body, label %err_unreg_devs.while.end_crit_edge

err_unreg_devs.while.end_crit_edge:               ; preds = %err_unreg_devs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %err_unreg_devs
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %call7.i.i, align 8
  call void @input_unregister_device(ptr noundef %72) #8
  br label %while.end

while.end:                                        ; preds = %while.body, %err_unreg_devs.while.end_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %err_unreg_pardev

err_unreg_pardev:                                 ; preds = %while.end, %if.end53.err_unreg_pardev_crit_edge
  call void @parport_unregister_device(ptr noundef nonnull %call45) #8
  br label %cleanup

cleanup:                                          ; preds = %err_unreg_pardev, %for.end127, %do.end50, %do.end41, %do.end31, %if.then15, %do.body
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %db9_parport_cb) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @parport_register_dev_model(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @db9_timer(ptr noundef %t) #2 align 64 {
entry:
  %data.i = alloca [60 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -8
  %pd = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 4
  %port1 = getelementptr inbounds %struct.pardevice, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port1, align 4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %mode = getelementptr i8, ptr %t, i32 52
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %entry.sw.epilog_crit_edge [
    i32 9, label %sw.bb
    i32 8, label %entry.sw.bb17_crit_edge
    i32 1, label %sw.bb37
    i32 2, label %sw.bb58
    i32 3, label %sw.bb81
    i32 5, label %sw.bb115
    i32 6, label %sw.bb154
    i32 7, label %entry.sw.bb213_crit_edge
    i32 11, label %entry.sw.bb213_crit_edge476
    i32 12, label %entry.sw.bb213_crit_edge477
    i32 10, label %sw.bb217
  ]

entry.sw.bb213_crit_edge477:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb213

entry.sw.bb213_crit_edge476:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb213

entry.sw.bb213_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb213

entry.sw.bb17_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb17

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx5 = getelementptr i8, ptr %t, i32 -4
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx5, align 4
  %ops = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 24
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %read_data = getelementptr inbounds %struct.parport_operations, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %read_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read_data, align 4
  %call = tail call zeroext i8 %14(ptr noundef %3) #8
  %15 = lshr i8 %call, 3
  %16 = zext i8 %15 to i32
  %and = lshr i32 %16, 3
  %and6 = lshr i32 %16, 2
  %17 = or i32 %and6, -2
  %18 = or i32 %and, -2
  %sub428 = sub nsw i32 %17, %18
  tail call void @input_event(ptr noundef %10, i32 noundef 3, i32 noundef 0, i32 noundef %sub428) #8
  %and9 = lshr i32 %16, 1
  %19 = or i32 %16, -2
  %20 = or i32 %and9, -2
  %sub = sub nsw i32 %19, %20
  tail call void @input_event(ptr noundef %10, i32 noundef 3, i32 noundef 1, i32 noundef %sub) #8
  %neg.lobit = lshr i32 %16, 4
  %21 = xor i32 %neg.lobit, 1
  tail call void @input_event(ptr noundef %10, i32 noundef 1, i32 noundef 288, i32 noundef %21) #8
  br label %sw.bb17

sw.bb17:                                          ; preds = %sw.bb, %entry.sw.bb17_crit_edge
  %ops18 = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 24
  %22 = ptrtoint ptr %ops18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops18, align 4
  %read_status = getelementptr inbounds %struct.parport_operations, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %read_status to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read_status, align 4
  %call19 = tail call zeroext i8 %25(ptr noundef %3) #8
  %26 = lshr i8 %call19, 3
  %27 = zext i8 %26 to i32
  %and22 = lshr i32 %27, 3
  %and25 = lshr i32 %27, 2
  %28 = or i32 %and25, -2
  %29 = or i32 %and22, -2
  %sub426 = sub nsw i32 %28, %29
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 0, i32 noundef %sub426) #8
  %and29 = lshr i32 %27, 1
  %30 = or i32 %27, -2
  %31 = or i32 %and29, -2
  %sub427 = sub nsw i32 %30, %31
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 1, i32 noundef %sub427) #8
  %and36.lobit = lshr i32 %27, 4
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 288, i32 noundef %and36.lobit) #8
  br label %sw.epilog

sw.bb37:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ops38 = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 24
  %32 = ptrtoint ptr %ops38 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops38, align 4
  %read_data39 = getelementptr inbounds %struct.parport_operations, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %read_data39 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read_data39, align 4
  %call40 = tail call zeroext i8 %35(ptr noundef %3) #8
  %conv41 = zext i8 %call40 to i32
  %and42 = lshr i32 %conv41, 3
  %and45 = lshr i32 %conv41, 2
  %36 = or i32 %and45, -2
  %37 = or i32 %and42, -2
  %sub424 = sub nsw i32 %36, %37
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 0, i32 noundef %sub424) #8
  %and49 = lshr i32 %conv41, 1
  %38 = or i32 %conv41, -2
  %39 = or i32 %and49, -2
  %sub425 = sub nsw i32 %38, %39
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 1, i32 noundef %sub425) #8
  %neg56 = lshr i32 %conv41, 4
  %neg56.lobit = and i32 %neg56, 1
  %40 = xor i32 %neg56.lobit, 1
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 288, i32 noundef %40) #8
  br label %sw.epilog

sw.bb58:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ops59 = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 24
  %41 = ptrtoint ptr %ops59 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops59, align 4
  %read_data60 = getelementptr inbounds %struct.parport_operations, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %read_data60 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %read_data60, align 4
  %call61 = tail call zeroext i8 %44(ptr noundef %3) #8
  %conv62 = zext i8 %call61 to i32
  %and63 = lshr i32 %conv62, 3
  %and66 = lshr i32 %conv62, 2
  %45 = or i32 %and66, -2
  %46 = or i32 %and63, -2
  %sub422 = sub nsw i32 %45, %46
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 0, i32 noundef %sub422) #8
  %and70 = lshr i32 %conv62, 1
  %47 = or i32 %conv62, -2
  %48 = or i32 %and70, -2
  %sub423 = sub nsw i32 %47, %48
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 1, i32 noundef %sub423) #8
  %neg77 = xor i32 %conv62, -1
  %and78 = lshr i32 %neg77, 4
  %and78.lobit = and i32 %and78, 1
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 288, i32 noundef %and78.lobit) #8
  %and80 = lshr i32 %neg77, 5
  %and80.lobit = and i32 %and80, 1
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 289, i32 noundef %and80.lobit) #8
  br label %sw.epilog

sw.bb81:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ops82 = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 24
  %49 = ptrtoint ptr %ops82 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops82, align 4
  %write_control = getelementptr inbounds %struct.parport_operations, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %write_control to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write_control, align 4
  tail call void %52(ptr noundef %3, i8 noundef zeroext 8) #8
  %53 = ptrtoint ptr %ops82 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops82, align 4
  %read_data84 = getelementptr inbounds %struct.parport_operations, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %read_data84 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %read_data84, align 4
  %call85 = tail call zeroext i8 %56(ptr noundef %3) #8
  %conv86 = zext i8 %call85 to i32
  %and87 = lshr i32 %conv86, 3
  %and90 = lshr i32 %conv86, 2
  %57 = or i32 %and90, -2
  %58 = or i32 %and87, -2
  %sub420 = sub nsw i32 %57, %58
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 0, i32 noundef %sub420) #8
  %and94 = lshr i32 %conv86, 1
  %59 = or i32 %conv86, -2
  %60 = or i32 %and94, -2
  %sub421 = sub nsw i32 %59, %60
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 1, i32 noundef %sub421) #8
  %neg101 = xor i32 %conv86, -1
  %and102 = lshr i32 %neg101, 4
  %and102.lobit = and i32 %and102, 1
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 305, i32 noundef %and102.lobit) #8
  %and104 = lshr i32 %neg101, 5
  %and104.lobit = and i32 %and104, 1
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 306, i32 noundef %and104.lobit) #8
  %61 = ptrtoint ptr %ops82 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ops82, align 4
  %write_control106 = getelementptr inbounds %struct.parport_operations, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %write_control106 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write_control106, align 4
  tail call void %64(ptr noundef %3, i8 noundef zeroext 10) #8
  %65 = ptrtoint ptr %ops82 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ops82, align 4
  %read_data108 = getelementptr inbounds %struct.parport_operations, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %read_data108 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %read_data108, align 4
  %call109 = tail call zeroext i8 %68(ptr noundef %3) #8
  %conv110 = zext i8 %call109 to i32
  %neg111 = xor i32 %conv110, -1
  %and112 = lshr i32 %neg111, 4
  %and112.lobit = and i32 %and112, 1
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 304, i32 noundef %and112.lobit) #8
  %and114 = lshr i32 %neg111, 5
  %and114.lobit = and i32 %and114, 1
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 315, i32 noundef %and114.lobit) #8
  br label %sw.epilog

sw.bb115:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ops116 = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 24
  %69 = ptrtoint ptr %ops116 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ops116, align 4
  %write_control117 = getelementptr inbounds %struct.parport_operations, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %write_control117 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %write_control117, align 4
  tail call void %72(ptr noundef %3, i8 noundef zeroext 8) #8
  %73 = ptrtoint ptr %ops116 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ops116, align 4
  %read_data119 = getelementptr inbounds %struct.parport_operations, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %read_data119 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %read_data119, align 4
  %call120 = tail call zeroext i8 %76(ptr noundef %3) #8
  %conv121 = zext i8 %call120 to i32
  %and122 = lshr i32 %conv121, 3
  %and125 = lshr i32 %conv121, 2
  %77 = or i32 %and125, -2
  %78 = or i32 %and122, -2
  %sub418 = sub nsw i32 %77, %78
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 0, i32 noundef %sub418) #8
  %and129 = lshr i32 %conv121, 1
  %79 = or i32 %conv121, -2
  %80 = or i32 %and129, -2
  %sub419 = sub nsw i32 %79, %80
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 1, i32 noundef %sub419) #8
  %neg136 = xor i32 %conv121, -1
  %and137 = lshr i32 %neg136, 4
  %and137.lobit = and i32 %and137, 1
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 305, i32 noundef %and137.lobit) #8
  %and139 = lshr i32 %neg136, 5
  %and139.lobit = and i32 %and139, 1
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 306, i32 noundef %and139.lobit) #8
  %81 = ptrtoint ptr %ops116 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ops116, align 4
  %write_control141 = getelementptr inbounds %struct.parport_operations, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %write_control141 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %write_control141, align 4
  tail call void %84(ptr noundef %3, i8 noundef zeroext 10) #8
  %85 = ptrtoint ptr %ops116 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ops116, align 4
  %read_data143 = getelementptr inbounds %struct.parport_operations, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %read_data143 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %read_data143, align 4
  %call144 = tail call zeroext i8 %88(ptr noundef %3) #8
  %conv145 = zext i8 %call144 to i32
  %neg146 = xor i32 %conv145, -1
  %and147 = lshr i32 %neg146, 4
  %and147.lobit = and i32 %and147, 1
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 304, i32 noundef %and147.lobit) #8
  %and149 = lshr i32 %neg146, 5
  %and149.lobit = and i32 %and149, 1
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 307, i32 noundef %and149.lobit) #8
  %and151 = lshr i32 %neg146, 2
  %and151.lobit = and i32 %and151, 1
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 308, i32 noundef %and151.lobit) #8
  %and153 = lshr i32 %neg146, 3
  %and153.lobit = and i32 %and153, 1
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 315, i32 noundef %and153.lobit) #8
  br label %sw.epilog

sw.bb154:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ops155 = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 24
  %89 = ptrtoint ptr %ops155 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ops155, align 4
  %write_control156 = getelementptr inbounds %struct.parport_operations, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %write_control156 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %write_control156, align 4
  tail call void %92(ptr noundef %3, i8 noundef zeroext 8) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %93(i32 noundef 3006472) #8
  %94 = ptrtoint ptr %ops155 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ops155, align 4
  %read_data158 = getelementptr inbounds %struct.parport_operations, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %read_data158 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %read_data158, align 4
  %call159 = tail call zeroext i8 %97(ptr noundef %3) #8
  %conv160 = zext i8 %call159 to i32
  %and161 = lshr i32 %conv160, 3
  %and164 = lshr i32 %conv160, 2
  %98 = or i32 %and164, -2
  %99 = or i32 %and161, -2
  %sub416 = sub nsw i32 %98, %99
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 0, i32 noundef %sub416) #8
  %and168 = lshr i32 %conv160, 1
  %100 = or i32 %conv160, -2
  %101 = or i32 %and168, -2
  %sub417 = sub nsw i32 %100, %101
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 1, i32 noundef %sub417) #8
  %neg175 = xor i32 %conv160, -1
  %and176 = lshr i32 %neg175, 4
  %and176.lobit = and i32 %and176, 1
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 305, i32 noundef %and176.lobit) #8
  %and178 = lshr i32 %neg175, 5
  %and178.lobit = and i32 %and178, 1
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 306, i32 noundef %and178.lobit) #8
  %102 = ptrtoint ptr %ops155 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ops155, align 4
  %write_control180 = getelementptr inbounds %struct.parport_operations, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %write_control180 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %write_control180, align 4
  tail call void %105(ptr noundef %3, i8 noundef zeroext 10) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %106 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %106(i32 noundef 3006472) #8
  %107 = ptrtoint ptr %ops155 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ops155, align 4
  %read_data182 = getelementptr inbounds %struct.parport_operations, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %read_data182 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %read_data182, align 4
  %call183 = tail call zeroext i8 %110(ptr noundef %3) #8
  %conv184 = zext i8 %call183 to i32
  %neg185 = xor i32 %conv184, -1
  %and186 = lshr i32 %neg185, 4
  %and186.lobit = and i32 %and186, 1
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 304, i32 noundef %and186.lobit) #8
  %and188 = lshr i32 %neg185, 5
  %and188.lobit = and i32 %and188, 1
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 315, i32 noundef %and188.lobit) #8
  %111 = ptrtoint ptr %ops155 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ops155, align 4
  %write_control190 = getelementptr inbounds %struct.parport_operations, ptr %112, i32 0, i32 2
  %113 = ptrtoint ptr %write_control190 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %write_control190, align 4
  tail call void %114(ptr noundef %3, i8 noundef zeroext 8) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %115 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %115(i32 noundef 3006472) #8
  %116 = ptrtoint ptr %ops155 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ops155, align 4
  %write_control192 = getelementptr inbounds %struct.parport_operations, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %write_control192 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %write_control192, align 4
  tail call void %119(ptr noundef %3, i8 noundef zeroext 10) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %120 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %120(i32 noundef 3006472) #8
  %121 = ptrtoint ptr %ops155 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ops155, align 4
  %write_control194 = getelementptr inbounds %struct.parport_operations, ptr %122, i32 0, i32 2
  %123 = ptrtoint ptr %write_control194 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %write_control194, align 4
  tail call void %124(ptr noundef %3, i8 noundef zeroext 8) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %125 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %125(i32 noundef 3006472) #8
  %126 = ptrtoint ptr %ops155 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ops155, align 4
  %read_data196 = getelementptr inbounds %struct.parport_operations, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %read_data196 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %read_data196, align 4
  %call197 = tail call zeroext i8 %129(ptr noundef %3) #8
  %conv198 = zext i8 %call197 to i32
  %neg199 = xor i32 %conv198, -1
  %and200 = lshr i32 %neg199, 2
  %and200.lobit = and i32 %and200, 1
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 307, i32 noundef %and200.lobit) #8
  %and202 = lshr i32 %neg199, 1
  %and202.lobit = and i32 %and202, 1
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 308, i32 noundef %and202.lobit) #8
  %and204 = and i32 %neg199, 1
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 309, i32 noundef %and204) #8
  %and206 = lshr i32 %neg199, 3
  %and206.lobit = and i32 %and206, 1
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 316, i32 noundef %and206.lobit) #8
  %130 = ptrtoint ptr %ops155 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ops155, align 4
  %write_control208 = getelementptr inbounds %struct.parport_operations, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %write_control208 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %write_control208, align 4
  tail call void %133(ptr noundef %3, i8 noundef zeroext 10) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %134 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %134(i32 noundef 3006472) #8
  %135 = ptrtoint ptr %ops155 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ops155, align 4
  %write_control210 = getelementptr inbounds %struct.parport_operations, ptr %136, i32 0, i32 2
  %137 = ptrtoint ptr %write_control210 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %write_control210, align 4
  tail call void %138(ptr noundef %3, i8 noundef zeroext 8) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %139 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %139(i32 noundef 3006472) #8
  %140 = ptrtoint ptr %ops155 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %ops155, align 4
  %write_control212 = getelementptr inbounds %struct.parport_operations, ptr %141, i32 0, i32 2
  %142 = ptrtoint ptr %write_control212 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %write_control212, align 4
  tail call void %143(ptr noundef %3, i8 noundef zeroext 10) #8
  br label %sw.epilog

sw.bb213:                                         ; preds = %entry.sw.bb213_crit_edge, %entry.sw.bb213_crit_edge476, %entry.sw.bb213_crit_edge477
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %data.i) #8
  %144 = call ptr @memset(ptr %data.i, i32 255, i32 60)
  %145 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %145, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %7, label %sw.bb213.db9_saturn.exit_crit_edge [
    i32 7, label %sw.bb213.sw.epilog.i_crit_edge
    i32 11, label %sw.bb1.i
    i32 12, label %sw.bb2.i
  ]

sw.bb213.sw.epilog.i_crit_edge:                   ; preds = %sw.bb213
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb213.db9_saturn.exit_crit_edge:               ; preds = %sw.bb213
  call void @__sanitizer_cov_trace_pc() #10
  br label %db9_saturn.exit

sw.bb1.i:                                         ; preds = %sw.bb213
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %sw.bb213
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %sw.bb1.i, %sw.bb213.sw.epilog.i_crit_edge
  %type.0.i = phi i32 [ 1, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 0, %sw.bb213.sw.epilog.i_crit_edge ]
  %n.0.i = phi i32 [ 2, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 1, %sw.bb213.sw.epilog.i_crit_edge ]
  %146 = lshr i32 1407, %7
  %147 = and i32 %146, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %cmp.not.i = icmp eq i32 %147, 0
  br i1 %cmp.not.i, label %sw.epilog.i.cond.end.i_crit_edge, label %cond.true.i

sw.epilog.i.cond.end.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.true.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %n_pads.i = getelementptr [13 x %struct.db9_mode_data], ptr @db9_modes, i32 0, i32 %7, i32 3
  %148 = ptrtoint ptr %n_pads.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %n_pads.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %sw.epilog.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %149, %cond.true.i ], [ 2, %sw.epilog.i.cond.end.i_crit_edge ]
  %ops31.i.i.i = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 24
  %arrayidx86.i.i = getelementptr inbounds i8, ptr %data.i, i32 1
  %arrayidx86.1.i.i = getelementptr inbounds i8, ptr %data.i, i32 2
  %arrayidx86.2.i.i = getelementptr inbounds i8, ptr %data.i, i32 3
  %arrayidx50.i.1.i = getelementptr inbounds i8, ptr %data.i, i32 10
  %arrayidx50.i.2.i = getelementptr inbounds i8, ptr %data.i, i32 20
  %arrayidx50.i.3.i = getelementptr inbounds i8, ptr %data.i, i32 30
  %arrayidx50.i.4.i = getelementptr inbounds i8, ptr %data.i, i32 40
  %arrayidx50.i.5.i = getelementptr inbounds i8, ptr %data.i, i32 50
  br label %for.body.i

for.body.i:                                       ; preds = %db9_saturn_report.exit.i.for.body.i_crit_edge, %cond.end.i
  %i.014.i = phi i32 [ 0, %cond.end.i ], [ %inc.i, %db9_saturn_report.exit.i.for.body.i_crit_edge ]
  %tmp.013.i = phi i32 [ 0, %cond.end.i ], [ %n.addr.0.lcssa.i.i, %db9_saturn_report.exit.i.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %i.014.i, %type.0.i
  %150 = zext i32 %add.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %150, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %add.i, label %db9_saturn_write_sub.exit.thread.i.i [
    i32 1, label %sw.bb.i.i.i
    i32 2, label %sw.bb6.i.i.i
    i32 0, label %sw.bb19.i.i.i
  ]

db9_saturn_write_sub.exit.thread.i.i:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %151 = ptrtoint ptr %ops31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %ops31.i.i.i, align 4
  br label %if.then.i.i.i

sw.bb.i.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %153 = ptrtoint ptr %ops31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %ops31.i.i.i, align 4
  br label %db9_saturn_write_sub.exit.i.i

sw.bb6.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %155 = ptrtoint ptr %ops31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %ops31.i.i.i, align 4
  br label %db9_saturn_write_sub.exit.i.i

sw.bb19.i.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %157 = ptrtoint ptr %ops31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %ops31.i.i.i, align 4
  %write_control.i.i.i = getelementptr inbounds %struct.parport_operations, ptr %158, i32 0, i32 2
  br label %db9_saturn_write_sub.exit.i.i

db9_saturn_write_sub.exit.i.i:                    ; preds = %sw.bb19.i.i.i, %sw.bb6.i.i.i, %sw.bb.i.i.i
  %write_control.sink.i.i.i = phi ptr [ %write_control.i.i.i, %sw.bb19.i.i.i ], [ %156, %sw.bb6.i.i.i ], [ %154, %sw.bb.i.i.i ]
  %conv30.sink.i.i.i = phi i8 [ 4, %sw.bb19.i.i.i ], [ 123, %sw.bb6.i.i.i ], [ -69, %sw.bb.i.i.i ]
  %159 = ptrtoint ptr %write_control.sink.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %write_control.sink.i.i.i, align 4
  tail call void %160(ptr noundef %3, i8 noundef zeroext %conv30.sink.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool.not.i.i.i = icmp eq i32 %add.i, 0
  %161 = ptrtoint ptr %ops31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %ops31.i.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %db9_saturn_write_sub.exit.i.i.if.then.i.i.i_crit_edge

db9_saturn_write_sub.exit.i.i.if.then.i.i.i_crit_edge: ; preds = %db9_saturn_write_sub.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %db9_saturn_write_sub.exit.i.i.if.then.i.i.i_crit_edge, %db9_saturn_write_sub.exit.thread.i.i
  %163 = phi ptr [ %152, %db9_saturn_write_sub.exit.thread.i.i ], [ %162, %db9_saturn_write_sub.exit.i.i.if.then.i.i.i_crit_edge ]
  %read_status.i.i.i = getelementptr inbounds %struct.parport_operations, ptr %163, i32 0, i32 5
  %164 = ptrtoint ptr %read_status.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %read_status.i.i.i, align 4
  %call.i.i.i = tail call zeroext i8 %165(ptr noundef %3) #8
  %166 = xor i8 %call.i.i.i, -1
  %and.lobit.i.i.i = lshr i8 %166, 7
  %and5.i.i.i = lshr i8 %call.i.i.i, 5
  %167 = and i8 %and5.i.i.i, 2
  %or.i.i.i = or i8 %167, %and.lobit.i.i.i
  %and9.i.i.i = lshr i8 %call.i.i.i, 3
  %168 = and i8 %and9.i.i.i, 4
  %or12.i.i.i = or i8 %or.i.i.i, %168
  %and14.i.i.i = lshr i8 %call.i.i.i, 1
  %169 = and i8 %and14.i.i.i, 8
  %or17.i.i.i = or i8 %or12.i.i.i, %169
  br label %db9_saturn_read_sub.exit.i.i

if.else.i.i.i:                                    ; preds = %db9_saturn_write_sub.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read_data.i.i.i = getelementptr inbounds %struct.parport_operations, ptr %162, i32 0, i32 1
  %170 = ptrtoint ptr %read_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %read_data.i.i.i, align 4
  %call20.i.i.i = tail call zeroext i8 %171(ptr noundef %3) #8
  %trunc.i.i.i = trunc i8 %call20.i.i.i to i4
  %rev.i.i.i = tail call i4 @llvm.bitreverse.i4(i4 %trunc.i.i.i) #8
  %conv43.i.i.i = zext i4 %rev.i.i.i to i8
  br label %db9_saturn_read_sub.exit.i.i

db9_saturn_read_sub.exit.i.i:                     ; preds = %if.else.i.i.i, %if.then.i.i.i
  %tobool.not.i164.i.i = phi i1 [ false, %if.then.i.i.i ], [ true, %if.else.i.i.i ]
  %retval.0.i.i.i = phi i8 [ %or17.i.i.i, %if.then.i.i.i ], [ %conv43.i.i.i, %if.else.i.i.i ]
  %172 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %retval.0.i.i.i, ptr %data.i, align 1
  %173 = and i8 %retval.0.i.i.i, 15
  %and.i.i = zext i8 %173 to i32
  %174 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %174, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %and.i.i, label %db9_saturn_read_sub.exit.i.i.db9_saturn_read_packet.exit.thread.i_crit_edge [
    i32 15, label %sw.bb.i.i
    i32 4, label %db9_saturn_read_sub.exit.i.i.sw.bb3.i.i_crit_edge
    i32 12, label %db9_saturn_read_sub.exit.i.i.sw.bb3.i.i_crit_edge478
    i32 1, label %sw.bb25.i.i
    i32 0, label %sw.bb74.i.i
  ]

db9_saturn_read_sub.exit.i.i.sw.bb3.i.i_crit_edge478: ; preds = %db9_saturn_read_sub.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3.i.i

db9_saturn_read_sub.exit.i.i.sw.bb3.i.i_crit_edge: ; preds = %db9_saturn_read_sub.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3.i.i

db9_saturn_read_sub.exit.i.i.db9_saturn_read_packet.exit.thread.i_crit_edge: ; preds = %db9_saturn_read_sub.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %db9_saturn_read_packet.exit.thread.i

sw.bb.i.i:                                        ; preds = %db9_saturn_read_sub.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %175 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 -1, ptr %data.i, align 1
  br label %db9_saturn_read_packet.exit.thread.i

sw.bb3.i.i:                                       ; preds = %db9_saturn_read_sub.exit.i.i.sw.bb3.i.i_crit_edge, %db9_saturn_read_sub.exit.i.i.sw.bb3.i.i_crit_edge478
  %176 = zext i32 %add.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %176, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %add.i, label %sw.bb3.i.i.db9_saturn_write_sub.exit13.i.i_crit_edge [
    i32 1, label %sw.bb.i4.i.i
    i32 2, label %sw.bb6.i6.i.i
    i32 0, label %sw.bb19.i9.i.i
  ]

sw.bb3.i.i.db9_saturn_write_sub.exit13.i.i_crit_edge: ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %db9_saturn_write_sub.exit13.i.i

sw.bb.i4.i.i:                                     ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %177 = ptrtoint ptr %ops31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %ops31.i.i.i, align 4
  br label %sw.epilog.sink.split.i12.i.i

sw.bb6.i6.i.i:                                    ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %179 = ptrtoint ptr %ops31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %ops31.i.i.i, align 4
  br label %sw.epilog.sink.split.i12.i.i

sw.bb19.i9.i.i:                                   ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %181 = ptrtoint ptr %ops31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %ops31.i.i.i, align 4
  %write_control.i8.i.i = getelementptr inbounds %struct.parport_operations, ptr %182, i32 0, i32 2
  br label %sw.epilog.sink.split.i12.i.i

sw.epilog.sink.split.i12.i.i:                     ; preds = %sw.bb19.i9.i.i, %sw.bb6.i6.i.i, %sw.bb.i4.i.i
  %write_control.sink.i10.i.i = phi ptr [ %write_control.i8.i.i, %sw.bb19.i9.i.i ], [ %180, %sw.bb6.i6.i.i ], [ %178, %sw.bb.i4.i.i ]
  %conv30.sink.i11.i.i = phi i8 [ 2, %sw.bb19.i9.i.i ], [ 79, %sw.bb6.i6.i.i ], [ -68, %sw.bb.i4.i.i ]
  %183 = ptrtoint ptr %write_control.sink.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %write_control.sink.i10.i.i, align 4
  tail call void %184(ptr noundef %3, i8 noundef zeroext %conv30.sink.i11.i.i) #8
  br label %db9_saturn_write_sub.exit13.i.i

db9_saturn_write_sub.exit13.i.i:                  ; preds = %sw.epilog.sink.split.i12.i.i, %sw.bb3.i.i.db9_saturn_write_sub.exit13.i.i_crit_edge
  %185 = ptrtoint ptr %ops31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %ops31.i.i.i, align 4
  br i1 %tobool.not.i164.i.i, label %if.else.i31.i.i, label %if.then.i25.i.i

if.then.i25.i.i:                                  ; preds = %db9_saturn_write_sub.exit13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read_status.i16.i.i = getelementptr inbounds %struct.parport_operations, ptr %186, i32 0, i32 5
  %187 = ptrtoint ptr %read_status.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %read_status.i16.i.i, align 4
  %call.i17.i.i = tail call zeroext i8 %188(ptr noundef %3) #8
  %189 = xor i8 %call.i17.i.i, -1
  %and.lobit.i18.i.i = lshr i8 %189, 7
  %and5.i19.i.i = lshr i8 %call.i17.i.i, 5
  %190 = and i8 %and5.i19.i.i, 2
  %or.i20.i.i = or i8 %190, %and.lobit.i18.i.i
  %and9.i21.i.i = lshr i8 %call.i17.i.i, 3
  %191 = and i8 %and9.i21.i.i, 4
  %or12.i22.i.i = or i8 %or.i20.i.i, %191
  %and14.i23.i.i = lshr i8 %call.i17.i.i, 1
  %192 = and i8 %and14.i23.i.i, 8
  %or17.i24.i.i = or i8 %or12.i22.i.i, %192
  br label %db9_saturn_read_sub.exit33.i.i

if.else.i31.i.i:                                  ; preds = %db9_saturn_write_sub.exit13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read_data.i26.i.i = getelementptr inbounds %struct.parport_operations, ptr %186, i32 0, i32 1
  %193 = ptrtoint ptr %read_data.i26.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %read_data.i26.i.i, align 4
  %call20.i27.i.i = tail call zeroext i8 %194(ptr noundef %3) #8
  %trunc.i28.i.i = trunc i8 %call20.i27.i.i to i4
  %rev.i29.i.i = tail call i4 @llvm.bitreverse.i4(i4 %trunc.i28.i.i) #8
  %conv43.i30.i.i = zext i4 %rev.i29.i.i to i8
  br label %db9_saturn_read_sub.exit33.i.i

db9_saturn_read_sub.exit33.i.i:                   ; preds = %if.else.i31.i.i, %if.then.i25.i.i
  %retval.0.i32.i.i = phi i8 [ %or17.i24.i.i, %if.then.i25.i.i ], [ %conv43.i30.i.i, %if.else.i31.i.i ]
  %shl.i.i = shl i8 %retval.0.i32.i.i, 4
  %195 = ptrtoint ptr %arrayidx86.1.i.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %shl.i.i, ptr %arrayidx86.1.i.i, align 1
  %196 = zext i32 %add.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %196, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %add.i, label %db9_saturn_read_sub.exit33.i.i.db9_saturn_write_sub.exit44.i.i_crit_edge [
    i32 1, label %sw.bb.i35.i.i
    i32 2, label %sw.bb6.i37.i.i
    i32 0, label %sw.bb19.i40.i.i
  ]

db9_saturn_read_sub.exit33.i.i.db9_saturn_write_sub.exit44.i.i_crit_edge: ; preds = %db9_saturn_read_sub.exit33.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %db9_saturn_write_sub.exit44.i.i

sw.bb.i35.i.i:                                    ; preds = %db9_saturn_read_sub.exit33.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %197 = ptrtoint ptr %ops31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %ops31.i.i.i, align 4
  br label %sw.epilog.sink.split.i43.i.i

sw.bb6.i37.i.i:                                   ; preds = %db9_saturn_read_sub.exit33.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %199 = ptrtoint ptr %ops31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %ops31.i.i.i, align 4
  br label %sw.epilog.sink.split.i43.i.i

sw.bb19.i40.i.i:                                  ; preds = %db9_saturn_read_sub.exit33.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %201 = ptrtoint ptr %ops31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %ops31.i.i.i, align 4
  %write_control.i39.i.i = getelementptr inbounds %struct.parport_operations, ptr %202, i32 0, i32 2
  br label %sw.epilog.sink.split.i43.i.i

sw.epilog.sink.split.i43.i.i:                     ; preds = %sw.bb19.i40.i.i, %sw.bb6.i37.i.i, %sw.bb.i35.i.i
  %write_control.sink.i41.i.i = phi ptr [ %write_control.i39.i.i, %sw.bb19.i40.i.i ], [ %200, %sw.bb6.i37.i.i ], [ %198, %sw.bb.i35.i.i ]
  %conv30.sink.i42.i.i = phi i8 [ 0, %sw.bb19.i40.i.i ], [ 111, %sw.bb6.i37.i.i ], [ -66, %sw.bb.i35.i.i ]
  %203 = ptrtoint ptr %write_control.sink.i41.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %write_control.sink.i41.i.i, align 4
  tail call void %204(ptr noundef %3, i8 noundef zeroext %conv30.sink.i42.i.i) #8
  br label %db9_saturn_write_sub.exit44.i.i

db9_saturn_write_sub.exit44.i.i:                  ; preds = %sw.epilog.sink.split.i43.i.i, %db9_saturn_read_sub.exit33.i.i.db9_saturn_write_sub.exit44.i.i_crit_edge
  %205 = ptrtoint ptr %ops31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %ops31.i.i.i, align 4
  br i1 %tobool.not.i164.i.i, label %if.else.i62.i.i, label %if.then.i56.i.i

if.then.i56.i.i:                                  ; preds = %db9_saturn_write_sub.exit44.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read_status.i47.i.i = getelementptr inbounds %struct.parport_operations, ptr %206, i32 0, i32 5
  %207 = ptrtoint ptr %read_status.i47.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %read_status.i47.i.i, align 4
  %call.i48.i.i = tail call zeroext i8 %208(ptr noundef %3) #8
  %209 = xor i8 %call.i48.i.i, -1
  %and.lobit.i49.i.i = lshr i8 %209, 7
  %and5.i50.i.i = lshr i8 %call.i48.i.i, 5
  %210 = and i8 %and5.i50.i.i, 2
  %or.i51.i.i = or i8 %210, %and.lobit.i49.i.i
  %and9.i52.i.i = lshr i8 %call.i48.i.i, 3
  %211 = and i8 %and9.i52.i.i, 4
  %or12.i53.i.i = or i8 %or.i51.i.i, %211
  %and14.i54.i.i = lshr i8 %call.i48.i.i, 1
  %212 = and i8 %and14.i54.i.i, 8
  %or17.i55.i.i = or i8 %or12.i53.i.i, %212
  br label %db9_saturn_read_sub.exit64.i.i

if.else.i62.i.i:                                  ; preds = %db9_saturn_write_sub.exit44.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read_data.i57.i.i = getelementptr inbounds %struct.parport_operations, ptr %206, i32 0, i32 1
  %213 = ptrtoint ptr %read_data.i57.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %read_data.i57.i.i, align 4
  %call20.i58.i.i = tail call zeroext i8 %214(ptr noundef %3) #8
  %trunc.i59.i.i = trunc i8 %call20.i58.i.i to i4
  %rev.i60.i.i = tail call i4 @llvm.bitreverse.i4(i4 %trunc.i59.i.i) #8
  %conv43.i61.i.i = zext i4 %rev.i60.i.i to i8
  br label %db9_saturn_read_sub.exit64.i.i

db9_saturn_read_sub.exit64.i.i:                   ; preds = %if.else.i62.i.i, %if.then.i56.i.i
  %retval.0.i63.i.i = phi i8 [ %or17.i55.i.i, %if.then.i56.i.i ], [ %conv43.i61.i.i, %if.else.i62.i.i ]
  %shl10.i.i = shl i8 %retval.0.i63.i.i, 4
  %215 = ptrtoint ptr %arrayidx86.i.i to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %shl10.i.i, ptr %arrayidx86.i.i, align 1
  %216 = zext i32 %add.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %216, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %add.i, label %db9_saturn_read_sub.exit64.i.i.db9_saturn_write_sub.exit75.i.i_crit_edge [
    i32 1, label %sw.bb.i66.i.i
    i32 2, label %sw.bb6.i68.i.i
    i32 0, label %sw.bb19.i71.i.i
  ]

db9_saturn_read_sub.exit64.i.i.db9_saturn_write_sub.exit75.i.i_crit_edge: ; preds = %db9_saturn_read_sub.exit64.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %db9_saturn_write_sub.exit75.i.i

sw.bb.i66.i.i:                                    ; preds = %db9_saturn_read_sub.exit64.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %217 = ptrtoint ptr %ops31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %ops31.i.i.i, align 4
  br label %sw.epilog.sink.split.i74.i.i

sw.bb6.i68.i.i:                                   ; preds = %db9_saturn_read_sub.exit64.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %219 = ptrtoint ptr %ops31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %ops31.i.i.i, align 4
  br label %sw.epilog.sink.split.i74.i.i

sw.bb19.i71.i.i:                                  ; preds = %db9_saturn_read_sub.exit64.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %221 = ptrtoint ptr %ops31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %ops31.i.i.i, align 4
  %write_control.i70.i.i = getelementptr inbounds %struct.parport_operations, ptr %222, i32 0, i32 2
  br label %sw.epilog.sink.split.i74.i.i

sw.epilog.sink.split.i74.i.i:                     ; preds = %sw.bb19.i71.i.i, %sw.bb6.i68.i.i, %sw.bb.i66.i.i
  %write_control.sink.i72.i.i = phi ptr [ %write_control.i70.i.i, %sw.bb19.i71.i.i ], [ %220, %sw.bb6.i68.i.i ], [ %218, %sw.bb.i66.i.i ]
  %conv30.sink.i73.i.i = phi i8 [ 6, %sw.bb19.i71.i.i ], [ 95, %sw.bb6.i68.i.i ], [ -67, %sw.bb.i66.i.i ]
  %223 = ptrtoint ptr %write_control.sink.i72.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %write_control.sink.i72.i.i, align 4
  tail call void %224(ptr noundef %3, i8 noundef zeroext %conv30.sink.i73.i.i) #8
  br label %db9_saturn_write_sub.exit75.i.i

db9_saturn_write_sub.exit75.i.i:                  ; preds = %sw.epilog.sink.split.i74.i.i, %db9_saturn_read_sub.exit64.i.i.db9_saturn_write_sub.exit75.i.i_crit_edge
  %225 = ptrtoint ptr %ops31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %ops31.i.i.i, align 4
  br i1 %tobool.not.i164.i.i, label %if.else.i93.i.i, label %if.then.i87.i.i

if.then.i87.i.i:                                  ; preds = %db9_saturn_write_sub.exit75.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read_status.i78.i.i = getelementptr inbounds %struct.parport_operations, ptr %226, i32 0, i32 5
  %227 = ptrtoint ptr %read_status.i78.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %read_status.i78.i.i, align 4
  %call.i79.i.i = tail call zeroext i8 %228(ptr noundef %3) #8
  %229 = xor i8 %call.i79.i.i, -1
  %and.lobit.i80.i.i = lshr i8 %229, 7
  %and5.i81.i.i = lshr i8 %call.i79.i.i, 5
  %230 = and i8 %and5.i81.i.i, 2
  %or.i82.i.i = or i8 %230, %and.lobit.i80.i.i
  %and9.i83.i.i = lshr i8 %call.i79.i.i, 3
  %231 = and i8 %and9.i83.i.i, 4
  %or12.i84.i.i = or i8 %or.i82.i.i, %231
  %and14.i85.i.i = lshr i8 %call.i79.i.i, 1
  %232 = and i8 %and14.i85.i.i, 8
  %or17.i86.i.i = or i8 %or12.i84.i.i, %232
  br label %db9_saturn_read_sub.exit95.i.i

if.else.i93.i.i:                                  ; preds = %db9_saturn_write_sub.exit75.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read_data.i88.i.i = getelementptr inbounds %struct.parport_operations, ptr %226, i32 0, i32 1
  %233 = ptrtoint ptr %read_data.i88.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %read_data.i88.i.i, align 4
  %call20.i89.i.i = tail call zeroext i8 %234(ptr noundef %3) #8
  %trunc.i90.i.i = trunc i8 %call20.i89.i.i to i4
  %rev.i91.i.i = tail call i4 @llvm.bitreverse.i4(i4 %trunc.i90.i.i) #8
  %conv43.i92.i.i = zext i4 %rev.i91.i.i to i8
  br label %db9_saturn_read_sub.exit95.i.i

db9_saturn_read_sub.exit95.i.i:                   ; preds = %if.else.i93.i.i, %if.then.i87.i.i
  %retval.0.i94.i.i = phi i8 [ %or17.i86.i.i, %if.then.i87.i.i ], [ %conv43.i92.i.i, %if.else.i93.i.i ]
  %235 = ptrtoint ptr %arrayidx86.i.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %arrayidx86.i.i, align 1
  %or1.i.i = or i8 %236, %retval.0.i94.i.i
  store i8 %or1.i.i, ptr %arrayidx86.i.i, align 1
  %237 = zext i32 %add.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %237, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %add.i, label %db9_saturn_read_sub.exit95.i.i.db9_saturn_write_sub.exit106.i.i_crit_edge [
    i32 1, label %sw.bb.i97.i.i
    i32 2, label %sw.bb6.i99.i.i
    i32 0, label %sw.bb19.i102.i.i
  ]

db9_saturn_read_sub.exit95.i.i.db9_saturn_write_sub.exit106.i.i_crit_edge: ; preds = %db9_saturn_read_sub.exit95.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %db9_saturn_write_sub.exit106.i.i

sw.bb.i97.i.i:                                    ; preds = %db9_saturn_read_sub.exit95.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %238 = ptrtoint ptr %ops31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %ops31.i.i.i, align 4
  br label %sw.epilog.sink.split.i105.i.i

sw.bb6.i99.i.i:                                   ; preds = %db9_saturn_read_sub.exit95.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %240 = ptrtoint ptr %ops31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %ops31.i.i.i, align 4
  br label %sw.epilog.sink.split.i105.i.i

sw.bb19.i102.i.i:                                 ; preds = %db9_saturn_read_sub.exit95.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %242 = ptrtoint ptr %ops31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %ops31.i.i.i, align 4
  %write_control.i101.i.i = getelementptr inbounds %struct.parport_operations, ptr %243, i32 0, i32 2
  br label %sw.epilog.sink.split.i105.i.i

sw.epilog.sink.split.i105.i.i:                    ; preds = %sw.bb19.i102.i.i, %sw.bb6.i99.i.i, %sw.bb.i97.i.i
  %write_control.sink.i103.i.i = phi ptr [ %write_control.i101.i.i, %sw.bb19.i102.i.i ], [ %241, %sw.bb6.i99.i.i ], [ %239, %sw.bb.i97.i.i ]
  %conv30.sink.i104.i.i = phi i8 [ 4, %sw.bb19.i102.i.i ], [ 127, %sw.bb6.i99.i.i ], [ -65, %sw.bb.i97.i.i ]
  %244 = ptrtoint ptr %write_control.sink.i103.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %write_control.sink.i103.i.i, align 4
  tail call void %245(ptr noundef %3, i8 noundef zeroext %conv30.sink.i104.i.i) #8
  br label %db9_saturn_write_sub.exit106.i.i

db9_saturn_write_sub.exit106.i.i:                 ; preds = %sw.epilog.sink.split.i105.i.i, %db9_saturn_read_sub.exit95.i.i.db9_saturn_write_sub.exit106.i.i_crit_edge
  %246 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %data.i, align 1
  %248 = ptrtoint ptr %arrayidx86.1.i.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %arrayidx86.1.i.i, align 1
  %or222.i.i = or i8 %249, %247
  store i8 %or222.i.i, ptr %arrayidx86.1.i.i, align 1
  store i8 2, ptr %data.i, align 1
  br label %db9_saturn_read_packet.exit.thread.i

sw.bb25.i.i:                                      ; preds = %db9_saturn_read_sub.exit.i.i
  %250 = zext i32 %add.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %250, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %add.i, label %sw.bb25.i.i.db9_saturn_write_sub.exit117.i.i_crit_edge [
    i32 1, label %sw.bb.i108.i.i
    i32 2, label %sw.bb6.i110.i.i
    i32 0, label %sw.bb19.i113.i.i
  ]

sw.bb25.i.i.db9_saturn_write_sub.exit117.i.i_crit_edge: ; preds = %sw.bb25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %db9_saturn_write_sub.exit117.i.i

sw.bb.i108.i.i:                                   ; preds = %sw.bb25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %251 = ptrtoint ptr %ops31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %ops31.i.i.i, align 4
  br label %sw.epilog.sink.split.i116.i.i

sw.bb6.i110.i.i:                                  ; preds = %sw.bb25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %253 = ptrtoint ptr %ops31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %ops31.i.i.i, align 4
  br label %sw.epilog.sink.split.i116.i.i

sw.bb19.i113.i.i:                                 ; preds = %sw.bb25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %255 = ptrtoint ptr %ops31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %ops31.i.i.i, align 4
  %write_control.i112.i.i = getelementptr inbounds %struct.parport_operations, ptr %256, i32 0, i32 2
  br label %sw.epilog.sink.split.i116.i.i

sw.epilog.sink.split.i116.i.i:                    ; preds = %sw.bb19.i113.i.i, %sw.bb6.i110.i.i, %sw.bb.i108.i.i
  %write_control.sink.i114.i.i = phi ptr [ %write_control.i112.i.i, %sw.bb19.i113.i.i ], [ %254, %sw.bb6.i110.i.i ], [ %252, %sw.bb.i108.i.i ]
  %conv30.sink.i115.i.i = phi i8 [ 0, %sw.bb19.i113.i.i ], [ 107, %sw.bb6.i110.i.i ], [ -70, %sw.bb.i108.i.i ]
  %257 = ptrtoint ptr %write_control.sink.i114.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %write_control.sink.i114.i.i, align 4
  tail call void %258(ptr noundef %3, i8 noundef zeroext %conv30.sink.i115.i.i) #8
  br label %db9_saturn_write_sub.exit117.i.i

db9_saturn_write_sub.exit117.i.i:                 ; preds = %sw.epilog.sink.split.i116.i.i, %sw.bb25.i.i.db9_saturn_write_sub.exit117.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %259 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %259(i32 noundef 64424400) #8
  %call26.i.i = tail call fastcc zeroext i8 @db9_saturn_read_analog(ptr noundef %3, i32 noundef %add.i) #8
  %260 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 %call26.i.i, ptr %data.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %call26.i.i)
  %cmp.not.i.i = icmp eq i8 %call26.i.i, 65
  br i1 %cmp.not.i.i, label %if.else.i.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %db9_saturn_write_sub.exit117.i.i
  %261 = and i8 %call26.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %261)
  %cmp34170.not.i.i = icmp eq i8 %261, 0
  br i1 %cmp34170.not.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.0171.i.i = phi i32 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %call36.i.i = tail call fastcc zeroext i8 @db9_saturn_read_analog(ptr noundef %3, i32 noundef %add.i) #8
  %add.i.i = add nuw nsw i32 %i.0171.i.i, 1
  %arrayidx37.i.i = getelementptr i8, ptr %data.i, i32 %add.i.i
  %262 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 %call36.i.i, ptr %arrayidx37.i.i, align 1
  %263 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %data.i, align 1
  %265 = and i8 %264, 15
  %and33.i.i = zext i8 %265 to i32
  %cmp34.i.i = icmp ult i32 %add.i.i, %and33.i.i
  br i1 %cmp34.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %266 = zext i32 %add.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %266, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %add.i, label %for.end.i.i.db9_saturn_read_packet.exit.i_crit_edge [
    i32 1, label %sw.bb.i119.i.i
    i32 2, label %sw.bb6.i121.i.i
    i32 0, label %sw.bb19.i124.i.i
  ]

for.end.i.i.db9_saturn_read_packet.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %db9_saturn_read_packet.exit.i

sw.bb.i119.i.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %267 = ptrtoint ptr %ops31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %ops31.i.i.i, align 4
  br label %sw.epilog.sink.split.i127.i.i

sw.bb6.i121.i.i:                                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %269 = ptrtoint ptr %ops31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %ops31.i.i.i, align 4
  br label %sw.epilog.sink.split.i127.i.i

sw.bb19.i124.i.i:                                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %271 = ptrtoint ptr %ops31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %ops31.i.i.i, align 4
  %write_control.i123.i.i = getelementptr inbounds %struct.parport_operations, ptr %272, i32 0, i32 2
  br label %sw.epilog.sink.split.i127.i.i

sw.epilog.sink.split.i127.i.i:                    ; preds = %sw.bb19.i124.i.i, %sw.bb6.i121.i.i, %sw.bb.i119.i.i
  %write_control.sink.i125.i.i = phi ptr [ %write_control.i123.i.i, %sw.bb19.i124.i.i ], [ %270, %sw.bb6.i121.i.i ], [ %268, %sw.bb.i119.i.i ]
  %conv30.sink.i126.i.i = phi i8 [ 4, %sw.bb19.i124.i.i ], [ 123, %sw.bb6.i121.i.i ], [ -69, %sw.bb.i119.i.i ]
  %273 = ptrtoint ptr %write_control.sink.i125.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %write_control.sink.i125.i.i, align 4
  tail call void %274(ptr noundef %3, i8 noundef zeroext %conv30.sink.i126.i.i) #8
  br label %db9_saturn_read_packet.exit.i

if.else.i.i:                                      ; preds = %db9_saturn_write_sub.exit117.i.i
  %call39.i.i = tail call fastcc zeroext i8 @db9_saturn_read_analog(ptr noundef %3, i32 noundef %add.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %call39.i.i)
  %cmp41.not.i.i = icmp eq i8 %call39.i.i, 96
  br i1 %cmp41.not.i.i, label %for.body48.i.preheader.i, label %if.then43.i.i

for.body48.i.preheader.i:                         ; preds = %if.else.i.i
  %call49.i.i = tail call fastcc zeroext i8 @db9_saturn_read_analog(ptr noundef %3, i32 noundef %add.i) #8
  %275 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %275)
  store i8 %call49.i.i, ptr %data.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call49.i.i)
  %cmp53.not.i.i = icmp eq i8 %call49.i.i, -1
  %276 = and i8 %call49.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %276)
  %cmp60173.not.i.i = icmp eq i8 %276, 0
  %or.cond.i = or i1 %cmp53.not.i.i, %cmp60173.not.i.i
  br i1 %or.cond.i, label %for.body48.i.preheader.i.for.inc71.i.i_crit_edge, label %for.body48.i.preheader.i.for.body62.i.i_crit_edge

for.body48.i.preheader.i.for.body62.i.i_crit_edge: ; preds = %for.body48.i.preheader.i
  br label %for.body62.i.i

for.body48.i.preheader.i.for.inc71.i.i_crit_edge: ; preds = %for.body48.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc71.i.i

if.then43.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %277 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 -1, ptr %data.i, align 1
  br label %db9_saturn_read_packet.exit.thread.i

for.body62.i.i:                                   ; preds = %for.body62.i.i.for.body62.i.i_crit_edge, %for.body48.i.preheader.i.for.body62.i.i_crit_edge
  %j.0174.i.i = phi i32 [ %add64.i.i, %for.body62.i.i.for.body62.i.i_crit_edge ], [ 0, %for.body48.i.preheader.i.for.body62.i.i_crit_edge ]
  %call63.i.i = tail call fastcc zeroext i8 @db9_saturn_read_analog(ptr noundef %3, i32 noundef %add.i) #8
  %add64.i.i = add nuw nsw i32 %j.0174.i.i, 1
  %arrayidx66.i.i = getelementptr i8, ptr %data.i, i32 %add64.i.i
  %278 = ptrtoint ptr %arrayidx66.i.i to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 %call63.i.i, ptr %arrayidx66.i.i, align 1
  %279 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %data.i, align 1
  %281 = and i8 %280, 15
  %and59.i.i = zext i8 %281 to i32
  %cmp60.i.i = icmp ult i32 %add64.i.i, %and59.i.i
  br i1 %cmp60.i.i, label %for.body62.i.i.for.body62.i.i_crit_edge, label %for.body62.i.i.for.inc71.i.i_crit_edge

for.body62.i.i.for.inc71.i.i_crit_edge:           ; preds = %for.body62.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc71.i.i

for.body62.i.i.for.body62.i.i_crit_edge:          ; preds = %for.body62.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body62.i.i

for.inc71.i.i:                                    ; preds = %for.body62.i.i.for.inc71.i.i_crit_edge, %for.body48.i.preheader.i.for.inc71.i.i_crit_edge
  %call49.i.1.i = tail call fastcc zeroext i8 @db9_saturn_read_analog(ptr noundef %3, i32 noundef %add.i) #8
  %282 = ptrtoint ptr %arrayidx50.i.1.i to i32
  call void @__asan_store1_noabort(i32 %282)
  store i8 %call49.i.1.i, ptr %arrayidx50.i.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call49.i.1.i)
  %cmp53.not.i.1.i = icmp eq i8 %call49.i.1.i, -1
  %283 = and i8 %call49.i.1.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %283)
  %cmp60173.not.i.1.i = icmp eq i8 %283, 0
  %or.cond.1.i = or i1 %cmp53.not.i.1.i, %cmp60173.not.i.1.i
  br i1 %or.cond.1.i, label %for.inc71.i.i.for.inc71.i.1.i_crit_edge, label %for.inc71.i.i.for.body62.i.1.i_crit_edge

for.inc71.i.i.for.body62.i.1.i_crit_edge:         ; preds = %for.inc71.i.i
  br label %for.body62.i.1.i

for.inc71.i.i.for.inc71.i.1.i_crit_edge:          ; preds = %for.inc71.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc71.i.1.i

for.body62.i.1.i:                                 ; preds = %for.body62.i.1.i.for.body62.i.1.i_crit_edge, %for.inc71.i.i.for.body62.i.1.i_crit_edge
  %j.0174.i.1.i = phi i32 [ %add64.i.1.i, %for.body62.i.1.i.for.body62.i.1.i_crit_edge ], [ 0, %for.inc71.i.i.for.body62.i.1.i_crit_edge ]
  %call63.i.1.i = tail call fastcc zeroext i8 @db9_saturn_read_analog(ptr noundef %3, i32 noundef %add.i) #8
  %add64.i.1.i = add nuw nsw i32 %j.0174.i.1.i, 1
  %add65.i.1.i = add nuw nsw i32 %j.0174.i.1.i, 11
  %arrayidx66.i.1.i = getelementptr i8, ptr %data.i, i32 %add65.i.1.i
  %284 = ptrtoint ptr %arrayidx66.i.1.i to i32
  call void @__asan_store1_noabort(i32 %284)
  store i8 %call63.i.1.i, ptr %arrayidx66.i.1.i, align 1
  %285 = ptrtoint ptr %arrayidx50.i.1.i to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %arrayidx50.i.1.i, align 1
  %287 = and i8 %286, 15
  %and59.i.1.i = zext i8 %287 to i32
  %cmp60.i.1.i = icmp ult i32 %add64.i.1.i, %and59.i.1.i
  br i1 %cmp60.i.1.i, label %for.body62.i.1.i.for.body62.i.1.i_crit_edge, label %for.body62.i.1.i.for.inc71.i.1.i_crit_edge

for.body62.i.1.i.for.inc71.i.1.i_crit_edge:       ; preds = %for.body62.i.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc71.i.1.i

for.body62.i.1.i.for.body62.i.1.i_crit_edge:      ; preds = %for.body62.i.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body62.i.1.i

for.inc71.i.1.i:                                  ; preds = %for.body62.i.1.i.for.inc71.i.1.i_crit_edge, %for.inc71.i.i.for.inc71.i.1.i_crit_edge
  %call49.i.2.i = tail call fastcc zeroext i8 @db9_saturn_read_analog(ptr noundef %3, i32 noundef %add.i) #8
  %288 = ptrtoint ptr %arrayidx50.i.2.i to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 %call49.i.2.i, ptr %arrayidx50.i.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call49.i.2.i)
  %cmp53.not.i.2.i = icmp eq i8 %call49.i.2.i, -1
  %289 = and i8 %call49.i.2.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %289)
  %cmp60173.not.i.2.i = icmp eq i8 %289, 0
  %or.cond.2.i = or i1 %cmp53.not.i.2.i, %cmp60173.not.i.2.i
  br i1 %or.cond.2.i, label %for.inc71.i.1.i.for.inc71.i.2.i_crit_edge, label %for.inc71.i.1.i.for.body62.i.2.i_crit_edge

for.inc71.i.1.i.for.body62.i.2.i_crit_edge:       ; preds = %for.inc71.i.1.i
  br label %for.body62.i.2.i

for.inc71.i.1.i.for.inc71.i.2.i_crit_edge:        ; preds = %for.inc71.i.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc71.i.2.i

for.body62.i.2.i:                                 ; preds = %for.body62.i.2.i.for.body62.i.2.i_crit_edge, %for.inc71.i.1.i.for.body62.i.2.i_crit_edge
  %j.0174.i.2.i = phi i32 [ %add64.i.2.i, %for.body62.i.2.i.for.body62.i.2.i_crit_edge ], [ 0, %for.inc71.i.1.i.for.body62.i.2.i_crit_edge ]
  %call63.i.2.i = tail call fastcc zeroext i8 @db9_saturn_read_analog(ptr noundef %3, i32 noundef %add.i) #8
  %add64.i.2.i = add nuw nsw i32 %j.0174.i.2.i, 1
  %add65.i.2.i = add nuw nsw i32 %j.0174.i.2.i, 21
  %arrayidx66.i.2.i = getelementptr i8, ptr %data.i, i32 %add65.i.2.i
  %290 = ptrtoint ptr %arrayidx66.i.2.i to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 %call63.i.2.i, ptr %arrayidx66.i.2.i, align 1
  %291 = ptrtoint ptr %arrayidx50.i.2.i to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %arrayidx50.i.2.i, align 1
  %293 = and i8 %292, 15
  %and59.i.2.i = zext i8 %293 to i32
  %cmp60.i.2.i = icmp ult i32 %add64.i.2.i, %and59.i.2.i
  br i1 %cmp60.i.2.i, label %for.body62.i.2.i.for.body62.i.2.i_crit_edge, label %for.body62.i.2.i.for.inc71.i.2.i_crit_edge

for.body62.i.2.i.for.inc71.i.2.i_crit_edge:       ; preds = %for.body62.i.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc71.i.2.i

for.body62.i.2.i.for.body62.i.2.i_crit_edge:      ; preds = %for.body62.i.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body62.i.2.i

for.inc71.i.2.i:                                  ; preds = %for.body62.i.2.i.for.inc71.i.2.i_crit_edge, %for.inc71.i.1.i.for.inc71.i.2.i_crit_edge
  %call49.i.3.i = tail call fastcc zeroext i8 @db9_saturn_read_analog(ptr noundef %3, i32 noundef %add.i) #8
  %294 = ptrtoint ptr %arrayidx50.i.3.i to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 %call49.i.3.i, ptr %arrayidx50.i.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call49.i.3.i)
  %cmp53.not.i.3.i = icmp eq i8 %call49.i.3.i, -1
  %295 = and i8 %call49.i.3.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %295)
  %cmp60173.not.i.3.i = icmp eq i8 %295, 0
  %or.cond.3.i = or i1 %cmp53.not.i.3.i, %cmp60173.not.i.3.i
  br i1 %or.cond.3.i, label %for.inc71.i.2.i.for.inc71.i.3.i_crit_edge, label %for.inc71.i.2.i.for.body62.i.3.i_crit_edge

for.inc71.i.2.i.for.body62.i.3.i_crit_edge:       ; preds = %for.inc71.i.2.i
  br label %for.body62.i.3.i

for.inc71.i.2.i.for.inc71.i.3.i_crit_edge:        ; preds = %for.inc71.i.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc71.i.3.i

for.body62.i.3.i:                                 ; preds = %for.body62.i.3.i.for.body62.i.3.i_crit_edge, %for.inc71.i.2.i.for.body62.i.3.i_crit_edge
  %j.0174.i.3.i = phi i32 [ %add64.i.3.i, %for.body62.i.3.i.for.body62.i.3.i_crit_edge ], [ 0, %for.inc71.i.2.i.for.body62.i.3.i_crit_edge ]
  %call63.i.3.i = tail call fastcc zeroext i8 @db9_saturn_read_analog(ptr noundef %3, i32 noundef %add.i) #8
  %add64.i.3.i = add nuw nsw i32 %j.0174.i.3.i, 1
  %add65.i.3.i = add nuw nsw i32 %j.0174.i.3.i, 31
  %arrayidx66.i.3.i = getelementptr i8, ptr %data.i, i32 %add65.i.3.i
  %296 = ptrtoint ptr %arrayidx66.i.3.i to i32
  call void @__asan_store1_noabort(i32 %296)
  store i8 %call63.i.3.i, ptr %arrayidx66.i.3.i, align 1
  %297 = ptrtoint ptr %arrayidx50.i.3.i to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %arrayidx50.i.3.i, align 1
  %299 = and i8 %298, 15
  %and59.i.3.i = zext i8 %299 to i32
  %cmp60.i.3.i = icmp ult i32 %add64.i.3.i, %and59.i.3.i
  br i1 %cmp60.i.3.i, label %for.body62.i.3.i.for.body62.i.3.i_crit_edge, label %for.body62.i.3.i.for.inc71.i.3.i_crit_edge

for.body62.i.3.i.for.inc71.i.3.i_crit_edge:       ; preds = %for.body62.i.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc71.i.3.i

for.body62.i.3.i.for.body62.i.3.i_crit_edge:      ; preds = %for.body62.i.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body62.i.3.i

for.inc71.i.3.i:                                  ; preds = %for.body62.i.3.i.for.inc71.i.3.i_crit_edge, %for.inc71.i.2.i.for.inc71.i.3.i_crit_edge
  %call49.i.4.i = tail call fastcc zeroext i8 @db9_saturn_read_analog(ptr noundef %3, i32 noundef %add.i) #8
  %300 = ptrtoint ptr %arrayidx50.i.4.i to i32
  call void @__asan_store1_noabort(i32 %300)
  store i8 %call49.i.4.i, ptr %arrayidx50.i.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call49.i.4.i)
  %cmp53.not.i.4.i = icmp eq i8 %call49.i.4.i, -1
  %301 = and i8 %call49.i.4.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %301)
  %cmp60173.not.i.4.i = icmp eq i8 %301, 0
  %or.cond.4.i = or i1 %cmp53.not.i.4.i, %cmp60173.not.i.4.i
  br i1 %or.cond.4.i, label %for.inc71.i.3.i.for.inc71.i.4.i_crit_edge, label %for.inc71.i.3.i.for.body62.i.4.i_crit_edge

for.inc71.i.3.i.for.body62.i.4.i_crit_edge:       ; preds = %for.inc71.i.3.i
  br label %for.body62.i.4.i

for.inc71.i.3.i.for.inc71.i.4.i_crit_edge:        ; preds = %for.inc71.i.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc71.i.4.i

for.body62.i.4.i:                                 ; preds = %for.body62.i.4.i.for.body62.i.4.i_crit_edge, %for.inc71.i.3.i.for.body62.i.4.i_crit_edge
  %j.0174.i.4.i = phi i32 [ %add64.i.4.i, %for.body62.i.4.i.for.body62.i.4.i_crit_edge ], [ 0, %for.inc71.i.3.i.for.body62.i.4.i_crit_edge ]
  %call63.i.4.i = tail call fastcc zeroext i8 @db9_saturn_read_analog(ptr noundef %3, i32 noundef %add.i) #8
  %add64.i.4.i = add nuw nsw i32 %j.0174.i.4.i, 1
  %add65.i.4.i = add nuw nsw i32 %j.0174.i.4.i, 41
  %arrayidx66.i.4.i = getelementptr i8, ptr %data.i, i32 %add65.i.4.i
  %302 = ptrtoint ptr %arrayidx66.i.4.i to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 %call63.i.4.i, ptr %arrayidx66.i.4.i, align 1
  %303 = ptrtoint ptr %arrayidx50.i.4.i to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %arrayidx50.i.4.i, align 1
  %305 = and i8 %304, 15
  %and59.i.4.i = zext i8 %305 to i32
  %cmp60.i.4.i = icmp ult i32 %add64.i.4.i, %and59.i.4.i
  br i1 %cmp60.i.4.i, label %for.body62.i.4.i.for.body62.i.4.i_crit_edge, label %for.body62.i.4.i.for.inc71.i.4.i_crit_edge

for.body62.i.4.i.for.inc71.i.4.i_crit_edge:       ; preds = %for.body62.i.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc71.i.4.i

for.body62.i.4.i.for.body62.i.4.i_crit_edge:      ; preds = %for.body62.i.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body62.i.4.i

for.inc71.i.4.i:                                  ; preds = %for.body62.i.4.i.for.inc71.i.4.i_crit_edge, %for.inc71.i.3.i.for.inc71.i.4.i_crit_edge
  %call49.i.5.i = tail call fastcc zeroext i8 @db9_saturn_read_analog(ptr noundef %3, i32 noundef %add.i) #8
  %306 = ptrtoint ptr %arrayidx50.i.5.i to i32
  call void @__asan_store1_noabort(i32 %306)
  store i8 %call49.i.5.i, ptr %arrayidx50.i.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call49.i.5.i)
  %cmp53.not.i.5.i = icmp eq i8 %call49.i.5.i, -1
  %307 = and i8 %call49.i.5.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %307)
  %cmp60173.not.i.5.i = icmp eq i8 %307, 0
  %or.cond.5.i = or i1 %cmp53.not.i.5.i, %cmp60173.not.i.5.i
  br i1 %or.cond.5.i, label %for.inc71.i.4.i.for.inc71.i.5.i_crit_edge, label %for.inc71.i.4.i.for.body62.i.5.i_crit_edge

for.inc71.i.4.i.for.body62.i.5.i_crit_edge:       ; preds = %for.inc71.i.4.i
  br label %for.body62.i.5.i

for.inc71.i.4.i.for.inc71.i.5.i_crit_edge:        ; preds = %for.inc71.i.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc71.i.5.i

for.body62.i.5.i:                                 ; preds = %for.body62.i.5.i.for.body62.i.5.i_crit_edge, %for.inc71.i.4.i.for.body62.i.5.i_crit_edge
  %j.0174.i.5.i = phi i32 [ %add64.i.5.i, %for.body62.i.5.i.for.body62.i.5.i_crit_edge ], [ 0, %for.inc71.i.4.i.for.body62.i.5.i_crit_edge ]
  %call63.i.5.i = tail call fastcc zeroext i8 @db9_saturn_read_analog(ptr noundef %3, i32 noundef %add.i) #8
  %add64.i.5.i = add nuw nsw i32 %j.0174.i.5.i, 1
  %add65.i.5.i = add nuw nsw i32 %j.0174.i.5.i, 51
  %arrayidx66.i.5.i = getelementptr i8, ptr %data.i, i32 %add65.i.5.i
  %308 = ptrtoint ptr %arrayidx66.i.5.i to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 %call63.i.5.i, ptr %arrayidx66.i.5.i, align 1
  %309 = ptrtoint ptr %arrayidx50.i.5.i to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %arrayidx50.i.5.i, align 1
  %311 = and i8 %310, 15
  %and59.i.5.i = zext i8 %311 to i32
  %cmp60.i.5.i = icmp ult i32 %add64.i.5.i, %and59.i.5.i
  br i1 %cmp60.i.5.i, label %for.body62.i.5.i.for.body62.i.5.i_crit_edge, label %for.body62.i.5.i.for.inc71.i.5.i_crit_edge

for.body62.i.5.i.for.inc71.i.5.i_crit_edge:       ; preds = %for.body62.i.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc71.i.5.i

for.body62.i.5.i.for.body62.i.5.i_crit_edge:      ; preds = %for.body62.i.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body62.i.5.i

for.inc71.i.5.i:                                  ; preds = %for.body62.i.5.i.for.inc71.i.5.i_crit_edge, %for.inc71.i.4.i.for.inc71.i.5.i_crit_edge
  %312 = zext i32 %add.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %312, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %add.i, label %for.inc71.i.5.i.db9_saturn_read_packet.exit.thread10.i_crit_edge [
    i32 1, label %sw.bb.i130.i.i
    i32 2, label %sw.bb6.i132.i.i
    i32 0, label %sw.bb19.i135.i.i
  ]

for.inc71.i.5.i.db9_saturn_read_packet.exit.thread10.i_crit_edge: ; preds = %for.inc71.i.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %db9_saturn_read_packet.exit.thread10.i

sw.bb.i130.i.i:                                   ; preds = %for.inc71.i.5.i
  call void @__sanitizer_cov_trace_pc() #10
  %313 = ptrtoint ptr %ops31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %ops31.i.i.i, align 4
  br label %sw.epilog.sink.split.i138.i.i

sw.bb6.i132.i.i:                                  ; preds = %for.inc71.i.5.i
  call void @__sanitizer_cov_trace_pc() #10
  %315 = ptrtoint ptr %ops31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %ops31.i.i.i, align 4
  br label %sw.epilog.sink.split.i138.i.i

sw.bb19.i135.i.i:                                 ; preds = %for.inc71.i.5.i
  call void @__sanitizer_cov_trace_pc() #10
  %317 = ptrtoint ptr %ops31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %ops31.i.i.i, align 4
  %write_control.i134.i.i = getelementptr inbounds %struct.parport_operations, ptr %318, i32 0, i32 2
  br label %sw.epilog.sink.split.i138.i.i

sw.epilog.sink.split.i138.i.i:                    ; preds = %sw.bb19.i135.i.i, %sw.bb6.i132.i.i, %sw.bb.i130.i.i
  %write_control.sink.i136.i.i = phi ptr [ %write_control.i134.i.i, %sw.bb19.i135.i.i ], [ %316, %sw.bb6.i132.i.i ], [ %314, %sw.bb.i130.i.i ]
  %conv30.sink.i137.i.i = phi i8 [ 4, %sw.bb19.i135.i.i ], [ 123, %sw.bb6.i132.i.i ], [ -69, %sw.bb.i130.i.i ]
  %319 = ptrtoint ptr %write_control.sink.i136.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %write_control.sink.i136.i.i, align 4
  tail call void %320(ptr noundef %3, i8 noundef zeroext %conv30.sink.i137.i.i) #8
  br label %db9_saturn_read_packet.exit.thread10.i

sw.bb74.i.i:                                      ; preds = %db9_saturn_read_sub.exit.i.i
  %321 = zext i32 %add.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %321, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %add.i, label %sw.bb74.i.i.db9_saturn_write_sub.exit150.i.i_crit_edge [
    i32 1, label %sw.bb.i141.i.i
    i32 2, label %sw.bb6.i143.i.i
    i32 0, label %sw.bb19.i146.i.i
  ]

sw.bb74.i.i.db9_saturn_write_sub.exit150.i.i_crit_edge: ; preds = %sw.bb74.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %db9_saturn_write_sub.exit150.i.i

sw.bb.i141.i.i:                                   ; preds = %sw.bb74.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %322 = ptrtoint ptr %ops31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %ops31.i.i.i, align 4
  br label %sw.epilog.sink.split.i149.i.i

sw.bb6.i143.i.i:                                  ; preds = %sw.bb74.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %324 = ptrtoint ptr %ops31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %ops31.i.i.i, align 4
  br label %sw.epilog.sink.split.i149.i.i

sw.bb19.i146.i.i:                                 ; preds = %sw.bb74.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %326 = ptrtoint ptr %ops31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %ops31.i.i.i, align 4
  %write_control.i145.i.i = getelementptr inbounds %struct.parport_operations, ptr %327, i32 0, i32 2
  br label %sw.epilog.sink.split.i149.i.i

sw.epilog.sink.split.i149.i.i:                    ; preds = %sw.bb19.i146.i.i, %sw.bb6.i143.i.i, %sw.bb.i141.i.i
  %write_control.sink.i147.i.i = phi ptr [ %write_control.i145.i.i, %sw.bb19.i146.i.i ], [ %325, %sw.bb6.i143.i.i ], [ %323, %sw.bb.i141.i.i ]
  %conv30.sink.i148.i.i = phi i8 [ 0, %sw.bb19.i146.i.i ], [ 107, %sw.bb6.i143.i.i ], [ -70, %sw.bb.i141.i.i ]
  %328 = ptrtoint ptr %write_control.sink.i147.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %write_control.sink.i147.i.i, align 4
  tail call void %329(ptr noundef %3, i8 noundef zeroext %conv30.sink.i148.i.i) #8
  br label %db9_saturn_write_sub.exit150.i.i

db9_saturn_write_sub.exit150.i.i:                 ; preds = %sw.epilog.sink.split.i149.i.i, %sw.bb74.i.i.db9_saturn_write_sub.exit150.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %330 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %330(i32 noundef 64424400) #8
  %call75.i.i = tail call fastcc zeroext i8 @db9_saturn_read_analog(ptr noundef %3, i32 noundef %add.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call75.i.i)
  %cmp77.i.i = icmp eq i8 %call75.i.i, -1
  br i1 %cmp77.i.i, label %for.body83.preheader.i.i, label %db9_saturn_write_sub.exit150.i.i.db9_saturn_read_packet.exit.i_crit_edge

db9_saturn_write_sub.exit150.i.i.db9_saturn_read_packet.exit.i_crit_edge: ; preds = %db9_saturn_write_sub.exit150.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %db9_saturn_read_packet.exit.i

for.body83.preheader.i.i:                         ; preds = %db9_saturn_write_sub.exit150.i.i
  %call84.i.i = tail call fastcc zeroext i8 @db9_saturn_read_analog(ptr noundef %3, i32 noundef %add.i) #8
  %331 = ptrtoint ptr %arrayidx86.i.i to i32
  call void @__asan_store1_noabort(i32 %331)
  store i8 %call84.i.i, ptr %arrayidx86.i.i, align 1
  %call84.1.i.i = tail call fastcc zeroext i8 @db9_saturn_read_analog(ptr noundef %3, i32 noundef %add.i) #8
  %332 = ptrtoint ptr %arrayidx86.1.i.i to i32
  call void @__asan_store1_noabort(i32 %332)
  store i8 %call84.1.i.i, ptr %arrayidx86.1.i.i, align 1
  %call84.2.i.i = tail call fastcc zeroext i8 @db9_saturn_read_analog(ptr noundef %3, i32 noundef %add.i) #8
  %333 = ptrtoint ptr %arrayidx86.2.i.i to i32
  call void @__asan_store1_noabort(i32 %333)
  store i8 %call84.2.i.i, ptr %arrayidx86.2.i.i, align 1
  %334 = zext i32 %add.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %334, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %add.i, label %for.body83.preheader.i.i.db9_saturn_write_sub.exit161.i.i_crit_edge [
    i32 1, label %sw.bb.i152.i.i
    i32 2, label %sw.bb6.i154.i.i
    i32 0, label %sw.bb19.i157.i.i
  ]

for.body83.preheader.i.i.db9_saturn_write_sub.exit161.i.i_crit_edge: ; preds = %for.body83.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %db9_saturn_write_sub.exit161.i.i

sw.bb.i152.i.i:                                   ; preds = %for.body83.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %335 = ptrtoint ptr %ops31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %ops31.i.i.i, align 4
  br label %sw.epilog.sink.split.i160.i.i

sw.bb6.i154.i.i:                                  ; preds = %for.body83.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %337 = ptrtoint ptr %ops31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %ops31.i.i.i, align 4
  br label %sw.epilog.sink.split.i160.i.i

sw.bb19.i157.i.i:                                 ; preds = %for.body83.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %339 = ptrtoint ptr %ops31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %ops31.i.i.i, align 4
  %write_control.i156.i.i = getelementptr inbounds %struct.parport_operations, ptr %340, i32 0, i32 2
  br label %sw.epilog.sink.split.i160.i.i

sw.epilog.sink.split.i160.i.i:                    ; preds = %sw.bb19.i157.i.i, %sw.bb6.i154.i.i, %sw.bb.i152.i.i
  %write_control.sink.i158.i.i = phi ptr [ %write_control.i156.i.i, %sw.bb19.i157.i.i ], [ %338, %sw.bb6.i154.i.i ], [ %336, %sw.bb.i152.i.i ]
  %conv30.sink.i159.i.i = phi i8 [ 4, %sw.bb19.i157.i.i ], [ 123, %sw.bb6.i154.i.i ], [ -69, %sw.bb.i152.i.i ]
  %341 = ptrtoint ptr %write_control.sink.i158.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %write_control.sink.i158.i.i, align 4
  tail call void %342(ptr noundef %3, i8 noundef zeroext %conv30.sink.i159.i.i) #8
  br label %db9_saturn_write_sub.exit161.i.i

db9_saturn_write_sub.exit161.i.i:                 ; preds = %sw.epilog.sink.split.i160.i.i, %for.body83.preheader.i.i.db9_saturn_write_sub.exit161.i.i_crit_edge
  %343 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %343)
  store i8 -29, ptr %data.i, align 1
  br label %db9_saturn_read_packet.exit.thread.i

db9_saturn_read_packet.exit.i:                    ; preds = %db9_saturn_write_sub.exit150.i.i.db9_saturn_read_packet.exit.i_crit_edge, %sw.epilog.sink.split.i127.i.i, %for.end.i.i.db9_saturn_read_packet.exit.i_crit_edge
  %344 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %344)
  %retval.0.i.pr.i = load i8, ptr %data.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %retval.0.i.pr.i)
  %cmp.i.i = icmp eq i8 %retval.0.i.pr.i, 65
  br i1 %cmp.i.i, label %db9_saturn_read_packet.exit.i.db9_saturn_read_packet.exit.thread10.i_crit_edge, label %db9_saturn_read_packet.exit.i.db9_saturn_read_packet.exit.thread.i_crit_edge

db9_saturn_read_packet.exit.i.db9_saturn_read_packet.exit.thread.i_crit_edge: ; preds = %db9_saturn_read_packet.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %db9_saturn_read_packet.exit.thread.i

db9_saturn_read_packet.exit.i.db9_saturn_read_packet.exit.thread10.i_crit_edge: ; preds = %db9_saturn_read_packet.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %db9_saturn_read_packet.exit.thread10.i

db9_saturn_read_packet.exit.thread10.i:           ; preds = %db9_saturn_read_packet.exit.i.db9_saturn_read_packet.exit.thread10.i_crit_edge, %sw.epilog.sink.split.i138.i.i, %for.inc71.i.5.i.db9_saturn_read_packet.exit.thread10.i_crit_edge
  br label %db9_saturn_read_packet.exit.thread.i

db9_saturn_read_packet.exit.thread.i:             ; preds = %db9_saturn_read_packet.exit.thread10.i, %db9_saturn_read_packet.exit.i.db9_saturn_read_packet.exit.thread.i_crit_edge, %db9_saturn_write_sub.exit161.i.i, %if.then43.i.i, %db9_saturn_write_sub.exit106.i.i, %sw.bb.i.i, %db9_saturn_read_sub.exit.i.i.db9_saturn_read_packet.exit.thread.i_crit_edge
  %345 = phi i32 [ 60, %db9_saturn_read_packet.exit.thread10.i ], [ 10, %db9_saturn_read_packet.exit.i.db9_saturn_read_packet.exit.thread.i_crit_edge ], [ 10, %db9_saturn_write_sub.exit161.i.i ], [ 10, %if.then43.i.i ], [ 10, %db9_saturn_write_sub.exit106.i.i ], [ 10, %sw.bb.i.i ], [ 10, %db9_saturn_read_sub.exit.i.i.db9_saturn_read_packet.exit.thread.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp.013.i, i32 %cond.i)
  %cmp4317.i.i = icmp slt i32 %tmp.013.i, %cond.i
  br i1 %cmp4317.i.i, label %db9_saturn_read_packet.exit.thread.i.for.body.i1.i_crit_edge, label %db9_saturn_read_packet.exit.thread.i.db9_saturn_report.exit.i_crit_edge

db9_saturn_read_packet.exit.thread.i.db9_saturn_report.exit.i_crit_edge: ; preds = %db9_saturn_read_packet.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %db9_saturn_report.exit.i

db9_saturn_read_packet.exit.thread.i.for.body.i1.i_crit_edge: ; preds = %db9_saturn_read_packet.exit.thread.i
  br label %for.body.i1.i

for.body.i1.i:                                    ; preds = %for.inc190.i.i.for.body.i1.i_crit_edge, %db9_saturn_read_packet.exit.thread.i.for.body.i1.i_crit_edge
  %j.0319.i.i = phi i32 [ %add191.i.i, %for.inc190.i.i.for.body.i1.i_crit_edge ], [ 0, %db9_saturn_read_packet.exit.thread.i.for.body.i1.i_crit_edge ]
  %n.addr.0318.i.i = phi i32 [ %inc192.i.i, %for.inc190.i.i.for.body.i1.i_crit_edge ], [ %tmp.013.i, %db9_saturn_read_packet.exit.thread.i.for.body.i1.i_crit_edge ]
  %arrayidx.i.i = getelementptr ptr, ptr %add.ptr, i32 %n.addr.0318.i.i
  %346 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %arrayidx.i.i, align 4
  %arrayidx6.i.i = getelementptr i8, ptr %data.i, i32 %j.0319.i.i
  %348 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %348)
  %349 = load i8, ptr %arrayidx6.i.i, align 1
  %350 = zext i8 %349 to i64
  call void @__sanitizer_cov_trace_switch(i64 %350, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %349, label %sw.default.i6.i [
    i8 22, label %sw.bb.i3.i
    i8 21, label %for.body.i1.i.sw.bb11.i.i_crit_edge
    i8 19, label %for.body.i1.i.sw.bb20.i.i_crit_edge
    i8 52, label %for.body.i1.i.sw.bb25.i5.i_crit_edge
    i8 2, label %for.body.i1.i.sw.bb25.i5.i_crit_edge479
    i8 25, label %sw.bb66.i.i
    i8 -45, label %sw.bb140.i.i
    i8 -29, label %sw.bb150.i.i
  ]

for.body.i1.i.sw.bb25.i5.i_crit_edge479:          ; preds = %for.body.i1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb25.i5.i

for.body.i1.i.sw.bb25.i5.i_crit_edge:             ; preds = %for.body.i1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb25.i5.i

for.body.i1.i.sw.bb20.i.i_crit_edge:              ; preds = %for.body.i1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb20.i.i

for.body.i1.i.sw.bb11.i.i_crit_edge:              ; preds = %for.body.i1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11.i.i

sw.bb.i3.i:                                       ; preds = %for.body.i1.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i2.i = add nuw nsw i32 %j.0319.i.i, 6
  %arrayidx9.i.i = getelementptr i8, ptr %data.i, i32 %add.i2.i
  %351 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load1_noabort(i32 %351)
  %352 = load i8, ptr %arrayidx9.i.i, align 1
  %conv10.i.i = zext i8 %352 to i32
  tail call void @input_event(ptr noundef %347, i32 noundef 3, i32 noundef 2, i32 noundef %conv10.i.i) #8
  br label %sw.bb11.i.i

sw.bb11.i.i:                                      ; preds = %sw.bb.i3.i, %for.body.i1.i.sw.bb11.i.i_crit_edge
  %add13.i.i = add nuw nsw i32 %j.0319.i.i, 4
  %arrayidx14.i.i = getelementptr i8, ptr %data.i, i32 %add13.i.i
  %353 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load1_noabort(i32 %353)
  %354 = load i8, ptr %arrayidx14.i.i, align 1
  %conv15.i.i = zext i8 %354 to i32
  tail call void @input_event(ptr noundef %347, i32 noundef 3, i32 noundef 4, i32 noundef %conv15.i.i) #8
  %add17.i.i = add nuw nsw i32 %j.0319.i.i, 5
  %arrayidx18.i.i = getelementptr i8, ptr %data.i, i32 %add17.i.i
  %355 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %arrayidx18.i.i, align 1
  %conv19.i.i = zext i8 %356 to i32
  tail call void @input_event(ptr noundef %347, i32 noundef 3, i32 noundef 5, i32 noundef %conv19.i.i) #8
  br label %sw.bb20.i.i

sw.bb20.i.i:                                      ; preds = %sw.bb11.i.i, %for.body.i1.i.sw.bb20.i.i_crit_edge
  %add22.i.i = add nuw nsw i32 %j.0319.i.i, 3
  %arrayidx23.i.i = getelementptr i8, ptr %data.i, i32 %add22.i.i
  %357 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load1_noabort(i32 %357)
  %358 = load i8, ptr %arrayidx23.i.i, align 1
  %conv24.i.i = zext i8 %358 to i32
  tail call void @input_event(ptr noundef %347, i32 noundef 3, i32 noundef 3, i32 noundef %conv24.i.i) #8
  br label %sw.bb25.i5.i

sw.bb25.i5.i:                                     ; preds = %sw.bb20.i.i, %for.body.i1.i.sw.bb25.i5.i_crit_edge, %for.body.i1.i.sw.bb25.i5.i_crit_edge479
  %add27.i.i = or i32 %j.0319.i.i, 1
  %arrayidx28.i.i = getelementptr i8, ptr %data.i, i32 %add27.i.i
  %359 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_load1_noabort(i32 %359)
  %360 = load i8, ptr %arrayidx28.i.i, align 1
  %conv29.i.i = zext i8 %360 to i32
  %and.lobit.i.i = lshr i32 %conv29.i.i, 7
  %361 = xor i32 %and.lobit.i.i, 1
  %and33.i4.i = lshr i32 %conv29.i.i, 6
  %362 = or i32 %and33.i4.i, -2
  %.neg295.i.i = add nsw i32 %362, 1
  %sub.i.i = add nsw i32 %.neg295.i.i, %361
  tail call void @input_event(ptr noundef %347, i32 noundef 3, i32 noundef 0, i32 noundef %sub.i.i) #8
  %and41.i.i = lshr i32 %conv29.i.i, 5
  %and48.i.i = lshr i32 %conv29.i.i, 4
  %363 = or i32 %and48.i.i, -2
  %364 = or i32 %and41.i.i, -2
  %sub297.i.i = sub nsw i32 %363, %364
  tail call void @input_event(ptr noundef %347, i32 noundef 3, i32 noundef 1, i32 noundef %sub297.i.i) #8
  br label %for.body56.i.i

for.body56.i.i:                                   ; preds = %for.body56.i.i.for.body56.i.i_crit_edge, %sw.bb25.i5.i
  %i.0315.i.i = phi i32 [ 0, %sw.bb25.i5.i ], [ %inc.i.i, %for.body56.i.i.for.body56.i.i_crit_edge ]
  %arrayidx57.i.i = getelementptr [9 x i16], ptr @db9_cd32_btn, i32 0, i32 %i.0315.i.i
  %365 = ptrtoint ptr %arrayidx57.i.i to i32
  call void @__asan_load2_noabort(i32 %365)
  %366 = load i16, ptr %arrayidx57.i.i, align 2
  %conv58.i.i = sext i16 %366 to i32
  %arrayidx59.i.i = getelementptr [9 x i32], ptr @db9_saturn_byte, i32 0, i32 %i.0315.i.i
  %367 = ptrtoint ptr %arrayidx59.i.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %arrayidx59.i.i, align 4
  %add60.i.i = add i32 %368, %j.0319.i.i
  %arrayidx61.i.i = getelementptr i8, ptr %data.i, i32 %add60.i.i
  %369 = ptrtoint ptr %arrayidx61.i.i to i32
  call void @__asan_load1_noabort(i32 %369)
  %370 = load i8, ptr %arrayidx61.i.i, align 1
  %conv62.i.i = zext i8 %370 to i32
  %neg.i.i = xor i32 %conv62.i.i, -1
  %arrayidx63.i.i = getelementptr [9 x i8], ptr @db9_saturn_mask, i32 0, i32 %i.0315.i.i
  %371 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_load1_noabort(i32 %371)
  %372 = load i8, ptr %arrayidx63.i.i, align 1
  %conv64.i.i = zext i8 %372 to i32
  %and65.i.i = and i32 %conv64.i.i, %neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i.i)
  %tobool.i.i.i = icmp ne i32 %and65.i.i, 0
  %lnot.ext.i.i.i = zext i1 %tobool.i.i.i to i32
  tail call void @input_event(ptr noundef %347, i32 noundef 1, i32 noundef %conv58.i.i, i32 noundef %lnot.ext.i.i.i) #8
  %inc.i.i = add nuw nsw i32 %i.0315.i.i, 1
  %exitcond322.not.i.i = icmp eq i32 %inc.i.i, 9
  br i1 %exitcond322.not.i.i, label %for.body56.i.i.for.inc190.i.i_crit_edge, label %for.body56.i.i.for.body56.i.i_crit_edge

for.body56.i.i.for.body56.i.i_crit_edge:          ; preds = %for.body56.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body56.i.i

for.body56.i.i.for.inc190.i.i_crit_edge:          ; preds = %for.body56.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc190.i.i

sw.bb66.i.i:                                      ; preds = %for.body.i1.i
  %add68.i.i = or i32 %j.0319.i.i, 1
  %arrayidx69.i.i = getelementptr i8, ptr %data.i, i32 %add68.i.i
  %373 = ptrtoint ptr %arrayidx69.i.i to i32
  call void @__asan_load1_noabort(i32 %373)
  %374 = load i8, ptr %arrayidx69.i.i, align 1
  %conv70.i.i = zext i8 %374 to i32
  %and71.lobit.i.i = lshr i32 %conv70.i.i, 7
  %375 = xor i32 %and71.lobit.i.i, 1
  %and78.i.i = lshr i32 %conv70.i.i, 6
  %376 = or i32 %and78.i.i, -2
  %.neg.i.i = add nsw i32 %376, 1
  %sub82.i.i = add nsw i32 %.neg.i.i, %375
  tail call void @input_event(ptr noundef %347, i32 noundef 3, i32 noundef 0, i32 noundef %sub82.i.i) #8
  %and87.i.i = lshr i32 %conv70.i.i, 5
  %and94.i.i = lshr i32 %conv70.i.i, 4
  %377 = or i32 %and94.i.i, -2
  %378 = or i32 %and87.i.i, -2
  %sub294.i.i = sub nsw i32 %377, %378
  tail call void @input_event(ptr noundef %347, i32 noundef 3, i32 noundef 1, i32 noundef %sub294.i.i) #8
  br label %for.body102.i.i

for.body102.i.i:                                  ; preds = %for.body102.i.i.for.body102.i.i_crit_edge, %sw.bb66.i.i
  %i.1314.i.i = phi i32 [ 0, %sw.bb66.i.i ], [ %inc114.i.i, %for.body102.i.i.for.body102.i.i_crit_edge ]
  %arrayidx103.i.i = getelementptr [9 x i16], ptr @db9_cd32_btn, i32 0, i32 %i.1314.i.i
  %379 = ptrtoint ptr %arrayidx103.i.i to i32
  call void @__asan_load2_noabort(i32 %379)
  %380 = load i16, ptr %arrayidx103.i.i, align 2
  %conv104.i.i = sext i16 %380 to i32
  %arrayidx105.i.i = getelementptr [9 x i32], ptr @db9_saturn_byte, i32 0, i32 %i.1314.i.i
  %381 = ptrtoint ptr %arrayidx105.i.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %arrayidx105.i.i, align 4
  %add106.i.i = add i32 %382, %j.0319.i.i
  %arrayidx107.i.i = getelementptr i8, ptr %data.i, i32 %add106.i.i
  %383 = ptrtoint ptr %arrayidx107.i.i to i32
  call void @__asan_load1_noabort(i32 %383)
  %384 = load i8, ptr %arrayidx107.i.i, align 1
  %conv108.i.i = zext i8 %384 to i32
  %neg109.i.i = xor i32 %conv108.i.i, -1
  %arrayidx110.i.i = getelementptr [9 x i8], ptr @db9_saturn_mask, i32 0, i32 %i.1314.i.i
  %385 = ptrtoint ptr %arrayidx110.i.i to i32
  call void @__asan_load1_noabort(i32 %385)
  %386 = load i8, ptr %arrayidx110.i.i, align 1
  %conv111.i.i = zext i8 %386 to i32
  %and112.i.i = and i32 %conv111.i.i, %neg109.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112.i.i)
  %tobool.i298.i.i = icmp ne i32 %and112.i.i, 0
  %lnot.ext.i299.i.i = zext i1 %tobool.i298.i.i to i32
  tail call void @input_event(ptr noundef %347, i32 noundef 1, i32 noundef %conv104.i.i, i32 noundef %lnot.ext.i299.i.i) #8
  %inc114.i.i = add nuw nsw i32 %i.1314.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc114.i.i, 9
  br i1 %exitcond.not.i.i, label %for.end115.i.i, label %for.body102.i.i.for.body102.i.i_crit_edge

for.body102.i.i.for.body102.i.i_crit_edge:        ; preds = %for.body102.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body102.i.i

for.end115.i.i:                                   ; preds = %for.body102.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add117.i.i = add nuw nsw i32 %j.0319.i.i, 3
  %arrayidx118.i.i = getelementptr i8, ptr %data.i, i32 %add117.i.i
  %387 = ptrtoint ptr %arrayidx118.i.i to i32
  call void @__asan_load1_noabort(i32 %387)
  %388 = load i8, ptr %arrayidx118.i.i, align 1
  %conv119.i.i = zext i8 %388 to i32
  tail call void @input_event(ptr noundef %347, i32 noundef 3, i32 noundef 3, i32 noundef %conv119.i.i) #8
  %add121.i.i = add nuw nsw i32 %j.0319.i.i, 4
  %arrayidx122.i.i = getelementptr i8, ptr %data.i, i32 %add121.i.i
  %389 = ptrtoint ptr %arrayidx122.i.i to i32
  call void @__asan_load1_noabort(i32 %389)
  %390 = load i8, ptr %arrayidx122.i.i, align 1
  %conv123.i.i = zext i8 %390 to i32
  tail call void @input_event(ptr noundef %347, i32 noundef 3, i32 noundef 4, i32 noundef %conv123.i.i) #8
  %add125.i.i = add nuw nsw i32 %j.0319.i.i, 5
  %arrayidx126.i.i = getelementptr i8, ptr %data.i, i32 %add125.i.i
  %391 = ptrtoint ptr %arrayidx126.i.i to i32
  call void @__asan_load1_noabort(i32 %391)
  %392 = load i8, ptr %arrayidx126.i.i, align 1
  %conv127.i.i = zext i8 %392 to i32
  tail call void @input_event(ptr noundef %347, i32 noundef 3, i32 noundef 5, i32 noundef %conv127.i.i) #8
  %add129.i.i = add nuw nsw i32 %j.0319.i.i, 7
  %arrayidx130.i.i = getelementptr i8, ptr %data.i, i32 %add129.i.i
  %393 = ptrtoint ptr %arrayidx130.i.i to i32
  call void @__asan_load1_noabort(i32 %393)
  %394 = load i8, ptr %arrayidx130.i.i, align 1
  %conv131.i.i = zext i8 %394 to i32
  tail call void @input_event(ptr noundef %347, i32 noundef 3, i32 noundef 16, i32 noundef %conv131.i.i) #8
  %add133.i.i = add nuw nsw i32 %j.0319.i.i, 8
  %arrayidx134.i.i = getelementptr i8, ptr %data.i, i32 %add133.i.i
  %395 = ptrtoint ptr %arrayidx134.i.i to i32
  call void @__asan_load1_noabort(i32 %395)
  %396 = load i8, ptr %arrayidx134.i.i, align 1
  %conv135.i.i = zext i8 %396 to i32
  tail call void @input_event(ptr noundef %347, i32 noundef 3, i32 noundef 17, i32 noundef %conv135.i.i) #8
  %add137.i.i = add nuw nsw i32 %j.0319.i.i, 9
  %arrayidx138.i.i = getelementptr i8, ptr %data.i, i32 %add137.i.i
  %397 = ptrtoint ptr %arrayidx138.i.i to i32
  call void @__asan_load1_noabort(i32 %397)
  %398 = load i8, ptr %arrayidx138.i.i, align 1
  %conv139.i.i = zext i8 %398 to i32
  tail call void @input_event(ptr noundef %347, i32 noundef 3, i32 noundef 2, i32 noundef %conv139.i.i) #8
  br label %for.inc190.i.i

sw.bb140.i.i:                                     ; preds = %for.body.i1.i
  call void @__sanitizer_cov_trace_pc() #10
  %add141.i.i = add nuw nsw i32 %j.0319.i.i, 3
  %arrayidx142.i.i = getelementptr i8, ptr %data.i, i32 %add141.i.i
  %399 = ptrtoint ptr %arrayidx142.i.i to i32
  call void @__asan_load1_noabort(i32 %399)
  %400 = load i8, ptr %arrayidx142.i.i, align 1
  %.lobit312.i.i = lshr i8 %400, 7
  %401 = zext i8 %.lobit312.i.i to i32
  tail call void @input_event(ptr noundef %347, i32 noundef 1, i32 noundef 304, i32 noundef %401) #8
  %402 = and i8 %400, 127
  %and149.i.i = zext i8 %402 to i32
  tail call void @input_event(ptr noundef %347, i32 noundef 3, i32 noundef 3, i32 noundef %and149.i.i) #8
  br label %for.inc190.i.i

sw.bb150.i.i:                                     ; preds = %for.body.i1.i
  call void @__sanitizer_cov_trace_pc() #10
  %add151.i.i = or i32 %j.0319.i.i, 1
  %arrayidx152.i.i = getelementptr i8, ptr %data.i, i32 %add151.i.i
  %403 = ptrtoint ptr %arrayidx152.i.i to i32
  call void @__asan_load1_noabort(i32 %403)
  %404 = load i8, ptr %arrayidx152.i.i, align 1
  %405 = lshr i8 %404, 3
  %.lobit.i.i = and i8 %405, 1
  %406 = zext i8 %.lobit.i.i to i32
  tail call void @input_event(ptr noundef %347, i32 noundef 1, i32 noundef 315, i32 noundef %406) #8
  %407 = lshr i8 %404, 2
  %.lobit310.i.i = and i8 %407, 1
  %408 = zext i8 %.lobit310.i.i to i32
  tail call void @input_event(ptr noundef %347, i32 noundef 1, i32 noundef 304, i32 noundef %408) #8
  %409 = lshr i8 %404, 1
  %.lobit311.i.i = and i8 %409, 1
  %410 = zext i8 %.lobit311.i.i to i32
  tail call void @input_event(ptr noundef %347, i32 noundef 1, i32 noundef 306, i32 noundef %410) #8
  %411 = and i8 %404, 1
  %412 = zext i8 %411 to i32
  tail call void @input_event(ptr noundef %347, i32 noundef 1, i32 noundef 305, i32 noundef %412) #8
  %add168.i.i = add nuw nsw i32 %j.0319.i.i, 2
  %arrayidx169.i.i = getelementptr i8, ptr %data.i, i32 %add168.i.i
  %413 = ptrtoint ptr %arrayidx169.i.i to i32
  call void @__asan_load1_noabort(i32 %413)
  %414 = load i8, ptr %arrayidx169.i.i, align 1
  %415 = xor i8 %414, -128
  %xor.i.i = zext i8 %415 to i32
  tail call void @input_event(ptr noundef %347, i32 noundef 3, i32 noundef 3, i32 noundef %xor.i.i) #8
  %add172.i.i = add nuw nsw i32 %j.0319.i.i, 3
  %arrayidx173.i.i = getelementptr i8, ptr %data.i, i32 %add172.i.i
  %416 = ptrtoint ptr %arrayidx173.i.i to i32
  call void @__asan_load1_noabort(i32 %416)
  %417 = load i8, ptr %arrayidx173.i.i, align 1
  %418 = xor i8 %417, 127
  %sub176.i.i = zext i8 %418 to i32
  %add177.i.i = add nuw nsw i32 %sub176.i.i, 1
  tail call void @input_event(ptr noundef %347, i32 noundef 3, i32 noundef 4, i32 noundef %add177.i.i) #8
  br label %for.inc190.i.i

sw.default.i6.i:                                  ; preds = %for.body.i1.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @input_event(ptr noundef %347, i32 noundef 3, i32 noundef 0, i32 noundef 0) #8
  tail call void @input_event(ptr noundef %347, i32 noundef 3, i32 noundef 1, i32 noundef 0) #8
  tail call void @input_event(ptr noundef %347, i32 noundef 1, i32 noundef 304, i32 noundef 0) #8
  tail call void @input_event(ptr noundef %347, i32 noundef 1, i32 noundef 305, i32 noundef 0) #8
  tail call void @input_event(ptr noundef %347, i32 noundef 1, i32 noundef 306, i32 noundef 0) #8
  tail call void @input_event(ptr noundef %347, i32 noundef 1, i32 noundef 307, i32 noundef 0) #8
  tail call void @input_event(ptr noundef %347, i32 noundef 1, i32 noundef 308, i32 noundef 0) #8
  tail call void @input_event(ptr noundef %347, i32 noundef 1, i32 noundef 309, i32 noundef 0) #8
  tail call void @input_event(ptr noundef %347, i32 noundef 1, i32 noundef 310, i32 noundef 0) #8
  tail call void @input_event(ptr noundef %347, i32 noundef 1, i32 noundef 311, i32 noundef 0) #8
  tail call void @input_event(ptr noundef %347, i32 noundef 1, i32 noundef 315, i32 noundef 0) #8
  br label %for.inc190.i.i

for.inc190.i.i:                                   ; preds = %sw.default.i6.i, %sw.bb150.i.i, %sw.bb140.i.i, %for.end115.i.i, %for.body56.i.i.for.inc190.i.i_crit_edge
  %add191.i.i = add nuw nsw i32 %j.0319.i.i, 10
  %inc192.i.i = add nsw i32 %n.addr.0318.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add191.i.i, i32 %345)
  %cmp2.i.i = icmp ult i32 %add191.i.i, %345
  call void @__sanitizer_cov_trace_cmp4(i32 %inc192.i.i, i32 %cond.i)
  %cmp4.i.i = icmp slt i32 %inc192.i.i, %cond.i
  %or.cond.i.i = select i1 %cmp2.i.i, i1 %cmp4.i.i, i1 false
  br i1 %or.cond.i.i, label %for.inc190.i.i.for.body.i1.i_crit_edge, label %for.inc190.i.i.db9_saturn_report.exit.i_crit_edge

for.inc190.i.i.db9_saturn_report.exit.i_crit_edge: ; preds = %for.inc190.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %db9_saturn_report.exit.i

for.inc190.i.i.for.body.i1.i_crit_edge:           ; preds = %for.inc190.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i1.i

db9_saturn_report.exit.i:                         ; preds = %for.inc190.i.i.db9_saturn_report.exit.i_crit_edge, %db9_saturn_read_packet.exit.thread.i.db9_saturn_report.exit.i_crit_edge
  %n.addr.0.lcssa.i.i = phi i32 [ %tmp.013.i, %db9_saturn_read_packet.exit.thread.i.db9_saturn_report.exit.i_crit_edge ], [ %inc192.i.i, %for.inc190.i.i.db9_saturn_report.exit.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %n.0.i
  br i1 %exitcond.not.i, label %db9_saturn_report.exit.i.db9_saturn.exit_crit_edge, label %db9_saturn_report.exit.i.for.body.i_crit_edge

db9_saturn_report.exit.i.for.body.i_crit_edge:    ; preds = %db9_saturn_report.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

db9_saturn_report.exit.i.db9_saturn.exit_crit_edge: ; preds = %db9_saturn_report.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %db9_saturn.exit

db9_saturn.exit:                                  ; preds = %db9_saturn_report.exit.i.db9_saturn.exit_crit_edge, %sw.bb213.db9_saturn.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %data.i) #8
  br label %sw.epilog

sw.bb217:                                         ; preds = %entry
  %ops218 = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 24
  %419 = ptrtoint ptr %ops218 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %ops218, align 4
  %read_data219 = getelementptr inbounds %struct.parport_operations, ptr %420, i32 0, i32 1
  %421 = ptrtoint ptr %read_data219 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %read_data219, align 4
  %call220 = tail call zeroext i8 %422(ptr noundef %3) #8
  %conv221 = zext i8 %call220 to i32
  %and222 = lshr i32 %conv221, 3
  %and225 = lshr i32 %conv221, 2
  %423 = or i32 %and225, -2
  %424 = or i32 %and222, -2
  %sub414 = sub nsw i32 %423, %424
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 0, i32 noundef %sub414) #8
  %and229 = lshr i32 %conv221, 1
  %425 = or i32 %conv221, -2
  %426 = or i32 %and229, -2
  %sub415 = sub nsw i32 %425, %426
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 1, i32 noundef %sub415) #8
  %427 = ptrtoint ptr %ops218 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %ops218, align 4
  %write_control237 = getelementptr inbounds %struct.parport_operations, ptr %428, i32 0, i32 2
  %429 = ptrtoint ptr %write_control237 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %write_control237, align 4
  tail call void %430(ptr noundef %3, i8 noundef zeroext 10) #8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.bb217
  %i.0475 = phi i32 [ 0, %sw.bb217 ], [ %inc, %for.body.for.body_crit_edge ]
  %431 = ptrtoint ptr %ops218 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %ops218, align 4
  %read_data240 = getelementptr inbounds %struct.parport_operations, ptr %432, i32 0, i32 1
  %433 = ptrtoint ptr %read_data240 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %read_data240, align 4
  %call241 = tail call zeroext i8 %434(ptr noundef %3) #8
  %435 = ptrtoint ptr %ops218 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %ops218, align 4
  %write_control244 = getelementptr inbounds %struct.parport_operations, ptr %436, i32 0, i32 2
  %437 = ptrtoint ptr %write_control244 to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %write_control244, align 4
  tail call void %438(ptr noundef %3, i8 noundef zeroext 2) #8
  %439 = ptrtoint ptr %ops218 to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %ops218, align 4
  %write_control246 = getelementptr inbounds %struct.parport_operations, ptr %440, i32 0, i32 2
  %441 = ptrtoint ptr %write_control246 to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %write_control246, align 4
  tail call void %442(ptr noundef %3, i8 noundef zeroext 10) #8
  %arrayidx247 = getelementptr [9 x i16], ptr @db9_cd32_btn, i32 0, i32 %i.0475
  %443 = ptrtoint ptr %arrayidx247 to i32
  call void @__asan_load2_noabort(i32 %443)
  %444 = load i16, ptr %arrayidx247, align 2
  %conv248 = sext i16 %444 to i32
  %445 = lshr i8 %call241, 5
  %.lobit = and i8 %445, 1
  %446 = xor i8 %.lobit, 1
  %447 = zext i8 %446 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef %conv248, i32 noundef %447) #8
  %inc = add nuw nsw i32 %i.0475, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %448 = ptrtoint ptr %ops218 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %ops218, align 4
  %write_control252 = getelementptr inbounds %struct.parport_operations, ptr %449, i32 0, i32 2
  %450 = ptrtoint ptr %write_control252 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %write_control252, align 4
  tail call void %451(ptr noundef %3, i8 noundef zeroext 0) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end, %db9_saturn.exit, %sw.bb154, %sw.bb115, %sw.bb81, %sw.bb58, %sw.bb37, %sw.bb17, %entry.sw.epilog_crit_edge
  tail call void @input_event(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %452 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %452, 1
  %call253 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @db9_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pd = getelementptr inbounds %struct.db9, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pd, align 4
  %port1 = getelementptr inbounds %struct.pardevice, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port1, align 4
  %mutex = getelementptr inbounds %struct.db9, ptr %1, i32 0, i32 6
  %call2 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %used = getelementptr inbounds %struct.db9, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %used, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then4:                                         ; preds = %if.end
  %8 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pd, align 4
  %call6 = tail call i32 @parport_claim(ptr noundef %9) #8
  %ops = getelementptr inbounds %struct.parport, ptr %5, i32 0, i32 24
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  tail call void %13(ptr noundef %5, i8 noundef zeroext -1) #8
  %mode = getelementptr inbounds %struct.db9, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode, align 4
  %16 = and i32 %15, 1073741823
  %17 = lshr i32 6161, %16
  %18 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool7.not.not = icmp eq i32 %18, 0
  br i1 %tobool7.not.not, label %if.then8, label %if.then4.if.end11_crit_edge

if.then4.if.end11_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then8:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops, align 4
  %data_reverse = getelementptr inbounds %struct.parport_operations, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %data_reverse to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data_reverse, align 4
  tail call void %22(ptr noundef %5) #8
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops, align 4
  %write_control = getelementptr inbounds %struct.parport_operations, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %write_control to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_control, align 4
  tail call void %26(ptr noundef %5, i8 noundef zeroext 10) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.then4.if.end11_crit_edge
  %timer = getelementptr inbounds %struct.db9, ptr %1, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %27, 1
  %call12 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #8
  br label %if.end13

if.end13:                                         ; preds = %if.end11, %if.end.if.end13_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @db9_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pd = getelementptr inbounds %struct.db9, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pd, align 4
  %port1 = getelementptr inbounds %struct.pardevice, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port1, align 4
  %mutex = getelementptr inbounds %struct.db9, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %used = getelementptr inbounds %struct.db9, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %used, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %timer = getelementptr inbounds %struct.db9, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @del_timer_sync(ptr noundef %timer) #8
  %ops = getelementptr inbounds %struct.parport, ptr %5, i32 0, i32 24
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %write_control = getelementptr inbounds %struct.parport_operations, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %write_control to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_control, align 4
  tail call void %11(ptr noundef %5, i8 noundef zeroext 0) #8
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %data_forward = getelementptr inbounds %struct.parport_operations, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %data_forward to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data_forward, align 4
  tail call void %15(ptr noundef %5) #8
  %16 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pd, align 4
  tail call void @parport_release(ptr noundef %17) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @db9_saturn_read_analog(ptr noundef %port, i32 noundef %type) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %type, label %entry.db9_saturn_write_sub.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb6.i
    i32 0, label %sw.bb19.i
  ]

entry.db9_saturn_write_sub.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %db9_saturn_write_sub.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ops.i = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 24
  %1 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops.i, align 4
  br label %sw.epilog.sink.split.i

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ops17.i = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 24
  %3 = ptrtoint ptr %ops17.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops17.i, align 4
  br label %sw.epilog.sink.split.i

sw.bb19.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ops31.i = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 24
  %5 = ptrtoint ptr %ops31.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops31.i, align 4
  %write_control.i = getelementptr inbounds %struct.parport_operations, ptr %6, i32 0, i32 2
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb19.i, %sw.bb6.i, %sw.bb.i
  %write_control.sink.i = phi ptr [ %write_control.i, %sw.bb19.i ], [ %4, %sw.bb6.i ], [ %2, %sw.bb.i ]
  %conv30.sink.i = phi i8 [ 2, %sw.bb19.i ], [ 75, %sw.bb6.i ], [ -72, %sw.bb.i ]
  %7 = ptrtoint ptr %write_control.sink.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_control.sink.i, align 4
  tail call void %8(ptr noundef %port, i8 noundef zeroext %conv30.sink.i) #8
  br label %db9_saturn_write_sub.exit

db9_saturn_write_sub.exit:                        ; preds = %sw.epilog.sink.split.i, %entry.db9_saturn_write_sub.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 64424400) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %tobool.not.i = icmp eq i32 %type, 0
  %ops19.i = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 24
  %10 = ptrtoint ptr %ops19.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops19.i, align 4
  br i1 %tobool.not.i, label %db9_saturn_read_sub.exit.thread, label %db9_saturn_read_sub.exit

db9_saturn_read_sub.exit.thread:                  ; preds = %db9_saturn_write_sub.exit
  call void @__sanitizer_cov_trace_pc() #10
  %read_data.i = getelementptr inbounds %struct.parport_operations, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %read_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_data.i, align 4
  %call20.i = tail call zeroext i8 %13(ptr noundef %port) #8
  %trunc.i = trunc i8 %call20.i to i4
  %rev.i = tail call i4 @llvm.bitreverse.i4(i4 %trunc.i) #8
  %conv43.i = zext i4 %rev.i to i8
  %shl34 = shl nuw i8 %conv43.i, 4
  %14 = ptrtoint ptr %ops19.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops19.i, align 4
  %write_control.i7 = getelementptr inbounds %struct.parport_operations, ptr %15, i32 0, i32 2
  br label %db9_saturn_write_sub.exit12

db9_saturn_read_sub.exit:                         ; preds = %db9_saturn_write_sub.exit
  %read_status.i = getelementptr inbounds %struct.parport_operations, ptr %11, i32 0, i32 5
  %16 = ptrtoint ptr %read_status.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_status.i, align 4
  %call.i = tail call zeroext i8 %17(ptr noundef %port) #8
  %18 = xor i8 %call.i, -1
  %and.lobit.i = lshr i8 %18, 7
  %and5.i = lshr i8 %call.i, 5
  %19 = and i8 %and5.i, 2
  %or.i = or i8 %19, %and.lobit.i
  %and9.i = lshr i8 %call.i, 3
  %20 = and i8 %and9.i, 4
  %or12.i = or i8 %or.i, %20
  %and14.i = lshr i8 %call.i, 1
  %21 = and i8 %and14.i, 8
  %or17.i = or i8 %or12.i, %21
  %shl = shl nuw i8 %or17.i, 4
  %22 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %type, label %db9_saturn_write_sub.exit12.thread [
    i32 1, label %sw.bb.i3
    i32 2, label %sw.bb6.i5
  ]

db9_saturn_write_sub.exit12.thread:               ; preds = %db9_saturn_read_sub.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 64424400) #8
  %24 = ptrtoint ptr %ops19.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops19.i, align 4
  br label %if.then.i24

sw.bb.i3:                                         ; preds = %db9_saturn_read_sub.exit
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %ops19.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops19.i, align 4
  br label %db9_saturn_write_sub.exit12

sw.bb6.i5:                                        ; preds = %db9_saturn_read_sub.exit
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %ops19.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops19.i, align 4
  br label %db9_saturn_write_sub.exit12

db9_saturn_write_sub.exit12:                      ; preds = %sw.bb6.i5, %sw.bb.i3, %db9_saturn_read_sub.exit.thread
  %shl35 = phi i8 [ %shl34, %db9_saturn_read_sub.exit.thread ], [ %shl, %sw.bb6.i5 ], [ %shl, %sw.bb.i3 ]
  %write_control.sink.i9 = phi ptr [ %write_control.i7, %db9_saturn_read_sub.exit.thread ], [ %29, %sw.bb6.i5 ], [ %27, %sw.bb.i3 ]
  %conv30.sink.i10 = phi i8 [ 0, %db9_saturn_read_sub.exit.thread ], [ 107, %sw.bb6.i5 ], [ -70, %sw.bb.i3 ]
  %30 = ptrtoint ptr %write_control.sink.i9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write_control.sink.i9, align 4
  tail call void %31(ptr noundef %port, i8 noundef zeroext %conv30.sink.i10) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 64424400) #8
  %33 = ptrtoint ptr %ops19.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops19.i, align 4
  br i1 %tobool.not.i, label %if.else.i30, label %db9_saturn_write_sub.exit12.if.then.i24_crit_edge

db9_saturn_write_sub.exit12.if.then.i24_crit_edge: ; preds = %db9_saturn_write_sub.exit12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i24

if.then.i24:                                      ; preds = %db9_saturn_write_sub.exit12.if.then.i24_crit_edge, %db9_saturn_write_sub.exit12.thread
  %35 = phi ptr [ %25, %db9_saturn_write_sub.exit12.thread ], [ %34, %db9_saturn_write_sub.exit12.if.then.i24_crit_edge ]
  %shl3740 = phi i8 [ %shl, %db9_saturn_write_sub.exit12.thread ], [ %shl35, %db9_saturn_write_sub.exit12.if.then.i24_crit_edge ]
  %read_status.i15 = getelementptr inbounds %struct.parport_operations, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %read_status.i15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read_status.i15, align 4
  %call.i16 = tail call zeroext i8 %37(ptr noundef %port) #8
  %38 = xor i8 %call.i16, -1
  %and.lobit.i17 = lshr i8 %38, 7
  %and5.i18 = lshr i8 %call.i16, 5
  %39 = and i8 %and5.i18, 2
  %or.i19 = or i8 %39, %and.lobit.i17
  %and9.i20 = lshr i8 %call.i16, 3
  %40 = and i8 %and9.i20, 4
  %or12.i21 = or i8 %or.i19, %40
  %and14.i22 = lshr i8 %call.i16, 1
  %41 = and i8 %and14.i22, 8
  %or17.i23 = or i8 %or12.i21, %41
  br label %db9_saturn_read_sub.exit32

if.else.i30:                                      ; preds = %db9_saturn_write_sub.exit12
  call void @__sanitizer_cov_trace_pc() #10
  %read_data.i25 = getelementptr inbounds %struct.parport_operations, ptr %34, i32 0, i32 1
  %42 = ptrtoint ptr %read_data.i25 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read_data.i25, align 4
  %call20.i26 = tail call zeroext i8 %43(ptr noundef %port) #8
  %trunc.i27 = trunc i8 %call20.i26 to i4
  %rev.i28 = tail call i4 @llvm.bitreverse.i4(i4 %trunc.i27) #8
  %conv43.i29 = zext i4 %rev.i28 to i8
  br label %db9_saturn_read_sub.exit32

db9_saturn_read_sub.exit32:                       ; preds = %if.else.i30, %if.then.i24
  %shl3739 = phi i8 [ %shl3740, %if.then.i24 ], [ %shl35, %if.else.i30 ]
  %retval.0.i31 = phi i8 [ %or17.i23, %if.then.i24 ], [ %conv43.i29, %if.else.i30 ]
  %or1 = or i8 %retval.0.i31, %shl3739
  ret i8 %or1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_claim(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__parport_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i4 @llvm.bitreverse.i4(i4) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !26, !27, !28, !30, !31, !32, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !92, !93, !95, !96, !97, !99, !101, !103, !105, !107, !108, !109}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !{ptr @__UNIQUE_ID_author223, !1, !"__UNIQUE_ID_author223", i1 false, i1 false}
!1 = !{!"../drivers/input/joystick/db9.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_description224, !3, !"__UNIQUE_ID_description224", i1 false, i1 false}
!3 = !{!"../drivers/input/joystick/db9.c", i32 26, i32 1}
!4 = !{ptr @__UNIQUE_ID_file225, !5, !"__UNIQUE_ID_file225", i1 false, i1 false}
!5 = !{!"../drivers/input/joystick/db9.c", i32 27, i32 1}
!6 = !{ptr @__UNIQUE_ID_license226, !5, !"__UNIQUE_ID_license226", i1 false, i1 false}
!7 = !{ptr @__param_dev, !8, !"__param_dev", i1 false, i1 false}
!8 = !{!"../drivers/input/joystick/db9.c", i32 37, i32 1}
!9 = !{ptr @__UNIQUE_ID_devtype227, !8, !"__UNIQUE_ID_devtype227", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_dev228, !11, !"__UNIQUE_ID_dev228", i1 false, i1 false}
!11 = !{!"../drivers/input/joystick/db9.c", i32 38, i32 1}
!12 = !{ptr @__param_dev2, !13, !"__param_dev2", i1 false, i1 false}
!13 = !{!"../drivers/input/joystick/db9.c", i32 39, i32 1}
!14 = !{ptr @__UNIQUE_ID_dev2type229, !13, !"__UNIQUE_ID_dev2type229", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_dev2230, !16, !"__UNIQUE_ID_dev2230", i1 false, i1 false}
!16 = !{!"../drivers/input/joystick/db9.c", i32 40, i32 1}
!17 = !{ptr @__param_dev3, !18, !"__param_dev3", i1 false, i1 false}
!18 = !{!"../drivers/input/joystick/db9.c", i32 41, i32 1}
!19 = !{ptr @__UNIQUE_ID_dev3type231, !18, !"__UNIQUE_ID_dev3type231", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_dev3232, !21, !"__UNIQUE_ID_dev3232", i1 false, i1 false}
!21 = !{!"../drivers/input/joystick/db9.c", i32 42, i32 1}
!22 = !{ptr @__initcall__kmod_db9__240_710_db9_init6, !23, !"__initcall__kmod_db9__240_710_db9_init6", i1 false, i1 false}
!23 = !{!"../drivers/input/joystick/db9.c", i32 710, i32 1}
!24 = !{ptr @__exitcall_db9_exit, !25, !"__exitcall_db9_exit", i1 false, i1 false}
!25 = !{!"../drivers/input/joystick/db9.c", i32 711, i32 1}
!26 = !{ptr @__param_str_dev, !8, !"__param_str_dev", i1 false, i1 false}
!27 = !{ptr @__param_arr_dev, !8, !"__param_arr_dev", i1 false, i1 false}
!28 = !{ptr @db9_cfg, !29, !"db9_cfg", i1 false, i1 false}
!29 = !{!"../drivers/input/joystick/db9.c", i32 35, i32 26}
!30 = !{ptr @__param_str_dev2, !13, !"__param_str_dev2", i1 false, i1 false}
!31 = !{ptr @__param_arr_dev2, !13, !"__param_arr_dev2", i1 false, i1 false}
!32 = !{ptr @__param_str_dev3, !18, !"__param_str_dev3", i1 false, i1 false}
!33 = !{ptr @__param_arr_dev3, !18, !"__param_arr_dev3", i1 false, i1 false}
!34 = !{ptr @.str, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/joystick/db9.c", i32 676, i32 10}
!36 = !{ptr @db9_parport_driver, !37, !"db9_parport_driver", i1 false, i1 false}
!37 = !{!"../drivers/input/joystick/db9.c", i32 675, i32 30}
!38 = !{ptr @db9_base, !39, !"db9_base", i1 false, i1 false}
!39 = !{!"../drivers/input/joystick/db9.c", i32 98, i32 20}
!40 = !{ptr @.str.1, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/joystick/db9.c", i32 107, i32 4}
!42 = !{ptr @.str.2, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/joystick/db9.c", i32 108, i32 4}
!44 = !{ptr @.str.3, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/joystick/db9.c", i32 109, i32 4}
!46 = !{ptr @.str.4, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/joystick/db9.c", i32 111, i32 4}
!48 = !{ptr @.str.5, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/joystick/db9.c", i32 112, i32 4}
!50 = !{ptr @.str.6, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/joystick/db9.c", i32 113, i32 4}
!52 = !{ptr @.str.7, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/joystick/db9.c", i32 114, i32 4}
!54 = !{ptr @.str.8, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/joystick/db9.c", i32 115, i32 4}
!56 = !{ptr @.str.9, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/joystick/db9.c", i32 116, i32 4}
!58 = !{ptr @.str.10, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/joystick/db9.c", i32 117, i32 4}
!60 = !{ptr @.str.11, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/joystick/db9.c", i32 118, i32 4}
!62 = !{ptr @db9_modes, !63, !"db9_modes", i1 false, i1 false}
!63 = !{!"../drivers/input/joystick/db9.c", i32 105, i32 35}
!64 = !{ptr @db9_multi_btn, !65, !"db9_multi_btn", i1 false, i1 false}
!65 = !{!"../drivers/input/joystick/db9.c", i32 100, i32 20}
!66 = !{ptr @db9_genesis_btn, !67, !"db9_genesis_btn", i1 false, i1 false}
!67 = !{!"../drivers/input/joystick/db9.c", i32 101, i32 20}
!68 = !{ptr @db9_cd32_btn, !69, !"db9_cd32_btn", i1 false, i1 false}
!69 = !{!"../drivers/input/joystick/db9.c", i32 102, i32 20}
!70 = !{ptr @.str.12, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/input/joystick/db9.c", i32 566, i32 3}
!72 = !{ptr @.str.13, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.14, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @db9_attach.__UNIQUE_ID_ddebug235, !71, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!75 = !{ptr @.str.15, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/input/joystick/db9.c", i32 573, i32 3}
!77 = !{ptr @db9_attach._entry, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @db9_attach._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.17, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/input/joystick/db9.c", i32 580, i32 3}
!81 = !{ptr @db9_attach._entry.16, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @db9_attach._entry_ptr.18, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.20, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/input/joystick/db9.c", i32 589, i32 3}
!85 = !{ptr @db9_attach._entry.19, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @db9_attach._entry_ptr.21, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @db9_attach.__key, !88, !"__key", i1 false, i1 false}
!88 = !{!"../drivers/input/joystick/db9.c", i32 597, i32 2}
!89 = !{ptr @.str.22, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @db9_attach.__key.23, !91, !"__key", i1 false, i1 false}
!91 = !{!"../drivers/input/joystick/db9.c", i32 601, i32 2}
!92 = !{ptr @.str.24, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.26, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/input/joystick/db9.c", i32 607, i32 4}
!95 = !{ptr @db9_attach._entry.25, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @db9_attach._entry_ptr.27, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.28, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/input/joystick/db9.c", i32 612, i32 5}
!99 = !{ptr @db9_saturn_byte, !100, !"db9_saturn_byte", i1 false, i1 false}
!100 = !{!"../drivers/input/joystick/db9.c", i32 125, i32 18}
!101 = !{ptr @db9_saturn_mask, !102, !"db9_saturn_mask", i1 false, i1 false}
!102 = !{!"../drivers/input/joystick/db9.c", i32 126, i32 28}
!103 = !{ptr @db9_abs, !104, !"db9_abs", i1 false, i1 false}
!104 = !{!"../drivers/input/joystick/db9.c", i32 103, i32 20}
!105 = !{ptr @.str.29, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/input/joystick/db9.c", i32 692, i32 4}
!107 = !{ptr @.str.30, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @db9_init._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @db9_init._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{i32 1, !"wchar_size", i32 2}
!111 = !{i32 1, !"min_enum_size", i32 4}
!112 = !{i32 8, !"branch-target-enforcement", i32 0}
!113 = !{i32 8, !"sign-return-address", i32 0}
!114 = !{i32 8, !"sign-return-address-all", i32 0}
!115 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!116 = !{i32 7, !"uwtable", i32 1}
!117 = !{i32 7, !"frame-pointer", i32 2}
!118 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!119 = !{i64 2148710231, i64 2148710236, i64 2148710249, i64 2148710293, i64 2148710327, i64 2148710348}
!120 = distinct !{!120, !121}
!121 = !{!"llvm.loop.peeled.count", i32 2}
